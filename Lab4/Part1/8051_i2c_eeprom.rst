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
                                     17 	.globl _printf_tiny
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
                                    215 	.globl _EEPROM_hexump_PARM_2
                                    216 	.globl _eeprom_write_PARM_2
                                    217 	.globl _ACK
                                    218 	.globl _take_address
                                    219 	.globl _take_data
                                    220 	.globl _eeprom_write
                                    221 	.globl _eeprom_read
                                    222 	.globl _i2c_write
                                    223 	.globl _i2c_read
                                    224 	.globl _i2c_start
                                    225 	.globl _EEPROM_hexump
                                    226 	.globl _handler_EEPROM_hexdump
                                    227 	.globl _i2c_stop
                                    228 	.globl _eeprom_reset
                                    229 	.globl _i2c_delay
                                    230 ;--------------------------------------------------------
                                    231 ; special function registers
                                    232 ;--------------------------------------------------------
                                    233 	.area RSEG    (ABS,DATA)
      000000                        234 	.org 0x0000
                           000080   235 _P0	=	0x0080
                           000081   236 _SP	=	0x0081
                           000082   237 _DPL	=	0x0082
                           000083   238 _DPH	=	0x0083
                           000087   239 _PCON	=	0x0087
                           000088   240 _TCON	=	0x0088
                           000089   241 _TMOD	=	0x0089
                           00008A   242 _TL0	=	0x008a
                           00008B   243 _TL1	=	0x008b
                           00008C   244 _TH0	=	0x008c
                           00008D   245 _TH1	=	0x008d
                           000090   246 _P1	=	0x0090
                           000098   247 _SCON	=	0x0098
                           000099   248 _SBUF	=	0x0099
                           0000A0   249 _P2	=	0x00a0
                           0000A8   250 _IE	=	0x00a8
                           0000B0   251 _P3	=	0x00b0
                           0000B8   252 _IP	=	0x00b8
                           0000D0   253 _PSW	=	0x00d0
                           0000E0   254 _ACC	=	0x00e0
                           0000F0   255 _B	=	0x00f0
                           0000C8   256 _T2CON	=	0x00c8
                           0000CA   257 _RCAP2L	=	0x00ca
                           0000CB   258 _RCAP2H	=	0x00cb
                           0000CC   259 _TL2	=	0x00cc
                           0000CD   260 _TH2	=	0x00cd
                           00008E   261 _AUXR	=	0x008e
                           0000A2   262 _AUXR1	=	0x00a2
                           000097   263 _CKRL	=	0x0097
                           00008F   264 _CKCON0	=	0x008f
                           0000AF   265 _CKCON1	=	0x00af
                           0000FA   266 _CCAP0H	=	0x00fa
                           0000FB   267 _CCAP1H	=	0x00fb
                           0000FC   268 _CCAP2H	=	0x00fc
                           0000FD   269 _CCAP3H	=	0x00fd
                           0000FE   270 _CCAP4H	=	0x00fe
                           0000EA   271 _CCAP0L	=	0x00ea
                           0000EB   272 _CCAP1L	=	0x00eb
                           0000EC   273 _CCAP2L	=	0x00ec
                           0000ED   274 _CCAP3L	=	0x00ed
                           0000EE   275 _CCAP4L	=	0x00ee
                           0000DA   276 _CCAPM0	=	0x00da
                           0000DB   277 _CCAPM1	=	0x00db
                           0000DC   278 _CCAPM2	=	0x00dc
                           0000DD   279 _CCAPM3	=	0x00dd
                           0000DE   280 _CCAPM4	=	0x00de
                           0000D8   281 _CCON	=	0x00d8
                           0000F9   282 _CH	=	0x00f9
                           0000E9   283 _CL	=	0x00e9
                           0000D9   284 _CMOD	=	0x00d9
                           0000A8   285 _IEN0	=	0x00a8
                           0000B1   286 _IEN1	=	0x00b1
                           0000B8   287 _IPL0	=	0x00b8
                           0000B7   288 _IPH0	=	0x00b7
                           0000B2   289 _IPL1	=	0x00b2
                           0000B3   290 _IPH1	=	0x00b3
                           0000C0   291 _P4	=	0x00c0
                           0000E8   292 _P5	=	0x00e8
                           0000A6   293 _WDTRST	=	0x00a6
                           0000A7   294 _WDTPRG	=	0x00a7
                           0000A9   295 _SADDR	=	0x00a9
                           0000B9   296 _SADEN	=	0x00b9
                           0000C3   297 _SPCON	=	0x00c3
                           0000C4   298 _SPSTA	=	0x00c4
                           0000C5   299 _SPDAT	=	0x00c5
                           0000C9   300 _T2MOD	=	0x00c9
                           00009B   301 _BDRCON	=	0x009b
                           00009A   302 _BRL	=	0x009a
                           00009C   303 _KBLS	=	0x009c
                           00009D   304 _KBE	=	0x009d
                           00009E   305 _KBF	=	0x009e
                           0000D2   306 _EECON	=	0x00d2
                                    307 ;--------------------------------------------------------
                                    308 ; special function bits
                                    309 ;--------------------------------------------------------
                                    310 	.area RSEG    (ABS,DATA)
      000000                        311 	.org 0x0000
                           000080   312 _P0_0	=	0x0080
                           000081   313 _P0_1	=	0x0081
                           000082   314 _P0_2	=	0x0082
                           000083   315 _P0_3	=	0x0083
                           000084   316 _P0_4	=	0x0084
                           000085   317 _P0_5	=	0x0085
                           000086   318 _P0_6	=	0x0086
                           000087   319 _P0_7	=	0x0087
                           000088   320 _IT0	=	0x0088
                           000089   321 _IE0	=	0x0089
                           00008A   322 _IT1	=	0x008a
                           00008B   323 _IE1	=	0x008b
                           00008C   324 _TR0	=	0x008c
                           00008D   325 _TF0	=	0x008d
                           00008E   326 _TR1	=	0x008e
                           00008F   327 _TF1	=	0x008f
                           000090   328 _P1_0	=	0x0090
                           000091   329 _P1_1	=	0x0091
                           000092   330 _P1_2	=	0x0092
                           000093   331 _P1_3	=	0x0093
                           000094   332 _P1_4	=	0x0094
                           000095   333 _P1_5	=	0x0095
                           000096   334 _P1_6	=	0x0096
                           000097   335 _P1_7	=	0x0097
                           000098   336 _RI	=	0x0098
                           000099   337 _TI	=	0x0099
                           00009A   338 _RB8	=	0x009a
                           00009B   339 _TB8	=	0x009b
                           00009C   340 _REN	=	0x009c
                           00009D   341 _SM2	=	0x009d
                           00009E   342 _SM1	=	0x009e
                           00009F   343 _SM0	=	0x009f
                           0000A0   344 _P2_0	=	0x00a0
                           0000A1   345 _P2_1	=	0x00a1
                           0000A2   346 _P2_2	=	0x00a2
                           0000A3   347 _P2_3	=	0x00a3
                           0000A4   348 _P2_4	=	0x00a4
                           0000A5   349 _P2_5	=	0x00a5
                           0000A6   350 _P2_6	=	0x00a6
                           0000A7   351 _P2_7	=	0x00a7
                           0000A8   352 _EX0	=	0x00a8
                           0000A9   353 _ET0	=	0x00a9
                           0000AA   354 _EX1	=	0x00aa
                           0000AB   355 _ET1	=	0x00ab
                           0000AC   356 _ES	=	0x00ac
                           0000AF   357 _EA	=	0x00af
                           0000B0   358 _P3_0	=	0x00b0
                           0000B1   359 _P3_1	=	0x00b1
                           0000B2   360 _P3_2	=	0x00b2
                           0000B3   361 _P3_3	=	0x00b3
                           0000B4   362 _P3_4	=	0x00b4
                           0000B5   363 _P3_5	=	0x00b5
                           0000B6   364 _P3_6	=	0x00b6
                           0000B7   365 _P3_7	=	0x00b7
                           0000B0   366 _RXD	=	0x00b0
                           0000B1   367 _TXD	=	0x00b1
                           0000B2   368 _INT0	=	0x00b2
                           0000B3   369 _INT1	=	0x00b3
                           0000B4   370 _T0	=	0x00b4
                           0000B5   371 _T1	=	0x00b5
                           0000B6   372 _WR	=	0x00b6
                           0000B7   373 _RD	=	0x00b7
                           0000B8   374 _PX0	=	0x00b8
                           0000B9   375 _PT0	=	0x00b9
                           0000BA   376 _PX1	=	0x00ba
                           0000BB   377 _PT1	=	0x00bb
                           0000BC   378 _PS	=	0x00bc
                           0000D0   379 _P	=	0x00d0
                           0000D1   380 _F1	=	0x00d1
                           0000D2   381 _OV	=	0x00d2
                           0000D3   382 _RS0	=	0x00d3
                           0000D4   383 _RS1	=	0x00d4
                           0000D5   384 _F0	=	0x00d5
                           0000D6   385 _AC	=	0x00d6
                           0000D7   386 _CY	=	0x00d7
                           0000AD   387 _ET2	=	0x00ad
                           0000BD   388 _PT2	=	0x00bd
                           0000C8   389 _T2CON_0	=	0x00c8
                           0000C9   390 _T2CON_1	=	0x00c9
                           0000CA   391 _T2CON_2	=	0x00ca
                           0000CB   392 _T2CON_3	=	0x00cb
                           0000CC   393 _T2CON_4	=	0x00cc
                           0000CD   394 _T2CON_5	=	0x00cd
                           0000CE   395 _T2CON_6	=	0x00ce
                           0000CF   396 _T2CON_7	=	0x00cf
                           0000C8   397 _CP_RL2	=	0x00c8
                           0000C9   398 _C_T2	=	0x00c9
                           0000CA   399 _TR2	=	0x00ca
                           0000CB   400 _EXEN2	=	0x00cb
                           0000CC   401 _TCLK	=	0x00cc
                           0000CD   402 _RCLK	=	0x00cd
                           0000CE   403 _EXF2	=	0x00ce
                           0000CF   404 _TF2	=	0x00cf
                           0000DF   405 _CF	=	0x00df
                           0000DE   406 _CR	=	0x00de
                           0000DC   407 _CCF4	=	0x00dc
                           0000DB   408 _CCF3	=	0x00db
                           0000DA   409 _CCF2	=	0x00da
                           0000D9   410 _CCF1	=	0x00d9
                           0000D8   411 _CCF0	=	0x00d8
                           0000AE   412 _EC	=	0x00ae
                           0000BE   413 _PPCL	=	0x00be
                           0000BD   414 _PT2L	=	0x00bd
                           0000BC   415 _PSL	=	0x00bc
                           0000BB   416 _PT1L	=	0x00bb
                           0000BA   417 _PX1L	=	0x00ba
                           0000B9   418 _PT0L	=	0x00b9
                           0000B8   419 _PX0L	=	0x00b8
                           0000C0   420 _P4_0	=	0x00c0
                           0000C1   421 _P4_1	=	0x00c1
                           0000C2   422 _P4_2	=	0x00c2
                           0000C3   423 _P4_3	=	0x00c3
                           0000C4   424 _P4_4	=	0x00c4
                           0000C5   425 _P4_5	=	0x00c5
                           0000C6   426 _P4_6	=	0x00c6
                           0000C7   427 _P4_7	=	0x00c7
                           0000E8   428 _P5_0	=	0x00e8
                           0000E9   429 _P5_1	=	0x00e9
                           0000EA   430 _P5_2	=	0x00ea
                           0000EB   431 _P5_3	=	0x00eb
                           0000EC   432 _P5_4	=	0x00ec
                           0000ED   433 _P5_5	=	0x00ed
                           0000EE   434 _P5_6	=	0x00ee
                           0000EF   435 _P5_7	=	0x00ef
                                    436 ;--------------------------------------------------------
                                    437 ; overlayable register banks
                                    438 ;--------------------------------------------------------
                                    439 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        440 	.ds 8
                                    441 ;--------------------------------------------------------
                                    442 ; internal ram data
                                    443 ;--------------------------------------------------------
                                    444 	.area DSEG    (DATA)
      000008                        445 _EEPROM_hexump_sloc0_1_0:
      000008                        446 	.ds 2
                                    447 ;--------------------------------------------------------
                                    448 ; overlayable items in internal ram 
                                    449 ;--------------------------------------------------------
                                    450 ;--------------------------------------------------------
                                    451 ; Stack segment in internal ram 
                                    452 ;--------------------------------------------------------
                                    453 	.area	SSEG
      000016                        454 __start__stack:
      000016                        455 	.ds	1
                                    456 
                                    457 ;--------------------------------------------------------
                                    458 ; indirectly addressable internal ram data
                                    459 ;--------------------------------------------------------
                                    460 	.area ISEG    (DATA)
                                    461 ;--------------------------------------------------------
                                    462 ; absolute internal ram data
                                    463 ;--------------------------------------------------------
                                    464 	.area IABS    (ABS,DATA)
                                    465 	.area IABS    (ABS,DATA)
                                    466 ;--------------------------------------------------------
                                    467 ; bit data
                                    468 ;--------------------------------------------------------
                                    469 	.area BSEG    (BIT)
                                    470 ;--------------------------------------------------------
                                    471 ; paged external ram data
                                    472 ;--------------------------------------------------------
                                    473 	.area PSEG    (PAG,XDATA)
                                    474 ;--------------------------------------------------------
                                    475 ; external ram data
                                    476 ;--------------------------------------------------------
                                    477 	.area XSEG    (XDATA)
      000400                        478 _ACK::
      000400                        479 	.ds 2
      000402                        480 _putchar_charToSend_65536_50:
      000402                        481 	.ds 2
      000404                        482 _take_address_input_65537_72:
      000404                        483 	.ds 4
      000408                        484 _take_address_address_65538_76:
      000408                        485 	.ds 2
      00040A                        486 _take_data_input_65537_82:
      00040A                        487 	.ds 4
      00040E                        488 _take_data_data_65538_86:
      00040E                        489 	.ds 1
      00040F                        490 _eeprom_write_PARM_2:
      00040F                        491 	.ds 1
      000410                        492 _eeprom_write_address_65536_90:
      000410                        493 	.ds 2
      000412                        494 _eeprom_read_address_65536_97:
      000412                        495 	.ds 2
      000414                        496 _i2c_write_data_65536_102:
      000414                        497 	.ds 1
      000415                        498 _i2c_read_ACK_65536_107:
      000415                        499 	.ds 2
      000417                        500 _i2c_read_buff_65536_108:
      000417                        501 	.ds 1
      000418                        502 _EEPROM_hexump_PARM_2:
      000418                        503 	.ds 2
      00041A                        504 _EEPROM_hexump_start_address_65536_113:
      00041A                        505 	.ds 2
      00041C                        506 _EEPROM_hexump_address_131072_115:
      00041C                        507 	.ds 2
                                    508 ;--------------------------------------------------------
                                    509 ; absolute external ram data
                                    510 ;--------------------------------------------------------
                                    511 	.area XABS    (ABS,XDATA)
                                    512 ;--------------------------------------------------------
                                    513 ; external initialized ram data
                                    514 ;--------------------------------------------------------
                                    515 	.area XISEG   (XDATA)
      000457                        516 _address_range_flag:
      000457                        517 	.ds 2
      000459                        518 _data_range_flag:
      000459                        519 	.ds 2
      00045B                        520 _block:
      00045B                        521 	.ds 2
                                    522 	.area HOME    (CODE)
                                    523 	.area GSINIT0 (CODE)
                                    524 	.area GSINIT1 (CODE)
                                    525 	.area GSINIT2 (CODE)
                                    526 	.area GSINIT3 (CODE)
                                    527 	.area GSINIT4 (CODE)
                                    528 	.area GSINIT5 (CODE)
                                    529 	.area GSINIT  (CODE)
                                    530 	.area GSFINAL (CODE)
                                    531 	.area CSEG    (CODE)
                                    532 ;--------------------------------------------------------
                                    533 ; interrupt vector 
                                    534 ;--------------------------------------------------------
                                    535 	.area HOME    (CODE)
      003000                        536 __interrupt_vect:
      003000 02 30 06         [24]  537 	ljmp	__sdcc_gsinit_startup
                                    538 ;--------------------------------------------------------
                                    539 ; global & static initialisations
                                    540 ;--------------------------------------------------------
                                    541 	.area HOME    (CODE)
                                    542 	.area GSINIT  (CODE)
                                    543 	.area GSFINAL (CODE)
                                    544 	.area GSINIT  (CODE)
                                    545 	.globl __sdcc_gsinit_startup
                                    546 	.globl __sdcc_program_startup
                                    547 	.globl __start__stack
                                    548 	.globl __mcs51_genXINIT
                                    549 	.globl __mcs51_genXRAMCLEAR
                                    550 	.globl __mcs51_genRAMCLEAR
                                    551 	.area GSFINAL (CODE)
      00305F 02 30 03         [24]  552 	ljmp	__sdcc_program_startup
                                    553 ;--------------------------------------------------------
                                    554 ; Home
                                    555 ;--------------------------------------------------------
                                    556 	.area HOME    (CODE)
                                    557 	.area HOME    (CODE)
      003003                        558 __sdcc_program_startup:
      003003 02 31 A2         [24]  559 	ljmp	_main
                                    560 ;	return from main will return to caller
                                    561 ;--------------------------------------------------------
                                    562 ; code
                                    563 ;--------------------------------------------------------
                                    564 	.area CSEG    (CODE)
                                    565 ;------------------------------------------------------------
                                    566 ;Allocation info for local variables in function 'putchar'
                                    567 ;------------------------------------------------------------
                                    568 ;charToSend                Allocated with name '_putchar_charToSend_65536_50'
                                    569 ;------------------------------------------------------------
                                    570 ;	8051_i2c_eeprom.c:64: int putchar(int charToSend) {
                                    571 ;	-----------------------------------------
                                    572 ;	 function putchar
                                    573 ;	-----------------------------------------
      003062                        574 _putchar:
                           000007   575 	ar7 = 0x07
                           000006   576 	ar6 = 0x06
                           000005   577 	ar5 = 0x05
                           000004   578 	ar4 = 0x04
                           000003   579 	ar3 = 0x03
                           000002   580 	ar2 = 0x02
                           000001   581 	ar1 = 0x01
                           000000   582 	ar0 = 0x00
      003062 AF 83            [24]  583 	mov	r7,dph
      003064 E5 82            [12]  584 	mov	a,dpl
      003066 90 04 02         [24]  585 	mov	dptr,#_putchar_charToSend_65536_50
      003069 F0               [24]  586 	movx	@dptr,a
      00306A EF               [12]  587 	mov	a,r7
      00306B A3               [24]  588 	inc	dptr
      00306C F0               [24]  589 	movx	@dptr,a
                                    590 ;	8051_i2c_eeprom.c:65: SBUF = charToSend;       /* Load character into serial buffer */
      00306D 90 04 02         [24]  591 	mov	dptr,#_putchar_charToSend_65536_50
      003070 E0               [24]  592 	movx	a,@dptr
      003071 FE               [12]  593 	mov	r6,a
      003072 A3               [24]  594 	inc	dptr
      003073 E0               [24]  595 	movx	a,@dptr
      003074 FF               [12]  596 	mov	r7,a
      003075 8E 99            [24]  597 	mov	_SBUF,r6
                                    598 ;	8051_i2c_eeprom.c:66: while (!TI);             /* Wait for transmission completion */
      003077                        599 00101$:
                                    600 ;	8051_i2c_eeprom.c:67: TI = 0;                  /* Clear transmission flag */
                                    601 ;	assignBit
      003077 10 99 02         [24]  602 	jbc	_TI,00114$
      00307A 80 FB            [24]  603 	sjmp	00101$
      00307C                        604 00114$:
                                    605 ;	8051_i2c_eeprom.c:68: return charToSend;
      00307C 8E 82            [24]  606 	mov	dpl,r6
      00307E 8F 83            [24]  607 	mov	dph,r7
                                    608 ;	8051_i2c_eeprom.c:69: }
      003080 22               [24]  609 	ret
                                    610 ;------------------------------------------------------------
                                    611 ;Allocation info for local variables in function 'getchar'
                                    612 ;------------------------------------------------------------
                                    613 ;	8051_i2c_eeprom.c:75: int getchar(void) {
                                    614 ;	-----------------------------------------
                                    615 ;	 function getchar
                                    616 ;	-----------------------------------------
      003081                        617 _getchar:
                                    618 ;	8051_i2c_eeprom.c:76: while (!RI);             /* Wait for reception completion */
      003081                        619 00101$:
                                    620 ;	8051_i2c_eeprom.c:77: RI = 0;                  /* Clear reception flag */
                                    621 ;	assignBit
      003081 10 98 02         [24]  622 	jbc	_RI,00114$
      003084 80 FB            [24]  623 	sjmp	00101$
      003086                        624 00114$:
                                    625 ;	8051_i2c_eeprom.c:78: return SBUF;             /* Return received character */
      003086 AE 99            [24]  626 	mov	r6,_SBUF
      003088 7F 00            [12]  627 	mov	r7,#0x00
      00308A 8E 82            [24]  628 	mov	dpl,r6
      00308C 8F 83            [24]  629 	mov	dph,r7
                                    630 ;	8051_i2c_eeprom.c:79: }
      00308E 22               [24]  631 	ret
                                    632 ;------------------------------------------------------------
                                    633 ;Allocation info for local variables in function 'ui'
                                    634 ;------------------------------------------------------------
                                    635 ;	8051_i2c_eeprom.c:84: void ui()
                                    636 ;	-----------------------------------------
                                    637 ;	 function ui
                                    638 ;	-----------------------------------------
      00308F                        639 _ui:
                                    640 ;	8051_i2c_eeprom.c:86: printf("\n╔════════════════════════════════════════════════════════╗\n\r");
      00308F 74 0A            [12]  641 	mov	a,#___str_0
      003091 C0 E0            [24]  642 	push	acc
      003093 74 4A            [12]  643 	mov	a,#(___str_0 >> 8)
      003095 C0 E0            [24]  644 	push	acc
      003097 74 80            [12]  645 	mov	a,#0x80
      003099 C0 E0            [24]  646 	push	acc
      00309B 12 3F A8         [24]  647 	lcall	_printf
      00309E 15 81            [12]  648 	dec	sp
      0030A0 15 81            [12]  649 	dec	sp
      0030A2 15 81            [12]  650 	dec	sp
                                    651 ;	8051_i2c_eeprom.c:87: printf("║           I2C Memory Management System v1.0            ║\n\r");
      0030A4 74 BC            [12]  652 	mov	a,#___str_1
      0030A6 C0 E0            [24]  653 	push	acc
      0030A8 74 4A            [12]  654 	mov	a,#(___str_1 >> 8)
      0030AA C0 E0            [24]  655 	push	acc
      0030AC 74 80            [12]  656 	mov	a,#0x80
      0030AE C0 E0            [24]  657 	push	acc
      0030B0 12 3F A8         [24]  658 	lcall	_printf
      0030B3 15 81            [12]  659 	dec	sp
      0030B5 15 81            [12]  660 	dec	sp
      0030B7 15 81            [12]  661 	dec	sp
                                    662 ;	8051_i2c_eeprom.c:88: printf("╚════════════════════════════════════════════════════════╝\n\r");
      0030B9 74 FD            [12]  663 	mov	a,#___str_2
      0030BB C0 E0            [24]  664 	push	acc
      0030BD 74 4A            [12]  665 	mov	a,#(___str_2 >> 8)
      0030BF C0 E0            [24]  666 	push	acc
      0030C1 74 80            [12]  667 	mov	a,#0x80
      0030C3 C0 E0            [24]  668 	push	acc
      0030C5 12 3F A8         [24]  669 	lcall	_printf
      0030C8 15 81            [12]  670 	dec	sp
      0030CA 15 81            [12]  671 	dec	sp
      0030CC 15 81            [12]  672 	dec	sp
                                    673 ;	8051_i2c_eeprom.c:90: }
      0030CE 22               [24]  674 	ret
                                    675 ;------------------------------------------------------------
                                    676 ;Allocation info for local variables in function 'command_menu'
                                    677 ;------------------------------------------------------------
                                    678 ;	8051_i2c_eeprom.c:95: void command_menu()
                                    679 ;	-----------------------------------------
                                    680 ;	 function command_menu
                                    681 ;	-----------------------------------------
      0030CF                        682 _command_menu:
                                    683 ;	8051_i2c_eeprom.c:97: printf("\n\r┌────────────┬────────────────────────────────────────────┐\n\r");
      0030CF 74 AE            [12]  684 	mov	a,#___str_3
      0030D1 C0 E0            [24]  685 	push	acc
      0030D3 74 4B            [12]  686 	mov	a,#(___str_3 >> 8)
      0030D5 C0 E0            [24]  687 	push	acc
      0030D7 74 80            [12]  688 	mov	a,#0x80
      0030D9 C0 E0            [24]  689 	push	acc
      0030DB 12 3F A8         [24]  690 	lcall	_printf
      0030DE 15 81            [12]  691 	dec	sp
      0030E0 15 81            [12]  692 	dec	sp
      0030E2 15 81            [12]  693 	dec	sp
                                    694 ;	8051_i2c_eeprom.c:98: printf("│  Command   │               Description                  │\n\r");
      0030E4 74 64            [12]  695 	mov	a,#___str_4
      0030E6 C0 E0            [24]  696 	push	acc
      0030E8 74 4C            [12]  697 	mov	a,#(___str_4 >> 8)
      0030EA C0 E0            [24]  698 	push	acc
      0030EC 74 80            [12]  699 	mov	a,#0x80
      0030EE C0 E0            [24]  700 	push	acc
      0030F0 12 3F A8         [24]  701 	lcall	_printf
      0030F3 15 81            [12]  702 	dec	sp
      0030F5 15 81            [12]  703 	dec	sp
      0030F7 15 81            [12]  704 	dec	sp
                                    705 ;	8051_i2c_eeprom.c:99: printf("├────────────┼────────────────────────────────────────────┤\n\r");
      0030F9 74 A8            [12]  706 	mov	a,#___str_5
      0030FB C0 E0            [24]  707 	push	acc
      0030FD 74 4C            [12]  708 	mov	a,#(___str_5 >> 8)
      0030FF C0 E0            [24]  709 	push	acc
      003101 74 80            [12]  710 	mov	a,#0x80
      003103 C0 E0            [24]  711 	push	acc
      003105 12 3F A8         [24]  712 	lcall	_printf
      003108 15 81            [12]  713 	dec	sp
      00310A 15 81            [12]  714 	dec	sp
      00310C 15 81            [12]  715 	dec	sp
                                    716 ;	8051_i2c_eeprom.c:100: printf("│     R      │ Read from address                          │\n\r");
      00310E 74 5C            [12]  717 	mov	a,#___str_6
      003110 C0 E0            [24]  718 	push	acc
      003112 74 4D            [12]  719 	mov	a,#(___str_6 >> 8)
      003114 C0 E0            [24]  720 	push	acc
      003116 74 80            [12]  721 	mov	a,#0x80
      003118 C0 E0            [24]  722 	push	acc
      00311A 12 3F A8         [24]  723 	lcall	_printf
      00311D 15 81            [12]  724 	dec	sp
      00311F 15 81            [12]  725 	dec	sp
      003121 15 81            [12]  726 	dec	sp
                                    727 ;	8051_i2c_eeprom.c:101: printf("│     W      │ Write data to address                      │\n\r");
      003123 74 A0            [12]  728 	mov	a,#___str_7
      003125 C0 E0            [24]  729 	push	acc
      003127 74 4D            [12]  730 	mov	a,#(___str_7 >> 8)
      003129 C0 E0            [24]  731 	push	acc
      00312B 74 80            [12]  732 	mov	a,#0x80
      00312D C0 E0            [24]  733 	push	acc
      00312F 12 3F A8         [24]  734 	lcall	_printf
      003132 15 81            [12]  735 	dec	sp
      003134 15 81            [12]  736 	dec	sp
      003136 15 81            [12]  737 	dec	sp
                                    738 ;	8051_i2c_eeprom.c:102: printf("│     H      │ Display hex dump                           │\n\r");
      003138 74 E4            [12]  739 	mov	a,#___str_8
      00313A C0 E0            [24]  740 	push	acc
      00313C 74 4D            [12]  741 	mov	a,#(___str_8 >> 8)
      00313E C0 E0            [24]  742 	push	acc
      003140 74 80            [12]  743 	mov	a,#0x80
      003142 C0 E0            [24]  744 	push	acc
      003144 12 3F A8         [24]  745 	lcall	_printf
      003147 15 81            [12]  746 	dec	sp
      003149 15 81            [12]  747 	dec	sp
      00314B 15 81            [12]  748 	dec	sp
                                    749 ;	8051_i2c_eeprom.c:103: printf("│     X      │ Reset memory system                        │\n\r");
      00314D 74 28            [12]  750 	mov	a,#___str_9
      00314F C0 E0            [24]  751 	push	acc
      003151 74 4E            [12]  752 	mov	a,#(___str_9 >> 8)
      003153 C0 E0            [24]  753 	push	acc
      003155 74 80            [12]  754 	mov	a,#0x80
      003157 C0 E0            [24]  755 	push	acc
      003159 12 3F A8         [24]  756 	lcall	_printf
      00315C 15 81            [12]  757 	dec	sp
      00315E 15 81            [12]  758 	dec	sp
      003160 15 81            [12]  759 	dec	sp
                                    760 ;	8051_i2c_eeprom.c:104: printf("│     ?      │ Display this help menu                     │\n\r");
      003162 74 6C            [12]  761 	mov	a,#___str_10
      003164 C0 E0            [24]  762 	push	acc
      003166 74 4E            [12]  763 	mov	a,#(___str_10 >> 8)
      003168 C0 E0            [24]  764 	push	acc
      00316A 74 80            [12]  765 	mov	a,#0x80
      00316C C0 E0            [24]  766 	push	acc
      00316E 12 3F A8         [24]  767 	lcall	_printf
      003171 15 81            [12]  768 	dec	sp
      003173 15 81            [12]  769 	dec	sp
      003175 15 81            [12]  770 	dec	sp
                                    771 ;	8051_i2c_eeprom.c:105: printf("│     Q      │ Quit program                               │\n\r");
      003177 74 B0            [12]  772 	mov	a,#___str_11
      003179 C0 E0            [24]  773 	push	acc
      00317B 74 4E            [12]  774 	mov	a,#(___str_11 >> 8)
      00317D C0 E0            [24]  775 	push	acc
      00317F 74 80            [12]  776 	mov	a,#0x80
      003181 C0 E0            [24]  777 	push	acc
      003183 12 3F A8         [24]  778 	lcall	_printf
      003186 15 81            [12]  779 	dec	sp
      003188 15 81            [12]  780 	dec	sp
      00318A 15 81            [12]  781 	dec	sp
                                    782 ;	8051_i2c_eeprom.c:106: printf("└────────────┴────────────────────────────────────────────┘\n\r");
      00318C 74 F4            [12]  783 	mov	a,#___str_12
      00318E C0 E0            [24]  784 	push	acc
      003190 74 4E            [12]  785 	mov	a,#(___str_12 >> 8)
      003192 C0 E0            [24]  786 	push	acc
      003194 74 80            [12]  787 	mov	a,#0x80
      003196 C0 E0            [24]  788 	push	acc
      003198 12 3F A8         [24]  789 	lcall	_printf
      00319B 15 81            [12]  790 	dec	sp
      00319D 15 81            [12]  791 	dec	sp
      00319F 15 81            [12]  792 	dec	sp
                                    793 ;	8051_i2c_eeprom.c:109: }
      0031A1 22               [24]  794 	ret
                                    795 ;------------------------------------------------------------
                                    796 ;Allocation info for local variables in function 'main'
                                    797 ;------------------------------------------------------------
                                    798 ;user_input                Allocated with name '_main_user_input_131072_57'
                                    799 ;addr                      Allocated with name '_main_addr_262145_60'
                                    800 ;data                      Allocated with name '_main_data_262146_62'
                                    801 ;addr                      Allocated with name '_main_addr_262145_65'
                                    802 ;start_add                 Allocated with name '_main_start_add_196609_67'
                                    803 ;end_add                   Allocated with name '_main_end_add_196610_69'
                                    804 ;------------------------------------------------------------
                                    805 ;	8051_i2c_eeprom.c:115: int main()
                                    806 ;	-----------------------------------------
                                    807 ;	 function main
                                    808 ;	-----------------------------------------
      0031A2                        809 _main:
                                    810 ;	8051_i2c_eeprom.c:118: P1 &= ~(1<<3);  // Set P1.3 as output
      0031A2 53 90 F7         [24]  811 	anl	_P1,#0xf7
                                    812 ;	8051_i2c_eeprom.c:119: P1 &= ~(1<<4);  // Set P1.4 as output
      0031A5 53 90 EF         [24]  813 	anl	_P1,#0xef
                                    814 ;	8051_i2c_eeprom.c:120: ui();
      0031A8 12 30 8F         [24]  815 	lcall	_ui
                                    816 ;	8051_i2c_eeprom.c:121: command_menu();
      0031AB 12 30 CF         [24]  817 	lcall	_command_menu
                                    818 ;	8051_i2c_eeprom.c:122: i2c_start();
      0031AE 12 3A 4A         [24]  819 	lcall	_i2c_start
                                    820 ;	8051_i2c_eeprom.c:123: while(1)
      0031B1                        821 00119$:
                                    822 ;	8051_i2c_eeprom.c:125: char user_input = getchar();
      0031B1 12 30 81         [24]  823 	lcall	_getchar
      0031B4 AE 82            [24]  824 	mov	r6,dpl
                                    825 ;	8051_i2c_eeprom.c:126: printf("| $ %c\n\r", user_input);
      0031B6 8E 05            [24]  826 	mov	ar5,r6
      0031B8 7F 00            [12]  827 	mov	r7,#0x00
      0031BA C0 06            [24]  828 	push	ar6
      0031BC C0 05            [24]  829 	push	ar5
      0031BE C0 07            [24]  830 	push	ar7
      0031C0 74 A8            [12]  831 	mov	a,#___str_13
      0031C2 C0 E0            [24]  832 	push	acc
      0031C4 74 4F            [12]  833 	mov	a,#(___str_13 >> 8)
      0031C6 C0 E0            [24]  834 	push	acc
      0031C8 74 80            [12]  835 	mov	a,#0x80
      0031CA C0 E0            [24]  836 	push	acc
      0031CC 12 3F A8         [24]  837 	lcall	_printf
      0031CF E5 81            [12]  838 	mov	a,sp
      0031D1 24 FB            [12]  839 	add	a,#0xfb
      0031D3 F5 81            [12]  840 	mov	sp,a
                                    841 ;	8051_i2c_eeprom.c:127: printf("\n\r");
      0031D5 74 B1            [12]  842 	mov	a,#___str_14
      0031D7 C0 E0            [24]  843 	push	acc
      0031D9 74 4F            [12]  844 	mov	a,#(___str_14 >> 8)
      0031DB C0 E0            [24]  845 	push	acc
      0031DD 74 80            [12]  846 	mov	a,#0x80
      0031DF C0 E0            [24]  847 	push	acc
      0031E1 12 3F A8         [24]  848 	lcall	_printf
      0031E4 15 81            [12]  849 	dec	sp
      0031E6 15 81            [12]  850 	dec	sp
      0031E8 15 81            [12]  851 	dec	sp
      0031EA D0 06            [24]  852 	pop	ar6
                                    853 ;	8051_i2c_eeprom.c:128: switch(user_input)
      0031EC BE 3F 03         [24]  854 	cjne	r6,#0x3f,00167$
      0031EF 02 32 D2         [24]  855 	ljmp	00109$
      0031F2                        856 00167$:
      0031F2 BE 48 03         [24]  857 	cjne	r6,#0x48,00168$
      0031F5 02 32 F3         [24]  858 	ljmp	00111$
      0031F8                        859 00168$:
      0031F8 BE 52 02         [24]  860 	cjne	r6,#0x52,00169$
      0031FB 80 76            [24]  861 	sjmp	00106$
      0031FD                        862 00169$:
      0031FD BE 57 02         [24]  863 	cjne	r6,#0x57,00170$
      003200 80 09            [24]  864 	sjmp	00101$
      003202                        865 00170$:
      003202 BE 58 03         [24]  866 	cjne	r6,#0x58,00171$
      003205 02 32 D8         [24]  867 	ljmp	00110$
      003208                        868 00171$:
      003208 02 33 5D         [24]  869 	ljmp	00116$
                                    870 ;	8051_i2c_eeprom.c:130: case 'W':
      00320B                        871 00101$:
                                    872 ;	8051_i2c_eeprom.c:132: printf("\n┌─────────────── WRITE OPERATION ──────────────┐\n\r");
      00320B 74 B4            [12]  873 	mov	a,#___str_15
      00320D C0 E0            [24]  874 	push	acc
      00320F 74 4F            [12]  875 	mov	a,#(___str_15 >> 8)
      003211 C0 E0            [24]  876 	push	acc
      003213 74 80            [12]  877 	mov	a,#0x80
      003215 C0 E0            [24]  878 	push	acc
      003217 12 3F A8         [24]  879 	lcall	_printf
      00321A 15 81            [12]  880 	dec	sp
      00321C 15 81            [12]  881 	dec	sp
      00321E 15 81            [12]  882 	dec	sp
                                    883 ;	8051_i2c_eeprom.c:134: addr = take_address();
      003220 12 33 75         [24]  884 	lcall	_take_address
      003223 AE 82            [24]  885 	mov	r6,dpl
      003225 AF 83            [24]  886 	mov	r7,dph
                                    887 ;	8051_i2c_eeprom.c:135: if(!address_range_flag) 
      003227 90 04 57         [24]  888 	mov	dptr,#_address_range_flag
      00322A E0               [24]  889 	movx	a,@dptr
      00322B F5 F0            [12]  890 	mov	b,a
      00322D A3               [24]  891 	inc	dptr
      00322E E0               [24]  892 	movx	a,@dptr
      00322F 45 F0            [12]  893 	orl	a,b
      003231 70 0C            [24]  894 	jnz	00103$
                                    895 ;	8051_i2c_eeprom.c:137: address_range_flag = 1;
      003233 90 04 57         [24]  896 	mov	dptr,#_address_range_flag
      003236 74 01            [12]  897 	mov	a,#0x01
      003238 F0               [24]  898 	movx	@dptr,a
      003239 E4               [12]  899 	clr	a
      00323A A3               [24]  900 	inc	dptr
      00323B F0               [24]  901 	movx	@dptr,a
                                    902 ;	8051_i2c_eeprom.c:138: break;
      00323C 02 31 B1         [24]  903 	ljmp	00119$
      00323F                        904 00103$:
                                    905 ;	8051_i2c_eeprom.c:141: data = take_data();
      00323F C0 07            [24]  906 	push	ar7
      003241 C0 06            [24]  907 	push	ar6
      003243 12 35 8E         [24]  908 	lcall	_take_data
      003246 AD 82            [24]  909 	mov	r5,dpl
      003248 D0 06            [24]  910 	pop	ar6
      00324A D0 07            [24]  911 	pop	ar7
                                    912 ;	8051_i2c_eeprom.c:142: if(!data_range_flag) 
      00324C 90 04 59         [24]  913 	mov	dptr,#_data_range_flag
      00324F E0               [24]  914 	movx	a,@dptr
      003250 F5 F0            [12]  915 	mov	b,a
      003252 A3               [24]  916 	inc	dptr
      003253 E0               [24]  917 	movx	a,@dptr
      003254 45 F0            [12]  918 	orl	a,b
      003256 70 0C            [24]  919 	jnz	00105$
                                    920 ;	8051_i2c_eeprom.c:144: data_range_flag = 1;
      003258 90 04 59         [24]  921 	mov	dptr,#_data_range_flag
      00325B 74 01            [12]  922 	mov	a,#0x01
      00325D F0               [24]  923 	movx	@dptr,a
      00325E E4               [12]  924 	clr	a
      00325F A3               [24]  925 	inc	dptr
      003260 F0               [24]  926 	movx	@dptr,a
                                    927 ;	8051_i2c_eeprom.c:145: break;
      003261 02 31 B1         [24]  928 	ljmp	00119$
      003264                        929 00105$:
                                    930 ;	8051_i2c_eeprom.c:148: eeprom_write(addr, data);
      003264 90 04 0F         [24]  931 	mov	dptr,#_eeprom_write_PARM_2
      003267 ED               [12]  932 	mov	a,r5
      003268 F0               [24]  933 	movx	@dptr,a
      003269 8E 82            [24]  934 	mov	dpl,r6
      00326B 8F 83            [24]  935 	mov	dph,r7
      00326D 12 37 07         [24]  936 	lcall	_eeprom_write
                                    937 ;	8051_i2c_eeprom.c:149: break;
      003270 02 31 B1         [24]  938 	ljmp	00119$
                                    939 ;	8051_i2c_eeprom.c:151: case 'R':
      003273                        940 00106$:
                                    941 ;	8051_i2c_eeprom.c:153: printf("\n┌─────────────── READ OPERATION ───────────────┐\n\r");
      003273 74 26            [12]  942 	mov	a,#___str_16
      003275 C0 E0            [24]  943 	push	acc
      003277 74 50            [12]  944 	mov	a,#(___str_16 >> 8)
      003279 C0 E0            [24]  945 	push	acc
      00327B 74 80            [12]  946 	mov	a,#0x80
      00327D C0 E0            [24]  947 	push	acc
      00327F 12 3F A8         [24]  948 	lcall	_printf
      003282 15 81            [12]  949 	dec	sp
      003284 15 81            [12]  950 	dec	sp
      003286 15 81            [12]  951 	dec	sp
                                    952 ;	8051_i2c_eeprom.c:155: addr = take_address(); 
      003288 12 33 75         [24]  953 	lcall	_take_address
      00328B AE 82            [24]  954 	mov	r6,dpl
      00328D AF 83            [24]  955 	mov	r7,dph
                                    956 ;	8051_i2c_eeprom.c:156: if(!address_range_flag) 
      00328F 90 04 57         [24]  957 	mov	dptr,#_address_range_flag
      003292 E0               [24]  958 	movx	a,@dptr
      003293 F5 F0            [12]  959 	mov	b,a
      003295 A3               [24]  960 	inc	dptr
      003296 E0               [24]  961 	movx	a,@dptr
      003297 45 F0            [12]  962 	orl	a,b
      003299 70 0C            [24]  963 	jnz	00108$
                                    964 ;	8051_i2c_eeprom.c:158: address_range_flag = 1;
      00329B 90 04 57         [24]  965 	mov	dptr,#_address_range_flag
      00329E 74 01            [12]  966 	mov	a,#0x01
      0032A0 F0               [24]  967 	movx	@dptr,a
      0032A1 E4               [12]  968 	clr	a
      0032A2 A3               [24]  969 	inc	dptr
      0032A3 F0               [24]  970 	movx	@dptr,a
                                    971 ;	8051_i2c_eeprom.c:159: break;
      0032A4 02 31 B1         [24]  972 	ljmp	00119$
      0032A7                        973 00108$:
                                    974 ;	8051_i2c_eeprom.c:161: printf("| Reading from Address 0x%03X           |\n\r", addr);
      0032A7 C0 07            [24]  975 	push	ar7
      0032A9 C0 06            [24]  976 	push	ar6
      0032AB C0 06            [24]  977 	push	ar6
      0032AD C0 07            [24]  978 	push	ar7
      0032AF 74 9A            [12]  979 	mov	a,#___str_17
      0032B1 C0 E0            [24]  980 	push	acc
      0032B3 74 50            [12]  981 	mov	a,#(___str_17 >> 8)
      0032B5 C0 E0            [24]  982 	push	acc
      0032B7 74 80            [12]  983 	mov	a,#0x80
      0032B9 C0 E0            [24]  984 	push	acc
      0032BB 12 3F A8         [24]  985 	lcall	_printf
      0032BE E5 81            [12]  986 	mov	a,sp
      0032C0 24 FB            [12]  987 	add	a,#0xfb
      0032C2 F5 81            [12]  988 	mov	sp,a
      0032C4 D0 06            [24]  989 	pop	ar6
      0032C6 D0 07            [24]  990 	pop	ar7
                                    991 ;	8051_i2c_eeprom.c:162: eeprom_read(addr);
      0032C8 8E 82            [24]  992 	mov	dpl,r6
      0032CA 8F 83            [24]  993 	mov	dph,r7
      0032CC 12 38 49         [24]  994 	lcall	_eeprom_read
                                    995 ;	8051_i2c_eeprom.c:163: break;
      0032CF 02 31 B1         [24]  996 	ljmp	00119$
                                    997 ;	8051_i2c_eeprom.c:166: case '?':
      0032D2                        998 00109$:
                                    999 ;	8051_i2c_eeprom.c:167: command_menu();
      0032D2 12 30 CF         [24] 1000 	lcall	_command_menu
                                   1001 ;	8051_i2c_eeprom.c:168: break;
      0032D5 02 31 B1         [24] 1002 	ljmp	00119$
                                   1003 ;	8051_i2c_eeprom.c:170: case 'X':
      0032D8                       1004 00110$:
                                   1005 ;	8051_i2c_eeprom.c:171: printf("\n┌─────────────── RESET OPERATION ───────────┐\n\r");
      0032D8 74 C6            [12] 1006 	mov	a,#___str_18
      0032DA C0 E0            [24] 1007 	push	acc
      0032DC 74 50            [12] 1008 	mov	a,#(___str_18 >> 8)
      0032DE C0 E0            [24] 1009 	push	acc
      0032E0 74 80            [12] 1010 	mov	a,#0x80
      0032E2 C0 E0            [24] 1011 	push	acc
      0032E4 12 3F A8         [24] 1012 	lcall	_printf
      0032E7 15 81            [12] 1013 	dec	sp
      0032E9 15 81            [12] 1014 	dec	sp
      0032EB 15 81            [12] 1015 	dec	sp
                                   1016 ;	8051_i2c_eeprom.c:172: eeprom_reset();
      0032ED 12 3D 56         [24] 1017 	lcall	_eeprom_reset
                                   1018 ;	8051_i2c_eeprom.c:173: break;
      0032F0 02 31 B1         [24] 1019 	ljmp	00119$
                                   1020 ;	8051_i2c_eeprom.c:175: case 'H':
      0032F3                       1021 00111$:
                                   1022 ;	8051_i2c_eeprom.c:176: printf("\n┌───────────── HEX DUMP OPERATION ───────────────┐\n\r");
      0032F3 74 2F            [12] 1023 	mov	a,#___str_19
      0032F5 C0 E0            [24] 1024 	push	acc
      0032F7 74 51            [12] 1025 	mov	a,#(___str_19 >> 8)
      0032F9 C0 E0            [24] 1026 	push	acc
      0032FB 74 80            [12] 1027 	mov	a,#0x80
      0032FD C0 E0            [24] 1028 	push	acc
      0032FF 12 3F A8         [24] 1029 	lcall	_printf
      003302 15 81            [12] 1030 	dec	sp
      003304 15 81            [12] 1031 	dec	sp
      003306 15 81            [12] 1032 	dec	sp
                                   1033 ;	8051_i2c_eeprom.c:178: start_add = take_address();
      003308 12 33 75         [24] 1034 	lcall	_take_address
      00330B AE 82            [24] 1035 	mov	r6,dpl
      00330D AF 83            [24] 1036 	mov	r7,dph
                                   1037 ;	8051_i2c_eeprom.c:179: if(!address_range_flag) 
      00330F 90 04 57         [24] 1038 	mov	dptr,#_address_range_flag
      003312 E0               [24] 1039 	movx	a,@dptr
      003313 FC               [12] 1040 	mov	r4,a
      003314 A3               [24] 1041 	inc	dptr
      003315 E0               [24] 1042 	movx	a,@dptr
      003316 FD               [12] 1043 	mov	r5,a
      003317 90 04 57         [24] 1044 	mov	dptr,#_address_range_flag
      00331A E0               [24] 1045 	movx	a,@dptr
      00331B F5 F0            [12] 1046 	mov	b,a
      00331D A3               [24] 1047 	inc	dptr
      00331E E0               [24] 1048 	movx	a,@dptr
      00331F 45 F0            [12] 1049 	orl	a,b
      003321 70 0C            [24] 1050 	jnz	00113$
                                   1051 ;	8051_i2c_eeprom.c:181: address_range_flag = 1;
      003323 90 04 57         [24] 1052 	mov	dptr,#_address_range_flag
      003326 74 01            [12] 1053 	mov	a,#0x01
      003328 F0               [24] 1054 	movx	@dptr,a
      003329 E4               [12] 1055 	clr	a
      00332A A3               [24] 1056 	inc	dptr
      00332B F0               [24] 1057 	movx	@dptr,a
                                   1058 ;	8051_i2c_eeprom.c:182: break;
      00332C 02 31 B1         [24] 1059 	ljmp	00119$
      00332F                       1060 00113$:
                                   1061 ;	8051_i2c_eeprom.c:185: if(!address_range_flag) 
      00332F EC               [12] 1062 	mov	a,r4
      003330 4D               [12] 1063 	orl	a,r5
      003331 70 0C            [24] 1064 	jnz	00115$
                                   1065 ;	8051_i2c_eeprom.c:187: address_range_flag = 1;
      003333 90 04 57         [24] 1066 	mov	dptr,#_address_range_flag
      003336 74 01            [12] 1067 	mov	a,#0x01
      003338 F0               [24] 1068 	movx	@dptr,a
      003339 E4               [12] 1069 	clr	a
      00333A A3               [24] 1070 	inc	dptr
      00333B F0               [24] 1071 	movx	@dptr,a
                                   1072 ;	8051_i2c_eeprom.c:188: break;
      00333C 02 31 B1         [24] 1073 	ljmp	00119$
      00333F                       1074 00115$:
                                   1075 ;	8051_i2c_eeprom.c:190: end_add = take_address();
      00333F C0 07            [24] 1076 	push	ar7
      003341 C0 06            [24] 1077 	push	ar6
      003343 12 33 75         [24] 1078 	lcall	_take_address
      003346 AC 82            [24] 1079 	mov	r4,dpl
      003348 AD 83            [24] 1080 	mov	r5,dph
      00334A D0 06            [24] 1081 	pop	ar6
      00334C D0 07            [24] 1082 	pop	ar7
                                   1083 ;	8051_i2c_eeprom.c:193: EEPROM_hexump(start_add, end_add);
      00334E 90 04 18         [24] 1084 	mov	dptr,#_EEPROM_hexump_PARM_2
      003351 EC               [12] 1085 	mov	a,r4
      003352 F0               [24] 1086 	movx	@dptr,a
      003353 ED               [12] 1087 	mov	a,r5
      003354 A3               [24] 1088 	inc	dptr
      003355 F0               [24] 1089 	movx	@dptr,a
      003356 8E 82            [24] 1090 	mov	dpl,r6
      003358 8F 83            [24] 1091 	mov	dph,r7
      00335A 12 3A 5F         [24] 1092 	lcall	_EEPROM_hexump
                                   1093 ;	8051_i2c_eeprom.c:195: default:
      00335D                       1094 00116$:
                                   1095 ;	8051_i2c_eeprom.c:196: printf("INVALID INPUT\n\r");
      00335D 74 A1            [12] 1096 	mov	a,#___str_20
      00335F C0 E0            [24] 1097 	push	acc
      003361 74 51            [12] 1098 	mov	a,#(___str_20 >> 8)
      003363 C0 E0            [24] 1099 	push	acc
      003365 74 80            [12] 1100 	mov	a,#0x80
      003367 C0 E0            [24] 1101 	push	acc
      003369 12 3F A8         [24] 1102 	lcall	_printf
      00336C 15 81            [12] 1103 	dec	sp
      00336E 15 81            [12] 1104 	dec	sp
      003370 15 81            [12] 1105 	dec	sp
                                   1106 ;	8051_i2c_eeprom.c:198: }
                                   1107 ;	8051_i2c_eeprom.c:201: }
      003372 02 31 B1         [24] 1108 	ljmp	00119$
                                   1109 ;------------------------------------------------------------
                                   1110 ;Allocation info for local variables in function 'take_address'
                                   1111 ;------------------------------------------------------------
                                   1112 ;input                     Allocated with name '_take_address_input_65537_72'
                                   1113 ;i                         Allocated with name '_take_address_i_65537_72'
                                   1114 ;c                         Allocated with name '_take_address_c_65537_72'
                                   1115 ;address                   Allocated with name '_take_address_address_65538_76'
                                   1116 ;block                     Allocated with name '_take_address_block_65539_80'
                                   1117 ;------------------------------------------------------------
                                   1118 ;	8051_i2c_eeprom.c:209: unsigned int take_address() 
                                   1119 ;	-----------------------------------------
                                   1120 ;	 function take_address
                                   1121 ;	-----------------------------------------
      003375                       1122 _take_address:
                                   1123 ;	8051_i2c_eeprom.c:211: printf("│ Enter address (hex, up to 3 characters): \n\r|");
      003375 74 B1            [12] 1124 	mov	a,#___str_21
      003377 C0 E0            [24] 1125 	push	acc
      003379 74 51            [12] 1126 	mov	a,#(___str_21 >> 8)
      00337B C0 E0            [24] 1127 	push	acc
      00337D 74 80            [12] 1128 	mov	a,#0x80
      00337F C0 E0            [24] 1129 	push	acc
      003381 12 3F A8         [24] 1130 	lcall	_printf
      003384 15 81            [12] 1131 	dec	sp
      003386 15 81            [12] 1132 	dec	sp
      003388 15 81            [12] 1133 	dec	sp
                                   1134 ;	8051_i2c_eeprom.c:212: char input[4] = {0};  // Array for 3 hex chars + null terminator
      00338A 90 04 04         [24] 1135 	mov	dptr,#_take_address_input_65537_72
      00338D E4               [12] 1136 	clr	a
      00338E F0               [24] 1137 	movx	@dptr,a
      00338F 90 04 05         [24] 1138 	mov	dptr,#(_take_address_input_65537_72 + 0x0001)
      003392 F0               [24] 1139 	movx	@dptr,a
      003393 90 04 06         [24] 1140 	mov	dptr,#(_take_address_input_65537_72 + 0x0002)
      003396 F0               [24] 1141 	movx	@dptr,a
      003397 90 04 07         [24] 1142 	mov	dptr,#(_take_address_input_65537_72 + 0x0003)
      00339A F0               [24] 1143 	movx	@dptr,a
                                   1144 ;	8051_i2c_eeprom.c:216: printf("| $ ");
      00339B 74 E2            [12] 1145 	mov	a,#___str_22
      00339D C0 E0            [24] 1146 	push	acc
      00339F 74 51            [12] 1147 	mov	a,#(___str_22 >> 8)
      0033A1 C0 E0            [24] 1148 	push	acc
      0033A3 74 80            [12] 1149 	mov	a,#0x80
      0033A5 C0 E0            [24] 1150 	push	acc
      0033A7 12 3F A8         [24] 1151 	lcall	_printf
      0033AA 15 81            [12] 1152 	dec	sp
      0033AC 15 81            [12] 1153 	dec	sp
      0033AE 15 81            [12] 1154 	dec	sp
                                   1155 ;	8051_i2c_eeprom.c:218: while (i < 3) {
      0033B0 7E 00            [12] 1156 	mov	r6,#0x00
      0033B2 7F 00            [12] 1157 	mov	r7,#0x00
      0033B4                       1158 00111$:
      0033B4 C3               [12] 1159 	clr	c
      0033B5 EE               [12] 1160 	mov	a,r6
      0033B6 94 03            [12] 1161 	subb	a,#0x03
      0033B8 EF               [12] 1162 	mov	a,r7
      0033B9 64 80            [12] 1163 	xrl	a,#0x80
      0033BB 94 80            [12] 1164 	subb	a,#0x80
      0033BD 50 5B            [24] 1165 	jnc	00113$
                                   1166 ;	8051_i2c_eeprom.c:220: c = getchar();
      0033BF C0 07            [24] 1167 	push	ar7
      0033C1 C0 06            [24] 1168 	push	ar6
      0033C3 12 30 81         [24] 1169 	lcall	_getchar
      0033C6 AC 82            [24] 1170 	mov	r4,dpl
      0033C8 AD 83            [24] 1171 	mov	r5,dph
      0033CA D0 06            [24] 1172 	pop	ar6
      0033CC D0 07            [24] 1173 	pop	ar7
                                   1174 ;	8051_i2c_eeprom.c:223: if (c == '\r' || c == '\n') {
      0033CE BC 0D 02         [24] 1175 	cjne	r4,#0x0d,00200$
      0033D1 80 47            [24] 1176 	sjmp	00113$
      0033D3                       1177 00200$:
      0033D3 BC 0A 02         [24] 1178 	cjne	r4,#0x0a,00201$
      0033D6 80 42            [24] 1179 	sjmp	00113$
      0033D8                       1180 00201$:
                                   1181 ;	8051_i2c_eeprom.c:228: if ((c >= '0' && c <= '9') || 
      0033D8 BC 30 00         [24] 1182 	cjne	r4,#0x30,00202$
      0033DB                       1183 00202$:
      0033DB 40 05            [24] 1184 	jc	00108$
      0033DD EC               [12] 1185 	mov	a,r4
      0033DE 24 C6            [12] 1186 	add	a,#0xff - 0x39
      0033E0 50 14            [24] 1187 	jnc	00104$
      0033E2                       1188 00108$:
                                   1189 ;	8051_i2c_eeprom.c:229: (c >= 'a' && c <= 'f') || 
      0033E2 BC 61 00         [24] 1190 	cjne	r4,#0x61,00205$
      0033E5                       1191 00205$:
      0033E5 40 05            [24] 1192 	jc	00110$
      0033E7 EC               [12] 1193 	mov	a,r4
      0033E8 24 99            [12] 1194 	add	a,#0xff - 0x66
      0033EA 50 0A            [24] 1195 	jnc	00104$
      0033EC                       1196 00110$:
                                   1197 ;	8051_i2c_eeprom.c:230: (c >= 'A' && c <= 'F')) {
      0033EC BC 41 00         [24] 1198 	cjne	r4,#0x41,00208$
      0033EF                       1199 00208$:
      0033EF 40 C3            [24] 1200 	jc	00111$
      0033F1 EC               [12] 1201 	mov	a,r4
      0033F2 24 B9            [12] 1202 	add	a,#0xff - 0x46
      0033F4 40 BE            [24] 1203 	jc	00111$
      0033F6                       1204 00104$:
                                   1205 ;	8051_i2c_eeprom.c:232: input[i] = c;
      0033F6 EE               [12] 1206 	mov	a,r6
      0033F7 24 04            [12] 1207 	add	a,#_take_address_input_65537_72
      0033F9 F5 82            [12] 1208 	mov	dpl,a
      0033FB EF               [12] 1209 	mov	a,r7
      0033FC 34 04            [12] 1210 	addc	a,#(_take_address_input_65537_72 >> 8)
      0033FE F5 83            [12] 1211 	mov	dph,a
      003400 EC               [12] 1212 	mov	a,r4
      003401 F0               [24] 1213 	movx	@dptr,a
                                   1214 ;	8051_i2c_eeprom.c:233: putchar(c);  // Echo character back
      003402 7D 00            [12] 1215 	mov	r5,#0x00
      003404 8C 82            [24] 1216 	mov	dpl,r4
      003406 8D 83            [24] 1217 	mov	dph,r5
      003408 C0 07            [24] 1218 	push	ar7
      00340A C0 06            [24] 1219 	push	ar6
      00340C 12 30 62         [24] 1220 	lcall	_putchar
      00340F D0 06            [24] 1221 	pop	ar6
      003411 D0 07            [24] 1222 	pop	ar7
                                   1223 ;	8051_i2c_eeprom.c:234: i++;
      003413 0E               [12] 1224 	inc	r6
      003414 BE 00 9D         [24] 1225 	cjne	r6,#0x00,00111$
      003417 0F               [12] 1226 	inc	r7
      003418 80 9A            [24] 1227 	sjmp	00111$
      00341A                       1228 00113$:
                                   1229 ;	8051_i2c_eeprom.c:238: input[i] = '\0';  // Null-terminate the string
      00341A EE               [12] 1230 	mov	a,r6
      00341B 24 04            [12] 1231 	add	a,#_take_address_input_65537_72
      00341D F5 82            [12] 1232 	mov	dpl,a
      00341F EF               [12] 1233 	mov	a,r7
      003420 34 04            [12] 1234 	addc	a,#(_take_address_input_65537_72 >> 8)
      003422 F5 83            [12] 1235 	mov	dph,a
      003424 E4               [12] 1236 	clr	a
      003425 F0               [24] 1237 	movx	@dptr,a
                                   1238 ;	8051_i2c_eeprom.c:241: unsigned int address = 0;
      003426 90 04 08         [24] 1239 	mov	dptr,#_take_address_address_65538_76
      003429 F0               [24] 1240 	movx	@dptr,a
      00342A A3               [24] 1241 	inc	dptr
      00342B F0               [24] 1242 	movx	@dptr,a
                                   1243 ;	8051_i2c_eeprom.c:242: for(i = 0; input[i] != '\0'; i++) {
      00342C 7E 00            [12] 1244 	mov	r6,#0x00
      00342E 7F 00            [12] 1245 	mov	r7,#0x00
      003430                       1246 00129$:
      003430 EE               [12] 1247 	mov	a,r6
      003431 24 04            [12] 1248 	add	a,#_take_address_input_65537_72
      003433 F5 82            [12] 1249 	mov	dpl,a
      003435 EF               [12] 1250 	mov	a,r7
      003436 34 04            [12] 1251 	addc	a,#(_take_address_input_65537_72 >> 8)
      003438 F5 83            [12] 1252 	mov	dph,a
      00343A E0               [24] 1253 	movx	a,@dptr
      00343B FD               [12] 1254 	mov	r5,a
      00343C 70 03            [24] 1255 	jnz	00212$
      00343E 02 34 E9         [24] 1256 	ljmp	00125$
      003441                       1257 00212$:
                                   1258 ;	8051_i2c_eeprom.c:243: address = address * 16;
      003441 90 04 08         [24] 1259 	mov	dptr,#_take_address_address_65538_76
      003444 E0               [24] 1260 	movx	a,@dptr
      003445 FB               [12] 1261 	mov	r3,a
      003446 A3               [24] 1262 	inc	dptr
      003447 E0               [24] 1263 	movx	a,@dptr
      003448 C4               [12] 1264 	swap	a
      003449 54 F0            [12] 1265 	anl	a,#0xf0
      00344B CB               [12] 1266 	xch	a,r3
      00344C C4               [12] 1267 	swap	a
      00344D CB               [12] 1268 	xch	a,r3
      00344E 6B               [12] 1269 	xrl	a,r3
      00344F CB               [12] 1270 	xch	a,r3
      003450 54 F0            [12] 1271 	anl	a,#0xf0
      003452 CB               [12] 1272 	xch	a,r3
      003453 6B               [12] 1273 	xrl	a,r3
      003454 FC               [12] 1274 	mov	r4,a
      003455 90 04 08         [24] 1275 	mov	dptr,#_take_address_address_65538_76
      003458 EB               [12] 1276 	mov	a,r3
      003459 F0               [24] 1277 	movx	@dptr,a
      00345A EC               [12] 1278 	mov	a,r4
      00345B A3               [24] 1279 	inc	dptr
      00345C F0               [24] 1280 	movx	@dptr,a
                                   1281 ;	8051_i2c_eeprom.c:244: if(input[i] >= '0' && input[i] <= '9')
      00345D BD 30 00         [24] 1282 	cjne	r5,#0x30,00213$
      003460                       1283 00213$:
      003460 40 23            [24] 1284 	jc	00122$
      003462 ED               [12] 1285 	mov	a,r5
      003463 24 C6            [12] 1286 	add	a,#0xff - 0x39
      003465 40 1E            [24] 1287 	jc	00122$
                                   1288 ;	8051_i2c_eeprom.c:245: address += input[i] - '0';
      003467 7C 00            [12] 1289 	mov	r4,#0x00
      003469 ED               [12] 1290 	mov	a,r5
      00346A 24 D0            [12] 1291 	add	a,#0xd0
      00346C FD               [12] 1292 	mov	r5,a
      00346D EC               [12] 1293 	mov	a,r4
      00346E 34 FF            [12] 1294 	addc	a,#0xff
      003470 FC               [12] 1295 	mov	r4,a
      003471 90 04 08         [24] 1296 	mov	dptr,#_take_address_address_65538_76
      003474 E0               [24] 1297 	movx	a,@dptr
      003475 FA               [12] 1298 	mov	r2,a
      003476 A3               [24] 1299 	inc	dptr
      003477 E0               [24] 1300 	movx	a,@dptr
      003478 FB               [12] 1301 	mov	r3,a
      003479 90 04 08         [24] 1302 	mov	dptr,#_take_address_address_65538_76
      00347C ED               [12] 1303 	mov	a,r5
      00347D 2A               [12] 1304 	add	a,r2
      00347E F0               [24] 1305 	movx	@dptr,a
      00347F EC               [12] 1306 	mov	a,r4
      003480 3B               [12] 1307 	addc	a,r3
      003481 A3               [24] 1308 	inc	dptr
      003482 F0               [24] 1309 	movx	@dptr,a
      003483 80 5C            [24] 1310 	sjmp	00130$
      003485                       1311 00122$:
                                   1312 ;	8051_i2c_eeprom.c:246: else if(input[i] >= 'A' && input[i] <= 'F')
      003485 EE               [12] 1313 	mov	a,r6
      003486 24 04            [12] 1314 	add	a,#_take_address_input_65537_72
      003488 F5 82            [12] 1315 	mov	dpl,a
      00348A EF               [12] 1316 	mov	a,r7
      00348B 34 04            [12] 1317 	addc	a,#(_take_address_input_65537_72 >> 8)
      00348D F5 83            [12] 1318 	mov	dph,a
      00348F E0               [24] 1319 	movx	a,@dptr
      003490 FD               [12] 1320 	mov	r5,a
      003491 BD 41 00         [24] 1321 	cjne	r5,#0x41,00216$
      003494                       1322 00216$:
      003494 40 25            [24] 1323 	jc	00118$
      003496 ED               [12] 1324 	mov	a,r5
      003497 24 B9            [12] 1325 	add	a,#0xff - 0x46
      003499 40 20            [24] 1326 	jc	00118$
                                   1327 ;	8051_i2c_eeprom.c:247: address += input[i] - 'A' + 10;
      00349B 8D 03            [24] 1328 	mov	ar3,r5
      00349D 7C 00            [12] 1329 	mov	r4,#0x00
      00349F 74 C9            [12] 1330 	mov	a,#0xc9
      0034A1 2B               [12] 1331 	add	a,r3
      0034A2 FB               [12] 1332 	mov	r3,a
      0034A3 74 FF            [12] 1333 	mov	a,#0xff
      0034A5 3C               [12] 1334 	addc	a,r4
      0034A6 FC               [12] 1335 	mov	r4,a
      0034A7 90 04 08         [24] 1336 	mov	dptr,#_take_address_address_65538_76
      0034AA E0               [24] 1337 	movx	a,@dptr
      0034AB F9               [12] 1338 	mov	r1,a
      0034AC A3               [24] 1339 	inc	dptr
      0034AD E0               [24] 1340 	movx	a,@dptr
      0034AE FA               [12] 1341 	mov	r2,a
      0034AF 90 04 08         [24] 1342 	mov	dptr,#_take_address_address_65538_76
      0034B2 EB               [12] 1343 	mov	a,r3
      0034B3 29               [12] 1344 	add	a,r1
      0034B4 F0               [24] 1345 	movx	@dptr,a
      0034B5 EC               [12] 1346 	mov	a,r4
      0034B6 3A               [12] 1347 	addc	a,r2
      0034B7 A3               [24] 1348 	inc	dptr
      0034B8 F0               [24] 1349 	movx	@dptr,a
      0034B9 80 26            [24] 1350 	sjmp	00130$
      0034BB                       1351 00118$:
                                   1352 ;	8051_i2c_eeprom.c:248: else if(input[i] >= 'a' && input[i] <= 'f')
      0034BB BD 61 00         [24] 1353 	cjne	r5,#0x61,00219$
      0034BE                       1354 00219$:
      0034BE 40 21            [24] 1355 	jc	00130$
      0034C0 ED               [12] 1356 	mov	a,r5
      0034C1 24 99            [12] 1357 	add	a,#0xff - 0x66
      0034C3 40 1C            [24] 1358 	jc	00130$
                                   1359 ;	8051_i2c_eeprom.c:249: address += input[i] - 'a' + 10;
      0034C5 7C 00            [12] 1360 	mov	r4,#0x00
      0034C7 74 A9            [12] 1361 	mov	a,#0xa9
      0034C9 2D               [12] 1362 	add	a,r5
      0034CA FD               [12] 1363 	mov	r5,a
      0034CB 74 FF            [12] 1364 	mov	a,#0xff
      0034CD 3C               [12] 1365 	addc	a,r4
      0034CE FC               [12] 1366 	mov	r4,a
      0034CF 90 04 08         [24] 1367 	mov	dptr,#_take_address_address_65538_76
      0034D2 E0               [24] 1368 	movx	a,@dptr
      0034D3 FA               [12] 1369 	mov	r2,a
      0034D4 A3               [24] 1370 	inc	dptr
      0034D5 E0               [24] 1371 	movx	a,@dptr
      0034D6 FB               [12] 1372 	mov	r3,a
      0034D7 90 04 08         [24] 1373 	mov	dptr,#_take_address_address_65538_76
      0034DA ED               [12] 1374 	mov	a,r5
      0034DB 2A               [12] 1375 	add	a,r2
      0034DC F0               [24] 1376 	movx	@dptr,a
      0034DD EC               [12] 1377 	mov	a,r4
      0034DE 3B               [12] 1378 	addc	a,r3
      0034DF A3               [24] 1379 	inc	dptr
      0034E0 F0               [24] 1380 	movx	@dptr,a
      0034E1                       1381 00130$:
                                   1382 ;	8051_i2c_eeprom.c:242: for(i = 0; input[i] != '\0'; i++) {
      0034E1 0E               [12] 1383 	inc	r6
      0034E2 BE 00 01         [24] 1384 	cjne	r6,#0x00,00222$
      0034E5 0F               [12] 1385 	inc	r7
      0034E6                       1386 00222$:
      0034E6 02 34 30         [24] 1387 	ljmp	00129$
      0034E9                       1388 00125$:
                                   1389 ;	8051_i2c_eeprom.c:252: printf("\n\r│ Entered address: 0x%03X\n\r", address);
      0034E9 90 04 08         [24] 1390 	mov	dptr,#_take_address_address_65538_76
      0034EC E0               [24] 1391 	movx	a,@dptr
      0034ED FE               [12] 1392 	mov	r6,a
      0034EE A3               [24] 1393 	inc	dptr
      0034EF E0               [24] 1394 	movx	a,@dptr
      0034F0 FF               [12] 1395 	mov	r7,a
      0034F1 C0 07            [24] 1396 	push	ar7
      0034F3 C0 06            [24] 1397 	push	ar6
      0034F5 C0 06            [24] 1398 	push	ar6
      0034F7 C0 07            [24] 1399 	push	ar7
      0034F9 74 E7            [12] 1400 	mov	a,#___str_23
      0034FB C0 E0            [24] 1401 	push	acc
      0034FD 74 51            [12] 1402 	mov	a,#(___str_23 >> 8)
      0034FF C0 E0            [24] 1403 	push	acc
      003501 74 80            [12] 1404 	mov	a,#0x80
      003503 C0 E0            [24] 1405 	push	acc
      003505 12 3F A8         [24] 1406 	lcall	_printf
      003508 E5 81            [12] 1407 	mov	a,sp
      00350A 24 FB            [12] 1408 	add	a,#0xfb
      00350C F5 81            [12] 1409 	mov	sp,a
      00350E D0 06            [24] 1410 	pop	ar6
      003510 D0 07            [24] 1411 	pop	ar7
                                   1412 ;	8051_i2c_eeprom.c:253: if(address > 0x7ff) 
      003512 C3               [12] 1413 	clr	c
      003513 74 FF            [12] 1414 	mov	a,#0xff
      003515 9E               [12] 1415 	subb	a,r6
      003516 74 07            [12] 1416 	mov	a,#0x07
      003518 9F               [12] 1417 	subb	a,r7
      003519 50 5F            [24] 1418 	jnc	00127$
                                   1419 ;	8051_i2c_eeprom.c:255: printf("╔══════════════════════════════════════════╗\n\r");
      00351B 74 07            [12] 1420 	mov	a,#___str_24
      00351D C0 E0            [24] 1421 	push	acc
      00351F 74 52            [12] 1422 	mov	a,#(___str_24 >> 8)
      003521 C0 E0            [24] 1423 	push	acc
      003523 74 80            [12] 1424 	mov	a,#0x80
      003525 C0 E0            [24] 1425 	push	acc
      003527 12 3F A8         [24] 1426 	lcall	_printf
      00352A 15 81            [12] 1427 	dec	sp
      00352C 15 81            [12] 1428 	dec	sp
      00352E 15 81            [12] 1429 	dec	sp
                                   1430 ;	8051_i2c_eeprom.c:256: printf("║       ! ADDRESS OUT OF RANGE !         ║\n\r");
      003530 74 8E            [12] 1431 	mov	a,#___str_25
      003532 C0 E0            [24] 1432 	push	acc
      003534 74 52            [12] 1433 	mov	a,#(___str_25 >> 8)
      003536 C0 E0            [24] 1434 	push	acc
      003538 74 80            [12] 1435 	mov	a,#0x80
      00353A C0 E0            [24] 1436 	push	acc
      00353C 12 3F A8         [24] 1437 	lcall	_printf
      00353F 15 81            [12] 1438 	dec	sp
      003541 15 81            [12] 1439 	dec	sp
      003543 15 81            [12] 1440 	dec	sp
                                   1441 ;	8051_i2c_eeprom.c:257: printf("║     Please Enter Valid Address         ║\n\r");
      003545 74 BF            [12] 1442 	mov	a,#___str_26
      003547 C0 E0            [24] 1443 	push	acc
      003549 74 52            [12] 1444 	mov	a,#(___str_26 >> 8)
      00354B C0 E0            [24] 1445 	push	acc
      00354D 74 80            [12] 1446 	mov	a,#0x80
      00354F C0 E0            [24] 1447 	push	acc
      003551 12 3F A8         [24] 1448 	lcall	_printf
      003554 15 81            [12] 1449 	dec	sp
      003556 15 81            [12] 1450 	dec	sp
      003558 15 81            [12] 1451 	dec	sp
                                   1452 ;	8051_i2c_eeprom.c:258: printf("╚══════════════════════════════════════════╝\n\r");
      00355A 74 F0            [12] 1453 	mov	a,#___str_27
      00355C C0 E0            [24] 1454 	push	acc
      00355E 74 52            [12] 1455 	mov	a,#(___str_27 >> 8)
      003560 C0 E0            [24] 1456 	push	acc
      003562 74 80            [12] 1457 	mov	a,#0x80
      003564 C0 E0            [24] 1458 	push	acc
      003566 12 3F A8         [24] 1459 	lcall	_printf
      003569 15 81            [12] 1460 	dec	sp
      00356B 15 81            [12] 1461 	dec	sp
      00356D 15 81            [12] 1462 	dec	sp
                                   1463 ;	8051_i2c_eeprom.c:259: address_range_flag = 0;
      00356F 90 04 57         [24] 1464 	mov	dptr,#_address_range_flag
      003572 E4               [12] 1465 	clr	a
      003573 F0               [24] 1466 	movx	@dptr,a
      003574 A3               [24] 1467 	inc	dptr
      003575 F0               [24] 1468 	movx	@dptr,a
                                   1469 ;	8051_i2c_eeprom.c:260: return 0;
      003576 90 00 00         [24] 1470 	mov	dptr,#0x0000
      003579 22               [24] 1471 	ret
      00357A                       1472 00127$:
                                   1473 ;	8051_i2c_eeprom.c:264: address = address%256;     //word address
      00357A 90 04 08         [24] 1474 	mov	dptr,#_take_address_address_65538_76
      00357D EE               [12] 1475 	mov	a,r6
      00357E F0               [24] 1476 	movx	@dptr,a
      00357F E4               [12] 1477 	clr	a
      003580 A3               [24] 1478 	inc	dptr
      003581 F0               [24] 1479 	movx	@dptr,a
                                   1480 ;	8051_i2c_eeprom.c:267: return address;
      003582 90 04 08         [24] 1481 	mov	dptr,#_take_address_address_65538_76
      003585 E0               [24] 1482 	movx	a,@dptr
      003586 FE               [12] 1483 	mov	r6,a
      003587 A3               [24] 1484 	inc	dptr
      003588 E0               [24] 1485 	movx	a,@dptr
                                   1486 ;	8051_i2c_eeprom.c:268: }
      003589 8E 82            [24] 1487 	mov	dpl,r6
      00358B F5 83            [12] 1488 	mov	dph,a
      00358D 22               [24] 1489 	ret
                                   1490 ;------------------------------------------------------------
                                   1491 ;Allocation info for local variables in function 'take_data'
                                   1492 ;------------------------------------------------------------
                                   1493 ;input                     Allocated with name '_take_data_input_65537_82'
                                   1494 ;i                         Allocated with name '_take_data_i_65537_82'
                                   1495 ;c                         Allocated with name '_take_data_c_65537_82'
                                   1496 ;data                      Allocated with name '_take_data_data_65538_86'
                                   1497 ;------------------------------------------------------------
                                   1498 ;	8051_i2c_eeprom.c:276: unsigned char take_data()
                                   1499 ;	-----------------------------------------
                                   1500 ;	 function take_data
                                   1501 ;	-----------------------------------------
      00358E                       1502 _take_data:
                                   1503 ;	8051_i2c_eeprom.c:278: printf("│ Enter data (hex, up to 2 characters): \n\r|");
      00358E 74 77            [12] 1504 	mov	a,#___str_28
      003590 C0 E0            [24] 1505 	push	acc
      003592 74 53            [12] 1506 	mov	a,#(___str_28 >> 8)
      003594 C0 E0            [24] 1507 	push	acc
      003596 74 80            [12] 1508 	mov	a,#0x80
      003598 C0 E0            [24] 1509 	push	acc
      00359A 12 3F A8         [24] 1510 	lcall	_printf
      00359D 15 81            [12] 1511 	dec	sp
      00359F 15 81            [12] 1512 	dec	sp
      0035A1 15 81            [12] 1513 	dec	sp
                                   1514 ;	8051_i2c_eeprom.c:279: char input[4] = {0};  // Array for 3 hex chars + null terminator
      0035A3 90 04 0A         [24] 1515 	mov	dptr,#_take_data_input_65537_82
      0035A6 E4               [12] 1516 	clr	a
      0035A7 F0               [24] 1517 	movx	@dptr,a
      0035A8 90 04 0B         [24] 1518 	mov	dptr,#(_take_data_input_65537_82 + 0x0001)
      0035AB F0               [24] 1519 	movx	@dptr,a
      0035AC 90 04 0C         [24] 1520 	mov	dptr,#(_take_data_input_65537_82 + 0x0002)
      0035AF F0               [24] 1521 	movx	@dptr,a
      0035B0 90 04 0D         [24] 1522 	mov	dptr,#(_take_data_input_65537_82 + 0x0003)
      0035B3 F0               [24] 1523 	movx	@dptr,a
                                   1524 ;	8051_i2c_eeprom.c:283: printf("$ ");
      0035B4 74 A5            [12] 1525 	mov	a,#___str_29
      0035B6 C0 E0            [24] 1526 	push	acc
      0035B8 74 53            [12] 1527 	mov	a,#(___str_29 >> 8)
      0035BA C0 E0            [24] 1528 	push	acc
      0035BC 74 80            [12] 1529 	mov	a,#0x80
      0035BE C0 E0            [24] 1530 	push	acc
      0035C0 12 3F A8         [24] 1531 	lcall	_printf
      0035C3 15 81            [12] 1532 	dec	sp
      0035C5 15 81            [12] 1533 	dec	sp
      0035C7 15 81            [12] 1534 	dec	sp
                                   1535 ;	8051_i2c_eeprom.c:285: while (i < 3) {
      0035C9 7E 00            [12] 1536 	mov	r6,#0x00
      0035CB 7F 00            [12] 1537 	mov	r7,#0x00
      0035CD                       1538 00111$:
      0035CD C3               [12] 1539 	clr	c
      0035CE EE               [12] 1540 	mov	a,r6
      0035CF 94 03            [12] 1541 	subb	a,#0x03
      0035D1 EF               [12] 1542 	mov	a,r7
      0035D2 64 80            [12] 1543 	xrl	a,#0x80
      0035D4 94 80            [12] 1544 	subb	a,#0x80
      0035D6 50 5B            [24] 1545 	jnc	00113$
                                   1546 ;	8051_i2c_eeprom.c:287: c = getchar();
      0035D8 C0 07            [24] 1547 	push	ar7
      0035DA C0 06            [24] 1548 	push	ar6
      0035DC 12 30 81         [24] 1549 	lcall	_getchar
      0035DF AC 82            [24] 1550 	mov	r4,dpl
      0035E1 AD 83            [24] 1551 	mov	r5,dph
      0035E3 D0 06            [24] 1552 	pop	ar6
      0035E5 D0 07            [24] 1553 	pop	ar7
                                   1554 ;	8051_i2c_eeprom.c:290: if (c == '\r' || c == '\n') {
      0035E7 BC 0D 02         [24] 1555 	cjne	r4,#0x0d,00200$
      0035EA 80 47            [24] 1556 	sjmp	00113$
      0035EC                       1557 00200$:
      0035EC BC 0A 02         [24] 1558 	cjne	r4,#0x0a,00201$
      0035EF 80 42            [24] 1559 	sjmp	00113$
      0035F1                       1560 00201$:
                                   1561 ;	8051_i2c_eeprom.c:295: if ((c >= '0' && c <= '9') ||
      0035F1 BC 30 00         [24] 1562 	cjne	r4,#0x30,00202$
      0035F4                       1563 00202$:
      0035F4 40 05            [24] 1564 	jc	00108$
      0035F6 EC               [12] 1565 	mov	a,r4
      0035F7 24 C6            [12] 1566 	add	a,#0xff - 0x39
      0035F9 50 14            [24] 1567 	jnc	00104$
      0035FB                       1568 00108$:
                                   1569 ;	8051_i2c_eeprom.c:296: (c >= 'a' && c <= 'f') ||
      0035FB BC 61 00         [24] 1570 	cjne	r4,#0x61,00205$
      0035FE                       1571 00205$:
      0035FE 40 05            [24] 1572 	jc	00110$
      003600 EC               [12] 1573 	mov	a,r4
      003601 24 99            [12] 1574 	add	a,#0xff - 0x66
      003603 50 0A            [24] 1575 	jnc	00104$
      003605                       1576 00110$:
                                   1577 ;	8051_i2c_eeprom.c:297: (c >= 'A' && c <= 'F')) {
      003605 BC 41 00         [24] 1578 	cjne	r4,#0x41,00208$
      003608                       1579 00208$:
      003608 40 C3            [24] 1580 	jc	00111$
      00360A EC               [12] 1581 	mov	a,r4
      00360B 24 B9            [12] 1582 	add	a,#0xff - 0x46
      00360D 40 BE            [24] 1583 	jc	00111$
      00360F                       1584 00104$:
                                   1585 ;	8051_i2c_eeprom.c:299: input[i] = c;
      00360F EE               [12] 1586 	mov	a,r6
      003610 24 0A            [12] 1587 	add	a,#_take_data_input_65537_82
      003612 F5 82            [12] 1588 	mov	dpl,a
      003614 EF               [12] 1589 	mov	a,r7
      003615 34 04            [12] 1590 	addc	a,#(_take_data_input_65537_82 >> 8)
      003617 F5 83            [12] 1591 	mov	dph,a
      003619 EC               [12] 1592 	mov	a,r4
      00361A F0               [24] 1593 	movx	@dptr,a
                                   1594 ;	8051_i2c_eeprom.c:300: putchar(c);  // Echo character back
      00361B 7D 00            [12] 1595 	mov	r5,#0x00
      00361D 8C 82            [24] 1596 	mov	dpl,r4
      00361F 8D 83            [24] 1597 	mov	dph,r5
      003621 C0 07            [24] 1598 	push	ar7
      003623 C0 06            [24] 1599 	push	ar6
      003625 12 30 62         [24] 1600 	lcall	_putchar
      003628 D0 06            [24] 1601 	pop	ar6
      00362A D0 07            [24] 1602 	pop	ar7
                                   1603 ;	8051_i2c_eeprom.c:301: i++;
      00362C 0E               [12] 1604 	inc	r6
      00362D BE 00 9D         [24] 1605 	cjne	r6,#0x00,00111$
      003630 0F               [12] 1606 	inc	r7
      003631 80 9A            [24] 1607 	sjmp	00111$
      003633                       1608 00113$:
                                   1609 ;	8051_i2c_eeprom.c:305: input[i] = '\0';  // Null-terminate the string
      003633 EE               [12] 1610 	mov	a,r6
      003634 24 0A            [12] 1611 	add	a,#_take_data_input_65537_82
      003636 F5 82            [12] 1612 	mov	dpl,a
      003638 EF               [12] 1613 	mov	a,r7
      003639 34 04            [12] 1614 	addc	a,#(_take_data_input_65537_82 >> 8)
      00363B F5 83            [12] 1615 	mov	dph,a
      00363D E4               [12] 1616 	clr	a
      00363E F0               [24] 1617 	movx	@dptr,a
                                   1618 ;	8051_i2c_eeprom.c:308: unsigned char data = 0;
      00363F 90 04 0E         [24] 1619 	mov	dptr,#_take_data_data_65538_86
      003642 F0               [24] 1620 	movx	@dptr,a
                                   1621 ;	8051_i2c_eeprom.c:309: for (i = 0; input[i] != '\0'; i++) {
      003643 7E 00            [12] 1622 	mov	r6,#0x00
      003645 7F 00            [12] 1623 	mov	r7,#0x00
      003647                       1624 00129$:
      003647 EE               [12] 1625 	mov	a,r6
      003648 24 0A            [12] 1626 	add	a,#_take_data_input_65537_82
      00364A F5 82            [12] 1627 	mov	dpl,a
      00364C EF               [12] 1628 	mov	a,r7
      00364D 34 04            [12] 1629 	addc	a,#(_take_data_input_65537_82 >> 8)
      00364F F5 83            [12] 1630 	mov	dph,a
      003651 E0               [24] 1631 	movx	a,@dptr
      003652 FD               [12] 1632 	mov	r5,a
      003653 70 03            [24] 1633 	jnz	00212$
      003655 02 36 BA         [24] 1634 	ljmp	00125$
      003658                       1635 00212$:
                                   1636 ;	8051_i2c_eeprom.c:310: data = data * 16;
      003658 90 04 0E         [24] 1637 	mov	dptr,#_take_data_data_65538_86
      00365B E0               [24] 1638 	movx	a,@dptr
      00365C C4               [12] 1639 	swap	a
      00365D 54 F0            [12] 1640 	anl	a,#0xf0
      00365F FC               [12] 1641 	mov	r4,a
      003660 F0               [24] 1642 	movx	@dptr,a
                                   1643 ;	8051_i2c_eeprom.c:311: if (input[i] >= '0' && input[i] <= '9')
      003661 BD 30 00         [24] 1644 	cjne	r5,#0x30,00213$
      003664                       1645 00213$:
      003664 40 12            [24] 1646 	jc	00122$
      003666 ED               [12] 1647 	mov	a,r5
      003667 24 C6            [12] 1648 	add	a,#0xff - 0x39
      003669 40 0D            [24] 1649 	jc	00122$
                                   1650 ;	8051_i2c_eeprom.c:312: data += input[i] - '0';
      00366B ED               [12] 1651 	mov	a,r5
      00366C 24 D0            [12] 1652 	add	a,#0xd0
      00366E FD               [12] 1653 	mov	r5,a
      00366F 90 04 0E         [24] 1654 	mov	dptr,#_take_data_data_65538_86
      003672 E0               [24] 1655 	movx	a,@dptr
      003673 FC               [12] 1656 	mov	r4,a
      003674 2D               [12] 1657 	add	a,r5
      003675 F0               [24] 1658 	movx	@dptr,a
      003676 80 3A            [24] 1659 	sjmp	00130$
      003678                       1660 00122$:
                                   1661 ;	8051_i2c_eeprom.c:313: else if (input[i] >= 'A' && input[i] <= 'F')
      003678 EE               [12] 1662 	mov	a,r6
      003679 24 0A            [12] 1663 	add	a,#_take_data_input_65537_82
      00367B F5 82            [12] 1664 	mov	dpl,a
      00367D EF               [12] 1665 	mov	a,r7
      00367E 34 04            [12] 1666 	addc	a,#(_take_data_input_65537_82 >> 8)
      003680 F5 83            [12] 1667 	mov	dph,a
      003682 E0               [24] 1668 	movx	a,@dptr
      003683 FD               [12] 1669 	mov	r5,a
      003684 BD 41 00         [24] 1670 	cjne	r5,#0x41,00216$
      003687                       1671 00216$:
      003687 40 14            [24] 1672 	jc	00118$
      003689 ED               [12] 1673 	mov	a,r5
      00368A 24 B9            [12] 1674 	add	a,#0xff - 0x46
      00368C 40 0F            [24] 1675 	jc	00118$
                                   1676 ;	8051_i2c_eeprom.c:314: data += input[i] - 'A' + 10;
      00368E 8D 04            [24] 1677 	mov	ar4,r5
      003690 74 C9            [12] 1678 	mov	a,#0xc9
      003692 2C               [12] 1679 	add	a,r4
      003693 FC               [12] 1680 	mov	r4,a
      003694 90 04 0E         [24] 1681 	mov	dptr,#_take_data_data_65538_86
      003697 E0               [24] 1682 	movx	a,@dptr
      003698 FB               [12] 1683 	mov	r3,a
      003699 2C               [12] 1684 	add	a,r4
      00369A F0               [24] 1685 	movx	@dptr,a
      00369B 80 15            [24] 1686 	sjmp	00130$
      00369D                       1687 00118$:
                                   1688 ;	8051_i2c_eeprom.c:315: else if (input[i] >= 'a' && input[i] <= 'f')
      00369D BD 61 00         [24] 1689 	cjne	r5,#0x61,00219$
      0036A0                       1690 00219$:
      0036A0 40 10            [24] 1691 	jc	00130$
      0036A2 ED               [12] 1692 	mov	a,r5
      0036A3 24 99            [12] 1693 	add	a,#0xff - 0x66
      0036A5 40 0B            [24] 1694 	jc	00130$
                                   1695 ;	8051_i2c_eeprom.c:316: data += input[i] - 'a' + 10;
      0036A7 74 A9            [12] 1696 	mov	a,#0xa9
      0036A9 2D               [12] 1697 	add	a,r5
      0036AA FD               [12] 1698 	mov	r5,a
      0036AB 90 04 0E         [24] 1699 	mov	dptr,#_take_data_data_65538_86
      0036AE E0               [24] 1700 	movx	a,@dptr
      0036AF FC               [12] 1701 	mov	r4,a
      0036B0 2D               [12] 1702 	add	a,r5
      0036B1 F0               [24] 1703 	movx	@dptr,a
      0036B2                       1704 00130$:
                                   1705 ;	8051_i2c_eeprom.c:309: for (i = 0; input[i] != '\0'; i++) {
      0036B2 0E               [12] 1706 	inc	r6
      0036B3 BE 00 01         [24] 1707 	cjne	r6,#0x00,00222$
      0036B6 0F               [12] 1708 	inc	r7
      0036B7                       1709 00222$:
      0036B7 02 36 47         [24] 1710 	ljmp	00129$
      0036BA                       1711 00125$:
                                   1712 ;	8051_i2c_eeprom.c:319: printf("\n\r│ Entered data: 0x%02X\n\r", data);
      0036BA 90 04 0E         [24] 1713 	mov	dptr,#_take_data_data_65538_86
      0036BD E0               [24] 1714 	movx	a,@dptr
      0036BE FF               [12] 1715 	mov	r7,a
      0036BF FD               [12] 1716 	mov	r5,a
      0036C0 7E 00            [12] 1717 	mov	r6,#0x00
      0036C2 C0 07            [24] 1718 	push	ar7
      0036C4 C0 05            [24] 1719 	push	ar5
      0036C6 C0 06            [24] 1720 	push	ar6
      0036C8 74 A8            [12] 1721 	mov	a,#___str_30
      0036CA C0 E0            [24] 1722 	push	acc
      0036CC 74 53            [12] 1723 	mov	a,#(___str_30 >> 8)
      0036CE C0 E0            [24] 1724 	push	acc
      0036D0 74 80            [12] 1725 	mov	a,#0x80
      0036D2 C0 E0            [24] 1726 	push	acc
      0036D4 12 3F A8         [24] 1727 	lcall	_printf
      0036D7 E5 81            [12] 1728 	mov	a,sp
      0036D9 24 FB            [12] 1729 	add	a,#0xfb
      0036DB F5 81            [12] 1730 	mov	sp,a
      0036DD D0 07            [24] 1731 	pop	ar7
                                   1732 ;	8051_i2c_eeprom.c:320: if(data > 0xfe)
      0036DF EF               [12] 1733 	mov	a,r7
      0036E0 24 01            [12] 1734 	add	a,#0xff - 0xfe
      0036E2 50 20            [24] 1735 	jnc	00127$
                                   1736 ;	8051_i2c_eeprom.c:322: printf("Data out of Range\n\r");
      0036E4 74 C5            [12] 1737 	mov	a,#___str_31
      0036E6 C0 E0            [24] 1738 	push	acc
      0036E8 74 53            [12] 1739 	mov	a,#(___str_31 >> 8)
      0036EA C0 E0            [24] 1740 	push	acc
      0036EC 74 80            [12] 1741 	mov	a,#0x80
      0036EE C0 E0            [24] 1742 	push	acc
      0036F0 12 3F A8         [24] 1743 	lcall	_printf
      0036F3 15 81            [12] 1744 	dec	sp
      0036F5 15 81            [12] 1745 	dec	sp
      0036F7 15 81            [12] 1746 	dec	sp
                                   1747 ;	8051_i2c_eeprom.c:323: data_range_flag = 0;
      0036F9 90 04 59         [24] 1748 	mov	dptr,#_data_range_flag
      0036FC E4               [12] 1749 	clr	a
      0036FD F0               [24] 1750 	movx	@dptr,a
      0036FE A3               [24] 1751 	inc	dptr
      0036FF F0               [24] 1752 	movx	@dptr,a
                                   1753 ;	8051_i2c_eeprom.c:324: return 0;
      003700 75 82 00         [24] 1754 	mov	dpl,#0x00
      003703 22               [24] 1755 	ret
      003704                       1756 00127$:
                                   1757 ;	8051_i2c_eeprom.c:326: return data;
      003704 8F 82            [24] 1758 	mov	dpl,r7
                                   1759 ;	8051_i2c_eeprom.c:328: }
      003706 22               [24] 1760 	ret
                                   1761 ;------------------------------------------------------------
                                   1762 ;Allocation info for local variables in function 'eeprom_write'
                                   1763 ;------------------------------------------------------------
                                   1764 ;data                      Allocated with name '_eeprom_write_PARM_2'
                                   1765 ;address                   Allocated with name '_eeprom_write_address_65536_90'
                                   1766 ;i                         Allocated with name '_eeprom_write_i_131072_95'
                                   1767 ;------------------------------------------------------------
                                   1768 ;	8051_i2c_eeprom.c:344: int eeprom_write(unsigned int address, unsigned char data) 
                                   1769 ;	-----------------------------------------
                                   1770 ;	 function eeprom_write
                                   1771 ;	-----------------------------------------
      003707                       1772 _eeprom_write:
      003707 AF 83            [24] 1773 	mov	r7,dph
      003709 E5 82            [12] 1774 	mov	a,dpl
      00370B 90 04 10         [24] 1775 	mov	dptr,#_eeprom_write_address_65536_90
      00370E F0               [24] 1776 	movx	@dptr,a
      00370F EF               [12] 1777 	mov	a,r7
      003710 A3               [24] 1778 	inc	dptr
      003711 F0               [24] 1779 	movx	@dptr,a
                                   1780 ;	8051_i2c_eeprom.c:347: i2c_start();
      003712 12 3A 4A         [24] 1781 	lcall	_i2c_start
                                   1782 ;	8051_i2c_eeprom.c:350: if(!i2c_write(EEPROM_ID | block | WRITE)) {
      003715 90 04 5B         [24] 1783 	mov	dptr,#_block
      003718 E0               [24] 1784 	movx	a,@dptr
      003719 FE               [12] 1785 	mov	r6,a
      00371A A3               [24] 1786 	inc	dptr
      00371B E0               [24] 1787 	movx	a,@dptr
      00371C 43 06 A0         [24] 1788 	orl	ar6,#0xa0
      00371F 8E 82            [24] 1789 	mov	dpl,r6
      003721 12 39 5D         [24] 1790 	lcall	_i2c_write
      003724 E5 82            [12] 1791 	mov	a,dpl
      003726 85 83 F0         [24] 1792 	mov	b,dph
      003729 45 F0            [12] 1793 	orl	a,b
      00372B 70 1C            [24] 1794 	jnz	00102$
                                   1795 ;	8051_i2c_eeprom.c:351: printf("Error: No ACK for device address (write)\n\r");
      00372D 74 D9            [12] 1796 	mov	a,#___str_32
      00372F C0 E0            [24] 1797 	push	acc
      003731 74 53            [12] 1798 	mov	a,#(___str_32 >> 8)
      003733 C0 E0            [24] 1799 	push	acc
      003735 74 80            [12] 1800 	mov	a,#0x80
      003737 C0 E0            [24] 1801 	push	acc
      003739 12 3F A8         [24] 1802 	lcall	_printf
      00373C 15 81            [12] 1803 	dec	sp
      00373E 15 81            [12] 1804 	dec	sp
      003740 15 81            [12] 1805 	dec	sp
                                   1806 ;	8051_i2c_eeprom.c:352: i2c_stop();
      003742 12 3D 49         [24] 1807 	lcall	_i2c_stop
                                   1808 ;	8051_i2c_eeprom.c:353: return 0;
      003745 90 00 00         [24] 1809 	mov	dptr,#0x0000
      003748 22               [24] 1810 	ret
      003749                       1811 00102$:
                                   1812 ;	8051_i2c_eeprom.c:357: if(!i2c_write((unsigned char)address)) {
      003749 90 04 10         [24] 1813 	mov	dptr,#_eeprom_write_address_65536_90
      00374C E0               [24] 1814 	movx	a,@dptr
      00374D FE               [12] 1815 	mov	r6,a
      00374E A3               [24] 1816 	inc	dptr
      00374F E0               [24] 1817 	movx	a,@dptr
      003750 FF               [12] 1818 	mov	r7,a
      003751 8E 05            [24] 1819 	mov	ar5,r6
      003753 8D 82            [24] 1820 	mov	dpl,r5
      003755 C0 07            [24] 1821 	push	ar7
      003757 C0 06            [24] 1822 	push	ar6
      003759 12 39 5D         [24] 1823 	lcall	_i2c_write
      00375C E5 82            [12] 1824 	mov	a,dpl
      00375E 85 83 F0         [24] 1825 	mov	b,dph
      003761 D0 06            [24] 1826 	pop	ar6
      003763 D0 07            [24] 1827 	pop	ar7
      003765 45 F0            [12] 1828 	orl	a,b
      003767 70 1C            [24] 1829 	jnz	00104$
                                   1830 ;	8051_i2c_eeprom.c:358: printf("Error: No ACK for memory address\n\r");
      003769 74 04            [12] 1831 	mov	a,#___str_33
      00376B C0 E0            [24] 1832 	push	acc
      00376D 74 54            [12] 1833 	mov	a,#(___str_33 >> 8)
      00376F C0 E0            [24] 1834 	push	acc
      003771 74 80            [12] 1835 	mov	a,#0x80
      003773 C0 E0            [24] 1836 	push	acc
      003775 12 3F A8         [24] 1837 	lcall	_printf
      003778 15 81            [12] 1838 	dec	sp
      00377A 15 81            [12] 1839 	dec	sp
      00377C 15 81            [12] 1840 	dec	sp
                                   1841 ;	8051_i2c_eeprom.c:359: i2c_stop();
      00377E 12 3D 49         [24] 1842 	lcall	_i2c_stop
                                   1843 ;	8051_i2c_eeprom.c:360: return 0;
      003781 90 00 00         [24] 1844 	mov	dptr,#0x0000
      003784 22               [24] 1845 	ret
      003785                       1846 00104$:
                                   1847 ;	8051_i2c_eeprom.c:364: if(!i2c_write(data)) {
      003785 90 04 0F         [24] 1848 	mov	dptr,#_eeprom_write_PARM_2
      003788 E0               [24] 1849 	movx	a,@dptr
      003789 FD               [12] 1850 	mov	r5,a
      00378A F5 82            [12] 1851 	mov	dpl,a
      00378C C0 07            [24] 1852 	push	ar7
      00378E C0 06            [24] 1853 	push	ar6
      003790 C0 05            [24] 1854 	push	ar5
      003792 12 39 5D         [24] 1855 	lcall	_i2c_write
      003795 E5 82            [12] 1856 	mov	a,dpl
      003797 85 83 F0         [24] 1857 	mov	b,dph
      00379A D0 05            [24] 1858 	pop	ar5
      00379C D0 06            [24] 1859 	pop	ar6
      00379E D0 07            [24] 1860 	pop	ar7
      0037A0 45 F0            [12] 1861 	orl	a,b
      0037A2 70 1C            [24] 1862 	jnz	00106$
                                   1863 ;	8051_i2c_eeprom.c:365: printf("Error: No ACK for data\n\r");
      0037A4 74 27            [12] 1864 	mov	a,#___str_34
      0037A6 C0 E0            [24] 1865 	push	acc
      0037A8 74 54            [12] 1866 	mov	a,#(___str_34 >> 8)
      0037AA C0 E0            [24] 1867 	push	acc
      0037AC 74 80            [12] 1868 	mov	a,#0x80
      0037AE C0 E0            [24] 1869 	push	acc
      0037B0 12 3F A8         [24] 1870 	lcall	_printf
      0037B3 15 81            [12] 1871 	dec	sp
      0037B5 15 81            [12] 1872 	dec	sp
      0037B7 15 81            [12] 1873 	dec	sp
                                   1874 ;	8051_i2c_eeprom.c:366: i2c_stop();
      0037B9 12 3D 49         [24] 1875 	lcall	_i2c_stop
                                   1876 ;	8051_i2c_eeprom.c:367: return 0;
      0037BC 90 00 00         [24] 1877 	mov	dptr,#0x0000
      0037BF 22               [24] 1878 	ret
      0037C0                       1879 00106$:
                                   1880 ;	8051_i2c_eeprom.c:370: i2c_stop();
      0037C0 C0 07            [24] 1881 	push	ar7
      0037C2 C0 06            [24] 1882 	push	ar6
      0037C4 C0 05            [24] 1883 	push	ar5
      0037C6 12 3D 49         [24] 1884 	lcall	_i2c_stop
      0037C9 D0 05            [24] 1885 	pop	ar5
      0037CB D0 06            [24] 1886 	pop	ar6
      0037CD D0 07            [24] 1887 	pop	ar7
                                   1888 ;	8051_i2c_eeprom.c:372: for(int i = 0; i<10; i++)
      0037CF 7B 00            [12] 1889 	mov	r3,#0x00
      0037D1 7C 00            [12] 1890 	mov	r4,#0x00
      0037D3                       1891 00109$:
      0037D3 C3               [12] 1892 	clr	c
      0037D4 EB               [12] 1893 	mov	a,r3
      0037D5 94 0A            [12] 1894 	subb	a,#0x0a
      0037D7 EC               [12] 1895 	mov	a,r4
      0037D8 64 80            [12] 1896 	xrl	a,#0x80
      0037DA 94 80            [12] 1897 	subb	a,#0x80
      0037DC 50 1E            [24] 1898 	jnc	00107$
                                   1899 ;	8051_i2c_eeprom.c:374: i2c_delay();
      0037DE C0 07            [24] 1900 	push	ar7
      0037E0 C0 06            [24] 1901 	push	ar6
      0037E2 C0 05            [24] 1902 	push	ar5
      0037E4 C0 04            [24] 1903 	push	ar4
      0037E6 C0 03            [24] 1904 	push	ar3
      0037E8 12 3D 82         [24] 1905 	lcall	_i2c_delay
      0037EB D0 03            [24] 1906 	pop	ar3
      0037ED D0 04            [24] 1907 	pop	ar4
      0037EF D0 05            [24] 1908 	pop	ar5
      0037F1 D0 06            [24] 1909 	pop	ar6
      0037F3 D0 07            [24] 1910 	pop	ar7
                                   1911 ;	8051_i2c_eeprom.c:372: for(int i = 0; i<10; i++)
      0037F5 0B               [12] 1912 	inc	r3
      0037F6 BB 00 DA         [24] 1913 	cjne	r3,#0x00,00109$
      0037F9 0C               [12] 1914 	inc	r4
      0037FA 80 D7            [24] 1915 	sjmp	00109$
      0037FC                       1916 00107$:
                                   1917 ;	8051_i2c_eeprom.c:377: printf("| Writing at Address 0x%03X Data 0x%02X          |\n\r", address, data);
      0037FC 7C 00            [12] 1918 	mov	r4,#0x00
      0037FE C0 05            [24] 1919 	push	ar5
      003800 C0 04            [24] 1920 	push	ar4
      003802 C0 06            [24] 1921 	push	ar6
      003804 C0 07            [24] 1922 	push	ar7
      003806 74 40            [12] 1923 	mov	a,#___str_35
      003808 C0 E0            [24] 1924 	push	acc
      00380A 74 54            [12] 1925 	mov	a,#(___str_35 >> 8)
      00380C C0 E0            [24] 1926 	push	acc
      00380E 74 80            [12] 1927 	mov	a,#0x80
      003810 C0 E0            [24] 1928 	push	acc
      003812 12 3F A8         [24] 1929 	lcall	_printf
      003815 E5 81            [12] 1930 	mov	a,sp
      003817 24 F9            [12] 1931 	add	a,#0xf9
      003819 F5 81            [12] 1932 	mov	sp,a
                                   1933 ;	8051_i2c_eeprom.c:378: printf("│ Write successful!                             │\n\r");
      00381B 74 75            [12] 1934 	mov	a,#___str_36
      00381D C0 E0            [24] 1935 	push	acc
      00381F 74 54            [12] 1936 	mov	a,#(___str_36 >> 8)
      003821 C0 E0            [24] 1937 	push	acc
      003823 74 80            [12] 1938 	mov	a,#0x80
      003825 C0 E0            [24] 1939 	push	acc
      003827 12 3F A8         [24] 1940 	lcall	_printf
      00382A 15 81            [12] 1941 	dec	sp
      00382C 15 81            [12] 1942 	dec	sp
      00382E 15 81            [12] 1943 	dec	sp
                                   1944 ;	8051_i2c_eeprom.c:379: printf("└───────────────────────────────────────────────┘\n\r");
      003830 74 AD            [12] 1945 	mov	a,#___str_37
      003832 C0 E0            [24] 1946 	push	acc
      003834 74 54            [12] 1947 	mov	a,#(___str_37 >> 8)
      003836 C0 E0            [24] 1948 	push	acc
      003838 74 80            [12] 1949 	mov	a,#0x80
      00383A C0 E0            [24] 1950 	push	acc
      00383C 12 3F A8         [24] 1951 	lcall	_printf
      00383F 15 81            [12] 1952 	dec	sp
      003841 15 81            [12] 1953 	dec	sp
      003843 15 81            [12] 1954 	dec	sp
                                   1955 ;	8051_i2c_eeprom.c:380: return 1;  // Success
      003845 90 00 01         [24] 1956 	mov	dptr,#0x0001
                                   1957 ;	8051_i2c_eeprom.c:390: }
      003848 22               [24] 1958 	ret
                                   1959 ;------------------------------------------------------------
                                   1960 ;Allocation info for local variables in function 'eeprom_read'
                                   1961 ;------------------------------------------------------------
                                   1962 ;address                   Allocated with name '_eeprom_read_address_65536_97'
                                   1963 ;result                    Allocated with name '_eeprom_read_result_65536_98'
                                   1964 ;------------------------------------------------------------
                                   1965 ;	8051_i2c_eeprom.c:406: int eeprom_read(unsigned int address)
                                   1966 ;	-----------------------------------------
                                   1967 ;	 function eeprom_read
                                   1968 ;	-----------------------------------------
      003849                       1969 _eeprom_read:
      003849 AF 83            [24] 1970 	mov	r7,dph
      00384B E5 82            [12] 1971 	mov	a,dpl
      00384D 90 04 12         [24] 1972 	mov	dptr,#_eeprom_read_address_65536_97
      003850 F0               [24] 1973 	movx	@dptr,a
      003851 EF               [12] 1974 	mov	a,r7
      003852 A3               [24] 1975 	inc	dptr
      003853 F0               [24] 1976 	movx	@dptr,a
                                   1977 ;	8051_i2c_eeprom.c:412: i2c_start();
      003854 12 3A 4A         [24] 1978 	lcall	_i2c_start
                                   1979 ;	8051_i2c_eeprom.c:415: if(!i2c_write(EEPROM_ID | WRITE)) {
      003857 75 82 A0         [24] 1980 	mov	dpl,#0xa0
      00385A 12 39 5D         [24] 1981 	lcall	_i2c_write
      00385D E5 82            [12] 1982 	mov	a,dpl
      00385F 85 83 F0         [24] 1983 	mov	b,dph
      003862 45 F0            [12] 1984 	orl	a,b
      003864 70 1C            [24] 1985 	jnz	00102$
                                   1986 ;	8051_i2c_eeprom.c:416: printf("Error: No ACK for device address (write mode)\n\r");
      003866 74 43            [12] 1987 	mov	a,#___str_38
      003868 C0 E0            [24] 1988 	push	acc
      00386A 74 55            [12] 1989 	mov	a,#(___str_38 >> 8)
      00386C C0 E0            [24] 1990 	push	acc
      00386E 74 80            [12] 1991 	mov	a,#0x80
      003870 C0 E0            [24] 1992 	push	acc
      003872 12 3F A8         [24] 1993 	lcall	_printf
      003875 15 81            [12] 1994 	dec	sp
      003877 15 81            [12] 1995 	dec	sp
      003879 15 81            [12] 1996 	dec	sp
                                   1997 ;	8051_i2c_eeprom.c:417: i2c_stop();
      00387B 12 3D 49         [24] 1998 	lcall	_i2c_stop
                                   1999 ;	8051_i2c_eeprom.c:418: return -1;
      00387E 90 FF FF         [24] 2000 	mov	dptr,#0xffff
      003881 22               [24] 2001 	ret
      003882                       2002 00102$:
                                   2003 ;	8051_i2c_eeprom.c:422: if(!i2c_write((unsigned char)address)) {
      003882 90 04 12         [24] 2004 	mov	dptr,#_eeprom_read_address_65536_97
      003885 E0               [24] 2005 	movx	a,@dptr
      003886 FE               [12] 2006 	mov	r6,a
      003887 A3               [24] 2007 	inc	dptr
      003888 E0               [24] 2008 	movx	a,@dptr
      003889 FF               [12] 2009 	mov	r7,a
      00388A 8E 05            [24] 2010 	mov	ar5,r6
      00388C 8D 82            [24] 2011 	mov	dpl,r5
      00388E C0 07            [24] 2012 	push	ar7
      003890 C0 06            [24] 2013 	push	ar6
      003892 12 39 5D         [24] 2014 	lcall	_i2c_write
      003895 E5 82            [12] 2015 	mov	a,dpl
      003897 85 83 F0         [24] 2016 	mov	b,dph
      00389A D0 06            [24] 2017 	pop	ar6
      00389C D0 07            [24] 2018 	pop	ar7
      00389E 45 F0            [12] 2019 	orl	a,b
      0038A0 70 1C            [24] 2020 	jnz	00104$
                                   2021 ;	8051_i2c_eeprom.c:423: printf("Error: No ACK for memory address\n\r");
      0038A2 74 04            [12] 2022 	mov	a,#___str_33
      0038A4 C0 E0            [24] 2023 	push	acc
      0038A6 74 54            [12] 2024 	mov	a,#(___str_33 >> 8)
      0038A8 C0 E0            [24] 2025 	push	acc
      0038AA 74 80            [12] 2026 	mov	a,#0x80
      0038AC C0 E0            [24] 2027 	push	acc
      0038AE 12 3F A8         [24] 2028 	lcall	_printf
      0038B1 15 81            [12] 2029 	dec	sp
      0038B3 15 81            [12] 2030 	dec	sp
      0038B5 15 81            [12] 2031 	dec	sp
                                   2032 ;	8051_i2c_eeprom.c:424: i2c_stop();
      0038B7 12 3D 49         [24] 2033 	lcall	_i2c_stop
                                   2034 ;	8051_i2c_eeprom.c:425: return -1;
      0038BA 90 FF FF         [24] 2035 	mov	dptr,#0xffff
      0038BD 22               [24] 2036 	ret
      0038BE                       2037 00104$:
                                   2038 ;	8051_i2c_eeprom.c:429: i2c_start();
      0038BE C0 07            [24] 2039 	push	ar7
      0038C0 C0 06            [24] 2040 	push	ar6
      0038C2 12 3A 4A         [24] 2041 	lcall	_i2c_start
                                   2042 ;	8051_i2c_eeprom.c:432: if(!i2c_write(EEPROM_ID | READ)) {
      0038C5 75 82 A1         [24] 2043 	mov	dpl,#0xa1
      0038C8 12 39 5D         [24] 2044 	lcall	_i2c_write
      0038CB E5 82            [12] 2045 	mov	a,dpl
      0038CD 85 83 F0         [24] 2046 	mov	b,dph
      0038D0 D0 06            [24] 2047 	pop	ar6
      0038D2 D0 07            [24] 2048 	pop	ar7
      0038D4 45 F0            [12] 2049 	orl	a,b
      0038D6 70 1C            [24] 2050 	jnz	00106$
                                   2051 ;	8051_i2c_eeprom.c:433: printf("Error: No ACK for device address (read mode)\n\r");
      0038D8 74 73            [12] 2052 	mov	a,#___str_39
      0038DA C0 E0            [24] 2053 	push	acc
      0038DC 74 55            [12] 2054 	mov	a,#(___str_39 >> 8)
      0038DE C0 E0            [24] 2055 	push	acc
      0038E0 74 80            [12] 2056 	mov	a,#0x80
      0038E2 C0 E0            [24] 2057 	push	acc
      0038E4 12 3F A8         [24] 2058 	lcall	_printf
      0038E7 15 81            [12] 2059 	dec	sp
      0038E9 15 81            [12] 2060 	dec	sp
      0038EB 15 81            [12] 2061 	dec	sp
                                   2062 ;	8051_i2c_eeprom.c:434: i2c_stop();
      0038ED 12 3D 49         [24] 2063 	lcall	_i2c_stop
                                   2064 ;	8051_i2c_eeprom.c:435: return -1;
      0038F0 90 FF FF         [24] 2065 	mov	dptr,#0xffff
      0038F3 22               [24] 2066 	ret
      0038F4                       2067 00106$:
                                   2068 ;	8051_i2c_eeprom.c:439: result = i2c_read(0);  // 0 means send NACK
      0038F4 90 00 00         [24] 2069 	mov	dptr,#0x0000
      0038F7 C0 07            [24] 2070 	push	ar7
      0038F9 C0 06            [24] 2071 	push	ar6
      0038FB 12 39 C5         [24] 2072 	lcall	_i2c_read
      0038FE AC 82            [24] 2073 	mov	r4,dpl
      003900 D0 06            [24] 2074 	pop	ar6
      003902 D0 07            [24] 2075 	pop	ar7
                                   2076 ;	8051_i2c_eeprom.c:441: printf("| 0x%03X : 0x%02X \n\r", address, result);
      003904 7D 00            [12] 2077 	mov	r5,#0x00
      003906 C0 05            [24] 2078 	push	ar5
      003908 C0 04            [24] 2079 	push	ar4
      00390A C0 04            [24] 2080 	push	ar4
      00390C C0 05            [24] 2081 	push	ar5
      00390E C0 06            [24] 2082 	push	ar6
      003910 C0 07            [24] 2083 	push	ar7
      003912 74 A2            [12] 2084 	mov	a,#___str_40
      003914 C0 E0            [24] 2085 	push	acc
      003916 74 55            [12] 2086 	mov	a,#(___str_40 >> 8)
      003918 C0 E0            [24] 2087 	push	acc
      00391A 74 80            [12] 2088 	mov	a,#0x80
      00391C C0 E0            [24] 2089 	push	acc
      00391E 12 3F A8         [24] 2090 	lcall	_printf
      003921 E5 81            [12] 2091 	mov	a,sp
      003923 24 F9            [12] 2092 	add	a,#0xf9
      003925 F5 81            [12] 2093 	mov	sp,a
                                   2094 ;	8051_i2c_eeprom.c:442: printf("│ Read successful!                 │\n\r");
      003927 74 B7            [12] 2095 	mov	a,#___str_41
      003929 C0 E0            [24] 2096 	push	acc
      00392B 74 55            [12] 2097 	mov	a,#(___str_41 >> 8)
      00392D C0 E0            [24] 2098 	push	acc
      00392F 74 80            [12] 2099 	mov	a,#0x80
      003931 C0 E0            [24] 2100 	push	acc
      003933 12 3F A8         [24] 2101 	lcall	_printf
      003936 15 81            [12] 2102 	dec	sp
      003938 15 81            [12] 2103 	dec	sp
      00393A 15 81            [12] 2104 	dec	sp
                                   2105 ;	8051_i2c_eeprom.c:443: printf("└───────────────────────────────────────────────┘\n\r");
      00393C 74 AD            [12] 2106 	mov	a,#___str_37
      00393E C0 E0            [24] 2107 	push	acc
      003940 74 54            [12] 2108 	mov	a,#(___str_37 >> 8)
      003942 C0 E0            [24] 2109 	push	acc
      003944 74 80            [12] 2110 	mov	a,#0x80
      003946 C0 E0            [24] 2111 	push	acc
      003948 12 3F A8         [24] 2112 	lcall	_printf
      00394B 15 81            [12] 2113 	dec	sp
      00394D 15 81            [12] 2114 	dec	sp
      00394F 15 81            [12] 2115 	dec	sp
                                   2116 ;	8051_i2c_eeprom.c:444: i2c_stop();
      003951 12 3D 49         [24] 2117 	lcall	_i2c_stop
      003954 D0 04            [24] 2118 	pop	ar4
      003956 D0 05            [24] 2119 	pop	ar5
                                   2120 ;	8051_i2c_eeprom.c:445: return result;
      003958 8C 82            [24] 2121 	mov	dpl,r4
      00395A 8D 83            [24] 2122 	mov	dph,r5
                                   2123 ;	8051_i2c_eeprom.c:446: }
      00395C 22               [24] 2124 	ret
                                   2125 ;------------------------------------------------------------
                                   2126 ;Allocation info for local variables in function 'i2c_write'
                                   2127 ;------------------------------------------------------------
                                   2128 ;data                      Allocated with name '_i2c_write_data_65536_102'
                                   2129 ;i                         Allocated with name '_i2c_write_i_65536_103'
                                   2130 ;------------------------------------------------------------
                                   2131 ;	8051_i2c_eeprom.c:457: int i2c_write(unsigned char data)
                                   2132 ;	-----------------------------------------
                                   2133 ;	 function i2c_write
                                   2134 ;	-----------------------------------------
      00395D                       2135 _i2c_write:
      00395D E5 82            [12] 2136 	mov	a,dpl
      00395F 90 04 14         [24] 2137 	mov	dptr,#_i2c_write_data_65536_102
      003962 F0               [24] 2138 	movx	@dptr,a
                                   2139 ;	8051_i2c_eeprom.c:461: for(i=0;i<=7;i++)
      003963 7E 00            [12] 2140 	mov	r6,#0x00
      003965 7F 00            [12] 2141 	mov	r7,#0x00
      003967                       2142 00104$:
                                   2143 ;	8051_i2c_eeprom.c:463: SDA = (data & 0x80) ? 1 : 0;    //msb first
      003967 90 04 14         [24] 2144 	mov	dptr,#_i2c_write_data_65536_102
      00396A E0               [24] 2145 	movx	a,@dptr
      00396B FD               [12] 2146 	mov	r5,a
      00396C 23               [12] 2147 	rl	a
      00396D 54 01            [12] 2148 	anl	a,#0x01
      00396F 24 FF            [12] 2149 	add	a,#0xff
      003971 92 94            [24] 2150 	mov	_P1_4,c
                                   2151 ;	8051_i2c_eeprom.c:464: i2c_delay();        // Setup time for data
      003973 C0 07            [24] 2152 	push	ar7
      003975 C0 06            [24] 2153 	push	ar6
      003977 C0 05            [24] 2154 	push	ar5
      003979 12 3D 82         [24] 2155 	lcall	_i2c_delay
                                   2156 ;	8051_i2c_eeprom.c:465: SCL=1;
                                   2157 ;	assignBit
      00397C D2 93            [12] 2158 	setb	_P1_3
                                   2159 ;	8051_i2c_eeprom.c:466: i2c_delay();        // Hold time for clock
      00397E 12 3D 82         [24] 2160 	lcall	_i2c_delay
      003981 D0 05            [24] 2161 	pop	ar5
      003983 D0 06            [24] 2162 	pop	ar6
      003985 D0 07            [24] 2163 	pop	ar7
                                   2164 ;	8051_i2c_eeprom.c:467: SCL=0;
                                   2165 ;	assignBit
      003987 C2 93            [12] 2166 	clr	_P1_3
                                   2167 ;	8051_i2c_eeprom.c:468: data = data << 1;
      003989 ED               [12] 2168 	mov	a,r5
      00398A 2D               [12] 2169 	add	a,r5
      00398B 90 04 14         [24] 2170 	mov	dptr,#_i2c_write_data_65536_102
      00398E F0               [24] 2171 	movx	@dptr,a
                                   2172 ;	8051_i2c_eeprom.c:461: for(i=0;i<=7;i++)
      00398F 0E               [12] 2173 	inc	r6
      003990 BE 00 01         [24] 2174 	cjne	r6,#0x00,00121$
      003993 0F               [12] 2175 	inc	r7
      003994                       2176 00121$:
      003994 C3               [12] 2177 	clr	c
      003995 74 07            [12] 2178 	mov	a,#0x07
      003997 9E               [12] 2179 	subb	a,r6
      003998 E4               [12] 2180 	clr	a
      003999 9F               [12] 2181 	subb	a,r7
      00399A 50 CB            [24] 2182 	jnc	00104$
                                   2183 ;	8051_i2c_eeprom.c:472: SDA = 1;            // Release SDA for slave
                                   2184 ;	assignBit
      00399C D2 94            [12] 2185 	setb	_P1_4
                                   2186 ;	8051_i2c_eeprom.c:473: SCL = 1;            // 9th clock pulse for ACK
                                   2187 ;	assignBit
      00399E D2 93            [12] 2188 	setb	_P1_3
                                   2189 ;	8051_i2c_eeprom.c:474: i2c_delay();
      0039A0 12 3D 82         [24] 2190 	lcall	_i2c_delay
                                   2191 ;	8051_i2c_eeprom.c:475: if(SDA == 1)        // If SDA is still high, no ACK received
      0039A3 30 94 19         [24] 2192 	jnb	_P1_4,00103$
                                   2193 ;	8051_i2c_eeprom.c:478: printf("ACK DID NOT ARRIVE\n\r");
      0039A6 74 E2            [12] 2194 	mov	a,#___str_42
      0039A8 C0 E0            [24] 2195 	push	acc
      0039AA 74 55            [12] 2196 	mov	a,#(___str_42 >> 8)
      0039AC C0 E0            [24] 2197 	push	acc
      0039AE 74 80            [12] 2198 	mov	a,#0x80
      0039B0 C0 E0            [24] 2199 	push	acc
      0039B2 12 3F A8         [24] 2200 	lcall	_printf
      0039B5 15 81            [12] 2201 	dec	sp
      0039B7 15 81            [12] 2202 	dec	sp
      0039B9 15 81            [12] 2203 	dec	sp
                                   2204 ;	8051_i2c_eeprom.c:479: return 0;       // Error
      0039BB 90 00 00         [24] 2205 	mov	dptr,#0x0000
      0039BE 22               [24] 2206 	ret
      0039BF                       2207 00103$:
                                   2208 ;	8051_i2c_eeprom.c:481: SCL = 0;
                                   2209 ;	assignBit
      0039BF C2 93            [12] 2210 	clr	_P1_3
                                   2211 ;	8051_i2c_eeprom.c:483: return 1;           // Success
      0039C1 90 00 01         [24] 2212 	mov	dptr,#0x0001
                                   2213 ;	8051_i2c_eeprom.c:485: }
      0039C4 22               [24] 2214 	ret
                                   2215 ;------------------------------------------------------------
                                   2216 ;Allocation info for local variables in function 'i2c_read'
                                   2217 ;------------------------------------------------------------
                                   2218 ;ACK                       Allocated with name '_i2c_read_ACK_65536_107'
                                   2219 ;buff                      Allocated with name '_i2c_read_buff_65536_108'
                                   2220 ;i                         Allocated with name '_i2c_read_i_131072_109'
                                   2221 ;------------------------------------------------------------
                                   2222 ;	8051_i2c_eeprom.c:495: int i2c_read(int ACK)
                                   2223 ;	-----------------------------------------
                                   2224 ;	 function i2c_read
                                   2225 ;	-----------------------------------------
      0039C5                       2226 _i2c_read:
      0039C5 AF 83            [24] 2227 	mov	r7,dph
      0039C7 E5 82            [12] 2228 	mov	a,dpl
      0039C9 90 04 15         [24] 2229 	mov	dptr,#_i2c_read_ACK_65536_107
      0039CC F0               [24] 2230 	movx	@dptr,a
      0039CD EF               [12] 2231 	mov	a,r7
      0039CE A3               [24] 2232 	inc	dptr
      0039CF F0               [24] 2233 	movx	@dptr,a
                                   2234 ;	8051_i2c_eeprom.c:497: unsigned char buff=0;
      0039D0 90 04 17         [24] 2235 	mov	dptr,#_i2c_read_buff_65536_108
      0039D3 E4               [12] 2236 	clr	a
      0039D4 F0               [24] 2237 	movx	@dptr,a
                                   2238 ;	8051_i2c_eeprom.c:498: SCL = 0;
                                   2239 ;	assignBit
      0039D5 C2 93            [12] 2240 	clr	_P1_3
                                   2241 ;	8051_i2c_eeprom.c:499: for(int i=0;i<8;i++)
      0039D7 7E 00            [12] 2242 	mov	r6,#0x00
      0039D9 7F 00            [12] 2243 	mov	r7,#0x00
      0039DB                       2244 00103$:
      0039DB C3               [12] 2245 	clr	c
      0039DC EE               [12] 2246 	mov	a,r6
      0039DD 94 08            [12] 2247 	subb	a,#0x08
      0039DF EF               [12] 2248 	mov	a,r7
      0039E0 64 80            [12] 2249 	xrl	a,#0x80
      0039E2 94 80            [12] 2250 	subb	a,#0x80
      0039E4 50 40            [24] 2251 	jnc	00101$
                                   2252 ;	8051_i2c_eeprom.c:501: SCL = 1;
                                   2253 ;	assignBit
      0039E6 D2 93            [12] 2254 	setb	_P1_3
                                   2255 ;	8051_i2c_eeprom.c:502: i2c_delay();
      0039E8 C0 07            [24] 2256 	push	ar7
      0039EA C0 06            [24] 2257 	push	ar6
      0039EC 12 3D 82         [24] 2258 	lcall	_i2c_delay
      0039EF D0 06            [24] 2259 	pop	ar6
      0039F1 D0 07            [24] 2260 	pop	ar7
                                   2261 ;	8051_i2c_eeprom.c:503: buff |= (SDA << (7 - i));
      0039F3 A2 94            [12] 2262 	mov	c,_P1_4
      0039F5 E4               [12] 2263 	clr	a
      0039F6 33               [12] 2264 	rlc	a
      0039F7 FD               [12] 2265 	mov	r5,a
      0039F8 8E 04            [24] 2266 	mov	ar4,r6
      0039FA 74 07            [12] 2267 	mov	a,#0x07
      0039FC C3               [12] 2268 	clr	c
      0039FD 9C               [12] 2269 	subb	a,r4
      0039FE FC               [12] 2270 	mov	r4,a
      0039FF 8C F0            [24] 2271 	mov	b,r4
      003A01 05 F0            [12] 2272 	inc	b
      003A03 ED               [12] 2273 	mov	a,r5
      003A04 80 02            [24] 2274 	sjmp	00119$
      003A06                       2275 00117$:
      003A06 25 E0            [12] 2276 	add	a,acc
      003A08                       2277 00119$:
      003A08 D5 F0 FB         [24] 2278 	djnz	b,00117$
      003A0B FC               [12] 2279 	mov	r4,a
      003A0C 90 04 17         [24] 2280 	mov	dptr,#_i2c_read_buff_65536_108
      003A0F E0               [24] 2281 	movx	a,@dptr
      003A10 4C               [12] 2282 	orl	a,r4
      003A11 F0               [24] 2283 	movx	@dptr,a
                                   2284 ;	8051_i2c_eeprom.c:504: i2c_delay();
      003A12 C0 07            [24] 2285 	push	ar7
      003A14 C0 06            [24] 2286 	push	ar6
      003A16 12 3D 82         [24] 2287 	lcall	_i2c_delay
      003A19 D0 06            [24] 2288 	pop	ar6
      003A1B D0 07            [24] 2289 	pop	ar7
                                   2290 ;	8051_i2c_eeprom.c:505: SCL=0;
                                   2291 ;	assignBit
      003A1D C2 93            [12] 2292 	clr	_P1_3
                                   2293 ;	8051_i2c_eeprom.c:499: for(int i=0;i<8;i++)
      003A1F 0E               [12] 2294 	inc	r6
      003A20 BE 00 B8         [24] 2295 	cjne	r6,#0x00,00103$
      003A23 0F               [12] 2296 	inc	r7
      003A24 80 B5            [24] 2297 	sjmp	00103$
      003A26                       2298 00101$:
                                   2299 ;	8051_i2c_eeprom.c:509: SDA = !ACK;         // ACK = 0, NACK = 1
      003A26 90 04 15         [24] 2300 	mov	dptr,#_i2c_read_ACK_65536_107
      003A29 E0               [24] 2301 	movx	a,@dptr
      003A2A FE               [12] 2302 	mov	r6,a
      003A2B A3               [24] 2303 	inc	dptr
      003A2C E0               [24] 2304 	movx	a,@dptr
      003A2D 4E               [12] 2305 	orl	a,r6
      003A2E B4 01 00         [24] 2306 	cjne	a,#0x01,00121$
      003A31                       2307 00121$:
      003A31 E4               [12] 2308 	clr	a
      003A32 33               [12] 2309 	rlc	a
      003A33 24 FF            [12] 2310 	add	a,#0xff
      003A35 92 94            [24] 2311 	mov	_P1_4,c
                                   2312 ;	8051_i2c_eeprom.c:510: SCL = 1;
                                   2313 ;	assignBit
      003A37 D2 93            [12] 2314 	setb	_P1_3
                                   2315 ;	8051_i2c_eeprom.c:511: i2c_delay();
      003A39 12 3D 82         [24] 2316 	lcall	_i2c_delay
                                   2317 ;	8051_i2c_eeprom.c:512: SCL = 0;
                                   2318 ;	assignBit
      003A3C C2 93            [12] 2319 	clr	_P1_3
                                   2320 ;	8051_i2c_eeprom.c:514: return buff;
      003A3E 90 04 17         [24] 2321 	mov	dptr,#_i2c_read_buff_65536_108
      003A41 E0               [24] 2322 	movx	a,@dptr
      003A42 FF               [12] 2323 	mov	r7,a
      003A43 7E 00            [12] 2324 	mov	r6,#0x00
      003A45 8F 82            [24] 2325 	mov	dpl,r7
      003A47 8E 83            [24] 2326 	mov	dph,r6
                                   2327 ;	8051_i2c_eeprom.c:515: }
      003A49 22               [24] 2328 	ret
                                   2329 ;------------------------------------------------------------
                                   2330 ;Allocation info for local variables in function 'i2c_start'
                                   2331 ;------------------------------------------------------------
                                   2332 ;	8051_i2c_eeprom.c:522: void i2c_start(void)
                                   2333 ;	-----------------------------------------
                                   2334 ;	 function i2c_start
                                   2335 ;	-----------------------------------------
      003A4A                       2336 _i2c_start:
                                   2337 ;	8051_i2c_eeprom.c:524: i2c_delay();
      003A4A 12 3D 82         [24] 2338 	lcall	_i2c_delay
                                   2339 ;	8051_i2c_eeprom.c:525: SDA = 1;
                                   2340 ;	assignBit
      003A4D D2 94            [12] 2341 	setb	_P1_4
                                   2342 ;	8051_i2c_eeprom.c:526: i2c_delay();
      003A4F 12 3D 82         [24] 2343 	lcall	_i2c_delay
                                   2344 ;	8051_i2c_eeprom.c:527: SCL = 1;
                                   2345 ;	assignBit
      003A52 D2 93            [12] 2346 	setb	_P1_3
                                   2347 ;	8051_i2c_eeprom.c:528: i2c_delay();
      003A54 12 3D 82         [24] 2348 	lcall	_i2c_delay
                                   2349 ;	8051_i2c_eeprom.c:529: SDA = 0;
                                   2350 ;	assignBit
      003A57 C2 94            [12] 2351 	clr	_P1_4
                                   2352 ;	8051_i2c_eeprom.c:530: i2c_delay();
      003A59 12 3D 82         [24] 2353 	lcall	_i2c_delay
                                   2354 ;	8051_i2c_eeprom.c:531: SCL = 0;
                                   2355 ;	assignBit
      003A5C C2 93            [12] 2356 	clr	_P1_3
                                   2357 ;	8051_i2c_eeprom.c:532: }
      003A5E 22               [24] 2358 	ret
                                   2359 ;------------------------------------------------------------
                                   2360 ;Allocation info for local variables in function 'EEPROM_hexump'
                                   2361 ;------------------------------------------------------------
                                   2362 ;sloc0                     Allocated with name '_EEPROM_hexump_sloc0_1_0'
                                   2363 ;end_address               Allocated with name '_EEPROM_hexump_PARM_2'
                                   2364 ;start_address             Allocated with name '_EEPROM_hexump_start_address_65536_113'
                                   2365 ;address                   Allocated with name '_EEPROM_hexump_address_131072_115'
                                   2366 ;offset                    Allocated with name '_EEPROM_hexump_offset_262144_117'
                                   2367 ;current_address           Allocated with name '_EEPROM_hexump_current_address_327680_118'
                                   2368 ;result                    Allocated with name '_EEPROM_hexump_result_393216_119'
                                   2369 ;------------------------------------------------------------
                                   2370 ;	8051_i2c_eeprom.c:540: int EEPROM_hexump(uint16_t start_address, uint16_t end_address)
                                   2371 ;	-----------------------------------------
                                   2372 ;	 function EEPROM_hexump
                                   2373 ;	-----------------------------------------
      003A5F                       2374 _EEPROM_hexump:
      003A5F AF 83            [24] 2375 	mov	r7,dph
      003A61 E5 82            [12] 2376 	mov	a,dpl
      003A63 90 04 1A         [24] 2377 	mov	dptr,#_EEPROM_hexump_start_address_65536_113
      003A66 F0               [24] 2378 	movx	@dptr,a
      003A67 EF               [12] 2379 	mov	a,r7
      003A68 A3               [24] 2380 	inc	dptr
      003A69 F0               [24] 2381 	movx	@dptr,a
                                   2382 ;	8051_i2c_eeprom.c:564: printf("\r\n");
      003A6A 74 F7            [12] 2383 	mov	a,#___str_43
      003A6C C0 E0            [24] 2384 	push	acc
      003A6E 74 55            [12] 2385 	mov	a,#(___str_43 >> 8)
      003A70 C0 E0            [24] 2386 	push	acc
      003A72 74 80            [12] 2387 	mov	a,#0x80
      003A74 C0 E0            [24] 2388 	push	acc
      003A76 12 3F A8         [24] 2389 	lcall	_printf
      003A79 15 81            [12] 2390 	dec	sp
      003A7B 15 81            [12] 2391 	dec	sp
      003A7D 15 81            [12] 2392 	dec	sp
                                   2393 ;	8051_i2c_eeprom.c:565: printf("\r\n----------------------------------------------------------------");
      003A7F 74 FA            [12] 2394 	mov	a,#___str_44
      003A81 C0 E0            [24] 2395 	push	acc
      003A83 74 55            [12] 2396 	mov	a,#(___str_44 >> 8)
      003A85 C0 E0            [24] 2397 	push	acc
      003A87 74 80            [12] 2398 	mov	a,#0x80
      003A89 C0 E0            [24] 2399 	push	acc
      003A8B 12 3F A8         [24] 2400 	lcall	_printf
      003A8E 15 81            [12] 2401 	dec	sp
      003A90 15 81            [12] 2402 	dec	sp
      003A92 15 81            [12] 2403 	dec	sp
                                   2404 ;	8051_i2c_eeprom.c:566: printf("\r\n                    EEPROM Hex Dump                             ");
      003A94 74 3D            [12] 2405 	mov	a,#___str_45
      003A96 C0 E0            [24] 2406 	push	acc
      003A98 74 56            [12] 2407 	mov	a,#(___str_45 >> 8)
      003A9A C0 E0            [24] 2408 	push	acc
      003A9C 74 80            [12] 2409 	mov	a,#0x80
      003A9E C0 E0            [24] 2410 	push	acc
      003AA0 12 3F A8         [24] 2411 	lcall	_printf
      003AA3 15 81            [12] 2412 	dec	sp
      003AA5 15 81            [12] 2413 	dec	sp
      003AA7 15 81            [12] 2414 	dec	sp
                                   2415 ;	8051_i2c_eeprom.c:567: printf("\r\n----------------------------------------------------------------\r\n");
      003AA9 74 80            [12] 2416 	mov	a,#___str_46
      003AAB C0 E0            [24] 2417 	push	acc
      003AAD 74 56            [12] 2418 	mov	a,#(___str_46 >> 8)
      003AAF C0 E0            [24] 2419 	push	acc
      003AB1 74 80            [12] 2420 	mov	a,#0x80
      003AB3 C0 E0            [24] 2421 	push	acc
      003AB5 12 3F A8         [24] 2422 	lcall	_printf
      003AB8 15 81            [12] 2423 	dec	sp
      003ABA 15 81            [12] 2424 	dec	sp
      003ABC 15 81            [12] 2425 	dec	sp
                                   2426 ;	8051_i2c_eeprom.c:569: for (uint16_t address = start_address; address <= end_address; address += MAX_HEX_CHAR_IN_SINGLE_LINE) {
      003ABE 90 04 1A         [24] 2427 	mov	dptr,#_EEPROM_hexump_start_address_65536_113
      003AC1 E0               [24] 2428 	movx	a,@dptr
      003AC2 FE               [12] 2429 	mov	r6,a
      003AC3 A3               [24] 2430 	inc	dptr
      003AC4 E0               [24] 2431 	movx	a,@dptr
      003AC5 FF               [12] 2432 	mov	r7,a
      003AC6 90 04 1C         [24] 2433 	mov	dptr,#_EEPROM_hexump_address_131072_115
      003AC9 EE               [12] 2434 	mov	a,r6
      003ACA F0               [24] 2435 	movx	@dptr,a
      003ACB EF               [12] 2436 	mov	a,r7
      003ACC A3               [24] 2437 	inc	dptr
      003ACD F0               [24] 2438 	movx	@dptr,a
      003ACE 90 04 18         [24] 2439 	mov	dptr,#_EEPROM_hexump_PARM_2
      003AD1 E0               [24] 2440 	movx	a,@dptr
      003AD2 FE               [12] 2441 	mov	r6,a
      003AD3 A3               [24] 2442 	inc	dptr
      003AD4 E0               [24] 2443 	movx	a,@dptr
      003AD5 FF               [12] 2444 	mov	r7,a
      003AD6                       2445 00116$:
      003AD6 90 04 1C         [24] 2446 	mov	dptr,#_EEPROM_hexump_address_131072_115
      003AD9 E0               [24] 2447 	movx	a,@dptr
      003ADA FC               [12] 2448 	mov	r4,a
      003ADB A3               [24] 2449 	inc	dptr
      003ADC E0               [24] 2450 	movx	a,@dptr
      003ADD FD               [12] 2451 	mov	r5,a
      003ADE C3               [12] 2452 	clr	c
      003ADF EE               [12] 2453 	mov	a,r6
      003AE0 9C               [12] 2454 	subb	a,r4
      003AE1 EF               [12] 2455 	mov	a,r7
      003AE2 9D               [12] 2456 	subb	a,r5
      003AE3 50 03            [24] 2457 	jnc	00152$
      003AE5 02 3C 97         [24] 2458 	ljmp	00111$
      003AE8                       2459 00152$:
                                   2460 ;	8051_i2c_eeprom.c:571: printf("%03X: ", address);
      003AE8 C0 07            [24] 2461 	push	ar7
      003AEA C0 06            [24] 2462 	push	ar6
      003AEC C0 04            [24] 2463 	push	ar4
      003AEE C0 05            [24] 2464 	push	ar5
      003AF0 74 C5            [12] 2465 	mov	a,#___str_47
      003AF2 C0 E0            [24] 2466 	push	acc
      003AF4 74 56            [12] 2467 	mov	a,#(___str_47 >> 8)
      003AF6 C0 E0            [24] 2468 	push	acc
      003AF8 74 80            [12] 2469 	mov	a,#0x80
      003AFA C0 E0            [24] 2470 	push	acc
      003AFC 12 3F A8         [24] 2471 	lcall	_printf
      003AFF E5 81            [12] 2472 	mov	a,sp
      003B01 24 FB            [12] 2473 	add	a,#0xfb
      003B03 F5 81            [12] 2474 	mov	sp,a
      003B05 D0 06            [24] 2475 	pop	ar6
      003B07 D0 07            [24] 2476 	pop	ar7
                                   2477 ;	8051_i2c_eeprom.c:574: for (int offset = 0; offset < MAX_HEX_CHAR_IN_SINGLE_LINE; offset++) {
      003B09 7C 00            [12] 2478 	mov	r4,#0x00
      003B0B 7D 00            [12] 2479 	mov	r5,#0x00
      003B0D                       2480 00113$:
      003B0D C3               [12] 2481 	clr	c
      003B0E EC               [12] 2482 	mov	a,r4
      003B0F 94 10            [12] 2483 	subb	a,#0x10
      003B11 ED               [12] 2484 	mov	a,r5
      003B12 64 80            [12] 2485 	xrl	a,#0x80
      003B14 94 80            [12] 2486 	subb	a,#0x80
      003B16 40 03            [24] 2487 	jc	00153$
      003B18 02 3C 60         [24] 2488 	ljmp	00110$
      003B1B                       2489 00153$:
                                   2490 ;	8051_i2c_eeprom.c:575: uint16_t current_address = address + offset;
      003B1B 90 04 1C         [24] 2491 	mov	dptr,#_EEPROM_hexump_address_131072_115
      003B1E E0               [24] 2492 	movx	a,@dptr
      003B1F FA               [12] 2493 	mov	r2,a
      003B20 A3               [24] 2494 	inc	dptr
      003B21 E0               [24] 2495 	movx	a,@dptr
      003B22 FB               [12] 2496 	mov	r3,a
      003B23 8A 08            [24] 2497 	mov	_EEPROM_hexump_sloc0_1_0,r2
      003B25 8B 09            [24] 2498 	mov	(_EEPROM_hexump_sloc0_1_0 + 1),r3
      003B27 8C 00            [24] 2499 	mov	ar0,r4
      003B29 8D 01            [24] 2500 	mov	ar1,r5
      003B2B E8               [12] 2501 	mov	a,r0
      003B2C 25 08            [12] 2502 	add	a,_EEPROM_hexump_sloc0_1_0
      003B2E F8               [12] 2503 	mov	r0,a
      003B2F E9               [12] 2504 	mov	a,r1
      003B30 35 09            [12] 2505 	addc	a,(_EEPROM_hexump_sloc0_1_0 + 1)
      003B32 F9               [12] 2506 	mov	r1,a
                                   2507 ;	8051_i2c_eeprom.c:577: if (current_address <= end_address) {
      003B33 C3               [12] 2508 	clr	c
      003B34 EE               [12] 2509 	mov	a,r6
      003B35 98               [12] 2510 	subb	a,r0
      003B36 EF               [12] 2511 	mov	a,r7
      003B37 99               [12] 2512 	subb	a,r1
      003B38 50 03            [24] 2513 	jnc	00154$
      003B3A 02 3C 33         [24] 2514 	ljmp	00108$
      003B3D                       2515 00154$:
                                   2516 ;	8051_i2c_eeprom.c:583: i2c_start();
      003B3D C0 07            [24] 2517 	push	ar7
      003B3F C0 06            [24] 2518 	push	ar6
      003B41 C0 05            [24] 2519 	push	ar5
      003B43 C0 04            [24] 2520 	push	ar4
      003B45 C0 03            [24] 2521 	push	ar3
      003B47 C0 02            [24] 2522 	push	ar2
      003B49 12 3A 4A         [24] 2523 	lcall	_i2c_start
                                   2524 ;	8051_i2c_eeprom.c:586: if(!i2c_write(EEPROM_ID | WRITE)) {
      003B4C 75 82 A0         [24] 2525 	mov	dpl,#0xa0
      003B4F 12 39 5D         [24] 2526 	lcall	_i2c_write
      003B52 E5 82            [12] 2527 	mov	a,dpl
      003B54 85 83 F0         [24] 2528 	mov	b,dph
      003B57 D0 02            [24] 2529 	pop	ar2
      003B59 D0 03            [24] 2530 	pop	ar3
      003B5B D0 04            [24] 2531 	pop	ar4
      003B5D D0 05            [24] 2532 	pop	ar5
      003B5F D0 06            [24] 2533 	pop	ar6
      003B61 D0 07            [24] 2534 	pop	ar7
      003B63 45 F0            [12] 2535 	orl	a,b
      003B65 70 1C            [24] 2536 	jnz	00102$
                                   2537 ;	8051_i2c_eeprom.c:587: printf("Error: No ACK for device address (write mode)\n\r");
      003B67 74 43            [12] 2538 	mov	a,#___str_38
      003B69 C0 E0            [24] 2539 	push	acc
      003B6B 74 55            [12] 2540 	mov	a,#(___str_38 >> 8)
      003B6D C0 E0            [24] 2541 	push	acc
      003B6F 74 80            [12] 2542 	mov	a,#0x80
      003B71 C0 E0            [24] 2543 	push	acc
      003B73 12 3F A8         [24] 2544 	lcall	_printf
      003B76 15 81            [12] 2545 	dec	sp
      003B78 15 81            [12] 2546 	dec	sp
      003B7A 15 81            [12] 2547 	dec	sp
                                   2548 ;	8051_i2c_eeprom.c:588: i2c_stop();
      003B7C 12 3D 49         [24] 2549 	lcall	_i2c_stop
                                   2550 ;	8051_i2c_eeprom.c:589: return -1;
      003B7F 90 FF FF         [24] 2551 	mov	dptr,#0xffff
      003B82 22               [24] 2552 	ret
      003B83                       2553 00102$:
                                   2554 ;	8051_i2c_eeprom.c:593: if(!i2c_write((unsigned char)address)) {
      003B83 8A 82            [24] 2555 	mov	dpl,r2
      003B85 C0 07            [24] 2556 	push	ar7
      003B87 C0 06            [24] 2557 	push	ar6
      003B89 C0 05            [24] 2558 	push	ar5
      003B8B C0 04            [24] 2559 	push	ar4
      003B8D 12 39 5D         [24] 2560 	lcall	_i2c_write
      003B90 E5 82            [12] 2561 	mov	a,dpl
      003B92 85 83 F0         [24] 2562 	mov	b,dph
      003B95 D0 04            [24] 2563 	pop	ar4
      003B97 D0 05            [24] 2564 	pop	ar5
      003B99 D0 06            [24] 2565 	pop	ar6
      003B9B D0 07            [24] 2566 	pop	ar7
      003B9D 45 F0            [12] 2567 	orl	a,b
      003B9F 70 1C            [24] 2568 	jnz	00104$
                                   2569 ;	8051_i2c_eeprom.c:594: printf("Error: No ACK for memory address\n\r");
      003BA1 74 04            [12] 2570 	mov	a,#___str_33
      003BA3 C0 E0            [24] 2571 	push	acc
      003BA5 74 54            [12] 2572 	mov	a,#(___str_33 >> 8)
      003BA7 C0 E0            [24] 2573 	push	acc
      003BA9 74 80            [12] 2574 	mov	a,#0x80
      003BAB C0 E0            [24] 2575 	push	acc
      003BAD 12 3F A8         [24] 2576 	lcall	_printf
      003BB0 15 81            [12] 2577 	dec	sp
      003BB2 15 81            [12] 2578 	dec	sp
      003BB4 15 81            [12] 2579 	dec	sp
                                   2580 ;	8051_i2c_eeprom.c:595: i2c_stop();
      003BB6 12 3D 49         [24] 2581 	lcall	_i2c_stop
                                   2582 ;	8051_i2c_eeprom.c:596: return -1;
      003BB9 90 FF FF         [24] 2583 	mov	dptr,#0xffff
      003BBC 22               [24] 2584 	ret
      003BBD                       2585 00104$:
                                   2586 ;	8051_i2c_eeprom.c:600: i2c_start();
      003BBD C0 07            [24] 2587 	push	ar7
      003BBF C0 06            [24] 2588 	push	ar6
      003BC1 C0 05            [24] 2589 	push	ar5
      003BC3 C0 04            [24] 2590 	push	ar4
      003BC5 12 3A 4A         [24] 2591 	lcall	_i2c_start
                                   2592 ;	8051_i2c_eeprom.c:603: if(!i2c_write(EEPROM_ID | READ)) {
      003BC8 75 82 A1         [24] 2593 	mov	dpl,#0xa1
      003BCB 12 39 5D         [24] 2594 	lcall	_i2c_write
      003BCE E5 82            [12] 2595 	mov	a,dpl
      003BD0 85 83 F0         [24] 2596 	mov	b,dph
      003BD3 D0 04            [24] 2597 	pop	ar4
      003BD5 D0 05            [24] 2598 	pop	ar5
      003BD7 D0 06            [24] 2599 	pop	ar6
      003BD9 D0 07            [24] 2600 	pop	ar7
      003BDB 45 F0            [12] 2601 	orl	a,b
      003BDD 70 1C            [24] 2602 	jnz	00106$
                                   2603 ;	8051_i2c_eeprom.c:604: printf("Error: No ACK for device address (read mode)\n\r");
      003BDF 74 73            [12] 2604 	mov	a,#___str_39
      003BE1 C0 E0            [24] 2605 	push	acc
      003BE3 74 55            [12] 2606 	mov	a,#(___str_39 >> 8)
      003BE5 C0 E0            [24] 2607 	push	acc
      003BE7 74 80            [12] 2608 	mov	a,#0x80
      003BE9 C0 E0            [24] 2609 	push	acc
      003BEB 12 3F A8         [24] 2610 	lcall	_printf
      003BEE 15 81            [12] 2611 	dec	sp
      003BF0 15 81            [12] 2612 	dec	sp
      003BF2 15 81            [12] 2613 	dec	sp
                                   2614 ;	8051_i2c_eeprom.c:605: i2c_stop();
      003BF4 12 3D 49         [24] 2615 	lcall	_i2c_stop
                                   2616 ;	8051_i2c_eeprom.c:606: return -1;
      003BF7 90 FF FF         [24] 2617 	mov	dptr,#0xffff
      003BFA 22               [24] 2618 	ret
      003BFB                       2619 00106$:
                                   2620 ;	8051_i2c_eeprom.c:610: result = i2c_read(0);  // 0 means send NACK
      003BFB 90 00 00         [24] 2621 	mov	dptr,#0x0000
      003BFE C0 07            [24] 2622 	push	ar7
      003C00 C0 06            [24] 2623 	push	ar6
      003C02 C0 05            [24] 2624 	push	ar5
      003C04 C0 04            [24] 2625 	push	ar4
      003C06 12 39 C5         [24] 2626 	lcall	_i2c_read
      003C09 AA 82            [24] 2627 	mov	r2,dpl
                                   2628 ;	8051_i2c_eeprom.c:611: printf("%02X ", result);
      003C0B 7B 00            [12] 2629 	mov	r3,#0x00
      003C0D C0 02            [24] 2630 	push	ar2
      003C0F C0 03            [24] 2631 	push	ar3
      003C11 74 CC            [12] 2632 	mov	a,#___str_48
      003C13 C0 E0            [24] 2633 	push	acc
      003C15 74 56            [12] 2634 	mov	a,#(___str_48 >> 8)
      003C17 C0 E0            [24] 2635 	push	acc
      003C19 74 80            [12] 2636 	mov	a,#0x80
      003C1B C0 E0            [24] 2637 	push	acc
      003C1D 12 3F A8         [24] 2638 	lcall	_printf
      003C20 E5 81            [12] 2639 	mov	a,sp
      003C22 24 FB            [12] 2640 	add	a,#0xfb
      003C24 F5 81            [12] 2641 	mov	sp,a
                                   2642 ;	8051_i2c_eeprom.c:612: i2c_stop();
      003C26 12 3D 49         [24] 2643 	lcall	_i2c_stop
      003C29 D0 04            [24] 2644 	pop	ar4
      003C2B D0 05            [24] 2645 	pop	ar5
      003C2D D0 06            [24] 2646 	pop	ar6
      003C2F D0 07            [24] 2647 	pop	ar7
      003C31 80 25            [24] 2648 	sjmp	00114$
      003C33                       2649 00108$:
                                   2650 ;	8051_i2c_eeprom.c:616: printf("   "); // Space for missing bytes if end_address reached mid-line
      003C33 C0 07            [24] 2651 	push	ar7
      003C35 C0 06            [24] 2652 	push	ar6
      003C37 C0 05            [24] 2653 	push	ar5
      003C39 C0 04            [24] 2654 	push	ar4
      003C3B 74 D2            [12] 2655 	mov	a,#___str_49
      003C3D C0 E0            [24] 2656 	push	acc
      003C3F 74 56            [12] 2657 	mov	a,#(___str_49 >> 8)
      003C41 C0 E0            [24] 2658 	push	acc
      003C43 74 80            [12] 2659 	mov	a,#0x80
      003C45 C0 E0            [24] 2660 	push	acc
      003C47 12 3F A8         [24] 2661 	lcall	_printf
      003C4A 15 81            [12] 2662 	dec	sp
      003C4C 15 81            [12] 2663 	dec	sp
      003C4E 15 81            [12] 2664 	dec	sp
      003C50 D0 04            [24] 2665 	pop	ar4
      003C52 D0 05            [24] 2666 	pop	ar5
      003C54 D0 06            [24] 2667 	pop	ar6
      003C56 D0 07            [24] 2668 	pop	ar7
      003C58                       2669 00114$:
                                   2670 ;	8051_i2c_eeprom.c:574: for (int offset = 0; offset < MAX_HEX_CHAR_IN_SINGLE_LINE; offset++) {
      003C58 0C               [12] 2671 	inc	r4
      003C59 BC 00 01         [24] 2672 	cjne	r4,#0x00,00158$
      003C5C 0D               [12] 2673 	inc	r5
      003C5D                       2674 00158$:
      003C5D 02 3B 0D         [24] 2675 	ljmp	00113$
      003C60                       2676 00110$:
                                   2677 ;	8051_i2c_eeprom.c:621: printf("\r\n");
      003C60 C0 07            [24] 2678 	push	ar7
      003C62 C0 06            [24] 2679 	push	ar6
      003C64 74 F7            [12] 2680 	mov	a,#___str_43
      003C66 C0 E0            [24] 2681 	push	acc
      003C68 74 55            [12] 2682 	mov	a,#(___str_43 >> 8)
      003C6A C0 E0            [24] 2683 	push	acc
      003C6C 74 80            [12] 2684 	mov	a,#0x80
      003C6E C0 E0            [24] 2685 	push	acc
      003C70 12 3F A8         [24] 2686 	lcall	_printf
      003C73 15 81            [12] 2687 	dec	sp
      003C75 15 81            [12] 2688 	dec	sp
      003C77 15 81            [12] 2689 	dec	sp
      003C79 D0 06            [24] 2690 	pop	ar6
      003C7B D0 07            [24] 2691 	pop	ar7
                                   2692 ;	8051_i2c_eeprom.c:569: for (uint16_t address = start_address; address <= end_address; address += MAX_HEX_CHAR_IN_SINGLE_LINE) {
      003C7D 90 04 1C         [24] 2693 	mov	dptr,#_EEPROM_hexump_address_131072_115
      003C80 E0               [24] 2694 	movx	a,@dptr
      003C81 FC               [12] 2695 	mov	r4,a
      003C82 A3               [24] 2696 	inc	dptr
      003C83 E0               [24] 2697 	movx	a,@dptr
      003C84 FD               [12] 2698 	mov	r5,a
      003C85 74 10            [12] 2699 	mov	a,#0x10
      003C87 2C               [12] 2700 	add	a,r4
      003C88 FC               [12] 2701 	mov	r4,a
      003C89 E4               [12] 2702 	clr	a
      003C8A 3D               [12] 2703 	addc	a,r5
      003C8B FD               [12] 2704 	mov	r5,a
      003C8C 90 04 1C         [24] 2705 	mov	dptr,#_EEPROM_hexump_address_131072_115
      003C8F EC               [12] 2706 	mov	a,r4
      003C90 F0               [24] 2707 	movx	@dptr,a
      003C91 ED               [12] 2708 	mov	a,r5
      003C92 A3               [24] 2709 	inc	dptr
      003C93 F0               [24] 2710 	movx	@dptr,a
      003C94 02 3A D6         [24] 2711 	ljmp	00116$
      003C97                       2712 00111$:
                                   2713 ;	8051_i2c_eeprom.c:623: printf("\r\n");
      003C97 74 F7            [12] 2714 	mov	a,#___str_43
      003C99 C0 E0            [24] 2715 	push	acc
      003C9B 74 55            [12] 2716 	mov	a,#(___str_43 >> 8)
      003C9D C0 E0            [24] 2717 	push	acc
      003C9F 74 80            [12] 2718 	mov	a,#0x80
      003CA1 C0 E0            [24] 2719 	push	acc
      003CA3 12 3F A8         [24] 2720 	lcall	_printf
      003CA6 15 81            [12] 2721 	dec	sp
      003CA8 15 81            [12] 2722 	dec	sp
      003CAA 15 81            [12] 2723 	dec	sp
                                   2724 ;	8051_i2c_eeprom.c:624: return 1;
      003CAC 90 00 01         [24] 2725 	mov	dptr,#0x0001
                                   2726 ;	8051_i2c_eeprom.c:625: }
      003CAF 22               [24] 2727 	ret
                                   2728 ;------------------------------------------------------------
                                   2729 ;Allocation info for local variables in function 'handler_EEPROM_hexdump'
                                   2730 ;------------------------------------------------------------
                                   2731 ;start_addr                Allocated with name '_handler_EEPROM_hexdump_start_addr_65536_125'
                                   2732 ;end_addr                  Allocated with name '_handler_EEPROM_hexdump_end_addr_65537_128'
                                   2733 ;------------------------------------------------------------
                                   2734 ;	8051_i2c_eeprom.c:632: void handler_EEPROM_hexdump(void)
                                   2735 ;	-----------------------------------------
                                   2736 ;	 function handler_EEPROM_hexdump
                                   2737 ;	-----------------------------------------
      003CB0                       2738 _handler_EEPROM_hexdump:
                                   2739 ;	8051_i2c_eeprom.c:635: printf_tiny("\033[1;33m\n\rEnter Start Address for HEX Dump\r\n");
      003CB0 74 D6            [12] 2740 	mov	a,#___str_50
      003CB2 C0 E0            [24] 2741 	push	acc
      003CB4 74 56            [12] 2742 	mov	a,#(___str_50 >> 8)
      003CB6 C0 E0            [24] 2743 	push	acc
      003CB8 12 3E 51         [24] 2744 	lcall	_printf_tiny
      003CBB 15 81            [12] 2745 	dec	sp
      003CBD 15 81            [12] 2746 	dec	sp
                                   2747 ;	8051_i2c_eeprom.c:636: start_addr = take_address();
      003CBF 12 33 75         [24] 2748 	lcall	_take_address
      003CC2 AE 82            [24] 2749 	mov	r6,dpl
      003CC4 AF 83            [24] 2750 	mov	r7,dph
      003CC6 8E 04            [24] 2751 	mov	ar4,r6
      003CC8 8F 05            [24] 2752 	mov	ar5,r7
      003CCA 7E 00            [12] 2753 	mov	r6,#0x00
      003CCC 7F 00            [12] 2754 	mov	r7,#0x00
                                   2755 ;	8051_i2c_eeprom.c:638: if(start_addr >= 0 && start_addr <= ADDR_MAX)
      003CCE C3               [12] 2756 	clr	c
      003CCF 74 FF            [12] 2757 	mov	a,#0xff
      003CD1 9C               [12] 2758 	subb	a,r4
      003CD2 74 07            [12] 2759 	mov	a,#0x07
      003CD4 9D               [12] 2760 	subb	a,r5
      003CD5 E4               [12] 2761 	clr	a
      003CD6 9E               [12] 2762 	subb	a,r6
      003CD7 E4               [12] 2763 	clr	a
      003CD8 9F               [12] 2764 	subb	a,r7
      003CD9 50 16            [24] 2765 	jnc	00103$
                                   2766 ;	8051_i2c_eeprom.c:643: printf("\033[1;31m\n\rInvalid Start Address Range!!\n\r Address has to be between 0x000 to 0x7FF\033[0m\r\n");
      003CDB 74 02            [12] 2767 	mov	a,#___str_51
      003CDD C0 E0            [24] 2768 	push	acc
      003CDF 74 57            [12] 2769 	mov	a,#(___str_51 >> 8)
      003CE1 C0 E0            [24] 2770 	push	acc
      003CE3 74 80            [12] 2771 	mov	a,#0x80
      003CE5 C0 E0            [24] 2772 	push	acc
      003CE7 12 3F A8         [24] 2773 	lcall	_printf
      003CEA 15 81            [12] 2774 	dec	sp
      003CEC 15 81            [12] 2775 	dec	sp
      003CEE 15 81            [12] 2776 	dec	sp
                                   2777 ;	8051_i2c_eeprom.c:644: return;
      003CF0 22               [24] 2778 	ret
      003CF1                       2779 00103$:
                                   2780 ;	8051_i2c_eeprom.c:649: printf_tiny("\033[1;33m\n\rEnter End Address for HEX Dump\r\n");
      003CF1 C0 07            [24] 2781 	push	ar7
      003CF3 C0 06            [24] 2782 	push	ar6
      003CF5 C0 05            [24] 2783 	push	ar5
      003CF7 C0 04            [24] 2784 	push	ar4
      003CF9 74 5A            [12] 2785 	mov	a,#___str_52
      003CFB C0 E0            [24] 2786 	push	acc
      003CFD 74 57            [12] 2787 	mov	a,#(___str_52 >> 8)
      003CFF C0 E0            [24] 2788 	push	acc
      003D01 12 3E 51         [24] 2789 	lcall	_printf_tiny
      003D04 15 81            [12] 2790 	dec	sp
      003D06 15 81            [12] 2791 	dec	sp
                                   2792 ;	8051_i2c_eeprom.c:650: end_addr = take_address();
      003D08 12 33 75         [24] 2793 	lcall	_take_address
      003D0B AA 82            [24] 2794 	mov	r2,dpl
      003D0D AB 83            [24] 2795 	mov	r3,dph
      003D0F D0 04            [24] 2796 	pop	ar4
      003D11 D0 05            [24] 2797 	pop	ar5
      003D13 D0 06            [24] 2798 	pop	ar6
      003D15 D0 07            [24] 2799 	pop	ar7
                                   2800 ;	8051_i2c_eeprom.c:652: if(end_addr >= 0 && end_addr <= ADDR_MAX)
      003D17 8A 00            [24] 2801 	mov	ar0,r2
      003D19 8B 01            [24] 2802 	mov	ar1,r3
      003D1B C3               [12] 2803 	clr	c
      003D1C 74 FF            [12] 2804 	mov	a,#0xff
      003D1E 98               [12] 2805 	subb	a,r0
      003D1F 74 07            [12] 2806 	mov	a,#0x07
      003D21 99               [12] 2807 	subb	a,r1
      003D22 50 16            [24] 2808 	jnc	00107$
                                   2809 ;	8051_i2c_eeprom.c:657: printf("\033[1;31m\n\rInvalid End Address Range!!\n\r Address has to be between 0x000 to 0x7FF\033[0m\r\n");
      003D24 74 84            [12] 2810 	mov	a,#___str_53
      003D26 C0 E0            [24] 2811 	push	acc
      003D28 74 57            [12] 2812 	mov	a,#(___str_53 >> 8)
      003D2A C0 E0            [24] 2813 	push	acc
      003D2C 74 80            [12] 2814 	mov	a,#0x80
      003D2E C0 E0            [24] 2815 	push	acc
      003D30 12 3F A8         [24] 2816 	lcall	_printf
      003D33 15 81            [12] 2817 	dec	sp
      003D35 15 81            [12] 2818 	dec	sp
      003D37 15 81            [12] 2819 	dec	sp
                                   2820 ;	8051_i2c_eeprom.c:658: return;
      003D39 22               [24] 2821 	ret
      003D3A                       2822 00107$:
                                   2823 ;	8051_i2c_eeprom.c:661: EEPROM_hexump(start_addr,end_addr);
      003D3A 90 04 18         [24] 2824 	mov	dptr,#_EEPROM_hexump_PARM_2
      003D3D EA               [12] 2825 	mov	a,r2
      003D3E F0               [24] 2826 	movx	@dptr,a
      003D3F EB               [12] 2827 	mov	a,r3
      003D40 A3               [24] 2828 	inc	dptr
      003D41 F0               [24] 2829 	movx	@dptr,a
      003D42 8C 82            [24] 2830 	mov	dpl,r4
      003D44 8D 83            [24] 2831 	mov	dph,r5
                                   2832 ;	8051_i2c_eeprom.c:662: }
      003D46 02 3A 5F         [24] 2833 	ljmp	_EEPROM_hexump
                                   2834 ;------------------------------------------------------------
                                   2835 ;Allocation info for local variables in function 'i2c_stop'
                                   2836 ;------------------------------------------------------------
                                   2837 ;	8051_i2c_eeprom.c:669: void i2c_stop(void)
                                   2838 ;	-----------------------------------------
                                   2839 ;	 function i2c_stop
                                   2840 ;	-----------------------------------------
      003D49                       2841 _i2c_stop:
                                   2842 ;	8051_i2c_eeprom.c:671: SDA = 0;
                                   2843 ;	assignBit
      003D49 C2 94            [12] 2844 	clr	_P1_4
                                   2845 ;	8051_i2c_eeprom.c:672: i2c_delay();
      003D4B 12 3D 82         [24] 2846 	lcall	_i2c_delay
                                   2847 ;	8051_i2c_eeprom.c:673: SCL = 1;
                                   2848 ;	assignBit
      003D4E D2 93            [12] 2849 	setb	_P1_3
                                   2850 ;	8051_i2c_eeprom.c:674: i2c_delay();
      003D50 12 3D 82         [24] 2851 	lcall	_i2c_delay
                                   2852 ;	8051_i2c_eeprom.c:675: SDA = 1; 
                                   2853 ;	assignBit
      003D53 D2 94            [12] 2854 	setb	_P1_4
                                   2855 ;	8051_i2c_eeprom.c:676: }
      003D55 22               [24] 2856 	ret
                                   2857 ;------------------------------------------------------------
                                   2858 ;Allocation info for local variables in function 'eeprom_reset'
                                   2859 ;------------------------------------------------------------
                                   2860 ;i                         Allocated with name '_eeprom_reset_i_131072_134'
                                   2861 ;------------------------------------------------------------
                                   2862 ;	8051_i2c_eeprom.c:686: void eeprom_reset()
                                   2863 ;	-----------------------------------------
                                   2864 ;	 function eeprom_reset
                                   2865 ;	-----------------------------------------
      003D56                       2866 _eeprom_reset:
                                   2867 ;	8051_i2c_eeprom.c:688: i2c_start();
      003D56 12 3A 4A         [24] 2868 	lcall	_i2c_start
                                   2869 ;	8051_i2c_eeprom.c:689: SDA = 0;
                                   2870 ;	assignBit
      003D59 C2 94            [12] 2871 	clr	_P1_4
                                   2872 ;	8051_i2c_eeprom.c:690: SDA = 1;
                                   2873 ;	assignBit
      003D5B D2 94            [12] 2874 	setb	_P1_4
                                   2875 ;	8051_i2c_eeprom.c:691: for(int i = 0; i<10; i++)
      003D5D 7E 00            [12] 2876 	mov	r6,#0x00
      003D5F 7F 00            [12] 2877 	mov	r7,#0x00
      003D61                       2878 00103$:
      003D61 C3               [12] 2879 	clr	c
      003D62 EE               [12] 2880 	mov	a,r6
      003D63 94 0A            [12] 2881 	subb	a,#0x0a
      003D65 EF               [12] 2882 	mov	a,r7
      003D66 64 80            [12] 2883 	xrl	a,#0x80
      003D68 94 80            [12] 2884 	subb	a,#0x80
      003D6A 50 0B            [24] 2885 	jnc	00101$
                                   2886 ;	8051_i2c_eeprom.c:693: SCL = 0;
                                   2887 ;	assignBit
      003D6C C2 93            [12] 2888 	clr	_P1_3
                                   2889 ;	8051_i2c_eeprom.c:694: SCL = 1;
                                   2890 ;	assignBit
      003D6E D2 93            [12] 2891 	setb	_P1_3
                                   2892 ;	8051_i2c_eeprom.c:691: for(int i = 0; i<10; i++)
      003D70 0E               [12] 2893 	inc	r6
      003D71 BE 00 ED         [24] 2894 	cjne	r6,#0x00,00103$
      003D74 0F               [12] 2895 	inc	r7
      003D75 80 EA            [24] 2896 	sjmp	00103$
      003D77                       2897 00101$:
                                   2898 ;	8051_i2c_eeprom.c:696: i2c_start();
      003D77 12 3A 4A         [24] 2899 	lcall	_i2c_start
                                   2900 ;	8051_i2c_eeprom.c:697: SDA = 0;
                                   2901 ;	assignBit
      003D7A C2 94            [12] 2902 	clr	_P1_4
                                   2903 ;	8051_i2c_eeprom.c:698: i2c_stop();
      003D7C 12 3D 49         [24] 2904 	lcall	_i2c_stop
                                   2905 ;	8051_i2c_eeprom.c:699: SDA = 1;
                                   2906 ;	assignBit
      003D7F D2 94            [12] 2907 	setb	_P1_4
                                   2908 ;	8051_i2c_eeprom.c:700: }
      003D81 22               [24] 2909 	ret
                                   2910 ;------------------------------------------------------------
                                   2911 ;Allocation info for local variables in function 'i2c_delay'
                                   2912 ;------------------------------------------------------------
                                   2913 ;i                         Allocated with name '_i2c_delay_i_131072_137'
                                   2914 ;------------------------------------------------------------
                                   2915 ;	8051_i2c_eeprom.c:709: void i2c_delay() 
                                   2916 ;	-----------------------------------------
                                   2917 ;	 function i2c_delay
                                   2918 ;	-----------------------------------------
      003D82                       2919 _i2c_delay:
                                   2920 ;	8051_i2c_eeprom.c:717: for(int i = 0; i<500; i++);
      003D82 7E 00            [12] 2921 	mov	r6,#0x00
      003D84 7F 00            [12] 2922 	mov	r7,#0x00
      003D86                       2923 00103$:
      003D86 C3               [12] 2924 	clr	c
      003D87 EE               [12] 2925 	mov	a,r6
      003D88 94 F4            [12] 2926 	subb	a,#0xf4
      003D8A EF               [12] 2927 	mov	a,r7
      003D8B 64 80            [12] 2928 	xrl	a,#0x80
      003D8D 94 81            [12] 2929 	subb	a,#0x81
      003D8F 50 07            [24] 2930 	jnc	00105$
      003D91 0E               [12] 2931 	inc	r6
      003D92 BE 00 F1         [24] 2932 	cjne	r6,#0x00,00103$
      003D95 0F               [12] 2933 	inc	r7
      003D96 80 EE            [24] 2934 	sjmp	00103$
      003D98                       2935 00105$:
                                   2936 ;	8051_i2c_eeprom.c:718: }
      003D98 22               [24] 2937 	ret
                                   2938 ;------------------------------------------------------------
                                   2939 ;Allocation info for local variables in function 'test_function'
                                   2940 ;------------------------------------------------------------
                                   2941 ;test_data                 Allocated with name '_test_function_test_data_65537_139'
                                   2942 ;address                   Allocated with name '_test_function_address_65537_139'
                                   2943 ;i                         Allocated with name '_test_function_i_131073_140'
                                   2944 ;read_data                 Allocated with name '_test_function_read_data_65538_142'
                                   2945 ;------------------------------------------------------------
                                   2946 ;	8051_i2c_eeprom.c:720: void test_function()
                                   2947 ;	-----------------------------------------
                                   2948 ;	 function test_function
                                   2949 ;	-----------------------------------------
      003D99                       2950 _test_function:
                                   2951 ;	8051_i2c_eeprom.c:722: i2c_start();
      003D99 12 3A 4A         [24] 2952 	lcall	_i2c_start
                                   2953 ;	8051_i2c_eeprom.c:723: i2c_delay();
      003D9C 12 3D 82         [24] 2954 	lcall	_i2c_delay
                                   2955 ;	8051_i2c_eeprom.c:729: printf("Writing data 0x%02X to address 0x%02X\n\r", test_data, address);
      003D9F 74 02            [12] 2956 	mov	a,#0x02
      003DA1 C0 E0            [24] 2957 	push	acc
      003DA3 E4               [12] 2958 	clr	a
      003DA4 C0 E0            [24] 2959 	push	acc
      003DA6 74 26            [12] 2960 	mov	a,#0x26
      003DA8 C0 E0            [24] 2961 	push	acc
      003DAA E4               [12] 2962 	clr	a
      003DAB C0 E0            [24] 2963 	push	acc
      003DAD 74 DA            [12] 2964 	mov	a,#___str_54
      003DAF C0 E0            [24] 2965 	push	acc
      003DB1 74 57            [12] 2966 	mov	a,#(___str_54 >> 8)
      003DB3 C0 E0            [24] 2967 	push	acc
      003DB5 74 80            [12] 2968 	mov	a,#0x80
      003DB7 C0 E0            [24] 2969 	push	acc
      003DB9 12 3F A8         [24] 2970 	lcall	_printf
      003DBC E5 81            [12] 2971 	mov	a,sp
      003DBE 24 F9            [12] 2972 	add	a,#0xf9
      003DC0 F5 81            [12] 2973 	mov	sp,a
                                   2974 ;	8051_i2c_eeprom.c:730: eeprom_write(address, test_data);
      003DC2 90 04 0F         [24] 2975 	mov	dptr,#_eeprom_write_PARM_2
      003DC5 74 26            [12] 2976 	mov	a,#0x26
      003DC7 F0               [24] 2977 	movx	@dptr,a
      003DC8 90 00 02         [24] 2978 	mov	dptr,#0x0002
      003DCB 12 37 07         [24] 2979 	lcall	_eeprom_write
                                   2980 ;	8051_i2c_eeprom.c:731: i2c_stop();
      003DCE 12 3D 49         [24] 2981 	lcall	_i2c_stop
                                   2982 ;	8051_i2c_eeprom.c:733: for(int i = 0; i<100; i++)
      003DD1 7E 00            [12] 2983 	mov	r6,#0x00
      003DD3 7F 00            [12] 2984 	mov	r7,#0x00
      003DD5                       2985 00106$:
      003DD5 C3               [12] 2986 	clr	c
      003DD6 EE               [12] 2987 	mov	a,r6
      003DD7 94 64            [12] 2988 	subb	a,#0x64
      003DD9 EF               [12] 2989 	mov	a,r7
      003DDA 64 80            [12] 2990 	xrl	a,#0x80
      003DDC 94 80            [12] 2991 	subb	a,#0x80
      003DDE 50 12            [24] 2992 	jnc	00101$
                                   2993 ;	8051_i2c_eeprom.c:735: i2c_delay();
      003DE0 C0 07            [24] 2994 	push	ar7
      003DE2 C0 06            [24] 2995 	push	ar6
      003DE4 12 3D 82         [24] 2996 	lcall	_i2c_delay
      003DE7 D0 06            [24] 2997 	pop	ar6
      003DE9 D0 07            [24] 2998 	pop	ar7
                                   2999 ;	8051_i2c_eeprom.c:733: for(int i = 0; i<100; i++)
      003DEB 0E               [12] 3000 	inc	r6
      003DEC BE 00 E6         [24] 3001 	cjne	r6,#0x00,00106$
      003DEF 0F               [12] 3002 	inc	r7
      003DF0 80 E3            [24] 3003 	sjmp	00106$
      003DF2                       3004 00101$:
                                   3005 ;	8051_i2c_eeprom.c:739: unsigned char read_data = eeprom_read(address);
      003DF2 90 00 02         [24] 3006 	mov	dptr,#0x0002
      003DF5 12 38 49         [24] 3007 	lcall	_eeprom_read
      003DF8 AE 82            [24] 3008 	mov	r6,dpl
                                   3009 ;	8051_i2c_eeprom.c:740: printf("Read back from address 0x%02X: 0x%02X\n\r", address, read_data);
      003DFA 8E 05            [24] 3010 	mov	ar5,r6
      003DFC 7F 00            [12] 3011 	mov	r7,#0x00
      003DFE C0 06            [24] 3012 	push	ar6
      003E00 C0 05            [24] 3013 	push	ar5
      003E02 C0 07            [24] 3014 	push	ar7
      003E04 74 02            [12] 3015 	mov	a,#0x02
      003E06 C0 E0            [24] 3016 	push	acc
      003E08 E4               [12] 3017 	clr	a
      003E09 C0 E0            [24] 3018 	push	acc
      003E0B 74 02            [12] 3019 	mov	a,#___str_55
      003E0D C0 E0            [24] 3020 	push	acc
      003E0F 74 58            [12] 3021 	mov	a,#(___str_55 >> 8)
      003E11 C0 E0            [24] 3022 	push	acc
      003E13 74 80            [12] 3023 	mov	a,#0x80
      003E15 C0 E0            [24] 3024 	push	acc
      003E17 12 3F A8         [24] 3025 	lcall	_printf
      003E1A E5 81            [12] 3026 	mov	a,sp
      003E1C 24 F9            [12] 3027 	add	a,#0xf9
      003E1E F5 81            [12] 3028 	mov	sp,a
      003E20 D0 06            [24] 3029 	pop	ar6
                                   3030 ;	8051_i2c_eeprom.c:743: if(read_data == test_data) {
      003E22 BE 26 16         [24] 3031 	cjne	r6,#0x26,00103$
                                   3032 ;	8051_i2c_eeprom.c:744: printf("MATCH - Write/Read successful!\n\r");
      003E25 74 2A            [12] 3033 	mov	a,#___str_56
      003E27 C0 E0            [24] 3034 	push	acc
      003E29 74 58            [12] 3035 	mov	a,#(___str_56 >> 8)
      003E2B C0 E0            [24] 3036 	push	acc
      003E2D 74 80            [12] 3037 	mov	a,#0x80
      003E2F C0 E0            [24] 3038 	push	acc
      003E31 12 3F A8         [24] 3039 	lcall	_printf
      003E34 15 81            [12] 3040 	dec	sp
      003E36 15 81            [12] 3041 	dec	sp
      003E38 15 81            [12] 3042 	dec	sp
      003E3A 22               [24] 3043 	ret
      003E3B                       3044 00103$:
                                   3045 ;	8051_i2c_eeprom.c:746: printf("ERROR - Data mismatch!\n\r");
      003E3B 74 4B            [12] 3046 	mov	a,#___str_57
      003E3D C0 E0            [24] 3047 	push	acc
      003E3F 74 58            [12] 3048 	mov	a,#(___str_57 >> 8)
      003E41 C0 E0            [24] 3049 	push	acc
      003E43 74 80            [12] 3050 	mov	a,#0x80
      003E45 C0 E0            [24] 3051 	push	acc
      003E47 12 3F A8         [24] 3052 	lcall	_printf
      003E4A 15 81            [12] 3053 	dec	sp
      003E4C 15 81            [12] 3054 	dec	sp
      003E4E 15 81            [12] 3055 	dec	sp
                                   3056 ;	8051_i2c_eeprom.c:750: }
      003E50 22               [24] 3057 	ret
                                   3058 	.area CSEG    (CODE)
                                   3059 	.area CONST   (CODE)
                                   3060 	.area CONST   (CODE)
      004A0A                       3061 ___str_0:
      004A0A 0A                    3062 	.db 0x0a
      004A0B E2                    3063 	.db 0xe2
      004A0C 95                    3064 	.db 0x95
      004A0D 94                    3065 	.db 0x94
      004A0E E2                    3066 	.db 0xe2
      004A0F 95                    3067 	.db 0x95
      004A10 90                    3068 	.db 0x90
      004A11 E2                    3069 	.db 0xe2
      004A12 95                    3070 	.db 0x95
      004A13 90                    3071 	.db 0x90
      004A14 E2                    3072 	.db 0xe2
      004A15 95                    3073 	.db 0x95
      004A16 90                    3074 	.db 0x90
      004A17 E2                    3075 	.db 0xe2
      004A18 95                    3076 	.db 0x95
      004A19 90                    3077 	.db 0x90
      004A1A E2                    3078 	.db 0xe2
      004A1B 95                    3079 	.db 0x95
      004A1C 90                    3080 	.db 0x90
      004A1D E2                    3081 	.db 0xe2
      004A1E 95                    3082 	.db 0x95
      004A1F 90                    3083 	.db 0x90
      004A20 E2                    3084 	.db 0xe2
      004A21 95                    3085 	.db 0x95
      004A22 90                    3086 	.db 0x90
      004A23 E2                    3087 	.db 0xe2
      004A24 95                    3088 	.db 0x95
      004A25 90                    3089 	.db 0x90
      004A26 E2                    3090 	.db 0xe2
      004A27 95                    3091 	.db 0x95
      004A28 90                    3092 	.db 0x90
      004A29 E2                    3093 	.db 0xe2
      004A2A 95                    3094 	.db 0x95
      004A2B 90                    3095 	.db 0x90
      004A2C E2                    3096 	.db 0xe2
      004A2D 95                    3097 	.db 0x95
      004A2E 90                    3098 	.db 0x90
      004A2F E2                    3099 	.db 0xe2
      004A30 95                    3100 	.db 0x95
      004A31 90                    3101 	.db 0x90
      004A32 E2                    3102 	.db 0xe2
      004A33 95                    3103 	.db 0x95
      004A34 90                    3104 	.db 0x90
      004A35 E2                    3105 	.db 0xe2
      004A36 95                    3106 	.db 0x95
      004A37 90                    3107 	.db 0x90
      004A38 E2                    3108 	.db 0xe2
      004A39 95                    3109 	.db 0x95
      004A3A 90                    3110 	.db 0x90
      004A3B E2                    3111 	.db 0xe2
      004A3C 95                    3112 	.db 0x95
      004A3D 90                    3113 	.db 0x90
      004A3E E2                    3114 	.db 0xe2
      004A3F 95                    3115 	.db 0x95
      004A40 90                    3116 	.db 0x90
      004A41 E2                    3117 	.db 0xe2
      004A42 95                    3118 	.db 0x95
      004A43 90                    3119 	.db 0x90
      004A44 E2                    3120 	.db 0xe2
      004A45 95                    3121 	.db 0x95
      004A46 90                    3122 	.db 0x90
      004A47 E2                    3123 	.db 0xe2
      004A48 95                    3124 	.db 0x95
      004A49 90                    3125 	.db 0x90
      004A4A E2                    3126 	.db 0xe2
      004A4B 95                    3127 	.db 0x95
      004A4C 90                    3128 	.db 0x90
      004A4D E2                    3129 	.db 0xe2
      004A4E 95                    3130 	.db 0x95
      004A4F 90                    3131 	.db 0x90
      004A50 E2                    3132 	.db 0xe2
      004A51 95                    3133 	.db 0x95
      004A52 90                    3134 	.db 0x90
      004A53 E2                    3135 	.db 0xe2
      004A54 95                    3136 	.db 0x95
      004A55 90                    3137 	.db 0x90
      004A56 E2                    3138 	.db 0xe2
      004A57 95                    3139 	.db 0x95
      004A58 90                    3140 	.db 0x90
      004A59 E2                    3141 	.db 0xe2
      004A5A 95                    3142 	.db 0x95
      004A5B 90                    3143 	.db 0x90
      004A5C E2                    3144 	.db 0xe2
      004A5D 95                    3145 	.db 0x95
      004A5E 90                    3146 	.db 0x90
      004A5F E2                    3147 	.db 0xe2
      004A60 95                    3148 	.db 0x95
      004A61 90                    3149 	.db 0x90
      004A62 E2                    3150 	.db 0xe2
      004A63 95                    3151 	.db 0x95
      004A64 90                    3152 	.db 0x90
      004A65 E2                    3153 	.db 0xe2
      004A66 95                    3154 	.db 0x95
      004A67 90                    3155 	.db 0x90
      004A68 E2                    3156 	.db 0xe2
      004A69 95                    3157 	.db 0x95
      004A6A 90                    3158 	.db 0x90
      004A6B E2                    3159 	.db 0xe2
      004A6C 95                    3160 	.db 0x95
      004A6D 90                    3161 	.db 0x90
      004A6E E2                    3162 	.db 0xe2
      004A6F 95                    3163 	.db 0x95
      004A70 90                    3164 	.db 0x90
      004A71 E2                    3165 	.db 0xe2
      004A72 95                    3166 	.db 0x95
      004A73 90                    3167 	.db 0x90
      004A74 E2                    3168 	.db 0xe2
      004A75 95                    3169 	.db 0x95
      004A76 90                    3170 	.db 0x90
      004A77 E2                    3171 	.db 0xe2
      004A78 95                    3172 	.db 0x95
      004A79 90                    3173 	.db 0x90
      004A7A E2                    3174 	.db 0xe2
      004A7B 95                    3175 	.db 0x95
      004A7C 90                    3176 	.db 0x90
      004A7D E2                    3177 	.db 0xe2
      004A7E 95                    3178 	.db 0x95
      004A7F 90                    3179 	.db 0x90
      004A80 E2                    3180 	.db 0xe2
      004A81 95                    3181 	.db 0x95
      004A82 90                    3182 	.db 0x90
      004A83 E2                    3183 	.db 0xe2
      004A84 95                    3184 	.db 0x95
      004A85 90                    3185 	.db 0x90
      004A86 E2                    3186 	.db 0xe2
      004A87 95                    3187 	.db 0x95
      004A88 90                    3188 	.db 0x90
      004A89 E2                    3189 	.db 0xe2
      004A8A 95                    3190 	.db 0x95
      004A8B 90                    3191 	.db 0x90
      004A8C E2                    3192 	.db 0xe2
      004A8D 95                    3193 	.db 0x95
      004A8E 90                    3194 	.db 0x90
      004A8F E2                    3195 	.db 0xe2
      004A90 95                    3196 	.db 0x95
      004A91 90                    3197 	.db 0x90
      004A92 E2                    3198 	.db 0xe2
      004A93 95                    3199 	.db 0x95
      004A94 90                    3200 	.db 0x90
      004A95 E2                    3201 	.db 0xe2
      004A96 95                    3202 	.db 0x95
      004A97 90                    3203 	.db 0x90
      004A98 E2                    3204 	.db 0xe2
      004A99 95                    3205 	.db 0x95
      004A9A 90                    3206 	.db 0x90
      004A9B E2                    3207 	.db 0xe2
      004A9C 95                    3208 	.db 0x95
      004A9D 90                    3209 	.db 0x90
      004A9E E2                    3210 	.db 0xe2
      004A9F 95                    3211 	.db 0x95
      004AA0 90                    3212 	.db 0x90
      004AA1 E2                    3213 	.db 0xe2
      004AA2 95                    3214 	.db 0x95
      004AA3 90                    3215 	.db 0x90
      004AA4 E2                    3216 	.db 0xe2
      004AA5 95                    3217 	.db 0x95
      004AA6 90                    3218 	.db 0x90
      004AA7 E2                    3219 	.db 0xe2
      004AA8 95                    3220 	.db 0x95
      004AA9 90                    3221 	.db 0x90
      004AAA E2                    3222 	.db 0xe2
      004AAB 95                    3223 	.db 0x95
      004AAC 90                    3224 	.db 0x90
      004AAD E2                    3225 	.db 0xe2
      004AAE 95                    3226 	.db 0x95
      004AAF 90                    3227 	.db 0x90
      004AB0 E2                    3228 	.db 0xe2
      004AB1 95                    3229 	.db 0x95
      004AB2 90                    3230 	.db 0x90
      004AB3 E2                    3231 	.db 0xe2
      004AB4 95                    3232 	.db 0x95
      004AB5 90                    3233 	.db 0x90
      004AB6 E2                    3234 	.db 0xe2
      004AB7 95                    3235 	.db 0x95
      004AB8 97                    3236 	.db 0x97
      004AB9 0A                    3237 	.db 0x0a
      004ABA 0D                    3238 	.db 0x0d
      004ABB 00                    3239 	.db 0x00
                                   3240 	.area CSEG    (CODE)
                                   3241 	.area CONST   (CODE)
      004ABC                       3242 ___str_1:
      004ABC E2                    3243 	.db 0xe2
      004ABD 95                    3244 	.db 0x95
      004ABE 91                    3245 	.db 0x91
      004ABF 20 20 20 20 20 20 20  3246 	.ascii "           I2C Memory Management System v1.0            "
             20 20 20 20 49 32 43
             20 4D 65 6D 6F 72 79
             20 4D 61 6E 61 67 65
             6D 65 6E 74 20 53 79
             73 74 65 6D 20 76 31
             2E 30 20 20 20 20 20
             20 20 20 20 20 20 20
      004AF7 E2                    3247 	.db 0xe2
      004AF8 95                    3248 	.db 0x95
      004AF9 91                    3249 	.db 0x91
      004AFA 0A                    3250 	.db 0x0a
      004AFB 0D                    3251 	.db 0x0d
      004AFC 00                    3252 	.db 0x00
                                   3253 	.area CSEG    (CODE)
                                   3254 	.area CONST   (CODE)
      004AFD                       3255 ___str_2:
      004AFD E2                    3256 	.db 0xe2
      004AFE 95                    3257 	.db 0x95
      004AFF 9A                    3258 	.db 0x9a
      004B00 E2                    3259 	.db 0xe2
      004B01 95                    3260 	.db 0x95
      004B02 90                    3261 	.db 0x90
      004B03 E2                    3262 	.db 0xe2
      004B04 95                    3263 	.db 0x95
      004B05 90                    3264 	.db 0x90
      004B06 E2                    3265 	.db 0xe2
      004B07 95                    3266 	.db 0x95
      004B08 90                    3267 	.db 0x90
      004B09 E2                    3268 	.db 0xe2
      004B0A 95                    3269 	.db 0x95
      004B0B 90                    3270 	.db 0x90
      004B0C E2                    3271 	.db 0xe2
      004B0D 95                    3272 	.db 0x95
      004B0E 90                    3273 	.db 0x90
      004B0F E2                    3274 	.db 0xe2
      004B10 95                    3275 	.db 0x95
      004B11 90                    3276 	.db 0x90
      004B12 E2                    3277 	.db 0xe2
      004B13 95                    3278 	.db 0x95
      004B14 90                    3279 	.db 0x90
      004B15 E2                    3280 	.db 0xe2
      004B16 95                    3281 	.db 0x95
      004B17 90                    3282 	.db 0x90
      004B18 E2                    3283 	.db 0xe2
      004B19 95                    3284 	.db 0x95
      004B1A 90                    3285 	.db 0x90
      004B1B E2                    3286 	.db 0xe2
      004B1C 95                    3287 	.db 0x95
      004B1D 90                    3288 	.db 0x90
      004B1E E2                    3289 	.db 0xe2
      004B1F 95                    3290 	.db 0x95
      004B20 90                    3291 	.db 0x90
      004B21 E2                    3292 	.db 0xe2
      004B22 95                    3293 	.db 0x95
      004B23 90                    3294 	.db 0x90
      004B24 E2                    3295 	.db 0xe2
      004B25 95                    3296 	.db 0x95
      004B26 90                    3297 	.db 0x90
      004B27 E2                    3298 	.db 0xe2
      004B28 95                    3299 	.db 0x95
      004B29 90                    3300 	.db 0x90
      004B2A E2                    3301 	.db 0xe2
      004B2B 95                    3302 	.db 0x95
      004B2C 90                    3303 	.db 0x90
      004B2D E2                    3304 	.db 0xe2
      004B2E 95                    3305 	.db 0x95
      004B2F 90                    3306 	.db 0x90
      004B30 E2                    3307 	.db 0xe2
      004B31 95                    3308 	.db 0x95
      004B32 90                    3309 	.db 0x90
      004B33 E2                    3310 	.db 0xe2
      004B34 95                    3311 	.db 0x95
      004B35 90                    3312 	.db 0x90
      004B36 E2                    3313 	.db 0xe2
      004B37 95                    3314 	.db 0x95
      004B38 90                    3315 	.db 0x90
      004B39 E2                    3316 	.db 0xe2
      004B3A 95                    3317 	.db 0x95
      004B3B 90                    3318 	.db 0x90
      004B3C E2                    3319 	.db 0xe2
      004B3D 95                    3320 	.db 0x95
      004B3E 90                    3321 	.db 0x90
      004B3F E2                    3322 	.db 0xe2
      004B40 95                    3323 	.db 0x95
      004B41 90                    3324 	.db 0x90
      004B42 E2                    3325 	.db 0xe2
      004B43 95                    3326 	.db 0x95
      004B44 90                    3327 	.db 0x90
      004B45 E2                    3328 	.db 0xe2
      004B46 95                    3329 	.db 0x95
      004B47 90                    3330 	.db 0x90
      004B48 E2                    3331 	.db 0xe2
      004B49 95                    3332 	.db 0x95
      004B4A 90                    3333 	.db 0x90
      004B4B E2                    3334 	.db 0xe2
      004B4C 95                    3335 	.db 0x95
      004B4D 90                    3336 	.db 0x90
      004B4E E2                    3337 	.db 0xe2
      004B4F 95                    3338 	.db 0x95
      004B50 90                    3339 	.db 0x90
      004B51 E2                    3340 	.db 0xe2
      004B52 95                    3341 	.db 0x95
      004B53 90                    3342 	.db 0x90
      004B54 E2                    3343 	.db 0xe2
      004B55 95                    3344 	.db 0x95
      004B56 90                    3345 	.db 0x90
      004B57 E2                    3346 	.db 0xe2
      004B58 95                    3347 	.db 0x95
      004B59 90                    3348 	.db 0x90
      004B5A E2                    3349 	.db 0xe2
      004B5B 95                    3350 	.db 0x95
      004B5C 90                    3351 	.db 0x90
      004B5D E2                    3352 	.db 0xe2
      004B5E 95                    3353 	.db 0x95
      004B5F 90                    3354 	.db 0x90
      004B60 E2                    3355 	.db 0xe2
      004B61 95                    3356 	.db 0x95
      004B62 90                    3357 	.db 0x90
      004B63 E2                    3358 	.db 0xe2
      004B64 95                    3359 	.db 0x95
      004B65 90                    3360 	.db 0x90
      004B66 E2                    3361 	.db 0xe2
      004B67 95                    3362 	.db 0x95
      004B68 90                    3363 	.db 0x90
      004B69 E2                    3364 	.db 0xe2
      004B6A 95                    3365 	.db 0x95
      004B6B 90                    3366 	.db 0x90
      004B6C E2                    3367 	.db 0xe2
      004B6D 95                    3368 	.db 0x95
      004B6E 90                    3369 	.db 0x90
      004B6F E2                    3370 	.db 0xe2
      004B70 95                    3371 	.db 0x95
      004B71 90                    3372 	.db 0x90
      004B72 E2                    3373 	.db 0xe2
      004B73 95                    3374 	.db 0x95
      004B74 90                    3375 	.db 0x90
      004B75 E2                    3376 	.db 0xe2
      004B76 95                    3377 	.db 0x95
      004B77 90                    3378 	.db 0x90
      004B78 E2                    3379 	.db 0xe2
      004B79 95                    3380 	.db 0x95
      004B7A 90                    3381 	.db 0x90
      004B7B E2                    3382 	.db 0xe2
      004B7C 95                    3383 	.db 0x95
      004B7D 90                    3384 	.db 0x90
      004B7E E2                    3385 	.db 0xe2
      004B7F 95                    3386 	.db 0x95
      004B80 90                    3387 	.db 0x90
      004B81 E2                    3388 	.db 0xe2
      004B82 95                    3389 	.db 0x95
      004B83 90                    3390 	.db 0x90
      004B84 E2                    3391 	.db 0xe2
      004B85 95                    3392 	.db 0x95
      004B86 90                    3393 	.db 0x90
      004B87 E2                    3394 	.db 0xe2
      004B88 95                    3395 	.db 0x95
      004B89 90                    3396 	.db 0x90
      004B8A E2                    3397 	.db 0xe2
      004B8B 95                    3398 	.db 0x95
      004B8C 90                    3399 	.db 0x90
      004B8D E2                    3400 	.db 0xe2
      004B8E 95                    3401 	.db 0x95
      004B8F 90                    3402 	.db 0x90
      004B90 E2                    3403 	.db 0xe2
      004B91 95                    3404 	.db 0x95
      004B92 90                    3405 	.db 0x90
      004B93 E2                    3406 	.db 0xe2
      004B94 95                    3407 	.db 0x95
      004B95 90                    3408 	.db 0x90
      004B96 E2                    3409 	.db 0xe2
      004B97 95                    3410 	.db 0x95
      004B98 90                    3411 	.db 0x90
      004B99 E2                    3412 	.db 0xe2
      004B9A 95                    3413 	.db 0x95
      004B9B 90                    3414 	.db 0x90
      004B9C E2                    3415 	.db 0xe2
      004B9D 95                    3416 	.db 0x95
      004B9E 90                    3417 	.db 0x90
      004B9F E2                    3418 	.db 0xe2
      004BA0 95                    3419 	.db 0x95
      004BA1 90                    3420 	.db 0x90
      004BA2 E2                    3421 	.db 0xe2
      004BA3 95                    3422 	.db 0x95
      004BA4 90                    3423 	.db 0x90
      004BA5 E2                    3424 	.db 0xe2
      004BA6 95                    3425 	.db 0x95
      004BA7 90                    3426 	.db 0x90
      004BA8 E2                    3427 	.db 0xe2
      004BA9 95                    3428 	.db 0x95
      004BAA 9D                    3429 	.db 0x9d
      004BAB 0A                    3430 	.db 0x0a
      004BAC 0D                    3431 	.db 0x0d
      004BAD 00                    3432 	.db 0x00
                                   3433 	.area CSEG    (CODE)
                                   3434 	.area CONST   (CODE)
      004BAE                       3435 ___str_3:
      004BAE 0A                    3436 	.db 0x0a
      004BAF 0D                    3437 	.db 0x0d
      004BB0 E2                    3438 	.db 0xe2
      004BB1 94                    3439 	.db 0x94
      004BB2 8C                    3440 	.db 0x8c
      004BB3 E2                    3441 	.db 0xe2
      004BB4 94                    3442 	.db 0x94
      004BB5 80                    3443 	.db 0x80
      004BB6 E2                    3444 	.db 0xe2
      004BB7 94                    3445 	.db 0x94
      004BB8 80                    3446 	.db 0x80
      004BB9 E2                    3447 	.db 0xe2
      004BBA 94                    3448 	.db 0x94
      004BBB 80                    3449 	.db 0x80
      004BBC E2                    3450 	.db 0xe2
      004BBD 94                    3451 	.db 0x94
      004BBE 80                    3452 	.db 0x80
      004BBF E2                    3453 	.db 0xe2
      004BC0 94                    3454 	.db 0x94
      004BC1 80                    3455 	.db 0x80
      004BC2 E2                    3456 	.db 0xe2
      004BC3 94                    3457 	.db 0x94
      004BC4 80                    3458 	.db 0x80
      004BC5 E2                    3459 	.db 0xe2
      004BC6 94                    3460 	.db 0x94
      004BC7 80                    3461 	.db 0x80
      004BC8 E2                    3462 	.db 0xe2
      004BC9 94                    3463 	.db 0x94
      004BCA 80                    3464 	.db 0x80
      004BCB E2                    3465 	.db 0xe2
      004BCC 94                    3466 	.db 0x94
      004BCD 80                    3467 	.db 0x80
      004BCE E2                    3468 	.db 0xe2
      004BCF 94                    3469 	.db 0x94
      004BD0 80                    3470 	.db 0x80
      004BD1 E2                    3471 	.db 0xe2
      004BD2 94                    3472 	.db 0x94
      004BD3 80                    3473 	.db 0x80
      004BD4 E2                    3474 	.db 0xe2
      004BD5 94                    3475 	.db 0x94
      004BD6 80                    3476 	.db 0x80
      004BD7 E2                    3477 	.db 0xe2
      004BD8 94                    3478 	.db 0x94
      004BD9 AC                    3479 	.db 0xac
      004BDA E2                    3480 	.db 0xe2
      004BDB 94                    3481 	.db 0x94
      004BDC 80                    3482 	.db 0x80
      004BDD E2                    3483 	.db 0xe2
      004BDE 94                    3484 	.db 0x94
      004BDF 80                    3485 	.db 0x80
      004BE0 E2                    3486 	.db 0xe2
      004BE1 94                    3487 	.db 0x94
      004BE2 80                    3488 	.db 0x80
      004BE3 E2                    3489 	.db 0xe2
      004BE4 94                    3490 	.db 0x94
      004BE5 80                    3491 	.db 0x80
      004BE6 E2                    3492 	.db 0xe2
      004BE7 94                    3493 	.db 0x94
      004BE8 80                    3494 	.db 0x80
      004BE9 E2                    3495 	.db 0xe2
      004BEA 94                    3496 	.db 0x94
      004BEB 80                    3497 	.db 0x80
      004BEC E2                    3498 	.db 0xe2
      004BED 94                    3499 	.db 0x94
      004BEE 80                    3500 	.db 0x80
      004BEF E2                    3501 	.db 0xe2
      004BF0 94                    3502 	.db 0x94
      004BF1 80                    3503 	.db 0x80
      004BF2 E2                    3504 	.db 0xe2
      004BF3 94                    3505 	.db 0x94
      004BF4 80                    3506 	.db 0x80
      004BF5 E2                    3507 	.db 0xe2
      004BF6 94                    3508 	.db 0x94
      004BF7 80                    3509 	.db 0x80
      004BF8 E2                    3510 	.db 0xe2
      004BF9 94                    3511 	.db 0x94
      004BFA 80                    3512 	.db 0x80
      004BFB E2                    3513 	.db 0xe2
      004BFC 94                    3514 	.db 0x94
      004BFD 80                    3515 	.db 0x80
      004BFE E2                    3516 	.db 0xe2
      004BFF 94                    3517 	.db 0x94
      004C00 80                    3518 	.db 0x80
      004C01 E2                    3519 	.db 0xe2
      004C02 94                    3520 	.db 0x94
      004C03 80                    3521 	.db 0x80
      004C04 E2                    3522 	.db 0xe2
      004C05 94                    3523 	.db 0x94
      004C06 80                    3524 	.db 0x80
      004C07 E2                    3525 	.db 0xe2
      004C08 94                    3526 	.db 0x94
      004C09 80                    3527 	.db 0x80
      004C0A E2                    3528 	.db 0xe2
      004C0B 94                    3529 	.db 0x94
      004C0C 80                    3530 	.db 0x80
      004C0D E2                    3531 	.db 0xe2
      004C0E 94                    3532 	.db 0x94
      004C0F 80                    3533 	.db 0x80
      004C10 E2                    3534 	.db 0xe2
      004C11 94                    3535 	.db 0x94
      004C12 80                    3536 	.db 0x80
      004C13 E2                    3537 	.db 0xe2
      004C14 94                    3538 	.db 0x94
      004C15 80                    3539 	.db 0x80
      004C16 E2                    3540 	.db 0xe2
      004C17 94                    3541 	.db 0x94
      004C18 80                    3542 	.db 0x80
      004C19 E2                    3543 	.db 0xe2
      004C1A 94                    3544 	.db 0x94
      004C1B 80                    3545 	.db 0x80
      004C1C E2                    3546 	.db 0xe2
      004C1D 94                    3547 	.db 0x94
      004C1E 80                    3548 	.db 0x80
      004C1F E2                    3549 	.db 0xe2
      004C20 94                    3550 	.db 0x94
      004C21 80                    3551 	.db 0x80
      004C22 E2                    3552 	.db 0xe2
      004C23 94                    3553 	.db 0x94
      004C24 80                    3554 	.db 0x80
      004C25 E2                    3555 	.db 0xe2
      004C26 94                    3556 	.db 0x94
      004C27 80                    3557 	.db 0x80
      004C28 E2                    3558 	.db 0xe2
      004C29 94                    3559 	.db 0x94
      004C2A 80                    3560 	.db 0x80
      004C2B E2                    3561 	.db 0xe2
      004C2C 94                    3562 	.db 0x94
      004C2D 80                    3563 	.db 0x80
      004C2E E2                    3564 	.db 0xe2
      004C2F 94                    3565 	.db 0x94
      004C30 80                    3566 	.db 0x80
      004C31 E2                    3567 	.db 0xe2
      004C32 94                    3568 	.db 0x94
      004C33 80                    3569 	.db 0x80
      004C34 E2                    3570 	.db 0xe2
      004C35 94                    3571 	.db 0x94
      004C36 80                    3572 	.db 0x80
      004C37 E2                    3573 	.db 0xe2
      004C38 94                    3574 	.db 0x94
      004C39 80                    3575 	.db 0x80
      004C3A E2                    3576 	.db 0xe2
      004C3B 94                    3577 	.db 0x94
      004C3C 80                    3578 	.db 0x80
      004C3D E2                    3579 	.db 0xe2
      004C3E 94                    3580 	.db 0x94
      004C3F 80                    3581 	.db 0x80
      004C40 E2                    3582 	.db 0xe2
      004C41 94                    3583 	.db 0x94
      004C42 80                    3584 	.db 0x80
      004C43 E2                    3585 	.db 0xe2
      004C44 94                    3586 	.db 0x94
      004C45 80                    3587 	.db 0x80
      004C46 E2                    3588 	.db 0xe2
      004C47 94                    3589 	.db 0x94
      004C48 80                    3590 	.db 0x80
      004C49 E2                    3591 	.db 0xe2
      004C4A 94                    3592 	.db 0x94
      004C4B 80                    3593 	.db 0x80
      004C4C E2                    3594 	.db 0xe2
      004C4D 94                    3595 	.db 0x94
      004C4E 80                    3596 	.db 0x80
      004C4F E2                    3597 	.db 0xe2
      004C50 94                    3598 	.db 0x94
      004C51 80                    3599 	.db 0x80
      004C52 E2                    3600 	.db 0xe2
      004C53 94                    3601 	.db 0x94
      004C54 80                    3602 	.db 0x80
      004C55 E2                    3603 	.db 0xe2
      004C56 94                    3604 	.db 0x94
      004C57 80                    3605 	.db 0x80
      004C58 E2                    3606 	.db 0xe2
      004C59 94                    3607 	.db 0x94
      004C5A 80                    3608 	.db 0x80
      004C5B E2                    3609 	.db 0xe2
      004C5C 94                    3610 	.db 0x94
      004C5D 80                    3611 	.db 0x80
      004C5E E2                    3612 	.db 0xe2
      004C5F 94                    3613 	.db 0x94
      004C60 90                    3614 	.db 0x90
      004C61 0A                    3615 	.db 0x0a
      004C62 0D                    3616 	.db 0x0d
      004C63 00                    3617 	.db 0x00
                                   3618 	.area CSEG    (CODE)
                                   3619 	.area CONST   (CODE)
      004C64                       3620 ___str_4:
      004C64 E2                    3621 	.db 0xe2
      004C65 94                    3622 	.db 0x94
      004C66 82                    3623 	.db 0x82
      004C67 20 20 43 6F 6D 6D 61  3624 	.ascii "  Command   "
             6E 64 20 20 20
      004C73 E2                    3625 	.db 0xe2
      004C74 94                    3626 	.db 0x94
      004C75 82                    3627 	.db 0x82
      004C76 20 20 20 20 20 20 20  3628 	.ascii "               Description                  "
             20 20 20 20 20 20 20
             20 44 65 73 63 72 69
             70 74 69 6F 6E 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004CA2 E2                    3629 	.db 0xe2
      004CA3 94                    3630 	.db 0x94
      004CA4 82                    3631 	.db 0x82
      004CA5 0A                    3632 	.db 0x0a
      004CA6 0D                    3633 	.db 0x0d
      004CA7 00                    3634 	.db 0x00
                                   3635 	.area CSEG    (CODE)
                                   3636 	.area CONST   (CODE)
      004CA8                       3637 ___str_5:
      004CA8 E2                    3638 	.db 0xe2
      004CA9 94                    3639 	.db 0x94
      004CAA 9C                    3640 	.db 0x9c
      004CAB E2                    3641 	.db 0xe2
      004CAC 94                    3642 	.db 0x94
      004CAD 80                    3643 	.db 0x80
      004CAE E2                    3644 	.db 0xe2
      004CAF 94                    3645 	.db 0x94
      004CB0 80                    3646 	.db 0x80
      004CB1 E2                    3647 	.db 0xe2
      004CB2 94                    3648 	.db 0x94
      004CB3 80                    3649 	.db 0x80
      004CB4 E2                    3650 	.db 0xe2
      004CB5 94                    3651 	.db 0x94
      004CB6 80                    3652 	.db 0x80
      004CB7 E2                    3653 	.db 0xe2
      004CB8 94                    3654 	.db 0x94
      004CB9 80                    3655 	.db 0x80
      004CBA E2                    3656 	.db 0xe2
      004CBB 94                    3657 	.db 0x94
      004CBC 80                    3658 	.db 0x80
      004CBD E2                    3659 	.db 0xe2
      004CBE 94                    3660 	.db 0x94
      004CBF 80                    3661 	.db 0x80
      004CC0 E2                    3662 	.db 0xe2
      004CC1 94                    3663 	.db 0x94
      004CC2 80                    3664 	.db 0x80
      004CC3 E2                    3665 	.db 0xe2
      004CC4 94                    3666 	.db 0x94
      004CC5 80                    3667 	.db 0x80
      004CC6 E2                    3668 	.db 0xe2
      004CC7 94                    3669 	.db 0x94
      004CC8 80                    3670 	.db 0x80
      004CC9 E2                    3671 	.db 0xe2
      004CCA 94                    3672 	.db 0x94
      004CCB 80                    3673 	.db 0x80
      004CCC E2                    3674 	.db 0xe2
      004CCD 94                    3675 	.db 0x94
      004CCE 80                    3676 	.db 0x80
      004CCF E2                    3677 	.db 0xe2
      004CD0 94                    3678 	.db 0x94
      004CD1 BC                    3679 	.db 0xbc
      004CD2 E2                    3680 	.db 0xe2
      004CD3 94                    3681 	.db 0x94
      004CD4 80                    3682 	.db 0x80
      004CD5 E2                    3683 	.db 0xe2
      004CD6 94                    3684 	.db 0x94
      004CD7 80                    3685 	.db 0x80
      004CD8 E2                    3686 	.db 0xe2
      004CD9 94                    3687 	.db 0x94
      004CDA 80                    3688 	.db 0x80
      004CDB E2                    3689 	.db 0xe2
      004CDC 94                    3690 	.db 0x94
      004CDD 80                    3691 	.db 0x80
      004CDE E2                    3692 	.db 0xe2
      004CDF 94                    3693 	.db 0x94
      004CE0 80                    3694 	.db 0x80
      004CE1 E2                    3695 	.db 0xe2
      004CE2 94                    3696 	.db 0x94
      004CE3 80                    3697 	.db 0x80
      004CE4 E2                    3698 	.db 0xe2
      004CE5 94                    3699 	.db 0x94
      004CE6 80                    3700 	.db 0x80
      004CE7 E2                    3701 	.db 0xe2
      004CE8 94                    3702 	.db 0x94
      004CE9 80                    3703 	.db 0x80
      004CEA E2                    3704 	.db 0xe2
      004CEB 94                    3705 	.db 0x94
      004CEC 80                    3706 	.db 0x80
      004CED E2                    3707 	.db 0xe2
      004CEE 94                    3708 	.db 0x94
      004CEF 80                    3709 	.db 0x80
      004CF0 E2                    3710 	.db 0xe2
      004CF1 94                    3711 	.db 0x94
      004CF2 80                    3712 	.db 0x80
      004CF3 E2                    3713 	.db 0xe2
      004CF4 94                    3714 	.db 0x94
      004CF5 80                    3715 	.db 0x80
      004CF6 E2                    3716 	.db 0xe2
      004CF7 94                    3717 	.db 0x94
      004CF8 80                    3718 	.db 0x80
      004CF9 E2                    3719 	.db 0xe2
      004CFA 94                    3720 	.db 0x94
      004CFB 80                    3721 	.db 0x80
      004CFC E2                    3722 	.db 0xe2
      004CFD 94                    3723 	.db 0x94
      004CFE 80                    3724 	.db 0x80
      004CFF E2                    3725 	.db 0xe2
      004D00 94                    3726 	.db 0x94
      004D01 80                    3727 	.db 0x80
      004D02 E2                    3728 	.db 0xe2
      004D03 94                    3729 	.db 0x94
      004D04 80                    3730 	.db 0x80
      004D05 E2                    3731 	.db 0xe2
      004D06 94                    3732 	.db 0x94
      004D07 80                    3733 	.db 0x80
      004D08 E2                    3734 	.db 0xe2
      004D09 94                    3735 	.db 0x94
      004D0A 80                    3736 	.db 0x80
      004D0B E2                    3737 	.db 0xe2
      004D0C 94                    3738 	.db 0x94
      004D0D 80                    3739 	.db 0x80
      004D0E E2                    3740 	.db 0xe2
      004D0F 94                    3741 	.db 0x94
      004D10 80                    3742 	.db 0x80
      004D11 E2                    3743 	.db 0xe2
      004D12 94                    3744 	.db 0x94
      004D13 80                    3745 	.db 0x80
      004D14 E2                    3746 	.db 0xe2
      004D15 94                    3747 	.db 0x94
      004D16 80                    3748 	.db 0x80
      004D17 E2                    3749 	.db 0xe2
      004D18 94                    3750 	.db 0x94
      004D19 80                    3751 	.db 0x80
      004D1A E2                    3752 	.db 0xe2
      004D1B 94                    3753 	.db 0x94
      004D1C 80                    3754 	.db 0x80
      004D1D E2                    3755 	.db 0xe2
      004D1E 94                    3756 	.db 0x94
      004D1F 80                    3757 	.db 0x80
      004D20 E2                    3758 	.db 0xe2
      004D21 94                    3759 	.db 0x94
      004D22 80                    3760 	.db 0x80
      004D23 E2                    3761 	.db 0xe2
      004D24 94                    3762 	.db 0x94
      004D25 80                    3763 	.db 0x80
      004D26 E2                    3764 	.db 0xe2
      004D27 94                    3765 	.db 0x94
      004D28 80                    3766 	.db 0x80
      004D29 E2                    3767 	.db 0xe2
      004D2A 94                    3768 	.db 0x94
      004D2B 80                    3769 	.db 0x80
      004D2C E2                    3770 	.db 0xe2
      004D2D 94                    3771 	.db 0x94
      004D2E 80                    3772 	.db 0x80
      004D2F E2                    3773 	.db 0xe2
      004D30 94                    3774 	.db 0x94
      004D31 80                    3775 	.db 0x80
      004D32 E2                    3776 	.db 0xe2
      004D33 94                    3777 	.db 0x94
      004D34 80                    3778 	.db 0x80
      004D35 E2                    3779 	.db 0xe2
      004D36 94                    3780 	.db 0x94
      004D37 80                    3781 	.db 0x80
      004D38 E2                    3782 	.db 0xe2
      004D39 94                    3783 	.db 0x94
      004D3A 80                    3784 	.db 0x80
      004D3B E2                    3785 	.db 0xe2
      004D3C 94                    3786 	.db 0x94
      004D3D 80                    3787 	.db 0x80
      004D3E E2                    3788 	.db 0xe2
      004D3F 94                    3789 	.db 0x94
      004D40 80                    3790 	.db 0x80
      004D41 E2                    3791 	.db 0xe2
      004D42 94                    3792 	.db 0x94
      004D43 80                    3793 	.db 0x80
      004D44 E2                    3794 	.db 0xe2
      004D45 94                    3795 	.db 0x94
      004D46 80                    3796 	.db 0x80
      004D47 E2                    3797 	.db 0xe2
      004D48 94                    3798 	.db 0x94
      004D49 80                    3799 	.db 0x80
      004D4A E2                    3800 	.db 0xe2
      004D4B 94                    3801 	.db 0x94
      004D4C 80                    3802 	.db 0x80
      004D4D E2                    3803 	.db 0xe2
      004D4E 94                    3804 	.db 0x94
      004D4F 80                    3805 	.db 0x80
      004D50 E2                    3806 	.db 0xe2
      004D51 94                    3807 	.db 0x94
      004D52 80                    3808 	.db 0x80
      004D53 E2                    3809 	.db 0xe2
      004D54 94                    3810 	.db 0x94
      004D55 80                    3811 	.db 0x80
      004D56 E2                    3812 	.db 0xe2
      004D57 94                    3813 	.db 0x94
      004D58 A4                    3814 	.db 0xa4
      004D59 0A                    3815 	.db 0x0a
      004D5A 0D                    3816 	.db 0x0d
      004D5B 00                    3817 	.db 0x00
                                   3818 	.area CSEG    (CODE)
                                   3819 	.area CONST   (CODE)
      004D5C                       3820 ___str_6:
      004D5C E2                    3821 	.db 0xe2
      004D5D 94                    3822 	.db 0x94
      004D5E 82                    3823 	.db 0x82
      004D5F 20 20 20 20 20 52 20  3824 	.ascii "     R      "
             20 20 20 20 20
      004D6B E2                    3825 	.db 0xe2
      004D6C 94                    3826 	.db 0x94
      004D6D 82                    3827 	.db 0x82
      004D6E 20 52 65 61 64 20 66  3828 	.ascii " Read from address                          "
             72 6F 6D 20 61 64 64
             72 65 73 73 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004D9A E2                    3829 	.db 0xe2
      004D9B 94                    3830 	.db 0x94
      004D9C 82                    3831 	.db 0x82
      004D9D 0A                    3832 	.db 0x0a
      004D9E 0D                    3833 	.db 0x0d
      004D9F 00                    3834 	.db 0x00
                                   3835 	.area CSEG    (CODE)
                                   3836 	.area CONST   (CODE)
      004DA0                       3837 ___str_7:
      004DA0 E2                    3838 	.db 0xe2
      004DA1 94                    3839 	.db 0x94
      004DA2 82                    3840 	.db 0x82
      004DA3 20 20 20 20 20 57 20  3841 	.ascii "     W      "
             20 20 20 20 20
      004DAF E2                    3842 	.db 0xe2
      004DB0 94                    3843 	.db 0x94
      004DB1 82                    3844 	.db 0x82
      004DB2 20 57 72 69 74 65 20  3845 	.ascii " Write data to address                      "
             64 61 74 61 20 74 6F
             20 61 64 64 72 65 73
             73 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004DDE E2                    3846 	.db 0xe2
      004DDF 94                    3847 	.db 0x94
      004DE0 82                    3848 	.db 0x82
      004DE1 0A                    3849 	.db 0x0a
      004DE2 0D                    3850 	.db 0x0d
      004DE3 00                    3851 	.db 0x00
                                   3852 	.area CSEG    (CODE)
                                   3853 	.area CONST   (CODE)
      004DE4                       3854 ___str_8:
      004DE4 E2                    3855 	.db 0xe2
      004DE5 94                    3856 	.db 0x94
      004DE6 82                    3857 	.db 0x82
      004DE7 20 20 20 20 20 48 20  3858 	.ascii "     H      "
             20 20 20 20 20
      004DF3 E2                    3859 	.db 0xe2
      004DF4 94                    3860 	.db 0x94
      004DF5 82                    3861 	.db 0x82
      004DF6 20 44 69 73 70 6C 61  3862 	.ascii " Display hex dump                           "
             79 20 68 65 78 20 64
             75 6D 70 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004E22 E2                    3863 	.db 0xe2
      004E23 94                    3864 	.db 0x94
      004E24 82                    3865 	.db 0x82
      004E25 0A                    3866 	.db 0x0a
      004E26 0D                    3867 	.db 0x0d
      004E27 00                    3868 	.db 0x00
                                   3869 	.area CSEG    (CODE)
                                   3870 	.area CONST   (CODE)
      004E28                       3871 ___str_9:
      004E28 E2                    3872 	.db 0xe2
      004E29 94                    3873 	.db 0x94
      004E2A 82                    3874 	.db 0x82
      004E2B 20 20 20 20 20 58 20  3875 	.ascii "     X      "
             20 20 20 20 20
      004E37 E2                    3876 	.db 0xe2
      004E38 94                    3877 	.db 0x94
      004E39 82                    3878 	.db 0x82
      004E3A 20 52 65 73 65 74 20  3879 	.ascii " Reset memory system                        "
             6D 65 6D 6F 72 79 20
             73 79 73 74 65 6D 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004E66 E2                    3880 	.db 0xe2
      004E67 94                    3881 	.db 0x94
      004E68 82                    3882 	.db 0x82
      004E69 0A                    3883 	.db 0x0a
      004E6A 0D                    3884 	.db 0x0d
      004E6B 00                    3885 	.db 0x00
                                   3886 	.area CSEG    (CODE)
                                   3887 	.area CONST   (CODE)
      004E6C                       3888 ___str_10:
      004E6C E2                    3889 	.db 0xe2
      004E6D 94                    3890 	.db 0x94
      004E6E 82                    3891 	.db 0x82
      004E6F 20 20 20 20 20 3F 20  3892 	.ascii "     ?      "
             20 20 20 20 20
      004E7B E2                    3893 	.db 0xe2
      004E7C 94                    3894 	.db 0x94
      004E7D 82                    3895 	.db 0x82
      004E7E 20 44 69 73 70 6C 61  3896 	.ascii " Display this help menu                     "
             79 20 74 68 69 73 20
             68 65 6C 70 20 6D 65
             6E 75 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004EAA E2                    3897 	.db 0xe2
      004EAB 94                    3898 	.db 0x94
      004EAC 82                    3899 	.db 0x82
      004EAD 0A                    3900 	.db 0x0a
      004EAE 0D                    3901 	.db 0x0d
      004EAF 00                    3902 	.db 0x00
                                   3903 	.area CSEG    (CODE)
                                   3904 	.area CONST   (CODE)
      004EB0                       3905 ___str_11:
      004EB0 E2                    3906 	.db 0xe2
      004EB1 94                    3907 	.db 0x94
      004EB2 82                    3908 	.db 0x82
      004EB3 20 20 20 20 20 51 20  3909 	.ascii "     Q      "
             20 20 20 20 20
      004EBF E2                    3910 	.db 0xe2
      004EC0 94                    3911 	.db 0x94
      004EC1 82                    3912 	.db 0x82
      004EC2 20 51 75 69 74 20 70  3913 	.ascii " Quit program                               "
             72 6F 67 72 61 6D 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004EEE E2                    3914 	.db 0xe2
      004EEF 94                    3915 	.db 0x94
      004EF0 82                    3916 	.db 0x82
      004EF1 0A                    3917 	.db 0x0a
      004EF2 0D                    3918 	.db 0x0d
      004EF3 00                    3919 	.db 0x00
                                   3920 	.area CSEG    (CODE)
                                   3921 	.area CONST   (CODE)
      004EF4                       3922 ___str_12:
      004EF4 E2                    3923 	.db 0xe2
      004EF5 94                    3924 	.db 0x94
      004EF6 94                    3925 	.db 0x94
      004EF7 E2                    3926 	.db 0xe2
      004EF8 94                    3927 	.db 0x94
      004EF9 80                    3928 	.db 0x80
      004EFA E2                    3929 	.db 0xe2
      004EFB 94                    3930 	.db 0x94
      004EFC 80                    3931 	.db 0x80
      004EFD E2                    3932 	.db 0xe2
      004EFE 94                    3933 	.db 0x94
      004EFF 80                    3934 	.db 0x80
      004F00 E2                    3935 	.db 0xe2
      004F01 94                    3936 	.db 0x94
      004F02 80                    3937 	.db 0x80
      004F03 E2                    3938 	.db 0xe2
      004F04 94                    3939 	.db 0x94
      004F05 80                    3940 	.db 0x80
      004F06 E2                    3941 	.db 0xe2
      004F07 94                    3942 	.db 0x94
      004F08 80                    3943 	.db 0x80
      004F09 E2                    3944 	.db 0xe2
      004F0A 94                    3945 	.db 0x94
      004F0B 80                    3946 	.db 0x80
      004F0C E2                    3947 	.db 0xe2
      004F0D 94                    3948 	.db 0x94
      004F0E 80                    3949 	.db 0x80
      004F0F E2                    3950 	.db 0xe2
      004F10 94                    3951 	.db 0x94
      004F11 80                    3952 	.db 0x80
      004F12 E2                    3953 	.db 0xe2
      004F13 94                    3954 	.db 0x94
      004F14 80                    3955 	.db 0x80
      004F15 E2                    3956 	.db 0xe2
      004F16 94                    3957 	.db 0x94
      004F17 80                    3958 	.db 0x80
      004F18 E2                    3959 	.db 0xe2
      004F19 94                    3960 	.db 0x94
      004F1A 80                    3961 	.db 0x80
      004F1B E2                    3962 	.db 0xe2
      004F1C 94                    3963 	.db 0x94
      004F1D B4                    3964 	.db 0xb4
      004F1E E2                    3965 	.db 0xe2
      004F1F 94                    3966 	.db 0x94
      004F20 80                    3967 	.db 0x80
      004F21 E2                    3968 	.db 0xe2
      004F22 94                    3969 	.db 0x94
      004F23 80                    3970 	.db 0x80
      004F24 E2                    3971 	.db 0xe2
      004F25 94                    3972 	.db 0x94
      004F26 80                    3973 	.db 0x80
      004F27 E2                    3974 	.db 0xe2
      004F28 94                    3975 	.db 0x94
      004F29 80                    3976 	.db 0x80
      004F2A E2                    3977 	.db 0xe2
      004F2B 94                    3978 	.db 0x94
      004F2C 80                    3979 	.db 0x80
      004F2D E2                    3980 	.db 0xe2
      004F2E 94                    3981 	.db 0x94
      004F2F 80                    3982 	.db 0x80
      004F30 E2                    3983 	.db 0xe2
      004F31 94                    3984 	.db 0x94
      004F32 80                    3985 	.db 0x80
      004F33 E2                    3986 	.db 0xe2
      004F34 94                    3987 	.db 0x94
      004F35 80                    3988 	.db 0x80
      004F36 E2                    3989 	.db 0xe2
      004F37 94                    3990 	.db 0x94
      004F38 80                    3991 	.db 0x80
      004F39 E2                    3992 	.db 0xe2
      004F3A 94                    3993 	.db 0x94
      004F3B 80                    3994 	.db 0x80
      004F3C E2                    3995 	.db 0xe2
      004F3D 94                    3996 	.db 0x94
      004F3E 80                    3997 	.db 0x80
      004F3F E2                    3998 	.db 0xe2
      004F40 94                    3999 	.db 0x94
      004F41 80                    4000 	.db 0x80
      004F42 E2                    4001 	.db 0xe2
      004F43 94                    4002 	.db 0x94
      004F44 80                    4003 	.db 0x80
      004F45 E2                    4004 	.db 0xe2
      004F46 94                    4005 	.db 0x94
      004F47 80                    4006 	.db 0x80
      004F48 E2                    4007 	.db 0xe2
      004F49 94                    4008 	.db 0x94
      004F4A 80                    4009 	.db 0x80
      004F4B E2                    4010 	.db 0xe2
      004F4C 94                    4011 	.db 0x94
      004F4D 80                    4012 	.db 0x80
      004F4E E2                    4013 	.db 0xe2
      004F4F 94                    4014 	.db 0x94
      004F50 80                    4015 	.db 0x80
      004F51 E2                    4016 	.db 0xe2
      004F52 94                    4017 	.db 0x94
      004F53 80                    4018 	.db 0x80
      004F54 E2                    4019 	.db 0xe2
      004F55 94                    4020 	.db 0x94
      004F56 80                    4021 	.db 0x80
      004F57 E2                    4022 	.db 0xe2
      004F58 94                    4023 	.db 0x94
      004F59 80                    4024 	.db 0x80
      004F5A E2                    4025 	.db 0xe2
      004F5B 94                    4026 	.db 0x94
      004F5C 80                    4027 	.db 0x80
      004F5D E2                    4028 	.db 0xe2
      004F5E 94                    4029 	.db 0x94
      004F5F 80                    4030 	.db 0x80
      004F60 E2                    4031 	.db 0xe2
      004F61 94                    4032 	.db 0x94
      004F62 80                    4033 	.db 0x80
      004F63 E2                    4034 	.db 0xe2
      004F64 94                    4035 	.db 0x94
      004F65 80                    4036 	.db 0x80
      004F66 E2                    4037 	.db 0xe2
      004F67 94                    4038 	.db 0x94
      004F68 80                    4039 	.db 0x80
      004F69 E2                    4040 	.db 0xe2
      004F6A 94                    4041 	.db 0x94
      004F6B 80                    4042 	.db 0x80
      004F6C E2                    4043 	.db 0xe2
      004F6D 94                    4044 	.db 0x94
      004F6E 80                    4045 	.db 0x80
      004F6F E2                    4046 	.db 0xe2
      004F70 94                    4047 	.db 0x94
      004F71 80                    4048 	.db 0x80
      004F72 E2                    4049 	.db 0xe2
      004F73 94                    4050 	.db 0x94
      004F74 80                    4051 	.db 0x80
      004F75 E2                    4052 	.db 0xe2
      004F76 94                    4053 	.db 0x94
      004F77 80                    4054 	.db 0x80
      004F78 E2                    4055 	.db 0xe2
      004F79 94                    4056 	.db 0x94
      004F7A 80                    4057 	.db 0x80
      004F7B E2                    4058 	.db 0xe2
      004F7C 94                    4059 	.db 0x94
      004F7D 80                    4060 	.db 0x80
      004F7E E2                    4061 	.db 0xe2
      004F7F 94                    4062 	.db 0x94
      004F80 80                    4063 	.db 0x80
      004F81 E2                    4064 	.db 0xe2
      004F82 94                    4065 	.db 0x94
      004F83 80                    4066 	.db 0x80
      004F84 E2                    4067 	.db 0xe2
      004F85 94                    4068 	.db 0x94
      004F86 80                    4069 	.db 0x80
      004F87 E2                    4070 	.db 0xe2
      004F88 94                    4071 	.db 0x94
      004F89 80                    4072 	.db 0x80
      004F8A E2                    4073 	.db 0xe2
      004F8B 94                    4074 	.db 0x94
      004F8C 80                    4075 	.db 0x80
      004F8D E2                    4076 	.db 0xe2
      004F8E 94                    4077 	.db 0x94
      004F8F 80                    4078 	.db 0x80
      004F90 E2                    4079 	.db 0xe2
      004F91 94                    4080 	.db 0x94
      004F92 80                    4081 	.db 0x80
      004F93 E2                    4082 	.db 0xe2
      004F94 94                    4083 	.db 0x94
      004F95 80                    4084 	.db 0x80
      004F96 E2                    4085 	.db 0xe2
      004F97 94                    4086 	.db 0x94
      004F98 80                    4087 	.db 0x80
      004F99 E2                    4088 	.db 0xe2
      004F9A 94                    4089 	.db 0x94
      004F9B 80                    4090 	.db 0x80
      004F9C E2                    4091 	.db 0xe2
      004F9D 94                    4092 	.db 0x94
      004F9E 80                    4093 	.db 0x80
      004F9F E2                    4094 	.db 0xe2
      004FA0 94                    4095 	.db 0x94
      004FA1 80                    4096 	.db 0x80
      004FA2 E2                    4097 	.db 0xe2
      004FA3 94                    4098 	.db 0x94
      004FA4 98                    4099 	.db 0x98
      004FA5 0A                    4100 	.db 0x0a
      004FA6 0D                    4101 	.db 0x0d
      004FA7 00                    4102 	.db 0x00
                                   4103 	.area CSEG    (CODE)
                                   4104 	.area CONST   (CODE)
      004FA8                       4105 ___str_13:
      004FA8 7C 20 24 20 25 63     4106 	.ascii "| $ %c"
      004FAE 0A                    4107 	.db 0x0a
      004FAF 0D                    4108 	.db 0x0d
      004FB0 00                    4109 	.db 0x00
                                   4110 	.area CSEG    (CODE)
                                   4111 	.area CONST   (CODE)
      004FB1                       4112 ___str_14:
      004FB1 0A                    4113 	.db 0x0a
      004FB2 0D                    4114 	.db 0x0d
      004FB3 00                    4115 	.db 0x00
                                   4116 	.area CSEG    (CODE)
                                   4117 	.area CONST   (CODE)
      004FB4                       4118 ___str_15:
      004FB4 0A                    4119 	.db 0x0a
      004FB5 E2                    4120 	.db 0xe2
      004FB6 94                    4121 	.db 0x94
      004FB7 8C                    4122 	.db 0x8c
      004FB8 E2                    4123 	.db 0xe2
      004FB9 94                    4124 	.db 0x94
      004FBA 80                    4125 	.db 0x80
      004FBB E2                    4126 	.db 0xe2
      004FBC 94                    4127 	.db 0x94
      004FBD 80                    4128 	.db 0x80
      004FBE E2                    4129 	.db 0xe2
      004FBF 94                    4130 	.db 0x94
      004FC0 80                    4131 	.db 0x80
      004FC1 E2                    4132 	.db 0xe2
      004FC2 94                    4133 	.db 0x94
      004FC3 80                    4134 	.db 0x80
      004FC4 E2                    4135 	.db 0xe2
      004FC5 94                    4136 	.db 0x94
      004FC6 80                    4137 	.db 0x80
      004FC7 E2                    4138 	.db 0xe2
      004FC8 94                    4139 	.db 0x94
      004FC9 80                    4140 	.db 0x80
      004FCA E2                    4141 	.db 0xe2
      004FCB 94                    4142 	.db 0x94
      004FCC 80                    4143 	.db 0x80
      004FCD E2                    4144 	.db 0xe2
      004FCE 94                    4145 	.db 0x94
      004FCF 80                    4146 	.db 0x80
      004FD0 E2                    4147 	.db 0xe2
      004FD1 94                    4148 	.db 0x94
      004FD2 80                    4149 	.db 0x80
      004FD3 E2                    4150 	.db 0xe2
      004FD4 94                    4151 	.db 0x94
      004FD5 80                    4152 	.db 0x80
      004FD6 E2                    4153 	.db 0xe2
      004FD7 94                    4154 	.db 0x94
      004FD8 80                    4155 	.db 0x80
      004FD9 E2                    4156 	.db 0xe2
      004FDA 94                    4157 	.db 0x94
      004FDB 80                    4158 	.db 0x80
      004FDC E2                    4159 	.db 0xe2
      004FDD 94                    4160 	.db 0x94
      004FDE 80                    4161 	.db 0x80
      004FDF E2                    4162 	.db 0xe2
      004FE0 94                    4163 	.db 0x94
      004FE1 80                    4164 	.db 0x80
      004FE2 E2                    4165 	.db 0xe2
      004FE3 94                    4166 	.db 0x94
      004FE4 80                    4167 	.db 0x80
      004FE5 20 57 52 49 54 45 20  4168 	.ascii " WRITE OPERATION "
             4F 50 45 52 41 54 49
             4F 4E 20
      004FF6 E2                    4169 	.db 0xe2
      004FF7 94                    4170 	.db 0x94
      004FF8 80                    4171 	.db 0x80
      004FF9 E2                    4172 	.db 0xe2
      004FFA 94                    4173 	.db 0x94
      004FFB 80                    4174 	.db 0x80
      004FFC E2                    4175 	.db 0xe2
      004FFD 94                    4176 	.db 0x94
      004FFE 80                    4177 	.db 0x80
      004FFF E2                    4178 	.db 0xe2
      005000 94                    4179 	.db 0x94
      005001 80                    4180 	.db 0x80
      005002 E2                    4181 	.db 0xe2
      005003 94                    4182 	.db 0x94
      005004 80                    4183 	.db 0x80
      005005 E2                    4184 	.db 0xe2
      005006 94                    4185 	.db 0x94
      005007 80                    4186 	.db 0x80
      005008 E2                    4187 	.db 0xe2
      005009 94                    4188 	.db 0x94
      00500A 80                    4189 	.db 0x80
      00500B E2                    4190 	.db 0xe2
      00500C 94                    4191 	.db 0x94
      00500D 80                    4192 	.db 0x80
      00500E E2                    4193 	.db 0xe2
      00500F 94                    4194 	.db 0x94
      005010 80                    4195 	.db 0x80
      005011 E2                    4196 	.db 0xe2
      005012 94                    4197 	.db 0x94
      005013 80                    4198 	.db 0x80
      005014 E2                    4199 	.db 0xe2
      005015 94                    4200 	.db 0x94
      005016 80                    4201 	.db 0x80
      005017 E2                    4202 	.db 0xe2
      005018 94                    4203 	.db 0x94
      005019 80                    4204 	.db 0x80
      00501A E2                    4205 	.db 0xe2
      00501B 94                    4206 	.db 0x94
      00501C 80                    4207 	.db 0x80
      00501D E2                    4208 	.db 0xe2
      00501E 94                    4209 	.db 0x94
      00501F 80                    4210 	.db 0x80
      005020 E2                    4211 	.db 0xe2
      005021 94                    4212 	.db 0x94
      005022 90                    4213 	.db 0x90
      005023 0A                    4214 	.db 0x0a
      005024 0D                    4215 	.db 0x0d
      005025 00                    4216 	.db 0x00
                                   4217 	.area CSEG    (CODE)
                                   4218 	.area CONST   (CODE)
      005026                       4219 ___str_16:
      005026 0A                    4220 	.db 0x0a
      005027 E2                    4221 	.db 0xe2
      005028 94                    4222 	.db 0x94
      005029 8C                    4223 	.db 0x8c
      00502A E2                    4224 	.db 0xe2
      00502B 94                    4225 	.db 0x94
      00502C 80                    4226 	.db 0x80
      00502D E2                    4227 	.db 0xe2
      00502E 94                    4228 	.db 0x94
      00502F 80                    4229 	.db 0x80
      005030 E2                    4230 	.db 0xe2
      005031 94                    4231 	.db 0x94
      005032 80                    4232 	.db 0x80
      005033 E2                    4233 	.db 0xe2
      005034 94                    4234 	.db 0x94
      005035 80                    4235 	.db 0x80
      005036 E2                    4236 	.db 0xe2
      005037 94                    4237 	.db 0x94
      005038 80                    4238 	.db 0x80
      005039 E2                    4239 	.db 0xe2
      00503A 94                    4240 	.db 0x94
      00503B 80                    4241 	.db 0x80
      00503C E2                    4242 	.db 0xe2
      00503D 94                    4243 	.db 0x94
      00503E 80                    4244 	.db 0x80
      00503F E2                    4245 	.db 0xe2
      005040 94                    4246 	.db 0x94
      005041 80                    4247 	.db 0x80
      005042 E2                    4248 	.db 0xe2
      005043 94                    4249 	.db 0x94
      005044 80                    4250 	.db 0x80
      005045 E2                    4251 	.db 0xe2
      005046 94                    4252 	.db 0x94
      005047 80                    4253 	.db 0x80
      005048 E2                    4254 	.db 0xe2
      005049 94                    4255 	.db 0x94
      00504A 80                    4256 	.db 0x80
      00504B E2                    4257 	.db 0xe2
      00504C 94                    4258 	.db 0x94
      00504D 80                    4259 	.db 0x80
      00504E E2                    4260 	.db 0xe2
      00504F 94                    4261 	.db 0x94
      005050 80                    4262 	.db 0x80
      005051 E2                    4263 	.db 0xe2
      005052 94                    4264 	.db 0x94
      005053 80                    4265 	.db 0x80
      005054 E2                    4266 	.db 0xe2
      005055 94                    4267 	.db 0x94
      005056 80                    4268 	.db 0x80
      005057 20 52 45 41 44 20 4F  4269 	.ascii " READ OPERATION "
             50 45 52 41 54 49 4F
             4E 20
      005067 E2                    4270 	.db 0xe2
      005068 94                    4271 	.db 0x94
      005069 80                    4272 	.db 0x80
      00506A E2                    4273 	.db 0xe2
      00506B 94                    4274 	.db 0x94
      00506C 80                    4275 	.db 0x80
      00506D E2                    4276 	.db 0xe2
      00506E 94                    4277 	.db 0x94
      00506F 80                    4278 	.db 0x80
      005070 E2                    4279 	.db 0xe2
      005071 94                    4280 	.db 0x94
      005072 80                    4281 	.db 0x80
      005073 E2                    4282 	.db 0xe2
      005074 94                    4283 	.db 0x94
      005075 80                    4284 	.db 0x80
      005076 E2                    4285 	.db 0xe2
      005077 94                    4286 	.db 0x94
      005078 80                    4287 	.db 0x80
      005079 E2                    4288 	.db 0xe2
      00507A 94                    4289 	.db 0x94
      00507B 80                    4290 	.db 0x80
      00507C E2                    4291 	.db 0xe2
      00507D 94                    4292 	.db 0x94
      00507E 80                    4293 	.db 0x80
      00507F E2                    4294 	.db 0xe2
      005080 94                    4295 	.db 0x94
      005081 80                    4296 	.db 0x80
      005082 E2                    4297 	.db 0xe2
      005083 94                    4298 	.db 0x94
      005084 80                    4299 	.db 0x80
      005085 E2                    4300 	.db 0xe2
      005086 94                    4301 	.db 0x94
      005087 80                    4302 	.db 0x80
      005088 E2                    4303 	.db 0xe2
      005089 94                    4304 	.db 0x94
      00508A 80                    4305 	.db 0x80
      00508B E2                    4306 	.db 0xe2
      00508C 94                    4307 	.db 0x94
      00508D 80                    4308 	.db 0x80
      00508E E2                    4309 	.db 0xe2
      00508F 94                    4310 	.db 0x94
      005090 80                    4311 	.db 0x80
      005091 E2                    4312 	.db 0xe2
      005092 94                    4313 	.db 0x94
      005093 80                    4314 	.db 0x80
      005094 E2                    4315 	.db 0xe2
      005095 94                    4316 	.db 0x94
      005096 90                    4317 	.db 0x90
      005097 0A                    4318 	.db 0x0a
      005098 0D                    4319 	.db 0x0d
      005099 00                    4320 	.db 0x00
                                   4321 	.area CSEG    (CODE)
                                   4322 	.area CONST   (CODE)
      00509A                       4323 ___str_17:
      00509A 7C 20 52 65 61 64 69  4324 	.ascii "| Reading from Address 0x%03X           |"
             6E 67 20 66 72 6F 6D
             20 41 64 64 72 65 73
             73 20 30 78 25 30 33
             58 20 20 20 20 20 20
             20 20 20 20 20 7C
      0050C3 0A                    4325 	.db 0x0a
      0050C4 0D                    4326 	.db 0x0d
      0050C5 00                    4327 	.db 0x00
                                   4328 	.area CSEG    (CODE)
                                   4329 	.area CONST   (CODE)
      0050C6                       4330 ___str_18:
      0050C6 0A                    4331 	.db 0x0a
      0050C7 E2                    4332 	.db 0xe2
      0050C8 94                    4333 	.db 0x94
      0050C9 8C                    4334 	.db 0x8c
      0050CA E2                    4335 	.db 0xe2
      0050CB 94                    4336 	.db 0x94
      0050CC 80                    4337 	.db 0x80
      0050CD E2                    4338 	.db 0xe2
      0050CE 94                    4339 	.db 0x94
      0050CF 80                    4340 	.db 0x80
      0050D0 E2                    4341 	.db 0xe2
      0050D1 94                    4342 	.db 0x94
      0050D2 80                    4343 	.db 0x80
      0050D3 E2                    4344 	.db 0xe2
      0050D4 94                    4345 	.db 0x94
      0050D5 80                    4346 	.db 0x80
      0050D6 E2                    4347 	.db 0xe2
      0050D7 94                    4348 	.db 0x94
      0050D8 80                    4349 	.db 0x80
      0050D9 E2                    4350 	.db 0xe2
      0050DA 94                    4351 	.db 0x94
      0050DB 80                    4352 	.db 0x80
      0050DC E2                    4353 	.db 0xe2
      0050DD 94                    4354 	.db 0x94
      0050DE 80                    4355 	.db 0x80
      0050DF E2                    4356 	.db 0xe2
      0050E0 94                    4357 	.db 0x94
      0050E1 80                    4358 	.db 0x80
      0050E2 E2                    4359 	.db 0xe2
      0050E3 94                    4360 	.db 0x94
      0050E4 80                    4361 	.db 0x80
      0050E5 E2                    4362 	.db 0xe2
      0050E6 94                    4363 	.db 0x94
      0050E7 80                    4364 	.db 0x80
      0050E8 E2                    4365 	.db 0xe2
      0050E9 94                    4366 	.db 0x94
      0050EA 80                    4367 	.db 0x80
      0050EB E2                    4368 	.db 0xe2
      0050EC 94                    4369 	.db 0x94
      0050ED 80                    4370 	.db 0x80
      0050EE E2                    4371 	.db 0xe2
      0050EF 94                    4372 	.db 0x94
      0050F0 80                    4373 	.db 0x80
      0050F1 E2                    4374 	.db 0xe2
      0050F2 94                    4375 	.db 0x94
      0050F3 80                    4376 	.db 0x80
      0050F4 E2                    4377 	.db 0xe2
      0050F5 94                    4378 	.db 0x94
      0050F6 80                    4379 	.db 0x80
      0050F7 20 52 45 53 45 54 20  4380 	.ascii " RESET OPERATION "
             4F 50 45 52 41 54 49
             4F 4E 20
      005108 E2                    4381 	.db 0xe2
      005109 94                    4382 	.db 0x94
      00510A 80                    4383 	.db 0x80
      00510B E2                    4384 	.db 0xe2
      00510C 94                    4385 	.db 0x94
      00510D 80                    4386 	.db 0x80
      00510E E2                    4387 	.db 0xe2
      00510F 94                    4388 	.db 0x94
      005110 80                    4389 	.db 0x80
      005111 E2                    4390 	.db 0xe2
      005112 94                    4391 	.db 0x94
      005113 80                    4392 	.db 0x80
      005114 E2                    4393 	.db 0xe2
      005115 94                    4394 	.db 0x94
      005116 80                    4395 	.db 0x80
      005117 E2                    4396 	.db 0xe2
      005118 94                    4397 	.db 0x94
      005119 80                    4398 	.db 0x80
      00511A E2                    4399 	.db 0xe2
      00511B 94                    4400 	.db 0x94
      00511C 80                    4401 	.db 0x80
      00511D E2                    4402 	.db 0xe2
      00511E 94                    4403 	.db 0x94
      00511F 80                    4404 	.db 0x80
      005120 E2                    4405 	.db 0xe2
      005121 94                    4406 	.db 0x94
      005122 80                    4407 	.db 0x80
      005123 E2                    4408 	.db 0xe2
      005124 94                    4409 	.db 0x94
      005125 80                    4410 	.db 0x80
      005126 E2                    4411 	.db 0xe2
      005127 94                    4412 	.db 0x94
      005128 80                    4413 	.db 0x80
      005129 E2                    4414 	.db 0xe2
      00512A 94                    4415 	.db 0x94
      00512B 90                    4416 	.db 0x90
      00512C 0A                    4417 	.db 0x0a
      00512D 0D                    4418 	.db 0x0d
      00512E 00                    4419 	.db 0x00
                                   4420 	.area CSEG    (CODE)
                                   4421 	.area CONST   (CODE)
      00512F                       4422 ___str_19:
      00512F 0A                    4423 	.db 0x0a
      005130 E2                    4424 	.db 0xe2
      005131 94                    4425 	.db 0x94
      005132 8C                    4426 	.db 0x8c
      005133 E2                    4427 	.db 0xe2
      005134 94                    4428 	.db 0x94
      005135 80                    4429 	.db 0x80
      005136 E2                    4430 	.db 0xe2
      005137 94                    4431 	.db 0x94
      005138 80                    4432 	.db 0x80
      005139 E2                    4433 	.db 0xe2
      00513A 94                    4434 	.db 0x94
      00513B 80                    4435 	.db 0x80
      00513C E2                    4436 	.db 0xe2
      00513D 94                    4437 	.db 0x94
      00513E 80                    4438 	.db 0x80
      00513F E2                    4439 	.db 0xe2
      005140 94                    4440 	.db 0x94
      005141 80                    4441 	.db 0x80
      005142 E2                    4442 	.db 0xe2
      005143 94                    4443 	.db 0x94
      005144 80                    4444 	.db 0x80
      005145 E2                    4445 	.db 0xe2
      005146 94                    4446 	.db 0x94
      005147 80                    4447 	.db 0x80
      005148 E2                    4448 	.db 0xe2
      005149 94                    4449 	.db 0x94
      00514A 80                    4450 	.db 0x80
      00514B E2                    4451 	.db 0xe2
      00514C 94                    4452 	.db 0x94
      00514D 80                    4453 	.db 0x80
      00514E E2                    4454 	.db 0xe2
      00514F 94                    4455 	.db 0x94
      005150 80                    4456 	.db 0x80
      005151 E2                    4457 	.db 0xe2
      005152 94                    4458 	.db 0x94
      005153 80                    4459 	.db 0x80
      005154 E2                    4460 	.db 0xe2
      005155 94                    4461 	.db 0x94
      005156 80                    4462 	.db 0x80
      005157 E2                    4463 	.db 0xe2
      005158 94                    4464 	.db 0x94
      005159 80                    4465 	.db 0x80
      00515A 20 48 45 58 20 44 55  4466 	.ascii " HEX DUMP OPERATION "
             4D 50 20 4F 50 45 52
             41 54 49 4F 4E 20
      00516E E2                    4467 	.db 0xe2
      00516F 94                    4468 	.db 0x94
      005170 80                    4469 	.db 0x80
      005171 E2                    4470 	.db 0xe2
      005172 94                    4471 	.db 0x94
      005173 80                    4472 	.db 0x80
      005174 E2                    4473 	.db 0xe2
      005175 94                    4474 	.db 0x94
      005176 80                    4475 	.db 0x80
      005177 E2                    4476 	.db 0xe2
      005178 94                    4477 	.db 0x94
      005179 80                    4478 	.db 0x80
      00517A E2                    4479 	.db 0xe2
      00517B 94                    4480 	.db 0x94
      00517C 80                    4481 	.db 0x80
      00517D E2                    4482 	.db 0xe2
      00517E 94                    4483 	.db 0x94
      00517F 80                    4484 	.db 0x80
      005180 E2                    4485 	.db 0xe2
      005181 94                    4486 	.db 0x94
      005182 80                    4487 	.db 0x80
      005183 E2                    4488 	.db 0xe2
      005184 94                    4489 	.db 0x94
      005185 80                    4490 	.db 0x80
      005186 E2                    4491 	.db 0xe2
      005187 94                    4492 	.db 0x94
      005188 80                    4493 	.db 0x80
      005189 E2                    4494 	.db 0xe2
      00518A 94                    4495 	.db 0x94
      00518B 80                    4496 	.db 0x80
      00518C E2                    4497 	.db 0xe2
      00518D 94                    4498 	.db 0x94
      00518E 80                    4499 	.db 0x80
      00518F E2                    4500 	.db 0xe2
      005190 94                    4501 	.db 0x94
      005191 80                    4502 	.db 0x80
      005192 E2                    4503 	.db 0xe2
      005193 94                    4504 	.db 0x94
      005194 80                    4505 	.db 0x80
      005195 E2                    4506 	.db 0xe2
      005196 94                    4507 	.db 0x94
      005197 80                    4508 	.db 0x80
      005198 E2                    4509 	.db 0xe2
      005199 94                    4510 	.db 0x94
      00519A 80                    4511 	.db 0x80
      00519B E2                    4512 	.db 0xe2
      00519C 94                    4513 	.db 0x94
      00519D 90                    4514 	.db 0x90
      00519E 0A                    4515 	.db 0x0a
      00519F 0D                    4516 	.db 0x0d
      0051A0 00                    4517 	.db 0x00
                                   4518 	.area CSEG    (CODE)
                                   4519 	.area CONST   (CODE)
      0051A1                       4520 ___str_20:
      0051A1 49 4E 56 41 4C 49 44  4521 	.ascii "INVALID INPUT"
             20 49 4E 50 55 54
      0051AE 0A                    4522 	.db 0x0a
      0051AF 0D                    4523 	.db 0x0d
      0051B0 00                    4524 	.db 0x00
                                   4525 	.area CSEG    (CODE)
                                   4526 	.area CONST   (CODE)
      0051B1                       4527 ___str_21:
      0051B1 E2                    4528 	.db 0xe2
      0051B2 94                    4529 	.db 0x94
      0051B3 82                    4530 	.db 0x82
      0051B4 20 45 6E 74 65 72 20  4531 	.ascii " Enter address (hex, up to 3 characters): "
             61 64 64 72 65 73 73
             20 28 68 65 78 2C 20
             75 70 20 74 6F 20 33
             20 63 68 61 72 61 63
             74 65 72 73 29 3A 20
      0051DE 0A                    4532 	.db 0x0a
      0051DF 0D                    4533 	.db 0x0d
      0051E0 7C                    4534 	.ascii "|"
      0051E1 00                    4535 	.db 0x00
                                   4536 	.area CSEG    (CODE)
                                   4537 	.area CONST   (CODE)
      0051E2                       4538 ___str_22:
      0051E2 7C 20 24 20           4539 	.ascii "| $ "
      0051E6 00                    4540 	.db 0x00
                                   4541 	.area CSEG    (CODE)
                                   4542 	.area CONST   (CODE)
      0051E7                       4543 ___str_23:
      0051E7 0A                    4544 	.db 0x0a
      0051E8 0D                    4545 	.db 0x0d
      0051E9 E2                    4546 	.db 0xe2
      0051EA 94                    4547 	.db 0x94
      0051EB 82                    4548 	.db 0x82
      0051EC 20 45 6E 74 65 72 65  4549 	.ascii " Entered address: 0x%03X"
             64 20 61 64 64 72 65
             73 73 3A 20 30 78 25
             30 33 58
      005204 0A                    4550 	.db 0x0a
      005205 0D                    4551 	.db 0x0d
      005206 00                    4552 	.db 0x00
                                   4553 	.area CSEG    (CODE)
                                   4554 	.area CONST   (CODE)
      005207                       4555 ___str_24:
      005207 E2                    4556 	.db 0xe2
      005208 95                    4557 	.db 0x95
      005209 94                    4558 	.db 0x94
      00520A E2                    4559 	.db 0xe2
      00520B 95                    4560 	.db 0x95
      00520C 90                    4561 	.db 0x90
      00520D E2                    4562 	.db 0xe2
      00520E 95                    4563 	.db 0x95
      00520F 90                    4564 	.db 0x90
      005210 E2                    4565 	.db 0xe2
      005211 95                    4566 	.db 0x95
      005212 90                    4567 	.db 0x90
      005213 E2                    4568 	.db 0xe2
      005214 95                    4569 	.db 0x95
      005215 90                    4570 	.db 0x90
      005216 E2                    4571 	.db 0xe2
      005217 95                    4572 	.db 0x95
      005218 90                    4573 	.db 0x90
      005219 E2                    4574 	.db 0xe2
      00521A 95                    4575 	.db 0x95
      00521B 90                    4576 	.db 0x90
      00521C E2                    4577 	.db 0xe2
      00521D 95                    4578 	.db 0x95
      00521E 90                    4579 	.db 0x90
      00521F E2                    4580 	.db 0xe2
      005220 95                    4581 	.db 0x95
      005221 90                    4582 	.db 0x90
      005222 E2                    4583 	.db 0xe2
      005223 95                    4584 	.db 0x95
      005224 90                    4585 	.db 0x90
      005225 E2                    4586 	.db 0xe2
      005226 95                    4587 	.db 0x95
      005227 90                    4588 	.db 0x90
      005228 E2                    4589 	.db 0xe2
      005229 95                    4590 	.db 0x95
      00522A 90                    4591 	.db 0x90
      00522B E2                    4592 	.db 0xe2
      00522C 95                    4593 	.db 0x95
      00522D 90                    4594 	.db 0x90
      00522E E2                    4595 	.db 0xe2
      00522F 95                    4596 	.db 0x95
      005230 90                    4597 	.db 0x90
      005231 E2                    4598 	.db 0xe2
      005232 95                    4599 	.db 0x95
      005233 90                    4600 	.db 0x90
      005234 E2                    4601 	.db 0xe2
      005235 95                    4602 	.db 0x95
      005236 90                    4603 	.db 0x90
      005237 E2                    4604 	.db 0xe2
      005238 95                    4605 	.db 0x95
      005239 90                    4606 	.db 0x90
      00523A E2                    4607 	.db 0xe2
      00523B 95                    4608 	.db 0x95
      00523C 90                    4609 	.db 0x90
      00523D E2                    4610 	.db 0xe2
      00523E 95                    4611 	.db 0x95
      00523F 90                    4612 	.db 0x90
      005240 E2                    4613 	.db 0xe2
      005241 95                    4614 	.db 0x95
      005242 90                    4615 	.db 0x90
      005243 E2                    4616 	.db 0xe2
      005244 95                    4617 	.db 0x95
      005245 90                    4618 	.db 0x90
      005246 E2                    4619 	.db 0xe2
      005247 95                    4620 	.db 0x95
      005248 90                    4621 	.db 0x90
      005249 E2                    4622 	.db 0xe2
      00524A 95                    4623 	.db 0x95
      00524B 90                    4624 	.db 0x90
      00524C E2                    4625 	.db 0xe2
      00524D 95                    4626 	.db 0x95
      00524E 90                    4627 	.db 0x90
      00524F E2                    4628 	.db 0xe2
      005250 95                    4629 	.db 0x95
      005251 90                    4630 	.db 0x90
      005252 E2                    4631 	.db 0xe2
      005253 95                    4632 	.db 0x95
      005254 90                    4633 	.db 0x90
      005255 E2                    4634 	.db 0xe2
      005256 95                    4635 	.db 0x95
      005257 90                    4636 	.db 0x90
      005258 E2                    4637 	.db 0xe2
      005259 95                    4638 	.db 0x95
      00525A 90                    4639 	.db 0x90
      00525B E2                    4640 	.db 0xe2
      00525C 95                    4641 	.db 0x95
      00525D 90                    4642 	.db 0x90
      00525E E2                    4643 	.db 0xe2
      00525F 95                    4644 	.db 0x95
      005260 90                    4645 	.db 0x90
      005261 E2                    4646 	.db 0xe2
      005262 95                    4647 	.db 0x95
      005263 90                    4648 	.db 0x90
      005264 E2                    4649 	.db 0xe2
      005265 95                    4650 	.db 0x95
      005266 90                    4651 	.db 0x90
      005267 E2                    4652 	.db 0xe2
      005268 95                    4653 	.db 0x95
      005269 90                    4654 	.db 0x90
      00526A E2                    4655 	.db 0xe2
      00526B 95                    4656 	.db 0x95
      00526C 90                    4657 	.db 0x90
      00526D E2                    4658 	.db 0xe2
      00526E 95                    4659 	.db 0x95
      00526F 90                    4660 	.db 0x90
      005270 E2                    4661 	.db 0xe2
      005271 95                    4662 	.db 0x95
      005272 90                    4663 	.db 0x90
      005273 E2                    4664 	.db 0xe2
      005274 95                    4665 	.db 0x95
      005275 90                    4666 	.db 0x90
      005276 E2                    4667 	.db 0xe2
      005277 95                    4668 	.db 0x95
      005278 90                    4669 	.db 0x90
      005279 E2                    4670 	.db 0xe2
      00527A 95                    4671 	.db 0x95
      00527B 90                    4672 	.db 0x90
      00527C E2                    4673 	.db 0xe2
      00527D 95                    4674 	.db 0x95
      00527E 90                    4675 	.db 0x90
      00527F E2                    4676 	.db 0xe2
      005280 95                    4677 	.db 0x95
      005281 90                    4678 	.db 0x90
      005282 E2                    4679 	.db 0xe2
      005283 95                    4680 	.db 0x95
      005284 90                    4681 	.db 0x90
      005285 E2                    4682 	.db 0xe2
      005286 95                    4683 	.db 0x95
      005287 90                    4684 	.db 0x90
      005288 E2                    4685 	.db 0xe2
      005289 95                    4686 	.db 0x95
      00528A 97                    4687 	.db 0x97
      00528B 0A                    4688 	.db 0x0a
      00528C 0D                    4689 	.db 0x0d
      00528D 00                    4690 	.db 0x00
                                   4691 	.area CSEG    (CODE)
                                   4692 	.area CONST   (CODE)
      00528E                       4693 ___str_25:
      00528E E2                    4694 	.db 0xe2
      00528F 95                    4695 	.db 0x95
      005290 91                    4696 	.db 0x91
      005291 20 20 20 20 20 20 20  4697 	.ascii "       ! ADDRESS OUT OF RANGE !         "
             21 20 41 44 44 52 45
             53 53 20 4F 55 54 20
             4F 46 20 52 41 4E 47
             45 20 21 20 20 20 20
             20 20 20 20 20
      0052B9 E2                    4698 	.db 0xe2
      0052BA 95                    4699 	.db 0x95
      0052BB 91                    4700 	.db 0x91
      0052BC 0A                    4701 	.db 0x0a
      0052BD 0D                    4702 	.db 0x0d
      0052BE 00                    4703 	.db 0x00
                                   4704 	.area CSEG    (CODE)
                                   4705 	.area CONST   (CODE)
      0052BF                       4706 ___str_26:
      0052BF E2                    4707 	.db 0xe2
      0052C0 95                    4708 	.db 0x95
      0052C1 91                    4709 	.db 0x91
      0052C2 20 20 20 20 20 50 6C  4710 	.ascii "     Please Enter Valid Address         "
             65 61 73 65 20 45 6E
             74 65 72 20 56 61 6C
             69 64 20 41 64 64 72
             65 73 73 20 20 20 20
             20 20 20 20 20
      0052EA E2                    4711 	.db 0xe2
      0052EB 95                    4712 	.db 0x95
      0052EC 91                    4713 	.db 0x91
      0052ED 0A                    4714 	.db 0x0a
      0052EE 0D                    4715 	.db 0x0d
      0052EF 00                    4716 	.db 0x00
                                   4717 	.area CSEG    (CODE)
                                   4718 	.area CONST   (CODE)
      0052F0                       4719 ___str_27:
      0052F0 E2                    4720 	.db 0xe2
      0052F1 95                    4721 	.db 0x95
      0052F2 9A                    4722 	.db 0x9a
      0052F3 E2                    4723 	.db 0xe2
      0052F4 95                    4724 	.db 0x95
      0052F5 90                    4725 	.db 0x90
      0052F6 E2                    4726 	.db 0xe2
      0052F7 95                    4727 	.db 0x95
      0052F8 90                    4728 	.db 0x90
      0052F9 E2                    4729 	.db 0xe2
      0052FA 95                    4730 	.db 0x95
      0052FB 90                    4731 	.db 0x90
      0052FC E2                    4732 	.db 0xe2
      0052FD 95                    4733 	.db 0x95
      0052FE 90                    4734 	.db 0x90
      0052FF E2                    4735 	.db 0xe2
      005300 95                    4736 	.db 0x95
      005301 90                    4737 	.db 0x90
      005302 E2                    4738 	.db 0xe2
      005303 95                    4739 	.db 0x95
      005304 90                    4740 	.db 0x90
      005305 E2                    4741 	.db 0xe2
      005306 95                    4742 	.db 0x95
      005307 90                    4743 	.db 0x90
      005308 E2                    4744 	.db 0xe2
      005309 95                    4745 	.db 0x95
      00530A 90                    4746 	.db 0x90
      00530B E2                    4747 	.db 0xe2
      00530C 95                    4748 	.db 0x95
      00530D 90                    4749 	.db 0x90
      00530E E2                    4750 	.db 0xe2
      00530F 95                    4751 	.db 0x95
      005310 90                    4752 	.db 0x90
      005311 E2                    4753 	.db 0xe2
      005312 95                    4754 	.db 0x95
      005313 90                    4755 	.db 0x90
      005314 E2                    4756 	.db 0xe2
      005315 95                    4757 	.db 0x95
      005316 90                    4758 	.db 0x90
      005317 E2                    4759 	.db 0xe2
      005318 95                    4760 	.db 0x95
      005319 90                    4761 	.db 0x90
      00531A E2                    4762 	.db 0xe2
      00531B 95                    4763 	.db 0x95
      00531C 90                    4764 	.db 0x90
      00531D E2                    4765 	.db 0xe2
      00531E 95                    4766 	.db 0x95
      00531F 90                    4767 	.db 0x90
      005320 E2                    4768 	.db 0xe2
      005321 95                    4769 	.db 0x95
      005322 90                    4770 	.db 0x90
      005323 E2                    4771 	.db 0xe2
      005324 95                    4772 	.db 0x95
      005325 90                    4773 	.db 0x90
      005326 E2                    4774 	.db 0xe2
      005327 95                    4775 	.db 0x95
      005328 90                    4776 	.db 0x90
      005329 E2                    4777 	.db 0xe2
      00532A 95                    4778 	.db 0x95
      00532B 90                    4779 	.db 0x90
      00532C E2                    4780 	.db 0xe2
      00532D 95                    4781 	.db 0x95
      00532E 90                    4782 	.db 0x90
      00532F E2                    4783 	.db 0xe2
      005330 95                    4784 	.db 0x95
      005331 90                    4785 	.db 0x90
      005332 E2                    4786 	.db 0xe2
      005333 95                    4787 	.db 0x95
      005334 90                    4788 	.db 0x90
      005335 E2                    4789 	.db 0xe2
      005336 95                    4790 	.db 0x95
      005337 90                    4791 	.db 0x90
      005338 E2                    4792 	.db 0xe2
      005339 95                    4793 	.db 0x95
      00533A 90                    4794 	.db 0x90
      00533B E2                    4795 	.db 0xe2
      00533C 95                    4796 	.db 0x95
      00533D 90                    4797 	.db 0x90
      00533E E2                    4798 	.db 0xe2
      00533F 95                    4799 	.db 0x95
      005340 90                    4800 	.db 0x90
      005341 E2                    4801 	.db 0xe2
      005342 95                    4802 	.db 0x95
      005343 90                    4803 	.db 0x90
      005344 E2                    4804 	.db 0xe2
      005345 95                    4805 	.db 0x95
      005346 90                    4806 	.db 0x90
      005347 E2                    4807 	.db 0xe2
      005348 95                    4808 	.db 0x95
      005349 90                    4809 	.db 0x90
      00534A E2                    4810 	.db 0xe2
      00534B 95                    4811 	.db 0x95
      00534C 90                    4812 	.db 0x90
      00534D E2                    4813 	.db 0xe2
      00534E 95                    4814 	.db 0x95
      00534F 90                    4815 	.db 0x90
      005350 E2                    4816 	.db 0xe2
      005351 95                    4817 	.db 0x95
      005352 90                    4818 	.db 0x90
      005353 E2                    4819 	.db 0xe2
      005354 95                    4820 	.db 0x95
      005355 90                    4821 	.db 0x90
      005356 E2                    4822 	.db 0xe2
      005357 95                    4823 	.db 0x95
      005358 90                    4824 	.db 0x90
      005359 E2                    4825 	.db 0xe2
      00535A 95                    4826 	.db 0x95
      00535B 90                    4827 	.db 0x90
      00535C E2                    4828 	.db 0xe2
      00535D 95                    4829 	.db 0x95
      00535E 90                    4830 	.db 0x90
      00535F E2                    4831 	.db 0xe2
      005360 95                    4832 	.db 0x95
      005361 90                    4833 	.db 0x90
      005362 E2                    4834 	.db 0xe2
      005363 95                    4835 	.db 0x95
      005364 90                    4836 	.db 0x90
      005365 E2                    4837 	.db 0xe2
      005366 95                    4838 	.db 0x95
      005367 90                    4839 	.db 0x90
      005368 E2                    4840 	.db 0xe2
      005369 95                    4841 	.db 0x95
      00536A 90                    4842 	.db 0x90
      00536B E2                    4843 	.db 0xe2
      00536C 95                    4844 	.db 0x95
      00536D 90                    4845 	.db 0x90
      00536E E2                    4846 	.db 0xe2
      00536F 95                    4847 	.db 0x95
      005370 90                    4848 	.db 0x90
      005371 E2                    4849 	.db 0xe2
      005372 95                    4850 	.db 0x95
      005373 9D                    4851 	.db 0x9d
      005374 0A                    4852 	.db 0x0a
      005375 0D                    4853 	.db 0x0d
      005376 00                    4854 	.db 0x00
                                   4855 	.area CSEG    (CODE)
                                   4856 	.area CONST   (CODE)
      005377                       4857 ___str_28:
      005377 E2                    4858 	.db 0xe2
      005378 94                    4859 	.db 0x94
      005379 82                    4860 	.db 0x82
      00537A 20 45 6E 74 65 72 20  4861 	.ascii " Enter data (hex, up to 2 characters): "
             64 61 74 61 20 28 68
             65 78 2C 20 75 70 20
             74 6F 20 32 20 63 68
             61 72 61 63 74 65 72
             73 29 3A 20
      0053A1 0A                    4862 	.db 0x0a
      0053A2 0D                    4863 	.db 0x0d
      0053A3 7C                    4864 	.ascii "|"
      0053A4 00                    4865 	.db 0x00
                                   4866 	.area CSEG    (CODE)
                                   4867 	.area CONST   (CODE)
      0053A5                       4868 ___str_29:
      0053A5 24 20                 4869 	.ascii "$ "
      0053A7 00                    4870 	.db 0x00
                                   4871 	.area CSEG    (CODE)
                                   4872 	.area CONST   (CODE)
      0053A8                       4873 ___str_30:
      0053A8 0A                    4874 	.db 0x0a
      0053A9 0D                    4875 	.db 0x0d
      0053AA E2                    4876 	.db 0xe2
      0053AB 94                    4877 	.db 0x94
      0053AC 82                    4878 	.db 0x82
      0053AD 20 45 6E 74 65 72 65  4879 	.ascii " Entered data: 0x%02X"
             64 20 64 61 74 61 3A
             20 30 78 25 30 32 58
      0053C2 0A                    4880 	.db 0x0a
      0053C3 0D                    4881 	.db 0x0d
      0053C4 00                    4882 	.db 0x00
                                   4883 	.area CSEG    (CODE)
                                   4884 	.area CONST   (CODE)
      0053C5                       4885 ___str_31:
      0053C5 44 61 74 61 20 6F 75  4886 	.ascii "Data out of Range"
             74 20 6F 66 20 52 61
             6E 67 65
      0053D6 0A                    4887 	.db 0x0a
      0053D7 0D                    4888 	.db 0x0d
      0053D8 00                    4889 	.db 0x00
                                   4890 	.area CSEG    (CODE)
                                   4891 	.area CONST   (CODE)
      0053D9                       4892 ___str_32:
      0053D9 45 72 72 6F 72 3A 20  4893 	.ascii "Error: No ACK for device address (write)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 29
      005401 0A                    4894 	.db 0x0a
      005402 0D                    4895 	.db 0x0d
      005403 00                    4896 	.db 0x00
                                   4897 	.area CSEG    (CODE)
                                   4898 	.area CONST   (CODE)
      005404                       4899 ___str_33:
      005404 45 72 72 6F 72 3A 20  4900 	.ascii "Error: No ACK for memory address"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 6D 65 6D
             6F 72 79 20 61 64 64
             72 65 73 73
      005424 0A                    4901 	.db 0x0a
      005425 0D                    4902 	.db 0x0d
      005426 00                    4903 	.db 0x00
                                   4904 	.area CSEG    (CODE)
                                   4905 	.area CONST   (CODE)
      005427                       4906 ___str_34:
      005427 45 72 72 6F 72 3A 20  4907 	.ascii "Error: No ACK for data"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 61 74
             61
      00543D 0A                    4908 	.db 0x0a
      00543E 0D                    4909 	.db 0x0d
      00543F 00                    4910 	.db 0x00
                                   4911 	.area CSEG    (CODE)
                                   4912 	.area CONST   (CODE)
      005440                       4913 ___str_35:
      005440 7C 20 57 72 69 74 69  4914 	.ascii "| Writing at Address 0x%03X Data 0x%02X          |"
             6E 67 20 61 74 20 41
             64 64 72 65 73 73 20
             30 78 25 30 33 58 20
             44 61 74 61 20 30 78
             25 30 32 58 20 20 20
             20 20 20 20 20 20 20
             7C
      005472 0A                    4915 	.db 0x0a
      005473 0D                    4916 	.db 0x0d
      005474 00                    4917 	.db 0x00
                                   4918 	.area CSEG    (CODE)
                                   4919 	.area CONST   (CODE)
      005475                       4920 ___str_36:
      005475 E2                    4921 	.db 0xe2
      005476 94                    4922 	.db 0x94
      005477 82                    4923 	.db 0x82
      005478 20 57 72 69 74 65 20  4924 	.ascii " Write successful!                             "
             73 75 63 63 65 73 73
             66 75 6C 21 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      0054A7 E2                    4925 	.db 0xe2
      0054A8 94                    4926 	.db 0x94
      0054A9 82                    4927 	.db 0x82
      0054AA 0A                    4928 	.db 0x0a
      0054AB 0D                    4929 	.db 0x0d
      0054AC 00                    4930 	.db 0x00
                                   4931 	.area CSEG    (CODE)
                                   4932 	.area CONST   (CODE)
      0054AD                       4933 ___str_37:
      0054AD E2                    4934 	.db 0xe2
      0054AE 94                    4935 	.db 0x94
      0054AF 94                    4936 	.db 0x94
      0054B0 E2                    4937 	.db 0xe2
      0054B1 94                    4938 	.db 0x94
      0054B2 80                    4939 	.db 0x80
      0054B3 E2                    4940 	.db 0xe2
      0054B4 94                    4941 	.db 0x94
      0054B5 80                    4942 	.db 0x80
      0054B6 E2                    4943 	.db 0xe2
      0054B7 94                    4944 	.db 0x94
      0054B8 80                    4945 	.db 0x80
      0054B9 E2                    4946 	.db 0xe2
      0054BA 94                    4947 	.db 0x94
      0054BB 80                    4948 	.db 0x80
      0054BC E2                    4949 	.db 0xe2
      0054BD 94                    4950 	.db 0x94
      0054BE 80                    4951 	.db 0x80
      0054BF E2                    4952 	.db 0xe2
      0054C0 94                    4953 	.db 0x94
      0054C1 80                    4954 	.db 0x80
      0054C2 E2                    4955 	.db 0xe2
      0054C3 94                    4956 	.db 0x94
      0054C4 80                    4957 	.db 0x80
      0054C5 E2                    4958 	.db 0xe2
      0054C6 94                    4959 	.db 0x94
      0054C7 80                    4960 	.db 0x80
      0054C8 E2                    4961 	.db 0xe2
      0054C9 94                    4962 	.db 0x94
      0054CA 80                    4963 	.db 0x80
      0054CB E2                    4964 	.db 0xe2
      0054CC 94                    4965 	.db 0x94
      0054CD 80                    4966 	.db 0x80
      0054CE E2                    4967 	.db 0xe2
      0054CF 94                    4968 	.db 0x94
      0054D0 80                    4969 	.db 0x80
      0054D1 E2                    4970 	.db 0xe2
      0054D2 94                    4971 	.db 0x94
      0054D3 80                    4972 	.db 0x80
      0054D4 E2                    4973 	.db 0xe2
      0054D5 94                    4974 	.db 0x94
      0054D6 80                    4975 	.db 0x80
      0054D7 E2                    4976 	.db 0xe2
      0054D8 94                    4977 	.db 0x94
      0054D9 80                    4978 	.db 0x80
      0054DA E2                    4979 	.db 0xe2
      0054DB 94                    4980 	.db 0x94
      0054DC 80                    4981 	.db 0x80
      0054DD E2                    4982 	.db 0xe2
      0054DE 94                    4983 	.db 0x94
      0054DF 80                    4984 	.db 0x80
      0054E0 E2                    4985 	.db 0xe2
      0054E1 94                    4986 	.db 0x94
      0054E2 80                    4987 	.db 0x80
      0054E3 E2                    4988 	.db 0xe2
      0054E4 94                    4989 	.db 0x94
      0054E5 80                    4990 	.db 0x80
      0054E6 E2                    4991 	.db 0xe2
      0054E7 94                    4992 	.db 0x94
      0054E8 80                    4993 	.db 0x80
      0054E9 E2                    4994 	.db 0xe2
      0054EA 94                    4995 	.db 0x94
      0054EB 80                    4996 	.db 0x80
      0054EC E2                    4997 	.db 0xe2
      0054ED 94                    4998 	.db 0x94
      0054EE 80                    4999 	.db 0x80
      0054EF E2                    5000 	.db 0xe2
      0054F0 94                    5001 	.db 0x94
      0054F1 80                    5002 	.db 0x80
      0054F2 E2                    5003 	.db 0xe2
      0054F3 94                    5004 	.db 0x94
      0054F4 80                    5005 	.db 0x80
      0054F5 E2                    5006 	.db 0xe2
      0054F6 94                    5007 	.db 0x94
      0054F7 80                    5008 	.db 0x80
      0054F8 E2                    5009 	.db 0xe2
      0054F9 94                    5010 	.db 0x94
      0054FA 80                    5011 	.db 0x80
      0054FB E2                    5012 	.db 0xe2
      0054FC 94                    5013 	.db 0x94
      0054FD 80                    5014 	.db 0x80
      0054FE E2                    5015 	.db 0xe2
      0054FF 94                    5016 	.db 0x94
      005500 80                    5017 	.db 0x80
      005501 E2                    5018 	.db 0xe2
      005502 94                    5019 	.db 0x94
      005503 80                    5020 	.db 0x80
      005504 E2                    5021 	.db 0xe2
      005505 94                    5022 	.db 0x94
      005506 80                    5023 	.db 0x80
      005507 E2                    5024 	.db 0xe2
      005508 94                    5025 	.db 0x94
      005509 80                    5026 	.db 0x80
      00550A E2                    5027 	.db 0xe2
      00550B 94                    5028 	.db 0x94
      00550C 80                    5029 	.db 0x80
      00550D E2                    5030 	.db 0xe2
      00550E 94                    5031 	.db 0x94
      00550F 80                    5032 	.db 0x80
      005510 E2                    5033 	.db 0xe2
      005511 94                    5034 	.db 0x94
      005512 80                    5035 	.db 0x80
      005513 E2                    5036 	.db 0xe2
      005514 94                    5037 	.db 0x94
      005515 80                    5038 	.db 0x80
      005516 E2                    5039 	.db 0xe2
      005517 94                    5040 	.db 0x94
      005518 80                    5041 	.db 0x80
      005519 E2                    5042 	.db 0xe2
      00551A 94                    5043 	.db 0x94
      00551B 80                    5044 	.db 0x80
      00551C E2                    5045 	.db 0xe2
      00551D 94                    5046 	.db 0x94
      00551E 80                    5047 	.db 0x80
      00551F E2                    5048 	.db 0xe2
      005520 94                    5049 	.db 0x94
      005521 80                    5050 	.db 0x80
      005522 E2                    5051 	.db 0xe2
      005523 94                    5052 	.db 0x94
      005524 80                    5053 	.db 0x80
      005525 E2                    5054 	.db 0xe2
      005526 94                    5055 	.db 0x94
      005527 80                    5056 	.db 0x80
      005528 E2                    5057 	.db 0xe2
      005529 94                    5058 	.db 0x94
      00552A 80                    5059 	.db 0x80
      00552B E2                    5060 	.db 0xe2
      00552C 94                    5061 	.db 0x94
      00552D 80                    5062 	.db 0x80
      00552E E2                    5063 	.db 0xe2
      00552F 94                    5064 	.db 0x94
      005530 80                    5065 	.db 0x80
      005531 E2                    5066 	.db 0xe2
      005532 94                    5067 	.db 0x94
      005533 80                    5068 	.db 0x80
      005534 E2                    5069 	.db 0xe2
      005535 94                    5070 	.db 0x94
      005536 80                    5071 	.db 0x80
      005537 E2                    5072 	.db 0xe2
      005538 94                    5073 	.db 0x94
      005539 80                    5074 	.db 0x80
      00553A E2                    5075 	.db 0xe2
      00553B 94                    5076 	.db 0x94
      00553C 80                    5077 	.db 0x80
      00553D E2                    5078 	.db 0xe2
      00553E 94                    5079 	.db 0x94
      00553F 98                    5080 	.db 0x98
      005540 0A                    5081 	.db 0x0a
      005541 0D                    5082 	.db 0x0d
      005542 00                    5083 	.db 0x00
                                   5084 	.area CSEG    (CODE)
                                   5085 	.area CONST   (CODE)
      005543                       5086 ___str_38:
      005543 45 72 72 6F 72 3A 20  5087 	.ascii "Error: No ACK for device address (write mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 20 6D 6F
             64 65 29
      005570 0A                    5088 	.db 0x0a
      005571 0D                    5089 	.db 0x0d
      005572 00                    5090 	.db 0x00
                                   5091 	.area CSEG    (CODE)
                                   5092 	.area CONST   (CODE)
      005573                       5093 ___str_39:
      005573 45 72 72 6F 72 3A 20  5094 	.ascii "Error: No ACK for device address (read mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 72
             65 61 64 20 6D 6F 64
             65 29
      00559F 0A                    5095 	.db 0x0a
      0055A0 0D                    5096 	.db 0x0d
      0055A1 00                    5097 	.db 0x00
                                   5098 	.area CSEG    (CODE)
                                   5099 	.area CONST   (CODE)
      0055A2                       5100 ___str_40:
      0055A2 7C 20 30 78 25 30 33  5101 	.ascii "| 0x%03X : 0x%02X "
             58 20 3A 20 30 78 25
             30 32 58 20
      0055B4 0A                    5102 	.db 0x0a
      0055B5 0D                    5103 	.db 0x0d
      0055B6 00                    5104 	.db 0x00
                                   5105 	.area CSEG    (CODE)
                                   5106 	.area CONST   (CODE)
      0055B7                       5107 ___str_41:
      0055B7 E2                    5108 	.db 0xe2
      0055B8 94                    5109 	.db 0x94
      0055B9 82                    5110 	.db 0x82
      0055BA 20 52 65 61 64 20 73  5111 	.ascii " Read successful!                 "
             75 63 63 65 73 73 66
             75 6C 21 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20
      0055DC E2                    5112 	.db 0xe2
      0055DD 94                    5113 	.db 0x94
      0055DE 82                    5114 	.db 0x82
      0055DF 0A                    5115 	.db 0x0a
      0055E0 0D                    5116 	.db 0x0d
      0055E1 00                    5117 	.db 0x00
                                   5118 	.area CSEG    (CODE)
                                   5119 	.area CONST   (CODE)
      0055E2                       5120 ___str_42:
      0055E2 41 43 4B 20 44 49 44  5121 	.ascii "ACK DID NOT ARRIVE"
             20 4E 4F 54 20 41 52
             52 49 56 45
      0055F4 0A                    5122 	.db 0x0a
      0055F5 0D                    5123 	.db 0x0d
      0055F6 00                    5124 	.db 0x00
                                   5125 	.area CSEG    (CODE)
                                   5126 	.area CONST   (CODE)
      0055F7                       5127 ___str_43:
      0055F7 0D                    5128 	.db 0x0d
      0055F8 0A                    5129 	.db 0x0a
      0055F9 00                    5130 	.db 0x00
                                   5131 	.area CSEG    (CODE)
                                   5132 	.area CONST   (CODE)
      0055FA                       5133 ___str_44:
      0055FA 0D                    5134 	.db 0x0d
      0055FB 0A                    5135 	.db 0x0a
      0055FC 2D 2D 2D 2D 2D 2D 2D  5136 	.ascii "------------------------------------------------------------"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D
      005638 2D 2D 2D 2D           5137 	.ascii "----"
      00563C 00                    5138 	.db 0x00
                                   5139 	.area CSEG    (CODE)
                                   5140 	.area CONST   (CODE)
      00563D                       5141 ___str_45:
      00563D 0D                    5142 	.db 0x0d
      00563E 0A                    5143 	.db 0x0a
      00563F 20 20 20 20 20 20 20  5144 	.ascii "                    EEPROM Hex Dump                         "
             20 20 20 20 20 20 20
             20 20 20 20 20 20 45
             45 50 52 4F 4D 20 48
             65 78 20 44 75 6D 70
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20
      00567B 20 20 20 20           5145 	.ascii "    "
      00567F 00                    5146 	.db 0x00
                                   5147 	.area CSEG    (CODE)
                                   5148 	.area CONST   (CODE)
      005680                       5149 ___str_46:
      005680 0D                    5150 	.db 0x0d
      005681 0A                    5151 	.db 0x0a
      005682 2D 2D 2D 2D 2D 2D 2D  5152 	.ascii "------------------------------------------------------------"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D
      0056BE 2D 2D 2D 2D           5153 	.ascii "----"
      0056C2 0D                    5154 	.db 0x0d
      0056C3 0A                    5155 	.db 0x0a
      0056C4 00                    5156 	.db 0x00
                                   5157 	.area CSEG    (CODE)
                                   5158 	.area CONST   (CODE)
      0056C5                       5159 ___str_47:
      0056C5 25 30 33 58 3A 20     5160 	.ascii "%03X: "
      0056CB 00                    5161 	.db 0x00
                                   5162 	.area CSEG    (CODE)
                                   5163 	.area CONST   (CODE)
      0056CC                       5164 ___str_48:
      0056CC 25 30 32 58 20        5165 	.ascii "%02X "
      0056D1 00                    5166 	.db 0x00
                                   5167 	.area CSEG    (CODE)
                                   5168 	.area CONST   (CODE)
      0056D2                       5169 ___str_49:
      0056D2 20 20 20              5170 	.ascii "   "
      0056D5 00                    5171 	.db 0x00
                                   5172 	.area CSEG    (CODE)
                                   5173 	.area CONST   (CODE)
      0056D6                       5174 ___str_50:
      0056D6 1B                    5175 	.db 0x1b
      0056D7 5B 31 3B 33 33 6D     5176 	.ascii "[1;33m"
      0056DD 0A                    5177 	.db 0x0a
      0056DE 0D                    5178 	.db 0x0d
      0056DF 45 6E 74 65 72 20 53  5179 	.ascii "Enter Start Address for HEX Dump"
             74 61 72 74 20 41 64
             64 72 65 73 73 20 66
             6F 72 20 48 45 58 20
             44 75 6D 70
      0056FF 0D                    5180 	.db 0x0d
      005700 0A                    5181 	.db 0x0a
      005701 00                    5182 	.db 0x00
                                   5183 	.area CSEG    (CODE)
                                   5184 	.area CONST   (CODE)
      005702                       5185 ___str_51:
      005702 1B                    5186 	.db 0x1b
      005703 5B 31 3B 33 31 6D     5187 	.ascii "[1;31m"
      005709 0A                    5188 	.db 0x0a
      00570A 0D                    5189 	.db 0x0d
      00570B 49 6E 76 61 6C 69 64  5190 	.ascii "Invalid Start Address Range!!"
             20 53 74 61 72 74 20
             41 64 64 72 65 73 73
             20 52 61 6E 67 65 21
             21
      005728 0A                    5191 	.db 0x0a
      005729 0D                    5192 	.db 0x0d
      00572A 20 41 64 64 72 65 73  5193 	.ascii " Address has to be between 0x000 to 0x7FF"
             73 20 68 61 73 20 74
             6F 20 62 65 20 62 65
             74 77 65 65 6E 20 30
             78 30 30 30 20 74 6F
             20 30 78 37 46 46
      005753 1B                    5194 	.db 0x1b
      005754 5B 30 6D              5195 	.ascii "[0m"
      005757 0D                    5196 	.db 0x0d
      005758 0A                    5197 	.db 0x0a
      005759 00                    5198 	.db 0x00
                                   5199 	.area CSEG    (CODE)
                                   5200 	.area CONST   (CODE)
      00575A                       5201 ___str_52:
      00575A 1B                    5202 	.db 0x1b
      00575B 5B 31 3B 33 33 6D     5203 	.ascii "[1;33m"
      005761 0A                    5204 	.db 0x0a
      005762 0D                    5205 	.db 0x0d
      005763 45 6E 74 65 72 20 45  5206 	.ascii "Enter End Address for HEX Dump"
             6E 64 20 41 64 64 72
             65 73 73 20 66 6F 72
             20 48 45 58 20 44 75
             6D 70
      005781 0D                    5207 	.db 0x0d
      005782 0A                    5208 	.db 0x0a
      005783 00                    5209 	.db 0x00
                                   5210 	.area CSEG    (CODE)
                                   5211 	.area CONST   (CODE)
      005784                       5212 ___str_53:
      005784 1B                    5213 	.db 0x1b
      005785 5B 31 3B 33 31 6D     5214 	.ascii "[1;31m"
      00578B 0A                    5215 	.db 0x0a
      00578C 0D                    5216 	.db 0x0d
      00578D 49 6E 76 61 6C 69 64  5217 	.ascii "Invalid End Address Range!!"
             20 45 6E 64 20 41 64
             64 72 65 73 73 20 52
             61 6E 67 65 21 21
      0057A8 0A                    5218 	.db 0x0a
      0057A9 0D                    5219 	.db 0x0d
      0057AA 20 41 64 64 72 65 73  5220 	.ascii " Address has to be between 0x000 to 0x7FF"
             73 20 68 61 73 20 74
             6F 20 62 65 20 62 65
             74 77 65 65 6E 20 30
             78 30 30 30 20 74 6F
             20 30 78 37 46 46
      0057D3 1B                    5221 	.db 0x1b
      0057D4 5B 30 6D              5222 	.ascii "[0m"
      0057D7 0D                    5223 	.db 0x0d
      0057D8 0A                    5224 	.db 0x0a
      0057D9 00                    5225 	.db 0x00
                                   5226 	.area CSEG    (CODE)
                                   5227 	.area CONST   (CODE)
      0057DA                       5228 ___str_54:
      0057DA 57 72 69 74 69 6E 67  5229 	.ascii "Writing data 0x%02X to address 0x%02X"
             20 64 61 74 61 20 30
             78 25 30 32 58 20 74
             6F 20 61 64 64 72 65
             73 73 20 30 78 25 30
             32 58
      0057FF 0A                    5230 	.db 0x0a
      005800 0D                    5231 	.db 0x0d
      005801 00                    5232 	.db 0x00
                                   5233 	.area CSEG    (CODE)
                                   5234 	.area CONST   (CODE)
      005802                       5235 ___str_55:
      005802 52 65 61 64 20 62 61  5236 	.ascii "Read back from address 0x%02X: 0x%02X"
             63 6B 20 66 72 6F 6D
             20 61 64 64 72 65 73
             73 20 30 78 25 30 32
             58 3A 20 30 78 25 30
             32 58
      005827 0A                    5237 	.db 0x0a
      005828 0D                    5238 	.db 0x0d
      005829 00                    5239 	.db 0x00
                                   5240 	.area CSEG    (CODE)
                                   5241 	.area CONST   (CODE)
      00582A                       5242 ___str_56:
      00582A 4D 41 54 43 48 20 2D  5243 	.ascii "MATCH - Write/Read successful!"
             20 57 72 69 74 65 2F
             52 65 61 64 20 73 75
             63 63 65 73 73 66 75
             6C 21
      005848 0A                    5244 	.db 0x0a
      005849 0D                    5245 	.db 0x0d
      00584A 00                    5246 	.db 0x00
                                   5247 	.area CSEG    (CODE)
                                   5248 	.area CONST   (CODE)
      00584B                       5249 ___str_57:
      00584B 45 52 52 4F 52 20 2D  5250 	.ascii "ERROR - Data mismatch!"
             20 44 61 74 61 20 6D
             69 73 6D 61 74 63 68
             21
      005861 0A                    5251 	.db 0x0a
      005862 0D                    5252 	.db 0x0d
      005863 00                    5253 	.db 0x00
                                   5254 	.area CSEG    (CODE)
                                   5255 	.area XINIT   (CODE)
      00586F                       5256 __xinit__address_range_flag:
      00586F 01 00                 5257 	.byte #0x01, #0x00	;  1
      005871                       5258 __xinit__data_range_flag:
      005871 01 00                 5259 	.byte #0x01, #0x00	;  1
      005873                       5260 __xinit__block:
      005873 00 00                 5261 	.byte #0x00, #0x00	; 0
                                   5262 	.area CABS    (ABS,CODE)
