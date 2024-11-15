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
      000404                        482 _take_address_input_65537_68:
      000404                        483 	.ds 4
      000408                        484 _take_address_address_65538_72:
      000408                        485 	.ds 2
      00040A                        486 _take_data_input_65537_78:
      00040A                        487 	.ds 4
      00040E                        488 _take_data_data_65538_82:
      00040E                        489 	.ds 1
      00040F                        490 _eeprom_write_PARM_2:
      00040F                        491 	.ds 1
      000410                        492 _eeprom_write_address_65536_86:
      000410                        493 	.ds 2
      000412                        494 _eeprom_read_address_65536_93:
      000412                        495 	.ds 2
      000414                        496 _i2c_write_data_65536_98:
      000414                        497 	.ds 1
      000415                        498 _i2c_read_ACK_65536_103:
      000415                        499 	.ds 2
      000417                        500 _i2c_read_buff_65536_104:
      000417                        501 	.ds 1
      000418                        502 _EEPROM_hexump_PARM_2:
      000418                        503 	.ds 2
      00041A                        504 _EEPROM_hexump_start_address_65536_109:
      00041A                        505 	.ds 2
      00041C                        506 _EEPROM_hexump_address_131072_111:
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
                                    570 ;	8051_i2c_eeprom.c:39: int putchar(int charToSend) {
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
                                    590 ;	8051_i2c_eeprom.c:40: SBUF = charToSend;  // Send character to serial buffer
      00306D 90 04 02         [24]  591 	mov	dptr,#_putchar_charToSend_65536_50
      003070 E0               [24]  592 	movx	a,@dptr
      003071 FE               [12]  593 	mov	r6,a
      003072 A3               [24]  594 	inc	dptr
      003073 E0               [24]  595 	movx	a,@dptr
      003074 FF               [12]  596 	mov	r7,a
      003075 8E 99            [24]  597 	mov	_SBUF,r6
                                    598 ;	8051_i2c_eeprom.c:41: while (!TI);        // Wait for transmission to complete
      003077                        599 00101$:
                                    600 ;	8051_i2c_eeprom.c:42: TI = 0;            // Clear transmission interrupt flag
                                    601 ;	assignBit
      003077 10 99 02         [24]  602 	jbc	_TI,00114$
      00307A 80 FB            [24]  603 	sjmp	00101$
      00307C                        604 00114$:
                                    605 ;	8051_i2c_eeprom.c:43: return charToSend;
      00307C 8E 82            [24]  606 	mov	dpl,r6
      00307E 8F 83            [24]  607 	mov	dph,r7
                                    608 ;	8051_i2c_eeprom.c:44: }
      003080 22               [24]  609 	ret
                                    610 ;------------------------------------------------------------
                                    611 ;Allocation info for local variables in function 'getchar'
                                    612 ;------------------------------------------------------------
                                    613 ;	8051_i2c_eeprom.c:46: int getchar(void) 
                                    614 ;	-----------------------------------------
                                    615 ;	 function getchar
                                    616 ;	-----------------------------------------
      003081                        617 _getchar:
                                    618 ;	8051_i2c_eeprom.c:48: while (!RI);        // Wait for reception to complete
      003081                        619 00101$:
                                    620 ;	8051_i2c_eeprom.c:49: RI = 0;            // Clear reception interrupt flag
                                    621 ;	assignBit
      003081 10 98 02         [24]  622 	jbc	_RI,00114$
      003084 80 FB            [24]  623 	sjmp	00101$
      003086                        624 00114$:
                                    625 ;	8051_i2c_eeprom.c:50: return SBUF;       // Return received character
      003086 AE 99            [24]  626 	mov	r6,_SBUF
      003088 7F 00            [12]  627 	mov	r7,#0x00
      00308A 8E 82            [24]  628 	mov	dpl,r6
      00308C 8F 83            [24]  629 	mov	dph,r7
                                    630 ;	8051_i2c_eeprom.c:51: }
      00308E 22               [24]  631 	ret
                                    632 ;------------------------------------------------------------
                                    633 ;Allocation info for local variables in function 'ui'
                                    634 ;------------------------------------------------------------
                                    635 ;	8051_i2c_eeprom.c:53: void ui()
                                    636 ;	-----------------------------------------
                                    637 ;	 function ui
                                    638 ;	-----------------------------------------
      00308F                        639 _ui:
                                    640 ;	8051_i2c_eeprom.c:55: printf("\n╔════════════════════════════════════════════════════════╗\n\r");
      00308F 74 12            [12]  641 	mov	a,#___str_0
      003091 C0 E0            [24]  642 	push	acc
      003093 74 49            [12]  643 	mov	a,#(___str_0 >> 8)
      003095 C0 E0            [24]  644 	push	acc
      003097 74 80            [12]  645 	mov	a,#0x80
      003099 C0 E0            [24]  646 	push	acc
      00309B 12 3E B0         [24]  647 	lcall	_printf
      00309E 15 81            [12]  648 	dec	sp
      0030A0 15 81            [12]  649 	dec	sp
      0030A2 15 81            [12]  650 	dec	sp
                                    651 ;	8051_i2c_eeprom.c:56: printf("║           I2C Memory Management System v1.0            ║\n\r");
      0030A4 74 C4            [12]  652 	mov	a,#___str_1
      0030A6 C0 E0            [24]  653 	push	acc
      0030A8 74 49            [12]  654 	mov	a,#(___str_1 >> 8)
      0030AA C0 E0            [24]  655 	push	acc
      0030AC 74 80            [12]  656 	mov	a,#0x80
      0030AE C0 E0            [24]  657 	push	acc
      0030B0 12 3E B0         [24]  658 	lcall	_printf
      0030B3 15 81            [12]  659 	dec	sp
      0030B5 15 81            [12]  660 	dec	sp
      0030B7 15 81            [12]  661 	dec	sp
                                    662 ;	8051_i2c_eeprom.c:57: printf("╚════════════════════════════════════════════════════════╝\n\r");
      0030B9 74 05            [12]  663 	mov	a,#___str_2
      0030BB C0 E0            [24]  664 	push	acc
      0030BD 74 4A            [12]  665 	mov	a,#(___str_2 >> 8)
      0030BF C0 E0            [24]  666 	push	acc
      0030C1 74 80            [12]  667 	mov	a,#0x80
      0030C3 C0 E0            [24]  668 	push	acc
      0030C5 12 3E B0         [24]  669 	lcall	_printf
      0030C8 15 81            [12]  670 	dec	sp
      0030CA 15 81            [12]  671 	dec	sp
      0030CC 15 81            [12]  672 	dec	sp
                                    673 ;	8051_i2c_eeprom.c:59: }
      0030CE 22               [24]  674 	ret
                                    675 ;------------------------------------------------------------
                                    676 ;Allocation info for local variables in function 'command_menu'
                                    677 ;------------------------------------------------------------
                                    678 ;	8051_i2c_eeprom.c:61: void command_menu()
                                    679 ;	-----------------------------------------
                                    680 ;	 function command_menu
                                    681 ;	-----------------------------------------
      0030CF                        682 _command_menu:
                                    683 ;	8051_i2c_eeprom.c:63: printf("\n\r┌────────────┬────────────────────────────────────────────┐\n\r");
      0030CF 74 B6            [12]  684 	mov	a,#___str_3
      0030D1 C0 E0            [24]  685 	push	acc
      0030D3 74 4A            [12]  686 	mov	a,#(___str_3 >> 8)
      0030D5 C0 E0            [24]  687 	push	acc
      0030D7 74 80            [12]  688 	mov	a,#0x80
      0030D9 C0 E0            [24]  689 	push	acc
      0030DB 12 3E B0         [24]  690 	lcall	_printf
      0030DE 15 81            [12]  691 	dec	sp
      0030E0 15 81            [12]  692 	dec	sp
      0030E2 15 81            [12]  693 	dec	sp
                                    694 ;	8051_i2c_eeprom.c:64: printf("│  Command   │               Description                  │\n\r");
      0030E4 74 6C            [12]  695 	mov	a,#___str_4
      0030E6 C0 E0            [24]  696 	push	acc
      0030E8 74 4B            [12]  697 	mov	a,#(___str_4 >> 8)
      0030EA C0 E0            [24]  698 	push	acc
      0030EC 74 80            [12]  699 	mov	a,#0x80
      0030EE C0 E0            [24]  700 	push	acc
      0030F0 12 3E B0         [24]  701 	lcall	_printf
      0030F3 15 81            [12]  702 	dec	sp
      0030F5 15 81            [12]  703 	dec	sp
      0030F7 15 81            [12]  704 	dec	sp
                                    705 ;	8051_i2c_eeprom.c:65: printf("├────────────┼────────────────────────────────────────────┤\n\r");
      0030F9 74 B0            [12]  706 	mov	a,#___str_5
      0030FB C0 E0            [24]  707 	push	acc
      0030FD 74 4B            [12]  708 	mov	a,#(___str_5 >> 8)
      0030FF C0 E0            [24]  709 	push	acc
      003101 74 80            [12]  710 	mov	a,#0x80
      003103 C0 E0            [24]  711 	push	acc
      003105 12 3E B0         [24]  712 	lcall	_printf
      003108 15 81            [12]  713 	dec	sp
      00310A 15 81            [12]  714 	dec	sp
      00310C 15 81            [12]  715 	dec	sp
                                    716 ;	8051_i2c_eeprom.c:66: printf("│     R      │ Read from address                          │\n\r");
      00310E 74 64            [12]  717 	mov	a,#___str_6
      003110 C0 E0            [24]  718 	push	acc
      003112 74 4C            [12]  719 	mov	a,#(___str_6 >> 8)
      003114 C0 E0            [24]  720 	push	acc
      003116 74 80            [12]  721 	mov	a,#0x80
      003118 C0 E0            [24]  722 	push	acc
      00311A 12 3E B0         [24]  723 	lcall	_printf
      00311D 15 81            [12]  724 	dec	sp
      00311F 15 81            [12]  725 	dec	sp
      003121 15 81            [12]  726 	dec	sp
                                    727 ;	8051_i2c_eeprom.c:67: printf("│     W      │ Write data to address                      │\n\r");
      003123 74 A8            [12]  728 	mov	a,#___str_7
      003125 C0 E0            [24]  729 	push	acc
      003127 74 4C            [12]  730 	mov	a,#(___str_7 >> 8)
      003129 C0 E0            [24]  731 	push	acc
      00312B 74 80            [12]  732 	mov	a,#0x80
      00312D C0 E0            [24]  733 	push	acc
      00312F 12 3E B0         [24]  734 	lcall	_printf
      003132 15 81            [12]  735 	dec	sp
      003134 15 81            [12]  736 	dec	sp
      003136 15 81            [12]  737 	dec	sp
                                    738 ;	8051_i2c_eeprom.c:68: printf("│     H      │ Display hex dump                           │\n\r");
      003138 74 EC            [12]  739 	mov	a,#___str_8
      00313A C0 E0            [24]  740 	push	acc
      00313C 74 4C            [12]  741 	mov	a,#(___str_8 >> 8)
      00313E C0 E0            [24]  742 	push	acc
      003140 74 80            [12]  743 	mov	a,#0x80
      003142 C0 E0            [24]  744 	push	acc
      003144 12 3E B0         [24]  745 	lcall	_printf
      003147 15 81            [12]  746 	dec	sp
      003149 15 81            [12]  747 	dec	sp
      00314B 15 81            [12]  748 	dec	sp
                                    749 ;	8051_i2c_eeprom.c:69: printf("│     X      │ Reset memory system                        │\n\r");
      00314D 74 30            [12]  750 	mov	a,#___str_9
      00314F C0 E0            [24]  751 	push	acc
      003151 74 4D            [12]  752 	mov	a,#(___str_9 >> 8)
      003153 C0 E0            [24]  753 	push	acc
      003155 74 80            [12]  754 	mov	a,#0x80
      003157 C0 E0            [24]  755 	push	acc
      003159 12 3E B0         [24]  756 	lcall	_printf
      00315C 15 81            [12]  757 	dec	sp
      00315E 15 81            [12]  758 	dec	sp
      003160 15 81            [12]  759 	dec	sp
                                    760 ;	8051_i2c_eeprom.c:70: printf("│     ?      │ Display this help menu                     │\n\r");
      003162 74 74            [12]  761 	mov	a,#___str_10
      003164 C0 E0            [24]  762 	push	acc
      003166 74 4D            [12]  763 	mov	a,#(___str_10 >> 8)
      003168 C0 E0            [24]  764 	push	acc
      00316A 74 80            [12]  765 	mov	a,#0x80
      00316C C0 E0            [24]  766 	push	acc
      00316E 12 3E B0         [24]  767 	lcall	_printf
      003171 15 81            [12]  768 	dec	sp
      003173 15 81            [12]  769 	dec	sp
      003175 15 81            [12]  770 	dec	sp
                                    771 ;	8051_i2c_eeprom.c:71: printf("│     Q      │ Quit program                               │\n\r");
      003177 74 B8            [12]  772 	mov	a,#___str_11
      003179 C0 E0            [24]  773 	push	acc
      00317B 74 4D            [12]  774 	mov	a,#(___str_11 >> 8)
      00317D C0 E0            [24]  775 	push	acc
      00317F 74 80            [12]  776 	mov	a,#0x80
      003181 C0 E0            [24]  777 	push	acc
      003183 12 3E B0         [24]  778 	lcall	_printf
      003186 15 81            [12]  779 	dec	sp
      003188 15 81            [12]  780 	dec	sp
      00318A 15 81            [12]  781 	dec	sp
                                    782 ;	8051_i2c_eeprom.c:72: printf("└────────────┴────────────────────────────────────────────┘\n\r");
      00318C 74 FC            [12]  783 	mov	a,#___str_12
      00318E C0 E0            [24]  784 	push	acc
      003190 74 4D            [12]  785 	mov	a,#(___str_12 >> 8)
      003192 C0 E0            [24]  786 	push	acc
      003194 74 80            [12]  787 	mov	a,#0x80
      003196 C0 E0            [24]  788 	push	acc
      003198 12 3E B0         [24]  789 	lcall	_printf
      00319B 15 81            [12]  790 	dec	sp
      00319D 15 81            [12]  791 	dec	sp
      00319F 15 81            [12]  792 	dec	sp
                                    793 ;	8051_i2c_eeprom.c:75: }
      0031A1 22               [24]  794 	ret
                                    795 ;------------------------------------------------------------
                                    796 ;Allocation info for local variables in function 'main'
                                    797 ;------------------------------------------------------------
                                    798 ;user_input                Allocated with name '_main_user_input_131072_57'
                                    799 ;addr                      Allocated with name '_main_addr_262145_60'
                                    800 ;data                      Allocated with name '_main_data_262146_62'
                                    801 ;addr                      Allocated with name '_main_addr_262145_65'
                                    802 ;------------------------------------------------------------
                                    803 ;	8051_i2c_eeprom.c:76: int main()
                                    804 ;	-----------------------------------------
                                    805 ;	 function main
                                    806 ;	-----------------------------------------
      0031A2                        807 _main:
                                    808 ;	8051_i2c_eeprom.c:79: P1 &= ~(1<<3);  // Set P1.3 as output
      0031A2 53 90 F7         [24]  809 	anl	_P1,#0xf7
                                    810 ;	8051_i2c_eeprom.c:80: P1 &= ~(1<<4);  // Set P1.4 as output
      0031A5 53 90 EF         [24]  811 	anl	_P1,#0xef
                                    812 ;	8051_i2c_eeprom.c:81: ui();
      0031A8 12 30 8F         [24]  813 	lcall	_ui
                                    814 ;	8051_i2c_eeprom.c:82: command_menu();
      0031AB 12 30 CF         [24]  815 	lcall	_command_menu
                                    816 ;	8051_i2c_eeprom.c:83: i2c_start();
      0031AE 12 39 F8         [24]  817 	lcall	_i2c_start
                                    818 ;	8051_i2c_eeprom.c:84: while(1)
      0031B1                        819 00115$:
                                    820 ;	8051_i2c_eeprom.c:86: char user_input = getchar();
      0031B1 12 30 81         [24]  821 	lcall	_getchar
      0031B4 AE 82            [24]  822 	mov	r6,dpl
                                    823 ;	8051_i2c_eeprom.c:87: printf("| $ %c\n\r", user_input);
      0031B6 8E 05            [24]  824 	mov	ar5,r6
      0031B8 7F 00            [12]  825 	mov	r7,#0x00
      0031BA C0 06            [24]  826 	push	ar6
      0031BC C0 05            [24]  827 	push	ar5
      0031BE C0 07            [24]  828 	push	ar7
      0031C0 74 B0            [12]  829 	mov	a,#___str_13
      0031C2 C0 E0            [24]  830 	push	acc
      0031C4 74 4E            [12]  831 	mov	a,#(___str_13 >> 8)
      0031C6 C0 E0            [24]  832 	push	acc
      0031C8 74 80            [12]  833 	mov	a,#0x80
      0031CA C0 E0            [24]  834 	push	acc
      0031CC 12 3E B0         [24]  835 	lcall	_printf
      0031CF E5 81            [12]  836 	mov	a,sp
      0031D1 24 FB            [12]  837 	add	a,#0xfb
      0031D3 F5 81            [12]  838 	mov	sp,a
                                    839 ;	8051_i2c_eeprom.c:88: printf("\n\r");
      0031D5 74 B9            [12]  840 	mov	a,#___str_14
      0031D7 C0 E0            [24]  841 	push	acc
      0031D9 74 4E            [12]  842 	mov	a,#(___str_14 >> 8)
      0031DB C0 E0            [24]  843 	push	acc
      0031DD 74 80            [12]  844 	mov	a,#0x80
      0031DF C0 E0            [24]  845 	push	acc
      0031E1 12 3E B0         [24]  846 	lcall	_printf
      0031E4 15 81            [12]  847 	dec	sp
      0031E6 15 81            [12]  848 	dec	sp
      0031E8 15 81            [12]  849 	dec	sp
      0031EA D0 06            [24]  850 	pop	ar6
                                    851 ;	8051_i2c_eeprom.c:89: switch(user_input)
      0031EC BE 3F 03         [24]  852 	cjne	r6,#0x3f,00155$
      0031EF 02 32 D2         [24]  853 	ljmp	00109$
      0031F2                        854 00155$:
      0031F2 BE 48 03         [24]  855 	cjne	r6,#0x48,00156$
      0031F5 02 32 F3         [24]  856 	ljmp	00111$
      0031F8                        857 00156$:
      0031F8 BE 52 02         [24]  858 	cjne	r6,#0x52,00157$
      0031FB 80 76            [24]  859 	sjmp	00106$
      0031FD                        860 00157$:
      0031FD BE 57 02         [24]  861 	cjne	r6,#0x57,00158$
      003200 80 09            [24]  862 	sjmp	00101$
      003202                        863 00158$:
      003202 BE 58 03         [24]  864 	cjne	r6,#0x58,00159$
      003205 02 32 D8         [24]  865 	ljmp	00110$
      003208                        866 00159$:
      003208 02 33 0B         [24]  867 	ljmp	00112$
                                    868 ;	8051_i2c_eeprom.c:91: case 'W':
      00320B                        869 00101$:
                                    870 ;	8051_i2c_eeprom.c:93: printf("\n┌─────────────── WRITE OPERATION ──────────────┐\n\r");
      00320B 74 BC            [12]  871 	mov	a,#___str_15
      00320D C0 E0            [24]  872 	push	acc
      00320F 74 4E            [12]  873 	mov	a,#(___str_15 >> 8)
      003211 C0 E0            [24]  874 	push	acc
      003213 74 80            [12]  875 	mov	a,#0x80
      003215 C0 E0            [24]  876 	push	acc
      003217 12 3E B0         [24]  877 	lcall	_printf
      00321A 15 81            [12]  878 	dec	sp
      00321C 15 81            [12]  879 	dec	sp
      00321E 15 81            [12]  880 	dec	sp
                                    881 ;	8051_i2c_eeprom.c:95: addr = take_address();
      003220 12 33 23         [24]  882 	lcall	_take_address
      003223 AE 82            [24]  883 	mov	r6,dpl
      003225 AF 83            [24]  884 	mov	r7,dph
                                    885 ;	8051_i2c_eeprom.c:96: if(!address_range_flag) 
      003227 90 04 57         [24]  886 	mov	dptr,#_address_range_flag
      00322A E0               [24]  887 	movx	a,@dptr
      00322B F5 F0            [12]  888 	mov	b,a
      00322D A3               [24]  889 	inc	dptr
      00322E E0               [24]  890 	movx	a,@dptr
      00322F 45 F0            [12]  891 	orl	a,b
      003231 70 0C            [24]  892 	jnz	00103$
                                    893 ;	8051_i2c_eeprom.c:98: address_range_flag = 1;
      003233 90 04 57         [24]  894 	mov	dptr,#_address_range_flag
      003236 74 01            [12]  895 	mov	a,#0x01
      003238 F0               [24]  896 	movx	@dptr,a
      003239 E4               [12]  897 	clr	a
      00323A A3               [24]  898 	inc	dptr
      00323B F0               [24]  899 	movx	@dptr,a
                                    900 ;	8051_i2c_eeprom.c:99: break;
      00323C 02 31 B1         [24]  901 	ljmp	00115$
      00323F                        902 00103$:
                                    903 ;	8051_i2c_eeprom.c:102: data = take_data();
      00323F C0 07            [24]  904 	push	ar7
      003241 C0 06            [24]  905 	push	ar6
      003243 12 35 3C         [24]  906 	lcall	_take_data
      003246 AD 82            [24]  907 	mov	r5,dpl
      003248 D0 06            [24]  908 	pop	ar6
      00324A D0 07            [24]  909 	pop	ar7
                                    910 ;	8051_i2c_eeprom.c:103: if(!data_range_flag) 
      00324C 90 04 59         [24]  911 	mov	dptr,#_data_range_flag
      00324F E0               [24]  912 	movx	a,@dptr
      003250 F5 F0            [12]  913 	mov	b,a
      003252 A3               [24]  914 	inc	dptr
      003253 E0               [24]  915 	movx	a,@dptr
      003254 45 F0            [12]  916 	orl	a,b
      003256 70 0C            [24]  917 	jnz	00105$
                                    918 ;	8051_i2c_eeprom.c:105: data_range_flag = 1;
      003258 90 04 59         [24]  919 	mov	dptr,#_data_range_flag
      00325B 74 01            [12]  920 	mov	a,#0x01
      00325D F0               [24]  921 	movx	@dptr,a
      00325E E4               [12]  922 	clr	a
      00325F A3               [24]  923 	inc	dptr
      003260 F0               [24]  924 	movx	@dptr,a
                                    925 ;	8051_i2c_eeprom.c:106: break;
      003261 02 31 B1         [24]  926 	ljmp	00115$
      003264                        927 00105$:
                                    928 ;	8051_i2c_eeprom.c:109: eeprom_write(addr, data);
      003264 90 04 0F         [24]  929 	mov	dptr,#_eeprom_write_PARM_2
      003267 ED               [12]  930 	mov	a,r5
      003268 F0               [24]  931 	movx	@dptr,a
      003269 8E 82            [24]  932 	mov	dpl,r6
      00326B 8F 83            [24]  933 	mov	dph,r7
      00326D 12 36 B5         [24]  934 	lcall	_eeprom_write
                                    935 ;	8051_i2c_eeprom.c:110: break;
      003270 02 31 B1         [24]  936 	ljmp	00115$
                                    937 ;	8051_i2c_eeprom.c:112: case 'R':
      003273                        938 00106$:
                                    939 ;	8051_i2c_eeprom.c:114: printf("\n┌─────────────── READ OPERATION ───────────────┐\n\r");
      003273 74 2E            [12]  940 	mov	a,#___str_16
      003275 C0 E0            [24]  941 	push	acc
      003277 74 4F            [12]  942 	mov	a,#(___str_16 >> 8)
      003279 C0 E0            [24]  943 	push	acc
      00327B 74 80            [12]  944 	mov	a,#0x80
      00327D C0 E0            [24]  945 	push	acc
      00327F 12 3E B0         [24]  946 	lcall	_printf
      003282 15 81            [12]  947 	dec	sp
      003284 15 81            [12]  948 	dec	sp
      003286 15 81            [12]  949 	dec	sp
                                    950 ;	8051_i2c_eeprom.c:116: addr = take_address(); 
      003288 12 33 23         [24]  951 	lcall	_take_address
      00328B AE 82            [24]  952 	mov	r6,dpl
      00328D AF 83            [24]  953 	mov	r7,dph
                                    954 ;	8051_i2c_eeprom.c:117: if(!address_range_flag) 
      00328F 90 04 57         [24]  955 	mov	dptr,#_address_range_flag
      003292 E0               [24]  956 	movx	a,@dptr
      003293 F5 F0            [12]  957 	mov	b,a
      003295 A3               [24]  958 	inc	dptr
      003296 E0               [24]  959 	movx	a,@dptr
      003297 45 F0            [12]  960 	orl	a,b
      003299 70 0C            [24]  961 	jnz	00108$
                                    962 ;	8051_i2c_eeprom.c:119: address_range_flag = 1;
      00329B 90 04 57         [24]  963 	mov	dptr,#_address_range_flag
      00329E 74 01            [12]  964 	mov	a,#0x01
      0032A0 F0               [24]  965 	movx	@dptr,a
      0032A1 E4               [12]  966 	clr	a
      0032A2 A3               [24]  967 	inc	dptr
      0032A3 F0               [24]  968 	movx	@dptr,a
                                    969 ;	8051_i2c_eeprom.c:120: break;
      0032A4 02 31 B1         [24]  970 	ljmp	00115$
      0032A7                        971 00108$:
                                    972 ;	8051_i2c_eeprom.c:122: printf("| Reading from Address 0x%03X           |\n\r", addr);
      0032A7 C0 07            [24]  973 	push	ar7
      0032A9 C0 06            [24]  974 	push	ar6
      0032AB C0 06            [24]  975 	push	ar6
      0032AD C0 07            [24]  976 	push	ar7
      0032AF 74 A2            [12]  977 	mov	a,#___str_17
      0032B1 C0 E0            [24]  978 	push	acc
      0032B3 74 4F            [12]  979 	mov	a,#(___str_17 >> 8)
      0032B5 C0 E0            [24]  980 	push	acc
      0032B7 74 80            [12]  981 	mov	a,#0x80
      0032B9 C0 E0            [24]  982 	push	acc
      0032BB 12 3E B0         [24]  983 	lcall	_printf
      0032BE E5 81            [12]  984 	mov	a,sp
      0032C0 24 FB            [12]  985 	add	a,#0xfb
      0032C2 F5 81            [12]  986 	mov	sp,a
      0032C4 D0 06            [24]  987 	pop	ar6
      0032C6 D0 07            [24]  988 	pop	ar7
                                    989 ;	8051_i2c_eeprom.c:123: eeprom_read(addr);
      0032C8 8E 82            [24]  990 	mov	dpl,r6
      0032CA 8F 83            [24]  991 	mov	dph,r7
      0032CC 12 37 F7         [24]  992 	lcall	_eeprom_read
                                    993 ;	8051_i2c_eeprom.c:124: break;
      0032CF 02 31 B1         [24]  994 	ljmp	00115$
                                    995 ;	8051_i2c_eeprom.c:127: case '?':
      0032D2                        996 00109$:
                                    997 ;	8051_i2c_eeprom.c:128: command_menu();
      0032D2 12 30 CF         [24]  998 	lcall	_command_menu
                                    999 ;	8051_i2c_eeprom.c:129: break;
      0032D5 02 31 B1         [24] 1000 	ljmp	00115$
                                   1001 ;	8051_i2c_eeprom.c:131: case 'X':
      0032D8                       1002 00110$:
                                   1003 ;	8051_i2c_eeprom.c:132: printf("\n┌─────────────── RESET OPERATION ───────────┐\n\r");
      0032D8 74 CE            [12] 1004 	mov	a,#___str_18
      0032DA C0 E0            [24] 1005 	push	acc
      0032DC 74 4F            [12] 1006 	mov	a,#(___str_18 >> 8)
      0032DE C0 E0            [24] 1007 	push	acc
      0032E0 74 80            [12] 1008 	mov	a,#0x80
      0032E2 C0 E0            [24] 1009 	push	acc
      0032E4 12 3E B0         [24] 1010 	lcall	_printf
      0032E7 15 81            [12] 1011 	dec	sp
      0032E9 15 81            [12] 1012 	dec	sp
      0032EB 15 81            [12] 1013 	dec	sp
                                   1014 ;	8051_i2c_eeprom.c:133: eeprom_reset();
      0032ED 12 3C 5E         [24] 1015 	lcall	_eeprom_reset
                                   1016 ;	8051_i2c_eeprom.c:134: break;
      0032F0 02 31 B1         [24] 1017 	ljmp	00115$
                                   1018 ;	8051_i2c_eeprom.c:136: case 'H':
      0032F3                       1019 00111$:
                                   1020 ;	8051_i2c_eeprom.c:137: printf("\n┌───────────── HEX DUMP OPERATION ───────────────┐\n\r");
      0032F3 74 37            [12] 1021 	mov	a,#___str_19
      0032F5 C0 E0            [24] 1022 	push	acc
      0032F7 74 50            [12] 1023 	mov	a,#(___str_19 >> 8)
      0032F9 C0 E0            [24] 1024 	push	acc
      0032FB 74 80            [12] 1025 	mov	a,#0x80
      0032FD C0 E0            [24] 1026 	push	acc
      0032FF 12 3E B0         [24] 1027 	lcall	_printf
      003302 15 81            [12] 1028 	dec	sp
      003304 15 81            [12] 1029 	dec	sp
      003306 15 81            [12] 1030 	dec	sp
                                   1031 ;	8051_i2c_eeprom.c:143: handler_EEPROM_hexdump();
      003308 12 3B B8         [24] 1032 	lcall	_handler_EEPROM_hexdump
                                   1033 ;	8051_i2c_eeprom.c:146: default:
      00330B                       1034 00112$:
                                   1035 ;	8051_i2c_eeprom.c:147: printf("INVALID INPUT\n\r");
      00330B 74 A9            [12] 1036 	mov	a,#___str_20
      00330D C0 E0            [24] 1037 	push	acc
      00330F 74 50            [12] 1038 	mov	a,#(___str_20 >> 8)
      003311 C0 E0            [24] 1039 	push	acc
      003313 74 80            [12] 1040 	mov	a,#0x80
      003315 C0 E0            [24] 1041 	push	acc
      003317 12 3E B0         [24] 1042 	lcall	_printf
      00331A 15 81            [12] 1043 	dec	sp
      00331C 15 81            [12] 1044 	dec	sp
      00331E 15 81            [12] 1045 	dec	sp
                                   1046 ;	8051_i2c_eeprom.c:149: }
                                   1047 ;	8051_i2c_eeprom.c:152: }
      003320 02 31 B1         [24] 1048 	ljmp	00115$
                                   1049 ;------------------------------------------------------------
                                   1050 ;Allocation info for local variables in function 'take_address'
                                   1051 ;------------------------------------------------------------
                                   1052 ;input                     Allocated with name '_take_address_input_65537_68'
                                   1053 ;i                         Allocated with name '_take_address_i_65537_68'
                                   1054 ;c                         Allocated with name '_take_address_c_65537_68'
                                   1055 ;address                   Allocated with name '_take_address_address_65538_72'
                                   1056 ;block                     Allocated with name '_take_address_block_65539_76'
                                   1057 ;------------------------------------------------------------
                                   1058 ;	8051_i2c_eeprom.c:154: unsigned int take_address() 
                                   1059 ;	-----------------------------------------
                                   1060 ;	 function take_address
                                   1061 ;	-----------------------------------------
      003323                       1062 _take_address:
                                   1063 ;	8051_i2c_eeprom.c:156: printf("│ Enter address (hex, up to 3 characters): \n\r|");
      003323 74 B9            [12] 1064 	mov	a,#___str_21
      003325 C0 E0            [24] 1065 	push	acc
      003327 74 50            [12] 1066 	mov	a,#(___str_21 >> 8)
      003329 C0 E0            [24] 1067 	push	acc
      00332B 74 80            [12] 1068 	mov	a,#0x80
      00332D C0 E0            [24] 1069 	push	acc
      00332F 12 3E B0         [24] 1070 	lcall	_printf
      003332 15 81            [12] 1071 	dec	sp
      003334 15 81            [12] 1072 	dec	sp
      003336 15 81            [12] 1073 	dec	sp
                                   1074 ;	8051_i2c_eeprom.c:157: char input[4] = {0};  // Array for 3 hex chars + null terminator
      003338 90 04 04         [24] 1075 	mov	dptr,#_take_address_input_65537_68
      00333B E4               [12] 1076 	clr	a
      00333C F0               [24] 1077 	movx	@dptr,a
      00333D 90 04 05         [24] 1078 	mov	dptr,#(_take_address_input_65537_68 + 0x0001)
      003340 F0               [24] 1079 	movx	@dptr,a
      003341 90 04 06         [24] 1080 	mov	dptr,#(_take_address_input_65537_68 + 0x0002)
      003344 F0               [24] 1081 	movx	@dptr,a
      003345 90 04 07         [24] 1082 	mov	dptr,#(_take_address_input_65537_68 + 0x0003)
      003348 F0               [24] 1083 	movx	@dptr,a
                                   1084 ;	8051_i2c_eeprom.c:161: printf("| $ ");
      003349 74 EA            [12] 1085 	mov	a,#___str_22
      00334B C0 E0            [24] 1086 	push	acc
      00334D 74 50            [12] 1087 	mov	a,#(___str_22 >> 8)
      00334F C0 E0            [24] 1088 	push	acc
      003351 74 80            [12] 1089 	mov	a,#0x80
      003353 C0 E0            [24] 1090 	push	acc
      003355 12 3E B0         [24] 1091 	lcall	_printf
      003358 15 81            [12] 1092 	dec	sp
      00335A 15 81            [12] 1093 	dec	sp
      00335C 15 81            [12] 1094 	dec	sp
                                   1095 ;	8051_i2c_eeprom.c:163: while (i < 3) {
      00335E 7E 00            [12] 1096 	mov	r6,#0x00
      003360 7F 00            [12] 1097 	mov	r7,#0x00
      003362                       1098 00111$:
      003362 C3               [12] 1099 	clr	c
      003363 EE               [12] 1100 	mov	a,r6
      003364 94 03            [12] 1101 	subb	a,#0x03
      003366 EF               [12] 1102 	mov	a,r7
      003367 64 80            [12] 1103 	xrl	a,#0x80
      003369 94 80            [12] 1104 	subb	a,#0x80
      00336B 50 5B            [24] 1105 	jnc	00113$
                                   1106 ;	8051_i2c_eeprom.c:165: c = getchar();
      00336D C0 07            [24] 1107 	push	ar7
      00336F C0 06            [24] 1108 	push	ar6
      003371 12 30 81         [24] 1109 	lcall	_getchar
      003374 AC 82            [24] 1110 	mov	r4,dpl
      003376 AD 83            [24] 1111 	mov	r5,dph
      003378 D0 06            [24] 1112 	pop	ar6
      00337A D0 07            [24] 1113 	pop	ar7
                                   1114 ;	8051_i2c_eeprom.c:168: if (c == '\r' || c == '\n') {
      00337C BC 0D 02         [24] 1115 	cjne	r4,#0x0d,00200$
      00337F 80 47            [24] 1116 	sjmp	00113$
      003381                       1117 00200$:
      003381 BC 0A 02         [24] 1118 	cjne	r4,#0x0a,00201$
      003384 80 42            [24] 1119 	sjmp	00113$
      003386                       1120 00201$:
                                   1121 ;	8051_i2c_eeprom.c:173: if ((c >= '0' && c <= '9') || 
      003386 BC 30 00         [24] 1122 	cjne	r4,#0x30,00202$
      003389                       1123 00202$:
      003389 40 05            [24] 1124 	jc	00108$
      00338B EC               [12] 1125 	mov	a,r4
      00338C 24 C6            [12] 1126 	add	a,#0xff - 0x39
      00338E 50 14            [24] 1127 	jnc	00104$
      003390                       1128 00108$:
                                   1129 ;	8051_i2c_eeprom.c:174: (c >= 'a' && c <= 'f') || 
      003390 BC 61 00         [24] 1130 	cjne	r4,#0x61,00205$
      003393                       1131 00205$:
      003393 40 05            [24] 1132 	jc	00110$
      003395 EC               [12] 1133 	mov	a,r4
      003396 24 99            [12] 1134 	add	a,#0xff - 0x66
      003398 50 0A            [24] 1135 	jnc	00104$
      00339A                       1136 00110$:
                                   1137 ;	8051_i2c_eeprom.c:175: (c >= 'A' && c <= 'F')) {
      00339A BC 41 00         [24] 1138 	cjne	r4,#0x41,00208$
      00339D                       1139 00208$:
      00339D 40 C3            [24] 1140 	jc	00111$
      00339F EC               [12] 1141 	mov	a,r4
      0033A0 24 B9            [12] 1142 	add	a,#0xff - 0x46
      0033A2 40 BE            [24] 1143 	jc	00111$
      0033A4                       1144 00104$:
                                   1145 ;	8051_i2c_eeprom.c:177: input[i] = c;
      0033A4 EE               [12] 1146 	mov	a,r6
      0033A5 24 04            [12] 1147 	add	a,#_take_address_input_65537_68
      0033A7 F5 82            [12] 1148 	mov	dpl,a
      0033A9 EF               [12] 1149 	mov	a,r7
      0033AA 34 04            [12] 1150 	addc	a,#(_take_address_input_65537_68 >> 8)
      0033AC F5 83            [12] 1151 	mov	dph,a
      0033AE EC               [12] 1152 	mov	a,r4
      0033AF F0               [24] 1153 	movx	@dptr,a
                                   1154 ;	8051_i2c_eeprom.c:178: putchar(c);  // Echo character back
      0033B0 7D 00            [12] 1155 	mov	r5,#0x00
      0033B2 8C 82            [24] 1156 	mov	dpl,r4
      0033B4 8D 83            [24] 1157 	mov	dph,r5
      0033B6 C0 07            [24] 1158 	push	ar7
      0033B8 C0 06            [24] 1159 	push	ar6
      0033BA 12 30 62         [24] 1160 	lcall	_putchar
      0033BD D0 06            [24] 1161 	pop	ar6
      0033BF D0 07            [24] 1162 	pop	ar7
                                   1163 ;	8051_i2c_eeprom.c:179: i++;
      0033C1 0E               [12] 1164 	inc	r6
      0033C2 BE 00 9D         [24] 1165 	cjne	r6,#0x00,00111$
      0033C5 0F               [12] 1166 	inc	r7
      0033C6 80 9A            [24] 1167 	sjmp	00111$
      0033C8                       1168 00113$:
                                   1169 ;	8051_i2c_eeprom.c:183: input[i] = '\0';  // Null-terminate the string
      0033C8 EE               [12] 1170 	mov	a,r6
      0033C9 24 04            [12] 1171 	add	a,#_take_address_input_65537_68
      0033CB F5 82            [12] 1172 	mov	dpl,a
      0033CD EF               [12] 1173 	mov	a,r7
      0033CE 34 04            [12] 1174 	addc	a,#(_take_address_input_65537_68 >> 8)
      0033D0 F5 83            [12] 1175 	mov	dph,a
      0033D2 E4               [12] 1176 	clr	a
      0033D3 F0               [24] 1177 	movx	@dptr,a
                                   1178 ;	8051_i2c_eeprom.c:186: unsigned int address = 0;
      0033D4 90 04 08         [24] 1179 	mov	dptr,#_take_address_address_65538_72
      0033D7 F0               [24] 1180 	movx	@dptr,a
      0033D8 A3               [24] 1181 	inc	dptr
      0033D9 F0               [24] 1182 	movx	@dptr,a
                                   1183 ;	8051_i2c_eeprom.c:187: for(i = 0; input[i] != '\0'; i++) {
      0033DA 7E 00            [12] 1184 	mov	r6,#0x00
      0033DC 7F 00            [12] 1185 	mov	r7,#0x00
      0033DE                       1186 00129$:
      0033DE EE               [12] 1187 	mov	a,r6
      0033DF 24 04            [12] 1188 	add	a,#_take_address_input_65537_68
      0033E1 F5 82            [12] 1189 	mov	dpl,a
      0033E3 EF               [12] 1190 	mov	a,r7
      0033E4 34 04            [12] 1191 	addc	a,#(_take_address_input_65537_68 >> 8)
      0033E6 F5 83            [12] 1192 	mov	dph,a
      0033E8 E0               [24] 1193 	movx	a,@dptr
      0033E9 FD               [12] 1194 	mov	r5,a
      0033EA 70 03            [24] 1195 	jnz	00212$
      0033EC 02 34 97         [24] 1196 	ljmp	00125$
      0033EF                       1197 00212$:
                                   1198 ;	8051_i2c_eeprom.c:188: address = address * 16;
      0033EF 90 04 08         [24] 1199 	mov	dptr,#_take_address_address_65538_72
      0033F2 E0               [24] 1200 	movx	a,@dptr
      0033F3 FB               [12] 1201 	mov	r3,a
      0033F4 A3               [24] 1202 	inc	dptr
      0033F5 E0               [24] 1203 	movx	a,@dptr
      0033F6 C4               [12] 1204 	swap	a
      0033F7 54 F0            [12] 1205 	anl	a,#0xf0
      0033F9 CB               [12] 1206 	xch	a,r3
      0033FA C4               [12] 1207 	swap	a
      0033FB CB               [12] 1208 	xch	a,r3
      0033FC 6B               [12] 1209 	xrl	a,r3
      0033FD CB               [12] 1210 	xch	a,r3
      0033FE 54 F0            [12] 1211 	anl	a,#0xf0
      003400 CB               [12] 1212 	xch	a,r3
      003401 6B               [12] 1213 	xrl	a,r3
      003402 FC               [12] 1214 	mov	r4,a
      003403 90 04 08         [24] 1215 	mov	dptr,#_take_address_address_65538_72
      003406 EB               [12] 1216 	mov	a,r3
      003407 F0               [24] 1217 	movx	@dptr,a
      003408 EC               [12] 1218 	mov	a,r4
      003409 A3               [24] 1219 	inc	dptr
      00340A F0               [24] 1220 	movx	@dptr,a
                                   1221 ;	8051_i2c_eeprom.c:189: if(input[i] >= '0' && input[i] <= '9')
      00340B BD 30 00         [24] 1222 	cjne	r5,#0x30,00213$
      00340E                       1223 00213$:
      00340E 40 23            [24] 1224 	jc	00122$
      003410 ED               [12] 1225 	mov	a,r5
      003411 24 C6            [12] 1226 	add	a,#0xff - 0x39
      003413 40 1E            [24] 1227 	jc	00122$
                                   1228 ;	8051_i2c_eeprom.c:190: address += input[i] - '0';
      003415 7C 00            [12] 1229 	mov	r4,#0x00
      003417 ED               [12] 1230 	mov	a,r5
      003418 24 D0            [12] 1231 	add	a,#0xd0
      00341A FD               [12] 1232 	mov	r5,a
      00341B EC               [12] 1233 	mov	a,r4
      00341C 34 FF            [12] 1234 	addc	a,#0xff
      00341E FC               [12] 1235 	mov	r4,a
      00341F 90 04 08         [24] 1236 	mov	dptr,#_take_address_address_65538_72
      003422 E0               [24] 1237 	movx	a,@dptr
      003423 FA               [12] 1238 	mov	r2,a
      003424 A3               [24] 1239 	inc	dptr
      003425 E0               [24] 1240 	movx	a,@dptr
      003426 FB               [12] 1241 	mov	r3,a
      003427 90 04 08         [24] 1242 	mov	dptr,#_take_address_address_65538_72
      00342A ED               [12] 1243 	mov	a,r5
      00342B 2A               [12] 1244 	add	a,r2
      00342C F0               [24] 1245 	movx	@dptr,a
      00342D EC               [12] 1246 	mov	a,r4
      00342E 3B               [12] 1247 	addc	a,r3
      00342F A3               [24] 1248 	inc	dptr
      003430 F0               [24] 1249 	movx	@dptr,a
      003431 80 5C            [24] 1250 	sjmp	00130$
      003433                       1251 00122$:
                                   1252 ;	8051_i2c_eeprom.c:191: else if(input[i] >= 'A' && input[i] <= 'F')
      003433 EE               [12] 1253 	mov	a,r6
      003434 24 04            [12] 1254 	add	a,#_take_address_input_65537_68
      003436 F5 82            [12] 1255 	mov	dpl,a
      003438 EF               [12] 1256 	mov	a,r7
      003439 34 04            [12] 1257 	addc	a,#(_take_address_input_65537_68 >> 8)
      00343B F5 83            [12] 1258 	mov	dph,a
      00343D E0               [24] 1259 	movx	a,@dptr
      00343E FD               [12] 1260 	mov	r5,a
      00343F BD 41 00         [24] 1261 	cjne	r5,#0x41,00216$
      003442                       1262 00216$:
      003442 40 25            [24] 1263 	jc	00118$
      003444 ED               [12] 1264 	mov	a,r5
      003445 24 B9            [12] 1265 	add	a,#0xff - 0x46
      003447 40 20            [24] 1266 	jc	00118$
                                   1267 ;	8051_i2c_eeprom.c:192: address += input[i] - 'A' + 10;
      003449 8D 03            [24] 1268 	mov	ar3,r5
      00344B 7C 00            [12] 1269 	mov	r4,#0x00
      00344D 74 C9            [12] 1270 	mov	a,#0xc9
      00344F 2B               [12] 1271 	add	a,r3
      003450 FB               [12] 1272 	mov	r3,a
      003451 74 FF            [12] 1273 	mov	a,#0xff
      003453 3C               [12] 1274 	addc	a,r4
      003454 FC               [12] 1275 	mov	r4,a
      003455 90 04 08         [24] 1276 	mov	dptr,#_take_address_address_65538_72
      003458 E0               [24] 1277 	movx	a,@dptr
      003459 F9               [12] 1278 	mov	r1,a
      00345A A3               [24] 1279 	inc	dptr
      00345B E0               [24] 1280 	movx	a,@dptr
      00345C FA               [12] 1281 	mov	r2,a
      00345D 90 04 08         [24] 1282 	mov	dptr,#_take_address_address_65538_72
      003460 EB               [12] 1283 	mov	a,r3
      003461 29               [12] 1284 	add	a,r1
      003462 F0               [24] 1285 	movx	@dptr,a
      003463 EC               [12] 1286 	mov	a,r4
      003464 3A               [12] 1287 	addc	a,r2
      003465 A3               [24] 1288 	inc	dptr
      003466 F0               [24] 1289 	movx	@dptr,a
      003467 80 26            [24] 1290 	sjmp	00130$
      003469                       1291 00118$:
                                   1292 ;	8051_i2c_eeprom.c:193: else if(input[i] >= 'a' && input[i] <= 'f')
      003469 BD 61 00         [24] 1293 	cjne	r5,#0x61,00219$
      00346C                       1294 00219$:
      00346C 40 21            [24] 1295 	jc	00130$
      00346E ED               [12] 1296 	mov	a,r5
      00346F 24 99            [12] 1297 	add	a,#0xff - 0x66
      003471 40 1C            [24] 1298 	jc	00130$
                                   1299 ;	8051_i2c_eeprom.c:194: address += input[i] - 'a' + 10;
      003473 7C 00            [12] 1300 	mov	r4,#0x00
      003475 74 A9            [12] 1301 	mov	a,#0xa9
      003477 2D               [12] 1302 	add	a,r5
      003478 FD               [12] 1303 	mov	r5,a
      003479 74 FF            [12] 1304 	mov	a,#0xff
      00347B 3C               [12] 1305 	addc	a,r4
      00347C FC               [12] 1306 	mov	r4,a
      00347D 90 04 08         [24] 1307 	mov	dptr,#_take_address_address_65538_72
      003480 E0               [24] 1308 	movx	a,@dptr
      003481 FA               [12] 1309 	mov	r2,a
      003482 A3               [24] 1310 	inc	dptr
      003483 E0               [24] 1311 	movx	a,@dptr
      003484 FB               [12] 1312 	mov	r3,a
      003485 90 04 08         [24] 1313 	mov	dptr,#_take_address_address_65538_72
      003488 ED               [12] 1314 	mov	a,r5
      003489 2A               [12] 1315 	add	a,r2
      00348A F0               [24] 1316 	movx	@dptr,a
      00348B EC               [12] 1317 	mov	a,r4
      00348C 3B               [12] 1318 	addc	a,r3
      00348D A3               [24] 1319 	inc	dptr
      00348E F0               [24] 1320 	movx	@dptr,a
      00348F                       1321 00130$:
                                   1322 ;	8051_i2c_eeprom.c:187: for(i = 0; input[i] != '\0'; i++) {
      00348F 0E               [12] 1323 	inc	r6
      003490 BE 00 01         [24] 1324 	cjne	r6,#0x00,00222$
      003493 0F               [12] 1325 	inc	r7
      003494                       1326 00222$:
      003494 02 33 DE         [24] 1327 	ljmp	00129$
      003497                       1328 00125$:
                                   1329 ;	8051_i2c_eeprom.c:197: printf("\n\r│ Entered address: 0x%03X\n\r", address);
      003497 90 04 08         [24] 1330 	mov	dptr,#_take_address_address_65538_72
      00349A E0               [24] 1331 	movx	a,@dptr
      00349B FE               [12] 1332 	mov	r6,a
      00349C A3               [24] 1333 	inc	dptr
      00349D E0               [24] 1334 	movx	a,@dptr
      00349E FF               [12] 1335 	mov	r7,a
      00349F C0 07            [24] 1336 	push	ar7
      0034A1 C0 06            [24] 1337 	push	ar6
      0034A3 C0 06            [24] 1338 	push	ar6
      0034A5 C0 07            [24] 1339 	push	ar7
      0034A7 74 EF            [12] 1340 	mov	a,#___str_23
      0034A9 C0 E0            [24] 1341 	push	acc
      0034AB 74 50            [12] 1342 	mov	a,#(___str_23 >> 8)
      0034AD C0 E0            [24] 1343 	push	acc
      0034AF 74 80            [12] 1344 	mov	a,#0x80
      0034B1 C0 E0            [24] 1345 	push	acc
      0034B3 12 3E B0         [24] 1346 	lcall	_printf
      0034B6 E5 81            [12] 1347 	mov	a,sp
      0034B8 24 FB            [12] 1348 	add	a,#0xfb
      0034BA F5 81            [12] 1349 	mov	sp,a
      0034BC D0 06            [24] 1350 	pop	ar6
      0034BE D0 07            [24] 1351 	pop	ar7
                                   1352 ;	8051_i2c_eeprom.c:198: if(address > 0x7ff) 
      0034C0 C3               [12] 1353 	clr	c
      0034C1 74 FF            [12] 1354 	mov	a,#0xff
      0034C3 9E               [12] 1355 	subb	a,r6
      0034C4 74 07            [12] 1356 	mov	a,#0x07
      0034C6 9F               [12] 1357 	subb	a,r7
      0034C7 50 5F            [24] 1358 	jnc	00127$
                                   1359 ;	8051_i2c_eeprom.c:200: printf("╔══════════════════════════════════════════╗\n\r");
      0034C9 74 0F            [12] 1360 	mov	a,#___str_24
      0034CB C0 E0            [24] 1361 	push	acc
      0034CD 74 51            [12] 1362 	mov	a,#(___str_24 >> 8)
      0034CF C0 E0            [24] 1363 	push	acc
      0034D1 74 80            [12] 1364 	mov	a,#0x80
      0034D3 C0 E0            [24] 1365 	push	acc
      0034D5 12 3E B0         [24] 1366 	lcall	_printf
      0034D8 15 81            [12] 1367 	dec	sp
      0034DA 15 81            [12] 1368 	dec	sp
      0034DC 15 81            [12] 1369 	dec	sp
                                   1370 ;	8051_i2c_eeprom.c:201: printf("║       ! ADDRESS OUT OF RANGE !         ║\n\r");
      0034DE 74 96            [12] 1371 	mov	a,#___str_25
      0034E0 C0 E0            [24] 1372 	push	acc
      0034E2 74 51            [12] 1373 	mov	a,#(___str_25 >> 8)
      0034E4 C0 E0            [24] 1374 	push	acc
      0034E6 74 80            [12] 1375 	mov	a,#0x80
      0034E8 C0 E0            [24] 1376 	push	acc
      0034EA 12 3E B0         [24] 1377 	lcall	_printf
      0034ED 15 81            [12] 1378 	dec	sp
      0034EF 15 81            [12] 1379 	dec	sp
      0034F1 15 81            [12] 1380 	dec	sp
                                   1381 ;	8051_i2c_eeprom.c:202: printf("║     Please Enter Valid Address         ║\n\r");
      0034F3 74 C7            [12] 1382 	mov	a,#___str_26
      0034F5 C0 E0            [24] 1383 	push	acc
      0034F7 74 51            [12] 1384 	mov	a,#(___str_26 >> 8)
      0034F9 C0 E0            [24] 1385 	push	acc
      0034FB 74 80            [12] 1386 	mov	a,#0x80
      0034FD C0 E0            [24] 1387 	push	acc
      0034FF 12 3E B0         [24] 1388 	lcall	_printf
      003502 15 81            [12] 1389 	dec	sp
      003504 15 81            [12] 1390 	dec	sp
      003506 15 81            [12] 1391 	dec	sp
                                   1392 ;	8051_i2c_eeprom.c:203: printf("╚══════════════════════════════════════════╝\n\r");
      003508 74 F8            [12] 1393 	mov	a,#___str_27
      00350A C0 E0            [24] 1394 	push	acc
      00350C 74 51            [12] 1395 	mov	a,#(___str_27 >> 8)
      00350E C0 E0            [24] 1396 	push	acc
      003510 74 80            [12] 1397 	mov	a,#0x80
      003512 C0 E0            [24] 1398 	push	acc
      003514 12 3E B0         [24] 1399 	lcall	_printf
      003517 15 81            [12] 1400 	dec	sp
      003519 15 81            [12] 1401 	dec	sp
      00351B 15 81            [12] 1402 	dec	sp
                                   1403 ;	8051_i2c_eeprom.c:204: address_range_flag = 0;
      00351D 90 04 57         [24] 1404 	mov	dptr,#_address_range_flag
      003520 E4               [12] 1405 	clr	a
      003521 F0               [24] 1406 	movx	@dptr,a
      003522 A3               [24] 1407 	inc	dptr
      003523 F0               [24] 1408 	movx	@dptr,a
                                   1409 ;	8051_i2c_eeprom.c:205: return 0;
      003524 90 00 00         [24] 1410 	mov	dptr,#0x0000
      003527 22               [24] 1411 	ret
      003528                       1412 00127$:
                                   1413 ;	8051_i2c_eeprom.c:209: address = address%256;     //word address
      003528 90 04 08         [24] 1414 	mov	dptr,#_take_address_address_65538_72
      00352B EE               [12] 1415 	mov	a,r6
      00352C F0               [24] 1416 	movx	@dptr,a
      00352D E4               [12] 1417 	clr	a
      00352E A3               [24] 1418 	inc	dptr
      00352F F0               [24] 1419 	movx	@dptr,a
                                   1420 ;	8051_i2c_eeprom.c:212: return address;
      003530 90 04 08         [24] 1421 	mov	dptr,#_take_address_address_65538_72
      003533 E0               [24] 1422 	movx	a,@dptr
      003534 FE               [12] 1423 	mov	r6,a
      003535 A3               [24] 1424 	inc	dptr
      003536 E0               [24] 1425 	movx	a,@dptr
                                   1426 ;	8051_i2c_eeprom.c:213: }
      003537 8E 82            [24] 1427 	mov	dpl,r6
      003539 F5 83            [12] 1428 	mov	dph,a
      00353B 22               [24] 1429 	ret
                                   1430 ;------------------------------------------------------------
                                   1431 ;Allocation info for local variables in function 'take_data'
                                   1432 ;------------------------------------------------------------
                                   1433 ;input                     Allocated with name '_take_data_input_65537_78'
                                   1434 ;i                         Allocated with name '_take_data_i_65537_78'
                                   1435 ;c                         Allocated with name '_take_data_c_65537_78'
                                   1436 ;data                      Allocated with name '_take_data_data_65538_82'
                                   1437 ;------------------------------------------------------------
                                   1438 ;	8051_i2c_eeprom.c:215: unsigned char take_data()
                                   1439 ;	-----------------------------------------
                                   1440 ;	 function take_data
                                   1441 ;	-----------------------------------------
      00353C                       1442 _take_data:
                                   1443 ;	8051_i2c_eeprom.c:217: printf("│ Enter data (hex, up to 2 characters): \n\r|");
      00353C 74 7F            [12] 1444 	mov	a,#___str_28
      00353E C0 E0            [24] 1445 	push	acc
      003540 74 52            [12] 1446 	mov	a,#(___str_28 >> 8)
      003542 C0 E0            [24] 1447 	push	acc
      003544 74 80            [12] 1448 	mov	a,#0x80
      003546 C0 E0            [24] 1449 	push	acc
      003548 12 3E B0         [24] 1450 	lcall	_printf
      00354B 15 81            [12] 1451 	dec	sp
      00354D 15 81            [12] 1452 	dec	sp
      00354F 15 81            [12] 1453 	dec	sp
                                   1454 ;	8051_i2c_eeprom.c:218: char input[4] = {0};  // Array for 3 hex chars + null terminator
      003551 90 04 0A         [24] 1455 	mov	dptr,#_take_data_input_65537_78
      003554 E4               [12] 1456 	clr	a
      003555 F0               [24] 1457 	movx	@dptr,a
      003556 90 04 0B         [24] 1458 	mov	dptr,#(_take_data_input_65537_78 + 0x0001)
      003559 F0               [24] 1459 	movx	@dptr,a
      00355A 90 04 0C         [24] 1460 	mov	dptr,#(_take_data_input_65537_78 + 0x0002)
      00355D F0               [24] 1461 	movx	@dptr,a
      00355E 90 04 0D         [24] 1462 	mov	dptr,#(_take_data_input_65537_78 + 0x0003)
      003561 F0               [24] 1463 	movx	@dptr,a
                                   1464 ;	8051_i2c_eeprom.c:222: printf("$ ");
      003562 74 AD            [12] 1465 	mov	a,#___str_29
      003564 C0 E0            [24] 1466 	push	acc
      003566 74 52            [12] 1467 	mov	a,#(___str_29 >> 8)
      003568 C0 E0            [24] 1468 	push	acc
      00356A 74 80            [12] 1469 	mov	a,#0x80
      00356C C0 E0            [24] 1470 	push	acc
      00356E 12 3E B0         [24] 1471 	lcall	_printf
      003571 15 81            [12] 1472 	dec	sp
      003573 15 81            [12] 1473 	dec	sp
      003575 15 81            [12] 1474 	dec	sp
                                   1475 ;	8051_i2c_eeprom.c:224: while (i < 3) {
      003577 7E 00            [12] 1476 	mov	r6,#0x00
      003579 7F 00            [12] 1477 	mov	r7,#0x00
      00357B                       1478 00111$:
      00357B C3               [12] 1479 	clr	c
      00357C EE               [12] 1480 	mov	a,r6
      00357D 94 03            [12] 1481 	subb	a,#0x03
      00357F EF               [12] 1482 	mov	a,r7
      003580 64 80            [12] 1483 	xrl	a,#0x80
      003582 94 80            [12] 1484 	subb	a,#0x80
      003584 50 5B            [24] 1485 	jnc	00113$
                                   1486 ;	8051_i2c_eeprom.c:226: c = getchar();
      003586 C0 07            [24] 1487 	push	ar7
      003588 C0 06            [24] 1488 	push	ar6
      00358A 12 30 81         [24] 1489 	lcall	_getchar
      00358D AC 82            [24] 1490 	mov	r4,dpl
      00358F AD 83            [24] 1491 	mov	r5,dph
      003591 D0 06            [24] 1492 	pop	ar6
      003593 D0 07            [24] 1493 	pop	ar7
                                   1494 ;	8051_i2c_eeprom.c:229: if (c == '\r' || c == '\n') {
      003595 BC 0D 02         [24] 1495 	cjne	r4,#0x0d,00200$
      003598 80 47            [24] 1496 	sjmp	00113$
      00359A                       1497 00200$:
      00359A BC 0A 02         [24] 1498 	cjne	r4,#0x0a,00201$
      00359D 80 42            [24] 1499 	sjmp	00113$
      00359F                       1500 00201$:
                                   1501 ;	8051_i2c_eeprom.c:234: if ((c >= '0' && c <= '9') ||
      00359F BC 30 00         [24] 1502 	cjne	r4,#0x30,00202$
      0035A2                       1503 00202$:
      0035A2 40 05            [24] 1504 	jc	00108$
      0035A4 EC               [12] 1505 	mov	a,r4
      0035A5 24 C6            [12] 1506 	add	a,#0xff - 0x39
      0035A7 50 14            [24] 1507 	jnc	00104$
      0035A9                       1508 00108$:
                                   1509 ;	8051_i2c_eeprom.c:235: (c >= 'a' && c <= 'f') ||
      0035A9 BC 61 00         [24] 1510 	cjne	r4,#0x61,00205$
      0035AC                       1511 00205$:
      0035AC 40 05            [24] 1512 	jc	00110$
      0035AE EC               [12] 1513 	mov	a,r4
      0035AF 24 99            [12] 1514 	add	a,#0xff - 0x66
      0035B1 50 0A            [24] 1515 	jnc	00104$
      0035B3                       1516 00110$:
                                   1517 ;	8051_i2c_eeprom.c:236: (c >= 'A' && c <= 'F')) {
      0035B3 BC 41 00         [24] 1518 	cjne	r4,#0x41,00208$
      0035B6                       1519 00208$:
      0035B6 40 C3            [24] 1520 	jc	00111$
      0035B8 EC               [12] 1521 	mov	a,r4
      0035B9 24 B9            [12] 1522 	add	a,#0xff - 0x46
      0035BB 40 BE            [24] 1523 	jc	00111$
      0035BD                       1524 00104$:
                                   1525 ;	8051_i2c_eeprom.c:238: input[i] = c;
      0035BD EE               [12] 1526 	mov	a,r6
      0035BE 24 0A            [12] 1527 	add	a,#_take_data_input_65537_78
      0035C0 F5 82            [12] 1528 	mov	dpl,a
      0035C2 EF               [12] 1529 	mov	a,r7
      0035C3 34 04            [12] 1530 	addc	a,#(_take_data_input_65537_78 >> 8)
      0035C5 F5 83            [12] 1531 	mov	dph,a
      0035C7 EC               [12] 1532 	mov	a,r4
      0035C8 F0               [24] 1533 	movx	@dptr,a
                                   1534 ;	8051_i2c_eeprom.c:239: putchar(c);  // Echo character back
      0035C9 7D 00            [12] 1535 	mov	r5,#0x00
      0035CB 8C 82            [24] 1536 	mov	dpl,r4
      0035CD 8D 83            [24] 1537 	mov	dph,r5
      0035CF C0 07            [24] 1538 	push	ar7
      0035D1 C0 06            [24] 1539 	push	ar6
      0035D3 12 30 62         [24] 1540 	lcall	_putchar
      0035D6 D0 06            [24] 1541 	pop	ar6
      0035D8 D0 07            [24] 1542 	pop	ar7
                                   1543 ;	8051_i2c_eeprom.c:240: i++;
      0035DA 0E               [12] 1544 	inc	r6
      0035DB BE 00 9D         [24] 1545 	cjne	r6,#0x00,00111$
      0035DE 0F               [12] 1546 	inc	r7
      0035DF 80 9A            [24] 1547 	sjmp	00111$
      0035E1                       1548 00113$:
                                   1549 ;	8051_i2c_eeprom.c:244: input[i] = '\0';  // Null-terminate the string
      0035E1 EE               [12] 1550 	mov	a,r6
      0035E2 24 0A            [12] 1551 	add	a,#_take_data_input_65537_78
      0035E4 F5 82            [12] 1552 	mov	dpl,a
      0035E6 EF               [12] 1553 	mov	a,r7
      0035E7 34 04            [12] 1554 	addc	a,#(_take_data_input_65537_78 >> 8)
      0035E9 F5 83            [12] 1555 	mov	dph,a
      0035EB E4               [12] 1556 	clr	a
      0035EC F0               [24] 1557 	movx	@dptr,a
                                   1558 ;	8051_i2c_eeprom.c:247: unsigned char data = 0;
      0035ED 90 04 0E         [24] 1559 	mov	dptr,#_take_data_data_65538_82
      0035F0 F0               [24] 1560 	movx	@dptr,a
                                   1561 ;	8051_i2c_eeprom.c:248: for (i = 0; input[i] != '\0'; i++) {
      0035F1 7E 00            [12] 1562 	mov	r6,#0x00
      0035F3 7F 00            [12] 1563 	mov	r7,#0x00
      0035F5                       1564 00129$:
      0035F5 EE               [12] 1565 	mov	a,r6
      0035F6 24 0A            [12] 1566 	add	a,#_take_data_input_65537_78
      0035F8 F5 82            [12] 1567 	mov	dpl,a
      0035FA EF               [12] 1568 	mov	a,r7
      0035FB 34 04            [12] 1569 	addc	a,#(_take_data_input_65537_78 >> 8)
      0035FD F5 83            [12] 1570 	mov	dph,a
      0035FF E0               [24] 1571 	movx	a,@dptr
      003600 FD               [12] 1572 	mov	r5,a
      003601 70 03            [24] 1573 	jnz	00212$
      003603 02 36 68         [24] 1574 	ljmp	00125$
      003606                       1575 00212$:
                                   1576 ;	8051_i2c_eeprom.c:249: data = data * 16;
      003606 90 04 0E         [24] 1577 	mov	dptr,#_take_data_data_65538_82
      003609 E0               [24] 1578 	movx	a,@dptr
      00360A C4               [12] 1579 	swap	a
      00360B 54 F0            [12] 1580 	anl	a,#0xf0
      00360D FC               [12] 1581 	mov	r4,a
      00360E F0               [24] 1582 	movx	@dptr,a
                                   1583 ;	8051_i2c_eeprom.c:250: if (input[i] >= '0' && input[i] <= '9')
      00360F BD 30 00         [24] 1584 	cjne	r5,#0x30,00213$
      003612                       1585 00213$:
      003612 40 12            [24] 1586 	jc	00122$
      003614 ED               [12] 1587 	mov	a,r5
      003615 24 C6            [12] 1588 	add	a,#0xff - 0x39
      003617 40 0D            [24] 1589 	jc	00122$
                                   1590 ;	8051_i2c_eeprom.c:251: data += input[i] - '0';
      003619 ED               [12] 1591 	mov	a,r5
      00361A 24 D0            [12] 1592 	add	a,#0xd0
      00361C FD               [12] 1593 	mov	r5,a
      00361D 90 04 0E         [24] 1594 	mov	dptr,#_take_data_data_65538_82
      003620 E0               [24] 1595 	movx	a,@dptr
      003621 FC               [12] 1596 	mov	r4,a
      003622 2D               [12] 1597 	add	a,r5
      003623 F0               [24] 1598 	movx	@dptr,a
      003624 80 3A            [24] 1599 	sjmp	00130$
      003626                       1600 00122$:
                                   1601 ;	8051_i2c_eeprom.c:252: else if (input[i] >= 'A' && input[i] <= 'F')
      003626 EE               [12] 1602 	mov	a,r6
      003627 24 0A            [12] 1603 	add	a,#_take_data_input_65537_78
      003629 F5 82            [12] 1604 	mov	dpl,a
      00362B EF               [12] 1605 	mov	a,r7
      00362C 34 04            [12] 1606 	addc	a,#(_take_data_input_65537_78 >> 8)
      00362E F5 83            [12] 1607 	mov	dph,a
      003630 E0               [24] 1608 	movx	a,@dptr
      003631 FD               [12] 1609 	mov	r5,a
      003632 BD 41 00         [24] 1610 	cjne	r5,#0x41,00216$
      003635                       1611 00216$:
      003635 40 14            [24] 1612 	jc	00118$
      003637 ED               [12] 1613 	mov	a,r5
      003638 24 B9            [12] 1614 	add	a,#0xff - 0x46
      00363A 40 0F            [24] 1615 	jc	00118$
                                   1616 ;	8051_i2c_eeprom.c:253: data += input[i] - 'A' + 10;
      00363C 8D 04            [24] 1617 	mov	ar4,r5
      00363E 74 C9            [12] 1618 	mov	a,#0xc9
      003640 2C               [12] 1619 	add	a,r4
      003641 FC               [12] 1620 	mov	r4,a
      003642 90 04 0E         [24] 1621 	mov	dptr,#_take_data_data_65538_82
      003645 E0               [24] 1622 	movx	a,@dptr
      003646 FB               [12] 1623 	mov	r3,a
      003647 2C               [12] 1624 	add	a,r4
      003648 F0               [24] 1625 	movx	@dptr,a
      003649 80 15            [24] 1626 	sjmp	00130$
      00364B                       1627 00118$:
                                   1628 ;	8051_i2c_eeprom.c:254: else if (input[i] >= 'a' && input[i] <= 'f')
      00364B BD 61 00         [24] 1629 	cjne	r5,#0x61,00219$
      00364E                       1630 00219$:
      00364E 40 10            [24] 1631 	jc	00130$
      003650 ED               [12] 1632 	mov	a,r5
      003651 24 99            [12] 1633 	add	a,#0xff - 0x66
      003653 40 0B            [24] 1634 	jc	00130$
                                   1635 ;	8051_i2c_eeprom.c:255: data += input[i] - 'a' + 10;
      003655 74 A9            [12] 1636 	mov	a,#0xa9
      003657 2D               [12] 1637 	add	a,r5
      003658 FD               [12] 1638 	mov	r5,a
      003659 90 04 0E         [24] 1639 	mov	dptr,#_take_data_data_65538_82
      00365C E0               [24] 1640 	movx	a,@dptr
      00365D FC               [12] 1641 	mov	r4,a
      00365E 2D               [12] 1642 	add	a,r5
      00365F F0               [24] 1643 	movx	@dptr,a
      003660                       1644 00130$:
                                   1645 ;	8051_i2c_eeprom.c:248: for (i = 0; input[i] != '\0'; i++) {
      003660 0E               [12] 1646 	inc	r6
      003661 BE 00 01         [24] 1647 	cjne	r6,#0x00,00222$
      003664 0F               [12] 1648 	inc	r7
      003665                       1649 00222$:
      003665 02 35 F5         [24] 1650 	ljmp	00129$
      003668                       1651 00125$:
                                   1652 ;	8051_i2c_eeprom.c:258: printf("\n\r│ Entered data: 0x%02X\n\r", data);
      003668 90 04 0E         [24] 1653 	mov	dptr,#_take_data_data_65538_82
      00366B E0               [24] 1654 	movx	a,@dptr
      00366C FF               [12] 1655 	mov	r7,a
      00366D FD               [12] 1656 	mov	r5,a
      00366E 7E 00            [12] 1657 	mov	r6,#0x00
      003670 C0 07            [24] 1658 	push	ar7
      003672 C0 05            [24] 1659 	push	ar5
      003674 C0 06            [24] 1660 	push	ar6
      003676 74 B0            [12] 1661 	mov	a,#___str_30
      003678 C0 E0            [24] 1662 	push	acc
      00367A 74 52            [12] 1663 	mov	a,#(___str_30 >> 8)
      00367C C0 E0            [24] 1664 	push	acc
      00367E 74 80            [12] 1665 	mov	a,#0x80
      003680 C0 E0            [24] 1666 	push	acc
      003682 12 3E B0         [24] 1667 	lcall	_printf
      003685 E5 81            [12] 1668 	mov	a,sp
      003687 24 FB            [12] 1669 	add	a,#0xfb
      003689 F5 81            [12] 1670 	mov	sp,a
      00368B D0 07            [24] 1671 	pop	ar7
                                   1672 ;	8051_i2c_eeprom.c:259: if(data > 0xfe)
      00368D EF               [12] 1673 	mov	a,r7
      00368E 24 01            [12] 1674 	add	a,#0xff - 0xfe
      003690 50 20            [24] 1675 	jnc	00127$
                                   1676 ;	8051_i2c_eeprom.c:261: printf("Data out of Range\n\r");
      003692 74 CD            [12] 1677 	mov	a,#___str_31
      003694 C0 E0            [24] 1678 	push	acc
      003696 74 52            [12] 1679 	mov	a,#(___str_31 >> 8)
      003698 C0 E0            [24] 1680 	push	acc
      00369A 74 80            [12] 1681 	mov	a,#0x80
      00369C C0 E0            [24] 1682 	push	acc
      00369E 12 3E B0         [24] 1683 	lcall	_printf
      0036A1 15 81            [12] 1684 	dec	sp
      0036A3 15 81            [12] 1685 	dec	sp
      0036A5 15 81            [12] 1686 	dec	sp
                                   1687 ;	8051_i2c_eeprom.c:262: data_range_flag = 0;
      0036A7 90 04 59         [24] 1688 	mov	dptr,#_data_range_flag
      0036AA E4               [12] 1689 	clr	a
      0036AB F0               [24] 1690 	movx	@dptr,a
      0036AC A3               [24] 1691 	inc	dptr
      0036AD F0               [24] 1692 	movx	@dptr,a
                                   1693 ;	8051_i2c_eeprom.c:263: return 0;
      0036AE 75 82 00         [24] 1694 	mov	dpl,#0x00
      0036B1 22               [24] 1695 	ret
      0036B2                       1696 00127$:
                                   1697 ;	8051_i2c_eeprom.c:265: return data;
      0036B2 8F 82            [24] 1698 	mov	dpl,r7
                                   1699 ;	8051_i2c_eeprom.c:267: }
      0036B4 22               [24] 1700 	ret
                                   1701 ;------------------------------------------------------------
                                   1702 ;Allocation info for local variables in function 'eeprom_write'
                                   1703 ;------------------------------------------------------------
                                   1704 ;data                      Allocated with name '_eeprom_write_PARM_2'
                                   1705 ;address                   Allocated with name '_eeprom_write_address_65536_86'
                                   1706 ;i                         Allocated with name '_eeprom_write_i_131072_91'
                                   1707 ;------------------------------------------------------------
                                   1708 ;	8051_i2c_eeprom.c:269: int eeprom_write(unsigned int address, unsigned char data) 
                                   1709 ;	-----------------------------------------
                                   1710 ;	 function eeprom_write
                                   1711 ;	-----------------------------------------
      0036B5                       1712 _eeprom_write:
      0036B5 AF 83            [24] 1713 	mov	r7,dph
      0036B7 E5 82            [12] 1714 	mov	a,dpl
      0036B9 90 04 10         [24] 1715 	mov	dptr,#_eeprom_write_address_65536_86
      0036BC F0               [24] 1716 	movx	@dptr,a
      0036BD EF               [12] 1717 	mov	a,r7
      0036BE A3               [24] 1718 	inc	dptr
      0036BF F0               [24] 1719 	movx	@dptr,a
                                   1720 ;	8051_i2c_eeprom.c:275: i2c_start();
      0036C0 12 39 F8         [24] 1721 	lcall	_i2c_start
                                   1722 ;	8051_i2c_eeprom.c:278: if(!i2c_write(EEPROM_ID | block | WRITE)) {
      0036C3 90 04 5B         [24] 1723 	mov	dptr,#_block
      0036C6 E0               [24] 1724 	movx	a,@dptr
      0036C7 FE               [12] 1725 	mov	r6,a
      0036C8 A3               [24] 1726 	inc	dptr
      0036C9 E0               [24] 1727 	movx	a,@dptr
      0036CA 43 06 A0         [24] 1728 	orl	ar6,#0xa0
      0036CD 8E 82            [24] 1729 	mov	dpl,r6
      0036CF 12 39 0B         [24] 1730 	lcall	_i2c_write
      0036D2 E5 82            [12] 1731 	mov	a,dpl
      0036D4 85 83 F0         [24] 1732 	mov	b,dph
      0036D7 45 F0            [12] 1733 	orl	a,b
      0036D9 70 1C            [24] 1734 	jnz	00102$
                                   1735 ;	8051_i2c_eeprom.c:279: printf("Error: No ACK for device address (write)\n\r");
      0036DB 74 E1            [12] 1736 	mov	a,#___str_32
      0036DD C0 E0            [24] 1737 	push	acc
      0036DF 74 52            [12] 1738 	mov	a,#(___str_32 >> 8)
      0036E1 C0 E0            [24] 1739 	push	acc
      0036E3 74 80            [12] 1740 	mov	a,#0x80
      0036E5 C0 E0            [24] 1741 	push	acc
      0036E7 12 3E B0         [24] 1742 	lcall	_printf
      0036EA 15 81            [12] 1743 	dec	sp
      0036EC 15 81            [12] 1744 	dec	sp
      0036EE 15 81            [12] 1745 	dec	sp
                                   1746 ;	8051_i2c_eeprom.c:280: i2c_stop();
      0036F0 12 3C 51         [24] 1747 	lcall	_i2c_stop
                                   1748 ;	8051_i2c_eeprom.c:281: return 0;
      0036F3 90 00 00         [24] 1749 	mov	dptr,#0x0000
      0036F6 22               [24] 1750 	ret
      0036F7                       1751 00102$:
                                   1752 ;	8051_i2c_eeprom.c:285: if(!i2c_write((unsigned char)address)) {
      0036F7 90 04 10         [24] 1753 	mov	dptr,#_eeprom_write_address_65536_86
      0036FA E0               [24] 1754 	movx	a,@dptr
      0036FB FE               [12] 1755 	mov	r6,a
      0036FC A3               [24] 1756 	inc	dptr
      0036FD E0               [24] 1757 	movx	a,@dptr
      0036FE FF               [12] 1758 	mov	r7,a
      0036FF 8E 05            [24] 1759 	mov	ar5,r6
      003701 8D 82            [24] 1760 	mov	dpl,r5
      003703 C0 07            [24] 1761 	push	ar7
      003705 C0 06            [24] 1762 	push	ar6
      003707 12 39 0B         [24] 1763 	lcall	_i2c_write
      00370A E5 82            [12] 1764 	mov	a,dpl
      00370C 85 83 F0         [24] 1765 	mov	b,dph
      00370F D0 06            [24] 1766 	pop	ar6
      003711 D0 07            [24] 1767 	pop	ar7
      003713 45 F0            [12] 1768 	orl	a,b
      003715 70 1C            [24] 1769 	jnz	00104$
                                   1770 ;	8051_i2c_eeprom.c:286: printf("Error: No ACK for memory address\n\r");
      003717 74 0C            [12] 1771 	mov	a,#___str_33
      003719 C0 E0            [24] 1772 	push	acc
      00371B 74 53            [12] 1773 	mov	a,#(___str_33 >> 8)
      00371D C0 E0            [24] 1774 	push	acc
      00371F 74 80            [12] 1775 	mov	a,#0x80
      003721 C0 E0            [24] 1776 	push	acc
      003723 12 3E B0         [24] 1777 	lcall	_printf
      003726 15 81            [12] 1778 	dec	sp
      003728 15 81            [12] 1779 	dec	sp
      00372A 15 81            [12] 1780 	dec	sp
                                   1781 ;	8051_i2c_eeprom.c:287: i2c_stop();
      00372C 12 3C 51         [24] 1782 	lcall	_i2c_stop
                                   1783 ;	8051_i2c_eeprom.c:288: return 0;
      00372F 90 00 00         [24] 1784 	mov	dptr,#0x0000
      003732 22               [24] 1785 	ret
      003733                       1786 00104$:
                                   1787 ;	8051_i2c_eeprom.c:292: if(!i2c_write(data)) {
      003733 90 04 0F         [24] 1788 	mov	dptr,#_eeprom_write_PARM_2
      003736 E0               [24] 1789 	movx	a,@dptr
      003737 FD               [12] 1790 	mov	r5,a
      003738 F5 82            [12] 1791 	mov	dpl,a
      00373A C0 07            [24] 1792 	push	ar7
      00373C C0 06            [24] 1793 	push	ar6
      00373E C0 05            [24] 1794 	push	ar5
      003740 12 39 0B         [24] 1795 	lcall	_i2c_write
      003743 E5 82            [12] 1796 	mov	a,dpl
      003745 85 83 F0         [24] 1797 	mov	b,dph
      003748 D0 05            [24] 1798 	pop	ar5
      00374A D0 06            [24] 1799 	pop	ar6
      00374C D0 07            [24] 1800 	pop	ar7
      00374E 45 F0            [12] 1801 	orl	a,b
      003750 70 1C            [24] 1802 	jnz	00106$
                                   1803 ;	8051_i2c_eeprom.c:293: printf("Error: No ACK for data\n\r");
      003752 74 2F            [12] 1804 	mov	a,#___str_34
      003754 C0 E0            [24] 1805 	push	acc
      003756 74 53            [12] 1806 	mov	a,#(___str_34 >> 8)
      003758 C0 E0            [24] 1807 	push	acc
      00375A 74 80            [12] 1808 	mov	a,#0x80
      00375C C0 E0            [24] 1809 	push	acc
      00375E 12 3E B0         [24] 1810 	lcall	_printf
      003761 15 81            [12] 1811 	dec	sp
      003763 15 81            [12] 1812 	dec	sp
      003765 15 81            [12] 1813 	dec	sp
                                   1814 ;	8051_i2c_eeprom.c:294: i2c_stop();
      003767 12 3C 51         [24] 1815 	lcall	_i2c_stop
                                   1816 ;	8051_i2c_eeprom.c:295: return 0;
      00376A 90 00 00         [24] 1817 	mov	dptr,#0x0000
      00376D 22               [24] 1818 	ret
      00376E                       1819 00106$:
                                   1820 ;	8051_i2c_eeprom.c:298: i2c_stop();
      00376E C0 07            [24] 1821 	push	ar7
      003770 C0 06            [24] 1822 	push	ar6
      003772 C0 05            [24] 1823 	push	ar5
      003774 12 3C 51         [24] 1824 	lcall	_i2c_stop
      003777 D0 05            [24] 1825 	pop	ar5
      003779 D0 06            [24] 1826 	pop	ar6
      00377B D0 07            [24] 1827 	pop	ar7
                                   1828 ;	8051_i2c_eeprom.c:300: for(int i = 0; i<10; i++)
      00377D 7B 00            [12] 1829 	mov	r3,#0x00
      00377F 7C 00            [12] 1830 	mov	r4,#0x00
      003781                       1831 00109$:
      003781 C3               [12] 1832 	clr	c
      003782 EB               [12] 1833 	mov	a,r3
      003783 94 0A            [12] 1834 	subb	a,#0x0a
      003785 EC               [12] 1835 	mov	a,r4
      003786 64 80            [12] 1836 	xrl	a,#0x80
      003788 94 80            [12] 1837 	subb	a,#0x80
      00378A 50 1E            [24] 1838 	jnc	00107$
                                   1839 ;	8051_i2c_eeprom.c:302: i2c_delay();
      00378C C0 07            [24] 1840 	push	ar7
      00378E C0 06            [24] 1841 	push	ar6
      003790 C0 05            [24] 1842 	push	ar5
      003792 C0 04            [24] 1843 	push	ar4
      003794 C0 03            [24] 1844 	push	ar3
      003796 12 3C 8A         [24] 1845 	lcall	_i2c_delay
      003799 D0 03            [24] 1846 	pop	ar3
      00379B D0 04            [24] 1847 	pop	ar4
      00379D D0 05            [24] 1848 	pop	ar5
      00379F D0 06            [24] 1849 	pop	ar6
      0037A1 D0 07            [24] 1850 	pop	ar7
                                   1851 ;	8051_i2c_eeprom.c:300: for(int i = 0; i<10; i++)
      0037A3 0B               [12] 1852 	inc	r3
      0037A4 BB 00 DA         [24] 1853 	cjne	r3,#0x00,00109$
      0037A7 0C               [12] 1854 	inc	r4
      0037A8 80 D7            [24] 1855 	sjmp	00109$
      0037AA                       1856 00107$:
                                   1857 ;	8051_i2c_eeprom.c:305: printf("| Writing at Address 0x%03X Data 0x%02X          |\n\r", address, data);
      0037AA 7C 00            [12] 1858 	mov	r4,#0x00
      0037AC C0 05            [24] 1859 	push	ar5
      0037AE C0 04            [24] 1860 	push	ar4
      0037B0 C0 06            [24] 1861 	push	ar6
      0037B2 C0 07            [24] 1862 	push	ar7
      0037B4 74 48            [12] 1863 	mov	a,#___str_35
      0037B6 C0 E0            [24] 1864 	push	acc
      0037B8 74 53            [12] 1865 	mov	a,#(___str_35 >> 8)
      0037BA C0 E0            [24] 1866 	push	acc
      0037BC 74 80            [12] 1867 	mov	a,#0x80
      0037BE C0 E0            [24] 1868 	push	acc
      0037C0 12 3E B0         [24] 1869 	lcall	_printf
      0037C3 E5 81            [12] 1870 	mov	a,sp
      0037C5 24 F9            [12] 1871 	add	a,#0xf9
      0037C7 F5 81            [12] 1872 	mov	sp,a
                                   1873 ;	8051_i2c_eeprom.c:306: printf("│ Write successful!                             │\n\r");
      0037C9 74 7D            [12] 1874 	mov	a,#___str_36
      0037CB C0 E0            [24] 1875 	push	acc
      0037CD 74 53            [12] 1876 	mov	a,#(___str_36 >> 8)
      0037CF C0 E0            [24] 1877 	push	acc
      0037D1 74 80            [12] 1878 	mov	a,#0x80
      0037D3 C0 E0            [24] 1879 	push	acc
      0037D5 12 3E B0         [24] 1880 	lcall	_printf
      0037D8 15 81            [12] 1881 	dec	sp
      0037DA 15 81            [12] 1882 	dec	sp
      0037DC 15 81            [12] 1883 	dec	sp
                                   1884 ;	8051_i2c_eeprom.c:307: printf("└───────────────────────────────────────────────┘\n\r");
      0037DE 74 B5            [12] 1885 	mov	a,#___str_37
      0037E0 C0 E0            [24] 1886 	push	acc
      0037E2 74 53            [12] 1887 	mov	a,#(___str_37 >> 8)
      0037E4 C0 E0            [24] 1888 	push	acc
      0037E6 74 80            [12] 1889 	mov	a,#0x80
      0037E8 C0 E0            [24] 1890 	push	acc
      0037EA 12 3E B0         [24] 1891 	lcall	_printf
      0037ED 15 81            [12] 1892 	dec	sp
      0037EF 15 81            [12] 1893 	dec	sp
      0037F1 15 81            [12] 1894 	dec	sp
                                   1895 ;	8051_i2c_eeprom.c:308: return 1;  // Success
      0037F3 90 00 01         [24] 1896 	mov	dptr,#0x0001
                                   1897 ;	8051_i2c_eeprom.c:318: }
      0037F6 22               [24] 1898 	ret
                                   1899 ;------------------------------------------------------------
                                   1900 ;Allocation info for local variables in function 'eeprom_read'
                                   1901 ;------------------------------------------------------------
                                   1902 ;address                   Allocated with name '_eeprom_read_address_65536_93'
                                   1903 ;result                    Allocated with name '_eeprom_read_result_65536_94'
                                   1904 ;------------------------------------------------------------
                                   1905 ;	8051_i2c_eeprom.c:319: int eeprom_read(unsigned int address)
                                   1906 ;	-----------------------------------------
                                   1907 ;	 function eeprom_read
                                   1908 ;	-----------------------------------------
      0037F7                       1909 _eeprom_read:
      0037F7 AF 83            [24] 1910 	mov	r7,dph
      0037F9 E5 82            [12] 1911 	mov	a,dpl
      0037FB 90 04 12         [24] 1912 	mov	dptr,#_eeprom_read_address_65536_93
      0037FE F0               [24] 1913 	movx	@dptr,a
      0037FF EF               [12] 1914 	mov	a,r7
      003800 A3               [24] 1915 	inc	dptr
      003801 F0               [24] 1916 	movx	@dptr,a
                                   1917 ;	8051_i2c_eeprom.c:325: i2c_start();
      003802 12 39 F8         [24] 1918 	lcall	_i2c_start
                                   1919 ;	8051_i2c_eeprom.c:328: if(!i2c_write(EEPROM_ID | WRITE)) {
      003805 75 82 A0         [24] 1920 	mov	dpl,#0xa0
      003808 12 39 0B         [24] 1921 	lcall	_i2c_write
      00380B E5 82            [12] 1922 	mov	a,dpl
      00380D 85 83 F0         [24] 1923 	mov	b,dph
      003810 45 F0            [12] 1924 	orl	a,b
      003812 70 1C            [24] 1925 	jnz	00102$
                                   1926 ;	8051_i2c_eeprom.c:329: printf("Error: No ACK for device address (write mode)\n\r");
      003814 74 4B            [12] 1927 	mov	a,#___str_38
      003816 C0 E0            [24] 1928 	push	acc
      003818 74 54            [12] 1929 	mov	a,#(___str_38 >> 8)
      00381A C0 E0            [24] 1930 	push	acc
      00381C 74 80            [12] 1931 	mov	a,#0x80
      00381E C0 E0            [24] 1932 	push	acc
      003820 12 3E B0         [24] 1933 	lcall	_printf
      003823 15 81            [12] 1934 	dec	sp
      003825 15 81            [12] 1935 	dec	sp
      003827 15 81            [12] 1936 	dec	sp
                                   1937 ;	8051_i2c_eeprom.c:330: i2c_stop();
      003829 12 3C 51         [24] 1938 	lcall	_i2c_stop
                                   1939 ;	8051_i2c_eeprom.c:331: return -1;
      00382C 90 FF FF         [24] 1940 	mov	dptr,#0xffff
      00382F 22               [24] 1941 	ret
      003830                       1942 00102$:
                                   1943 ;	8051_i2c_eeprom.c:335: if(!i2c_write((unsigned char)address)) {
      003830 90 04 12         [24] 1944 	mov	dptr,#_eeprom_read_address_65536_93
      003833 E0               [24] 1945 	movx	a,@dptr
      003834 FE               [12] 1946 	mov	r6,a
      003835 A3               [24] 1947 	inc	dptr
      003836 E0               [24] 1948 	movx	a,@dptr
      003837 FF               [12] 1949 	mov	r7,a
      003838 8E 05            [24] 1950 	mov	ar5,r6
      00383A 8D 82            [24] 1951 	mov	dpl,r5
      00383C C0 07            [24] 1952 	push	ar7
      00383E C0 06            [24] 1953 	push	ar6
      003840 12 39 0B         [24] 1954 	lcall	_i2c_write
      003843 E5 82            [12] 1955 	mov	a,dpl
      003845 85 83 F0         [24] 1956 	mov	b,dph
      003848 D0 06            [24] 1957 	pop	ar6
      00384A D0 07            [24] 1958 	pop	ar7
      00384C 45 F0            [12] 1959 	orl	a,b
      00384E 70 1C            [24] 1960 	jnz	00104$
                                   1961 ;	8051_i2c_eeprom.c:336: printf("Error: No ACK for memory address\n\r");
      003850 74 0C            [12] 1962 	mov	a,#___str_33
      003852 C0 E0            [24] 1963 	push	acc
      003854 74 53            [12] 1964 	mov	a,#(___str_33 >> 8)
      003856 C0 E0            [24] 1965 	push	acc
      003858 74 80            [12] 1966 	mov	a,#0x80
      00385A C0 E0            [24] 1967 	push	acc
      00385C 12 3E B0         [24] 1968 	lcall	_printf
      00385F 15 81            [12] 1969 	dec	sp
      003861 15 81            [12] 1970 	dec	sp
      003863 15 81            [12] 1971 	dec	sp
                                   1972 ;	8051_i2c_eeprom.c:337: i2c_stop();
      003865 12 3C 51         [24] 1973 	lcall	_i2c_stop
                                   1974 ;	8051_i2c_eeprom.c:338: return -1;
      003868 90 FF FF         [24] 1975 	mov	dptr,#0xffff
      00386B 22               [24] 1976 	ret
      00386C                       1977 00104$:
                                   1978 ;	8051_i2c_eeprom.c:342: i2c_start();
      00386C C0 07            [24] 1979 	push	ar7
      00386E C0 06            [24] 1980 	push	ar6
      003870 12 39 F8         [24] 1981 	lcall	_i2c_start
                                   1982 ;	8051_i2c_eeprom.c:345: if(!i2c_write(EEPROM_ID | READ)) {
      003873 75 82 A1         [24] 1983 	mov	dpl,#0xa1
      003876 12 39 0B         [24] 1984 	lcall	_i2c_write
      003879 E5 82            [12] 1985 	mov	a,dpl
      00387B 85 83 F0         [24] 1986 	mov	b,dph
      00387E D0 06            [24] 1987 	pop	ar6
      003880 D0 07            [24] 1988 	pop	ar7
      003882 45 F0            [12] 1989 	orl	a,b
      003884 70 1C            [24] 1990 	jnz	00106$
                                   1991 ;	8051_i2c_eeprom.c:346: printf("Error: No ACK for device address (read mode)\n\r");
      003886 74 7B            [12] 1992 	mov	a,#___str_39
      003888 C0 E0            [24] 1993 	push	acc
      00388A 74 54            [12] 1994 	mov	a,#(___str_39 >> 8)
      00388C C0 E0            [24] 1995 	push	acc
      00388E 74 80            [12] 1996 	mov	a,#0x80
      003890 C0 E0            [24] 1997 	push	acc
      003892 12 3E B0         [24] 1998 	lcall	_printf
      003895 15 81            [12] 1999 	dec	sp
      003897 15 81            [12] 2000 	dec	sp
      003899 15 81            [12] 2001 	dec	sp
                                   2002 ;	8051_i2c_eeprom.c:347: i2c_stop();
      00389B 12 3C 51         [24] 2003 	lcall	_i2c_stop
                                   2004 ;	8051_i2c_eeprom.c:348: return -1;
      00389E 90 FF FF         [24] 2005 	mov	dptr,#0xffff
      0038A1 22               [24] 2006 	ret
      0038A2                       2007 00106$:
                                   2008 ;	8051_i2c_eeprom.c:352: result = i2c_read(0);  // 0 means send NACK
      0038A2 90 00 00         [24] 2009 	mov	dptr,#0x0000
      0038A5 C0 07            [24] 2010 	push	ar7
      0038A7 C0 06            [24] 2011 	push	ar6
      0038A9 12 39 73         [24] 2012 	lcall	_i2c_read
      0038AC AC 82            [24] 2013 	mov	r4,dpl
      0038AE D0 06            [24] 2014 	pop	ar6
      0038B0 D0 07            [24] 2015 	pop	ar7
                                   2016 ;	8051_i2c_eeprom.c:354: printf("| 0x%03X : 0x%02X \n\r", address, result);
      0038B2 7D 00            [12] 2017 	mov	r5,#0x00
      0038B4 C0 05            [24] 2018 	push	ar5
      0038B6 C0 04            [24] 2019 	push	ar4
      0038B8 C0 04            [24] 2020 	push	ar4
      0038BA C0 05            [24] 2021 	push	ar5
      0038BC C0 06            [24] 2022 	push	ar6
      0038BE C0 07            [24] 2023 	push	ar7
      0038C0 74 AA            [12] 2024 	mov	a,#___str_40
      0038C2 C0 E0            [24] 2025 	push	acc
      0038C4 74 54            [12] 2026 	mov	a,#(___str_40 >> 8)
      0038C6 C0 E0            [24] 2027 	push	acc
      0038C8 74 80            [12] 2028 	mov	a,#0x80
      0038CA C0 E0            [24] 2029 	push	acc
      0038CC 12 3E B0         [24] 2030 	lcall	_printf
      0038CF E5 81            [12] 2031 	mov	a,sp
      0038D1 24 F9            [12] 2032 	add	a,#0xf9
      0038D3 F5 81            [12] 2033 	mov	sp,a
                                   2034 ;	8051_i2c_eeprom.c:355: printf("│ Read successful!                 │\n\r");
      0038D5 74 BF            [12] 2035 	mov	a,#___str_41
      0038D7 C0 E0            [24] 2036 	push	acc
      0038D9 74 54            [12] 2037 	mov	a,#(___str_41 >> 8)
      0038DB C0 E0            [24] 2038 	push	acc
      0038DD 74 80            [12] 2039 	mov	a,#0x80
      0038DF C0 E0            [24] 2040 	push	acc
      0038E1 12 3E B0         [24] 2041 	lcall	_printf
      0038E4 15 81            [12] 2042 	dec	sp
      0038E6 15 81            [12] 2043 	dec	sp
      0038E8 15 81            [12] 2044 	dec	sp
                                   2045 ;	8051_i2c_eeprom.c:356: printf("└───────────────────────────────────────────────┘\n\r");
      0038EA 74 B5            [12] 2046 	mov	a,#___str_37
      0038EC C0 E0            [24] 2047 	push	acc
      0038EE 74 53            [12] 2048 	mov	a,#(___str_37 >> 8)
      0038F0 C0 E0            [24] 2049 	push	acc
      0038F2 74 80            [12] 2050 	mov	a,#0x80
      0038F4 C0 E0            [24] 2051 	push	acc
      0038F6 12 3E B0         [24] 2052 	lcall	_printf
      0038F9 15 81            [12] 2053 	dec	sp
      0038FB 15 81            [12] 2054 	dec	sp
      0038FD 15 81            [12] 2055 	dec	sp
                                   2056 ;	8051_i2c_eeprom.c:357: i2c_stop();
      0038FF 12 3C 51         [24] 2057 	lcall	_i2c_stop
      003902 D0 04            [24] 2058 	pop	ar4
      003904 D0 05            [24] 2059 	pop	ar5
                                   2060 ;	8051_i2c_eeprom.c:358: return result;
      003906 8C 82            [24] 2061 	mov	dpl,r4
      003908 8D 83            [24] 2062 	mov	dph,r5
                                   2063 ;	8051_i2c_eeprom.c:359: }
      00390A 22               [24] 2064 	ret
                                   2065 ;------------------------------------------------------------
                                   2066 ;Allocation info for local variables in function 'i2c_write'
                                   2067 ;------------------------------------------------------------
                                   2068 ;data                      Allocated with name '_i2c_write_data_65536_98'
                                   2069 ;i                         Allocated with name '_i2c_write_i_65536_99'
                                   2070 ;------------------------------------------------------------
                                   2071 ;	8051_i2c_eeprom.c:362: int i2c_write(unsigned char data)
                                   2072 ;	-----------------------------------------
                                   2073 ;	 function i2c_write
                                   2074 ;	-----------------------------------------
      00390B                       2075 _i2c_write:
      00390B E5 82            [12] 2076 	mov	a,dpl
      00390D 90 04 14         [24] 2077 	mov	dptr,#_i2c_write_data_65536_98
      003910 F0               [24] 2078 	movx	@dptr,a
                                   2079 ;	8051_i2c_eeprom.c:366: for(i=0;i<=7;i++)
      003911 7E 00            [12] 2080 	mov	r6,#0x00
      003913 7F 00            [12] 2081 	mov	r7,#0x00
      003915                       2082 00104$:
                                   2083 ;	8051_i2c_eeprom.c:368: SDA = (data & 0x80) ? 1 : 0;    //msb first
      003915 90 04 14         [24] 2084 	mov	dptr,#_i2c_write_data_65536_98
      003918 E0               [24] 2085 	movx	a,@dptr
      003919 FD               [12] 2086 	mov	r5,a
      00391A 23               [12] 2087 	rl	a
      00391B 54 01            [12] 2088 	anl	a,#0x01
      00391D 24 FF            [12] 2089 	add	a,#0xff
      00391F 92 94            [24] 2090 	mov	_P1_4,c
                                   2091 ;	8051_i2c_eeprom.c:369: i2c_delay();        // Setup time for data
      003921 C0 07            [24] 2092 	push	ar7
      003923 C0 06            [24] 2093 	push	ar6
      003925 C0 05            [24] 2094 	push	ar5
      003927 12 3C 8A         [24] 2095 	lcall	_i2c_delay
                                   2096 ;	8051_i2c_eeprom.c:370: SCL=1;
                                   2097 ;	assignBit
      00392A D2 93            [12] 2098 	setb	_P1_3
                                   2099 ;	8051_i2c_eeprom.c:371: i2c_delay();        // Hold time for clock
      00392C 12 3C 8A         [24] 2100 	lcall	_i2c_delay
      00392F D0 05            [24] 2101 	pop	ar5
      003931 D0 06            [24] 2102 	pop	ar6
      003933 D0 07            [24] 2103 	pop	ar7
                                   2104 ;	8051_i2c_eeprom.c:372: SCL=0;
                                   2105 ;	assignBit
      003935 C2 93            [12] 2106 	clr	_P1_3
                                   2107 ;	8051_i2c_eeprom.c:373: data = data << 1;
      003937 ED               [12] 2108 	mov	a,r5
      003938 2D               [12] 2109 	add	a,r5
      003939 90 04 14         [24] 2110 	mov	dptr,#_i2c_write_data_65536_98
      00393C F0               [24] 2111 	movx	@dptr,a
                                   2112 ;	8051_i2c_eeprom.c:366: for(i=0;i<=7;i++)
      00393D 0E               [12] 2113 	inc	r6
      00393E BE 00 01         [24] 2114 	cjne	r6,#0x00,00121$
      003941 0F               [12] 2115 	inc	r7
      003942                       2116 00121$:
      003942 C3               [12] 2117 	clr	c
      003943 74 07            [12] 2118 	mov	a,#0x07
      003945 9E               [12] 2119 	subb	a,r6
      003946 E4               [12] 2120 	clr	a
      003947 9F               [12] 2121 	subb	a,r7
      003948 50 CB            [24] 2122 	jnc	00104$
                                   2123 ;	8051_i2c_eeprom.c:377: SDA = 1;            // Release SDA for slave
                                   2124 ;	assignBit
      00394A D2 94            [12] 2125 	setb	_P1_4
                                   2126 ;	8051_i2c_eeprom.c:378: SCL = 1;            // 9th clock pulse for ACK
                                   2127 ;	assignBit
      00394C D2 93            [12] 2128 	setb	_P1_3
                                   2129 ;	8051_i2c_eeprom.c:379: i2c_delay();
      00394E 12 3C 8A         [24] 2130 	lcall	_i2c_delay
                                   2131 ;	8051_i2c_eeprom.c:380: if(SDA == 1)        // If SDA is still high, no ACK received
      003951 30 94 19         [24] 2132 	jnb	_P1_4,00103$
                                   2133 ;	8051_i2c_eeprom.c:383: printf("ACK DID NOT ARRIVE\n\r");
      003954 74 EA            [12] 2134 	mov	a,#___str_42
      003956 C0 E0            [24] 2135 	push	acc
      003958 74 54            [12] 2136 	mov	a,#(___str_42 >> 8)
      00395A C0 E0            [24] 2137 	push	acc
      00395C 74 80            [12] 2138 	mov	a,#0x80
      00395E C0 E0            [24] 2139 	push	acc
      003960 12 3E B0         [24] 2140 	lcall	_printf
      003963 15 81            [12] 2141 	dec	sp
      003965 15 81            [12] 2142 	dec	sp
      003967 15 81            [12] 2143 	dec	sp
                                   2144 ;	8051_i2c_eeprom.c:384: return 0;       // Error
      003969 90 00 00         [24] 2145 	mov	dptr,#0x0000
      00396C 22               [24] 2146 	ret
      00396D                       2147 00103$:
                                   2148 ;	8051_i2c_eeprom.c:386: SCL = 0;
                                   2149 ;	assignBit
      00396D C2 93            [12] 2150 	clr	_P1_3
                                   2151 ;	8051_i2c_eeprom.c:388: return 1;           // Success
      00396F 90 00 01         [24] 2152 	mov	dptr,#0x0001
                                   2153 ;	8051_i2c_eeprom.c:390: }
      003972 22               [24] 2154 	ret
                                   2155 ;------------------------------------------------------------
                                   2156 ;Allocation info for local variables in function 'i2c_read'
                                   2157 ;------------------------------------------------------------
                                   2158 ;ACK                       Allocated with name '_i2c_read_ACK_65536_103'
                                   2159 ;buff                      Allocated with name '_i2c_read_buff_65536_104'
                                   2160 ;i                         Allocated with name '_i2c_read_i_131072_105'
                                   2161 ;------------------------------------------------------------
                                   2162 ;	8051_i2c_eeprom.c:391: int i2c_read(int ACK)
                                   2163 ;	-----------------------------------------
                                   2164 ;	 function i2c_read
                                   2165 ;	-----------------------------------------
      003973                       2166 _i2c_read:
      003973 AF 83            [24] 2167 	mov	r7,dph
      003975 E5 82            [12] 2168 	mov	a,dpl
      003977 90 04 15         [24] 2169 	mov	dptr,#_i2c_read_ACK_65536_103
      00397A F0               [24] 2170 	movx	@dptr,a
      00397B EF               [12] 2171 	mov	a,r7
      00397C A3               [24] 2172 	inc	dptr
      00397D F0               [24] 2173 	movx	@dptr,a
                                   2174 ;	8051_i2c_eeprom.c:393: unsigned char buff=0;
      00397E 90 04 17         [24] 2175 	mov	dptr,#_i2c_read_buff_65536_104
      003981 E4               [12] 2176 	clr	a
      003982 F0               [24] 2177 	movx	@dptr,a
                                   2178 ;	8051_i2c_eeprom.c:394: SCL = 0;
                                   2179 ;	assignBit
      003983 C2 93            [12] 2180 	clr	_P1_3
                                   2181 ;	8051_i2c_eeprom.c:395: for(int i=0;i<8;i++)
      003985 7E 00            [12] 2182 	mov	r6,#0x00
      003987 7F 00            [12] 2183 	mov	r7,#0x00
      003989                       2184 00103$:
      003989 C3               [12] 2185 	clr	c
      00398A EE               [12] 2186 	mov	a,r6
      00398B 94 08            [12] 2187 	subb	a,#0x08
      00398D EF               [12] 2188 	mov	a,r7
      00398E 64 80            [12] 2189 	xrl	a,#0x80
      003990 94 80            [12] 2190 	subb	a,#0x80
      003992 50 40            [24] 2191 	jnc	00101$
                                   2192 ;	8051_i2c_eeprom.c:397: SCL = 1;
                                   2193 ;	assignBit
      003994 D2 93            [12] 2194 	setb	_P1_3
                                   2195 ;	8051_i2c_eeprom.c:398: i2c_delay();
      003996 C0 07            [24] 2196 	push	ar7
      003998 C0 06            [24] 2197 	push	ar6
      00399A 12 3C 8A         [24] 2198 	lcall	_i2c_delay
      00399D D0 06            [24] 2199 	pop	ar6
      00399F D0 07            [24] 2200 	pop	ar7
                                   2201 ;	8051_i2c_eeprom.c:399: buff |= (SDA << (7 - i));
      0039A1 A2 94            [12] 2202 	mov	c,_P1_4
      0039A3 E4               [12] 2203 	clr	a
      0039A4 33               [12] 2204 	rlc	a
      0039A5 FD               [12] 2205 	mov	r5,a
      0039A6 8E 04            [24] 2206 	mov	ar4,r6
      0039A8 74 07            [12] 2207 	mov	a,#0x07
      0039AA C3               [12] 2208 	clr	c
      0039AB 9C               [12] 2209 	subb	a,r4
      0039AC FC               [12] 2210 	mov	r4,a
      0039AD 8C F0            [24] 2211 	mov	b,r4
      0039AF 05 F0            [12] 2212 	inc	b
      0039B1 ED               [12] 2213 	mov	a,r5
      0039B2 80 02            [24] 2214 	sjmp	00119$
      0039B4                       2215 00117$:
      0039B4 25 E0            [12] 2216 	add	a,acc
      0039B6                       2217 00119$:
      0039B6 D5 F0 FB         [24] 2218 	djnz	b,00117$
      0039B9 FC               [12] 2219 	mov	r4,a
      0039BA 90 04 17         [24] 2220 	mov	dptr,#_i2c_read_buff_65536_104
      0039BD E0               [24] 2221 	movx	a,@dptr
      0039BE 4C               [12] 2222 	orl	a,r4
      0039BF F0               [24] 2223 	movx	@dptr,a
                                   2224 ;	8051_i2c_eeprom.c:400: i2c_delay();
      0039C0 C0 07            [24] 2225 	push	ar7
      0039C2 C0 06            [24] 2226 	push	ar6
      0039C4 12 3C 8A         [24] 2227 	lcall	_i2c_delay
      0039C7 D0 06            [24] 2228 	pop	ar6
      0039C9 D0 07            [24] 2229 	pop	ar7
                                   2230 ;	8051_i2c_eeprom.c:401: SCL=0;
                                   2231 ;	assignBit
      0039CB C2 93            [12] 2232 	clr	_P1_3
                                   2233 ;	8051_i2c_eeprom.c:395: for(int i=0;i<8;i++)
      0039CD 0E               [12] 2234 	inc	r6
      0039CE BE 00 B8         [24] 2235 	cjne	r6,#0x00,00103$
      0039D1 0F               [12] 2236 	inc	r7
      0039D2 80 B5            [24] 2237 	sjmp	00103$
      0039D4                       2238 00101$:
                                   2239 ;	8051_i2c_eeprom.c:405: SDA = !ACK;         // ACK = 0, NACK = 1
      0039D4 90 04 15         [24] 2240 	mov	dptr,#_i2c_read_ACK_65536_103
      0039D7 E0               [24] 2241 	movx	a,@dptr
      0039D8 FE               [12] 2242 	mov	r6,a
      0039D9 A3               [24] 2243 	inc	dptr
      0039DA E0               [24] 2244 	movx	a,@dptr
      0039DB 4E               [12] 2245 	orl	a,r6
      0039DC B4 01 00         [24] 2246 	cjne	a,#0x01,00121$
      0039DF                       2247 00121$:
      0039DF E4               [12] 2248 	clr	a
      0039E0 33               [12] 2249 	rlc	a
      0039E1 24 FF            [12] 2250 	add	a,#0xff
      0039E3 92 94            [24] 2251 	mov	_P1_4,c
                                   2252 ;	8051_i2c_eeprom.c:406: SCL = 1;
                                   2253 ;	assignBit
      0039E5 D2 93            [12] 2254 	setb	_P1_3
                                   2255 ;	8051_i2c_eeprom.c:407: i2c_delay();
      0039E7 12 3C 8A         [24] 2256 	lcall	_i2c_delay
                                   2257 ;	8051_i2c_eeprom.c:408: SCL = 0;
                                   2258 ;	assignBit
      0039EA C2 93            [12] 2259 	clr	_P1_3
                                   2260 ;	8051_i2c_eeprom.c:410: return buff;
      0039EC 90 04 17         [24] 2261 	mov	dptr,#_i2c_read_buff_65536_104
      0039EF E0               [24] 2262 	movx	a,@dptr
      0039F0 FF               [12] 2263 	mov	r7,a
      0039F1 7E 00            [12] 2264 	mov	r6,#0x00
      0039F3 8F 82            [24] 2265 	mov	dpl,r7
      0039F5 8E 83            [24] 2266 	mov	dph,r6
                                   2267 ;	8051_i2c_eeprom.c:411: }
      0039F7 22               [24] 2268 	ret
                                   2269 ;------------------------------------------------------------
                                   2270 ;Allocation info for local variables in function 'i2c_start'
                                   2271 ;------------------------------------------------------------
                                   2272 ;	8051_i2c_eeprom.c:412: void i2c_start(void)
                                   2273 ;	-----------------------------------------
                                   2274 ;	 function i2c_start
                                   2275 ;	-----------------------------------------
      0039F8                       2276 _i2c_start:
                                   2277 ;	8051_i2c_eeprom.c:414: i2c_delay();
      0039F8 12 3C 8A         [24] 2278 	lcall	_i2c_delay
                                   2279 ;	8051_i2c_eeprom.c:415: SDA = 1;
                                   2280 ;	assignBit
      0039FB D2 94            [12] 2281 	setb	_P1_4
                                   2282 ;	8051_i2c_eeprom.c:416: i2c_delay();
      0039FD 12 3C 8A         [24] 2283 	lcall	_i2c_delay
                                   2284 ;	8051_i2c_eeprom.c:417: SCL = 1;
                                   2285 ;	assignBit
      003A00 D2 93            [12] 2286 	setb	_P1_3
                                   2287 ;	8051_i2c_eeprom.c:418: i2c_delay();
      003A02 12 3C 8A         [24] 2288 	lcall	_i2c_delay
                                   2289 ;	8051_i2c_eeprom.c:419: SDA = 0;
                                   2290 ;	assignBit
      003A05 C2 94            [12] 2291 	clr	_P1_4
                                   2292 ;	8051_i2c_eeprom.c:420: i2c_delay();
      003A07 12 3C 8A         [24] 2293 	lcall	_i2c_delay
                                   2294 ;	8051_i2c_eeprom.c:421: SCL = 0;
                                   2295 ;	assignBit
      003A0A C2 93            [12] 2296 	clr	_P1_3
                                   2297 ;	8051_i2c_eeprom.c:422: }
      003A0C 22               [24] 2298 	ret
                                   2299 ;------------------------------------------------------------
                                   2300 ;Allocation info for local variables in function 'EEPROM_hexump'
                                   2301 ;------------------------------------------------------------
                                   2302 ;sloc0                     Allocated with name '_EEPROM_hexump_sloc0_1_0'
                                   2303 ;end_address               Allocated with name '_EEPROM_hexump_PARM_2'
                                   2304 ;start_address             Allocated with name '_EEPROM_hexump_start_address_65536_109'
                                   2305 ;address                   Allocated with name '_EEPROM_hexump_address_131072_111'
                                   2306 ;offset                    Allocated with name '_EEPROM_hexump_offset_262144_113'
                                   2307 ;current_address           Allocated with name '_EEPROM_hexump_current_address_327680_114'
                                   2308 ;data                      Allocated with name '_EEPROM_hexump_data_393216_115'
                                   2309 ;------------------------------------------------------------
                                   2310 ;	8051_i2c_eeprom.c:423: void EEPROM_hexump(uint16_t start_address, uint16_t end_address)
                                   2311 ;	-----------------------------------------
                                   2312 ;	 function EEPROM_hexump
                                   2313 ;	-----------------------------------------
      003A0D                       2314 _EEPROM_hexump:
      003A0D AF 83            [24] 2315 	mov	r7,dph
      003A0F E5 82            [12] 2316 	mov	a,dpl
      003A11 90 04 1A         [24] 2317 	mov	dptr,#_EEPROM_hexump_start_address_65536_109
      003A14 F0               [24] 2318 	movx	@dptr,a
      003A15 EF               [12] 2319 	mov	a,r7
      003A16 A3               [24] 2320 	inc	dptr
      003A17 F0               [24] 2321 	movx	@dptr,a
                                   2322 ;	8051_i2c_eeprom.c:447: printf("\r\n");
      003A18 74 FF            [12] 2323 	mov	a,#___str_43
      003A1A C0 E0            [24] 2324 	push	acc
      003A1C 74 54            [12] 2325 	mov	a,#(___str_43 >> 8)
      003A1E C0 E0            [24] 2326 	push	acc
      003A20 74 80            [12] 2327 	mov	a,#0x80
      003A22 C0 E0            [24] 2328 	push	acc
      003A24 12 3E B0         [24] 2329 	lcall	_printf
      003A27 15 81            [12] 2330 	dec	sp
      003A29 15 81            [12] 2331 	dec	sp
      003A2B 15 81            [12] 2332 	dec	sp
                                   2333 ;	8051_i2c_eeprom.c:448: printf("\r\n----------------------------------------------------------------");
      003A2D 74 02            [12] 2334 	mov	a,#___str_44
      003A2F C0 E0            [24] 2335 	push	acc
      003A31 74 55            [12] 2336 	mov	a,#(___str_44 >> 8)
      003A33 C0 E0            [24] 2337 	push	acc
      003A35 74 80            [12] 2338 	mov	a,#0x80
      003A37 C0 E0            [24] 2339 	push	acc
      003A39 12 3E B0         [24] 2340 	lcall	_printf
      003A3C 15 81            [12] 2341 	dec	sp
      003A3E 15 81            [12] 2342 	dec	sp
      003A40 15 81            [12] 2343 	dec	sp
                                   2344 ;	8051_i2c_eeprom.c:449: printf("\r\n                    EEPROM Hex Dump                             ");
      003A42 74 45            [12] 2345 	mov	a,#___str_45
      003A44 C0 E0            [24] 2346 	push	acc
      003A46 74 55            [12] 2347 	mov	a,#(___str_45 >> 8)
      003A48 C0 E0            [24] 2348 	push	acc
      003A4A 74 80            [12] 2349 	mov	a,#0x80
      003A4C C0 E0            [24] 2350 	push	acc
      003A4E 12 3E B0         [24] 2351 	lcall	_printf
      003A51 15 81            [12] 2352 	dec	sp
      003A53 15 81            [12] 2353 	dec	sp
      003A55 15 81            [12] 2354 	dec	sp
                                   2355 ;	8051_i2c_eeprom.c:450: printf("\r\n----------------------------------------------------------------\r\n");
      003A57 74 88            [12] 2356 	mov	a,#___str_46
      003A59 C0 E0            [24] 2357 	push	acc
      003A5B 74 55            [12] 2358 	mov	a,#(___str_46 >> 8)
      003A5D C0 E0            [24] 2359 	push	acc
      003A5F 74 80            [12] 2360 	mov	a,#0x80
      003A61 C0 E0            [24] 2361 	push	acc
      003A63 12 3E B0         [24] 2362 	lcall	_printf
      003A66 15 81            [12] 2363 	dec	sp
      003A68 15 81            [12] 2364 	dec	sp
      003A6A 15 81            [12] 2365 	dec	sp
                                   2366 ;	8051_i2c_eeprom.c:452: for (uint16_t address = start_address; address <= end_address; address += MAX_HEX_CHAR_IN_SINGLE_LINE) {
      003A6C 90 04 1A         [24] 2367 	mov	dptr,#_EEPROM_hexump_start_address_65536_109
      003A6F E0               [24] 2368 	movx	a,@dptr
      003A70 FE               [12] 2369 	mov	r6,a
      003A71 A3               [24] 2370 	inc	dptr
      003A72 E0               [24] 2371 	movx	a,@dptr
      003A73 FF               [12] 2372 	mov	r7,a
      003A74 90 04 1C         [24] 2373 	mov	dptr,#_EEPROM_hexump_address_131072_111
      003A77 EE               [12] 2374 	mov	a,r6
      003A78 F0               [24] 2375 	movx	@dptr,a
      003A79 EF               [12] 2376 	mov	a,r7
      003A7A A3               [24] 2377 	inc	dptr
      003A7B F0               [24] 2378 	movx	@dptr,a
      003A7C 90 04 18         [24] 2379 	mov	dptr,#_EEPROM_hexump_PARM_2
      003A7F E0               [24] 2380 	movx	a,@dptr
      003A80 FE               [12] 2381 	mov	r6,a
      003A81 A3               [24] 2382 	inc	dptr
      003A82 E0               [24] 2383 	movx	a,@dptr
      003A83 FF               [12] 2384 	mov	r7,a
      003A84                       2385 00110$:
      003A84 90 04 1C         [24] 2386 	mov	dptr,#_EEPROM_hexump_address_131072_111
      003A87 E0               [24] 2387 	movx	a,@dptr
      003A88 FC               [12] 2388 	mov	r4,a
      003A89 A3               [24] 2389 	inc	dptr
      003A8A E0               [24] 2390 	movx	a,@dptr
      003A8B FD               [12] 2391 	mov	r5,a
      003A8C C3               [12] 2392 	clr	c
      003A8D EE               [12] 2393 	mov	a,r6
      003A8E 9C               [12] 2394 	subb	a,r4
      003A8F EF               [12] 2395 	mov	a,r7
      003A90 9D               [12] 2396 	subb	a,r5
      003A91 50 03            [24] 2397 	jnc	00135$
      003A93 02 3B A2         [24] 2398 	ljmp	00105$
      003A96                       2399 00135$:
                                   2400 ;	8051_i2c_eeprom.c:454: printf("%03X: ", address);
      003A96 C0 07            [24] 2401 	push	ar7
      003A98 C0 06            [24] 2402 	push	ar6
      003A9A C0 05            [24] 2403 	push	ar5
      003A9C C0 04            [24] 2404 	push	ar4
      003A9E C0 04            [24] 2405 	push	ar4
      003AA0 C0 05            [24] 2406 	push	ar5
      003AA2 74 CD            [12] 2407 	mov	a,#___str_47
      003AA4 C0 E0            [24] 2408 	push	acc
      003AA6 74 55            [12] 2409 	mov	a,#(___str_47 >> 8)
      003AA8 C0 E0            [24] 2410 	push	acc
      003AAA 74 80            [12] 2411 	mov	a,#0x80
      003AAC C0 E0            [24] 2412 	push	acc
      003AAE 12 3E B0         [24] 2413 	lcall	_printf
      003AB1 E5 81            [12] 2414 	mov	a,sp
      003AB3 24 FB            [12] 2415 	add	a,#0xfb
      003AB5 F5 81            [12] 2416 	mov	sp,a
      003AB7 D0 04            [24] 2417 	pop	ar4
      003AB9 D0 05            [24] 2418 	pop	ar5
      003ABB D0 06            [24] 2419 	pop	ar6
      003ABD D0 07            [24] 2420 	pop	ar7
                                   2421 ;	8051_i2c_eeprom.c:457: for (int offset = 0; offset < MAX_HEX_CHAR_IN_SINGLE_LINE; offset++) {
      003ABF 7A 00            [12] 2422 	mov	r2,#0x00
      003AC1 7B 00            [12] 2423 	mov	r3,#0x00
      003AC3                       2424 00107$:
      003AC3 C3               [12] 2425 	clr	c
      003AC4 EA               [12] 2426 	mov	a,r2
      003AC5 94 10            [12] 2427 	subb	a,#0x10
      003AC7 EB               [12] 2428 	mov	a,r3
      003AC8 64 80            [12] 2429 	xrl	a,#0x80
      003ACA 94 80            [12] 2430 	subb	a,#0x80
      003ACC 40 03            [24] 2431 	jc	00136$
      003ACE 02 3B 6B         [24] 2432 	ljmp	00104$
      003AD1                       2433 00136$:
                                   2434 ;	8051_i2c_eeprom.c:458: uint16_t current_address = address + offset;
      003AD1 8C 00            [24] 2435 	mov	ar0,r4
      003AD3 8D 01            [24] 2436 	mov	ar1,r5
      003AD5 C0 04            [24] 2437 	push	ar4
      003AD7 C0 05            [24] 2438 	push	ar5
      003AD9 8A 04            [24] 2439 	mov	ar4,r2
      003ADB 8B 05            [24] 2440 	mov	ar5,r3
      003ADD EC               [12] 2441 	mov	a,r4
      003ADE 28               [12] 2442 	add	a,r0
      003ADF F8               [12] 2443 	mov	r0,a
      003AE0 ED               [12] 2444 	mov	a,r5
      003AE1 39               [12] 2445 	addc	a,r1
      003AE2 F9               [12] 2446 	mov	r1,a
      003AE3 88 08            [24] 2447 	mov	_EEPROM_hexump_sloc0_1_0,r0
      003AE5 89 09            [24] 2448 	mov	(_EEPROM_hexump_sloc0_1_0 + 1),r1
                                   2449 ;	8051_i2c_eeprom.c:460: if (current_address <= end_address) {
      003AE7 C3               [12] 2450 	clr	c
      003AE8 EE               [12] 2451 	mov	a,r6
      003AE9 95 08            [12] 2452 	subb	a,_EEPROM_hexump_sloc0_1_0
      003AEB EF               [12] 2453 	mov	a,r7
      003AEC 95 09            [12] 2454 	subb	a,(_EEPROM_hexump_sloc0_1_0 + 1)
      003AEE D0 05            [24] 2455 	pop	ar5
      003AF0 D0 04            [24] 2456 	pop	ar4
      003AF2 40 42            [24] 2457 	jc	00102$
                                   2458 ;	8051_i2c_eeprom.c:462: uint8_t data = eeprom_read(current_address);
      003AF4 A8 08            [24] 2459 	mov	r0,_EEPROM_hexump_sloc0_1_0
      003AF6 A9 09            [24] 2460 	mov	r1,(_EEPROM_hexump_sloc0_1_0 + 1)
      003AF8 88 82            [24] 2461 	mov	dpl,r0
      003AFA 89 83            [24] 2462 	mov	dph,r1
      003AFC C0 07            [24] 2463 	push	ar7
      003AFE C0 06            [24] 2464 	push	ar6
      003B00 C0 05            [24] 2465 	push	ar5
      003B02 C0 04            [24] 2466 	push	ar4
      003B04 C0 03            [24] 2467 	push	ar3
      003B06 C0 02            [24] 2468 	push	ar2
      003B08 12 37 F7         [24] 2469 	lcall	_eeprom_read
      003B0B A8 82            [24] 2470 	mov	r0,dpl
                                   2471 ;	8051_i2c_eeprom.c:463: printf("%02X ", data);
      003B0D 79 00            [12] 2472 	mov	r1,#0x00
      003B0F C0 00            [24] 2473 	push	ar0
      003B11 C0 01            [24] 2474 	push	ar1
      003B13 74 D4            [12] 2475 	mov	a,#___str_48
      003B15 C0 E0            [24] 2476 	push	acc
      003B17 74 55            [12] 2477 	mov	a,#(___str_48 >> 8)
      003B19 C0 E0            [24] 2478 	push	acc
      003B1B 74 80            [12] 2479 	mov	a,#0x80
      003B1D C0 E0            [24] 2480 	push	acc
      003B1F 12 3E B0         [24] 2481 	lcall	_printf
      003B22 E5 81            [12] 2482 	mov	a,sp
      003B24 24 FB            [12] 2483 	add	a,#0xfb
      003B26 F5 81            [12] 2484 	mov	sp,a
      003B28 D0 02            [24] 2485 	pop	ar2
      003B2A D0 03            [24] 2486 	pop	ar3
      003B2C D0 04            [24] 2487 	pop	ar4
      003B2E D0 05            [24] 2488 	pop	ar5
      003B30 D0 06            [24] 2489 	pop	ar6
      003B32 D0 07            [24] 2490 	pop	ar7
      003B34 80 2D            [24] 2491 	sjmp	00108$
      003B36                       2492 00102$:
                                   2493 ;	8051_i2c_eeprom.c:465: printf("   "); // Space for missing bytes if end_address reached mid-line
      003B36 C0 07            [24] 2494 	push	ar7
      003B38 C0 06            [24] 2495 	push	ar6
      003B3A C0 05            [24] 2496 	push	ar5
      003B3C C0 04            [24] 2497 	push	ar4
      003B3E C0 03            [24] 2498 	push	ar3
      003B40 C0 02            [24] 2499 	push	ar2
      003B42 74 DA            [12] 2500 	mov	a,#___str_49
      003B44 C0 E0            [24] 2501 	push	acc
      003B46 74 55            [12] 2502 	mov	a,#(___str_49 >> 8)
      003B48 C0 E0            [24] 2503 	push	acc
      003B4A 74 80            [12] 2504 	mov	a,#0x80
      003B4C C0 E0            [24] 2505 	push	acc
      003B4E 12 3E B0         [24] 2506 	lcall	_printf
      003B51 15 81            [12] 2507 	dec	sp
      003B53 15 81            [12] 2508 	dec	sp
      003B55 15 81            [12] 2509 	dec	sp
      003B57 D0 02            [24] 2510 	pop	ar2
      003B59 D0 03            [24] 2511 	pop	ar3
      003B5B D0 04            [24] 2512 	pop	ar4
      003B5D D0 05            [24] 2513 	pop	ar5
      003B5F D0 06            [24] 2514 	pop	ar6
      003B61 D0 07            [24] 2515 	pop	ar7
      003B63                       2516 00108$:
                                   2517 ;	8051_i2c_eeprom.c:457: for (int offset = 0; offset < MAX_HEX_CHAR_IN_SINGLE_LINE; offset++) {
      003B63 0A               [12] 2518 	inc	r2
      003B64 BA 00 01         [24] 2519 	cjne	r2,#0x00,00138$
      003B67 0B               [12] 2520 	inc	r3
      003B68                       2521 00138$:
      003B68 02 3A C3         [24] 2522 	ljmp	00107$
      003B6B                       2523 00104$:
                                   2524 ;	8051_i2c_eeprom.c:470: printf("\r\n");
      003B6B C0 07            [24] 2525 	push	ar7
      003B6D C0 06            [24] 2526 	push	ar6
      003B6F 74 FF            [12] 2527 	mov	a,#___str_43
      003B71 C0 E0            [24] 2528 	push	acc
      003B73 74 54            [12] 2529 	mov	a,#(___str_43 >> 8)
      003B75 C0 E0            [24] 2530 	push	acc
      003B77 74 80            [12] 2531 	mov	a,#0x80
      003B79 C0 E0            [24] 2532 	push	acc
      003B7B 12 3E B0         [24] 2533 	lcall	_printf
      003B7E 15 81            [12] 2534 	dec	sp
      003B80 15 81            [12] 2535 	dec	sp
      003B82 15 81            [12] 2536 	dec	sp
      003B84 D0 06            [24] 2537 	pop	ar6
      003B86 D0 07            [24] 2538 	pop	ar7
                                   2539 ;	8051_i2c_eeprom.c:452: for (uint16_t address = start_address; address <= end_address; address += MAX_HEX_CHAR_IN_SINGLE_LINE) {
      003B88 90 04 1C         [24] 2540 	mov	dptr,#_EEPROM_hexump_address_131072_111
      003B8B E0               [24] 2541 	movx	a,@dptr
      003B8C FC               [12] 2542 	mov	r4,a
      003B8D A3               [24] 2543 	inc	dptr
      003B8E E0               [24] 2544 	movx	a,@dptr
      003B8F FD               [12] 2545 	mov	r5,a
      003B90 74 10            [12] 2546 	mov	a,#0x10
      003B92 2C               [12] 2547 	add	a,r4
      003B93 FC               [12] 2548 	mov	r4,a
      003B94 E4               [12] 2549 	clr	a
      003B95 3D               [12] 2550 	addc	a,r5
      003B96 FD               [12] 2551 	mov	r5,a
      003B97 90 04 1C         [24] 2552 	mov	dptr,#_EEPROM_hexump_address_131072_111
      003B9A EC               [12] 2553 	mov	a,r4
      003B9B F0               [24] 2554 	movx	@dptr,a
      003B9C ED               [12] 2555 	mov	a,r5
      003B9D A3               [24] 2556 	inc	dptr
      003B9E F0               [24] 2557 	movx	@dptr,a
      003B9F 02 3A 84         [24] 2558 	ljmp	00110$
      003BA2                       2559 00105$:
                                   2560 ;	8051_i2c_eeprom.c:472: printf("\r\n");
      003BA2 74 FF            [12] 2561 	mov	a,#___str_43
      003BA4 C0 E0            [24] 2562 	push	acc
      003BA6 74 54            [12] 2563 	mov	a,#(___str_43 >> 8)
      003BA8 C0 E0            [24] 2564 	push	acc
      003BAA 74 80            [12] 2565 	mov	a,#0x80
      003BAC C0 E0            [24] 2566 	push	acc
      003BAE 12 3E B0         [24] 2567 	lcall	_printf
      003BB1 15 81            [12] 2568 	dec	sp
      003BB3 15 81            [12] 2569 	dec	sp
      003BB5 15 81            [12] 2570 	dec	sp
                                   2571 ;	8051_i2c_eeprom.c:473: }
      003BB7 22               [24] 2572 	ret
                                   2573 ;------------------------------------------------------------
                                   2574 ;Allocation info for local variables in function 'handler_EEPROM_hexdump'
                                   2575 ;------------------------------------------------------------
                                   2576 ;start_addr                Allocated with name '_handler_EEPROM_hexdump_start_addr_65536_118'
                                   2577 ;end_addr                  Allocated with name '_handler_EEPROM_hexdump_end_addr_65537_121'
                                   2578 ;------------------------------------------------------------
                                   2579 ;	8051_i2c_eeprom.c:476: void handler_EEPROM_hexdump(void)
                                   2580 ;	-----------------------------------------
                                   2581 ;	 function handler_EEPROM_hexdump
                                   2582 ;	-----------------------------------------
      003BB8                       2583 _handler_EEPROM_hexdump:
                                   2584 ;	8051_i2c_eeprom.c:479: printf_tiny("\033[1;33m\n\rEnter Start Address for HEX Dump\r\n");
      003BB8 74 DE            [12] 2585 	mov	a,#___str_50
      003BBA C0 E0            [24] 2586 	push	acc
      003BBC 74 55            [12] 2587 	mov	a,#(___str_50 >> 8)
      003BBE C0 E0            [24] 2588 	push	acc
      003BC0 12 3D 59         [24] 2589 	lcall	_printf_tiny
      003BC3 15 81            [12] 2590 	dec	sp
      003BC5 15 81            [12] 2591 	dec	sp
                                   2592 ;	8051_i2c_eeprom.c:480: start_addr = take_address();
      003BC7 12 33 23         [24] 2593 	lcall	_take_address
      003BCA AE 82            [24] 2594 	mov	r6,dpl
      003BCC AF 83            [24] 2595 	mov	r7,dph
      003BCE 8E 04            [24] 2596 	mov	ar4,r6
      003BD0 8F 05            [24] 2597 	mov	ar5,r7
      003BD2 7E 00            [12] 2598 	mov	r6,#0x00
      003BD4 7F 00            [12] 2599 	mov	r7,#0x00
                                   2600 ;	8051_i2c_eeprom.c:482: if(start_addr >= 0 && start_addr <= ADDR_MAX)
      003BD6 C3               [12] 2601 	clr	c
      003BD7 74 FF            [12] 2602 	mov	a,#0xff
      003BD9 9C               [12] 2603 	subb	a,r4
      003BDA 74 07            [12] 2604 	mov	a,#0x07
      003BDC 9D               [12] 2605 	subb	a,r5
      003BDD E4               [12] 2606 	clr	a
      003BDE 9E               [12] 2607 	subb	a,r6
      003BDF E4               [12] 2608 	clr	a
      003BE0 9F               [12] 2609 	subb	a,r7
      003BE1 50 16            [24] 2610 	jnc	00103$
                                   2611 ;	8051_i2c_eeprom.c:487: printf("\033[1;31m\n\rInvalid Start Address Range!!\n\r Address has to be between 0x000 to 0x7FF\033[0m\r\n");
      003BE3 74 0A            [12] 2612 	mov	a,#___str_51
      003BE5 C0 E0            [24] 2613 	push	acc
      003BE7 74 56            [12] 2614 	mov	a,#(___str_51 >> 8)
      003BE9 C0 E0            [24] 2615 	push	acc
      003BEB 74 80            [12] 2616 	mov	a,#0x80
      003BED C0 E0            [24] 2617 	push	acc
      003BEF 12 3E B0         [24] 2618 	lcall	_printf
      003BF2 15 81            [12] 2619 	dec	sp
      003BF4 15 81            [12] 2620 	dec	sp
      003BF6 15 81            [12] 2621 	dec	sp
                                   2622 ;	8051_i2c_eeprom.c:488: return;
      003BF8 22               [24] 2623 	ret
      003BF9                       2624 00103$:
                                   2625 ;	8051_i2c_eeprom.c:493: printf_tiny("\033[1;33m\n\rEnter End Address for HEX Dump\r\n");
      003BF9 C0 07            [24] 2626 	push	ar7
      003BFB C0 06            [24] 2627 	push	ar6
      003BFD C0 05            [24] 2628 	push	ar5
      003BFF C0 04            [24] 2629 	push	ar4
      003C01 74 62            [12] 2630 	mov	a,#___str_52
      003C03 C0 E0            [24] 2631 	push	acc
      003C05 74 56            [12] 2632 	mov	a,#(___str_52 >> 8)
      003C07 C0 E0            [24] 2633 	push	acc
      003C09 12 3D 59         [24] 2634 	lcall	_printf_tiny
      003C0C 15 81            [12] 2635 	dec	sp
      003C0E 15 81            [12] 2636 	dec	sp
                                   2637 ;	8051_i2c_eeprom.c:494: end_addr = take_address();
      003C10 12 33 23         [24] 2638 	lcall	_take_address
      003C13 AA 82            [24] 2639 	mov	r2,dpl
      003C15 AB 83            [24] 2640 	mov	r3,dph
      003C17 D0 04            [24] 2641 	pop	ar4
      003C19 D0 05            [24] 2642 	pop	ar5
      003C1B D0 06            [24] 2643 	pop	ar6
      003C1D D0 07            [24] 2644 	pop	ar7
                                   2645 ;	8051_i2c_eeprom.c:496: if(end_addr >= 0 && end_addr <= ADDR_MAX)
      003C1F 8A 00            [24] 2646 	mov	ar0,r2
      003C21 8B 01            [24] 2647 	mov	ar1,r3
      003C23 C3               [12] 2648 	clr	c
      003C24 74 FF            [12] 2649 	mov	a,#0xff
      003C26 98               [12] 2650 	subb	a,r0
      003C27 74 07            [12] 2651 	mov	a,#0x07
      003C29 99               [12] 2652 	subb	a,r1
      003C2A 50 16            [24] 2653 	jnc	00107$
                                   2654 ;	8051_i2c_eeprom.c:501: printf("\033[1;31m\n\rInvalid End Address Range!!\n\r Address has to be between 0x000 to 0x7FF\033[0m\r\n");
      003C2C 74 8C            [12] 2655 	mov	a,#___str_53
      003C2E C0 E0            [24] 2656 	push	acc
      003C30 74 56            [12] 2657 	mov	a,#(___str_53 >> 8)
      003C32 C0 E0            [24] 2658 	push	acc
      003C34 74 80            [12] 2659 	mov	a,#0x80
      003C36 C0 E0            [24] 2660 	push	acc
      003C38 12 3E B0         [24] 2661 	lcall	_printf
      003C3B 15 81            [12] 2662 	dec	sp
      003C3D 15 81            [12] 2663 	dec	sp
      003C3F 15 81            [12] 2664 	dec	sp
                                   2665 ;	8051_i2c_eeprom.c:502: return;
      003C41 22               [24] 2666 	ret
      003C42                       2667 00107$:
                                   2668 ;	8051_i2c_eeprom.c:505: EEPROM_hexump(start_addr,end_addr);
      003C42 90 04 18         [24] 2669 	mov	dptr,#_EEPROM_hexump_PARM_2
      003C45 EA               [12] 2670 	mov	a,r2
      003C46 F0               [24] 2671 	movx	@dptr,a
      003C47 EB               [12] 2672 	mov	a,r3
      003C48 A3               [24] 2673 	inc	dptr
      003C49 F0               [24] 2674 	movx	@dptr,a
      003C4A 8C 82            [24] 2675 	mov	dpl,r4
      003C4C 8D 83            [24] 2676 	mov	dph,r5
                                   2677 ;	8051_i2c_eeprom.c:506: }
      003C4E 02 3A 0D         [24] 2678 	ljmp	_EEPROM_hexump
                                   2679 ;------------------------------------------------------------
                                   2680 ;Allocation info for local variables in function 'i2c_stop'
                                   2681 ;------------------------------------------------------------
                                   2682 ;	8051_i2c_eeprom.c:508: void i2c_stop(void)
                                   2683 ;	-----------------------------------------
                                   2684 ;	 function i2c_stop
                                   2685 ;	-----------------------------------------
      003C51                       2686 _i2c_stop:
                                   2687 ;	8051_i2c_eeprom.c:510: SDA = 0;
                                   2688 ;	assignBit
      003C51 C2 94            [12] 2689 	clr	_P1_4
                                   2690 ;	8051_i2c_eeprom.c:511: i2c_delay();
      003C53 12 3C 8A         [24] 2691 	lcall	_i2c_delay
                                   2692 ;	8051_i2c_eeprom.c:512: SCL = 1;
                                   2693 ;	assignBit
      003C56 D2 93            [12] 2694 	setb	_P1_3
                                   2695 ;	8051_i2c_eeprom.c:513: i2c_delay();
      003C58 12 3C 8A         [24] 2696 	lcall	_i2c_delay
                                   2697 ;	8051_i2c_eeprom.c:514: SDA = 1; 
                                   2698 ;	assignBit
      003C5B D2 94            [12] 2699 	setb	_P1_4
                                   2700 ;	8051_i2c_eeprom.c:515: }
      003C5D 22               [24] 2701 	ret
                                   2702 ;------------------------------------------------------------
                                   2703 ;Allocation info for local variables in function 'eeprom_reset'
                                   2704 ;------------------------------------------------------------
                                   2705 ;i                         Allocated with name '_eeprom_reset_i_131072_127'
                                   2706 ;------------------------------------------------------------
                                   2707 ;	8051_i2c_eeprom.c:517: void eeprom_reset()
                                   2708 ;	-----------------------------------------
                                   2709 ;	 function eeprom_reset
                                   2710 ;	-----------------------------------------
      003C5E                       2711 _eeprom_reset:
                                   2712 ;	8051_i2c_eeprom.c:519: i2c_start();
      003C5E 12 39 F8         [24] 2713 	lcall	_i2c_start
                                   2714 ;	8051_i2c_eeprom.c:520: SDA = 0;
                                   2715 ;	assignBit
      003C61 C2 94            [12] 2716 	clr	_P1_4
                                   2717 ;	8051_i2c_eeprom.c:521: SDA = 1;
                                   2718 ;	assignBit
      003C63 D2 94            [12] 2719 	setb	_P1_4
                                   2720 ;	8051_i2c_eeprom.c:522: for(int i = 0; i<10; i++)
      003C65 7E 00            [12] 2721 	mov	r6,#0x00
      003C67 7F 00            [12] 2722 	mov	r7,#0x00
      003C69                       2723 00103$:
      003C69 C3               [12] 2724 	clr	c
      003C6A EE               [12] 2725 	mov	a,r6
      003C6B 94 0A            [12] 2726 	subb	a,#0x0a
      003C6D EF               [12] 2727 	mov	a,r7
      003C6E 64 80            [12] 2728 	xrl	a,#0x80
      003C70 94 80            [12] 2729 	subb	a,#0x80
      003C72 50 0B            [24] 2730 	jnc	00101$
                                   2731 ;	8051_i2c_eeprom.c:524: SCL = 0;
                                   2732 ;	assignBit
      003C74 C2 93            [12] 2733 	clr	_P1_3
                                   2734 ;	8051_i2c_eeprom.c:525: SCL = 1;
                                   2735 ;	assignBit
      003C76 D2 93            [12] 2736 	setb	_P1_3
                                   2737 ;	8051_i2c_eeprom.c:522: for(int i = 0; i<10; i++)
      003C78 0E               [12] 2738 	inc	r6
      003C79 BE 00 ED         [24] 2739 	cjne	r6,#0x00,00103$
      003C7C 0F               [12] 2740 	inc	r7
      003C7D 80 EA            [24] 2741 	sjmp	00103$
      003C7F                       2742 00101$:
                                   2743 ;	8051_i2c_eeprom.c:527: i2c_start();
      003C7F 12 39 F8         [24] 2744 	lcall	_i2c_start
                                   2745 ;	8051_i2c_eeprom.c:528: SDA = 0;
                                   2746 ;	assignBit
      003C82 C2 94            [12] 2747 	clr	_P1_4
                                   2748 ;	8051_i2c_eeprom.c:529: i2c_stop();
      003C84 12 3C 51         [24] 2749 	lcall	_i2c_stop
                                   2750 ;	8051_i2c_eeprom.c:530: SDA = 1;
                                   2751 ;	assignBit
      003C87 D2 94            [12] 2752 	setb	_P1_4
                                   2753 ;	8051_i2c_eeprom.c:531: }
      003C89 22               [24] 2754 	ret
                                   2755 ;------------------------------------------------------------
                                   2756 ;Allocation info for local variables in function 'i2c_delay'
                                   2757 ;------------------------------------------------------------
                                   2758 ;i                         Allocated with name '_i2c_delay_i_131072_130'
                                   2759 ;------------------------------------------------------------
                                   2760 ;	8051_i2c_eeprom.c:532: void i2c_delay() 
                                   2761 ;	-----------------------------------------
                                   2762 ;	 function i2c_delay
                                   2763 ;	-----------------------------------------
      003C8A                       2764 _i2c_delay:
                                   2765 ;	8051_i2c_eeprom.c:540: for(int i = 0; i<500; i++);
      003C8A 7E 00            [12] 2766 	mov	r6,#0x00
      003C8C 7F 00            [12] 2767 	mov	r7,#0x00
      003C8E                       2768 00103$:
      003C8E C3               [12] 2769 	clr	c
      003C8F EE               [12] 2770 	mov	a,r6
      003C90 94 F4            [12] 2771 	subb	a,#0xf4
      003C92 EF               [12] 2772 	mov	a,r7
      003C93 64 80            [12] 2773 	xrl	a,#0x80
      003C95 94 81            [12] 2774 	subb	a,#0x81
      003C97 50 07            [24] 2775 	jnc	00105$
      003C99 0E               [12] 2776 	inc	r6
      003C9A BE 00 F1         [24] 2777 	cjne	r6,#0x00,00103$
      003C9D 0F               [12] 2778 	inc	r7
      003C9E 80 EE            [24] 2779 	sjmp	00103$
      003CA0                       2780 00105$:
                                   2781 ;	8051_i2c_eeprom.c:541: }
      003CA0 22               [24] 2782 	ret
                                   2783 ;------------------------------------------------------------
                                   2784 ;Allocation info for local variables in function 'test_function'
                                   2785 ;------------------------------------------------------------
                                   2786 ;test_data                 Allocated with name '_test_function_test_data_65537_132'
                                   2787 ;address                   Allocated with name '_test_function_address_65537_132'
                                   2788 ;i                         Allocated with name '_test_function_i_131073_133'
                                   2789 ;read_data                 Allocated with name '_test_function_read_data_65538_135'
                                   2790 ;------------------------------------------------------------
                                   2791 ;	8051_i2c_eeprom.c:543: void test_function()
                                   2792 ;	-----------------------------------------
                                   2793 ;	 function test_function
                                   2794 ;	-----------------------------------------
      003CA1                       2795 _test_function:
                                   2796 ;	8051_i2c_eeprom.c:545: i2c_start();
      003CA1 12 39 F8         [24] 2797 	lcall	_i2c_start
                                   2798 ;	8051_i2c_eeprom.c:546: i2c_delay();
      003CA4 12 3C 8A         [24] 2799 	lcall	_i2c_delay
                                   2800 ;	8051_i2c_eeprom.c:552: printf("Writing data 0x%02X to address 0x%02X\n\r", test_data, address);
      003CA7 74 02            [12] 2801 	mov	a,#0x02
      003CA9 C0 E0            [24] 2802 	push	acc
      003CAB E4               [12] 2803 	clr	a
      003CAC C0 E0            [24] 2804 	push	acc
      003CAE 74 26            [12] 2805 	mov	a,#0x26
      003CB0 C0 E0            [24] 2806 	push	acc
      003CB2 E4               [12] 2807 	clr	a
      003CB3 C0 E0            [24] 2808 	push	acc
      003CB5 74 E2            [12] 2809 	mov	a,#___str_54
      003CB7 C0 E0            [24] 2810 	push	acc
      003CB9 74 56            [12] 2811 	mov	a,#(___str_54 >> 8)
      003CBB C0 E0            [24] 2812 	push	acc
      003CBD 74 80            [12] 2813 	mov	a,#0x80
      003CBF C0 E0            [24] 2814 	push	acc
      003CC1 12 3E B0         [24] 2815 	lcall	_printf
      003CC4 E5 81            [12] 2816 	mov	a,sp
      003CC6 24 F9            [12] 2817 	add	a,#0xf9
      003CC8 F5 81            [12] 2818 	mov	sp,a
                                   2819 ;	8051_i2c_eeprom.c:553: eeprom_write(address, test_data);
      003CCA 90 04 0F         [24] 2820 	mov	dptr,#_eeprom_write_PARM_2
      003CCD 74 26            [12] 2821 	mov	a,#0x26
      003CCF F0               [24] 2822 	movx	@dptr,a
      003CD0 90 00 02         [24] 2823 	mov	dptr,#0x0002
      003CD3 12 36 B5         [24] 2824 	lcall	_eeprom_write
                                   2825 ;	8051_i2c_eeprom.c:554: i2c_stop();
      003CD6 12 3C 51         [24] 2826 	lcall	_i2c_stop
                                   2827 ;	8051_i2c_eeprom.c:556: for(int i = 0; i<100; i++)
      003CD9 7E 00            [12] 2828 	mov	r6,#0x00
      003CDB 7F 00            [12] 2829 	mov	r7,#0x00
      003CDD                       2830 00106$:
      003CDD C3               [12] 2831 	clr	c
      003CDE EE               [12] 2832 	mov	a,r6
      003CDF 94 64            [12] 2833 	subb	a,#0x64
      003CE1 EF               [12] 2834 	mov	a,r7
      003CE2 64 80            [12] 2835 	xrl	a,#0x80
      003CE4 94 80            [12] 2836 	subb	a,#0x80
      003CE6 50 12            [24] 2837 	jnc	00101$
                                   2838 ;	8051_i2c_eeprom.c:558: i2c_delay();
      003CE8 C0 07            [24] 2839 	push	ar7
      003CEA C0 06            [24] 2840 	push	ar6
      003CEC 12 3C 8A         [24] 2841 	lcall	_i2c_delay
      003CEF D0 06            [24] 2842 	pop	ar6
      003CF1 D0 07            [24] 2843 	pop	ar7
                                   2844 ;	8051_i2c_eeprom.c:556: for(int i = 0; i<100; i++)
      003CF3 0E               [12] 2845 	inc	r6
      003CF4 BE 00 E6         [24] 2846 	cjne	r6,#0x00,00106$
      003CF7 0F               [12] 2847 	inc	r7
      003CF8 80 E3            [24] 2848 	sjmp	00106$
      003CFA                       2849 00101$:
                                   2850 ;	8051_i2c_eeprom.c:562: unsigned char read_data = eeprom_read(address);
      003CFA 90 00 02         [24] 2851 	mov	dptr,#0x0002
      003CFD 12 37 F7         [24] 2852 	lcall	_eeprom_read
      003D00 AE 82            [24] 2853 	mov	r6,dpl
                                   2854 ;	8051_i2c_eeprom.c:563: printf("Read back from address 0x%02X: 0x%02X\n\r", address, read_data);
      003D02 8E 05            [24] 2855 	mov	ar5,r6
      003D04 7F 00            [12] 2856 	mov	r7,#0x00
      003D06 C0 06            [24] 2857 	push	ar6
      003D08 C0 05            [24] 2858 	push	ar5
      003D0A C0 07            [24] 2859 	push	ar7
      003D0C 74 02            [12] 2860 	mov	a,#0x02
      003D0E C0 E0            [24] 2861 	push	acc
      003D10 E4               [12] 2862 	clr	a
      003D11 C0 E0            [24] 2863 	push	acc
      003D13 74 0A            [12] 2864 	mov	a,#___str_55
      003D15 C0 E0            [24] 2865 	push	acc
      003D17 74 57            [12] 2866 	mov	a,#(___str_55 >> 8)
      003D19 C0 E0            [24] 2867 	push	acc
      003D1B 74 80            [12] 2868 	mov	a,#0x80
      003D1D C0 E0            [24] 2869 	push	acc
      003D1F 12 3E B0         [24] 2870 	lcall	_printf
      003D22 E5 81            [12] 2871 	mov	a,sp
      003D24 24 F9            [12] 2872 	add	a,#0xf9
      003D26 F5 81            [12] 2873 	mov	sp,a
      003D28 D0 06            [24] 2874 	pop	ar6
                                   2875 ;	8051_i2c_eeprom.c:566: if(read_data == test_data) {
      003D2A BE 26 16         [24] 2876 	cjne	r6,#0x26,00103$
                                   2877 ;	8051_i2c_eeprom.c:567: printf("MATCH - Write/Read successful!\n\r");
      003D2D 74 32            [12] 2878 	mov	a,#___str_56
      003D2F C0 E0            [24] 2879 	push	acc
      003D31 74 57            [12] 2880 	mov	a,#(___str_56 >> 8)
      003D33 C0 E0            [24] 2881 	push	acc
      003D35 74 80            [12] 2882 	mov	a,#0x80
      003D37 C0 E0            [24] 2883 	push	acc
      003D39 12 3E B0         [24] 2884 	lcall	_printf
      003D3C 15 81            [12] 2885 	dec	sp
      003D3E 15 81            [12] 2886 	dec	sp
      003D40 15 81            [12] 2887 	dec	sp
      003D42 22               [24] 2888 	ret
      003D43                       2889 00103$:
                                   2890 ;	8051_i2c_eeprom.c:569: printf("ERROR - Data mismatch!\n\r");
      003D43 74 53            [12] 2891 	mov	a,#___str_57
      003D45 C0 E0            [24] 2892 	push	acc
      003D47 74 57            [12] 2893 	mov	a,#(___str_57 >> 8)
      003D49 C0 E0            [24] 2894 	push	acc
      003D4B 74 80            [12] 2895 	mov	a,#0x80
      003D4D C0 E0            [24] 2896 	push	acc
      003D4F 12 3E B0         [24] 2897 	lcall	_printf
      003D52 15 81            [12] 2898 	dec	sp
      003D54 15 81            [12] 2899 	dec	sp
      003D56 15 81            [12] 2900 	dec	sp
                                   2901 ;	8051_i2c_eeprom.c:573: }
      003D58 22               [24] 2902 	ret
                                   2903 	.area CSEG    (CODE)
                                   2904 	.area CONST   (CODE)
                                   2905 	.area CONST   (CODE)
      004912                       2906 ___str_0:
      004912 0A                    2907 	.db 0x0a
      004913 E2                    2908 	.db 0xe2
      004914 95                    2909 	.db 0x95
      004915 94                    2910 	.db 0x94
      004916 E2                    2911 	.db 0xe2
      004917 95                    2912 	.db 0x95
      004918 90                    2913 	.db 0x90
      004919 E2                    2914 	.db 0xe2
      00491A 95                    2915 	.db 0x95
      00491B 90                    2916 	.db 0x90
      00491C E2                    2917 	.db 0xe2
      00491D 95                    2918 	.db 0x95
      00491E 90                    2919 	.db 0x90
      00491F E2                    2920 	.db 0xe2
      004920 95                    2921 	.db 0x95
      004921 90                    2922 	.db 0x90
      004922 E2                    2923 	.db 0xe2
      004923 95                    2924 	.db 0x95
      004924 90                    2925 	.db 0x90
      004925 E2                    2926 	.db 0xe2
      004926 95                    2927 	.db 0x95
      004927 90                    2928 	.db 0x90
      004928 E2                    2929 	.db 0xe2
      004929 95                    2930 	.db 0x95
      00492A 90                    2931 	.db 0x90
      00492B E2                    2932 	.db 0xe2
      00492C 95                    2933 	.db 0x95
      00492D 90                    2934 	.db 0x90
      00492E E2                    2935 	.db 0xe2
      00492F 95                    2936 	.db 0x95
      004930 90                    2937 	.db 0x90
      004931 E2                    2938 	.db 0xe2
      004932 95                    2939 	.db 0x95
      004933 90                    2940 	.db 0x90
      004934 E2                    2941 	.db 0xe2
      004935 95                    2942 	.db 0x95
      004936 90                    2943 	.db 0x90
      004937 E2                    2944 	.db 0xe2
      004938 95                    2945 	.db 0x95
      004939 90                    2946 	.db 0x90
      00493A E2                    2947 	.db 0xe2
      00493B 95                    2948 	.db 0x95
      00493C 90                    2949 	.db 0x90
      00493D E2                    2950 	.db 0xe2
      00493E 95                    2951 	.db 0x95
      00493F 90                    2952 	.db 0x90
      004940 E2                    2953 	.db 0xe2
      004941 95                    2954 	.db 0x95
      004942 90                    2955 	.db 0x90
      004943 E2                    2956 	.db 0xe2
      004944 95                    2957 	.db 0x95
      004945 90                    2958 	.db 0x90
      004946 E2                    2959 	.db 0xe2
      004947 95                    2960 	.db 0x95
      004948 90                    2961 	.db 0x90
      004949 E2                    2962 	.db 0xe2
      00494A 95                    2963 	.db 0x95
      00494B 90                    2964 	.db 0x90
      00494C E2                    2965 	.db 0xe2
      00494D 95                    2966 	.db 0x95
      00494E 90                    2967 	.db 0x90
      00494F E2                    2968 	.db 0xe2
      004950 95                    2969 	.db 0x95
      004951 90                    2970 	.db 0x90
      004952 E2                    2971 	.db 0xe2
      004953 95                    2972 	.db 0x95
      004954 90                    2973 	.db 0x90
      004955 E2                    2974 	.db 0xe2
      004956 95                    2975 	.db 0x95
      004957 90                    2976 	.db 0x90
      004958 E2                    2977 	.db 0xe2
      004959 95                    2978 	.db 0x95
      00495A 90                    2979 	.db 0x90
      00495B E2                    2980 	.db 0xe2
      00495C 95                    2981 	.db 0x95
      00495D 90                    2982 	.db 0x90
      00495E E2                    2983 	.db 0xe2
      00495F 95                    2984 	.db 0x95
      004960 90                    2985 	.db 0x90
      004961 E2                    2986 	.db 0xe2
      004962 95                    2987 	.db 0x95
      004963 90                    2988 	.db 0x90
      004964 E2                    2989 	.db 0xe2
      004965 95                    2990 	.db 0x95
      004966 90                    2991 	.db 0x90
      004967 E2                    2992 	.db 0xe2
      004968 95                    2993 	.db 0x95
      004969 90                    2994 	.db 0x90
      00496A E2                    2995 	.db 0xe2
      00496B 95                    2996 	.db 0x95
      00496C 90                    2997 	.db 0x90
      00496D E2                    2998 	.db 0xe2
      00496E 95                    2999 	.db 0x95
      00496F 90                    3000 	.db 0x90
      004970 E2                    3001 	.db 0xe2
      004971 95                    3002 	.db 0x95
      004972 90                    3003 	.db 0x90
      004973 E2                    3004 	.db 0xe2
      004974 95                    3005 	.db 0x95
      004975 90                    3006 	.db 0x90
      004976 E2                    3007 	.db 0xe2
      004977 95                    3008 	.db 0x95
      004978 90                    3009 	.db 0x90
      004979 E2                    3010 	.db 0xe2
      00497A 95                    3011 	.db 0x95
      00497B 90                    3012 	.db 0x90
      00497C E2                    3013 	.db 0xe2
      00497D 95                    3014 	.db 0x95
      00497E 90                    3015 	.db 0x90
      00497F E2                    3016 	.db 0xe2
      004980 95                    3017 	.db 0x95
      004981 90                    3018 	.db 0x90
      004982 E2                    3019 	.db 0xe2
      004983 95                    3020 	.db 0x95
      004984 90                    3021 	.db 0x90
      004985 E2                    3022 	.db 0xe2
      004986 95                    3023 	.db 0x95
      004987 90                    3024 	.db 0x90
      004988 E2                    3025 	.db 0xe2
      004989 95                    3026 	.db 0x95
      00498A 90                    3027 	.db 0x90
      00498B E2                    3028 	.db 0xe2
      00498C 95                    3029 	.db 0x95
      00498D 90                    3030 	.db 0x90
      00498E E2                    3031 	.db 0xe2
      00498F 95                    3032 	.db 0x95
      004990 90                    3033 	.db 0x90
      004991 E2                    3034 	.db 0xe2
      004992 95                    3035 	.db 0x95
      004993 90                    3036 	.db 0x90
      004994 E2                    3037 	.db 0xe2
      004995 95                    3038 	.db 0x95
      004996 90                    3039 	.db 0x90
      004997 E2                    3040 	.db 0xe2
      004998 95                    3041 	.db 0x95
      004999 90                    3042 	.db 0x90
      00499A E2                    3043 	.db 0xe2
      00499B 95                    3044 	.db 0x95
      00499C 90                    3045 	.db 0x90
      00499D E2                    3046 	.db 0xe2
      00499E 95                    3047 	.db 0x95
      00499F 90                    3048 	.db 0x90
      0049A0 E2                    3049 	.db 0xe2
      0049A1 95                    3050 	.db 0x95
      0049A2 90                    3051 	.db 0x90
      0049A3 E2                    3052 	.db 0xe2
      0049A4 95                    3053 	.db 0x95
      0049A5 90                    3054 	.db 0x90
      0049A6 E2                    3055 	.db 0xe2
      0049A7 95                    3056 	.db 0x95
      0049A8 90                    3057 	.db 0x90
      0049A9 E2                    3058 	.db 0xe2
      0049AA 95                    3059 	.db 0x95
      0049AB 90                    3060 	.db 0x90
      0049AC E2                    3061 	.db 0xe2
      0049AD 95                    3062 	.db 0x95
      0049AE 90                    3063 	.db 0x90
      0049AF E2                    3064 	.db 0xe2
      0049B0 95                    3065 	.db 0x95
      0049B1 90                    3066 	.db 0x90
      0049B2 E2                    3067 	.db 0xe2
      0049B3 95                    3068 	.db 0x95
      0049B4 90                    3069 	.db 0x90
      0049B5 E2                    3070 	.db 0xe2
      0049B6 95                    3071 	.db 0x95
      0049B7 90                    3072 	.db 0x90
      0049B8 E2                    3073 	.db 0xe2
      0049B9 95                    3074 	.db 0x95
      0049BA 90                    3075 	.db 0x90
      0049BB E2                    3076 	.db 0xe2
      0049BC 95                    3077 	.db 0x95
      0049BD 90                    3078 	.db 0x90
      0049BE E2                    3079 	.db 0xe2
      0049BF 95                    3080 	.db 0x95
      0049C0 97                    3081 	.db 0x97
      0049C1 0A                    3082 	.db 0x0a
      0049C2 0D                    3083 	.db 0x0d
      0049C3 00                    3084 	.db 0x00
                                   3085 	.area CSEG    (CODE)
                                   3086 	.area CONST   (CODE)
      0049C4                       3087 ___str_1:
      0049C4 E2                    3088 	.db 0xe2
      0049C5 95                    3089 	.db 0x95
      0049C6 91                    3090 	.db 0x91
      0049C7 20 20 20 20 20 20 20  3091 	.ascii "           I2C Memory Management System v1.0            "
             20 20 20 20 49 32 43
             20 4D 65 6D 6F 72 79
             20 4D 61 6E 61 67 65
             6D 65 6E 74 20 53 79
             73 74 65 6D 20 76 31
             2E 30 20 20 20 20 20
             20 20 20 20 20 20 20
      0049FF E2                    3092 	.db 0xe2
      004A00 95                    3093 	.db 0x95
      004A01 91                    3094 	.db 0x91
      004A02 0A                    3095 	.db 0x0a
      004A03 0D                    3096 	.db 0x0d
      004A04 00                    3097 	.db 0x00
                                   3098 	.area CSEG    (CODE)
                                   3099 	.area CONST   (CODE)
      004A05                       3100 ___str_2:
      004A05 E2                    3101 	.db 0xe2
      004A06 95                    3102 	.db 0x95
      004A07 9A                    3103 	.db 0x9a
      004A08 E2                    3104 	.db 0xe2
      004A09 95                    3105 	.db 0x95
      004A0A 90                    3106 	.db 0x90
      004A0B E2                    3107 	.db 0xe2
      004A0C 95                    3108 	.db 0x95
      004A0D 90                    3109 	.db 0x90
      004A0E E2                    3110 	.db 0xe2
      004A0F 95                    3111 	.db 0x95
      004A10 90                    3112 	.db 0x90
      004A11 E2                    3113 	.db 0xe2
      004A12 95                    3114 	.db 0x95
      004A13 90                    3115 	.db 0x90
      004A14 E2                    3116 	.db 0xe2
      004A15 95                    3117 	.db 0x95
      004A16 90                    3118 	.db 0x90
      004A17 E2                    3119 	.db 0xe2
      004A18 95                    3120 	.db 0x95
      004A19 90                    3121 	.db 0x90
      004A1A E2                    3122 	.db 0xe2
      004A1B 95                    3123 	.db 0x95
      004A1C 90                    3124 	.db 0x90
      004A1D E2                    3125 	.db 0xe2
      004A1E 95                    3126 	.db 0x95
      004A1F 90                    3127 	.db 0x90
      004A20 E2                    3128 	.db 0xe2
      004A21 95                    3129 	.db 0x95
      004A22 90                    3130 	.db 0x90
      004A23 E2                    3131 	.db 0xe2
      004A24 95                    3132 	.db 0x95
      004A25 90                    3133 	.db 0x90
      004A26 E2                    3134 	.db 0xe2
      004A27 95                    3135 	.db 0x95
      004A28 90                    3136 	.db 0x90
      004A29 E2                    3137 	.db 0xe2
      004A2A 95                    3138 	.db 0x95
      004A2B 90                    3139 	.db 0x90
      004A2C E2                    3140 	.db 0xe2
      004A2D 95                    3141 	.db 0x95
      004A2E 90                    3142 	.db 0x90
      004A2F E2                    3143 	.db 0xe2
      004A30 95                    3144 	.db 0x95
      004A31 90                    3145 	.db 0x90
      004A32 E2                    3146 	.db 0xe2
      004A33 95                    3147 	.db 0x95
      004A34 90                    3148 	.db 0x90
      004A35 E2                    3149 	.db 0xe2
      004A36 95                    3150 	.db 0x95
      004A37 90                    3151 	.db 0x90
      004A38 E2                    3152 	.db 0xe2
      004A39 95                    3153 	.db 0x95
      004A3A 90                    3154 	.db 0x90
      004A3B E2                    3155 	.db 0xe2
      004A3C 95                    3156 	.db 0x95
      004A3D 90                    3157 	.db 0x90
      004A3E E2                    3158 	.db 0xe2
      004A3F 95                    3159 	.db 0x95
      004A40 90                    3160 	.db 0x90
      004A41 E2                    3161 	.db 0xe2
      004A42 95                    3162 	.db 0x95
      004A43 90                    3163 	.db 0x90
      004A44 E2                    3164 	.db 0xe2
      004A45 95                    3165 	.db 0x95
      004A46 90                    3166 	.db 0x90
      004A47 E2                    3167 	.db 0xe2
      004A48 95                    3168 	.db 0x95
      004A49 90                    3169 	.db 0x90
      004A4A E2                    3170 	.db 0xe2
      004A4B 95                    3171 	.db 0x95
      004A4C 90                    3172 	.db 0x90
      004A4D E2                    3173 	.db 0xe2
      004A4E 95                    3174 	.db 0x95
      004A4F 90                    3175 	.db 0x90
      004A50 E2                    3176 	.db 0xe2
      004A51 95                    3177 	.db 0x95
      004A52 90                    3178 	.db 0x90
      004A53 E2                    3179 	.db 0xe2
      004A54 95                    3180 	.db 0x95
      004A55 90                    3181 	.db 0x90
      004A56 E2                    3182 	.db 0xe2
      004A57 95                    3183 	.db 0x95
      004A58 90                    3184 	.db 0x90
      004A59 E2                    3185 	.db 0xe2
      004A5A 95                    3186 	.db 0x95
      004A5B 90                    3187 	.db 0x90
      004A5C E2                    3188 	.db 0xe2
      004A5D 95                    3189 	.db 0x95
      004A5E 90                    3190 	.db 0x90
      004A5F E2                    3191 	.db 0xe2
      004A60 95                    3192 	.db 0x95
      004A61 90                    3193 	.db 0x90
      004A62 E2                    3194 	.db 0xe2
      004A63 95                    3195 	.db 0x95
      004A64 90                    3196 	.db 0x90
      004A65 E2                    3197 	.db 0xe2
      004A66 95                    3198 	.db 0x95
      004A67 90                    3199 	.db 0x90
      004A68 E2                    3200 	.db 0xe2
      004A69 95                    3201 	.db 0x95
      004A6A 90                    3202 	.db 0x90
      004A6B E2                    3203 	.db 0xe2
      004A6C 95                    3204 	.db 0x95
      004A6D 90                    3205 	.db 0x90
      004A6E E2                    3206 	.db 0xe2
      004A6F 95                    3207 	.db 0x95
      004A70 90                    3208 	.db 0x90
      004A71 E2                    3209 	.db 0xe2
      004A72 95                    3210 	.db 0x95
      004A73 90                    3211 	.db 0x90
      004A74 E2                    3212 	.db 0xe2
      004A75 95                    3213 	.db 0x95
      004A76 90                    3214 	.db 0x90
      004A77 E2                    3215 	.db 0xe2
      004A78 95                    3216 	.db 0x95
      004A79 90                    3217 	.db 0x90
      004A7A E2                    3218 	.db 0xe2
      004A7B 95                    3219 	.db 0x95
      004A7C 90                    3220 	.db 0x90
      004A7D E2                    3221 	.db 0xe2
      004A7E 95                    3222 	.db 0x95
      004A7F 90                    3223 	.db 0x90
      004A80 E2                    3224 	.db 0xe2
      004A81 95                    3225 	.db 0x95
      004A82 90                    3226 	.db 0x90
      004A83 E2                    3227 	.db 0xe2
      004A84 95                    3228 	.db 0x95
      004A85 90                    3229 	.db 0x90
      004A86 E2                    3230 	.db 0xe2
      004A87 95                    3231 	.db 0x95
      004A88 90                    3232 	.db 0x90
      004A89 E2                    3233 	.db 0xe2
      004A8A 95                    3234 	.db 0x95
      004A8B 90                    3235 	.db 0x90
      004A8C E2                    3236 	.db 0xe2
      004A8D 95                    3237 	.db 0x95
      004A8E 90                    3238 	.db 0x90
      004A8F E2                    3239 	.db 0xe2
      004A90 95                    3240 	.db 0x95
      004A91 90                    3241 	.db 0x90
      004A92 E2                    3242 	.db 0xe2
      004A93 95                    3243 	.db 0x95
      004A94 90                    3244 	.db 0x90
      004A95 E2                    3245 	.db 0xe2
      004A96 95                    3246 	.db 0x95
      004A97 90                    3247 	.db 0x90
      004A98 E2                    3248 	.db 0xe2
      004A99 95                    3249 	.db 0x95
      004A9A 90                    3250 	.db 0x90
      004A9B E2                    3251 	.db 0xe2
      004A9C 95                    3252 	.db 0x95
      004A9D 90                    3253 	.db 0x90
      004A9E E2                    3254 	.db 0xe2
      004A9F 95                    3255 	.db 0x95
      004AA0 90                    3256 	.db 0x90
      004AA1 E2                    3257 	.db 0xe2
      004AA2 95                    3258 	.db 0x95
      004AA3 90                    3259 	.db 0x90
      004AA4 E2                    3260 	.db 0xe2
      004AA5 95                    3261 	.db 0x95
      004AA6 90                    3262 	.db 0x90
      004AA7 E2                    3263 	.db 0xe2
      004AA8 95                    3264 	.db 0x95
      004AA9 90                    3265 	.db 0x90
      004AAA E2                    3266 	.db 0xe2
      004AAB 95                    3267 	.db 0x95
      004AAC 90                    3268 	.db 0x90
      004AAD E2                    3269 	.db 0xe2
      004AAE 95                    3270 	.db 0x95
      004AAF 90                    3271 	.db 0x90
      004AB0 E2                    3272 	.db 0xe2
      004AB1 95                    3273 	.db 0x95
      004AB2 9D                    3274 	.db 0x9d
      004AB3 0A                    3275 	.db 0x0a
      004AB4 0D                    3276 	.db 0x0d
      004AB5 00                    3277 	.db 0x00
                                   3278 	.area CSEG    (CODE)
                                   3279 	.area CONST   (CODE)
      004AB6                       3280 ___str_3:
      004AB6 0A                    3281 	.db 0x0a
      004AB7 0D                    3282 	.db 0x0d
      004AB8 E2                    3283 	.db 0xe2
      004AB9 94                    3284 	.db 0x94
      004ABA 8C                    3285 	.db 0x8c
      004ABB E2                    3286 	.db 0xe2
      004ABC 94                    3287 	.db 0x94
      004ABD 80                    3288 	.db 0x80
      004ABE E2                    3289 	.db 0xe2
      004ABF 94                    3290 	.db 0x94
      004AC0 80                    3291 	.db 0x80
      004AC1 E2                    3292 	.db 0xe2
      004AC2 94                    3293 	.db 0x94
      004AC3 80                    3294 	.db 0x80
      004AC4 E2                    3295 	.db 0xe2
      004AC5 94                    3296 	.db 0x94
      004AC6 80                    3297 	.db 0x80
      004AC7 E2                    3298 	.db 0xe2
      004AC8 94                    3299 	.db 0x94
      004AC9 80                    3300 	.db 0x80
      004ACA E2                    3301 	.db 0xe2
      004ACB 94                    3302 	.db 0x94
      004ACC 80                    3303 	.db 0x80
      004ACD E2                    3304 	.db 0xe2
      004ACE 94                    3305 	.db 0x94
      004ACF 80                    3306 	.db 0x80
      004AD0 E2                    3307 	.db 0xe2
      004AD1 94                    3308 	.db 0x94
      004AD2 80                    3309 	.db 0x80
      004AD3 E2                    3310 	.db 0xe2
      004AD4 94                    3311 	.db 0x94
      004AD5 80                    3312 	.db 0x80
      004AD6 E2                    3313 	.db 0xe2
      004AD7 94                    3314 	.db 0x94
      004AD8 80                    3315 	.db 0x80
      004AD9 E2                    3316 	.db 0xe2
      004ADA 94                    3317 	.db 0x94
      004ADB 80                    3318 	.db 0x80
      004ADC E2                    3319 	.db 0xe2
      004ADD 94                    3320 	.db 0x94
      004ADE 80                    3321 	.db 0x80
      004ADF E2                    3322 	.db 0xe2
      004AE0 94                    3323 	.db 0x94
      004AE1 AC                    3324 	.db 0xac
      004AE2 E2                    3325 	.db 0xe2
      004AE3 94                    3326 	.db 0x94
      004AE4 80                    3327 	.db 0x80
      004AE5 E2                    3328 	.db 0xe2
      004AE6 94                    3329 	.db 0x94
      004AE7 80                    3330 	.db 0x80
      004AE8 E2                    3331 	.db 0xe2
      004AE9 94                    3332 	.db 0x94
      004AEA 80                    3333 	.db 0x80
      004AEB E2                    3334 	.db 0xe2
      004AEC 94                    3335 	.db 0x94
      004AED 80                    3336 	.db 0x80
      004AEE E2                    3337 	.db 0xe2
      004AEF 94                    3338 	.db 0x94
      004AF0 80                    3339 	.db 0x80
      004AF1 E2                    3340 	.db 0xe2
      004AF2 94                    3341 	.db 0x94
      004AF3 80                    3342 	.db 0x80
      004AF4 E2                    3343 	.db 0xe2
      004AF5 94                    3344 	.db 0x94
      004AF6 80                    3345 	.db 0x80
      004AF7 E2                    3346 	.db 0xe2
      004AF8 94                    3347 	.db 0x94
      004AF9 80                    3348 	.db 0x80
      004AFA E2                    3349 	.db 0xe2
      004AFB 94                    3350 	.db 0x94
      004AFC 80                    3351 	.db 0x80
      004AFD E2                    3352 	.db 0xe2
      004AFE 94                    3353 	.db 0x94
      004AFF 80                    3354 	.db 0x80
      004B00 E2                    3355 	.db 0xe2
      004B01 94                    3356 	.db 0x94
      004B02 80                    3357 	.db 0x80
      004B03 E2                    3358 	.db 0xe2
      004B04 94                    3359 	.db 0x94
      004B05 80                    3360 	.db 0x80
      004B06 E2                    3361 	.db 0xe2
      004B07 94                    3362 	.db 0x94
      004B08 80                    3363 	.db 0x80
      004B09 E2                    3364 	.db 0xe2
      004B0A 94                    3365 	.db 0x94
      004B0B 80                    3366 	.db 0x80
      004B0C E2                    3367 	.db 0xe2
      004B0D 94                    3368 	.db 0x94
      004B0E 80                    3369 	.db 0x80
      004B0F E2                    3370 	.db 0xe2
      004B10 94                    3371 	.db 0x94
      004B11 80                    3372 	.db 0x80
      004B12 E2                    3373 	.db 0xe2
      004B13 94                    3374 	.db 0x94
      004B14 80                    3375 	.db 0x80
      004B15 E2                    3376 	.db 0xe2
      004B16 94                    3377 	.db 0x94
      004B17 80                    3378 	.db 0x80
      004B18 E2                    3379 	.db 0xe2
      004B19 94                    3380 	.db 0x94
      004B1A 80                    3381 	.db 0x80
      004B1B E2                    3382 	.db 0xe2
      004B1C 94                    3383 	.db 0x94
      004B1D 80                    3384 	.db 0x80
      004B1E E2                    3385 	.db 0xe2
      004B1F 94                    3386 	.db 0x94
      004B20 80                    3387 	.db 0x80
      004B21 E2                    3388 	.db 0xe2
      004B22 94                    3389 	.db 0x94
      004B23 80                    3390 	.db 0x80
      004B24 E2                    3391 	.db 0xe2
      004B25 94                    3392 	.db 0x94
      004B26 80                    3393 	.db 0x80
      004B27 E2                    3394 	.db 0xe2
      004B28 94                    3395 	.db 0x94
      004B29 80                    3396 	.db 0x80
      004B2A E2                    3397 	.db 0xe2
      004B2B 94                    3398 	.db 0x94
      004B2C 80                    3399 	.db 0x80
      004B2D E2                    3400 	.db 0xe2
      004B2E 94                    3401 	.db 0x94
      004B2F 80                    3402 	.db 0x80
      004B30 E2                    3403 	.db 0xe2
      004B31 94                    3404 	.db 0x94
      004B32 80                    3405 	.db 0x80
      004B33 E2                    3406 	.db 0xe2
      004B34 94                    3407 	.db 0x94
      004B35 80                    3408 	.db 0x80
      004B36 E2                    3409 	.db 0xe2
      004B37 94                    3410 	.db 0x94
      004B38 80                    3411 	.db 0x80
      004B39 E2                    3412 	.db 0xe2
      004B3A 94                    3413 	.db 0x94
      004B3B 80                    3414 	.db 0x80
      004B3C E2                    3415 	.db 0xe2
      004B3D 94                    3416 	.db 0x94
      004B3E 80                    3417 	.db 0x80
      004B3F E2                    3418 	.db 0xe2
      004B40 94                    3419 	.db 0x94
      004B41 80                    3420 	.db 0x80
      004B42 E2                    3421 	.db 0xe2
      004B43 94                    3422 	.db 0x94
      004B44 80                    3423 	.db 0x80
      004B45 E2                    3424 	.db 0xe2
      004B46 94                    3425 	.db 0x94
      004B47 80                    3426 	.db 0x80
      004B48 E2                    3427 	.db 0xe2
      004B49 94                    3428 	.db 0x94
      004B4A 80                    3429 	.db 0x80
      004B4B E2                    3430 	.db 0xe2
      004B4C 94                    3431 	.db 0x94
      004B4D 80                    3432 	.db 0x80
      004B4E E2                    3433 	.db 0xe2
      004B4F 94                    3434 	.db 0x94
      004B50 80                    3435 	.db 0x80
      004B51 E2                    3436 	.db 0xe2
      004B52 94                    3437 	.db 0x94
      004B53 80                    3438 	.db 0x80
      004B54 E2                    3439 	.db 0xe2
      004B55 94                    3440 	.db 0x94
      004B56 80                    3441 	.db 0x80
      004B57 E2                    3442 	.db 0xe2
      004B58 94                    3443 	.db 0x94
      004B59 80                    3444 	.db 0x80
      004B5A E2                    3445 	.db 0xe2
      004B5B 94                    3446 	.db 0x94
      004B5C 80                    3447 	.db 0x80
      004B5D E2                    3448 	.db 0xe2
      004B5E 94                    3449 	.db 0x94
      004B5F 80                    3450 	.db 0x80
      004B60 E2                    3451 	.db 0xe2
      004B61 94                    3452 	.db 0x94
      004B62 80                    3453 	.db 0x80
      004B63 E2                    3454 	.db 0xe2
      004B64 94                    3455 	.db 0x94
      004B65 80                    3456 	.db 0x80
      004B66 E2                    3457 	.db 0xe2
      004B67 94                    3458 	.db 0x94
      004B68 90                    3459 	.db 0x90
      004B69 0A                    3460 	.db 0x0a
      004B6A 0D                    3461 	.db 0x0d
      004B6B 00                    3462 	.db 0x00
                                   3463 	.area CSEG    (CODE)
                                   3464 	.area CONST   (CODE)
      004B6C                       3465 ___str_4:
      004B6C E2                    3466 	.db 0xe2
      004B6D 94                    3467 	.db 0x94
      004B6E 82                    3468 	.db 0x82
      004B6F 20 20 43 6F 6D 6D 61  3469 	.ascii "  Command   "
             6E 64 20 20 20
      004B7B E2                    3470 	.db 0xe2
      004B7C 94                    3471 	.db 0x94
      004B7D 82                    3472 	.db 0x82
      004B7E 20 20 20 20 20 20 20  3473 	.ascii "               Description                  "
             20 20 20 20 20 20 20
             20 44 65 73 63 72 69
             70 74 69 6F 6E 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004BAA E2                    3474 	.db 0xe2
      004BAB 94                    3475 	.db 0x94
      004BAC 82                    3476 	.db 0x82
      004BAD 0A                    3477 	.db 0x0a
      004BAE 0D                    3478 	.db 0x0d
      004BAF 00                    3479 	.db 0x00
                                   3480 	.area CSEG    (CODE)
                                   3481 	.area CONST   (CODE)
      004BB0                       3482 ___str_5:
      004BB0 E2                    3483 	.db 0xe2
      004BB1 94                    3484 	.db 0x94
      004BB2 9C                    3485 	.db 0x9c
      004BB3 E2                    3486 	.db 0xe2
      004BB4 94                    3487 	.db 0x94
      004BB5 80                    3488 	.db 0x80
      004BB6 E2                    3489 	.db 0xe2
      004BB7 94                    3490 	.db 0x94
      004BB8 80                    3491 	.db 0x80
      004BB9 E2                    3492 	.db 0xe2
      004BBA 94                    3493 	.db 0x94
      004BBB 80                    3494 	.db 0x80
      004BBC E2                    3495 	.db 0xe2
      004BBD 94                    3496 	.db 0x94
      004BBE 80                    3497 	.db 0x80
      004BBF E2                    3498 	.db 0xe2
      004BC0 94                    3499 	.db 0x94
      004BC1 80                    3500 	.db 0x80
      004BC2 E2                    3501 	.db 0xe2
      004BC3 94                    3502 	.db 0x94
      004BC4 80                    3503 	.db 0x80
      004BC5 E2                    3504 	.db 0xe2
      004BC6 94                    3505 	.db 0x94
      004BC7 80                    3506 	.db 0x80
      004BC8 E2                    3507 	.db 0xe2
      004BC9 94                    3508 	.db 0x94
      004BCA 80                    3509 	.db 0x80
      004BCB E2                    3510 	.db 0xe2
      004BCC 94                    3511 	.db 0x94
      004BCD 80                    3512 	.db 0x80
      004BCE E2                    3513 	.db 0xe2
      004BCF 94                    3514 	.db 0x94
      004BD0 80                    3515 	.db 0x80
      004BD1 E2                    3516 	.db 0xe2
      004BD2 94                    3517 	.db 0x94
      004BD3 80                    3518 	.db 0x80
      004BD4 E2                    3519 	.db 0xe2
      004BD5 94                    3520 	.db 0x94
      004BD6 80                    3521 	.db 0x80
      004BD7 E2                    3522 	.db 0xe2
      004BD8 94                    3523 	.db 0x94
      004BD9 BC                    3524 	.db 0xbc
      004BDA E2                    3525 	.db 0xe2
      004BDB 94                    3526 	.db 0x94
      004BDC 80                    3527 	.db 0x80
      004BDD E2                    3528 	.db 0xe2
      004BDE 94                    3529 	.db 0x94
      004BDF 80                    3530 	.db 0x80
      004BE0 E2                    3531 	.db 0xe2
      004BE1 94                    3532 	.db 0x94
      004BE2 80                    3533 	.db 0x80
      004BE3 E2                    3534 	.db 0xe2
      004BE4 94                    3535 	.db 0x94
      004BE5 80                    3536 	.db 0x80
      004BE6 E2                    3537 	.db 0xe2
      004BE7 94                    3538 	.db 0x94
      004BE8 80                    3539 	.db 0x80
      004BE9 E2                    3540 	.db 0xe2
      004BEA 94                    3541 	.db 0x94
      004BEB 80                    3542 	.db 0x80
      004BEC E2                    3543 	.db 0xe2
      004BED 94                    3544 	.db 0x94
      004BEE 80                    3545 	.db 0x80
      004BEF E2                    3546 	.db 0xe2
      004BF0 94                    3547 	.db 0x94
      004BF1 80                    3548 	.db 0x80
      004BF2 E2                    3549 	.db 0xe2
      004BF3 94                    3550 	.db 0x94
      004BF4 80                    3551 	.db 0x80
      004BF5 E2                    3552 	.db 0xe2
      004BF6 94                    3553 	.db 0x94
      004BF7 80                    3554 	.db 0x80
      004BF8 E2                    3555 	.db 0xe2
      004BF9 94                    3556 	.db 0x94
      004BFA 80                    3557 	.db 0x80
      004BFB E2                    3558 	.db 0xe2
      004BFC 94                    3559 	.db 0x94
      004BFD 80                    3560 	.db 0x80
      004BFE E2                    3561 	.db 0xe2
      004BFF 94                    3562 	.db 0x94
      004C00 80                    3563 	.db 0x80
      004C01 E2                    3564 	.db 0xe2
      004C02 94                    3565 	.db 0x94
      004C03 80                    3566 	.db 0x80
      004C04 E2                    3567 	.db 0xe2
      004C05 94                    3568 	.db 0x94
      004C06 80                    3569 	.db 0x80
      004C07 E2                    3570 	.db 0xe2
      004C08 94                    3571 	.db 0x94
      004C09 80                    3572 	.db 0x80
      004C0A E2                    3573 	.db 0xe2
      004C0B 94                    3574 	.db 0x94
      004C0C 80                    3575 	.db 0x80
      004C0D E2                    3576 	.db 0xe2
      004C0E 94                    3577 	.db 0x94
      004C0F 80                    3578 	.db 0x80
      004C10 E2                    3579 	.db 0xe2
      004C11 94                    3580 	.db 0x94
      004C12 80                    3581 	.db 0x80
      004C13 E2                    3582 	.db 0xe2
      004C14 94                    3583 	.db 0x94
      004C15 80                    3584 	.db 0x80
      004C16 E2                    3585 	.db 0xe2
      004C17 94                    3586 	.db 0x94
      004C18 80                    3587 	.db 0x80
      004C19 E2                    3588 	.db 0xe2
      004C1A 94                    3589 	.db 0x94
      004C1B 80                    3590 	.db 0x80
      004C1C E2                    3591 	.db 0xe2
      004C1D 94                    3592 	.db 0x94
      004C1E 80                    3593 	.db 0x80
      004C1F E2                    3594 	.db 0xe2
      004C20 94                    3595 	.db 0x94
      004C21 80                    3596 	.db 0x80
      004C22 E2                    3597 	.db 0xe2
      004C23 94                    3598 	.db 0x94
      004C24 80                    3599 	.db 0x80
      004C25 E2                    3600 	.db 0xe2
      004C26 94                    3601 	.db 0x94
      004C27 80                    3602 	.db 0x80
      004C28 E2                    3603 	.db 0xe2
      004C29 94                    3604 	.db 0x94
      004C2A 80                    3605 	.db 0x80
      004C2B E2                    3606 	.db 0xe2
      004C2C 94                    3607 	.db 0x94
      004C2D 80                    3608 	.db 0x80
      004C2E E2                    3609 	.db 0xe2
      004C2F 94                    3610 	.db 0x94
      004C30 80                    3611 	.db 0x80
      004C31 E2                    3612 	.db 0xe2
      004C32 94                    3613 	.db 0x94
      004C33 80                    3614 	.db 0x80
      004C34 E2                    3615 	.db 0xe2
      004C35 94                    3616 	.db 0x94
      004C36 80                    3617 	.db 0x80
      004C37 E2                    3618 	.db 0xe2
      004C38 94                    3619 	.db 0x94
      004C39 80                    3620 	.db 0x80
      004C3A E2                    3621 	.db 0xe2
      004C3B 94                    3622 	.db 0x94
      004C3C 80                    3623 	.db 0x80
      004C3D E2                    3624 	.db 0xe2
      004C3E 94                    3625 	.db 0x94
      004C3F 80                    3626 	.db 0x80
      004C40 E2                    3627 	.db 0xe2
      004C41 94                    3628 	.db 0x94
      004C42 80                    3629 	.db 0x80
      004C43 E2                    3630 	.db 0xe2
      004C44 94                    3631 	.db 0x94
      004C45 80                    3632 	.db 0x80
      004C46 E2                    3633 	.db 0xe2
      004C47 94                    3634 	.db 0x94
      004C48 80                    3635 	.db 0x80
      004C49 E2                    3636 	.db 0xe2
      004C4A 94                    3637 	.db 0x94
      004C4B 80                    3638 	.db 0x80
      004C4C E2                    3639 	.db 0xe2
      004C4D 94                    3640 	.db 0x94
      004C4E 80                    3641 	.db 0x80
      004C4F E2                    3642 	.db 0xe2
      004C50 94                    3643 	.db 0x94
      004C51 80                    3644 	.db 0x80
      004C52 E2                    3645 	.db 0xe2
      004C53 94                    3646 	.db 0x94
      004C54 80                    3647 	.db 0x80
      004C55 E2                    3648 	.db 0xe2
      004C56 94                    3649 	.db 0x94
      004C57 80                    3650 	.db 0x80
      004C58 E2                    3651 	.db 0xe2
      004C59 94                    3652 	.db 0x94
      004C5A 80                    3653 	.db 0x80
      004C5B E2                    3654 	.db 0xe2
      004C5C 94                    3655 	.db 0x94
      004C5D 80                    3656 	.db 0x80
      004C5E E2                    3657 	.db 0xe2
      004C5F 94                    3658 	.db 0x94
      004C60 A4                    3659 	.db 0xa4
      004C61 0A                    3660 	.db 0x0a
      004C62 0D                    3661 	.db 0x0d
      004C63 00                    3662 	.db 0x00
                                   3663 	.area CSEG    (CODE)
                                   3664 	.area CONST   (CODE)
      004C64                       3665 ___str_6:
      004C64 E2                    3666 	.db 0xe2
      004C65 94                    3667 	.db 0x94
      004C66 82                    3668 	.db 0x82
      004C67 20 20 20 20 20 52 20  3669 	.ascii "     R      "
             20 20 20 20 20
      004C73 E2                    3670 	.db 0xe2
      004C74 94                    3671 	.db 0x94
      004C75 82                    3672 	.db 0x82
      004C76 20 52 65 61 64 20 66  3673 	.ascii " Read from address                          "
             72 6F 6D 20 61 64 64
             72 65 73 73 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004CA2 E2                    3674 	.db 0xe2
      004CA3 94                    3675 	.db 0x94
      004CA4 82                    3676 	.db 0x82
      004CA5 0A                    3677 	.db 0x0a
      004CA6 0D                    3678 	.db 0x0d
      004CA7 00                    3679 	.db 0x00
                                   3680 	.area CSEG    (CODE)
                                   3681 	.area CONST   (CODE)
      004CA8                       3682 ___str_7:
      004CA8 E2                    3683 	.db 0xe2
      004CA9 94                    3684 	.db 0x94
      004CAA 82                    3685 	.db 0x82
      004CAB 20 20 20 20 20 57 20  3686 	.ascii "     W      "
             20 20 20 20 20
      004CB7 E2                    3687 	.db 0xe2
      004CB8 94                    3688 	.db 0x94
      004CB9 82                    3689 	.db 0x82
      004CBA 20 57 72 69 74 65 20  3690 	.ascii " Write data to address                      "
             64 61 74 61 20 74 6F
             20 61 64 64 72 65 73
             73 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004CE6 E2                    3691 	.db 0xe2
      004CE7 94                    3692 	.db 0x94
      004CE8 82                    3693 	.db 0x82
      004CE9 0A                    3694 	.db 0x0a
      004CEA 0D                    3695 	.db 0x0d
      004CEB 00                    3696 	.db 0x00
                                   3697 	.area CSEG    (CODE)
                                   3698 	.area CONST   (CODE)
      004CEC                       3699 ___str_8:
      004CEC E2                    3700 	.db 0xe2
      004CED 94                    3701 	.db 0x94
      004CEE 82                    3702 	.db 0x82
      004CEF 20 20 20 20 20 48 20  3703 	.ascii "     H      "
             20 20 20 20 20
      004CFB E2                    3704 	.db 0xe2
      004CFC 94                    3705 	.db 0x94
      004CFD 82                    3706 	.db 0x82
      004CFE 20 44 69 73 70 6C 61  3707 	.ascii " Display hex dump                           "
             79 20 68 65 78 20 64
             75 6D 70 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004D2A E2                    3708 	.db 0xe2
      004D2B 94                    3709 	.db 0x94
      004D2C 82                    3710 	.db 0x82
      004D2D 0A                    3711 	.db 0x0a
      004D2E 0D                    3712 	.db 0x0d
      004D2F 00                    3713 	.db 0x00
                                   3714 	.area CSEG    (CODE)
                                   3715 	.area CONST   (CODE)
      004D30                       3716 ___str_9:
      004D30 E2                    3717 	.db 0xe2
      004D31 94                    3718 	.db 0x94
      004D32 82                    3719 	.db 0x82
      004D33 20 20 20 20 20 58 20  3720 	.ascii "     X      "
             20 20 20 20 20
      004D3F E2                    3721 	.db 0xe2
      004D40 94                    3722 	.db 0x94
      004D41 82                    3723 	.db 0x82
      004D42 20 52 65 73 65 74 20  3724 	.ascii " Reset memory system                        "
             6D 65 6D 6F 72 79 20
             73 79 73 74 65 6D 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004D6E E2                    3725 	.db 0xe2
      004D6F 94                    3726 	.db 0x94
      004D70 82                    3727 	.db 0x82
      004D71 0A                    3728 	.db 0x0a
      004D72 0D                    3729 	.db 0x0d
      004D73 00                    3730 	.db 0x00
                                   3731 	.area CSEG    (CODE)
                                   3732 	.area CONST   (CODE)
      004D74                       3733 ___str_10:
      004D74 E2                    3734 	.db 0xe2
      004D75 94                    3735 	.db 0x94
      004D76 82                    3736 	.db 0x82
      004D77 20 20 20 20 20 3F 20  3737 	.ascii "     ?      "
             20 20 20 20 20
      004D83 E2                    3738 	.db 0xe2
      004D84 94                    3739 	.db 0x94
      004D85 82                    3740 	.db 0x82
      004D86 20 44 69 73 70 6C 61  3741 	.ascii " Display this help menu                     "
             79 20 74 68 69 73 20
             68 65 6C 70 20 6D 65
             6E 75 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004DB2 E2                    3742 	.db 0xe2
      004DB3 94                    3743 	.db 0x94
      004DB4 82                    3744 	.db 0x82
      004DB5 0A                    3745 	.db 0x0a
      004DB6 0D                    3746 	.db 0x0d
      004DB7 00                    3747 	.db 0x00
                                   3748 	.area CSEG    (CODE)
                                   3749 	.area CONST   (CODE)
      004DB8                       3750 ___str_11:
      004DB8 E2                    3751 	.db 0xe2
      004DB9 94                    3752 	.db 0x94
      004DBA 82                    3753 	.db 0x82
      004DBB 20 20 20 20 20 51 20  3754 	.ascii "     Q      "
             20 20 20 20 20
      004DC7 E2                    3755 	.db 0xe2
      004DC8 94                    3756 	.db 0x94
      004DC9 82                    3757 	.db 0x82
      004DCA 20 51 75 69 74 20 70  3758 	.ascii " Quit program                               "
             72 6F 67 72 61 6D 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004DF6 E2                    3759 	.db 0xe2
      004DF7 94                    3760 	.db 0x94
      004DF8 82                    3761 	.db 0x82
      004DF9 0A                    3762 	.db 0x0a
      004DFA 0D                    3763 	.db 0x0d
      004DFB 00                    3764 	.db 0x00
                                   3765 	.area CSEG    (CODE)
                                   3766 	.area CONST   (CODE)
      004DFC                       3767 ___str_12:
      004DFC E2                    3768 	.db 0xe2
      004DFD 94                    3769 	.db 0x94
      004DFE 94                    3770 	.db 0x94
      004DFF E2                    3771 	.db 0xe2
      004E00 94                    3772 	.db 0x94
      004E01 80                    3773 	.db 0x80
      004E02 E2                    3774 	.db 0xe2
      004E03 94                    3775 	.db 0x94
      004E04 80                    3776 	.db 0x80
      004E05 E2                    3777 	.db 0xe2
      004E06 94                    3778 	.db 0x94
      004E07 80                    3779 	.db 0x80
      004E08 E2                    3780 	.db 0xe2
      004E09 94                    3781 	.db 0x94
      004E0A 80                    3782 	.db 0x80
      004E0B E2                    3783 	.db 0xe2
      004E0C 94                    3784 	.db 0x94
      004E0D 80                    3785 	.db 0x80
      004E0E E2                    3786 	.db 0xe2
      004E0F 94                    3787 	.db 0x94
      004E10 80                    3788 	.db 0x80
      004E11 E2                    3789 	.db 0xe2
      004E12 94                    3790 	.db 0x94
      004E13 80                    3791 	.db 0x80
      004E14 E2                    3792 	.db 0xe2
      004E15 94                    3793 	.db 0x94
      004E16 80                    3794 	.db 0x80
      004E17 E2                    3795 	.db 0xe2
      004E18 94                    3796 	.db 0x94
      004E19 80                    3797 	.db 0x80
      004E1A E2                    3798 	.db 0xe2
      004E1B 94                    3799 	.db 0x94
      004E1C 80                    3800 	.db 0x80
      004E1D E2                    3801 	.db 0xe2
      004E1E 94                    3802 	.db 0x94
      004E1F 80                    3803 	.db 0x80
      004E20 E2                    3804 	.db 0xe2
      004E21 94                    3805 	.db 0x94
      004E22 80                    3806 	.db 0x80
      004E23 E2                    3807 	.db 0xe2
      004E24 94                    3808 	.db 0x94
      004E25 B4                    3809 	.db 0xb4
      004E26 E2                    3810 	.db 0xe2
      004E27 94                    3811 	.db 0x94
      004E28 80                    3812 	.db 0x80
      004E29 E2                    3813 	.db 0xe2
      004E2A 94                    3814 	.db 0x94
      004E2B 80                    3815 	.db 0x80
      004E2C E2                    3816 	.db 0xe2
      004E2D 94                    3817 	.db 0x94
      004E2E 80                    3818 	.db 0x80
      004E2F E2                    3819 	.db 0xe2
      004E30 94                    3820 	.db 0x94
      004E31 80                    3821 	.db 0x80
      004E32 E2                    3822 	.db 0xe2
      004E33 94                    3823 	.db 0x94
      004E34 80                    3824 	.db 0x80
      004E35 E2                    3825 	.db 0xe2
      004E36 94                    3826 	.db 0x94
      004E37 80                    3827 	.db 0x80
      004E38 E2                    3828 	.db 0xe2
      004E39 94                    3829 	.db 0x94
      004E3A 80                    3830 	.db 0x80
      004E3B E2                    3831 	.db 0xe2
      004E3C 94                    3832 	.db 0x94
      004E3D 80                    3833 	.db 0x80
      004E3E E2                    3834 	.db 0xe2
      004E3F 94                    3835 	.db 0x94
      004E40 80                    3836 	.db 0x80
      004E41 E2                    3837 	.db 0xe2
      004E42 94                    3838 	.db 0x94
      004E43 80                    3839 	.db 0x80
      004E44 E2                    3840 	.db 0xe2
      004E45 94                    3841 	.db 0x94
      004E46 80                    3842 	.db 0x80
      004E47 E2                    3843 	.db 0xe2
      004E48 94                    3844 	.db 0x94
      004E49 80                    3845 	.db 0x80
      004E4A E2                    3846 	.db 0xe2
      004E4B 94                    3847 	.db 0x94
      004E4C 80                    3848 	.db 0x80
      004E4D E2                    3849 	.db 0xe2
      004E4E 94                    3850 	.db 0x94
      004E4F 80                    3851 	.db 0x80
      004E50 E2                    3852 	.db 0xe2
      004E51 94                    3853 	.db 0x94
      004E52 80                    3854 	.db 0x80
      004E53 E2                    3855 	.db 0xe2
      004E54 94                    3856 	.db 0x94
      004E55 80                    3857 	.db 0x80
      004E56 E2                    3858 	.db 0xe2
      004E57 94                    3859 	.db 0x94
      004E58 80                    3860 	.db 0x80
      004E59 E2                    3861 	.db 0xe2
      004E5A 94                    3862 	.db 0x94
      004E5B 80                    3863 	.db 0x80
      004E5C E2                    3864 	.db 0xe2
      004E5D 94                    3865 	.db 0x94
      004E5E 80                    3866 	.db 0x80
      004E5F E2                    3867 	.db 0xe2
      004E60 94                    3868 	.db 0x94
      004E61 80                    3869 	.db 0x80
      004E62 E2                    3870 	.db 0xe2
      004E63 94                    3871 	.db 0x94
      004E64 80                    3872 	.db 0x80
      004E65 E2                    3873 	.db 0xe2
      004E66 94                    3874 	.db 0x94
      004E67 80                    3875 	.db 0x80
      004E68 E2                    3876 	.db 0xe2
      004E69 94                    3877 	.db 0x94
      004E6A 80                    3878 	.db 0x80
      004E6B E2                    3879 	.db 0xe2
      004E6C 94                    3880 	.db 0x94
      004E6D 80                    3881 	.db 0x80
      004E6E E2                    3882 	.db 0xe2
      004E6F 94                    3883 	.db 0x94
      004E70 80                    3884 	.db 0x80
      004E71 E2                    3885 	.db 0xe2
      004E72 94                    3886 	.db 0x94
      004E73 80                    3887 	.db 0x80
      004E74 E2                    3888 	.db 0xe2
      004E75 94                    3889 	.db 0x94
      004E76 80                    3890 	.db 0x80
      004E77 E2                    3891 	.db 0xe2
      004E78 94                    3892 	.db 0x94
      004E79 80                    3893 	.db 0x80
      004E7A E2                    3894 	.db 0xe2
      004E7B 94                    3895 	.db 0x94
      004E7C 80                    3896 	.db 0x80
      004E7D E2                    3897 	.db 0xe2
      004E7E 94                    3898 	.db 0x94
      004E7F 80                    3899 	.db 0x80
      004E80 E2                    3900 	.db 0xe2
      004E81 94                    3901 	.db 0x94
      004E82 80                    3902 	.db 0x80
      004E83 E2                    3903 	.db 0xe2
      004E84 94                    3904 	.db 0x94
      004E85 80                    3905 	.db 0x80
      004E86 E2                    3906 	.db 0xe2
      004E87 94                    3907 	.db 0x94
      004E88 80                    3908 	.db 0x80
      004E89 E2                    3909 	.db 0xe2
      004E8A 94                    3910 	.db 0x94
      004E8B 80                    3911 	.db 0x80
      004E8C E2                    3912 	.db 0xe2
      004E8D 94                    3913 	.db 0x94
      004E8E 80                    3914 	.db 0x80
      004E8F E2                    3915 	.db 0xe2
      004E90 94                    3916 	.db 0x94
      004E91 80                    3917 	.db 0x80
      004E92 E2                    3918 	.db 0xe2
      004E93 94                    3919 	.db 0x94
      004E94 80                    3920 	.db 0x80
      004E95 E2                    3921 	.db 0xe2
      004E96 94                    3922 	.db 0x94
      004E97 80                    3923 	.db 0x80
      004E98 E2                    3924 	.db 0xe2
      004E99 94                    3925 	.db 0x94
      004E9A 80                    3926 	.db 0x80
      004E9B E2                    3927 	.db 0xe2
      004E9C 94                    3928 	.db 0x94
      004E9D 80                    3929 	.db 0x80
      004E9E E2                    3930 	.db 0xe2
      004E9F 94                    3931 	.db 0x94
      004EA0 80                    3932 	.db 0x80
      004EA1 E2                    3933 	.db 0xe2
      004EA2 94                    3934 	.db 0x94
      004EA3 80                    3935 	.db 0x80
      004EA4 E2                    3936 	.db 0xe2
      004EA5 94                    3937 	.db 0x94
      004EA6 80                    3938 	.db 0x80
      004EA7 E2                    3939 	.db 0xe2
      004EA8 94                    3940 	.db 0x94
      004EA9 80                    3941 	.db 0x80
      004EAA E2                    3942 	.db 0xe2
      004EAB 94                    3943 	.db 0x94
      004EAC 98                    3944 	.db 0x98
      004EAD 0A                    3945 	.db 0x0a
      004EAE 0D                    3946 	.db 0x0d
      004EAF 00                    3947 	.db 0x00
                                   3948 	.area CSEG    (CODE)
                                   3949 	.area CONST   (CODE)
      004EB0                       3950 ___str_13:
      004EB0 7C 20 24 20 25 63     3951 	.ascii "| $ %c"
      004EB6 0A                    3952 	.db 0x0a
      004EB7 0D                    3953 	.db 0x0d
      004EB8 00                    3954 	.db 0x00
                                   3955 	.area CSEG    (CODE)
                                   3956 	.area CONST   (CODE)
      004EB9                       3957 ___str_14:
      004EB9 0A                    3958 	.db 0x0a
      004EBA 0D                    3959 	.db 0x0d
      004EBB 00                    3960 	.db 0x00
                                   3961 	.area CSEG    (CODE)
                                   3962 	.area CONST   (CODE)
      004EBC                       3963 ___str_15:
      004EBC 0A                    3964 	.db 0x0a
      004EBD E2                    3965 	.db 0xe2
      004EBE 94                    3966 	.db 0x94
      004EBF 8C                    3967 	.db 0x8c
      004EC0 E2                    3968 	.db 0xe2
      004EC1 94                    3969 	.db 0x94
      004EC2 80                    3970 	.db 0x80
      004EC3 E2                    3971 	.db 0xe2
      004EC4 94                    3972 	.db 0x94
      004EC5 80                    3973 	.db 0x80
      004EC6 E2                    3974 	.db 0xe2
      004EC7 94                    3975 	.db 0x94
      004EC8 80                    3976 	.db 0x80
      004EC9 E2                    3977 	.db 0xe2
      004ECA 94                    3978 	.db 0x94
      004ECB 80                    3979 	.db 0x80
      004ECC E2                    3980 	.db 0xe2
      004ECD 94                    3981 	.db 0x94
      004ECE 80                    3982 	.db 0x80
      004ECF E2                    3983 	.db 0xe2
      004ED0 94                    3984 	.db 0x94
      004ED1 80                    3985 	.db 0x80
      004ED2 E2                    3986 	.db 0xe2
      004ED3 94                    3987 	.db 0x94
      004ED4 80                    3988 	.db 0x80
      004ED5 E2                    3989 	.db 0xe2
      004ED6 94                    3990 	.db 0x94
      004ED7 80                    3991 	.db 0x80
      004ED8 E2                    3992 	.db 0xe2
      004ED9 94                    3993 	.db 0x94
      004EDA 80                    3994 	.db 0x80
      004EDB E2                    3995 	.db 0xe2
      004EDC 94                    3996 	.db 0x94
      004EDD 80                    3997 	.db 0x80
      004EDE E2                    3998 	.db 0xe2
      004EDF 94                    3999 	.db 0x94
      004EE0 80                    4000 	.db 0x80
      004EE1 E2                    4001 	.db 0xe2
      004EE2 94                    4002 	.db 0x94
      004EE3 80                    4003 	.db 0x80
      004EE4 E2                    4004 	.db 0xe2
      004EE5 94                    4005 	.db 0x94
      004EE6 80                    4006 	.db 0x80
      004EE7 E2                    4007 	.db 0xe2
      004EE8 94                    4008 	.db 0x94
      004EE9 80                    4009 	.db 0x80
      004EEA E2                    4010 	.db 0xe2
      004EEB 94                    4011 	.db 0x94
      004EEC 80                    4012 	.db 0x80
      004EED 20 57 52 49 54 45 20  4013 	.ascii " WRITE OPERATION "
             4F 50 45 52 41 54 49
             4F 4E 20
      004EFE E2                    4014 	.db 0xe2
      004EFF 94                    4015 	.db 0x94
      004F00 80                    4016 	.db 0x80
      004F01 E2                    4017 	.db 0xe2
      004F02 94                    4018 	.db 0x94
      004F03 80                    4019 	.db 0x80
      004F04 E2                    4020 	.db 0xe2
      004F05 94                    4021 	.db 0x94
      004F06 80                    4022 	.db 0x80
      004F07 E2                    4023 	.db 0xe2
      004F08 94                    4024 	.db 0x94
      004F09 80                    4025 	.db 0x80
      004F0A E2                    4026 	.db 0xe2
      004F0B 94                    4027 	.db 0x94
      004F0C 80                    4028 	.db 0x80
      004F0D E2                    4029 	.db 0xe2
      004F0E 94                    4030 	.db 0x94
      004F0F 80                    4031 	.db 0x80
      004F10 E2                    4032 	.db 0xe2
      004F11 94                    4033 	.db 0x94
      004F12 80                    4034 	.db 0x80
      004F13 E2                    4035 	.db 0xe2
      004F14 94                    4036 	.db 0x94
      004F15 80                    4037 	.db 0x80
      004F16 E2                    4038 	.db 0xe2
      004F17 94                    4039 	.db 0x94
      004F18 80                    4040 	.db 0x80
      004F19 E2                    4041 	.db 0xe2
      004F1A 94                    4042 	.db 0x94
      004F1B 80                    4043 	.db 0x80
      004F1C E2                    4044 	.db 0xe2
      004F1D 94                    4045 	.db 0x94
      004F1E 80                    4046 	.db 0x80
      004F1F E2                    4047 	.db 0xe2
      004F20 94                    4048 	.db 0x94
      004F21 80                    4049 	.db 0x80
      004F22 E2                    4050 	.db 0xe2
      004F23 94                    4051 	.db 0x94
      004F24 80                    4052 	.db 0x80
      004F25 E2                    4053 	.db 0xe2
      004F26 94                    4054 	.db 0x94
      004F27 80                    4055 	.db 0x80
      004F28 E2                    4056 	.db 0xe2
      004F29 94                    4057 	.db 0x94
      004F2A 90                    4058 	.db 0x90
      004F2B 0A                    4059 	.db 0x0a
      004F2C 0D                    4060 	.db 0x0d
      004F2D 00                    4061 	.db 0x00
                                   4062 	.area CSEG    (CODE)
                                   4063 	.area CONST   (CODE)
      004F2E                       4064 ___str_16:
      004F2E 0A                    4065 	.db 0x0a
      004F2F E2                    4066 	.db 0xe2
      004F30 94                    4067 	.db 0x94
      004F31 8C                    4068 	.db 0x8c
      004F32 E2                    4069 	.db 0xe2
      004F33 94                    4070 	.db 0x94
      004F34 80                    4071 	.db 0x80
      004F35 E2                    4072 	.db 0xe2
      004F36 94                    4073 	.db 0x94
      004F37 80                    4074 	.db 0x80
      004F38 E2                    4075 	.db 0xe2
      004F39 94                    4076 	.db 0x94
      004F3A 80                    4077 	.db 0x80
      004F3B E2                    4078 	.db 0xe2
      004F3C 94                    4079 	.db 0x94
      004F3D 80                    4080 	.db 0x80
      004F3E E2                    4081 	.db 0xe2
      004F3F 94                    4082 	.db 0x94
      004F40 80                    4083 	.db 0x80
      004F41 E2                    4084 	.db 0xe2
      004F42 94                    4085 	.db 0x94
      004F43 80                    4086 	.db 0x80
      004F44 E2                    4087 	.db 0xe2
      004F45 94                    4088 	.db 0x94
      004F46 80                    4089 	.db 0x80
      004F47 E2                    4090 	.db 0xe2
      004F48 94                    4091 	.db 0x94
      004F49 80                    4092 	.db 0x80
      004F4A E2                    4093 	.db 0xe2
      004F4B 94                    4094 	.db 0x94
      004F4C 80                    4095 	.db 0x80
      004F4D E2                    4096 	.db 0xe2
      004F4E 94                    4097 	.db 0x94
      004F4F 80                    4098 	.db 0x80
      004F50 E2                    4099 	.db 0xe2
      004F51 94                    4100 	.db 0x94
      004F52 80                    4101 	.db 0x80
      004F53 E2                    4102 	.db 0xe2
      004F54 94                    4103 	.db 0x94
      004F55 80                    4104 	.db 0x80
      004F56 E2                    4105 	.db 0xe2
      004F57 94                    4106 	.db 0x94
      004F58 80                    4107 	.db 0x80
      004F59 E2                    4108 	.db 0xe2
      004F5A 94                    4109 	.db 0x94
      004F5B 80                    4110 	.db 0x80
      004F5C E2                    4111 	.db 0xe2
      004F5D 94                    4112 	.db 0x94
      004F5E 80                    4113 	.db 0x80
      004F5F 20 52 45 41 44 20 4F  4114 	.ascii " READ OPERATION "
             50 45 52 41 54 49 4F
             4E 20
      004F6F E2                    4115 	.db 0xe2
      004F70 94                    4116 	.db 0x94
      004F71 80                    4117 	.db 0x80
      004F72 E2                    4118 	.db 0xe2
      004F73 94                    4119 	.db 0x94
      004F74 80                    4120 	.db 0x80
      004F75 E2                    4121 	.db 0xe2
      004F76 94                    4122 	.db 0x94
      004F77 80                    4123 	.db 0x80
      004F78 E2                    4124 	.db 0xe2
      004F79 94                    4125 	.db 0x94
      004F7A 80                    4126 	.db 0x80
      004F7B E2                    4127 	.db 0xe2
      004F7C 94                    4128 	.db 0x94
      004F7D 80                    4129 	.db 0x80
      004F7E E2                    4130 	.db 0xe2
      004F7F 94                    4131 	.db 0x94
      004F80 80                    4132 	.db 0x80
      004F81 E2                    4133 	.db 0xe2
      004F82 94                    4134 	.db 0x94
      004F83 80                    4135 	.db 0x80
      004F84 E2                    4136 	.db 0xe2
      004F85 94                    4137 	.db 0x94
      004F86 80                    4138 	.db 0x80
      004F87 E2                    4139 	.db 0xe2
      004F88 94                    4140 	.db 0x94
      004F89 80                    4141 	.db 0x80
      004F8A E2                    4142 	.db 0xe2
      004F8B 94                    4143 	.db 0x94
      004F8C 80                    4144 	.db 0x80
      004F8D E2                    4145 	.db 0xe2
      004F8E 94                    4146 	.db 0x94
      004F8F 80                    4147 	.db 0x80
      004F90 E2                    4148 	.db 0xe2
      004F91 94                    4149 	.db 0x94
      004F92 80                    4150 	.db 0x80
      004F93 E2                    4151 	.db 0xe2
      004F94 94                    4152 	.db 0x94
      004F95 80                    4153 	.db 0x80
      004F96 E2                    4154 	.db 0xe2
      004F97 94                    4155 	.db 0x94
      004F98 80                    4156 	.db 0x80
      004F99 E2                    4157 	.db 0xe2
      004F9A 94                    4158 	.db 0x94
      004F9B 80                    4159 	.db 0x80
      004F9C E2                    4160 	.db 0xe2
      004F9D 94                    4161 	.db 0x94
      004F9E 90                    4162 	.db 0x90
      004F9F 0A                    4163 	.db 0x0a
      004FA0 0D                    4164 	.db 0x0d
      004FA1 00                    4165 	.db 0x00
                                   4166 	.area CSEG    (CODE)
                                   4167 	.area CONST   (CODE)
      004FA2                       4168 ___str_17:
      004FA2 7C 20 52 65 61 64 69  4169 	.ascii "| Reading from Address 0x%03X           |"
             6E 67 20 66 72 6F 6D
             20 41 64 64 72 65 73
             73 20 30 78 25 30 33
             58 20 20 20 20 20 20
             20 20 20 20 20 7C
      004FCB 0A                    4170 	.db 0x0a
      004FCC 0D                    4171 	.db 0x0d
      004FCD 00                    4172 	.db 0x00
                                   4173 	.area CSEG    (CODE)
                                   4174 	.area CONST   (CODE)
      004FCE                       4175 ___str_18:
      004FCE 0A                    4176 	.db 0x0a
      004FCF E2                    4177 	.db 0xe2
      004FD0 94                    4178 	.db 0x94
      004FD1 8C                    4179 	.db 0x8c
      004FD2 E2                    4180 	.db 0xe2
      004FD3 94                    4181 	.db 0x94
      004FD4 80                    4182 	.db 0x80
      004FD5 E2                    4183 	.db 0xe2
      004FD6 94                    4184 	.db 0x94
      004FD7 80                    4185 	.db 0x80
      004FD8 E2                    4186 	.db 0xe2
      004FD9 94                    4187 	.db 0x94
      004FDA 80                    4188 	.db 0x80
      004FDB E2                    4189 	.db 0xe2
      004FDC 94                    4190 	.db 0x94
      004FDD 80                    4191 	.db 0x80
      004FDE E2                    4192 	.db 0xe2
      004FDF 94                    4193 	.db 0x94
      004FE0 80                    4194 	.db 0x80
      004FE1 E2                    4195 	.db 0xe2
      004FE2 94                    4196 	.db 0x94
      004FE3 80                    4197 	.db 0x80
      004FE4 E2                    4198 	.db 0xe2
      004FE5 94                    4199 	.db 0x94
      004FE6 80                    4200 	.db 0x80
      004FE7 E2                    4201 	.db 0xe2
      004FE8 94                    4202 	.db 0x94
      004FE9 80                    4203 	.db 0x80
      004FEA E2                    4204 	.db 0xe2
      004FEB 94                    4205 	.db 0x94
      004FEC 80                    4206 	.db 0x80
      004FED E2                    4207 	.db 0xe2
      004FEE 94                    4208 	.db 0x94
      004FEF 80                    4209 	.db 0x80
      004FF0 E2                    4210 	.db 0xe2
      004FF1 94                    4211 	.db 0x94
      004FF2 80                    4212 	.db 0x80
      004FF3 E2                    4213 	.db 0xe2
      004FF4 94                    4214 	.db 0x94
      004FF5 80                    4215 	.db 0x80
      004FF6 E2                    4216 	.db 0xe2
      004FF7 94                    4217 	.db 0x94
      004FF8 80                    4218 	.db 0x80
      004FF9 E2                    4219 	.db 0xe2
      004FFA 94                    4220 	.db 0x94
      004FFB 80                    4221 	.db 0x80
      004FFC E2                    4222 	.db 0xe2
      004FFD 94                    4223 	.db 0x94
      004FFE 80                    4224 	.db 0x80
      004FFF 20 52 45 53 45 54 20  4225 	.ascii " RESET OPERATION "
             4F 50 45 52 41 54 49
             4F 4E 20
      005010 E2                    4226 	.db 0xe2
      005011 94                    4227 	.db 0x94
      005012 80                    4228 	.db 0x80
      005013 E2                    4229 	.db 0xe2
      005014 94                    4230 	.db 0x94
      005015 80                    4231 	.db 0x80
      005016 E2                    4232 	.db 0xe2
      005017 94                    4233 	.db 0x94
      005018 80                    4234 	.db 0x80
      005019 E2                    4235 	.db 0xe2
      00501A 94                    4236 	.db 0x94
      00501B 80                    4237 	.db 0x80
      00501C E2                    4238 	.db 0xe2
      00501D 94                    4239 	.db 0x94
      00501E 80                    4240 	.db 0x80
      00501F E2                    4241 	.db 0xe2
      005020 94                    4242 	.db 0x94
      005021 80                    4243 	.db 0x80
      005022 E2                    4244 	.db 0xe2
      005023 94                    4245 	.db 0x94
      005024 80                    4246 	.db 0x80
      005025 E2                    4247 	.db 0xe2
      005026 94                    4248 	.db 0x94
      005027 80                    4249 	.db 0x80
      005028 E2                    4250 	.db 0xe2
      005029 94                    4251 	.db 0x94
      00502A 80                    4252 	.db 0x80
      00502B E2                    4253 	.db 0xe2
      00502C 94                    4254 	.db 0x94
      00502D 80                    4255 	.db 0x80
      00502E E2                    4256 	.db 0xe2
      00502F 94                    4257 	.db 0x94
      005030 80                    4258 	.db 0x80
      005031 E2                    4259 	.db 0xe2
      005032 94                    4260 	.db 0x94
      005033 90                    4261 	.db 0x90
      005034 0A                    4262 	.db 0x0a
      005035 0D                    4263 	.db 0x0d
      005036 00                    4264 	.db 0x00
                                   4265 	.area CSEG    (CODE)
                                   4266 	.area CONST   (CODE)
      005037                       4267 ___str_19:
      005037 0A                    4268 	.db 0x0a
      005038 E2                    4269 	.db 0xe2
      005039 94                    4270 	.db 0x94
      00503A 8C                    4271 	.db 0x8c
      00503B E2                    4272 	.db 0xe2
      00503C 94                    4273 	.db 0x94
      00503D 80                    4274 	.db 0x80
      00503E E2                    4275 	.db 0xe2
      00503F 94                    4276 	.db 0x94
      005040 80                    4277 	.db 0x80
      005041 E2                    4278 	.db 0xe2
      005042 94                    4279 	.db 0x94
      005043 80                    4280 	.db 0x80
      005044 E2                    4281 	.db 0xe2
      005045 94                    4282 	.db 0x94
      005046 80                    4283 	.db 0x80
      005047 E2                    4284 	.db 0xe2
      005048 94                    4285 	.db 0x94
      005049 80                    4286 	.db 0x80
      00504A E2                    4287 	.db 0xe2
      00504B 94                    4288 	.db 0x94
      00504C 80                    4289 	.db 0x80
      00504D E2                    4290 	.db 0xe2
      00504E 94                    4291 	.db 0x94
      00504F 80                    4292 	.db 0x80
      005050 E2                    4293 	.db 0xe2
      005051 94                    4294 	.db 0x94
      005052 80                    4295 	.db 0x80
      005053 E2                    4296 	.db 0xe2
      005054 94                    4297 	.db 0x94
      005055 80                    4298 	.db 0x80
      005056 E2                    4299 	.db 0xe2
      005057 94                    4300 	.db 0x94
      005058 80                    4301 	.db 0x80
      005059 E2                    4302 	.db 0xe2
      00505A 94                    4303 	.db 0x94
      00505B 80                    4304 	.db 0x80
      00505C E2                    4305 	.db 0xe2
      00505D 94                    4306 	.db 0x94
      00505E 80                    4307 	.db 0x80
      00505F E2                    4308 	.db 0xe2
      005060 94                    4309 	.db 0x94
      005061 80                    4310 	.db 0x80
      005062 20 48 45 58 20 44 55  4311 	.ascii " HEX DUMP OPERATION "
             4D 50 20 4F 50 45 52
             41 54 49 4F 4E 20
      005076 E2                    4312 	.db 0xe2
      005077 94                    4313 	.db 0x94
      005078 80                    4314 	.db 0x80
      005079 E2                    4315 	.db 0xe2
      00507A 94                    4316 	.db 0x94
      00507B 80                    4317 	.db 0x80
      00507C E2                    4318 	.db 0xe2
      00507D 94                    4319 	.db 0x94
      00507E 80                    4320 	.db 0x80
      00507F E2                    4321 	.db 0xe2
      005080 94                    4322 	.db 0x94
      005081 80                    4323 	.db 0x80
      005082 E2                    4324 	.db 0xe2
      005083 94                    4325 	.db 0x94
      005084 80                    4326 	.db 0x80
      005085 E2                    4327 	.db 0xe2
      005086 94                    4328 	.db 0x94
      005087 80                    4329 	.db 0x80
      005088 E2                    4330 	.db 0xe2
      005089 94                    4331 	.db 0x94
      00508A 80                    4332 	.db 0x80
      00508B E2                    4333 	.db 0xe2
      00508C 94                    4334 	.db 0x94
      00508D 80                    4335 	.db 0x80
      00508E E2                    4336 	.db 0xe2
      00508F 94                    4337 	.db 0x94
      005090 80                    4338 	.db 0x80
      005091 E2                    4339 	.db 0xe2
      005092 94                    4340 	.db 0x94
      005093 80                    4341 	.db 0x80
      005094 E2                    4342 	.db 0xe2
      005095 94                    4343 	.db 0x94
      005096 80                    4344 	.db 0x80
      005097 E2                    4345 	.db 0xe2
      005098 94                    4346 	.db 0x94
      005099 80                    4347 	.db 0x80
      00509A E2                    4348 	.db 0xe2
      00509B 94                    4349 	.db 0x94
      00509C 80                    4350 	.db 0x80
      00509D E2                    4351 	.db 0xe2
      00509E 94                    4352 	.db 0x94
      00509F 80                    4353 	.db 0x80
      0050A0 E2                    4354 	.db 0xe2
      0050A1 94                    4355 	.db 0x94
      0050A2 80                    4356 	.db 0x80
      0050A3 E2                    4357 	.db 0xe2
      0050A4 94                    4358 	.db 0x94
      0050A5 90                    4359 	.db 0x90
      0050A6 0A                    4360 	.db 0x0a
      0050A7 0D                    4361 	.db 0x0d
      0050A8 00                    4362 	.db 0x00
                                   4363 	.area CSEG    (CODE)
                                   4364 	.area CONST   (CODE)
      0050A9                       4365 ___str_20:
      0050A9 49 4E 56 41 4C 49 44  4366 	.ascii "INVALID INPUT"
             20 49 4E 50 55 54
      0050B6 0A                    4367 	.db 0x0a
      0050B7 0D                    4368 	.db 0x0d
      0050B8 00                    4369 	.db 0x00
                                   4370 	.area CSEG    (CODE)
                                   4371 	.area CONST   (CODE)
      0050B9                       4372 ___str_21:
      0050B9 E2                    4373 	.db 0xe2
      0050BA 94                    4374 	.db 0x94
      0050BB 82                    4375 	.db 0x82
      0050BC 20 45 6E 74 65 72 20  4376 	.ascii " Enter address (hex, up to 3 characters): "
             61 64 64 72 65 73 73
             20 28 68 65 78 2C 20
             75 70 20 74 6F 20 33
             20 63 68 61 72 61 63
             74 65 72 73 29 3A 20
      0050E6 0A                    4377 	.db 0x0a
      0050E7 0D                    4378 	.db 0x0d
      0050E8 7C                    4379 	.ascii "|"
      0050E9 00                    4380 	.db 0x00
                                   4381 	.area CSEG    (CODE)
                                   4382 	.area CONST   (CODE)
      0050EA                       4383 ___str_22:
      0050EA 7C 20 24 20           4384 	.ascii "| $ "
      0050EE 00                    4385 	.db 0x00
                                   4386 	.area CSEG    (CODE)
                                   4387 	.area CONST   (CODE)
      0050EF                       4388 ___str_23:
      0050EF 0A                    4389 	.db 0x0a
      0050F0 0D                    4390 	.db 0x0d
      0050F1 E2                    4391 	.db 0xe2
      0050F2 94                    4392 	.db 0x94
      0050F3 82                    4393 	.db 0x82
      0050F4 20 45 6E 74 65 72 65  4394 	.ascii " Entered address: 0x%03X"
             64 20 61 64 64 72 65
             73 73 3A 20 30 78 25
             30 33 58
      00510C 0A                    4395 	.db 0x0a
      00510D 0D                    4396 	.db 0x0d
      00510E 00                    4397 	.db 0x00
                                   4398 	.area CSEG    (CODE)
                                   4399 	.area CONST   (CODE)
      00510F                       4400 ___str_24:
      00510F E2                    4401 	.db 0xe2
      005110 95                    4402 	.db 0x95
      005111 94                    4403 	.db 0x94
      005112 E2                    4404 	.db 0xe2
      005113 95                    4405 	.db 0x95
      005114 90                    4406 	.db 0x90
      005115 E2                    4407 	.db 0xe2
      005116 95                    4408 	.db 0x95
      005117 90                    4409 	.db 0x90
      005118 E2                    4410 	.db 0xe2
      005119 95                    4411 	.db 0x95
      00511A 90                    4412 	.db 0x90
      00511B E2                    4413 	.db 0xe2
      00511C 95                    4414 	.db 0x95
      00511D 90                    4415 	.db 0x90
      00511E E2                    4416 	.db 0xe2
      00511F 95                    4417 	.db 0x95
      005120 90                    4418 	.db 0x90
      005121 E2                    4419 	.db 0xe2
      005122 95                    4420 	.db 0x95
      005123 90                    4421 	.db 0x90
      005124 E2                    4422 	.db 0xe2
      005125 95                    4423 	.db 0x95
      005126 90                    4424 	.db 0x90
      005127 E2                    4425 	.db 0xe2
      005128 95                    4426 	.db 0x95
      005129 90                    4427 	.db 0x90
      00512A E2                    4428 	.db 0xe2
      00512B 95                    4429 	.db 0x95
      00512C 90                    4430 	.db 0x90
      00512D E2                    4431 	.db 0xe2
      00512E 95                    4432 	.db 0x95
      00512F 90                    4433 	.db 0x90
      005130 E2                    4434 	.db 0xe2
      005131 95                    4435 	.db 0x95
      005132 90                    4436 	.db 0x90
      005133 E2                    4437 	.db 0xe2
      005134 95                    4438 	.db 0x95
      005135 90                    4439 	.db 0x90
      005136 E2                    4440 	.db 0xe2
      005137 95                    4441 	.db 0x95
      005138 90                    4442 	.db 0x90
      005139 E2                    4443 	.db 0xe2
      00513A 95                    4444 	.db 0x95
      00513B 90                    4445 	.db 0x90
      00513C E2                    4446 	.db 0xe2
      00513D 95                    4447 	.db 0x95
      00513E 90                    4448 	.db 0x90
      00513F E2                    4449 	.db 0xe2
      005140 95                    4450 	.db 0x95
      005141 90                    4451 	.db 0x90
      005142 E2                    4452 	.db 0xe2
      005143 95                    4453 	.db 0x95
      005144 90                    4454 	.db 0x90
      005145 E2                    4455 	.db 0xe2
      005146 95                    4456 	.db 0x95
      005147 90                    4457 	.db 0x90
      005148 E2                    4458 	.db 0xe2
      005149 95                    4459 	.db 0x95
      00514A 90                    4460 	.db 0x90
      00514B E2                    4461 	.db 0xe2
      00514C 95                    4462 	.db 0x95
      00514D 90                    4463 	.db 0x90
      00514E E2                    4464 	.db 0xe2
      00514F 95                    4465 	.db 0x95
      005150 90                    4466 	.db 0x90
      005151 E2                    4467 	.db 0xe2
      005152 95                    4468 	.db 0x95
      005153 90                    4469 	.db 0x90
      005154 E2                    4470 	.db 0xe2
      005155 95                    4471 	.db 0x95
      005156 90                    4472 	.db 0x90
      005157 E2                    4473 	.db 0xe2
      005158 95                    4474 	.db 0x95
      005159 90                    4475 	.db 0x90
      00515A E2                    4476 	.db 0xe2
      00515B 95                    4477 	.db 0x95
      00515C 90                    4478 	.db 0x90
      00515D E2                    4479 	.db 0xe2
      00515E 95                    4480 	.db 0x95
      00515F 90                    4481 	.db 0x90
      005160 E2                    4482 	.db 0xe2
      005161 95                    4483 	.db 0x95
      005162 90                    4484 	.db 0x90
      005163 E2                    4485 	.db 0xe2
      005164 95                    4486 	.db 0x95
      005165 90                    4487 	.db 0x90
      005166 E2                    4488 	.db 0xe2
      005167 95                    4489 	.db 0x95
      005168 90                    4490 	.db 0x90
      005169 E2                    4491 	.db 0xe2
      00516A 95                    4492 	.db 0x95
      00516B 90                    4493 	.db 0x90
      00516C E2                    4494 	.db 0xe2
      00516D 95                    4495 	.db 0x95
      00516E 90                    4496 	.db 0x90
      00516F E2                    4497 	.db 0xe2
      005170 95                    4498 	.db 0x95
      005171 90                    4499 	.db 0x90
      005172 E2                    4500 	.db 0xe2
      005173 95                    4501 	.db 0x95
      005174 90                    4502 	.db 0x90
      005175 E2                    4503 	.db 0xe2
      005176 95                    4504 	.db 0x95
      005177 90                    4505 	.db 0x90
      005178 E2                    4506 	.db 0xe2
      005179 95                    4507 	.db 0x95
      00517A 90                    4508 	.db 0x90
      00517B E2                    4509 	.db 0xe2
      00517C 95                    4510 	.db 0x95
      00517D 90                    4511 	.db 0x90
      00517E E2                    4512 	.db 0xe2
      00517F 95                    4513 	.db 0x95
      005180 90                    4514 	.db 0x90
      005181 E2                    4515 	.db 0xe2
      005182 95                    4516 	.db 0x95
      005183 90                    4517 	.db 0x90
      005184 E2                    4518 	.db 0xe2
      005185 95                    4519 	.db 0x95
      005186 90                    4520 	.db 0x90
      005187 E2                    4521 	.db 0xe2
      005188 95                    4522 	.db 0x95
      005189 90                    4523 	.db 0x90
      00518A E2                    4524 	.db 0xe2
      00518B 95                    4525 	.db 0x95
      00518C 90                    4526 	.db 0x90
      00518D E2                    4527 	.db 0xe2
      00518E 95                    4528 	.db 0x95
      00518F 90                    4529 	.db 0x90
      005190 E2                    4530 	.db 0xe2
      005191 95                    4531 	.db 0x95
      005192 97                    4532 	.db 0x97
      005193 0A                    4533 	.db 0x0a
      005194 0D                    4534 	.db 0x0d
      005195 00                    4535 	.db 0x00
                                   4536 	.area CSEG    (CODE)
                                   4537 	.area CONST   (CODE)
      005196                       4538 ___str_25:
      005196 E2                    4539 	.db 0xe2
      005197 95                    4540 	.db 0x95
      005198 91                    4541 	.db 0x91
      005199 20 20 20 20 20 20 20  4542 	.ascii "       ! ADDRESS OUT OF RANGE !         "
             21 20 41 44 44 52 45
             53 53 20 4F 55 54 20
             4F 46 20 52 41 4E 47
             45 20 21 20 20 20 20
             20 20 20 20 20
      0051C1 E2                    4543 	.db 0xe2
      0051C2 95                    4544 	.db 0x95
      0051C3 91                    4545 	.db 0x91
      0051C4 0A                    4546 	.db 0x0a
      0051C5 0D                    4547 	.db 0x0d
      0051C6 00                    4548 	.db 0x00
                                   4549 	.area CSEG    (CODE)
                                   4550 	.area CONST   (CODE)
      0051C7                       4551 ___str_26:
      0051C7 E2                    4552 	.db 0xe2
      0051C8 95                    4553 	.db 0x95
      0051C9 91                    4554 	.db 0x91
      0051CA 20 20 20 20 20 50 6C  4555 	.ascii "     Please Enter Valid Address         "
             65 61 73 65 20 45 6E
             74 65 72 20 56 61 6C
             69 64 20 41 64 64 72
             65 73 73 20 20 20 20
             20 20 20 20 20
      0051F2 E2                    4556 	.db 0xe2
      0051F3 95                    4557 	.db 0x95
      0051F4 91                    4558 	.db 0x91
      0051F5 0A                    4559 	.db 0x0a
      0051F6 0D                    4560 	.db 0x0d
      0051F7 00                    4561 	.db 0x00
                                   4562 	.area CSEG    (CODE)
                                   4563 	.area CONST   (CODE)
      0051F8                       4564 ___str_27:
      0051F8 E2                    4565 	.db 0xe2
      0051F9 95                    4566 	.db 0x95
      0051FA 9A                    4567 	.db 0x9a
      0051FB E2                    4568 	.db 0xe2
      0051FC 95                    4569 	.db 0x95
      0051FD 90                    4570 	.db 0x90
      0051FE E2                    4571 	.db 0xe2
      0051FF 95                    4572 	.db 0x95
      005200 90                    4573 	.db 0x90
      005201 E2                    4574 	.db 0xe2
      005202 95                    4575 	.db 0x95
      005203 90                    4576 	.db 0x90
      005204 E2                    4577 	.db 0xe2
      005205 95                    4578 	.db 0x95
      005206 90                    4579 	.db 0x90
      005207 E2                    4580 	.db 0xe2
      005208 95                    4581 	.db 0x95
      005209 90                    4582 	.db 0x90
      00520A E2                    4583 	.db 0xe2
      00520B 95                    4584 	.db 0x95
      00520C 90                    4585 	.db 0x90
      00520D E2                    4586 	.db 0xe2
      00520E 95                    4587 	.db 0x95
      00520F 90                    4588 	.db 0x90
      005210 E2                    4589 	.db 0xe2
      005211 95                    4590 	.db 0x95
      005212 90                    4591 	.db 0x90
      005213 E2                    4592 	.db 0xe2
      005214 95                    4593 	.db 0x95
      005215 90                    4594 	.db 0x90
      005216 E2                    4595 	.db 0xe2
      005217 95                    4596 	.db 0x95
      005218 90                    4597 	.db 0x90
      005219 E2                    4598 	.db 0xe2
      00521A 95                    4599 	.db 0x95
      00521B 90                    4600 	.db 0x90
      00521C E2                    4601 	.db 0xe2
      00521D 95                    4602 	.db 0x95
      00521E 90                    4603 	.db 0x90
      00521F E2                    4604 	.db 0xe2
      005220 95                    4605 	.db 0x95
      005221 90                    4606 	.db 0x90
      005222 E2                    4607 	.db 0xe2
      005223 95                    4608 	.db 0x95
      005224 90                    4609 	.db 0x90
      005225 E2                    4610 	.db 0xe2
      005226 95                    4611 	.db 0x95
      005227 90                    4612 	.db 0x90
      005228 E2                    4613 	.db 0xe2
      005229 95                    4614 	.db 0x95
      00522A 90                    4615 	.db 0x90
      00522B E2                    4616 	.db 0xe2
      00522C 95                    4617 	.db 0x95
      00522D 90                    4618 	.db 0x90
      00522E E2                    4619 	.db 0xe2
      00522F 95                    4620 	.db 0x95
      005230 90                    4621 	.db 0x90
      005231 E2                    4622 	.db 0xe2
      005232 95                    4623 	.db 0x95
      005233 90                    4624 	.db 0x90
      005234 E2                    4625 	.db 0xe2
      005235 95                    4626 	.db 0x95
      005236 90                    4627 	.db 0x90
      005237 E2                    4628 	.db 0xe2
      005238 95                    4629 	.db 0x95
      005239 90                    4630 	.db 0x90
      00523A E2                    4631 	.db 0xe2
      00523B 95                    4632 	.db 0x95
      00523C 90                    4633 	.db 0x90
      00523D E2                    4634 	.db 0xe2
      00523E 95                    4635 	.db 0x95
      00523F 90                    4636 	.db 0x90
      005240 E2                    4637 	.db 0xe2
      005241 95                    4638 	.db 0x95
      005242 90                    4639 	.db 0x90
      005243 E2                    4640 	.db 0xe2
      005244 95                    4641 	.db 0x95
      005245 90                    4642 	.db 0x90
      005246 E2                    4643 	.db 0xe2
      005247 95                    4644 	.db 0x95
      005248 90                    4645 	.db 0x90
      005249 E2                    4646 	.db 0xe2
      00524A 95                    4647 	.db 0x95
      00524B 90                    4648 	.db 0x90
      00524C E2                    4649 	.db 0xe2
      00524D 95                    4650 	.db 0x95
      00524E 90                    4651 	.db 0x90
      00524F E2                    4652 	.db 0xe2
      005250 95                    4653 	.db 0x95
      005251 90                    4654 	.db 0x90
      005252 E2                    4655 	.db 0xe2
      005253 95                    4656 	.db 0x95
      005254 90                    4657 	.db 0x90
      005255 E2                    4658 	.db 0xe2
      005256 95                    4659 	.db 0x95
      005257 90                    4660 	.db 0x90
      005258 E2                    4661 	.db 0xe2
      005259 95                    4662 	.db 0x95
      00525A 90                    4663 	.db 0x90
      00525B E2                    4664 	.db 0xe2
      00525C 95                    4665 	.db 0x95
      00525D 90                    4666 	.db 0x90
      00525E E2                    4667 	.db 0xe2
      00525F 95                    4668 	.db 0x95
      005260 90                    4669 	.db 0x90
      005261 E2                    4670 	.db 0xe2
      005262 95                    4671 	.db 0x95
      005263 90                    4672 	.db 0x90
      005264 E2                    4673 	.db 0xe2
      005265 95                    4674 	.db 0x95
      005266 90                    4675 	.db 0x90
      005267 E2                    4676 	.db 0xe2
      005268 95                    4677 	.db 0x95
      005269 90                    4678 	.db 0x90
      00526A E2                    4679 	.db 0xe2
      00526B 95                    4680 	.db 0x95
      00526C 90                    4681 	.db 0x90
      00526D E2                    4682 	.db 0xe2
      00526E 95                    4683 	.db 0x95
      00526F 90                    4684 	.db 0x90
      005270 E2                    4685 	.db 0xe2
      005271 95                    4686 	.db 0x95
      005272 90                    4687 	.db 0x90
      005273 E2                    4688 	.db 0xe2
      005274 95                    4689 	.db 0x95
      005275 90                    4690 	.db 0x90
      005276 E2                    4691 	.db 0xe2
      005277 95                    4692 	.db 0x95
      005278 90                    4693 	.db 0x90
      005279 E2                    4694 	.db 0xe2
      00527A 95                    4695 	.db 0x95
      00527B 9D                    4696 	.db 0x9d
      00527C 0A                    4697 	.db 0x0a
      00527D 0D                    4698 	.db 0x0d
      00527E 00                    4699 	.db 0x00
                                   4700 	.area CSEG    (CODE)
                                   4701 	.area CONST   (CODE)
      00527F                       4702 ___str_28:
      00527F E2                    4703 	.db 0xe2
      005280 94                    4704 	.db 0x94
      005281 82                    4705 	.db 0x82
      005282 20 45 6E 74 65 72 20  4706 	.ascii " Enter data (hex, up to 2 characters): "
             64 61 74 61 20 28 68
             65 78 2C 20 75 70 20
             74 6F 20 32 20 63 68
             61 72 61 63 74 65 72
             73 29 3A 20
      0052A9 0A                    4707 	.db 0x0a
      0052AA 0D                    4708 	.db 0x0d
      0052AB 7C                    4709 	.ascii "|"
      0052AC 00                    4710 	.db 0x00
                                   4711 	.area CSEG    (CODE)
                                   4712 	.area CONST   (CODE)
      0052AD                       4713 ___str_29:
      0052AD 24 20                 4714 	.ascii "$ "
      0052AF 00                    4715 	.db 0x00
                                   4716 	.area CSEG    (CODE)
                                   4717 	.area CONST   (CODE)
      0052B0                       4718 ___str_30:
      0052B0 0A                    4719 	.db 0x0a
      0052B1 0D                    4720 	.db 0x0d
      0052B2 E2                    4721 	.db 0xe2
      0052B3 94                    4722 	.db 0x94
      0052B4 82                    4723 	.db 0x82
      0052B5 20 45 6E 74 65 72 65  4724 	.ascii " Entered data: 0x%02X"
             64 20 64 61 74 61 3A
             20 30 78 25 30 32 58
      0052CA 0A                    4725 	.db 0x0a
      0052CB 0D                    4726 	.db 0x0d
      0052CC 00                    4727 	.db 0x00
                                   4728 	.area CSEG    (CODE)
                                   4729 	.area CONST   (CODE)
      0052CD                       4730 ___str_31:
      0052CD 44 61 74 61 20 6F 75  4731 	.ascii "Data out of Range"
             74 20 6F 66 20 52 61
             6E 67 65
      0052DE 0A                    4732 	.db 0x0a
      0052DF 0D                    4733 	.db 0x0d
      0052E0 00                    4734 	.db 0x00
                                   4735 	.area CSEG    (CODE)
                                   4736 	.area CONST   (CODE)
      0052E1                       4737 ___str_32:
      0052E1 45 72 72 6F 72 3A 20  4738 	.ascii "Error: No ACK for device address (write)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 29
      005309 0A                    4739 	.db 0x0a
      00530A 0D                    4740 	.db 0x0d
      00530B 00                    4741 	.db 0x00
                                   4742 	.area CSEG    (CODE)
                                   4743 	.area CONST   (CODE)
      00530C                       4744 ___str_33:
      00530C 45 72 72 6F 72 3A 20  4745 	.ascii "Error: No ACK for memory address"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 6D 65 6D
             6F 72 79 20 61 64 64
             72 65 73 73
      00532C 0A                    4746 	.db 0x0a
      00532D 0D                    4747 	.db 0x0d
      00532E 00                    4748 	.db 0x00
                                   4749 	.area CSEG    (CODE)
                                   4750 	.area CONST   (CODE)
      00532F                       4751 ___str_34:
      00532F 45 72 72 6F 72 3A 20  4752 	.ascii "Error: No ACK for data"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 61 74
             61
      005345 0A                    4753 	.db 0x0a
      005346 0D                    4754 	.db 0x0d
      005347 00                    4755 	.db 0x00
                                   4756 	.area CSEG    (CODE)
                                   4757 	.area CONST   (CODE)
      005348                       4758 ___str_35:
      005348 7C 20 57 72 69 74 69  4759 	.ascii "| Writing at Address 0x%03X Data 0x%02X          |"
             6E 67 20 61 74 20 41
             64 64 72 65 73 73 20
             30 78 25 30 33 58 20
             44 61 74 61 20 30 78
             25 30 32 58 20 20 20
             20 20 20 20 20 20 20
             7C
      00537A 0A                    4760 	.db 0x0a
      00537B 0D                    4761 	.db 0x0d
      00537C 00                    4762 	.db 0x00
                                   4763 	.area CSEG    (CODE)
                                   4764 	.area CONST   (CODE)
      00537D                       4765 ___str_36:
      00537D E2                    4766 	.db 0xe2
      00537E 94                    4767 	.db 0x94
      00537F 82                    4768 	.db 0x82
      005380 20 57 72 69 74 65 20  4769 	.ascii " Write successful!                             "
             73 75 63 63 65 73 73
             66 75 6C 21 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      0053AF E2                    4770 	.db 0xe2
      0053B0 94                    4771 	.db 0x94
      0053B1 82                    4772 	.db 0x82
      0053B2 0A                    4773 	.db 0x0a
      0053B3 0D                    4774 	.db 0x0d
      0053B4 00                    4775 	.db 0x00
                                   4776 	.area CSEG    (CODE)
                                   4777 	.area CONST   (CODE)
      0053B5                       4778 ___str_37:
      0053B5 E2                    4779 	.db 0xe2
      0053B6 94                    4780 	.db 0x94
      0053B7 94                    4781 	.db 0x94
      0053B8 E2                    4782 	.db 0xe2
      0053B9 94                    4783 	.db 0x94
      0053BA 80                    4784 	.db 0x80
      0053BB E2                    4785 	.db 0xe2
      0053BC 94                    4786 	.db 0x94
      0053BD 80                    4787 	.db 0x80
      0053BE E2                    4788 	.db 0xe2
      0053BF 94                    4789 	.db 0x94
      0053C0 80                    4790 	.db 0x80
      0053C1 E2                    4791 	.db 0xe2
      0053C2 94                    4792 	.db 0x94
      0053C3 80                    4793 	.db 0x80
      0053C4 E2                    4794 	.db 0xe2
      0053C5 94                    4795 	.db 0x94
      0053C6 80                    4796 	.db 0x80
      0053C7 E2                    4797 	.db 0xe2
      0053C8 94                    4798 	.db 0x94
      0053C9 80                    4799 	.db 0x80
      0053CA E2                    4800 	.db 0xe2
      0053CB 94                    4801 	.db 0x94
      0053CC 80                    4802 	.db 0x80
      0053CD E2                    4803 	.db 0xe2
      0053CE 94                    4804 	.db 0x94
      0053CF 80                    4805 	.db 0x80
      0053D0 E2                    4806 	.db 0xe2
      0053D1 94                    4807 	.db 0x94
      0053D2 80                    4808 	.db 0x80
      0053D3 E2                    4809 	.db 0xe2
      0053D4 94                    4810 	.db 0x94
      0053D5 80                    4811 	.db 0x80
      0053D6 E2                    4812 	.db 0xe2
      0053D7 94                    4813 	.db 0x94
      0053D8 80                    4814 	.db 0x80
      0053D9 E2                    4815 	.db 0xe2
      0053DA 94                    4816 	.db 0x94
      0053DB 80                    4817 	.db 0x80
      0053DC E2                    4818 	.db 0xe2
      0053DD 94                    4819 	.db 0x94
      0053DE 80                    4820 	.db 0x80
      0053DF E2                    4821 	.db 0xe2
      0053E0 94                    4822 	.db 0x94
      0053E1 80                    4823 	.db 0x80
      0053E2 E2                    4824 	.db 0xe2
      0053E3 94                    4825 	.db 0x94
      0053E4 80                    4826 	.db 0x80
      0053E5 E2                    4827 	.db 0xe2
      0053E6 94                    4828 	.db 0x94
      0053E7 80                    4829 	.db 0x80
      0053E8 E2                    4830 	.db 0xe2
      0053E9 94                    4831 	.db 0x94
      0053EA 80                    4832 	.db 0x80
      0053EB E2                    4833 	.db 0xe2
      0053EC 94                    4834 	.db 0x94
      0053ED 80                    4835 	.db 0x80
      0053EE E2                    4836 	.db 0xe2
      0053EF 94                    4837 	.db 0x94
      0053F0 80                    4838 	.db 0x80
      0053F1 E2                    4839 	.db 0xe2
      0053F2 94                    4840 	.db 0x94
      0053F3 80                    4841 	.db 0x80
      0053F4 E2                    4842 	.db 0xe2
      0053F5 94                    4843 	.db 0x94
      0053F6 80                    4844 	.db 0x80
      0053F7 E2                    4845 	.db 0xe2
      0053F8 94                    4846 	.db 0x94
      0053F9 80                    4847 	.db 0x80
      0053FA E2                    4848 	.db 0xe2
      0053FB 94                    4849 	.db 0x94
      0053FC 80                    4850 	.db 0x80
      0053FD E2                    4851 	.db 0xe2
      0053FE 94                    4852 	.db 0x94
      0053FF 80                    4853 	.db 0x80
      005400 E2                    4854 	.db 0xe2
      005401 94                    4855 	.db 0x94
      005402 80                    4856 	.db 0x80
      005403 E2                    4857 	.db 0xe2
      005404 94                    4858 	.db 0x94
      005405 80                    4859 	.db 0x80
      005406 E2                    4860 	.db 0xe2
      005407 94                    4861 	.db 0x94
      005408 80                    4862 	.db 0x80
      005409 E2                    4863 	.db 0xe2
      00540A 94                    4864 	.db 0x94
      00540B 80                    4865 	.db 0x80
      00540C E2                    4866 	.db 0xe2
      00540D 94                    4867 	.db 0x94
      00540E 80                    4868 	.db 0x80
      00540F E2                    4869 	.db 0xe2
      005410 94                    4870 	.db 0x94
      005411 80                    4871 	.db 0x80
      005412 E2                    4872 	.db 0xe2
      005413 94                    4873 	.db 0x94
      005414 80                    4874 	.db 0x80
      005415 E2                    4875 	.db 0xe2
      005416 94                    4876 	.db 0x94
      005417 80                    4877 	.db 0x80
      005418 E2                    4878 	.db 0xe2
      005419 94                    4879 	.db 0x94
      00541A 80                    4880 	.db 0x80
      00541B E2                    4881 	.db 0xe2
      00541C 94                    4882 	.db 0x94
      00541D 80                    4883 	.db 0x80
      00541E E2                    4884 	.db 0xe2
      00541F 94                    4885 	.db 0x94
      005420 80                    4886 	.db 0x80
      005421 E2                    4887 	.db 0xe2
      005422 94                    4888 	.db 0x94
      005423 80                    4889 	.db 0x80
      005424 E2                    4890 	.db 0xe2
      005425 94                    4891 	.db 0x94
      005426 80                    4892 	.db 0x80
      005427 E2                    4893 	.db 0xe2
      005428 94                    4894 	.db 0x94
      005429 80                    4895 	.db 0x80
      00542A E2                    4896 	.db 0xe2
      00542B 94                    4897 	.db 0x94
      00542C 80                    4898 	.db 0x80
      00542D E2                    4899 	.db 0xe2
      00542E 94                    4900 	.db 0x94
      00542F 80                    4901 	.db 0x80
      005430 E2                    4902 	.db 0xe2
      005431 94                    4903 	.db 0x94
      005432 80                    4904 	.db 0x80
      005433 E2                    4905 	.db 0xe2
      005434 94                    4906 	.db 0x94
      005435 80                    4907 	.db 0x80
      005436 E2                    4908 	.db 0xe2
      005437 94                    4909 	.db 0x94
      005438 80                    4910 	.db 0x80
      005439 E2                    4911 	.db 0xe2
      00543A 94                    4912 	.db 0x94
      00543B 80                    4913 	.db 0x80
      00543C E2                    4914 	.db 0xe2
      00543D 94                    4915 	.db 0x94
      00543E 80                    4916 	.db 0x80
      00543F E2                    4917 	.db 0xe2
      005440 94                    4918 	.db 0x94
      005441 80                    4919 	.db 0x80
      005442 E2                    4920 	.db 0xe2
      005443 94                    4921 	.db 0x94
      005444 80                    4922 	.db 0x80
      005445 E2                    4923 	.db 0xe2
      005446 94                    4924 	.db 0x94
      005447 98                    4925 	.db 0x98
      005448 0A                    4926 	.db 0x0a
      005449 0D                    4927 	.db 0x0d
      00544A 00                    4928 	.db 0x00
                                   4929 	.area CSEG    (CODE)
                                   4930 	.area CONST   (CODE)
      00544B                       4931 ___str_38:
      00544B 45 72 72 6F 72 3A 20  4932 	.ascii "Error: No ACK for device address (write mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 20 6D 6F
             64 65 29
      005478 0A                    4933 	.db 0x0a
      005479 0D                    4934 	.db 0x0d
      00547A 00                    4935 	.db 0x00
                                   4936 	.area CSEG    (CODE)
                                   4937 	.area CONST   (CODE)
      00547B                       4938 ___str_39:
      00547B 45 72 72 6F 72 3A 20  4939 	.ascii "Error: No ACK for device address (read mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 72
             65 61 64 20 6D 6F 64
             65 29
      0054A7 0A                    4940 	.db 0x0a
      0054A8 0D                    4941 	.db 0x0d
      0054A9 00                    4942 	.db 0x00
                                   4943 	.area CSEG    (CODE)
                                   4944 	.area CONST   (CODE)
      0054AA                       4945 ___str_40:
      0054AA 7C 20 30 78 25 30 33  4946 	.ascii "| 0x%03X : 0x%02X "
             58 20 3A 20 30 78 25
             30 32 58 20
      0054BC 0A                    4947 	.db 0x0a
      0054BD 0D                    4948 	.db 0x0d
      0054BE 00                    4949 	.db 0x00
                                   4950 	.area CSEG    (CODE)
                                   4951 	.area CONST   (CODE)
      0054BF                       4952 ___str_41:
      0054BF E2                    4953 	.db 0xe2
      0054C0 94                    4954 	.db 0x94
      0054C1 82                    4955 	.db 0x82
      0054C2 20 52 65 61 64 20 73  4956 	.ascii " Read successful!                 "
             75 63 63 65 73 73 66
             75 6C 21 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20
      0054E4 E2                    4957 	.db 0xe2
      0054E5 94                    4958 	.db 0x94
      0054E6 82                    4959 	.db 0x82
      0054E7 0A                    4960 	.db 0x0a
      0054E8 0D                    4961 	.db 0x0d
      0054E9 00                    4962 	.db 0x00
                                   4963 	.area CSEG    (CODE)
                                   4964 	.area CONST   (CODE)
      0054EA                       4965 ___str_42:
      0054EA 41 43 4B 20 44 49 44  4966 	.ascii "ACK DID NOT ARRIVE"
             20 4E 4F 54 20 41 52
             52 49 56 45
      0054FC 0A                    4967 	.db 0x0a
      0054FD 0D                    4968 	.db 0x0d
      0054FE 00                    4969 	.db 0x00
                                   4970 	.area CSEG    (CODE)
                                   4971 	.area CONST   (CODE)
      0054FF                       4972 ___str_43:
      0054FF 0D                    4973 	.db 0x0d
      005500 0A                    4974 	.db 0x0a
      005501 00                    4975 	.db 0x00
                                   4976 	.area CSEG    (CODE)
                                   4977 	.area CONST   (CODE)
      005502                       4978 ___str_44:
      005502 0D                    4979 	.db 0x0d
      005503 0A                    4980 	.db 0x0a
      005504 2D 2D 2D 2D 2D 2D 2D  4981 	.ascii "------------------------------------------------------------"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D
      005540 2D 2D 2D 2D           4982 	.ascii "----"
      005544 00                    4983 	.db 0x00
                                   4984 	.area CSEG    (CODE)
                                   4985 	.area CONST   (CODE)
      005545                       4986 ___str_45:
      005545 0D                    4987 	.db 0x0d
      005546 0A                    4988 	.db 0x0a
      005547 20 20 20 20 20 20 20  4989 	.ascii "                    EEPROM Hex Dump                         "
             20 20 20 20 20 20 20
             20 20 20 20 20 20 45
             45 50 52 4F 4D 20 48
             65 78 20 44 75 6D 70
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20
      005583 20 20 20 20           4990 	.ascii "    "
      005587 00                    4991 	.db 0x00
                                   4992 	.area CSEG    (CODE)
                                   4993 	.area CONST   (CODE)
      005588                       4994 ___str_46:
      005588 0D                    4995 	.db 0x0d
      005589 0A                    4996 	.db 0x0a
      00558A 2D 2D 2D 2D 2D 2D 2D  4997 	.ascii "------------------------------------------------------------"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D
      0055C6 2D 2D 2D 2D           4998 	.ascii "----"
      0055CA 0D                    4999 	.db 0x0d
      0055CB 0A                    5000 	.db 0x0a
      0055CC 00                    5001 	.db 0x00
                                   5002 	.area CSEG    (CODE)
                                   5003 	.area CONST   (CODE)
      0055CD                       5004 ___str_47:
      0055CD 25 30 33 58 3A 20     5005 	.ascii "%03X: "
      0055D3 00                    5006 	.db 0x00
                                   5007 	.area CSEG    (CODE)
                                   5008 	.area CONST   (CODE)
      0055D4                       5009 ___str_48:
      0055D4 25 30 32 58 20        5010 	.ascii "%02X "
      0055D9 00                    5011 	.db 0x00
                                   5012 	.area CSEG    (CODE)
                                   5013 	.area CONST   (CODE)
      0055DA                       5014 ___str_49:
      0055DA 20 20 20              5015 	.ascii "   "
      0055DD 00                    5016 	.db 0x00
                                   5017 	.area CSEG    (CODE)
                                   5018 	.area CONST   (CODE)
      0055DE                       5019 ___str_50:
      0055DE 1B                    5020 	.db 0x1b
      0055DF 5B 31 3B 33 33 6D     5021 	.ascii "[1;33m"
      0055E5 0A                    5022 	.db 0x0a
      0055E6 0D                    5023 	.db 0x0d
      0055E7 45 6E 74 65 72 20 53  5024 	.ascii "Enter Start Address for HEX Dump"
             74 61 72 74 20 41 64
             64 72 65 73 73 20 66
             6F 72 20 48 45 58 20
             44 75 6D 70
      005607 0D                    5025 	.db 0x0d
      005608 0A                    5026 	.db 0x0a
      005609 00                    5027 	.db 0x00
                                   5028 	.area CSEG    (CODE)
                                   5029 	.area CONST   (CODE)
      00560A                       5030 ___str_51:
      00560A 1B                    5031 	.db 0x1b
      00560B 5B 31 3B 33 31 6D     5032 	.ascii "[1;31m"
      005611 0A                    5033 	.db 0x0a
      005612 0D                    5034 	.db 0x0d
      005613 49 6E 76 61 6C 69 64  5035 	.ascii "Invalid Start Address Range!!"
             20 53 74 61 72 74 20
             41 64 64 72 65 73 73
             20 52 61 6E 67 65 21
             21
      005630 0A                    5036 	.db 0x0a
      005631 0D                    5037 	.db 0x0d
      005632 20 41 64 64 72 65 73  5038 	.ascii " Address has to be between 0x000 to 0x7FF"
             73 20 68 61 73 20 74
             6F 20 62 65 20 62 65
             74 77 65 65 6E 20 30
             78 30 30 30 20 74 6F
             20 30 78 37 46 46
      00565B 1B                    5039 	.db 0x1b
      00565C 5B 30 6D              5040 	.ascii "[0m"
      00565F 0D                    5041 	.db 0x0d
      005660 0A                    5042 	.db 0x0a
      005661 00                    5043 	.db 0x00
                                   5044 	.area CSEG    (CODE)
                                   5045 	.area CONST   (CODE)
      005662                       5046 ___str_52:
      005662 1B                    5047 	.db 0x1b
      005663 5B 31 3B 33 33 6D     5048 	.ascii "[1;33m"
      005669 0A                    5049 	.db 0x0a
      00566A 0D                    5050 	.db 0x0d
      00566B 45 6E 74 65 72 20 45  5051 	.ascii "Enter End Address for HEX Dump"
             6E 64 20 41 64 64 72
             65 73 73 20 66 6F 72
             20 48 45 58 20 44 75
             6D 70
      005689 0D                    5052 	.db 0x0d
      00568A 0A                    5053 	.db 0x0a
      00568B 00                    5054 	.db 0x00
                                   5055 	.area CSEG    (CODE)
                                   5056 	.area CONST   (CODE)
      00568C                       5057 ___str_53:
      00568C 1B                    5058 	.db 0x1b
      00568D 5B 31 3B 33 31 6D     5059 	.ascii "[1;31m"
      005693 0A                    5060 	.db 0x0a
      005694 0D                    5061 	.db 0x0d
      005695 49 6E 76 61 6C 69 64  5062 	.ascii "Invalid End Address Range!!"
             20 45 6E 64 20 41 64
             64 72 65 73 73 20 52
             61 6E 67 65 21 21
      0056B0 0A                    5063 	.db 0x0a
      0056B1 0D                    5064 	.db 0x0d
      0056B2 20 41 64 64 72 65 73  5065 	.ascii " Address has to be between 0x000 to 0x7FF"
             73 20 68 61 73 20 74
             6F 20 62 65 20 62 65
             74 77 65 65 6E 20 30
             78 30 30 30 20 74 6F
             20 30 78 37 46 46
      0056DB 1B                    5066 	.db 0x1b
      0056DC 5B 30 6D              5067 	.ascii "[0m"
      0056DF 0D                    5068 	.db 0x0d
      0056E0 0A                    5069 	.db 0x0a
      0056E1 00                    5070 	.db 0x00
                                   5071 	.area CSEG    (CODE)
                                   5072 	.area CONST   (CODE)
      0056E2                       5073 ___str_54:
      0056E2 57 72 69 74 69 6E 67  5074 	.ascii "Writing data 0x%02X to address 0x%02X"
             20 64 61 74 61 20 30
             78 25 30 32 58 20 74
             6F 20 61 64 64 72 65
             73 73 20 30 78 25 30
             32 58
      005707 0A                    5075 	.db 0x0a
      005708 0D                    5076 	.db 0x0d
      005709 00                    5077 	.db 0x00
                                   5078 	.area CSEG    (CODE)
                                   5079 	.area CONST   (CODE)
      00570A                       5080 ___str_55:
      00570A 52 65 61 64 20 62 61  5081 	.ascii "Read back from address 0x%02X: 0x%02X"
             63 6B 20 66 72 6F 6D
             20 61 64 64 72 65 73
             73 20 30 78 25 30 32
             58 3A 20 30 78 25 30
             32 58
      00572F 0A                    5082 	.db 0x0a
      005730 0D                    5083 	.db 0x0d
      005731 00                    5084 	.db 0x00
                                   5085 	.area CSEG    (CODE)
                                   5086 	.area CONST   (CODE)
      005732                       5087 ___str_56:
      005732 4D 41 54 43 48 20 2D  5088 	.ascii "MATCH - Write/Read successful!"
             20 57 72 69 74 65 2F
             52 65 61 64 20 73 75
             63 63 65 73 73 66 75
             6C 21
      005750 0A                    5089 	.db 0x0a
      005751 0D                    5090 	.db 0x0d
      005752 00                    5091 	.db 0x00
                                   5092 	.area CSEG    (CODE)
                                   5093 	.area CONST   (CODE)
      005753                       5094 ___str_57:
      005753 45 52 52 4F 52 20 2D  5095 	.ascii "ERROR - Data mismatch!"
             20 44 61 74 61 20 6D
             69 73 6D 61 74 63 68
             21
      005769 0A                    5096 	.db 0x0a
      00576A 0D                    5097 	.db 0x0d
      00576B 00                    5098 	.db 0x00
                                   5099 	.area CSEG    (CODE)
                                   5100 	.area XINIT   (CODE)
      005777                       5101 __xinit__address_range_flag:
      005777 01 00                 5102 	.byte #0x01, #0x00	;  1
      005779                       5103 __xinit__data_range_flag:
      005779 01 00                 5104 	.byte #0x01, #0x00	;  1
      00577B                       5105 __xinit__block:
      00577B 00 00                 5106 	.byte #0x00, #0x00	; 0
                                   5107 	.area CABS    (ABS,CODE)
