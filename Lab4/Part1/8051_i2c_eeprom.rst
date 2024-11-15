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
      00308F 74 B8            [12]  641 	mov	a,#___str_0
      003091 C0 E0            [24]  642 	push	acc
      003093 74 49            [12]  643 	mov	a,#(___str_0 >> 8)
      003095 C0 E0            [24]  644 	push	acc
      003097 74 80            [12]  645 	mov	a,#0x80
      003099 C0 E0            [24]  646 	push	acc
      00309B 12 3F 56         [24]  647 	lcall	_printf
      00309E 15 81            [12]  648 	dec	sp
      0030A0 15 81            [12]  649 	dec	sp
      0030A2 15 81            [12]  650 	dec	sp
                                    651 ;	8051_i2c_eeprom.c:87: printf("║           I2C Memory Management System v1.0            ║\n\r");
      0030A4 74 6A            [12]  652 	mov	a,#___str_1
      0030A6 C0 E0            [24]  653 	push	acc
      0030A8 74 4A            [12]  654 	mov	a,#(___str_1 >> 8)
      0030AA C0 E0            [24]  655 	push	acc
      0030AC 74 80            [12]  656 	mov	a,#0x80
      0030AE C0 E0            [24]  657 	push	acc
      0030B0 12 3F 56         [24]  658 	lcall	_printf
      0030B3 15 81            [12]  659 	dec	sp
      0030B5 15 81            [12]  660 	dec	sp
      0030B7 15 81            [12]  661 	dec	sp
                                    662 ;	8051_i2c_eeprom.c:88: printf("╚════════════════════════════════════════════════════════╝\n\r");
      0030B9 74 AB            [12]  663 	mov	a,#___str_2
      0030BB C0 E0            [24]  664 	push	acc
      0030BD 74 4A            [12]  665 	mov	a,#(___str_2 >> 8)
      0030BF C0 E0            [24]  666 	push	acc
      0030C1 74 80            [12]  667 	mov	a,#0x80
      0030C3 C0 E0            [24]  668 	push	acc
      0030C5 12 3F 56         [24]  669 	lcall	_printf
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
      0030CF 74 5C            [12]  684 	mov	a,#___str_3
      0030D1 C0 E0            [24]  685 	push	acc
      0030D3 74 4B            [12]  686 	mov	a,#(___str_3 >> 8)
      0030D5 C0 E0            [24]  687 	push	acc
      0030D7 74 80            [12]  688 	mov	a,#0x80
      0030D9 C0 E0            [24]  689 	push	acc
      0030DB 12 3F 56         [24]  690 	lcall	_printf
      0030DE 15 81            [12]  691 	dec	sp
      0030E0 15 81            [12]  692 	dec	sp
      0030E2 15 81            [12]  693 	dec	sp
                                    694 ;	8051_i2c_eeprom.c:98: printf("│  Command   │               Description                  │\n\r");
      0030E4 74 12            [12]  695 	mov	a,#___str_4
      0030E6 C0 E0            [24]  696 	push	acc
      0030E8 74 4C            [12]  697 	mov	a,#(___str_4 >> 8)
      0030EA C0 E0            [24]  698 	push	acc
      0030EC 74 80            [12]  699 	mov	a,#0x80
      0030EE C0 E0            [24]  700 	push	acc
      0030F0 12 3F 56         [24]  701 	lcall	_printf
      0030F3 15 81            [12]  702 	dec	sp
      0030F5 15 81            [12]  703 	dec	sp
      0030F7 15 81            [12]  704 	dec	sp
                                    705 ;	8051_i2c_eeprom.c:99: printf("├────────────┼────────────────────────────────────────────┤\n\r");
      0030F9 74 56            [12]  706 	mov	a,#___str_5
      0030FB C0 E0            [24]  707 	push	acc
      0030FD 74 4C            [12]  708 	mov	a,#(___str_5 >> 8)
      0030FF C0 E0            [24]  709 	push	acc
      003101 74 80            [12]  710 	mov	a,#0x80
      003103 C0 E0            [24]  711 	push	acc
      003105 12 3F 56         [24]  712 	lcall	_printf
      003108 15 81            [12]  713 	dec	sp
      00310A 15 81            [12]  714 	dec	sp
      00310C 15 81            [12]  715 	dec	sp
                                    716 ;	8051_i2c_eeprom.c:100: printf("│     R      │ Read from address                          │\n\r");
      00310E 74 0A            [12]  717 	mov	a,#___str_6
      003110 C0 E0            [24]  718 	push	acc
      003112 74 4D            [12]  719 	mov	a,#(___str_6 >> 8)
      003114 C0 E0            [24]  720 	push	acc
      003116 74 80            [12]  721 	mov	a,#0x80
      003118 C0 E0            [24]  722 	push	acc
      00311A 12 3F 56         [24]  723 	lcall	_printf
      00311D 15 81            [12]  724 	dec	sp
      00311F 15 81            [12]  725 	dec	sp
      003121 15 81            [12]  726 	dec	sp
                                    727 ;	8051_i2c_eeprom.c:101: printf("│     W      │ Write data to address                      │\n\r");
      003123 74 4E            [12]  728 	mov	a,#___str_7
      003125 C0 E0            [24]  729 	push	acc
      003127 74 4D            [12]  730 	mov	a,#(___str_7 >> 8)
      003129 C0 E0            [24]  731 	push	acc
      00312B 74 80            [12]  732 	mov	a,#0x80
      00312D C0 E0            [24]  733 	push	acc
      00312F 12 3F 56         [24]  734 	lcall	_printf
      003132 15 81            [12]  735 	dec	sp
      003134 15 81            [12]  736 	dec	sp
      003136 15 81            [12]  737 	dec	sp
                                    738 ;	8051_i2c_eeprom.c:102: printf("│     H      │ Display hex dump                           │\n\r");
      003138 74 92            [12]  739 	mov	a,#___str_8
      00313A C0 E0            [24]  740 	push	acc
      00313C 74 4D            [12]  741 	mov	a,#(___str_8 >> 8)
      00313E C0 E0            [24]  742 	push	acc
      003140 74 80            [12]  743 	mov	a,#0x80
      003142 C0 E0            [24]  744 	push	acc
      003144 12 3F 56         [24]  745 	lcall	_printf
      003147 15 81            [12]  746 	dec	sp
      003149 15 81            [12]  747 	dec	sp
      00314B 15 81            [12]  748 	dec	sp
                                    749 ;	8051_i2c_eeprom.c:103: printf("│     X      │ Reset memory system                        │\n\r");
      00314D 74 D6            [12]  750 	mov	a,#___str_9
      00314F C0 E0            [24]  751 	push	acc
      003151 74 4D            [12]  752 	mov	a,#(___str_9 >> 8)
      003153 C0 E0            [24]  753 	push	acc
      003155 74 80            [12]  754 	mov	a,#0x80
      003157 C0 E0            [24]  755 	push	acc
      003159 12 3F 56         [24]  756 	lcall	_printf
      00315C 15 81            [12]  757 	dec	sp
      00315E 15 81            [12]  758 	dec	sp
      003160 15 81            [12]  759 	dec	sp
                                    760 ;	8051_i2c_eeprom.c:104: printf("│     ?      │ Display this help menu                     │\n\r");
      003162 74 1A            [12]  761 	mov	a,#___str_10
      003164 C0 E0            [24]  762 	push	acc
      003166 74 4E            [12]  763 	mov	a,#(___str_10 >> 8)
      003168 C0 E0            [24]  764 	push	acc
      00316A 74 80            [12]  765 	mov	a,#0x80
      00316C C0 E0            [24]  766 	push	acc
      00316E 12 3F 56         [24]  767 	lcall	_printf
      003171 15 81            [12]  768 	dec	sp
      003173 15 81            [12]  769 	dec	sp
      003175 15 81            [12]  770 	dec	sp
                                    771 ;	8051_i2c_eeprom.c:105: printf("│     Q      │ Quit program                               │\n\r");
      003177 74 5E            [12]  772 	mov	a,#___str_11
      003179 C0 E0            [24]  773 	push	acc
      00317B 74 4E            [12]  774 	mov	a,#(___str_11 >> 8)
      00317D C0 E0            [24]  775 	push	acc
      00317F 74 80            [12]  776 	mov	a,#0x80
      003181 C0 E0            [24]  777 	push	acc
      003183 12 3F 56         [24]  778 	lcall	_printf
      003186 15 81            [12]  779 	dec	sp
      003188 15 81            [12]  780 	dec	sp
      00318A 15 81            [12]  781 	dec	sp
                                    782 ;	8051_i2c_eeprom.c:106: printf("└────────────┴────────────────────────────────────────────┘\n\r");
      00318C 74 A2            [12]  783 	mov	a,#___str_12
      00318E C0 E0            [24]  784 	push	acc
      003190 74 4E            [12]  785 	mov	a,#(___str_12 >> 8)
      003192 C0 E0            [24]  786 	push	acc
      003194 74 80            [12]  787 	mov	a,#0x80
      003196 C0 E0            [24]  788 	push	acc
      003198 12 3F 56         [24]  789 	lcall	_printf
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
                                    802 ;------------------------------------------------------------
                                    803 ;	8051_i2c_eeprom.c:115: int main()
                                    804 ;	-----------------------------------------
                                    805 ;	 function main
                                    806 ;	-----------------------------------------
      0031A2                        807 _main:
                                    808 ;	8051_i2c_eeprom.c:118: P1 &= ~(1<<3);  // Set P1.3 as output
      0031A2 53 90 F7         [24]  809 	anl	_P1,#0xf7
                                    810 ;	8051_i2c_eeprom.c:119: P1 &= ~(1<<4);  // Set P1.4 as output
      0031A5 53 90 EF         [24]  811 	anl	_P1,#0xef
                                    812 ;	8051_i2c_eeprom.c:120: ui();
      0031A8 12 30 8F         [24]  813 	lcall	_ui
                                    814 ;	8051_i2c_eeprom.c:121: command_menu();
      0031AB 12 30 CF         [24]  815 	lcall	_command_menu
                                    816 ;	8051_i2c_eeprom.c:122: i2c_start();
      0031AE 12 39 F8         [24]  817 	lcall	_i2c_start
                                    818 ;	8051_i2c_eeprom.c:123: while(1)
      0031B1                        819 00115$:
                                    820 ;	8051_i2c_eeprom.c:125: char user_input = getchar();
      0031B1 12 30 81         [24]  821 	lcall	_getchar
      0031B4 AE 82            [24]  822 	mov	r6,dpl
                                    823 ;	8051_i2c_eeprom.c:126: printf("| $ %c\n\r", user_input);
      0031B6 8E 05            [24]  824 	mov	ar5,r6
      0031B8 7F 00            [12]  825 	mov	r7,#0x00
      0031BA C0 06            [24]  826 	push	ar6
      0031BC C0 05            [24]  827 	push	ar5
      0031BE C0 07            [24]  828 	push	ar7
      0031C0 74 56            [12]  829 	mov	a,#___str_13
      0031C2 C0 E0            [24]  830 	push	acc
      0031C4 74 4F            [12]  831 	mov	a,#(___str_13 >> 8)
      0031C6 C0 E0            [24]  832 	push	acc
      0031C8 74 80            [12]  833 	mov	a,#0x80
      0031CA C0 E0            [24]  834 	push	acc
      0031CC 12 3F 56         [24]  835 	lcall	_printf
      0031CF E5 81            [12]  836 	mov	a,sp
      0031D1 24 FB            [12]  837 	add	a,#0xfb
      0031D3 F5 81            [12]  838 	mov	sp,a
                                    839 ;	8051_i2c_eeprom.c:127: printf("\n\r");
      0031D5 74 5F            [12]  840 	mov	a,#___str_14
      0031D7 C0 E0            [24]  841 	push	acc
      0031D9 74 4F            [12]  842 	mov	a,#(___str_14 >> 8)
      0031DB C0 E0            [24]  843 	push	acc
      0031DD 74 80            [12]  844 	mov	a,#0x80
      0031DF C0 E0            [24]  845 	push	acc
      0031E1 12 3F 56         [24]  846 	lcall	_printf
      0031E4 15 81            [12]  847 	dec	sp
      0031E6 15 81            [12]  848 	dec	sp
      0031E8 15 81            [12]  849 	dec	sp
      0031EA D0 06            [24]  850 	pop	ar6
                                    851 ;	8051_i2c_eeprom.c:128: switch(user_input)
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
                                    868 ;	8051_i2c_eeprom.c:130: case 'W':
      00320B                        869 00101$:
                                    870 ;	8051_i2c_eeprom.c:132: printf("\n┌─────────────── WRITE OPERATION ──────────────┐\n\r");
      00320B 74 62            [12]  871 	mov	a,#___str_15
      00320D C0 E0            [24]  872 	push	acc
      00320F 74 4F            [12]  873 	mov	a,#(___str_15 >> 8)
      003211 C0 E0            [24]  874 	push	acc
      003213 74 80            [12]  875 	mov	a,#0x80
      003215 C0 E0            [24]  876 	push	acc
      003217 12 3F 56         [24]  877 	lcall	_printf
      00321A 15 81            [12]  878 	dec	sp
      00321C 15 81            [12]  879 	dec	sp
      00321E 15 81            [12]  880 	dec	sp
                                    881 ;	8051_i2c_eeprom.c:134: addr = take_address();
      003220 12 33 23         [24]  882 	lcall	_take_address
      003223 AE 82            [24]  883 	mov	r6,dpl
      003225 AF 83            [24]  884 	mov	r7,dph
                                    885 ;	8051_i2c_eeprom.c:135: if(!address_range_flag) 
      003227 90 04 57         [24]  886 	mov	dptr,#_address_range_flag
      00322A E0               [24]  887 	movx	a,@dptr
      00322B F5 F0            [12]  888 	mov	b,a
      00322D A3               [24]  889 	inc	dptr
      00322E E0               [24]  890 	movx	a,@dptr
      00322F 45 F0            [12]  891 	orl	a,b
      003231 70 0C            [24]  892 	jnz	00103$
                                    893 ;	8051_i2c_eeprom.c:137: address_range_flag = 1;
      003233 90 04 57         [24]  894 	mov	dptr,#_address_range_flag
      003236 74 01            [12]  895 	mov	a,#0x01
      003238 F0               [24]  896 	movx	@dptr,a
      003239 E4               [12]  897 	clr	a
      00323A A3               [24]  898 	inc	dptr
      00323B F0               [24]  899 	movx	@dptr,a
                                    900 ;	8051_i2c_eeprom.c:138: break;
      00323C 02 31 B1         [24]  901 	ljmp	00115$
      00323F                        902 00103$:
                                    903 ;	8051_i2c_eeprom.c:141: data = take_data();
      00323F C0 07            [24]  904 	push	ar7
      003241 C0 06            [24]  905 	push	ar6
      003243 12 35 3C         [24]  906 	lcall	_take_data
      003246 AD 82            [24]  907 	mov	r5,dpl
      003248 D0 06            [24]  908 	pop	ar6
      00324A D0 07            [24]  909 	pop	ar7
                                    910 ;	8051_i2c_eeprom.c:142: if(!data_range_flag) 
      00324C 90 04 59         [24]  911 	mov	dptr,#_data_range_flag
      00324F E0               [24]  912 	movx	a,@dptr
      003250 F5 F0            [12]  913 	mov	b,a
      003252 A3               [24]  914 	inc	dptr
      003253 E0               [24]  915 	movx	a,@dptr
      003254 45 F0            [12]  916 	orl	a,b
      003256 70 0C            [24]  917 	jnz	00105$
                                    918 ;	8051_i2c_eeprom.c:144: data_range_flag = 1;
      003258 90 04 59         [24]  919 	mov	dptr,#_data_range_flag
      00325B 74 01            [12]  920 	mov	a,#0x01
      00325D F0               [24]  921 	movx	@dptr,a
      00325E E4               [12]  922 	clr	a
      00325F A3               [24]  923 	inc	dptr
      003260 F0               [24]  924 	movx	@dptr,a
                                    925 ;	8051_i2c_eeprom.c:145: break;
      003261 02 31 B1         [24]  926 	ljmp	00115$
      003264                        927 00105$:
                                    928 ;	8051_i2c_eeprom.c:148: eeprom_write(addr, data);
      003264 90 04 0F         [24]  929 	mov	dptr,#_eeprom_write_PARM_2
      003267 ED               [12]  930 	mov	a,r5
      003268 F0               [24]  931 	movx	@dptr,a
      003269 8E 82            [24]  932 	mov	dpl,r6
      00326B 8F 83            [24]  933 	mov	dph,r7
      00326D 12 36 B5         [24]  934 	lcall	_eeprom_write
                                    935 ;	8051_i2c_eeprom.c:149: break;
      003270 02 31 B1         [24]  936 	ljmp	00115$
                                    937 ;	8051_i2c_eeprom.c:151: case 'R':
      003273                        938 00106$:
                                    939 ;	8051_i2c_eeprom.c:153: printf("\n┌─────────────── READ OPERATION ───────────────┐\n\r");
      003273 74 D4            [12]  940 	mov	a,#___str_16
      003275 C0 E0            [24]  941 	push	acc
      003277 74 4F            [12]  942 	mov	a,#(___str_16 >> 8)
      003279 C0 E0            [24]  943 	push	acc
      00327B 74 80            [12]  944 	mov	a,#0x80
      00327D C0 E0            [24]  945 	push	acc
      00327F 12 3F 56         [24]  946 	lcall	_printf
      003282 15 81            [12]  947 	dec	sp
      003284 15 81            [12]  948 	dec	sp
      003286 15 81            [12]  949 	dec	sp
                                    950 ;	8051_i2c_eeprom.c:155: addr = take_address(); 
      003288 12 33 23         [24]  951 	lcall	_take_address
      00328B AE 82            [24]  952 	mov	r6,dpl
      00328D AF 83            [24]  953 	mov	r7,dph
                                    954 ;	8051_i2c_eeprom.c:156: if(!address_range_flag) 
      00328F 90 04 57         [24]  955 	mov	dptr,#_address_range_flag
      003292 E0               [24]  956 	movx	a,@dptr
      003293 F5 F0            [12]  957 	mov	b,a
      003295 A3               [24]  958 	inc	dptr
      003296 E0               [24]  959 	movx	a,@dptr
      003297 45 F0            [12]  960 	orl	a,b
      003299 70 0C            [24]  961 	jnz	00108$
                                    962 ;	8051_i2c_eeprom.c:158: address_range_flag = 1;
      00329B 90 04 57         [24]  963 	mov	dptr,#_address_range_flag
      00329E 74 01            [12]  964 	mov	a,#0x01
      0032A0 F0               [24]  965 	movx	@dptr,a
      0032A1 E4               [12]  966 	clr	a
      0032A2 A3               [24]  967 	inc	dptr
      0032A3 F0               [24]  968 	movx	@dptr,a
                                    969 ;	8051_i2c_eeprom.c:159: break;
      0032A4 02 31 B1         [24]  970 	ljmp	00115$
      0032A7                        971 00108$:
                                    972 ;	8051_i2c_eeprom.c:161: printf("| Reading from Address 0x%03X           |\n\r", addr);
      0032A7 C0 07            [24]  973 	push	ar7
      0032A9 C0 06            [24]  974 	push	ar6
      0032AB C0 06            [24]  975 	push	ar6
      0032AD C0 07            [24]  976 	push	ar7
      0032AF 74 48            [12]  977 	mov	a,#___str_17
      0032B1 C0 E0            [24]  978 	push	acc
      0032B3 74 50            [12]  979 	mov	a,#(___str_17 >> 8)
      0032B5 C0 E0            [24]  980 	push	acc
      0032B7 74 80            [12]  981 	mov	a,#0x80
      0032B9 C0 E0            [24]  982 	push	acc
      0032BB 12 3F 56         [24]  983 	lcall	_printf
      0032BE E5 81            [12]  984 	mov	a,sp
      0032C0 24 FB            [12]  985 	add	a,#0xfb
      0032C2 F5 81            [12]  986 	mov	sp,a
      0032C4 D0 06            [24]  987 	pop	ar6
      0032C6 D0 07            [24]  988 	pop	ar7
                                    989 ;	8051_i2c_eeprom.c:162: eeprom_read(addr);
      0032C8 8E 82            [24]  990 	mov	dpl,r6
      0032CA 8F 83            [24]  991 	mov	dph,r7
      0032CC 12 37 F7         [24]  992 	lcall	_eeprom_read
                                    993 ;	8051_i2c_eeprom.c:163: break;
      0032CF 02 31 B1         [24]  994 	ljmp	00115$
                                    995 ;	8051_i2c_eeprom.c:166: case '?':
      0032D2                        996 00109$:
                                    997 ;	8051_i2c_eeprom.c:167: command_menu();
      0032D2 12 30 CF         [24]  998 	lcall	_command_menu
                                    999 ;	8051_i2c_eeprom.c:168: break;
      0032D5 02 31 B1         [24] 1000 	ljmp	00115$
                                   1001 ;	8051_i2c_eeprom.c:170: case 'X':
      0032D8                       1002 00110$:
                                   1003 ;	8051_i2c_eeprom.c:171: printf("\n┌─────────────── RESET OPERATION ───────────┐\n\r");
      0032D8 74 74            [12] 1004 	mov	a,#___str_18
      0032DA C0 E0            [24] 1005 	push	acc
      0032DC 74 50            [12] 1006 	mov	a,#(___str_18 >> 8)
      0032DE C0 E0            [24] 1007 	push	acc
      0032E0 74 80            [12] 1008 	mov	a,#0x80
      0032E2 C0 E0            [24] 1009 	push	acc
      0032E4 12 3F 56         [24] 1010 	lcall	_printf
      0032E7 15 81            [12] 1011 	dec	sp
      0032E9 15 81            [12] 1012 	dec	sp
      0032EB 15 81            [12] 1013 	dec	sp
                                   1014 ;	8051_i2c_eeprom.c:172: eeprom_reset();
      0032ED 12 3D 04         [24] 1015 	lcall	_eeprom_reset
                                   1016 ;	8051_i2c_eeprom.c:173: break;
      0032F0 02 31 B1         [24] 1017 	ljmp	00115$
                                   1018 ;	8051_i2c_eeprom.c:175: case 'H':
      0032F3                       1019 00111$:
                                   1020 ;	8051_i2c_eeprom.c:176: printf("\n┌───────────── HEX DUMP OPERATION ───────────────┐\n\r");
      0032F3 74 DD            [12] 1021 	mov	a,#___str_19
      0032F5 C0 E0            [24] 1022 	push	acc
      0032F7 74 50            [12] 1023 	mov	a,#(___str_19 >> 8)
      0032F9 C0 E0            [24] 1024 	push	acc
      0032FB 74 80            [12] 1025 	mov	a,#0x80
      0032FD C0 E0            [24] 1026 	push	acc
      0032FF 12 3F 56         [24] 1027 	lcall	_printf
      003302 15 81            [12] 1028 	dec	sp
      003304 15 81            [12] 1029 	dec	sp
      003306 15 81            [12] 1030 	dec	sp
                                   1031 ;	8051_i2c_eeprom.c:182: handler_EEPROM_hexdump();
      003308 12 3C 5E         [24] 1032 	lcall	_handler_EEPROM_hexdump
                                   1033 ;	8051_i2c_eeprom.c:185: default:
      00330B                       1034 00112$:
                                   1035 ;	8051_i2c_eeprom.c:186: printf("INVALID INPUT\n\r");
      00330B 74 4F            [12] 1036 	mov	a,#___str_20
      00330D C0 E0            [24] 1037 	push	acc
      00330F 74 51            [12] 1038 	mov	a,#(___str_20 >> 8)
      003311 C0 E0            [24] 1039 	push	acc
      003313 74 80            [12] 1040 	mov	a,#0x80
      003315 C0 E0            [24] 1041 	push	acc
      003317 12 3F 56         [24] 1042 	lcall	_printf
      00331A 15 81            [12] 1043 	dec	sp
      00331C 15 81            [12] 1044 	dec	sp
      00331E 15 81            [12] 1045 	dec	sp
                                   1046 ;	8051_i2c_eeprom.c:188: }
                                   1047 ;	8051_i2c_eeprom.c:191: }
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
                                   1058 ;	8051_i2c_eeprom.c:199: unsigned int take_address() 
                                   1059 ;	-----------------------------------------
                                   1060 ;	 function take_address
                                   1061 ;	-----------------------------------------
      003323                       1062 _take_address:
                                   1063 ;	8051_i2c_eeprom.c:201: printf("│ Enter address (hex, up to 3 characters): \n\r|");
      003323 74 5F            [12] 1064 	mov	a,#___str_21
      003325 C0 E0            [24] 1065 	push	acc
      003327 74 51            [12] 1066 	mov	a,#(___str_21 >> 8)
      003329 C0 E0            [24] 1067 	push	acc
      00332B 74 80            [12] 1068 	mov	a,#0x80
      00332D C0 E0            [24] 1069 	push	acc
      00332F 12 3F 56         [24] 1070 	lcall	_printf
      003332 15 81            [12] 1071 	dec	sp
      003334 15 81            [12] 1072 	dec	sp
      003336 15 81            [12] 1073 	dec	sp
                                   1074 ;	8051_i2c_eeprom.c:202: char input[4] = {0};  // Array for 3 hex chars + null terminator
      003338 90 04 04         [24] 1075 	mov	dptr,#_take_address_input_65537_68
      00333B E4               [12] 1076 	clr	a
      00333C F0               [24] 1077 	movx	@dptr,a
      00333D 90 04 05         [24] 1078 	mov	dptr,#(_take_address_input_65537_68 + 0x0001)
      003340 F0               [24] 1079 	movx	@dptr,a
      003341 90 04 06         [24] 1080 	mov	dptr,#(_take_address_input_65537_68 + 0x0002)
      003344 F0               [24] 1081 	movx	@dptr,a
      003345 90 04 07         [24] 1082 	mov	dptr,#(_take_address_input_65537_68 + 0x0003)
      003348 F0               [24] 1083 	movx	@dptr,a
                                   1084 ;	8051_i2c_eeprom.c:206: printf("| $ ");
      003349 74 90            [12] 1085 	mov	a,#___str_22
      00334B C0 E0            [24] 1086 	push	acc
      00334D 74 51            [12] 1087 	mov	a,#(___str_22 >> 8)
      00334F C0 E0            [24] 1088 	push	acc
      003351 74 80            [12] 1089 	mov	a,#0x80
      003353 C0 E0            [24] 1090 	push	acc
      003355 12 3F 56         [24] 1091 	lcall	_printf
      003358 15 81            [12] 1092 	dec	sp
      00335A 15 81            [12] 1093 	dec	sp
      00335C 15 81            [12] 1094 	dec	sp
                                   1095 ;	8051_i2c_eeprom.c:208: while (i < 3) {
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
                                   1106 ;	8051_i2c_eeprom.c:210: c = getchar();
      00336D C0 07            [24] 1107 	push	ar7
      00336F C0 06            [24] 1108 	push	ar6
      003371 12 30 81         [24] 1109 	lcall	_getchar
      003374 AC 82            [24] 1110 	mov	r4,dpl
      003376 AD 83            [24] 1111 	mov	r5,dph
      003378 D0 06            [24] 1112 	pop	ar6
      00337A D0 07            [24] 1113 	pop	ar7
                                   1114 ;	8051_i2c_eeprom.c:213: if (c == '\r' || c == '\n') {
      00337C BC 0D 02         [24] 1115 	cjne	r4,#0x0d,00200$
      00337F 80 47            [24] 1116 	sjmp	00113$
      003381                       1117 00200$:
      003381 BC 0A 02         [24] 1118 	cjne	r4,#0x0a,00201$
      003384 80 42            [24] 1119 	sjmp	00113$
      003386                       1120 00201$:
                                   1121 ;	8051_i2c_eeprom.c:218: if ((c >= '0' && c <= '9') || 
      003386 BC 30 00         [24] 1122 	cjne	r4,#0x30,00202$
      003389                       1123 00202$:
      003389 40 05            [24] 1124 	jc	00108$
      00338B EC               [12] 1125 	mov	a,r4
      00338C 24 C6            [12] 1126 	add	a,#0xff - 0x39
      00338E 50 14            [24] 1127 	jnc	00104$
      003390                       1128 00108$:
                                   1129 ;	8051_i2c_eeprom.c:219: (c >= 'a' && c <= 'f') || 
      003390 BC 61 00         [24] 1130 	cjne	r4,#0x61,00205$
      003393                       1131 00205$:
      003393 40 05            [24] 1132 	jc	00110$
      003395 EC               [12] 1133 	mov	a,r4
      003396 24 99            [12] 1134 	add	a,#0xff - 0x66
      003398 50 0A            [24] 1135 	jnc	00104$
      00339A                       1136 00110$:
                                   1137 ;	8051_i2c_eeprom.c:220: (c >= 'A' && c <= 'F')) {
      00339A BC 41 00         [24] 1138 	cjne	r4,#0x41,00208$
      00339D                       1139 00208$:
      00339D 40 C3            [24] 1140 	jc	00111$
      00339F EC               [12] 1141 	mov	a,r4
      0033A0 24 B9            [12] 1142 	add	a,#0xff - 0x46
      0033A2 40 BE            [24] 1143 	jc	00111$
      0033A4                       1144 00104$:
                                   1145 ;	8051_i2c_eeprom.c:222: input[i] = c;
      0033A4 EE               [12] 1146 	mov	a,r6
      0033A5 24 04            [12] 1147 	add	a,#_take_address_input_65537_68
      0033A7 F5 82            [12] 1148 	mov	dpl,a
      0033A9 EF               [12] 1149 	mov	a,r7
      0033AA 34 04            [12] 1150 	addc	a,#(_take_address_input_65537_68 >> 8)
      0033AC F5 83            [12] 1151 	mov	dph,a
      0033AE EC               [12] 1152 	mov	a,r4
      0033AF F0               [24] 1153 	movx	@dptr,a
                                   1154 ;	8051_i2c_eeprom.c:223: putchar(c);  // Echo character back
      0033B0 7D 00            [12] 1155 	mov	r5,#0x00
      0033B2 8C 82            [24] 1156 	mov	dpl,r4
      0033B4 8D 83            [24] 1157 	mov	dph,r5
      0033B6 C0 07            [24] 1158 	push	ar7
      0033B8 C0 06            [24] 1159 	push	ar6
      0033BA 12 30 62         [24] 1160 	lcall	_putchar
      0033BD D0 06            [24] 1161 	pop	ar6
      0033BF D0 07            [24] 1162 	pop	ar7
                                   1163 ;	8051_i2c_eeprom.c:224: i++;
      0033C1 0E               [12] 1164 	inc	r6
      0033C2 BE 00 9D         [24] 1165 	cjne	r6,#0x00,00111$
      0033C5 0F               [12] 1166 	inc	r7
      0033C6 80 9A            [24] 1167 	sjmp	00111$
      0033C8                       1168 00113$:
                                   1169 ;	8051_i2c_eeprom.c:228: input[i] = '\0';  // Null-terminate the string
      0033C8 EE               [12] 1170 	mov	a,r6
      0033C9 24 04            [12] 1171 	add	a,#_take_address_input_65537_68
      0033CB F5 82            [12] 1172 	mov	dpl,a
      0033CD EF               [12] 1173 	mov	a,r7
      0033CE 34 04            [12] 1174 	addc	a,#(_take_address_input_65537_68 >> 8)
      0033D0 F5 83            [12] 1175 	mov	dph,a
      0033D2 E4               [12] 1176 	clr	a
      0033D3 F0               [24] 1177 	movx	@dptr,a
                                   1178 ;	8051_i2c_eeprom.c:231: unsigned int address = 0;
      0033D4 90 04 08         [24] 1179 	mov	dptr,#_take_address_address_65538_72
      0033D7 F0               [24] 1180 	movx	@dptr,a
      0033D8 A3               [24] 1181 	inc	dptr
      0033D9 F0               [24] 1182 	movx	@dptr,a
                                   1183 ;	8051_i2c_eeprom.c:232: for(i = 0; input[i] != '\0'; i++) {
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
                                   1198 ;	8051_i2c_eeprom.c:233: address = address * 16;
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
                                   1221 ;	8051_i2c_eeprom.c:234: if(input[i] >= '0' && input[i] <= '9')
      00340B BD 30 00         [24] 1222 	cjne	r5,#0x30,00213$
      00340E                       1223 00213$:
      00340E 40 23            [24] 1224 	jc	00122$
      003410 ED               [12] 1225 	mov	a,r5
      003411 24 C6            [12] 1226 	add	a,#0xff - 0x39
      003413 40 1E            [24] 1227 	jc	00122$
                                   1228 ;	8051_i2c_eeprom.c:235: address += input[i] - '0';
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
                                   1252 ;	8051_i2c_eeprom.c:236: else if(input[i] >= 'A' && input[i] <= 'F')
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
                                   1267 ;	8051_i2c_eeprom.c:237: address += input[i] - 'A' + 10;
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
                                   1292 ;	8051_i2c_eeprom.c:238: else if(input[i] >= 'a' && input[i] <= 'f')
      003469 BD 61 00         [24] 1293 	cjne	r5,#0x61,00219$
      00346C                       1294 00219$:
      00346C 40 21            [24] 1295 	jc	00130$
      00346E ED               [12] 1296 	mov	a,r5
      00346F 24 99            [12] 1297 	add	a,#0xff - 0x66
      003471 40 1C            [24] 1298 	jc	00130$
                                   1299 ;	8051_i2c_eeprom.c:239: address += input[i] - 'a' + 10;
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
                                   1322 ;	8051_i2c_eeprom.c:232: for(i = 0; input[i] != '\0'; i++) {
      00348F 0E               [12] 1323 	inc	r6
      003490 BE 00 01         [24] 1324 	cjne	r6,#0x00,00222$
      003493 0F               [12] 1325 	inc	r7
      003494                       1326 00222$:
      003494 02 33 DE         [24] 1327 	ljmp	00129$
      003497                       1328 00125$:
                                   1329 ;	8051_i2c_eeprom.c:242: printf("\n\r│ Entered address: 0x%03X\n\r", address);
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
      0034A7 74 95            [12] 1340 	mov	a,#___str_23
      0034A9 C0 E0            [24] 1341 	push	acc
      0034AB 74 51            [12] 1342 	mov	a,#(___str_23 >> 8)
      0034AD C0 E0            [24] 1343 	push	acc
      0034AF 74 80            [12] 1344 	mov	a,#0x80
      0034B1 C0 E0            [24] 1345 	push	acc
      0034B3 12 3F 56         [24] 1346 	lcall	_printf
      0034B6 E5 81            [12] 1347 	mov	a,sp
      0034B8 24 FB            [12] 1348 	add	a,#0xfb
      0034BA F5 81            [12] 1349 	mov	sp,a
      0034BC D0 06            [24] 1350 	pop	ar6
      0034BE D0 07            [24] 1351 	pop	ar7
                                   1352 ;	8051_i2c_eeprom.c:243: if(address > 0x7ff) 
      0034C0 C3               [12] 1353 	clr	c
      0034C1 74 FF            [12] 1354 	mov	a,#0xff
      0034C3 9E               [12] 1355 	subb	a,r6
      0034C4 74 07            [12] 1356 	mov	a,#0x07
      0034C6 9F               [12] 1357 	subb	a,r7
      0034C7 50 5F            [24] 1358 	jnc	00127$
                                   1359 ;	8051_i2c_eeprom.c:245: printf("╔══════════════════════════════════════════╗\n\r");
      0034C9 74 B5            [12] 1360 	mov	a,#___str_24
      0034CB C0 E0            [24] 1361 	push	acc
      0034CD 74 51            [12] 1362 	mov	a,#(___str_24 >> 8)
      0034CF C0 E0            [24] 1363 	push	acc
      0034D1 74 80            [12] 1364 	mov	a,#0x80
      0034D3 C0 E0            [24] 1365 	push	acc
      0034D5 12 3F 56         [24] 1366 	lcall	_printf
      0034D8 15 81            [12] 1367 	dec	sp
      0034DA 15 81            [12] 1368 	dec	sp
      0034DC 15 81            [12] 1369 	dec	sp
                                   1370 ;	8051_i2c_eeprom.c:246: printf("║       ! ADDRESS OUT OF RANGE !         ║\n\r");
      0034DE 74 3C            [12] 1371 	mov	a,#___str_25
      0034E0 C0 E0            [24] 1372 	push	acc
      0034E2 74 52            [12] 1373 	mov	a,#(___str_25 >> 8)
      0034E4 C0 E0            [24] 1374 	push	acc
      0034E6 74 80            [12] 1375 	mov	a,#0x80
      0034E8 C0 E0            [24] 1376 	push	acc
      0034EA 12 3F 56         [24] 1377 	lcall	_printf
      0034ED 15 81            [12] 1378 	dec	sp
      0034EF 15 81            [12] 1379 	dec	sp
      0034F1 15 81            [12] 1380 	dec	sp
                                   1381 ;	8051_i2c_eeprom.c:247: printf("║     Please Enter Valid Address         ║\n\r");
      0034F3 74 6D            [12] 1382 	mov	a,#___str_26
      0034F5 C0 E0            [24] 1383 	push	acc
      0034F7 74 52            [12] 1384 	mov	a,#(___str_26 >> 8)
      0034F9 C0 E0            [24] 1385 	push	acc
      0034FB 74 80            [12] 1386 	mov	a,#0x80
      0034FD C0 E0            [24] 1387 	push	acc
      0034FF 12 3F 56         [24] 1388 	lcall	_printf
      003502 15 81            [12] 1389 	dec	sp
      003504 15 81            [12] 1390 	dec	sp
      003506 15 81            [12] 1391 	dec	sp
                                   1392 ;	8051_i2c_eeprom.c:248: printf("╚══════════════════════════════════════════╝\n\r");
      003508 74 9E            [12] 1393 	mov	a,#___str_27
      00350A C0 E0            [24] 1394 	push	acc
      00350C 74 52            [12] 1395 	mov	a,#(___str_27 >> 8)
      00350E C0 E0            [24] 1396 	push	acc
      003510 74 80            [12] 1397 	mov	a,#0x80
      003512 C0 E0            [24] 1398 	push	acc
      003514 12 3F 56         [24] 1399 	lcall	_printf
      003517 15 81            [12] 1400 	dec	sp
      003519 15 81            [12] 1401 	dec	sp
      00351B 15 81            [12] 1402 	dec	sp
                                   1403 ;	8051_i2c_eeprom.c:249: address_range_flag = 0;
      00351D 90 04 57         [24] 1404 	mov	dptr,#_address_range_flag
      003520 E4               [12] 1405 	clr	a
      003521 F0               [24] 1406 	movx	@dptr,a
      003522 A3               [24] 1407 	inc	dptr
      003523 F0               [24] 1408 	movx	@dptr,a
                                   1409 ;	8051_i2c_eeprom.c:250: return 0;
      003524 90 00 00         [24] 1410 	mov	dptr,#0x0000
      003527 22               [24] 1411 	ret
      003528                       1412 00127$:
                                   1413 ;	8051_i2c_eeprom.c:254: address = address%256;     //word address
      003528 90 04 08         [24] 1414 	mov	dptr,#_take_address_address_65538_72
      00352B EE               [12] 1415 	mov	a,r6
      00352C F0               [24] 1416 	movx	@dptr,a
      00352D E4               [12] 1417 	clr	a
      00352E A3               [24] 1418 	inc	dptr
      00352F F0               [24] 1419 	movx	@dptr,a
                                   1420 ;	8051_i2c_eeprom.c:257: return address;
      003530 90 04 08         [24] 1421 	mov	dptr,#_take_address_address_65538_72
      003533 E0               [24] 1422 	movx	a,@dptr
      003534 FE               [12] 1423 	mov	r6,a
      003535 A3               [24] 1424 	inc	dptr
      003536 E0               [24] 1425 	movx	a,@dptr
                                   1426 ;	8051_i2c_eeprom.c:258: }
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
                                   1438 ;	8051_i2c_eeprom.c:266: unsigned char take_data()
                                   1439 ;	-----------------------------------------
                                   1440 ;	 function take_data
                                   1441 ;	-----------------------------------------
      00353C                       1442 _take_data:
                                   1443 ;	8051_i2c_eeprom.c:268: printf("│ Enter data (hex, up to 2 characters): \n\r|");
      00353C 74 25            [12] 1444 	mov	a,#___str_28
      00353E C0 E0            [24] 1445 	push	acc
      003540 74 53            [12] 1446 	mov	a,#(___str_28 >> 8)
      003542 C0 E0            [24] 1447 	push	acc
      003544 74 80            [12] 1448 	mov	a,#0x80
      003546 C0 E0            [24] 1449 	push	acc
      003548 12 3F 56         [24] 1450 	lcall	_printf
      00354B 15 81            [12] 1451 	dec	sp
      00354D 15 81            [12] 1452 	dec	sp
      00354F 15 81            [12] 1453 	dec	sp
                                   1454 ;	8051_i2c_eeprom.c:269: char input[4] = {0};  // Array for 3 hex chars + null terminator
      003551 90 04 0A         [24] 1455 	mov	dptr,#_take_data_input_65537_78
      003554 E4               [12] 1456 	clr	a
      003555 F0               [24] 1457 	movx	@dptr,a
      003556 90 04 0B         [24] 1458 	mov	dptr,#(_take_data_input_65537_78 + 0x0001)
      003559 F0               [24] 1459 	movx	@dptr,a
      00355A 90 04 0C         [24] 1460 	mov	dptr,#(_take_data_input_65537_78 + 0x0002)
      00355D F0               [24] 1461 	movx	@dptr,a
      00355E 90 04 0D         [24] 1462 	mov	dptr,#(_take_data_input_65537_78 + 0x0003)
      003561 F0               [24] 1463 	movx	@dptr,a
                                   1464 ;	8051_i2c_eeprom.c:273: printf("$ ");
      003562 74 53            [12] 1465 	mov	a,#___str_29
      003564 C0 E0            [24] 1466 	push	acc
      003566 74 53            [12] 1467 	mov	a,#(___str_29 >> 8)
      003568 C0 E0            [24] 1468 	push	acc
      00356A 74 80            [12] 1469 	mov	a,#0x80
      00356C C0 E0            [24] 1470 	push	acc
      00356E 12 3F 56         [24] 1471 	lcall	_printf
      003571 15 81            [12] 1472 	dec	sp
      003573 15 81            [12] 1473 	dec	sp
      003575 15 81            [12] 1474 	dec	sp
                                   1475 ;	8051_i2c_eeprom.c:275: while (i < 3) {
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
                                   1486 ;	8051_i2c_eeprom.c:277: c = getchar();
      003586 C0 07            [24] 1487 	push	ar7
      003588 C0 06            [24] 1488 	push	ar6
      00358A 12 30 81         [24] 1489 	lcall	_getchar
      00358D AC 82            [24] 1490 	mov	r4,dpl
      00358F AD 83            [24] 1491 	mov	r5,dph
      003591 D0 06            [24] 1492 	pop	ar6
      003593 D0 07            [24] 1493 	pop	ar7
                                   1494 ;	8051_i2c_eeprom.c:280: if (c == '\r' || c == '\n') {
      003595 BC 0D 02         [24] 1495 	cjne	r4,#0x0d,00200$
      003598 80 47            [24] 1496 	sjmp	00113$
      00359A                       1497 00200$:
      00359A BC 0A 02         [24] 1498 	cjne	r4,#0x0a,00201$
      00359D 80 42            [24] 1499 	sjmp	00113$
      00359F                       1500 00201$:
                                   1501 ;	8051_i2c_eeprom.c:285: if ((c >= '0' && c <= '9') ||
      00359F BC 30 00         [24] 1502 	cjne	r4,#0x30,00202$
      0035A2                       1503 00202$:
      0035A2 40 05            [24] 1504 	jc	00108$
      0035A4 EC               [12] 1505 	mov	a,r4
      0035A5 24 C6            [12] 1506 	add	a,#0xff - 0x39
      0035A7 50 14            [24] 1507 	jnc	00104$
      0035A9                       1508 00108$:
                                   1509 ;	8051_i2c_eeprom.c:286: (c >= 'a' && c <= 'f') ||
      0035A9 BC 61 00         [24] 1510 	cjne	r4,#0x61,00205$
      0035AC                       1511 00205$:
      0035AC 40 05            [24] 1512 	jc	00110$
      0035AE EC               [12] 1513 	mov	a,r4
      0035AF 24 99            [12] 1514 	add	a,#0xff - 0x66
      0035B1 50 0A            [24] 1515 	jnc	00104$
      0035B3                       1516 00110$:
                                   1517 ;	8051_i2c_eeprom.c:287: (c >= 'A' && c <= 'F')) {
      0035B3 BC 41 00         [24] 1518 	cjne	r4,#0x41,00208$
      0035B6                       1519 00208$:
      0035B6 40 C3            [24] 1520 	jc	00111$
      0035B8 EC               [12] 1521 	mov	a,r4
      0035B9 24 B9            [12] 1522 	add	a,#0xff - 0x46
      0035BB 40 BE            [24] 1523 	jc	00111$
      0035BD                       1524 00104$:
                                   1525 ;	8051_i2c_eeprom.c:289: input[i] = c;
      0035BD EE               [12] 1526 	mov	a,r6
      0035BE 24 0A            [12] 1527 	add	a,#_take_data_input_65537_78
      0035C0 F5 82            [12] 1528 	mov	dpl,a
      0035C2 EF               [12] 1529 	mov	a,r7
      0035C3 34 04            [12] 1530 	addc	a,#(_take_data_input_65537_78 >> 8)
      0035C5 F5 83            [12] 1531 	mov	dph,a
      0035C7 EC               [12] 1532 	mov	a,r4
      0035C8 F0               [24] 1533 	movx	@dptr,a
                                   1534 ;	8051_i2c_eeprom.c:290: putchar(c);  // Echo character back
      0035C9 7D 00            [12] 1535 	mov	r5,#0x00
      0035CB 8C 82            [24] 1536 	mov	dpl,r4
      0035CD 8D 83            [24] 1537 	mov	dph,r5
      0035CF C0 07            [24] 1538 	push	ar7
      0035D1 C0 06            [24] 1539 	push	ar6
      0035D3 12 30 62         [24] 1540 	lcall	_putchar
      0035D6 D0 06            [24] 1541 	pop	ar6
      0035D8 D0 07            [24] 1542 	pop	ar7
                                   1543 ;	8051_i2c_eeprom.c:291: i++;
      0035DA 0E               [12] 1544 	inc	r6
      0035DB BE 00 9D         [24] 1545 	cjne	r6,#0x00,00111$
      0035DE 0F               [12] 1546 	inc	r7
      0035DF 80 9A            [24] 1547 	sjmp	00111$
      0035E1                       1548 00113$:
                                   1549 ;	8051_i2c_eeprom.c:295: input[i] = '\0';  // Null-terminate the string
      0035E1 EE               [12] 1550 	mov	a,r6
      0035E2 24 0A            [12] 1551 	add	a,#_take_data_input_65537_78
      0035E4 F5 82            [12] 1552 	mov	dpl,a
      0035E6 EF               [12] 1553 	mov	a,r7
      0035E7 34 04            [12] 1554 	addc	a,#(_take_data_input_65537_78 >> 8)
      0035E9 F5 83            [12] 1555 	mov	dph,a
      0035EB E4               [12] 1556 	clr	a
      0035EC F0               [24] 1557 	movx	@dptr,a
                                   1558 ;	8051_i2c_eeprom.c:298: unsigned char data = 0;
      0035ED 90 04 0E         [24] 1559 	mov	dptr,#_take_data_data_65538_82
      0035F0 F0               [24] 1560 	movx	@dptr,a
                                   1561 ;	8051_i2c_eeprom.c:299: for (i = 0; input[i] != '\0'; i++) {
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
                                   1576 ;	8051_i2c_eeprom.c:300: data = data * 16;
      003606 90 04 0E         [24] 1577 	mov	dptr,#_take_data_data_65538_82
      003609 E0               [24] 1578 	movx	a,@dptr
      00360A C4               [12] 1579 	swap	a
      00360B 54 F0            [12] 1580 	anl	a,#0xf0
      00360D FC               [12] 1581 	mov	r4,a
      00360E F0               [24] 1582 	movx	@dptr,a
                                   1583 ;	8051_i2c_eeprom.c:301: if (input[i] >= '0' && input[i] <= '9')
      00360F BD 30 00         [24] 1584 	cjne	r5,#0x30,00213$
      003612                       1585 00213$:
      003612 40 12            [24] 1586 	jc	00122$
      003614 ED               [12] 1587 	mov	a,r5
      003615 24 C6            [12] 1588 	add	a,#0xff - 0x39
      003617 40 0D            [24] 1589 	jc	00122$
                                   1590 ;	8051_i2c_eeprom.c:302: data += input[i] - '0';
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
                                   1601 ;	8051_i2c_eeprom.c:303: else if (input[i] >= 'A' && input[i] <= 'F')
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
                                   1616 ;	8051_i2c_eeprom.c:304: data += input[i] - 'A' + 10;
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
                                   1628 ;	8051_i2c_eeprom.c:305: else if (input[i] >= 'a' && input[i] <= 'f')
      00364B BD 61 00         [24] 1629 	cjne	r5,#0x61,00219$
      00364E                       1630 00219$:
      00364E 40 10            [24] 1631 	jc	00130$
      003650 ED               [12] 1632 	mov	a,r5
      003651 24 99            [12] 1633 	add	a,#0xff - 0x66
      003653 40 0B            [24] 1634 	jc	00130$
                                   1635 ;	8051_i2c_eeprom.c:306: data += input[i] - 'a' + 10;
      003655 74 A9            [12] 1636 	mov	a,#0xa9
      003657 2D               [12] 1637 	add	a,r5
      003658 FD               [12] 1638 	mov	r5,a
      003659 90 04 0E         [24] 1639 	mov	dptr,#_take_data_data_65538_82
      00365C E0               [24] 1640 	movx	a,@dptr
      00365D FC               [12] 1641 	mov	r4,a
      00365E 2D               [12] 1642 	add	a,r5
      00365F F0               [24] 1643 	movx	@dptr,a
      003660                       1644 00130$:
                                   1645 ;	8051_i2c_eeprom.c:299: for (i = 0; input[i] != '\0'; i++) {
      003660 0E               [12] 1646 	inc	r6
      003661 BE 00 01         [24] 1647 	cjne	r6,#0x00,00222$
      003664 0F               [12] 1648 	inc	r7
      003665                       1649 00222$:
      003665 02 35 F5         [24] 1650 	ljmp	00129$
      003668                       1651 00125$:
                                   1652 ;	8051_i2c_eeprom.c:309: printf("\n\r│ Entered data: 0x%02X\n\r", data);
      003668 90 04 0E         [24] 1653 	mov	dptr,#_take_data_data_65538_82
      00366B E0               [24] 1654 	movx	a,@dptr
      00366C FF               [12] 1655 	mov	r7,a
      00366D FD               [12] 1656 	mov	r5,a
      00366E 7E 00            [12] 1657 	mov	r6,#0x00
      003670 C0 07            [24] 1658 	push	ar7
      003672 C0 05            [24] 1659 	push	ar5
      003674 C0 06            [24] 1660 	push	ar6
      003676 74 56            [12] 1661 	mov	a,#___str_30
      003678 C0 E0            [24] 1662 	push	acc
      00367A 74 53            [12] 1663 	mov	a,#(___str_30 >> 8)
      00367C C0 E0            [24] 1664 	push	acc
      00367E 74 80            [12] 1665 	mov	a,#0x80
      003680 C0 E0            [24] 1666 	push	acc
      003682 12 3F 56         [24] 1667 	lcall	_printf
      003685 E5 81            [12] 1668 	mov	a,sp
      003687 24 FB            [12] 1669 	add	a,#0xfb
      003689 F5 81            [12] 1670 	mov	sp,a
      00368B D0 07            [24] 1671 	pop	ar7
                                   1672 ;	8051_i2c_eeprom.c:310: if(data > 0xfe)
      00368D EF               [12] 1673 	mov	a,r7
      00368E 24 01            [12] 1674 	add	a,#0xff - 0xfe
      003690 50 20            [24] 1675 	jnc	00127$
                                   1676 ;	8051_i2c_eeprom.c:312: printf("Data out of Range\n\r");
      003692 74 73            [12] 1677 	mov	a,#___str_31
      003694 C0 E0            [24] 1678 	push	acc
      003696 74 53            [12] 1679 	mov	a,#(___str_31 >> 8)
      003698 C0 E0            [24] 1680 	push	acc
      00369A 74 80            [12] 1681 	mov	a,#0x80
      00369C C0 E0            [24] 1682 	push	acc
      00369E 12 3F 56         [24] 1683 	lcall	_printf
      0036A1 15 81            [12] 1684 	dec	sp
      0036A3 15 81            [12] 1685 	dec	sp
      0036A5 15 81            [12] 1686 	dec	sp
                                   1687 ;	8051_i2c_eeprom.c:313: data_range_flag = 0;
      0036A7 90 04 59         [24] 1688 	mov	dptr,#_data_range_flag
      0036AA E4               [12] 1689 	clr	a
      0036AB F0               [24] 1690 	movx	@dptr,a
      0036AC A3               [24] 1691 	inc	dptr
      0036AD F0               [24] 1692 	movx	@dptr,a
                                   1693 ;	8051_i2c_eeprom.c:314: return 0;
      0036AE 75 82 00         [24] 1694 	mov	dpl,#0x00
      0036B1 22               [24] 1695 	ret
      0036B2                       1696 00127$:
                                   1697 ;	8051_i2c_eeprom.c:316: return data;
      0036B2 8F 82            [24] 1698 	mov	dpl,r7
                                   1699 ;	8051_i2c_eeprom.c:318: }
      0036B4 22               [24] 1700 	ret
                                   1701 ;------------------------------------------------------------
                                   1702 ;Allocation info for local variables in function 'eeprom_write'
                                   1703 ;------------------------------------------------------------
                                   1704 ;data                      Allocated with name '_eeprom_write_PARM_2'
                                   1705 ;address                   Allocated with name '_eeprom_write_address_65536_86'
                                   1706 ;i                         Allocated with name '_eeprom_write_i_131072_91'
                                   1707 ;------------------------------------------------------------
                                   1708 ;	8051_i2c_eeprom.c:334: int eeprom_write(unsigned int address, unsigned char data) 
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
                                   1720 ;	8051_i2c_eeprom.c:337: i2c_start();
      0036C0 12 39 F8         [24] 1721 	lcall	_i2c_start
                                   1722 ;	8051_i2c_eeprom.c:340: if(!i2c_write(EEPROM_ID | block | WRITE)) {
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
                                   1735 ;	8051_i2c_eeprom.c:341: printf("Error: No ACK for device address (write)\n\r");
      0036DB 74 87            [12] 1736 	mov	a,#___str_32
      0036DD C0 E0            [24] 1737 	push	acc
      0036DF 74 53            [12] 1738 	mov	a,#(___str_32 >> 8)
      0036E1 C0 E0            [24] 1739 	push	acc
      0036E3 74 80            [12] 1740 	mov	a,#0x80
      0036E5 C0 E0            [24] 1741 	push	acc
      0036E7 12 3F 56         [24] 1742 	lcall	_printf
      0036EA 15 81            [12] 1743 	dec	sp
      0036EC 15 81            [12] 1744 	dec	sp
      0036EE 15 81            [12] 1745 	dec	sp
                                   1746 ;	8051_i2c_eeprom.c:342: i2c_stop();
      0036F0 12 3C F7         [24] 1747 	lcall	_i2c_stop
                                   1748 ;	8051_i2c_eeprom.c:343: return 0;
      0036F3 90 00 00         [24] 1749 	mov	dptr,#0x0000
      0036F6 22               [24] 1750 	ret
      0036F7                       1751 00102$:
                                   1752 ;	8051_i2c_eeprom.c:347: if(!i2c_write((unsigned char)address)) {
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
                                   1770 ;	8051_i2c_eeprom.c:348: printf("Error: No ACK for memory address\n\r");
      003717 74 B2            [12] 1771 	mov	a,#___str_33
      003719 C0 E0            [24] 1772 	push	acc
      00371B 74 53            [12] 1773 	mov	a,#(___str_33 >> 8)
      00371D C0 E0            [24] 1774 	push	acc
      00371F 74 80            [12] 1775 	mov	a,#0x80
      003721 C0 E0            [24] 1776 	push	acc
      003723 12 3F 56         [24] 1777 	lcall	_printf
      003726 15 81            [12] 1778 	dec	sp
      003728 15 81            [12] 1779 	dec	sp
      00372A 15 81            [12] 1780 	dec	sp
                                   1781 ;	8051_i2c_eeprom.c:349: i2c_stop();
      00372C 12 3C F7         [24] 1782 	lcall	_i2c_stop
                                   1783 ;	8051_i2c_eeprom.c:350: return 0;
      00372F 90 00 00         [24] 1784 	mov	dptr,#0x0000
      003732 22               [24] 1785 	ret
      003733                       1786 00104$:
                                   1787 ;	8051_i2c_eeprom.c:354: if(!i2c_write(data)) {
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
                                   1803 ;	8051_i2c_eeprom.c:355: printf("Error: No ACK for data\n\r");
      003752 74 D5            [12] 1804 	mov	a,#___str_34
      003754 C0 E0            [24] 1805 	push	acc
      003756 74 53            [12] 1806 	mov	a,#(___str_34 >> 8)
      003758 C0 E0            [24] 1807 	push	acc
      00375A 74 80            [12] 1808 	mov	a,#0x80
      00375C C0 E0            [24] 1809 	push	acc
      00375E 12 3F 56         [24] 1810 	lcall	_printf
      003761 15 81            [12] 1811 	dec	sp
      003763 15 81            [12] 1812 	dec	sp
      003765 15 81            [12] 1813 	dec	sp
                                   1814 ;	8051_i2c_eeprom.c:356: i2c_stop();
      003767 12 3C F7         [24] 1815 	lcall	_i2c_stop
                                   1816 ;	8051_i2c_eeprom.c:357: return 0;
      00376A 90 00 00         [24] 1817 	mov	dptr,#0x0000
      00376D 22               [24] 1818 	ret
      00376E                       1819 00106$:
                                   1820 ;	8051_i2c_eeprom.c:360: i2c_stop();
      00376E C0 07            [24] 1821 	push	ar7
      003770 C0 06            [24] 1822 	push	ar6
      003772 C0 05            [24] 1823 	push	ar5
      003774 12 3C F7         [24] 1824 	lcall	_i2c_stop
      003777 D0 05            [24] 1825 	pop	ar5
      003779 D0 06            [24] 1826 	pop	ar6
      00377B D0 07            [24] 1827 	pop	ar7
                                   1828 ;	8051_i2c_eeprom.c:362: for(int i = 0; i<10; i++)
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
                                   1839 ;	8051_i2c_eeprom.c:364: i2c_delay();
      00378C C0 07            [24] 1840 	push	ar7
      00378E C0 06            [24] 1841 	push	ar6
      003790 C0 05            [24] 1842 	push	ar5
      003792 C0 04            [24] 1843 	push	ar4
      003794 C0 03            [24] 1844 	push	ar3
      003796 12 3D 30         [24] 1845 	lcall	_i2c_delay
      003799 D0 03            [24] 1846 	pop	ar3
      00379B D0 04            [24] 1847 	pop	ar4
      00379D D0 05            [24] 1848 	pop	ar5
      00379F D0 06            [24] 1849 	pop	ar6
      0037A1 D0 07            [24] 1850 	pop	ar7
                                   1851 ;	8051_i2c_eeprom.c:362: for(int i = 0; i<10; i++)
      0037A3 0B               [12] 1852 	inc	r3
      0037A4 BB 00 DA         [24] 1853 	cjne	r3,#0x00,00109$
      0037A7 0C               [12] 1854 	inc	r4
      0037A8 80 D7            [24] 1855 	sjmp	00109$
      0037AA                       1856 00107$:
                                   1857 ;	8051_i2c_eeprom.c:367: printf("| Writing at Address 0x%03X Data 0x%02X          |\n\r", address, data);
      0037AA 7C 00            [12] 1858 	mov	r4,#0x00
      0037AC C0 05            [24] 1859 	push	ar5
      0037AE C0 04            [24] 1860 	push	ar4
      0037B0 C0 06            [24] 1861 	push	ar6
      0037B2 C0 07            [24] 1862 	push	ar7
      0037B4 74 EE            [12] 1863 	mov	a,#___str_35
      0037B6 C0 E0            [24] 1864 	push	acc
      0037B8 74 53            [12] 1865 	mov	a,#(___str_35 >> 8)
      0037BA C0 E0            [24] 1866 	push	acc
      0037BC 74 80            [12] 1867 	mov	a,#0x80
      0037BE C0 E0            [24] 1868 	push	acc
      0037C0 12 3F 56         [24] 1869 	lcall	_printf
      0037C3 E5 81            [12] 1870 	mov	a,sp
      0037C5 24 F9            [12] 1871 	add	a,#0xf9
      0037C7 F5 81            [12] 1872 	mov	sp,a
                                   1873 ;	8051_i2c_eeprom.c:368: printf("│ Write successful!                             │\n\r");
      0037C9 74 23            [12] 1874 	mov	a,#___str_36
      0037CB C0 E0            [24] 1875 	push	acc
      0037CD 74 54            [12] 1876 	mov	a,#(___str_36 >> 8)
      0037CF C0 E0            [24] 1877 	push	acc
      0037D1 74 80            [12] 1878 	mov	a,#0x80
      0037D3 C0 E0            [24] 1879 	push	acc
      0037D5 12 3F 56         [24] 1880 	lcall	_printf
      0037D8 15 81            [12] 1881 	dec	sp
      0037DA 15 81            [12] 1882 	dec	sp
      0037DC 15 81            [12] 1883 	dec	sp
                                   1884 ;	8051_i2c_eeprom.c:369: printf("└───────────────────────────────────────────────┘\n\r");
      0037DE 74 5B            [12] 1885 	mov	a,#___str_37
      0037E0 C0 E0            [24] 1886 	push	acc
      0037E2 74 54            [12] 1887 	mov	a,#(___str_37 >> 8)
      0037E4 C0 E0            [24] 1888 	push	acc
      0037E6 74 80            [12] 1889 	mov	a,#0x80
      0037E8 C0 E0            [24] 1890 	push	acc
      0037EA 12 3F 56         [24] 1891 	lcall	_printf
      0037ED 15 81            [12] 1892 	dec	sp
      0037EF 15 81            [12] 1893 	dec	sp
      0037F1 15 81            [12] 1894 	dec	sp
                                   1895 ;	8051_i2c_eeprom.c:370: return 1;  // Success
      0037F3 90 00 01         [24] 1896 	mov	dptr,#0x0001
                                   1897 ;	8051_i2c_eeprom.c:380: }
      0037F6 22               [24] 1898 	ret
                                   1899 ;------------------------------------------------------------
                                   1900 ;Allocation info for local variables in function 'eeprom_read'
                                   1901 ;------------------------------------------------------------
                                   1902 ;address                   Allocated with name '_eeprom_read_address_65536_93'
                                   1903 ;result                    Allocated with name '_eeprom_read_result_65536_94'
                                   1904 ;------------------------------------------------------------
                                   1905 ;	8051_i2c_eeprom.c:396: int eeprom_read(unsigned int address)
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
                                   1917 ;	8051_i2c_eeprom.c:402: i2c_start();
      003802 12 39 F8         [24] 1918 	lcall	_i2c_start
                                   1919 ;	8051_i2c_eeprom.c:405: if(!i2c_write(EEPROM_ID | WRITE)) {
      003805 75 82 A0         [24] 1920 	mov	dpl,#0xa0
      003808 12 39 0B         [24] 1921 	lcall	_i2c_write
      00380B E5 82            [12] 1922 	mov	a,dpl
      00380D 85 83 F0         [24] 1923 	mov	b,dph
      003810 45 F0            [12] 1924 	orl	a,b
      003812 70 1C            [24] 1925 	jnz	00102$
                                   1926 ;	8051_i2c_eeprom.c:406: printf("Error: No ACK for device address (write mode)\n\r");
      003814 74 F1            [12] 1927 	mov	a,#___str_38
      003816 C0 E0            [24] 1928 	push	acc
      003818 74 54            [12] 1929 	mov	a,#(___str_38 >> 8)
      00381A C0 E0            [24] 1930 	push	acc
      00381C 74 80            [12] 1931 	mov	a,#0x80
      00381E C0 E0            [24] 1932 	push	acc
      003820 12 3F 56         [24] 1933 	lcall	_printf
      003823 15 81            [12] 1934 	dec	sp
      003825 15 81            [12] 1935 	dec	sp
      003827 15 81            [12] 1936 	dec	sp
                                   1937 ;	8051_i2c_eeprom.c:407: i2c_stop();
      003829 12 3C F7         [24] 1938 	lcall	_i2c_stop
                                   1939 ;	8051_i2c_eeprom.c:408: return -1;
      00382C 90 FF FF         [24] 1940 	mov	dptr,#0xffff
      00382F 22               [24] 1941 	ret
      003830                       1942 00102$:
                                   1943 ;	8051_i2c_eeprom.c:412: if(!i2c_write((unsigned char)address)) {
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
                                   1961 ;	8051_i2c_eeprom.c:413: printf("Error: No ACK for memory address\n\r");
      003850 74 B2            [12] 1962 	mov	a,#___str_33
      003852 C0 E0            [24] 1963 	push	acc
      003854 74 53            [12] 1964 	mov	a,#(___str_33 >> 8)
      003856 C0 E0            [24] 1965 	push	acc
      003858 74 80            [12] 1966 	mov	a,#0x80
      00385A C0 E0            [24] 1967 	push	acc
      00385C 12 3F 56         [24] 1968 	lcall	_printf
      00385F 15 81            [12] 1969 	dec	sp
      003861 15 81            [12] 1970 	dec	sp
      003863 15 81            [12] 1971 	dec	sp
                                   1972 ;	8051_i2c_eeprom.c:414: i2c_stop();
      003865 12 3C F7         [24] 1973 	lcall	_i2c_stop
                                   1974 ;	8051_i2c_eeprom.c:415: return -1;
      003868 90 FF FF         [24] 1975 	mov	dptr,#0xffff
      00386B 22               [24] 1976 	ret
      00386C                       1977 00104$:
                                   1978 ;	8051_i2c_eeprom.c:419: i2c_start();
      00386C C0 07            [24] 1979 	push	ar7
      00386E C0 06            [24] 1980 	push	ar6
      003870 12 39 F8         [24] 1981 	lcall	_i2c_start
                                   1982 ;	8051_i2c_eeprom.c:422: if(!i2c_write(EEPROM_ID | READ)) {
      003873 75 82 A1         [24] 1983 	mov	dpl,#0xa1
      003876 12 39 0B         [24] 1984 	lcall	_i2c_write
      003879 E5 82            [12] 1985 	mov	a,dpl
      00387B 85 83 F0         [24] 1986 	mov	b,dph
      00387E D0 06            [24] 1987 	pop	ar6
      003880 D0 07            [24] 1988 	pop	ar7
      003882 45 F0            [12] 1989 	orl	a,b
      003884 70 1C            [24] 1990 	jnz	00106$
                                   1991 ;	8051_i2c_eeprom.c:423: printf("Error: No ACK for device address (read mode)\n\r");
      003886 74 21            [12] 1992 	mov	a,#___str_39
      003888 C0 E0            [24] 1993 	push	acc
      00388A 74 55            [12] 1994 	mov	a,#(___str_39 >> 8)
      00388C C0 E0            [24] 1995 	push	acc
      00388E 74 80            [12] 1996 	mov	a,#0x80
      003890 C0 E0            [24] 1997 	push	acc
      003892 12 3F 56         [24] 1998 	lcall	_printf
      003895 15 81            [12] 1999 	dec	sp
      003897 15 81            [12] 2000 	dec	sp
      003899 15 81            [12] 2001 	dec	sp
                                   2002 ;	8051_i2c_eeprom.c:424: i2c_stop();
      00389B 12 3C F7         [24] 2003 	lcall	_i2c_stop
                                   2004 ;	8051_i2c_eeprom.c:425: return -1;
      00389E 90 FF FF         [24] 2005 	mov	dptr,#0xffff
      0038A1 22               [24] 2006 	ret
      0038A2                       2007 00106$:
                                   2008 ;	8051_i2c_eeprom.c:429: result = i2c_read(0);  // 0 means send NACK
      0038A2 90 00 00         [24] 2009 	mov	dptr,#0x0000
      0038A5 C0 07            [24] 2010 	push	ar7
      0038A7 C0 06            [24] 2011 	push	ar6
      0038A9 12 39 73         [24] 2012 	lcall	_i2c_read
      0038AC AC 82            [24] 2013 	mov	r4,dpl
      0038AE D0 06            [24] 2014 	pop	ar6
      0038B0 D0 07            [24] 2015 	pop	ar7
                                   2016 ;	8051_i2c_eeprom.c:431: printf("| 0x%03X : 0x%02X \n\r", address, result);
      0038B2 7D 00            [12] 2017 	mov	r5,#0x00
      0038B4 C0 05            [24] 2018 	push	ar5
      0038B6 C0 04            [24] 2019 	push	ar4
      0038B8 C0 04            [24] 2020 	push	ar4
      0038BA C0 05            [24] 2021 	push	ar5
      0038BC C0 06            [24] 2022 	push	ar6
      0038BE C0 07            [24] 2023 	push	ar7
      0038C0 74 50            [12] 2024 	mov	a,#___str_40
      0038C2 C0 E0            [24] 2025 	push	acc
      0038C4 74 55            [12] 2026 	mov	a,#(___str_40 >> 8)
      0038C6 C0 E0            [24] 2027 	push	acc
      0038C8 74 80            [12] 2028 	mov	a,#0x80
      0038CA C0 E0            [24] 2029 	push	acc
      0038CC 12 3F 56         [24] 2030 	lcall	_printf
      0038CF E5 81            [12] 2031 	mov	a,sp
      0038D1 24 F9            [12] 2032 	add	a,#0xf9
      0038D3 F5 81            [12] 2033 	mov	sp,a
                                   2034 ;	8051_i2c_eeprom.c:432: printf("│ Read successful!                 │\n\r");
      0038D5 74 65            [12] 2035 	mov	a,#___str_41
      0038D7 C0 E0            [24] 2036 	push	acc
      0038D9 74 55            [12] 2037 	mov	a,#(___str_41 >> 8)
      0038DB C0 E0            [24] 2038 	push	acc
      0038DD 74 80            [12] 2039 	mov	a,#0x80
      0038DF C0 E0            [24] 2040 	push	acc
      0038E1 12 3F 56         [24] 2041 	lcall	_printf
      0038E4 15 81            [12] 2042 	dec	sp
      0038E6 15 81            [12] 2043 	dec	sp
      0038E8 15 81            [12] 2044 	dec	sp
                                   2045 ;	8051_i2c_eeprom.c:433: printf("└───────────────────────────────────────────────┘\n\r");
      0038EA 74 5B            [12] 2046 	mov	a,#___str_37
      0038EC C0 E0            [24] 2047 	push	acc
      0038EE 74 54            [12] 2048 	mov	a,#(___str_37 >> 8)
      0038F0 C0 E0            [24] 2049 	push	acc
      0038F2 74 80            [12] 2050 	mov	a,#0x80
      0038F4 C0 E0            [24] 2051 	push	acc
      0038F6 12 3F 56         [24] 2052 	lcall	_printf
      0038F9 15 81            [12] 2053 	dec	sp
      0038FB 15 81            [12] 2054 	dec	sp
      0038FD 15 81            [12] 2055 	dec	sp
                                   2056 ;	8051_i2c_eeprom.c:434: i2c_stop();
      0038FF 12 3C F7         [24] 2057 	lcall	_i2c_stop
      003902 D0 04            [24] 2058 	pop	ar4
      003904 D0 05            [24] 2059 	pop	ar5
                                   2060 ;	8051_i2c_eeprom.c:435: return result;
      003906 8C 82            [24] 2061 	mov	dpl,r4
      003908 8D 83            [24] 2062 	mov	dph,r5
                                   2063 ;	8051_i2c_eeprom.c:436: }
      00390A 22               [24] 2064 	ret
                                   2065 ;------------------------------------------------------------
                                   2066 ;Allocation info for local variables in function 'i2c_write'
                                   2067 ;------------------------------------------------------------
                                   2068 ;data                      Allocated with name '_i2c_write_data_65536_98'
                                   2069 ;i                         Allocated with name '_i2c_write_i_65536_99'
                                   2070 ;------------------------------------------------------------
                                   2071 ;	8051_i2c_eeprom.c:447: int i2c_write(unsigned char data)
                                   2072 ;	-----------------------------------------
                                   2073 ;	 function i2c_write
                                   2074 ;	-----------------------------------------
      00390B                       2075 _i2c_write:
      00390B E5 82            [12] 2076 	mov	a,dpl
      00390D 90 04 14         [24] 2077 	mov	dptr,#_i2c_write_data_65536_98
      003910 F0               [24] 2078 	movx	@dptr,a
                                   2079 ;	8051_i2c_eeprom.c:451: for(i=0;i<=7;i++)
      003911 7E 00            [12] 2080 	mov	r6,#0x00
      003913 7F 00            [12] 2081 	mov	r7,#0x00
      003915                       2082 00104$:
                                   2083 ;	8051_i2c_eeprom.c:453: SDA = (data & 0x80) ? 1 : 0;    //msb first
      003915 90 04 14         [24] 2084 	mov	dptr,#_i2c_write_data_65536_98
      003918 E0               [24] 2085 	movx	a,@dptr
      003919 FD               [12] 2086 	mov	r5,a
      00391A 23               [12] 2087 	rl	a
      00391B 54 01            [12] 2088 	anl	a,#0x01
      00391D 24 FF            [12] 2089 	add	a,#0xff
      00391F 92 94            [24] 2090 	mov	_P1_4,c
                                   2091 ;	8051_i2c_eeprom.c:454: i2c_delay();        // Setup time for data
      003921 C0 07            [24] 2092 	push	ar7
      003923 C0 06            [24] 2093 	push	ar6
      003925 C0 05            [24] 2094 	push	ar5
      003927 12 3D 30         [24] 2095 	lcall	_i2c_delay
                                   2096 ;	8051_i2c_eeprom.c:455: SCL=1;
                                   2097 ;	assignBit
      00392A D2 93            [12] 2098 	setb	_P1_3
                                   2099 ;	8051_i2c_eeprom.c:456: i2c_delay();        // Hold time for clock
      00392C 12 3D 30         [24] 2100 	lcall	_i2c_delay
      00392F D0 05            [24] 2101 	pop	ar5
      003931 D0 06            [24] 2102 	pop	ar6
      003933 D0 07            [24] 2103 	pop	ar7
                                   2104 ;	8051_i2c_eeprom.c:457: SCL=0;
                                   2105 ;	assignBit
      003935 C2 93            [12] 2106 	clr	_P1_3
                                   2107 ;	8051_i2c_eeprom.c:458: data = data << 1;
      003937 ED               [12] 2108 	mov	a,r5
      003938 2D               [12] 2109 	add	a,r5
      003939 90 04 14         [24] 2110 	mov	dptr,#_i2c_write_data_65536_98
      00393C F0               [24] 2111 	movx	@dptr,a
                                   2112 ;	8051_i2c_eeprom.c:451: for(i=0;i<=7;i++)
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
                                   2123 ;	8051_i2c_eeprom.c:462: SDA = 1;            // Release SDA for slave
                                   2124 ;	assignBit
      00394A D2 94            [12] 2125 	setb	_P1_4
                                   2126 ;	8051_i2c_eeprom.c:463: SCL = 1;            // 9th clock pulse for ACK
                                   2127 ;	assignBit
      00394C D2 93            [12] 2128 	setb	_P1_3
                                   2129 ;	8051_i2c_eeprom.c:464: i2c_delay();
      00394E 12 3D 30         [24] 2130 	lcall	_i2c_delay
                                   2131 ;	8051_i2c_eeprom.c:465: if(SDA == 1)        // If SDA is still high, no ACK received
      003951 30 94 19         [24] 2132 	jnb	_P1_4,00103$
                                   2133 ;	8051_i2c_eeprom.c:468: printf("ACK DID NOT ARRIVE\n\r");
      003954 74 90            [12] 2134 	mov	a,#___str_42
      003956 C0 E0            [24] 2135 	push	acc
      003958 74 55            [12] 2136 	mov	a,#(___str_42 >> 8)
      00395A C0 E0            [24] 2137 	push	acc
      00395C 74 80            [12] 2138 	mov	a,#0x80
      00395E C0 E0            [24] 2139 	push	acc
      003960 12 3F 56         [24] 2140 	lcall	_printf
      003963 15 81            [12] 2141 	dec	sp
      003965 15 81            [12] 2142 	dec	sp
      003967 15 81            [12] 2143 	dec	sp
                                   2144 ;	8051_i2c_eeprom.c:469: return 0;       // Error
      003969 90 00 00         [24] 2145 	mov	dptr,#0x0000
      00396C 22               [24] 2146 	ret
      00396D                       2147 00103$:
                                   2148 ;	8051_i2c_eeprom.c:471: SCL = 0;
                                   2149 ;	assignBit
      00396D C2 93            [12] 2150 	clr	_P1_3
                                   2151 ;	8051_i2c_eeprom.c:473: return 1;           // Success
      00396F 90 00 01         [24] 2152 	mov	dptr,#0x0001
                                   2153 ;	8051_i2c_eeprom.c:475: }
      003972 22               [24] 2154 	ret
                                   2155 ;------------------------------------------------------------
                                   2156 ;Allocation info for local variables in function 'i2c_read'
                                   2157 ;------------------------------------------------------------
                                   2158 ;ACK                       Allocated with name '_i2c_read_ACK_65536_103'
                                   2159 ;buff                      Allocated with name '_i2c_read_buff_65536_104'
                                   2160 ;i                         Allocated with name '_i2c_read_i_131072_105'
                                   2161 ;------------------------------------------------------------
                                   2162 ;	8051_i2c_eeprom.c:485: int i2c_read(int ACK)
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
                                   2174 ;	8051_i2c_eeprom.c:487: unsigned char buff=0;
      00397E 90 04 17         [24] 2175 	mov	dptr,#_i2c_read_buff_65536_104
      003981 E4               [12] 2176 	clr	a
      003982 F0               [24] 2177 	movx	@dptr,a
                                   2178 ;	8051_i2c_eeprom.c:488: SCL = 0;
                                   2179 ;	assignBit
      003983 C2 93            [12] 2180 	clr	_P1_3
                                   2181 ;	8051_i2c_eeprom.c:489: for(int i=0;i<8;i++)
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
                                   2192 ;	8051_i2c_eeprom.c:491: SCL = 1;
                                   2193 ;	assignBit
      003994 D2 93            [12] 2194 	setb	_P1_3
                                   2195 ;	8051_i2c_eeprom.c:492: i2c_delay();
      003996 C0 07            [24] 2196 	push	ar7
      003998 C0 06            [24] 2197 	push	ar6
      00399A 12 3D 30         [24] 2198 	lcall	_i2c_delay
      00399D D0 06            [24] 2199 	pop	ar6
      00399F D0 07            [24] 2200 	pop	ar7
                                   2201 ;	8051_i2c_eeprom.c:493: buff |= (SDA << (7 - i));
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
                                   2224 ;	8051_i2c_eeprom.c:494: i2c_delay();
      0039C0 C0 07            [24] 2225 	push	ar7
      0039C2 C0 06            [24] 2226 	push	ar6
      0039C4 12 3D 30         [24] 2227 	lcall	_i2c_delay
      0039C7 D0 06            [24] 2228 	pop	ar6
      0039C9 D0 07            [24] 2229 	pop	ar7
                                   2230 ;	8051_i2c_eeprom.c:495: SCL=0;
                                   2231 ;	assignBit
      0039CB C2 93            [12] 2232 	clr	_P1_3
                                   2233 ;	8051_i2c_eeprom.c:489: for(int i=0;i<8;i++)
      0039CD 0E               [12] 2234 	inc	r6
      0039CE BE 00 B8         [24] 2235 	cjne	r6,#0x00,00103$
      0039D1 0F               [12] 2236 	inc	r7
      0039D2 80 B5            [24] 2237 	sjmp	00103$
      0039D4                       2238 00101$:
                                   2239 ;	8051_i2c_eeprom.c:499: SDA = !ACK;         // ACK = 0, NACK = 1
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
                                   2252 ;	8051_i2c_eeprom.c:500: SCL = 1;
                                   2253 ;	assignBit
      0039E5 D2 93            [12] 2254 	setb	_P1_3
                                   2255 ;	8051_i2c_eeprom.c:501: i2c_delay();
      0039E7 12 3D 30         [24] 2256 	lcall	_i2c_delay
                                   2257 ;	8051_i2c_eeprom.c:502: SCL = 0;
                                   2258 ;	assignBit
      0039EA C2 93            [12] 2259 	clr	_P1_3
                                   2260 ;	8051_i2c_eeprom.c:504: return buff;
      0039EC 90 04 17         [24] 2261 	mov	dptr,#_i2c_read_buff_65536_104
      0039EF E0               [24] 2262 	movx	a,@dptr
      0039F0 FF               [12] 2263 	mov	r7,a
      0039F1 7E 00            [12] 2264 	mov	r6,#0x00
      0039F3 8F 82            [24] 2265 	mov	dpl,r7
      0039F5 8E 83            [24] 2266 	mov	dph,r6
                                   2267 ;	8051_i2c_eeprom.c:505: }
      0039F7 22               [24] 2268 	ret
                                   2269 ;------------------------------------------------------------
                                   2270 ;Allocation info for local variables in function 'i2c_start'
                                   2271 ;------------------------------------------------------------
                                   2272 ;	8051_i2c_eeprom.c:512: void i2c_start(void)
                                   2273 ;	-----------------------------------------
                                   2274 ;	 function i2c_start
                                   2275 ;	-----------------------------------------
      0039F8                       2276 _i2c_start:
                                   2277 ;	8051_i2c_eeprom.c:514: i2c_delay();
      0039F8 12 3D 30         [24] 2278 	lcall	_i2c_delay
                                   2279 ;	8051_i2c_eeprom.c:515: SDA = 1;
                                   2280 ;	assignBit
      0039FB D2 94            [12] 2281 	setb	_P1_4
                                   2282 ;	8051_i2c_eeprom.c:516: i2c_delay();
      0039FD 12 3D 30         [24] 2283 	lcall	_i2c_delay
                                   2284 ;	8051_i2c_eeprom.c:517: SCL = 1;
                                   2285 ;	assignBit
      003A00 D2 93            [12] 2286 	setb	_P1_3
                                   2287 ;	8051_i2c_eeprom.c:518: i2c_delay();
      003A02 12 3D 30         [24] 2288 	lcall	_i2c_delay
                                   2289 ;	8051_i2c_eeprom.c:519: SDA = 0;
                                   2290 ;	assignBit
      003A05 C2 94            [12] 2291 	clr	_P1_4
                                   2292 ;	8051_i2c_eeprom.c:520: i2c_delay();
      003A07 12 3D 30         [24] 2293 	lcall	_i2c_delay
                                   2294 ;	8051_i2c_eeprom.c:521: SCL = 0;
                                   2295 ;	assignBit
      003A0A C2 93            [12] 2296 	clr	_P1_3
                                   2297 ;	8051_i2c_eeprom.c:522: }
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
                                   2308 ;result                    Allocated with name '_EEPROM_hexump_result_393216_115'
                                   2309 ;------------------------------------------------------------
                                   2310 ;	8051_i2c_eeprom.c:530: int EEPROM_hexump(uint16_t start_address, uint16_t end_address)
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
                                   2322 ;	8051_i2c_eeprom.c:554: printf("\r\n");
      003A18 74 A5            [12] 2323 	mov	a,#___str_43
      003A1A C0 E0            [24] 2324 	push	acc
      003A1C 74 55            [12] 2325 	mov	a,#(___str_43 >> 8)
      003A1E C0 E0            [24] 2326 	push	acc
      003A20 74 80            [12] 2327 	mov	a,#0x80
      003A22 C0 E0            [24] 2328 	push	acc
      003A24 12 3F 56         [24] 2329 	lcall	_printf
      003A27 15 81            [12] 2330 	dec	sp
      003A29 15 81            [12] 2331 	dec	sp
      003A2B 15 81            [12] 2332 	dec	sp
                                   2333 ;	8051_i2c_eeprom.c:555: printf("\r\n----------------------------------------------------------------");
      003A2D 74 A8            [12] 2334 	mov	a,#___str_44
      003A2F C0 E0            [24] 2335 	push	acc
      003A31 74 55            [12] 2336 	mov	a,#(___str_44 >> 8)
      003A33 C0 E0            [24] 2337 	push	acc
      003A35 74 80            [12] 2338 	mov	a,#0x80
      003A37 C0 E0            [24] 2339 	push	acc
      003A39 12 3F 56         [24] 2340 	lcall	_printf
      003A3C 15 81            [12] 2341 	dec	sp
      003A3E 15 81            [12] 2342 	dec	sp
      003A40 15 81            [12] 2343 	dec	sp
                                   2344 ;	8051_i2c_eeprom.c:556: printf("\r\n                    EEPROM Hex Dump                             ");
      003A42 74 EB            [12] 2345 	mov	a,#___str_45
      003A44 C0 E0            [24] 2346 	push	acc
      003A46 74 55            [12] 2347 	mov	a,#(___str_45 >> 8)
      003A48 C0 E0            [24] 2348 	push	acc
      003A4A 74 80            [12] 2349 	mov	a,#0x80
      003A4C C0 E0            [24] 2350 	push	acc
      003A4E 12 3F 56         [24] 2351 	lcall	_printf
      003A51 15 81            [12] 2352 	dec	sp
      003A53 15 81            [12] 2353 	dec	sp
      003A55 15 81            [12] 2354 	dec	sp
                                   2355 ;	8051_i2c_eeprom.c:557: printf("\r\n----------------------------------------------------------------\r\n");
      003A57 74 2E            [12] 2356 	mov	a,#___str_46
      003A59 C0 E0            [24] 2357 	push	acc
      003A5B 74 56            [12] 2358 	mov	a,#(___str_46 >> 8)
      003A5D C0 E0            [24] 2359 	push	acc
      003A5F 74 80            [12] 2360 	mov	a,#0x80
      003A61 C0 E0            [24] 2361 	push	acc
      003A63 12 3F 56         [24] 2362 	lcall	_printf
      003A66 15 81            [12] 2363 	dec	sp
      003A68 15 81            [12] 2364 	dec	sp
      003A6A 15 81            [12] 2365 	dec	sp
                                   2366 ;	8051_i2c_eeprom.c:559: for (uint16_t address = start_address; address <= end_address; address += MAX_HEX_CHAR_IN_SINGLE_LINE) {
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
      003A84                       2385 00116$:
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
      003A91 50 03            [24] 2397 	jnc	00152$
      003A93 02 3C 45         [24] 2398 	ljmp	00111$
      003A96                       2399 00152$:
                                   2400 ;	8051_i2c_eeprom.c:561: printf("%03X: ", address);
      003A96 C0 07            [24] 2401 	push	ar7
      003A98 C0 06            [24] 2402 	push	ar6
      003A9A C0 04            [24] 2403 	push	ar4
      003A9C C0 05            [24] 2404 	push	ar5
      003A9E 74 73            [12] 2405 	mov	a,#___str_47
      003AA0 C0 E0            [24] 2406 	push	acc
      003AA2 74 56            [12] 2407 	mov	a,#(___str_47 >> 8)
      003AA4 C0 E0            [24] 2408 	push	acc
      003AA6 74 80            [12] 2409 	mov	a,#0x80
      003AA8 C0 E0            [24] 2410 	push	acc
      003AAA 12 3F 56         [24] 2411 	lcall	_printf
      003AAD E5 81            [12] 2412 	mov	a,sp
      003AAF 24 FB            [12] 2413 	add	a,#0xfb
      003AB1 F5 81            [12] 2414 	mov	sp,a
      003AB3 D0 06            [24] 2415 	pop	ar6
      003AB5 D0 07            [24] 2416 	pop	ar7
                                   2417 ;	8051_i2c_eeprom.c:564: for (int offset = 0; offset < MAX_HEX_CHAR_IN_SINGLE_LINE; offset++) {
      003AB7 7C 00            [12] 2418 	mov	r4,#0x00
      003AB9 7D 00            [12] 2419 	mov	r5,#0x00
      003ABB                       2420 00113$:
      003ABB C3               [12] 2421 	clr	c
      003ABC EC               [12] 2422 	mov	a,r4
      003ABD 94 10            [12] 2423 	subb	a,#0x10
      003ABF ED               [12] 2424 	mov	a,r5
      003AC0 64 80            [12] 2425 	xrl	a,#0x80
      003AC2 94 80            [12] 2426 	subb	a,#0x80
      003AC4 40 03            [24] 2427 	jc	00153$
      003AC6 02 3C 0E         [24] 2428 	ljmp	00110$
      003AC9                       2429 00153$:
                                   2430 ;	8051_i2c_eeprom.c:565: uint16_t current_address = address + offset;
      003AC9 90 04 1C         [24] 2431 	mov	dptr,#_EEPROM_hexump_address_131072_111
      003ACC E0               [24] 2432 	movx	a,@dptr
      003ACD FA               [12] 2433 	mov	r2,a
      003ACE A3               [24] 2434 	inc	dptr
      003ACF E0               [24] 2435 	movx	a,@dptr
      003AD0 FB               [12] 2436 	mov	r3,a
      003AD1 8A 08            [24] 2437 	mov	_EEPROM_hexump_sloc0_1_0,r2
      003AD3 8B 09            [24] 2438 	mov	(_EEPROM_hexump_sloc0_1_0 + 1),r3
      003AD5 8C 00            [24] 2439 	mov	ar0,r4
      003AD7 8D 01            [24] 2440 	mov	ar1,r5
      003AD9 E8               [12] 2441 	mov	a,r0
      003ADA 25 08            [12] 2442 	add	a,_EEPROM_hexump_sloc0_1_0
      003ADC F8               [12] 2443 	mov	r0,a
      003ADD E9               [12] 2444 	mov	a,r1
      003ADE 35 09            [12] 2445 	addc	a,(_EEPROM_hexump_sloc0_1_0 + 1)
      003AE0 F9               [12] 2446 	mov	r1,a
                                   2447 ;	8051_i2c_eeprom.c:567: if (current_address <= end_address) {
      003AE1 C3               [12] 2448 	clr	c
      003AE2 EE               [12] 2449 	mov	a,r6
      003AE3 98               [12] 2450 	subb	a,r0
      003AE4 EF               [12] 2451 	mov	a,r7
      003AE5 99               [12] 2452 	subb	a,r1
      003AE6 50 03            [24] 2453 	jnc	00154$
      003AE8 02 3B E1         [24] 2454 	ljmp	00108$
      003AEB                       2455 00154$:
                                   2456 ;	8051_i2c_eeprom.c:573: i2c_start();
      003AEB C0 07            [24] 2457 	push	ar7
      003AED C0 06            [24] 2458 	push	ar6
      003AEF C0 05            [24] 2459 	push	ar5
      003AF1 C0 04            [24] 2460 	push	ar4
      003AF3 C0 03            [24] 2461 	push	ar3
      003AF5 C0 02            [24] 2462 	push	ar2
      003AF7 12 39 F8         [24] 2463 	lcall	_i2c_start
                                   2464 ;	8051_i2c_eeprom.c:576: if(!i2c_write(EEPROM_ID | WRITE)) {
      003AFA 75 82 A0         [24] 2465 	mov	dpl,#0xa0
      003AFD 12 39 0B         [24] 2466 	lcall	_i2c_write
      003B00 E5 82            [12] 2467 	mov	a,dpl
      003B02 85 83 F0         [24] 2468 	mov	b,dph
      003B05 D0 02            [24] 2469 	pop	ar2
      003B07 D0 03            [24] 2470 	pop	ar3
      003B09 D0 04            [24] 2471 	pop	ar4
      003B0B D0 05            [24] 2472 	pop	ar5
      003B0D D0 06            [24] 2473 	pop	ar6
      003B0F D0 07            [24] 2474 	pop	ar7
      003B11 45 F0            [12] 2475 	orl	a,b
      003B13 70 1C            [24] 2476 	jnz	00102$
                                   2477 ;	8051_i2c_eeprom.c:577: printf("Error: No ACK for device address (write mode)\n\r");
      003B15 74 F1            [12] 2478 	mov	a,#___str_38
      003B17 C0 E0            [24] 2479 	push	acc
      003B19 74 54            [12] 2480 	mov	a,#(___str_38 >> 8)
      003B1B C0 E0            [24] 2481 	push	acc
      003B1D 74 80            [12] 2482 	mov	a,#0x80
      003B1F C0 E0            [24] 2483 	push	acc
      003B21 12 3F 56         [24] 2484 	lcall	_printf
      003B24 15 81            [12] 2485 	dec	sp
      003B26 15 81            [12] 2486 	dec	sp
      003B28 15 81            [12] 2487 	dec	sp
                                   2488 ;	8051_i2c_eeprom.c:578: i2c_stop();
      003B2A 12 3C F7         [24] 2489 	lcall	_i2c_stop
                                   2490 ;	8051_i2c_eeprom.c:579: return -1;
      003B2D 90 FF FF         [24] 2491 	mov	dptr,#0xffff
      003B30 22               [24] 2492 	ret
      003B31                       2493 00102$:
                                   2494 ;	8051_i2c_eeprom.c:583: if(!i2c_write((unsigned char)address)) {
      003B31 8A 82            [24] 2495 	mov	dpl,r2
      003B33 C0 07            [24] 2496 	push	ar7
      003B35 C0 06            [24] 2497 	push	ar6
      003B37 C0 05            [24] 2498 	push	ar5
      003B39 C0 04            [24] 2499 	push	ar4
      003B3B 12 39 0B         [24] 2500 	lcall	_i2c_write
      003B3E E5 82            [12] 2501 	mov	a,dpl
      003B40 85 83 F0         [24] 2502 	mov	b,dph
      003B43 D0 04            [24] 2503 	pop	ar4
      003B45 D0 05            [24] 2504 	pop	ar5
      003B47 D0 06            [24] 2505 	pop	ar6
      003B49 D0 07            [24] 2506 	pop	ar7
      003B4B 45 F0            [12] 2507 	orl	a,b
      003B4D 70 1C            [24] 2508 	jnz	00104$
                                   2509 ;	8051_i2c_eeprom.c:584: printf("Error: No ACK for memory address\n\r");
      003B4F 74 B2            [12] 2510 	mov	a,#___str_33
      003B51 C0 E0            [24] 2511 	push	acc
      003B53 74 53            [12] 2512 	mov	a,#(___str_33 >> 8)
      003B55 C0 E0            [24] 2513 	push	acc
      003B57 74 80            [12] 2514 	mov	a,#0x80
      003B59 C0 E0            [24] 2515 	push	acc
      003B5B 12 3F 56         [24] 2516 	lcall	_printf
      003B5E 15 81            [12] 2517 	dec	sp
      003B60 15 81            [12] 2518 	dec	sp
      003B62 15 81            [12] 2519 	dec	sp
                                   2520 ;	8051_i2c_eeprom.c:585: i2c_stop();
      003B64 12 3C F7         [24] 2521 	lcall	_i2c_stop
                                   2522 ;	8051_i2c_eeprom.c:586: return -1;
      003B67 90 FF FF         [24] 2523 	mov	dptr,#0xffff
      003B6A 22               [24] 2524 	ret
      003B6B                       2525 00104$:
                                   2526 ;	8051_i2c_eeprom.c:590: i2c_start();
      003B6B C0 07            [24] 2527 	push	ar7
      003B6D C0 06            [24] 2528 	push	ar6
      003B6F C0 05            [24] 2529 	push	ar5
      003B71 C0 04            [24] 2530 	push	ar4
      003B73 12 39 F8         [24] 2531 	lcall	_i2c_start
                                   2532 ;	8051_i2c_eeprom.c:593: if(!i2c_write(EEPROM_ID | READ)) {
      003B76 75 82 A1         [24] 2533 	mov	dpl,#0xa1
      003B79 12 39 0B         [24] 2534 	lcall	_i2c_write
      003B7C E5 82            [12] 2535 	mov	a,dpl
      003B7E 85 83 F0         [24] 2536 	mov	b,dph
      003B81 D0 04            [24] 2537 	pop	ar4
      003B83 D0 05            [24] 2538 	pop	ar5
      003B85 D0 06            [24] 2539 	pop	ar6
      003B87 D0 07            [24] 2540 	pop	ar7
      003B89 45 F0            [12] 2541 	orl	a,b
      003B8B 70 1C            [24] 2542 	jnz	00106$
                                   2543 ;	8051_i2c_eeprom.c:594: printf("Error: No ACK for device address (read mode)\n\r");
      003B8D 74 21            [12] 2544 	mov	a,#___str_39
      003B8F C0 E0            [24] 2545 	push	acc
      003B91 74 55            [12] 2546 	mov	a,#(___str_39 >> 8)
      003B93 C0 E0            [24] 2547 	push	acc
      003B95 74 80            [12] 2548 	mov	a,#0x80
      003B97 C0 E0            [24] 2549 	push	acc
      003B99 12 3F 56         [24] 2550 	lcall	_printf
      003B9C 15 81            [12] 2551 	dec	sp
      003B9E 15 81            [12] 2552 	dec	sp
      003BA0 15 81            [12] 2553 	dec	sp
                                   2554 ;	8051_i2c_eeprom.c:595: i2c_stop();
      003BA2 12 3C F7         [24] 2555 	lcall	_i2c_stop
                                   2556 ;	8051_i2c_eeprom.c:596: return -1;
      003BA5 90 FF FF         [24] 2557 	mov	dptr,#0xffff
      003BA8 22               [24] 2558 	ret
      003BA9                       2559 00106$:
                                   2560 ;	8051_i2c_eeprom.c:600: result = i2c_read(0);  // 0 means send NACK
      003BA9 90 00 00         [24] 2561 	mov	dptr,#0x0000
      003BAC C0 07            [24] 2562 	push	ar7
      003BAE C0 06            [24] 2563 	push	ar6
      003BB0 C0 05            [24] 2564 	push	ar5
      003BB2 C0 04            [24] 2565 	push	ar4
      003BB4 12 39 73         [24] 2566 	lcall	_i2c_read
      003BB7 AA 82            [24] 2567 	mov	r2,dpl
                                   2568 ;	8051_i2c_eeprom.c:601: printf("%02X ", result);
      003BB9 7B 00            [12] 2569 	mov	r3,#0x00
      003BBB C0 02            [24] 2570 	push	ar2
      003BBD C0 03            [24] 2571 	push	ar3
      003BBF 74 7A            [12] 2572 	mov	a,#___str_48
      003BC1 C0 E0            [24] 2573 	push	acc
      003BC3 74 56            [12] 2574 	mov	a,#(___str_48 >> 8)
      003BC5 C0 E0            [24] 2575 	push	acc
      003BC7 74 80            [12] 2576 	mov	a,#0x80
      003BC9 C0 E0            [24] 2577 	push	acc
      003BCB 12 3F 56         [24] 2578 	lcall	_printf
      003BCE E5 81            [12] 2579 	mov	a,sp
      003BD0 24 FB            [12] 2580 	add	a,#0xfb
      003BD2 F5 81            [12] 2581 	mov	sp,a
                                   2582 ;	8051_i2c_eeprom.c:602: i2c_stop();
      003BD4 12 3C F7         [24] 2583 	lcall	_i2c_stop
      003BD7 D0 04            [24] 2584 	pop	ar4
      003BD9 D0 05            [24] 2585 	pop	ar5
      003BDB D0 06            [24] 2586 	pop	ar6
      003BDD D0 07            [24] 2587 	pop	ar7
      003BDF 80 25            [24] 2588 	sjmp	00114$
      003BE1                       2589 00108$:
                                   2590 ;	8051_i2c_eeprom.c:606: printf("   "); // Space for missing bytes if end_address reached mid-line
      003BE1 C0 07            [24] 2591 	push	ar7
      003BE3 C0 06            [24] 2592 	push	ar6
      003BE5 C0 05            [24] 2593 	push	ar5
      003BE7 C0 04            [24] 2594 	push	ar4
      003BE9 74 80            [12] 2595 	mov	a,#___str_49
      003BEB C0 E0            [24] 2596 	push	acc
      003BED 74 56            [12] 2597 	mov	a,#(___str_49 >> 8)
      003BEF C0 E0            [24] 2598 	push	acc
      003BF1 74 80            [12] 2599 	mov	a,#0x80
      003BF3 C0 E0            [24] 2600 	push	acc
      003BF5 12 3F 56         [24] 2601 	lcall	_printf
      003BF8 15 81            [12] 2602 	dec	sp
      003BFA 15 81            [12] 2603 	dec	sp
      003BFC 15 81            [12] 2604 	dec	sp
      003BFE D0 04            [24] 2605 	pop	ar4
      003C00 D0 05            [24] 2606 	pop	ar5
      003C02 D0 06            [24] 2607 	pop	ar6
      003C04 D0 07            [24] 2608 	pop	ar7
      003C06                       2609 00114$:
                                   2610 ;	8051_i2c_eeprom.c:564: for (int offset = 0; offset < MAX_HEX_CHAR_IN_SINGLE_LINE; offset++) {
      003C06 0C               [12] 2611 	inc	r4
      003C07 BC 00 01         [24] 2612 	cjne	r4,#0x00,00158$
      003C0A 0D               [12] 2613 	inc	r5
      003C0B                       2614 00158$:
      003C0B 02 3A BB         [24] 2615 	ljmp	00113$
      003C0E                       2616 00110$:
                                   2617 ;	8051_i2c_eeprom.c:611: printf("\r\n");
      003C0E C0 07            [24] 2618 	push	ar7
      003C10 C0 06            [24] 2619 	push	ar6
      003C12 74 A5            [12] 2620 	mov	a,#___str_43
      003C14 C0 E0            [24] 2621 	push	acc
      003C16 74 55            [12] 2622 	mov	a,#(___str_43 >> 8)
      003C18 C0 E0            [24] 2623 	push	acc
      003C1A 74 80            [12] 2624 	mov	a,#0x80
      003C1C C0 E0            [24] 2625 	push	acc
      003C1E 12 3F 56         [24] 2626 	lcall	_printf
      003C21 15 81            [12] 2627 	dec	sp
      003C23 15 81            [12] 2628 	dec	sp
      003C25 15 81            [12] 2629 	dec	sp
      003C27 D0 06            [24] 2630 	pop	ar6
      003C29 D0 07            [24] 2631 	pop	ar7
                                   2632 ;	8051_i2c_eeprom.c:559: for (uint16_t address = start_address; address <= end_address; address += MAX_HEX_CHAR_IN_SINGLE_LINE) {
      003C2B 90 04 1C         [24] 2633 	mov	dptr,#_EEPROM_hexump_address_131072_111
      003C2E E0               [24] 2634 	movx	a,@dptr
      003C2F FC               [12] 2635 	mov	r4,a
      003C30 A3               [24] 2636 	inc	dptr
      003C31 E0               [24] 2637 	movx	a,@dptr
      003C32 FD               [12] 2638 	mov	r5,a
      003C33 74 10            [12] 2639 	mov	a,#0x10
      003C35 2C               [12] 2640 	add	a,r4
      003C36 FC               [12] 2641 	mov	r4,a
      003C37 E4               [12] 2642 	clr	a
      003C38 3D               [12] 2643 	addc	a,r5
      003C39 FD               [12] 2644 	mov	r5,a
      003C3A 90 04 1C         [24] 2645 	mov	dptr,#_EEPROM_hexump_address_131072_111
      003C3D EC               [12] 2646 	mov	a,r4
      003C3E F0               [24] 2647 	movx	@dptr,a
      003C3F ED               [12] 2648 	mov	a,r5
      003C40 A3               [24] 2649 	inc	dptr
      003C41 F0               [24] 2650 	movx	@dptr,a
      003C42 02 3A 84         [24] 2651 	ljmp	00116$
      003C45                       2652 00111$:
                                   2653 ;	8051_i2c_eeprom.c:613: printf("\r\n");
      003C45 74 A5            [12] 2654 	mov	a,#___str_43
      003C47 C0 E0            [24] 2655 	push	acc
      003C49 74 55            [12] 2656 	mov	a,#(___str_43 >> 8)
      003C4B C0 E0            [24] 2657 	push	acc
      003C4D 74 80            [12] 2658 	mov	a,#0x80
      003C4F C0 E0            [24] 2659 	push	acc
      003C51 12 3F 56         [24] 2660 	lcall	_printf
      003C54 15 81            [12] 2661 	dec	sp
      003C56 15 81            [12] 2662 	dec	sp
      003C58 15 81            [12] 2663 	dec	sp
                                   2664 ;	8051_i2c_eeprom.c:614: return 1;
      003C5A 90 00 01         [24] 2665 	mov	dptr,#0x0001
                                   2666 ;	8051_i2c_eeprom.c:615: }
      003C5D 22               [24] 2667 	ret
                                   2668 ;------------------------------------------------------------
                                   2669 ;Allocation info for local variables in function 'handler_EEPROM_hexdump'
                                   2670 ;------------------------------------------------------------
                                   2671 ;start_addr                Allocated with name '_handler_EEPROM_hexdump_start_addr_65536_121'
                                   2672 ;end_addr                  Allocated with name '_handler_EEPROM_hexdump_end_addr_65537_124'
                                   2673 ;------------------------------------------------------------
                                   2674 ;	8051_i2c_eeprom.c:622: void handler_EEPROM_hexdump(void)
                                   2675 ;	-----------------------------------------
                                   2676 ;	 function handler_EEPROM_hexdump
                                   2677 ;	-----------------------------------------
      003C5E                       2678 _handler_EEPROM_hexdump:
                                   2679 ;	8051_i2c_eeprom.c:625: printf_tiny("\033[1;33m\n\rEnter Start Address for HEX Dump\r\n");
      003C5E 74 84            [12] 2680 	mov	a,#___str_50
      003C60 C0 E0            [24] 2681 	push	acc
      003C62 74 56            [12] 2682 	mov	a,#(___str_50 >> 8)
      003C64 C0 E0            [24] 2683 	push	acc
      003C66 12 3D FF         [24] 2684 	lcall	_printf_tiny
      003C69 15 81            [12] 2685 	dec	sp
      003C6B 15 81            [12] 2686 	dec	sp
                                   2687 ;	8051_i2c_eeprom.c:626: start_addr = take_address();
      003C6D 12 33 23         [24] 2688 	lcall	_take_address
      003C70 AE 82            [24] 2689 	mov	r6,dpl
      003C72 AF 83            [24] 2690 	mov	r7,dph
      003C74 8E 04            [24] 2691 	mov	ar4,r6
      003C76 8F 05            [24] 2692 	mov	ar5,r7
      003C78 7E 00            [12] 2693 	mov	r6,#0x00
      003C7A 7F 00            [12] 2694 	mov	r7,#0x00
                                   2695 ;	8051_i2c_eeprom.c:628: if(start_addr >= 0 && start_addr <= ADDR_MAX)
      003C7C C3               [12] 2696 	clr	c
      003C7D 74 FF            [12] 2697 	mov	a,#0xff
      003C7F 9C               [12] 2698 	subb	a,r4
      003C80 74 07            [12] 2699 	mov	a,#0x07
      003C82 9D               [12] 2700 	subb	a,r5
      003C83 E4               [12] 2701 	clr	a
      003C84 9E               [12] 2702 	subb	a,r6
      003C85 E4               [12] 2703 	clr	a
      003C86 9F               [12] 2704 	subb	a,r7
      003C87 50 16            [24] 2705 	jnc	00103$
                                   2706 ;	8051_i2c_eeprom.c:633: printf("\033[1;31m\n\rInvalid Start Address Range!!\n\r Address has to be between 0x000 to 0x7FF\033[0m\r\n");
      003C89 74 B0            [12] 2707 	mov	a,#___str_51
      003C8B C0 E0            [24] 2708 	push	acc
      003C8D 74 56            [12] 2709 	mov	a,#(___str_51 >> 8)
      003C8F C0 E0            [24] 2710 	push	acc
      003C91 74 80            [12] 2711 	mov	a,#0x80
      003C93 C0 E0            [24] 2712 	push	acc
      003C95 12 3F 56         [24] 2713 	lcall	_printf
      003C98 15 81            [12] 2714 	dec	sp
      003C9A 15 81            [12] 2715 	dec	sp
      003C9C 15 81            [12] 2716 	dec	sp
                                   2717 ;	8051_i2c_eeprom.c:634: return;
      003C9E 22               [24] 2718 	ret
      003C9F                       2719 00103$:
                                   2720 ;	8051_i2c_eeprom.c:639: printf_tiny("\033[1;33m\n\rEnter End Address for HEX Dump\r\n");
      003C9F C0 07            [24] 2721 	push	ar7
      003CA1 C0 06            [24] 2722 	push	ar6
      003CA3 C0 05            [24] 2723 	push	ar5
      003CA5 C0 04            [24] 2724 	push	ar4
      003CA7 74 08            [12] 2725 	mov	a,#___str_52
      003CA9 C0 E0            [24] 2726 	push	acc
      003CAB 74 57            [12] 2727 	mov	a,#(___str_52 >> 8)
      003CAD C0 E0            [24] 2728 	push	acc
      003CAF 12 3D FF         [24] 2729 	lcall	_printf_tiny
      003CB2 15 81            [12] 2730 	dec	sp
      003CB4 15 81            [12] 2731 	dec	sp
                                   2732 ;	8051_i2c_eeprom.c:640: end_addr = take_address();
      003CB6 12 33 23         [24] 2733 	lcall	_take_address
      003CB9 AA 82            [24] 2734 	mov	r2,dpl
      003CBB AB 83            [24] 2735 	mov	r3,dph
      003CBD D0 04            [24] 2736 	pop	ar4
      003CBF D0 05            [24] 2737 	pop	ar5
      003CC1 D0 06            [24] 2738 	pop	ar6
      003CC3 D0 07            [24] 2739 	pop	ar7
                                   2740 ;	8051_i2c_eeprom.c:642: if(end_addr >= 0 && end_addr <= ADDR_MAX)
      003CC5 8A 00            [24] 2741 	mov	ar0,r2
      003CC7 8B 01            [24] 2742 	mov	ar1,r3
      003CC9 C3               [12] 2743 	clr	c
      003CCA 74 FF            [12] 2744 	mov	a,#0xff
      003CCC 98               [12] 2745 	subb	a,r0
      003CCD 74 07            [12] 2746 	mov	a,#0x07
      003CCF 99               [12] 2747 	subb	a,r1
      003CD0 50 16            [24] 2748 	jnc	00107$
                                   2749 ;	8051_i2c_eeprom.c:647: printf("\033[1;31m\n\rInvalid End Address Range!!\n\r Address has to be between 0x000 to 0x7FF\033[0m\r\n");
      003CD2 74 32            [12] 2750 	mov	a,#___str_53
      003CD4 C0 E0            [24] 2751 	push	acc
      003CD6 74 57            [12] 2752 	mov	a,#(___str_53 >> 8)
      003CD8 C0 E0            [24] 2753 	push	acc
      003CDA 74 80            [12] 2754 	mov	a,#0x80
      003CDC C0 E0            [24] 2755 	push	acc
      003CDE 12 3F 56         [24] 2756 	lcall	_printf
      003CE1 15 81            [12] 2757 	dec	sp
      003CE3 15 81            [12] 2758 	dec	sp
      003CE5 15 81            [12] 2759 	dec	sp
                                   2760 ;	8051_i2c_eeprom.c:648: return;
      003CE7 22               [24] 2761 	ret
      003CE8                       2762 00107$:
                                   2763 ;	8051_i2c_eeprom.c:651: EEPROM_hexump(start_addr,end_addr);
      003CE8 90 04 18         [24] 2764 	mov	dptr,#_EEPROM_hexump_PARM_2
      003CEB EA               [12] 2765 	mov	a,r2
      003CEC F0               [24] 2766 	movx	@dptr,a
      003CED EB               [12] 2767 	mov	a,r3
      003CEE A3               [24] 2768 	inc	dptr
      003CEF F0               [24] 2769 	movx	@dptr,a
      003CF0 8C 82            [24] 2770 	mov	dpl,r4
      003CF2 8D 83            [24] 2771 	mov	dph,r5
                                   2772 ;	8051_i2c_eeprom.c:652: }
      003CF4 02 3A 0D         [24] 2773 	ljmp	_EEPROM_hexump
                                   2774 ;------------------------------------------------------------
                                   2775 ;Allocation info for local variables in function 'i2c_stop'
                                   2776 ;------------------------------------------------------------
                                   2777 ;	8051_i2c_eeprom.c:659: void i2c_stop(void)
                                   2778 ;	-----------------------------------------
                                   2779 ;	 function i2c_stop
                                   2780 ;	-----------------------------------------
      003CF7                       2781 _i2c_stop:
                                   2782 ;	8051_i2c_eeprom.c:661: SDA = 0;
                                   2783 ;	assignBit
      003CF7 C2 94            [12] 2784 	clr	_P1_4
                                   2785 ;	8051_i2c_eeprom.c:662: i2c_delay();
      003CF9 12 3D 30         [24] 2786 	lcall	_i2c_delay
                                   2787 ;	8051_i2c_eeprom.c:663: SCL = 1;
                                   2788 ;	assignBit
      003CFC D2 93            [12] 2789 	setb	_P1_3
                                   2790 ;	8051_i2c_eeprom.c:664: i2c_delay();
      003CFE 12 3D 30         [24] 2791 	lcall	_i2c_delay
                                   2792 ;	8051_i2c_eeprom.c:665: SDA = 1; 
                                   2793 ;	assignBit
      003D01 D2 94            [12] 2794 	setb	_P1_4
                                   2795 ;	8051_i2c_eeprom.c:666: }
      003D03 22               [24] 2796 	ret
                                   2797 ;------------------------------------------------------------
                                   2798 ;Allocation info for local variables in function 'eeprom_reset'
                                   2799 ;------------------------------------------------------------
                                   2800 ;i                         Allocated with name '_eeprom_reset_i_131072_130'
                                   2801 ;------------------------------------------------------------
                                   2802 ;	8051_i2c_eeprom.c:676: void eeprom_reset()
                                   2803 ;	-----------------------------------------
                                   2804 ;	 function eeprom_reset
                                   2805 ;	-----------------------------------------
      003D04                       2806 _eeprom_reset:
                                   2807 ;	8051_i2c_eeprom.c:678: i2c_start();
      003D04 12 39 F8         [24] 2808 	lcall	_i2c_start
                                   2809 ;	8051_i2c_eeprom.c:679: SDA = 0;
                                   2810 ;	assignBit
      003D07 C2 94            [12] 2811 	clr	_P1_4
                                   2812 ;	8051_i2c_eeprom.c:680: SDA = 1;
                                   2813 ;	assignBit
      003D09 D2 94            [12] 2814 	setb	_P1_4
                                   2815 ;	8051_i2c_eeprom.c:681: for(int i = 0; i<10; i++)
      003D0B 7E 00            [12] 2816 	mov	r6,#0x00
      003D0D 7F 00            [12] 2817 	mov	r7,#0x00
      003D0F                       2818 00103$:
      003D0F C3               [12] 2819 	clr	c
      003D10 EE               [12] 2820 	mov	a,r6
      003D11 94 0A            [12] 2821 	subb	a,#0x0a
      003D13 EF               [12] 2822 	mov	a,r7
      003D14 64 80            [12] 2823 	xrl	a,#0x80
      003D16 94 80            [12] 2824 	subb	a,#0x80
      003D18 50 0B            [24] 2825 	jnc	00101$
                                   2826 ;	8051_i2c_eeprom.c:683: SCL = 0;
                                   2827 ;	assignBit
      003D1A C2 93            [12] 2828 	clr	_P1_3
                                   2829 ;	8051_i2c_eeprom.c:684: SCL = 1;
                                   2830 ;	assignBit
      003D1C D2 93            [12] 2831 	setb	_P1_3
                                   2832 ;	8051_i2c_eeprom.c:681: for(int i = 0; i<10; i++)
      003D1E 0E               [12] 2833 	inc	r6
      003D1F BE 00 ED         [24] 2834 	cjne	r6,#0x00,00103$
      003D22 0F               [12] 2835 	inc	r7
      003D23 80 EA            [24] 2836 	sjmp	00103$
      003D25                       2837 00101$:
                                   2838 ;	8051_i2c_eeprom.c:686: i2c_start();
      003D25 12 39 F8         [24] 2839 	lcall	_i2c_start
                                   2840 ;	8051_i2c_eeprom.c:687: SDA = 0;
                                   2841 ;	assignBit
      003D28 C2 94            [12] 2842 	clr	_P1_4
                                   2843 ;	8051_i2c_eeprom.c:688: i2c_stop();
      003D2A 12 3C F7         [24] 2844 	lcall	_i2c_stop
                                   2845 ;	8051_i2c_eeprom.c:689: SDA = 1;
                                   2846 ;	assignBit
      003D2D D2 94            [12] 2847 	setb	_P1_4
                                   2848 ;	8051_i2c_eeprom.c:690: }
      003D2F 22               [24] 2849 	ret
                                   2850 ;------------------------------------------------------------
                                   2851 ;Allocation info for local variables in function 'i2c_delay'
                                   2852 ;------------------------------------------------------------
                                   2853 ;i                         Allocated with name '_i2c_delay_i_131072_133'
                                   2854 ;------------------------------------------------------------
                                   2855 ;	8051_i2c_eeprom.c:699: void i2c_delay() 
                                   2856 ;	-----------------------------------------
                                   2857 ;	 function i2c_delay
                                   2858 ;	-----------------------------------------
      003D30                       2859 _i2c_delay:
                                   2860 ;	8051_i2c_eeprom.c:707: for(int i = 0; i<500; i++);
      003D30 7E 00            [12] 2861 	mov	r6,#0x00
      003D32 7F 00            [12] 2862 	mov	r7,#0x00
      003D34                       2863 00103$:
      003D34 C3               [12] 2864 	clr	c
      003D35 EE               [12] 2865 	mov	a,r6
      003D36 94 F4            [12] 2866 	subb	a,#0xf4
      003D38 EF               [12] 2867 	mov	a,r7
      003D39 64 80            [12] 2868 	xrl	a,#0x80
      003D3B 94 81            [12] 2869 	subb	a,#0x81
      003D3D 50 07            [24] 2870 	jnc	00105$
      003D3F 0E               [12] 2871 	inc	r6
      003D40 BE 00 F1         [24] 2872 	cjne	r6,#0x00,00103$
      003D43 0F               [12] 2873 	inc	r7
      003D44 80 EE            [24] 2874 	sjmp	00103$
      003D46                       2875 00105$:
                                   2876 ;	8051_i2c_eeprom.c:708: }
      003D46 22               [24] 2877 	ret
                                   2878 ;------------------------------------------------------------
                                   2879 ;Allocation info for local variables in function 'test_function'
                                   2880 ;------------------------------------------------------------
                                   2881 ;test_data                 Allocated with name '_test_function_test_data_65537_135'
                                   2882 ;address                   Allocated with name '_test_function_address_65537_135'
                                   2883 ;i                         Allocated with name '_test_function_i_131073_136'
                                   2884 ;read_data                 Allocated with name '_test_function_read_data_65538_138'
                                   2885 ;------------------------------------------------------------
                                   2886 ;	8051_i2c_eeprom.c:710: void test_function()
                                   2887 ;	-----------------------------------------
                                   2888 ;	 function test_function
                                   2889 ;	-----------------------------------------
      003D47                       2890 _test_function:
                                   2891 ;	8051_i2c_eeprom.c:712: i2c_start();
      003D47 12 39 F8         [24] 2892 	lcall	_i2c_start
                                   2893 ;	8051_i2c_eeprom.c:713: i2c_delay();
      003D4A 12 3D 30         [24] 2894 	lcall	_i2c_delay
                                   2895 ;	8051_i2c_eeprom.c:719: printf("Writing data 0x%02X to address 0x%02X\n\r", test_data, address);
      003D4D 74 02            [12] 2896 	mov	a,#0x02
      003D4F C0 E0            [24] 2897 	push	acc
      003D51 E4               [12] 2898 	clr	a
      003D52 C0 E0            [24] 2899 	push	acc
      003D54 74 26            [12] 2900 	mov	a,#0x26
      003D56 C0 E0            [24] 2901 	push	acc
      003D58 E4               [12] 2902 	clr	a
      003D59 C0 E0            [24] 2903 	push	acc
      003D5B 74 88            [12] 2904 	mov	a,#___str_54
      003D5D C0 E0            [24] 2905 	push	acc
      003D5F 74 57            [12] 2906 	mov	a,#(___str_54 >> 8)
      003D61 C0 E0            [24] 2907 	push	acc
      003D63 74 80            [12] 2908 	mov	a,#0x80
      003D65 C0 E0            [24] 2909 	push	acc
      003D67 12 3F 56         [24] 2910 	lcall	_printf
      003D6A E5 81            [12] 2911 	mov	a,sp
      003D6C 24 F9            [12] 2912 	add	a,#0xf9
      003D6E F5 81            [12] 2913 	mov	sp,a
                                   2914 ;	8051_i2c_eeprom.c:720: eeprom_write(address, test_data);
      003D70 90 04 0F         [24] 2915 	mov	dptr,#_eeprom_write_PARM_2
      003D73 74 26            [12] 2916 	mov	a,#0x26
      003D75 F0               [24] 2917 	movx	@dptr,a
      003D76 90 00 02         [24] 2918 	mov	dptr,#0x0002
      003D79 12 36 B5         [24] 2919 	lcall	_eeprom_write
                                   2920 ;	8051_i2c_eeprom.c:721: i2c_stop();
      003D7C 12 3C F7         [24] 2921 	lcall	_i2c_stop
                                   2922 ;	8051_i2c_eeprom.c:723: for(int i = 0; i<100; i++)
      003D7F 7E 00            [12] 2923 	mov	r6,#0x00
      003D81 7F 00            [12] 2924 	mov	r7,#0x00
      003D83                       2925 00106$:
      003D83 C3               [12] 2926 	clr	c
      003D84 EE               [12] 2927 	mov	a,r6
      003D85 94 64            [12] 2928 	subb	a,#0x64
      003D87 EF               [12] 2929 	mov	a,r7
      003D88 64 80            [12] 2930 	xrl	a,#0x80
      003D8A 94 80            [12] 2931 	subb	a,#0x80
      003D8C 50 12            [24] 2932 	jnc	00101$
                                   2933 ;	8051_i2c_eeprom.c:725: i2c_delay();
      003D8E C0 07            [24] 2934 	push	ar7
      003D90 C0 06            [24] 2935 	push	ar6
      003D92 12 3D 30         [24] 2936 	lcall	_i2c_delay
      003D95 D0 06            [24] 2937 	pop	ar6
      003D97 D0 07            [24] 2938 	pop	ar7
                                   2939 ;	8051_i2c_eeprom.c:723: for(int i = 0; i<100; i++)
      003D99 0E               [12] 2940 	inc	r6
      003D9A BE 00 E6         [24] 2941 	cjne	r6,#0x00,00106$
      003D9D 0F               [12] 2942 	inc	r7
      003D9E 80 E3            [24] 2943 	sjmp	00106$
      003DA0                       2944 00101$:
                                   2945 ;	8051_i2c_eeprom.c:729: unsigned char read_data = eeprom_read(address);
      003DA0 90 00 02         [24] 2946 	mov	dptr,#0x0002
      003DA3 12 37 F7         [24] 2947 	lcall	_eeprom_read
      003DA6 AE 82            [24] 2948 	mov	r6,dpl
                                   2949 ;	8051_i2c_eeprom.c:730: printf("Read back from address 0x%02X: 0x%02X\n\r", address, read_data);
      003DA8 8E 05            [24] 2950 	mov	ar5,r6
      003DAA 7F 00            [12] 2951 	mov	r7,#0x00
      003DAC C0 06            [24] 2952 	push	ar6
      003DAE C0 05            [24] 2953 	push	ar5
      003DB0 C0 07            [24] 2954 	push	ar7
      003DB2 74 02            [12] 2955 	mov	a,#0x02
      003DB4 C0 E0            [24] 2956 	push	acc
      003DB6 E4               [12] 2957 	clr	a
      003DB7 C0 E0            [24] 2958 	push	acc
      003DB9 74 B0            [12] 2959 	mov	a,#___str_55
      003DBB C0 E0            [24] 2960 	push	acc
      003DBD 74 57            [12] 2961 	mov	a,#(___str_55 >> 8)
      003DBF C0 E0            [24] 2962 	push	acc
      003DC1 74 80            [12] 2963 	mov	a,#0x80
      003DC3 C0 E0            [24] 2964 	push	acc
      003DC5 12 3F 56         [24] 2965 	lcall	_printf
      003DC8 E5 81            [12] 2966 	mov	a,sp
      003DCA 24 F9            [12] 2967 	add	a,#0xf9
      003DCC F5 81            [12] 2968 	mov	sp,a
      003DCE D0 06            [24] 2969 	pop	ar6
                                   2970 ;	8051_i2c_eeprom.c:733: if(read_data == test_data) {
      003DD0 BE 26 16         [24] 2971 	cjne	r6,#0x26,00103$
                                   2972 ;	8051_i2c_eeprom.c:734: printf("MATCH - Write/Read successful!\n\r");
      003DD3 74 D8            [12] 2973 	mov	a,#___str_56
      003DD5 C0 E0            [24] 2974 	push	acc
      003DD7 74 57            [12] 2975 	mov	a,#(___str_56 >> 8)
      003DD9 C0 E0            [24] 2976 	push	acc
      003DDB 74 80            [12] 2977 	mov	a,#0x80
      003DDD C0 E0            [24] 2978 	push	acc
      003DDF 12 3F 56         [24] 2979 	lcall	_printf
      003DE2 15 81            [12] 2980 	dec	sp
      003DE4 15 81            [12] 2981 	dec	sp
      003DE6 15 81            [12] 2982 	dec	sp
      003DE8 22               [24] 2983 	ret
      003DE9                       2984 00103$:
                                   2985 ;	8051_i2c_eeprom.c:736: printf("ERROR - Data mismatch!\n\r");
      003DE9 74 F9            [12] 2986 	mov	a,#___str_57
      003DEB C0 E0            [24] 2987 	push	acc
      003DED 74 57            [12] 2988 	mov	a,#(___str_57 >> 8)
      003DEF C0 E0            [24] 2989 	push	acc
      003DF1 74 80            [12] 2990 	mov	a,#0x80
      003DF3 C0 E0            [24] 2991 	push	acc
      003DF5 12 3F 56         [24] 2992 	lcall	_printf
      003DF8 15 81            [12] 2993 	dec	sp
      003DFA 15 81            [12] 2994 	dec	sp
      003DFC 15 81            [12] 2995 	dec	sp
                                   2996 ;	8051_i2c_eeprom.c:740: }
      003DFE 22               [24] 2997 	ret
                                   2998 	.area CSEG    (CODE)
                                   2999 	.area CONST   (CODE)
                                   3000 	.area CONST   (CODE)
      0049B8                       3001 ___str_0:
      0049B8 0A                    3002 	.db 0x0a
      0049B9 E2                    3003 	.db 0xe2
      0049BA 95                    3004 	.db 0x95
      0049BB 94                    3005 	.db 0x94
      0049BC E2                    3006 	.db 0xe2
      0049BD 95                    3007 	.db 0x95
      0049BE 90                    3008 	.db 0x90
      0049BF E2                    3009 	.db 0xe2
      0049C0 95                    3010 	.db 0x95
      0049C1 90                    3011 	.db 0x90
      0049C2 E2                    3012 	.db 0xe2
      0049C3 95                    3013 	.db 0x95
      0049C4 90                    3014 	.db 0x90
      0049C5 E2                    3015 	.db 0xe2
      0049C6 95                    3016 	.db 0x95
      0049C7 90                    3017 	.db 0x90
      0049C8 E2                    3018 	.db 0xe2
      0049C9 95                    3019 	.db 0x95
      0049CA 90                    3020 	.db 0x90
      0049CB E2                    3021 	.db 0xe2
      0049CC 95                    3022 	.db 0x95
      0049CD 90                    3023 	.db 0x90
      0049CE E2                    3024 	.db 0xe2
      0049CF 95                    3025 	.db 0x95
      0049D0 90                    3026 	.db 0x90
      0049D1 E2                    3027 	.db 0xe2
      0049D2 95                    3028 	.db 0x95
      0049D3 90                    3029 	.db 0x90
      0049D4 E2                    3030 	.db 0xe2
      0049D5 95                    3031 	.db 0x95
      0049D6 90                    3032 	.db 0x90
      0049D7 E2                    3033 	.db 0xe2
      0049D8 95                    3034 	.db 0x95
      0049D9 90                    3035 	.db 0x90
      0049DA E2                    3036 	.db 0xe2
      0049DB 95                    3037 	.db 0x95
      0049DC 90                    3038 	.db 0x90
      0049DD E2                    3039 	.db 0xe2
      0049DE 95                    3040 	.db 0x95
      0049DF 90                    3041 	.db 0x90
      0049E0 E2                    3042 	.db 0xe2
      0049E1 95                    3043 	.db 0x95
      0049E2 90                    3044 	.db 0x90
      0049E3 E2                    3045 	.db 0xe2
      0049E4 95                    3046 	.db 0x95
      0049E5 90                    3047 	.db 0x90
      0049E6 E2                    3048 	.db 0xe2
      0049E7 95                    3049 	.db 0x95
      0049E8 90                    3050 	.db 0x90
      0049E9 E2                    3051 	.db 0xe2
      0049EA 95                    3052 	.db 0x95
      0049EB 90                    3053 	.db 0x90
      0049EC E2                    3054 	.db 0xe2
      0049ED 95                    3055 	.db 0x95
      0049EE 90                    3056 	.db 0x90
      0049EF E2                    3057 	.db 0xe2
      0049F0 95                    3058 	.db 0x95
      0049F1 90                    3059 	.db 0x90
      0049F2 E2                    3060 	.db 0xe2
      0049F3 95                    3061 	.db 0x95
      0049F4 90                    3062 	.db 0x90
      0049F5 E2                    3063 	.db 0xe2
      0049F6 95                    3064 	.db 0x95
      0049F7 90                    3065 	.db 0x90
      0049F8 E2                    3066 	.db 0xe2
      0049F9 95                    3067 	.db 0x95
      0049FA 90                    3068 	.db 0x90
      0049FB E2                    3069 	.db 0xe2
      0049FC 95                    3070 	.db 0x95
      0049FD 90                    3071 	.db 0x90
      0049FE E2                    3072 	.db 0xe2
      0049FF 95                    3073 	.db 0x95
      004A00 90                    3074 	.db 0x90
      004A01 E2                    3075 	.db 0xe2
      004A02 95                    3076 	.db 0x95
      004A03 90                    3077 	.db 0x90
      004A04 E2                    3078 	.db 0xe2
      004A05 95                    3079 	.db 0x95
      004A06 90                    3080 	.db 0x90
      004A07 E2                    3081 	.db 0xe2
      004A08 95                    3082 	.db 0x95
      004A09 90                    3083 	.db 0x90
      004A0A E2                    3084 	.db 0xe2
      004A0B 95                    3085 	.db 0x95
      004A0C 90                    3086 	.db 0x90
      004A0D E2                    3087 	.db 0xe2
      004A0E 95                    3088 	.db 0x95
      004A0F 90                    3089 	.db 0x90
      004A10 E2                    3090 	.db 0xe2
      004A11 95                    3091 	.db 0x95
      004A12 90                    3092 	.db 0x90
      004A13 E2                    3093 	.db 0xe2
      004A14 95                    3094 	.db 0x95
      004A15 90                    3095 	.db 0x90
      004A16 E2                    3096 	.db 0xe2
      004A17 95                    3097 	.db 0x95
      004A18 90                    3098 	.db 0x90
      004A19 E2                    3099 	.db 0xe2
      004A1A 95                    3100 	.db 0x95
      004A1B 90                    3101 	.db 0x90
      004A1C E2                    3102 	.db 0xe2
      004A1D 95                    3103 	.db 0x95
      004A1E 90                    3104 	.db 0x90
      004A1F E2                    3105 	.db 0xe2
      004A20 95                    3106 	.db 0x95
      004A21 90                    3107 	.db 0x90
      004A22 E2                    3108 	.db 0xe2
      004A23 95                    3109 	.db 0x95
      004A24 90                    3110 	.db 0x90
      004A25 E2                    3111 	.db 0xe2
      004A26 95                    3112 	.db 0x95
      004A27 90                    3113 	.db 0x90
      004A28 E2                    3114 	.db 0xe2
      004A29 95                    3115 	.db 0x95
      004A2A 90                    3116 	.db 0x90
      004A2B E2                    3117 	.db 0xe2
      004A2C 95                    3118 	.db 0x95
      004A2D 90                    3119 	.db 0x90
      004A2E E2                    3120 	.db 0xe2
      004A2F 95                    3121 	.db 0x95
      004A30 90                    3122 	.db 0x90
      004A31 E2                    3123 	.db 0xe2
      004A32 95                    3124 	.db 0x95
      004A33 90                    3125 	.db 0x90
      004A34 E2                    3126 	.db 0xe2
      004A35 95                    3127 	.db 0x95
      004A36 90                    3128 	.db 0x90
      004A37 E2                    3129 	.db 0xe2
      004A38 95                    3130 	.db 0x95
      004A39 90                    3131 	.db 0x90
      004A3A E2                    3132 	.db 0xe2
      004A3B 95                    3133 	.db 0x95
      004A3C 90                    3134 	.db 0x90
      004A3D E2                    3135 	.db 0xe2
      004A3E 95                    3136 	.db 0x95
      004A3F 90                    3137 	.db 0x90
      004A40 E2                    3138 	.db 0xe2
      004A41 95                    3139 	.db 0x95
      004A42 90                    3140 	.db 0x90
      004A43 E2                    3141 	.db 0xe2
      004A44 95                    3142 	.db 0x95
      004A45 90                    3143 	.db 0x90
      004A46 E2                    3144 	.db 0xe2
      004A47 95                    3145 	.db 0x95
      004A48 90                    3146 	.db 0x90
      004A49 E2                    3147 	.db 0xe2
      004A4A 95                    3148 	.db 0x95
      004A4B 90                    3149 	.db 0x90
      004A4C E2                    3150 	.db 0xe2
      004A4D 95                    3151 	.db 0x95
      004A4E 90                    3152 	.db 0x90
      004A4F E2                    3153 	.db 0xe2
      004A50 95                    3154 	.db 0x95
      004A51 90                    3155 	.db 0x90
      004A52 E2                    3156 	.db 0xe2
      004A53 95                    3157 	.db 0x95
      004A54 90                    3158 	.db 0x90
      004A55 E2                    3159 	.db 0xe2
      004A56 95                    3160 	.db 0x95
      004A57 90                    3161 	.db 0x90
      004A58 E2                    3162 	.db 0xe2
      004A59 95                    3163 	.db 0x95
      004A5A 90                    3164 	.db 0x90
      004A5B E2                    3165 	.db 0xe2
      004A5C 95                    3166 	.db 0x95
      004A5D 90                    3167 	.db 0x90
      004A5E E2                    3168 	.db 0xe2
      004A5F 95                    3169 	.db 0x95
      004A60 90                    3170 	.db 0x90
      004A61 E2                    3171 	.db 0xe2
      004A62 95                    3172 	.db 0x95
      004A63 90                    3173 	.db 0x90
      004A64 E2                    3174 	.db 0xe2
      004A65 95                    3175 	.db 0x95
      004A66 97                    3176 	.db 0x97
      004A67 0A                    3177 	.db 0x0a
      004A68 0D                    3178 	.db 0x0d
      004A69 00                    3179 	.db 0x00
                                   3180 	.area CSEG    (CODE)
                                   3181 	.area CONST   (CODE)
      004A6A                       3182 ___str_1:
      004A6A E2                    3183 	.db 0xe2
      004A6B 95                    3184 	.db 0x95
      004A6C 91                    3185 	.db 0x91
      004A6D 20 20 20 20 20 20 20  3186 	.ascii "           I2C Memory Management System v1.0            "
             20 20 20 20 49 32 43
             20 4D 65 6D 6F 72 79
             20 4D 61 6E 61 67 65
             6D 65 6E 74 20 53 79
             73 74 65 6D 20 76 31
             2E 30 20 20 20 20 20
             20 20 20 20 20 20 20
      004AA5 E2                    3187 	.db 0xe2
      004AA6 95                    3188 	.db 0x95
      004AA7 91                    3189 	.db 0x91
      004AA8 0A                    3190 	.db 0x0a
      004AA9 0D                    3191 	.db 0x0d
      004AAA 00                    3192 	.db 0x00
                                   3193 	.area CSEG    (CODE)
                                   3194 	.area CONST   (CODE)
      004AAB                       3195 ___str_2:
      004AAB E2                    3196 	.db 0xe2
      004AAC 95                    3197 	.db 0x95
      004AAD 9A                    3198 	.db 0x9a
      004AAE E2                    3199 	.db 0xe2
      004AAF 95                    3200 	.db 0x95
      004AB0 90                    3201 	.db 0x90
      004AB1 E2                    3202 	.db 0xe2
      004AB2 95                    3203 	.db 0x95
      004AB3 90                    3204 	.db 0x90
      004AB4 E2                    3205 	.db 0xe2
      004AB5 95                    3206 	.db 0x95
      004AB6 90                    3207 	.db 0x90
      004AB7 E2                    3208 	.db 0xe2
      004AB8 95                    3209 	.db 0x95
      004AB9 90                    3210 	.db 0x90
      004ABA E2                    3211 	.db 0xe2
      004ABB 95                    3212 	.db 0x95
      004ABC 90                    3213 	.db 0x90
      004ABD E2                    3214 	.db 0xe2
      004ABE 95                    3215 	.db 0x95
      004ABF 90                    3216 	.db 0x90
      004AC0 E2                    3217 	.db 0xe2
      004AC1 95                    3218 	.db 0x95
      004AC2 90                    3219 	.db 0x90
      004AC3 E2                    3220 	.db 0xe2
      004AC4 95                    3221 	.db 0x95
      004AC5 90                    3222 	.db 0x90
      004AC6 E2                    3223 	.db 0xe2
      004AC7 95                    3224 	.db 0x95
      004AC8 90                    3225 	.db 0x90
      004AC9 E2                    3226 	.db 0xe2
      004ACA 95                    3227 	.db 0x95
      004ACB 90                    3228 	.db 0x90
      004ACC E2                    3229 	.db 0xe2
      004ACD 95                    3230 	.db 0x95
      004ACE 90                    3231 	.db 0x90
      004ACF E2                    3232 	.db 0xe2
      004AD0 95                    3233 	.db 0x95
      004AD1 90                    3234 	.db 0x90
      004AD2 E2                    3235 	.db 0xe2
      004AD3 95                    3236 	.db 0x95
      004AD4 90                    3237 	.db 0x90
      004AD5 E2                    3238 	.db 0xe2
      004AD6 95                    3239 	.db 0x95
      004AD7 90                    3240 	.db 0x90
      004AD8 E2                    3241 	.db 0xe2
      004AD9 95                    3242 	.db 0x95
      004ADA 90                    3243 	.db 0x90
      004ADB E2                    3244 	.db 0xe2
      004ADC 95                    3245 	.db 0x95
      004ADD 90                    3246 	.db 0x90
      004ADE E2                    3247 	.db 0xe2
      004ADF 95                    3248 	.db 0x95
      004AE0 90                    3249 	.db 0x90
      004AE1 E2                    3250 	.db 0xe2
      004AE2 95                    3251 	.db 0x95
      004AE3 90                    3252 	.db 0x90
      004AE4 E2                    3253 	.db 0xe2
      004AE5 95                    3254 	.db 0x95
      004AE6 90                    3255 	.db 0x90
      004AE7 E2                    3256 	.db 0xe2
      004AE8 95                    3257 	.db 0x95
      004AE9 90                    3258 	.db 0x90
      004AEA E2                    3259 	.db 0xe2
      004AEB 95                    3260 	.db 0x95
      004AEC 90                    3261 	.db 0x90
      004AED E2                    3262 	.db 0xe2
      004AEE 95                    3263 	.db 0x95
      004AEF 90                    3264 	.db 0x90
      004AF0 E2                    3265 	.db 0xe2
      004AF1 95                    3266 	.db 0x95
      004AF2 90                    3267 	.db 0x90
      004AF3 E2                    3268 	.db 0xe2
      004AF4 95                    3269 	.db 0x95
      004AF5 90                    3270 	.db 0x90
      004AF6 E2                    3271 	.db 0xe2
      004AF7 95                    3272 	.db 0x95
      004AF8 90                    3273 	.db 0x90
      004AF9 E2                    3274 	.db 0xe2
      004AFA 95                    3275 	.db 0x95
      004AFB 90                    3276 	.db 0x90
      004AFC E2                    3277 	.db 0xe2
      004AFD 95                    3278 	.db 0x95
      004AFE 90                    3279 	.db 0x90
      004AFF E2                    3280 	.db 0xe2
      004B00 95                    3281 	.db 0x95
      004B01 90                    3282 	.db 0x90
      004B02 E2                    3283 	.db 0xe2
      004B03 95                    3284 	.db 0x95
      004B04 90                    3285 	.db 0x90
      004B05 E2                    3286 	.db 0xe2
      004B06 95                    3287 	.db 0x95
      004B07 90                    3288 	.db 0x90
      004B08 E2                    3289 	.db 0xe2
      004B09 95                    3290 	.db 0x95
      004B0A 90                    3291 	.db 0x90
      004B0B E2                    3292 	.db 0xe2
      004B0C 95                    3293 	.db 0x95
      004B0D 90                    3294 	.db 0x90
      004B0E E2                    3295 	.db 0xe2
      004B0F 95                    3296 	.db 0x95
      004B10 90                    3297 	.db 0x90
      004B11 E2                    3298 	.db 0xe2
      004B12 95                    3299 	.db 0x95
      004B13 90                    3300 	.db 0x90
      004B14 E2                    3301 	.db 0xe2
      004B15 95                    3302 	.db 0x95
      004B16 90                    3303 	.db 0x90
      004B17 E2                    3304 	.db 0xe2
      004B18 95                    3305 	.db 0x95
      004B19 90                    3306 	.db 0x90
      004B1A E2                    3307 	.db 0xe2
      004B1B 95                    3308 	.db 0x95
      004B1C 90                    3309 	.db 0x90
      004B1D E2                    3310 	.db 0xe2
      004B1E 95                    3311 	.db 0x95
      004B1F 90                    3312 	.db 0x90
      004B20 E2                    3313 	.db 0xe2
      004B21 95                    3314 	.db 0x95
      004B22 90                    3315 	.db 0x90
      004B23 E2                    3316 	.db 0xe2
      004B24 95                    3317 	.db 0x95
      004B25 90                    3318 	.db 0x90
      004B26 E2                    3319 	.db 0xe2
      004B27 95                    3320 	.db 0x95
      004B28 90                    3321 	.db 0x90
      004B29 E2                    3322 	.db 0xe2
      004B2A 95                    3323 	.db 0x95
      004B2B 90                    3324 	.db 0x90
      004B2C E2                    3325 	.db 0xe2
      004B2D 95                    3326 	.db 0x95
      004B2E 90                    3327 	.db 0x90
      004B2F E2                    3328 	.db 0xe2
      004B30 95                    3329 	.db 0x95
      004B31 90                    3330 	.db 0x90
      004B32 E2                    3331 	.db 0xe2
      004B33 95                    3332 	.db 0x95
      004B34 90                    3333 	.db 0x90
      004B35 E2                    3334 	.db 0xe2
      004B36 95                    3335 	.db 0x95
      004B37 90                    3336 	.db 0x90
      004B38 E2                    3337 	.db 0xe2
      004B39 95                    3338 	.db 0x95
      004B3A 90                    3339 	.db 0x90
      004B3B E2                    3340 	.db 0xe2
      004B3C 95                    3341 	.db 0x95
      004B3D 90                    3342 	.db 0x90
      004B3E E2                    3343 	.db 0xe2
      004B3F 95                    3344 	.db 0x95
      004B40 90                    3345 	.db 0x90
      004B41 E2                    3346 	.db 0xe2
      004B42 95                    3347 	.db 0x95
      004B43 90                    3348 	.db 0x90
      004B44 E2                    3349 	.db 0xe2
      004B45 95                    3350 	.db 0x95
      004B46 90                    3351 	.db 0x90
      004B47 E2                    3352 	.db 0xe2
      004B48 95                    3353 	.db 0x95
      004B49 90                    3354 	.db 0x90
      004B4A E2                    3355 	.db 0xe2
      004B4B 95                    3356 	.db 0x95
      004B4C 90                    3357 	.db 0x90
      004B4D E2                    3358 	.db 0xe2
      004B4E 95                    3359 	.db 0x95
      004B4F 90                    3360 	.db 0x90
      004B50 E2                    3361 	.db 0xe2
      004B51 95                    3362 	.db 0x95
      004B52 90                    3363 	.db 0x90
      004B53 E2                    3364 	.db 0xe2
      004B54 95                    3365 	.db 0x95
      004B55 90                    3366 	.db 0x90
      004B56 E2                    3367 	.db 0xe2
      004B57 95                    3368 	.db 0x95
      004B58 9D                    3369 	.db 0x9d
      004B59 0A                    3370 	.db 0x0a
      004B5A 0D                    3371 	.db 0x0d
      004B5B 00                    3372 	.db 0x00
                                   3373 	.area CSEG    (CODE)
                                   3374 	.area CONST   (CODE)
      004B5C                       3375 ___str_3:
      004B5C 0A                    3376 	.db 0x0a
      004B5D 0D                    3377 	.db 0x0d
      004B5E E2                    3378 	.db 0xe2
      004B5F 94                    3379 	.db 0x94
      004B60 8C                    3380 	.db 0x8c
      004B61 E2                    3381 	.db 0xe2
      004B62 94                    3382 	.db 0x94
      004B63 80                    3383 	.db 0x80
      004B64 E2                    3384 	.db 0xe2
      004B65 94                    3385 	.db 0x94
      004B66 80                    3386 	.db 0x80
      004B67 E2                    3387 	.db 0xe2
      004B68 94                    3388 	.db 0x94
      004B69 80                    3389 	.db 0x80
      004B6A E2                    3390 	.db 0xe2
      004B6B 94                    3391 	.db 0x94
      004B6C 80                    3392 	.db 0x80
      004B6D E2                    3393 	.db 0xe2
      004B6E 94                    3394 	.db 0x94
      004B6F 80                    3395 	.db 0x80
      004B70 E2                    3396 	.db 0xe2
      004B71 94                    3397 	.db 0x94
      004B72 80                    3398 	.db 0x80
      004B73 E2                    3399 	.db 0xe2
      004B74 94                    3400 	.db 0x94
      004B75 80                    3401 	.db 0x80
      004B76 E2                    3402 	.db 0xe2
      004B77 94                    3403 	.db 0x94
      004B78 80                    3404 	.db 0x80
      004B79 E2                    3405 	.db 0xe2
      004B7A 94                    3406 	.db 0x94
      004B7B 80                    3407 	.db 0x80
      004B7C E2                    3408 	.db 0xe2
      004B7D 94                    3409 	.db 0x94
      004B7E 80                    3410 	.db 0x80
      004B7F E2                    3411 	.db 0xe2
      004B80 94                    3412 	.db 0x94
      004B81 80                    3413 	.db 0x80
      004B82 E2                    3414 	.db 0xe2
      004B83 94                    3415 	.db 0x94
      004B84 80                    3416 	.db 0x80
      004B85 E2                    3417 	.db 0xe2
      004B86 94                    3418 	.db 0x94
      004B87 AC                    3419 	.db 0xac
      004B88 E2                    3420 	.db 0xe2
      004B89 94                    3421 	.db 0x94
      004B8A 80                    3422 	.db 0x80
      004B8B E2                    3423 	.db 0xe2
      004B8C 94                    3424 	.db 0x94
      004B8D 80                    3425 	.db 0x80
      004B8E E2                    3426 	.db 0xe2
      004B8F 94                    3427 	.db 0x94
      004B90 80                    3428 	.db 0x80
      004B91 E2                    3429 	.db 0xe2
      004B92 94                    3430 	.db 0x94
      004B93 80                    3431 	.db 0x80
      004B94 E2                    3432 	.db 0xe2
      004B95 94                    3433 	.db 0x94
      004B96 80                    3434 	.db 0x80
      004B97 E2                    3435 	.db 0xe2
      004B98 94                    3436 	.db 0x94
      004B99 80                    3437 	.db 0x80
      004B9A E2                    3438 	.db 0xe2
      004B9B 94                    3439 	.db 0x94
      004B9C 80                    3440 	.db 0x80
      004B9D E2                    3441 	.db 0xe2
      004B9E 94                    3442 	.db 0x94
      004B9F 80                    3443 	.db 0x80
      004BA0 E2                    3444 	.db 0xe2
      004BA1 94                    3445 	.db 0x94
      004BA2 80                    3446 	.db 0x80
      004BA3 E2                    3447 	.db 0xe2
      004BA4 94                    3448 	.db 0x94
      004BA5 80                    3449 	.db 0x80
      004BA6 E2                    3450 	.db 0xe2
      004BA7 94                    3451 	.db 0x94
      004BA8 80                    3452 	.db 0x80
      004BA9 E2                    3453 	.db 0xe2
      004BAA 94                    3454 	.db 0x94
      004BAB 80                    3455 	.db 0x80
      004BAC E2                    3456 	.db 0xe2
      004BAD 94                    3457 	.db 0x94
      004BAE 80                    3458 	.db 0x80
      004BAF E2                    3459 	.db 0xe2
      004BB0 94                    3460 	.db 0x94
      004BB1 80                    3461 	.db 0x80
      004BB2 E2                    3462 	.db 0xe2
      004BB3 94                    3463 	.db 0x94
      004BB4 80                    3464 	.db 0x80
      004BB5 E2                    3465 	.db 0xe2
      004BB6 94                    3466 	.db 0x94
      004BB7 80                    3467 	.db 0x80
      004BB8 E2                    3468 	.db 0xe2
      004BB9 94                    3469 	.db 0x94
      004BBA 80                    3470 	.db 0x80
      004BBB E2                    3471 	.db 0xe2
      004BBC 94                    3472 	.db 0x94
      004BBD 80                    3473 	.db 0x80
      004BBE E2                    3474 	.db 0xe2
      004BBF 94                    3475 	.db 0x94
      004BC0 80                    3476 	.db 0x80
      004BC1 E2                    3477 	.db 0xe2
      004BC2 94                    3478 	.db 0x94
      004BC3 80                    3479 	.db 0x80
      004BC4 E2                    3480 	.db 0xe2
      004BC5 94                    3481 	.db 0x94
      004BC6 80                    3482 	.db 0x80
      004BC7 E2                    3483 	.db 0xe2
      004BC8 94                    3484 	.db 0x94
      004BC9 80                    3485 	.db 0x80
      004BCA E2                    3486 	.db 0xe2
      004BCB 94                    3487 	.db 0x94
      004BCC 80                    3488 	.db 0x80
      004BCD E2                    3489 	.db 0xe2
      004BCE 94                    3490 	.db 0x94
      004BCF 80                    3491 	.db 0x80
      004BD0 E2                    3492 	.db 0xe2
      004BD1 94                    3493 	.db 0x94
      004BD2 80                    3494 	.db 0x80
      004BD3 E2                    3495 	.db 0xe2
      004BD4 94                    3496 	.db 0x94
      004BD5 80                    3497 	.db 0x80
      004BD6 E2                    3498 	.db 0xe2
      004BD7 94                    3499 	.db 0x94
      004BD8 80                    3500 	.db 0x80
      004BD9 E2                    3501 	.db 0xe2
      004BDA 94                    3502 	.db 0x94
      004BDB 80                    3503 	.db 0x80
      004BDC E2                    3504 	.db 0xe2
      004BDD 94                    3505 	.db 0x94
      004BDE 80                    3506 	.db 0x80
      004BDF E2                    3507 	.db 0xe2
      004BE0 94                    3508 	.db 0x94
      004BE1 80                    3509 	.db 0x80
      004BE2 E2                    3510 	.db 0xe2
      004BE3 94                    3511 	.db 0x94
      004BE4 80                    3512 	.db 0x80
      004BE5 E2                    3513 	.db 0xe2
      004BE6 94                    3514 	.db 0x94
      004BE7 80                    3515 	.db 0x80
      004BE8 E2                    3516 	.db 0xe2
      004BE9 94                    3517 	.db 0x94
      004BEA 80                    3518 	.db 0x80
      004BEB E2                    3519 	.db 0xe2
      004BEC 94                    3520 	.db 0x94
      004BED 80                    3521 	.db 0x80
      004BEE E2                    3522 	.db 0xe2
      004BEF 94                    3523 	.db 0x94
      004BF0 80                    3524 	.db 0x80
      004BF1 E2                    3525 	.db 0xe2
      004BF2 94                    3526 	.db 0x94
      004BF3 80                    3527 	.db 0x80
      004BF4 E2                    3528 	.db 0xe2
      004BF5 94                    3529 	.db 0x94
      004BF6 80                    3530 	.db 0x80
      004BF7 E2                    3531 	.db 0xe2
      004BF8 94                    3532 	.db 0x94
      004BF9 80                    3533 	.db 0x80
      004BFA E2                    3534 	.db 0xe2
      004BFB 94                    3535 	.db 0x94
      004BFC 80                    3536 	.db 0x80
      004BFD E2                    3537 	.db 0xe2
      004BFE 94                    3538 	.db 0x94
      004BFF 80                    3539 	.db 0x80
      004C00 E2                    3540 	.db 0xe2
      004C01 94                    3541 	.db 0x94
      004C02 80                    3542 	.db 0x80
      004C03 E2                    3543 	.db 0xe2
      004C04 94                    3544 	.db 0x94
      004C05 80                    3545 	.db 0x80
      004C06 E2                    3546 	.db 0xe2
      004C07 94                    3547 	.db 0x94
      004C08 80                    3548 	.db 0x80
      004C09 E2                    3549 	.db 0xe2
      004C0A 94                    3550 	.db 0x94
      004C0B 80                    3551 	.db 0x80
      004C0C E2                    3552 	.db 0xe2
      004C0D 94                    3553 	.db 0x94
      004C0E 90                    3554 	.db 0x90
      004C0F 0A                    3555 	.db 0x0a
      004C10 0D                    3556 	.db 0x0d
      004C11 00                    3557 	.db 0x00
                                   3558 	.area CSEG    (CODE)
                                   3559 	.area CONST   (CODE)
      004C12                       3560 ___str_4:
      004C12 E2                    3561 	.db 0xe2
      004C13 94                    3562 	.db 0x94
      004C14 82                    3563 	.db 0x82
      004C15 20 20 43 6F 6D 6D 61  3564 	.ascii "  Command   "
             6E 64 20 20 20
      004C21 E2                    3565 	.db 0xe2
      004C22 94                    3566 	.db 0x94
      004C23 82                    3567 	.db 0x82
      004C24 20 20 20 20 20 20 20  3568 	.ascii "               Description                  "
             20 20 20 20 20 20 20
             20 44 65 73 63 72 69
             70 74 69 6F 6E 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004C50 E2                    3569 	.db 0xe2
      004C51 94                    3570 	.db 0x94
      004C52 82                    3571 	.db 0x82
      004C53 0A                    3572 	.db 0x0a
      004C54 0D                    3573 	.db 0x0d
      004C55 00                    3574 	.db 0x00
                                   3575 	.area CSEG    (CODE)
                                   3576 	.area CONST   (CODE)
      004C56                       3577 ___str_5:
      004C56 E2                    3578 	.db 0xe2
      004C57 94                    3579 	.db 0x94
      004C58 9C                    3580 	.db 0x9c
      004C59 E2                    3581 	.db 0xe2
      004C5A 94                    3582 	.db 0x94
      004C5B 80                    3583 	.db 0x80
      004C5C E2                    3584 	.db 0xe2
      004C5D 94                    3585 	.db 0x94
      004C5E 80                    3586 	.db 0x80
      004C5F E2                    3587 	.db 0xe2
      004C60 94                    3588 	.db 0x94
      004C61 80                    3589 	.db 0x80
      004C62 E2                    3590 	.db 0xe2
      004C63 94                    3591 	.db 0x94
      004C64 80                    3592 	.db 0x80
      004C65 E2                    3593 	.db 0xe2
      004C66 94                    3594 	.db 0x94
      004C67 80                    3595 	.db 0x80
      004C68 E2                    3596 	.db 0xe2
      004C69 94                    3597 	.db 0x94
      004C6A 80                    3598 	.db 0x80
      004C6B E2                    3599 	.db 0xe2
      004C6C 94                    3600 	.db 0x94
      004C6D 80                    3601 	.db 0x80
      004C6E E2                    3602 	.db 0xe2
      004C6F 94                    3603 	.db 0x94
      004C70 80                    3604 	.db 0x80
      004C71 E2                    3605 	.db 0xe2
      004C72 94                    3606 	.db 0x94
      004C73 80                    3607 	.db 0x80
      004C74 E2                    3608 	.db 0xe2
      004C75 94                    3609 	.db 0x94
      004C76 80                    3610 	.db 0x80
      004C77 E2                    3611 	.db 0xe2
      004C78 94                    3612 	.db 0x94
      004C79 80                    3613 	.db 0x80
      004C7A E2                    3614 	.db 0xe2
      004C7B 94                    3615 	.db 0x94
      004C7C 80                    3616 	.db 0x80
      004C7D E2                    3617 	.db 0xe2
      004C7E 94                    3618 	.db 0x94
      004C7F BC                    3619 	.db 0xbc
      004C80 E2                    3620 	.db 0xe2
      004C81 94                    3621 	.db 0x94
      004C82 80                    3622 	.db 0x80
      004C83 E2                    3623 	.db 0xe2
      004C84 94                    3624 	.db 0x94
      004C85 80                    3625 	.db 0x80
      004C86 E2                    3626 	.db 0xe2
      004C87 94                    3627 	.db 0x94
      004C88 80                    3628 	.db 0x80
      004C89 E2                    3629 	.db 0xe2
      004C8A 94                    3630 	.db 0x94
      004C8B 80                    3631 	.db 0x80
      004C8C E2                    3632 	.db 0xe2
      004C8D 94                    3633 	.db 0x94
      004C8E 80                    3634 	.db 0x80
      004C8F E2                    3635 	.db 0xe2
      004C90 94                    3636 	.db 0x94
      004C91 80                    3637 	.db 0x80
      004C92 E2                    3638 	.db 0xe2
      004C93 94                    3639 	.db 0x94
      004C94 80                    3640 	.db 0x80
      004C95 E2                    3641 	.db 0xe2
      004C96 94                    3642 	.db 0x94
      004C97 80                    3643 	.db 0x80
      004C98 E2                    3644 	.db 0xe2
      004C99 94                    3645 	.db 0x94
      004C9A 80                    3646 	.db 0x80
      004C9B E2                    3647 	.db 0xe2
      004C9C 94                    3648 	.db 0x94
      004C9D 80                    3649 	.db 0x80
      004C9E E2                    3650 	.db 0xe2
      004C9F 94                    3651 	.db 0x94
      004CA0 80                    3652 	.db 0x80
      004CA1 E2                    3653 	.db 0xe2
      004CA2 94                    3654 	.db 0x94
      004CA3 80                    3655 	.db 0x80
      004CA4 E2                    3656 	.db 0xe2
      004CA5 94                    3657 	.db 0x94
      004CA6 80                    3658 	.db 0x80
      004CA7 E2                    3659 	.db 0xe2
      004CA8 94                    3660 	.db 0x94
      004CA9 80                    3661 	.db 0x80
      004CAA E2                    3662 	.db 0xe2
      004CAB 94                    3663 	.db 0x94
      004CAC 80                    3664 	.db 0x80
      004CAD E2                    3665 	.db 0xe2
      004CAE 94                    3666 	.db 0x94
      004CAF 80                    3667 	.db 0x80
      004CB0 E2                    3668 	.db 0xe2
      004CB1 94                    3669 	.db 0x94
      004CB2 80                    3670 	.db 0x80
      004CB3 E2                    3671 	.db 0xe2
      004CB4 94                    3672 	.db 0x94
      004CB5 80                    3673 	.db 0x80
      004CB6 E2                    3674 	.db 0xe2
      004CB7 94                    3675 	.db 0x94
      004CB8 80                    3676 	.db 0x80
      004CB9 E2                    3677 	.db 0xe2
      004CBA 94                    3678 	.db 0x94
      004CBB 80                    3679 	.db 0x80
      004CBC E2                    3680 	.db 0xe2
      004CBD 94                    3681 	.db 0x94
      004CBE 80                    3682 	.db 0x80
      004CBF E2                    3683 	.db 0xe2
      004CC0 94                    3684 	.db 0x94
      004CC1 80                    3685 	.db 0x80
      004CC2 E2                    3686 	.db 0xe2
      004CC3 94                    3687 	.db 0x94
      004CC4 80                    3688 	.db 0x80
      004CC5 E2                    3689 	.db 0xe2
      004CC6 94                    3690 	.db 0x94
      004CC7 80                    3691 	.db 0x80
      004CC8 E2                    3692 	.db 0xe2
      004CC9 94                    3693 	.db 0x94
      004CCA 80                    3694 	.db 0x80
      004CCB E2                    3695 	.db 0xe2
      004CCC 94                    3696 	.db 0x94
      004CCD 80                    3697 	.db 0x80
      004CCE E2                    3698 	.db 0xe2
      004CCF 94                    3699 	.db 0x94
      004CD0 80                    3700 	.db 0x80
      004CD1 E2                    3701 	.db 0xe2
      004CD2 94                    3702 	.db 0x94
      004CD3 80                    3703 	.db 0x80
      004CD4 E2                    3704 	.db 0xe2
      004CD5 94                    3705 	.db 0x94
      004CD6 80                    3706 	.db 0x80
      004CD7 E2                    3707 	.db 0xe2
      004CD8 94                    3708 	.db 0x94
      004CD9 80                    3709 	.db 0x80
      004CDA E2                    3710 	.db 0xe2
      004CDB 94                    3711 	.db 0x94
      004CDC 80                    3712 	.db 0x80
      004CDD E2                    3713 	.db 0xe2
      004CDE 94                    3714 	.db 0x94
      004CDF 80                    3715 	.db 0x80
      004CE0 E2                    3716 	.db 0xe2
      004CE1 94                    3717 	.db 0x94
      004CE2 80                    3718 	.db 0x80
      004CE3 E2                    3719 	.db 0xe2
      004CE4 94                    3720 	.db 0x94
      004CE5 80                    3721 	.db 0x80
      004CE6 E2                    3722 	.db 0xe2
      004CE7 94                    3723 	.db 0x94
      004CE8 80                    3724 	.db 0x80
      004CE9 E2                    3725 	.db 0xe2
      004CEA 94                    3726 	.db 0x94
      004CEB 80                    3727 	.db 0x80
      004CEC E2                    3728 	.db 0xe2
      004CED 94                    3729 	.db 0x94
      004CEE 80                    3730 	.db 0x80
      004CEF E2                    3731 	.db 0xe2
      004CF0 94                    3732 	.db 0x94
      004CF1 80                    3733 	.db 0x80
      004CF2 E2                    3734 	.db 0xe2
      004CF3 94                    3735 	.db 0x94
      004CF4 80                    3736 	.db 0x80
      004CF5 E2                    3737 	.db 0xe2
      004CF6 94                    3738 	.db 0x94
      004CF7 80                    3739 	.db 0x80
      004CF8 E2                    3740 	.db 0xe2
      004CF9 94                    3741 	.db 0x94
      004CFA 80                    3742 	.db 0x80
      004CFB E2                    3743 	.db 0xe2
      004CFC 94                    3744 	.db 0x94
      004CFD 80                    3745 	.db 0x80
      004CFE E2                    3746 	.db 0xe2
      004CFF 94                    3747 	.db 0x94
      004D00 80                    3748 	.db 0x80
      004D01 E2                    3749 	.db 0xe2
      004D02 94                    3750 	.db 0x94
      004D03 80                    3751 	.db 0x80
      004D04 E2                    3752 	.db 0xe2
      004D05 94                    3753 	.db 0x94
      004D06 A4                    3754 	.db 0xa4
      004D07 0A                    3755 	.db 0x0a
      004D08 0D                    3756 	.db 0x0d
      004D09 00                    3757 	.db 0x00
                                   3758 	.area CSEG    (CODE)
                                   3759 	.area CONST   (CODE)
      004D0A                       3760 ___str_6:
      004D0A E2                    3761 	.db 0xe2
      004D0B 94                    3762 	.db 0x94
      004D0C 82                    3763 	.db 0x82
      004D0D 20 20 20 20 20 52 20  3764 	.ascii "     R      "
             20 20 20 20 20
      004D19 E2                    3765 	.db 0xe2
      004D1A 94                    3766 	.db 0x94
      004D1B 82                    3767 	.db 0x82
      004D1C 20 52 65 61 64 20 66  3768 	.ascii " Read from address                          "
             72 6F 6D 20 61 64 64
             72 65 73 73 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004D48 E2                    3769 	.db 0xe2
      004D49 94                    3770 	.db 0x94
      004D4A 82                    3771 	.db 0x82
      004D4B 0A                    3772 	.db 0x0a
      004D4C 0D                    3773 	.db 0x0d
      004D4D 00                    3774 	.db 0x00
                                   3775 	.area CSEG    (CODE)
                                   3776 	.area CONST   (CODE)
      004D4E                       3777 ___str_7:
      004D4E E2                    3778 	.db 0xe2
      004D4F 94                    3779 	.db 0x94
      004D50 82                    3780 	.db 0x82
      004D51 20 20 20 20 20 57 20  3781 	.ascii "     W      "
             20 20 20 20 20
      004D5D E2                    3782 	.db 0xe2
      004D5E 94                    3783 	.db 0x94
      004D5F 82                    3784 	.db 0x82
      004D60 20 57 72 69 74 65 20  3785 	.ascii " Write data to address                      "
             64 61 74 61 20 74 6F
             20 61 64 64 72 65 73
             73 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004D8C E2                    3786 	.db 0xe2
      004D8D 94                    3787 	.db 0x94
      004D8E 82                    3788 	.db 0x82
      004D8F 0A                    3789 	.db 0x0a
      004D90 0D                    3790 	.db 0x0d
      004D91 00                    3791 	.db 0x00
                                   3792 	.area CSEG    (CODE)
                                   3793 	.area CONST   (CODE)
      004D92                       3794 ___str_8:
      004D92 E2                    3795 	.db 0xe2
      004D93 94                    3796 	.db 0x94
      004D94 82                    3797 	.db 0x82
      004D95 20 20 20 20 20 48 20  3798 	.ascii "     H      "
             20 20 20 20 20
      004DA1 E2                    3799 	.db 0xe2
      004DA2 94                    3800 	.db 0x94
      004DA3 82                    3801 	.db 0x82
      004DA4 20 44 69 73 70 6C 61  3802 	.ascii " Display hex dump                           "
             79 20 68 65 78 20 64
             75 6D 70 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004DD0 E2                    3803 	.db 0xe2
      004DD1 94                    3804 	.db 0x94
      004DD2 82                    3805 	.db 0x82
      004DD3 0A                    3806 	.db 0x0a
      004DD4 0D                    3807 	.db 0x0d
      004DD5 00                    3808 	.db 0x00
                                   3809 	.area CSEG    (CODE)
                                   3810 	.area CONST   (CODE)
      004DD6                       3811 ___str_9:
      004DD6 E2                    3812 	.db 0xe2
      004DD7 94                    3813 	.db 0x94
      004DD8 82                    3814 	.db 0x82
      004DD9 20 20 20 20 20 58 20  3815 	.ascii "     X      "
             20 20 20 20 20
      004DE5 E2                    3816 	.db 0xe2
      004DE6 94                    3817 	.db 0x94
      004DE7 82                    3818 	.db 0x82
      004DE8 20 52 65 73 65 74 20  3819 	.ascii " Reset memory system                        "
             6D 65 6D 6F 72 79 20
             73 79 73 74 65 6D 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004E14 E2                    3820 	.db 0xe2
      004E15 94                    3821 	.db 0x94
      004E16 82                    3822 	.db 0x82
      004E17 0A                    3823 	.db 0x0a
      004E18 0D                    3824 	.db 0x0d
      004E19 00                    3825 	.db 0x00
                                   3826 	.area CSEG    (CODE)
                                   3827 	.area CONST   (CODE)
      004E1A                       3828 ___str_10:
      004E1A E2                    3829 	.db 0xe2
      004E1B 94                    3830 	.db 0x94
      004E1C 82                    3831 	.db 0x82
      004E1D 20 20 20 20 20 3F 20  3832 	.ascii "     ?      "
             20 20 20 20 20
      004E29 E2                    3833 	.db 0xe2
      004E2A 94                    3834 	.db 0x94
      004E2B 82                    3835 	.db 0x82
      004E2C 20 44 69 73 70 6C 61  3836 	.ascii " Display this help menu                     "
             79 20 74 68 69 73 20
             68 65 6C 70 20 6D 65
             6E 75 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004E58 E2                    3837 	.db 0xe2
      004E59 94                    3838 	.db 0x94
      004E5A 82                    3839 	.db 0x82
      004E5B 0A                    3840 	.db 0x0a
      004E5C 0D                    3841 	.db 0x0d
      004E5D 00                    3842 	.db 0x00
                                   3843 	.area CSEG    (CODE)
                                   3844 	.area CONST   (CODE)
      004E5E                       3845 ___str_11:
      004E5E E2                    3846 	.db 0xe2
      004E5F 94                    3847 	.db 0x94
      004E60 82                    3848 	.db 0x82
      004E61 20 20 20 20 20 51 20  3849 	.ascii "     Q      "
             20 20 20 20 20
      004E6D E2                    3850 	.db 0xe2
      004E6E 94                    3851 	.db 0x94
      004E6F 82                    3852 	.db 0x82
      004E70 20 51 75 69 74 20 70  3853 	.ascii " Quit program                               "
             72 6F 67 72 61 6D 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20
      004E9C E2                    3854 	.db 0xe2
      004E9D 94                    3855 	.db 0x94
      004E9E 82                    3856 	.db 0x82
      004E9F 0A                    3857 	.db 0x0a
      004EA0 0D                    3858 	.db 0x0d
      004EA1 00                    3859 	.db 0x00
                                   3860 	.area CSEG    (CODE)
                                   3861 	.area CONST   (CODE)
      004EA2                       3862 ___str_12:
      004EA2 E2                    3863 	.db 0xe2
      004EA3 94                    3864 	.db 0x94
      004EA4 94                    3865 	.db 0x94
      004EA5 E2                    3866 	.db 0xe2
      004EA6 94                    3867 	.db 0x94
      004EA7 80                    3868 	.db 0x80
      004EA8 E2                    3869 	.db 0xe2
      004EA9 94                    3870 	.db 0x94
      004EAA 80                    3871 	.db 0x80
      004EAB E2                    3872 	.db 0xe2
      004EAC 94                    3873 	.db 0x94
      004EAD 80                    3874 	.db 0x80
      004EAE E2                    3875 	.db 0xe2
      004EAF 94                    3876 	.db 0x94
      004EB0 80                    3877 	.db 0x80
      004EB1 E2                    3878 	.db 0xe2
      004EB2 94                    3879 	.db 0x94
      004EB3 80                    3880 	.db 0x80
      004EB4 E2                    3881 	.db 0xe2
      004EB5 94                    3882 	.db 0x94
      004EB6 80                    3883 	.db 0x80
      004EB7 E2                    3884 	.db 0xe2
      004EB8 94                    3885 	.db 0x94
      004EB9 80                    3886 	.db 0x80
      004EBA E2                    3887 	.db 0xe2
      004EBB 94                    3888 	.db 0x94
      004EBC 80                    3889 	.db 0x80
      004EBD E2                    3890 	.db 0xe2
      004EBE 94                    3891 	.db 0x94
      004EBF 80                    3892 	.db 0x80
      004EC0 E2                    3893 	.db 0xe2
      004EC1 94                    3894 	.db 0x94
      004EC2 80                    3895 	.db 0x80
      004EC3 E2                    3896 	.db 0xe2
      004EC4 94                    3897 	.db 0x94
      004EC5 80                    3898 	.db 0x80
      004EC6 E2                    3899 	.db 0xe2
      004EC7 94                    3900 	.db 0x94
      004EC8 80                    3901 	.db 0x80
      004EC9 E2                    3902 	.db 0xe2
      004ECA 94                    3903 	.db 0x94
      004ECB B4                    3904 	.db 0xb4
      004ECC E2                    3905 	.db 0xe2
      004ECD 94                    3906 	.db 0x94
      004ECE 80                    3907 	.db 0x80
      004ECF E2                    3908 	.db 0xe2
      004ED0 94                    3909 	.db 0x94
      004ED1 80                    3910 	.db 0x80
      004ED2 E2                    3911 	.db 0xe2
      004ED3 94                    3912 	.db 0x94
      004ED4 80                    3913 	.db 0x80
      004ED5 E2                    3914 	.db 0xe2
      004ED6 94                    3915 	.db 0x94
      004ED7 80                    3916 	.db 0x80
      004ED8 E2                    3917 	.db 0xe2
      004ED9 94                    3918 	.db 0x94
      004EDA 80                    3919 	.db 0x80
      004EDB E2                    3920 	.db 0xe2
      004EDC 94                    3921 	.db 0x94
      004EDD 80                    3922 	.db 0x80
      004EDE E2                    3923 	.db 0xe2
      004EDF 94                    3924 	.db 0x94
      004EE0 80                    3925 	.db 0x80
      004EE1 E2                    3926 	.db 0xe2
      004EE2 94                    3927 	.db 0x94
      004EE3 80                    3928 	.db 0x80
      004EE4 E2                    3929 	.db 0xe2
      004EE5 94                    3930 	.db 0x94
      004EE6 80                    3931 	.db 0x80
      004EE7 E2                    3932 	.db 0xe2
      004EE8 94                    3933 	.db 0x94
      004EE9 80                    3934 	.db 0x80
      004EEA E2                    3935 	.db 0xe2
      004EEB 94                    3936 	.db 0x94
      004EEC 80                    3937 	.db 0x80
      004EED E2                    3938 	.db 0xe2
      004EEE 94                    3939 	.db 0x94
      004EEF 80                    3940 	.db 0x80
      004EF0 E2                    3941 	.db 0xe2
      004EF1 94                    3942 	.db 0x94
      004EF2 80                    3943 	.db 0x80
      004EF3 E2                    3944 	.db 0xe2
      004EF4 94                    3945 	.db 0x94
      004EF5 80                    3946 	.db 0x80
      004EF6 E2                    3947 	.db 0xe2
      004EF7 94                    3948 	.db 0x94
      004EF8 80                    3949 	.db 0x80
      004EF9 E2                    3950 	.db 0xe2
      004EFA 94                    3951 	.db 0x94
      004EFB 80                    3952 	.db 0x80
      004EFC E2                    3953 	.db 0xe2
      004EFD 94                    3954 	.db 0x94
      004EFE 80                    3955 	.db 0x80
      004EFF E2                    3956 	.db 0xe2
      004F00 94                    3957 	.db 0x94
      004F01 80                    3958 	.db 0x80
      004F02 E2                    3959 	.db 0xe2
      004F03 94                    3960 	.db 0x94
      004F04 80                    3961 	.db 0x80
      004F05 E2                    3962 	.db 0xe2
      004F06 94                    3963 	.db 0x94
      004F07 80                    3964 	.db 0x80
      004F08 E2                    3965 	.db 0xe2
      004F09 94                    3966 	.db 0x94
      004F0A 80                    3967 	.db 0x80
      004F0B E2                    3968 	.db 0xe2
      004F0C 94                    3969 	.db 0x94
      004F0D 80                    3970 	.db 0x80
      004F0E E2                    3971 	.db 0xe2
      004F0F 94                    3972 	.db 0x94
      004F10 80                    3973 	.db 0x80
      004F11 E2                    3974 	.db 0xe2
      004F12 94                    3975 	.db 0x94
      004F13 80                    3976 	.db 0x80
      004F14 E2                    3977 	.db 0xe2
      004F15 94                    3978 	.db 0x94
      004F16 80                    3979 	.db 0x80
      004F17 E2                    3980 	.db 0xe2
      004F18 94                    3981 	.db 0x94
      004F19 80                    3982 	.db 0x80
      004F1A E2                    3983 	.db 0xe2
      004F1B 94                    3984 	.db 0x94
      004F1C 80                    3985 	.db 0x80
      004F1D E2                    3986 	.db 0xe2
      004F1E 94                    3987 	.db 0x94
      004F1F 80                    3988 	.db 0x80
      004F20 E2                    3989 	.db 0xe2
      004F21 94                    3990 	.db 0x94
      004F22 80                    3991 	.db 0x80
      004F23 E2                    3992 	.db 0xe2
      004F24 94                    3993 	.db 0x94
      004F25 80                    3994 	.db 0x80
      004F26 E2                    3995 	.db 0xe2
      004F27 94                    3996 	.db 0x94
      004F28 80                    3997 	.db 0x80
      004F29 E2                    3998 	.db 0xe2
      004F2A 94                    3999 	.db 0x94
      004F2B 80                    4000 	.db 0x80
      004F2C E2                    4001 	.db 0xe2
      004F2D 94                    4002 	.db 0x94
      004F2E 80                    4003 	.db 0x80
      004F2F E2                    4004 	.db 0xe2
      004F30 94                    4005 	.db 0x94
      004F31 80                    4006 	.db 0x80
      004F32 E2                    4007 	.db 0xe2
      004F33 94                    4008 	.db 0x94
      004F34 80                    4009 	.db 0x80
      004F35 E2                    4010 	.db 0xe2
      004F36 94                    4011 	.db 0x94
      004F37 80                    4012 	.db 0x80
      004F38 E2                    4013 	.db 0xe2
      004F39 94                    4014 	.db 0x94
      004F3A 80                    4015 	.db 0x80
      004F3B E2                    4016 	.db 0xe2
      004F3C 94                    4017 	.db 0x94
      004F3D 80                    4018 	.db 0x80
      004F3E E2                    4019 	.db 0xe2
      004F3F 94                    4020 	.db 0x94
      004F40 80                    4021 	.db 0x80
      004F41 E2                    4022 	.db 0xe2
      004F42 94                    4023 	.db 0x94
      004F43 80                    4024 	.db 0x80
      004F44 E2                    4025 	.db 0xe2
      004F45 94                    4026 	.db 0x94
      004F46 80                    4027 	.db 0x80
      004F47 E2                    4028 	.db 0xe2
      004F48 94                    4029 	.db 0x94
      004F49 80                    4030 	.db 0x80
      004F4A E2                    4031 	.db 0xe2
      004F4B 94                    4032 	.db 0x94
      004F4C 80                    4033 	.db 0x80
      004F4D E2                    4034 	.db 0xe2
      004F4E 94                    4035 	.db 0x94
      004F4F 80                    4036 	.db 0x80
      004F50 E2                    4037 	.db 0xe2
      004F51 94                    4038 	.db 0x94
      004F52 98                    4039 	.db 0x98
      004F53 0A                    4040 	.db 0x0a
      004F54 0D                    4041 	.db 0x0d
      004F55 00                    4042 	.db 0x00
                                   4043 	.area CSEG    (CODE)
                                   4044 	.area CONST   (CODE)
      004F56                       4045 ___str_13:
      004F56 7C 20 24 20 25 63     4046 	.ascii "| $ %c"
      004F5C 0A                    4047 	.db 0x0a
      004F5D 0D                    4048 	.db 0x0d
      004F5E 00                    4049 	.db 0x00
                                   4050 	.area CSEG    (CODE)
                                   4051 	.area CONST   (CODE)
      004F5F                       4052 ___str_14:
      004F5F 0A                    4053 	.db 0x0a
      004F60 0D                    4054 	.db 0x0d
      004F61 00                    4055 	.db 0x00
                                   4056 	.area CSEG    (CODE)
                                   4057 	.area CONST   (CODE)
      004F62                       4058 ___str_15:
      004F62 0A                    4059 	.db 0x0a
      004F63 E2                    4060 	.db 0xe2
      004F64 94                    4061 	.db 0x94
      004F65 8C                    4062 	.db 0x8c
      004F66 E2                    4063 	.db 0xe2
      004F67 94                    4064 	.db 0x94
      004F68 80                    4065 	.db 0x80
      004F69 E2                    4066 	.db 0xe2
      004F6A 94                    4067 	.db 0x94
      004F6B 80                    4068 	.db 0x80
      004F6C E2                    4069 	.db 0xe2
      004F6D 94                    4070 	.db 0x94
      004F6E 80                    4071 	.db 0x80
      004F6F E2                    4072 	.db 0xe2
      004F70 94                    4073 	.db 0x94
      004F71 80                    4074 	.db 0x80
      004F72 E2                    4075 	.db 0xe2
      004F73 94                    4076 	.db 0x94
      004F74 80                    4077 	.db 0x80
      004F75 E2                    4078 	.db 0xe2
      004F76 94                    4079 	.db 0x94
      004F77 80                    4080 	.db 0x80
      004F78 E2                    4081 	.db 0xe2
      004F79 94                    4082 	.db 0x94
      004F7A 80                    4083 	.db 0x80
      004F7B E2                    4084 	.db 0xe2
      004F7C 94                    4085 	.db 0x94
      004F7D 80                    4086 	.db 0x80
      004F7E E2                    4087 	.db 0xe2
      004F7F 94                    4088 	.db 0x94
      004F80 80                    4089 	.db 0x80
      004F81 E2                    4090 	.db 0xe2
      004F82 94                    4091 	.db 0x94
      004F83 80                    4092 	.db 0x80
      004F84 E2                    4093 	.db 0xe2
      004F85 94                    4094 	.db 0x94
      004F86 80                    4095 	.db 0x80
      004F87 E2                    4096 	.db 0xe2
      004F88 94                    4097 	.db 0x94
      004F89 80                    4098 	.db 0x80
      004F8A E2                    4099 	.db 0xe2
      004F8B 94                    4100 	.db 0x94
      004F8C 80                    4101 	.db 0x80
      004F8D E2                    4102 	.db 0xe2
      004F8E 94                    4103 	.db 0x94
      004F8F 80                    4104 	.db 0x80
      004F90 E2                    4105 	.db 0xe2
      004F91 94                    4106 	.db 0x94
      004F92 80                    4107 	.db 0x80
      004F93 20 57 52 49 54 45 20  4108 	.ascii " WRITE OPERATION "
             4F 50 45 52 41 54 49
             4F 4E 20
      004FA4 E2                    4109 	.db 0xe2
      004FA5 94                    4110 	.db 0x94
      004FA6 80                    4111 	.db 0x80
      004FA7 E2                    4112 	.db 0xe2
      004FA8 94                    4113 	.db 0x94
      004FA9 80                    4114 	.db 0x80
      004FAA E2                    4115 	.db 0xe2
      004FAB 94                    4116 	.db 0x94
      004FAC 80                    4117 	.db 0x80
      004FAD E2                    4118 	.db 0xe2
      004FAE 94                    4119 	.db 0x94
      004FAF 80                    4120 	.db 0x80
      004FB0 E2                    4121 	.db 0xe2
      004FB1 94                    4122 	.db 0x94
      004FB2 80                    4123 	.db 0x80
      004FB3 E2                    4124 	.db 0xe2
      004FB4 94                    4125 	.db 0x94
      004FB5 80                    4126 	.db 0x80
      004FB6 E2                    4127 	.db 0xe2
      004FB7 94                    4128 	.db 0x94
      004FB8 80                    4129 	.db 0x80
      004FB9 E2                    4130 	.db 0xe2
      004FBA 94                    4131 	.db 0x94
      004FBB 80                    4132 	.db 0x80
      004FBC E2                    4133 	.db 0xe2
      004FBD 94                    4134 	.db 0x94
      004FBE 80                    4135 	.db 0x80
      004FBF E2                    4136 	.db 0xe2
      004FC0 94                    4137 	.db 0x94
      004FC1 80                    4138 	.db 0x80
      004FC2 E2                    4139 	.db 0xe2
      004FC3 94                    4140 	.db 0x94
      004FC4 80                    4141 	.db 0x80
      004FC5 E2                    4142 	.db 0xe2
      004FC6 94                    4143 	.db 0x94
      004FC7 80                    4144 	.db 0x80
      004FC8 E2                    4145 	.db 0xe2
      004FC9 94                    4146 	.db 0x94
      004FCA 80                    4147 	.db 0x80
      004FCB E2                    4148 	.db 0xe2
      004FCC 94                    4149 	.db 0x94
      004FCD 80                    4150 	.db 0x80
      004FCE E2                    4151 	.db 0xe2
      004FCF 94                    4152 	.db 0x94
      004FD0 90                    4153 	.db 0x90
      004FD1 0A                    4154 	.db 0x0a
      004FD2 0D                    4155 	.db 0x0d
      004FD3 00                    4156 	.db 0x00
                                   4157 	.area CSEG    (CODE)
                                   4158 	.area CONST   (CODE)
      004FD4                       4159 ___str_16:
      004FD4 0A                    4160 	.db 0x0a
      004FD5 E2                    4161 	.db 0xe2
      004FD6 94                    4162 	.db 0x94
      004FD7 8C                    4163 	.db 0x8c
      004FD8 E2                    4164 	.db 0xe2
      004FD9 94                    4165 	.db 0x94
      004FDA 80                    4166 	.db 0x80
      004FDB E2                    4167 	.db 0xe2
      004FDC 94                    4168 	.db 0x94
      004FDD 80                    4169 	.db 0x80
      004FDE E2                    4170 	.db 0xe2
      004FDF 94                    4171 	.db 0x94
      004FE0 80                    4172 	.db 0x80
      004FE1 E2                    4173 	.db 0xe2
      004FE2 94                    4174 	.db 0x94
      004FE3 80                    4175 	.db 0x80
      004FE4 E2                    4176 	.db 0xe2
      004FE5 94                    4177 	.db 0x94
      004FE6 80                    4178 	.db 0x80
      004FE7 E2                    4179 	.db 0xe2
      004FE8 94                    4180 	.db 0x94
      004FE9 80                    4181 	.db 0x80
      004FEA E2                    4182 	.db 0xe2
      004FEB 94                    4183 	.db 0x94
      004FEC 80                    4184 	.db 0x80
      004FED E2                    4185 	.db 0xe2
      004FEE 94                    4186 	.db 0x94
      004FEF 80                    4187 	.db 0x80
      004FF0 E2                    4188 	.db 0xe2
      004FF1 94                    4189 	.db 0x94
      004FF2 80                    4190 	.db 0x80
      004FF3 E2                    4191 	.db 0xe2
      004FF4 94                    4192 	.db 0x94
      004FF5 80                    4193 	.db 0x80
      004FF6 E2                    4194 	.db 0xe2
      004FF7 94                    4195 	.db 0x94
      004FF8 80                    4196 	.db 0x80
      004FF9 E2                    4197 	.db 0xe2
      004FFA 94                    4198 	.db 0x94
      004FFB 80                    4199 	.db 0x80
      004FFC E2                    4200 	.db 0xe2
      004FFD 94                    4201 	.db 0x94
      004FFE 80                    4202 	.db 0x80
      004FFF E2                    4203 	.db 0xe2
      005000 94                    4204 	.db 0x94
      005001 80                    4205 	.db 0x80
      005002 E2                    4206 	.db 0xe2
      005003 94                    4207 	.db 0x94
      005004 80                    4208 	.db 0x80
      005005 20 52 45 41 44 20 4F  4209 	.ascii " READ OPERATION "
             50 45 52 41 54 49 4F
             4E 20
      005015 E2                    4210 	.db 0xe2
      005016 94                    4211 	.db 0x94
      005017 80                    4212 	.db 0x80
      005018 E2                    4213 	.db 0xe2
      005019 94                    4214 	.db 0x94
      00501A 80                    4215 	.db 0x80
      00501B E2                    4216 	.db 0xe2
      00501C 94                    4217 	.db 0x94
      00501D 80                    4218 	.db 0x80
      00501E E2                    4219 	.db 0xe2
      00501F 94                    4220 	.db 0x94
      005020 80                    4221 	.db 0x80
      005021 E2                    4222 	.db 0xe2
      005022 94                    4223 	.db 0x94
      005023 80                    4224 	.db 0x80
      005024 E2                    4225 	.db 0xe2
      005025 94                    4226 	.db 0x94
      005026 80                    4227 	.db 0x80
      005027 E2                    4228 	.db 0xe2
      005028 94                    4229 	.db 0x94
      005029 80                    4230 	.db 0x80
      00502A E2                    4231 	.db 0xe2
      00502B 94                    4232 	.db 0x94
      00502C 80                    4233 	.db 0x80
      00502D E2                    4234 	.db 0xe2
      00502E 94                    4235 	.db 0x94
      00502F 80                    4236 	.db 0x80
      005030 E2                    4237 	.db 0xe2
      005031 94                    4238 	.db 0x94
      005032 80                    4239 	.db 0x80
      005033 E2                    4240 	.db 0xe2
      005034 94                    4241 	.db 0x94
      005035 80                    4242 	.db 0x80
      005036 E2                    4243 	.db 0xe2
      005037 94                    4244 	.db 0x94
      005038 80                    4245 	.db 0x80
      005039 E2                    4246 	.db 0xe2
      00503A 94                    4247 	.db 0x94
      00503B 80                    4248 	.db 0x80
      00503C E2                    4249 	.db 0xe2
      00503D 94                    4250 	.db 0x94
      00503E 80                    4251 	.db 0x80
      00503F E2                    4252 	.db 0xe2
      005040 94                    4253 	.db 0x94
      005041 80                    4254 	.db 0x80
      005042 E2                    4255 	.db 0xe2
      005043 94                    4256 	.db 0x94
      005044 90                    4257 	.db 0x90
      005045 0A                    4258 	.db 0x0a
      005046 0D                    4259 	.db 0x0d
      005047 00                    4260 	.db 0x00
                                   4261 	.area CSEG    (CODE)
                                   4262 	.area CONST   (CODE)
      005048                       4263 ___str_17:
      005048 7C 20 52 65 61 64 69  4264 	.ascii "| Reading from Address 0x%03X           |"
             6E 67 20 66 72 6F 6D
             20 41 64 64 72 65 73
             73 20 30 78 25 30 33
             58 20 20 20 20 20 20
             20 20 20 20 20 7C
      005071 0A                    4265 	.db 0x0a
      005072 0D                    4266 	.db 0x0d
      005073 00                    4267 	.db 0x00
                                   4268 	.area CSEG    (CODE)
                                   4269 	.area CONST   (CODE)
      005074                       4270 ___str_18:
      005074 0A                    4271 	.db 0x0a
      005075 E2                    4272 	.db 0xe2
      005076 94                    4273 	.db 0x94
      005077 8C                    4274 	.db 0x8c
      005078 E2                    4275 	.db 0xe2
      005079 94                    4276 	.db 0x94
      00507A 80                    4277 	.db 0x80
      00507B E2                    4278 	.db 0xe2
      00507C 94                    4279 	.db 0x94
      00507D 80                    4280 	.db 0x80
      00507E E2                    4281 	.db 0xe2
      00507F 94                    4282 	.db 0x94
      005080 80                    4283 	.db 0x80
      005081 E2                    4284 	.db 0xe2
      005082 94                    4285 	.db 0x94
      005083 80                    4286 	.db 0x80
      005084 E2                    4287 	.db 0xe2
      005085 94                    4288 	.db 0x94
      005086 80                    4289 	.db 0x80
      005087 E2                    4290 	.db 0xe2
      005088 94                    4291 	.db 0x94
      005089 80                    4292 	.db 0x80
      00508A E2                    4293 	.db 0xe2
      00508B 94                    4294 	.db 0x94
      00508C 80                    4295 	.db 0x80
      00508D E2                    4296 	.db 0xe2
      00508E 94                    4297 	.db 0x94
      00508F 80                    4298 	.db 0x80
      005090 E2                    4299 	.db 0xe2
      005091 94                    4300 	.db 0x94
      005092 80                    4301 	.db 0x80
      005093 E2                    4302 	.db 0xe2
      005094 94                    4303 	.db 0x94
      005095 80                    4304 	.db 0x80
      005096 E2                    4305 	.db 0xe2
      005097 94                    4306 	.db 0x94
      005098 80                    4307 	.db 0x80
      005099 E2                    4308 	.db 0xe2
      00509A 94                    4309 	.db 0x94
      00509B 80                    4310 	.db 0x80
      00509C E2                    4311 	.db 0xe2
      00509D 94                    4312 	.db 0x94
      00509E 80                    4313 	.db 0x80
      00509F E2                    4314 	.db 0xe2
      0050A0 94                    4315 	.db 0x94
      0050A1 80                    4316 	.db 0x80
      0050A2 E2                    4317 	.db 0xe2
      0050A3 94                    4318 	.db 0x94
      0050A4 80                    4319 	.db 0x80
      0050A5 20 52 45 53 45 54 20  4320 	.ascii " RESET OPERATION "
             4F 50 45 52 41 54 49
             4F 4E 20
      0050B6 E2                    4321 	.db 0xe2
      0050B7 94                    4322 	.db 0x94
      0050B8 80                    4323 	.db 0x80
      0050B9 E2                    4324 	.db 0xe2
      0050BA 94                    4325 	.db 0x94
      0050BB 80                    4326 	.db 0x80
      0050BC E2                    4327 	.db 0xe2
      0050BD 94                    4328 	.db 0x94
      0050BE 80                    4329 	.db 0x80
      0050BF E2                    4330 	.db 0xe2
      0050C0 94                    4331 	.db 0x94
      0050C1 80                    4332 	.db 0x80
      0050C2 E2                    4333 	.db 0xe2
      0050C3 94                    4334 	.db 0x94
      0050C4 80                    4335 	.db 0x80
      0050C5 E2                    4336 	.db 0xe2
      0050C6 94                    4337 	.db 0x94
      0050C7 80                    4338 	.db 0x80
      0050C8 E2                    4339 	.db 0xe2
      0050C9 94                    4340 	.db 0x94
      0050CA 80                    4341 	.db 0x80
      0050CB E2                    4342 	.db 0xe2
      0050CC 94                    4343 	.db 0x94
      0050CD 80                    4344 	.db 0x80
      0050CE E2                    4345 	.db 0xe2
      0050CF 94                    4346 	.db 0x94
      0050D0 80                    4347 	.db 0x80
      0050D1 E2                    4348 	.db 0xe2
      0050D2 94                    4349 	.db 0x94
      0050D3 80                    4350 	.db 0x80
      0050D4 E2                    4351 	.db 0xe2
      0050D5 94                    4352 	.db 0x94
      0050D6 80                    4353 	.db 0x80
      0050D7 E2                    4354 	.db 0xe2
      0050D8 94                    4355 	.db 0x94
      0050D9 90                    4356 	.db 0x90
      0050DA 0A                    4357 	.db 0x0a
      0050DB 0D                    4358 	.db 0x0d
      0050DC 00                    4359 	.db 0x00
                                   4360 	.area CSEG    (CODE)
                                   4361 	.area CONST   (CODE)
      0050DD                       4362 ___str_19:
      0050DD 0A                    4363 	.db 0x0a
      0050DE E2                    4364 	.db 0xe2
      0050DF 94                    4365 	.db 0x94
      0050E0 8C                    4366 	.db 0x8c
      0050E1 E2                    4367 	.db 0xe2
      0050E2 94                    4368 	.db 0x94
      0050E3 80                    4369 	.db 0x80
      0050E4 E2                    4370 	.db 0xe2
      0050E5 94                    4371 	.db 0x94
      0050E6 80                    4372 	.db 0x80
      0050E7 E2                    4373 	.db 0xe2
      0050E8 94                    4374 	.db 0x94
      0050E9 80                    4375 	.db 0x80
      0050EA E2                    4376 	.db 0xe2
      0050EB 94                    4377 	.db 0x94
      0050EC 80                    4378 	.db 0x80
      0050ED E2                    4379 	.db 0xe2
      0050EE 94                    4380 	.db 0x94
      0050EF 80                    4381 	.db 0x80
      0050F0 E2                    4382 	.db 0xe2
      0050F1 94                    4383 	.db 0x94
      0050F2 80                    4384 	.db 0x80
      0050F3 E2                    4385 	.db 0xe2
      0050F4 94                    4386 	.db 0x94
      0050F5 80                    4387 	.db 0x80
      0050F6 E2                    4388 	.db 0xe2
      0050F7 94                    4389 	.db 0x94
      0050F8 80                    4390 	.db 0x80
      0050F9 E2                    4391 	.db 0xe2
      0050FA 94                    4392 	.db 0x94
      0050FB 80                    4393 	.db 0x80
      0050FC E2                    4394 	.db 0xe2
      0050FD 94                    4395 	.db 0x94
      0050FE 80                    4396 	.db 0x80
      0050FF E2                    4397 	.db 0xe2
      005100 94                    4398 	.db 0x94
      005101 80                    4399 	.db 0x80
      005102 E2                    4400 	.db 0xe2
      005103 94                    4401 	.db 0x94
      005104 80                    4402 	.db 0x80
      005105 E2                    4403 	.db 0xe2
      005106 94                    4404 	.db 0x94
      005107 80                    4405 	.db 0x80
      005108 20 48 45 58 20 44 55  4406 	.ascii " HEX DUMP OPERATION "
             4D 50 20 4F 50 45 52
             41 54 49 4F 4E 20
      00511C E2                    4407 	.db 0xe2
      00511D 94                    4408 	.db 0x94
      00511E 80                    4409 	.db 0x80
      00511F E2                    4410 	.db 0xe2
      005120 94                    4411 	.db 0x94
      005121 80                    4412 	.db 0x80
      005122 E2                    4413 	.db 0xe2
      005123 94                    4414 	.db 0x94
      005124 80                    4415 	.db 0x80
      005125 E2                    4416 	.db 0xe2
      005126 94                    4417 	.db 0x94
      005127 80                    4418 	.db 0x80
      005128 E2                    4419 	.db 0xe2
      005129 94                    4420 	.db 0x94
      00512A 80                    4421 	.db 0x80
      00512B E2                    4422 	.db 0xe2
      00512C 94                    4423 	.db 0x94
      00512D 80                    4424 	.db 0x80
      00512E E2                    4425 	.db 0xe2
      00512F 94                    4426 	.db 0x94
      005130 80                    4427 	.db 0x80
      005131 E2                    4428 	.db 0xe2
      005132 94                    4429 	.db 0x94
      005133 80                    4430 	.db 0x80
      005134 E2                    4431 	.db 0xe2
      005135 94                    4432 	.db 0x94
      005136 80                    4433 	.db 0x80
      005137 E2                    4434 	.db 0xe2
      005138 94                    4435 	.db 0x94
      005139 80                    4436 	.db 0x80
      00513A E2                    4437 	.db 0xe2
      00513B 94                    4438 	.db 0x94
      00513C 80                    4439 	.db 0x80
      00513D E2                    4440 	.db 0xe2
      00513E 94                    4441 	.db 0x94
      00513F 80                    4442 	.db 0x80
      005140 E2                    4443 	.db 0xe2
      005141 94                    4444 	.db 0x94
      005142 80                    4445 	.db 0x80
      005143 E2                    4446 	.db 0xe2
      005144 94                    4447 	.db 0x94
      005145 80                    4448 	.db 0x80
      005146 E2                    4449 	.db 0xe2
      005147 94                    4450 	.db 0x94
      005148 80                    4451 	.db 0x80
      005149 E2                    4452 	.db 0xe2
      00514A 94                    4453 	.db 0x94
      00514B 90                    4454 	.db 0x90
      00514C 0A                    4455 	.db 0x0a
      00514D 0D                    4456 	.db 0x0d
      00514E 00                    4457 	.db 0x00
                                   4458 	.area CSEG    (CODE)
                                   4459 	.area CONST   (CODE)
      00514F                       4460 ___str_20:
      00514F 49 4E 56 41 4C 49 44  4461 	.ascii "INVALID INPUT"
             20 49 4E 50 55 54
      00515C 0A                    4462 	.db 0x0a
      00515D 0D                    4463 	.db 0x0d
      00515E 00                    4464 	.db 0x00
                                   4465 	.area CSEG    (CODE)
                                   4466 	.area CONST   (CODE)
      00515F                       4467 ___str_21:
      00515F E2                    4468 	.db 0xe2
      005160 94                    4469 	.db 0x94
      005161 82                    4470 	.db 0x82
      005162 20 45 6E 74 65 72 20  4471 	.ascii " Enter address (hex, up to 3 characters): "
             61 64 64 72 65 73 73
             20 28 68 65 78 2C 20
             75 70 20 74 6F 20 33
             20 63 68 61 72 61 63
             74 65 72 73 29 3A 20
      00518C 0A                    4472 	.db 0x0a
      00518D 0D                    4473 	.db 0x0d
      00518E 7C                    4474 	.ascii "|"
      00518F 00                    4475 	.db 0x00
                                   4476 	.area CSEG    (CODE)
                                   4477 	.area CONST   (CODE)
      005190                       4478 ___str_22:
      005190 7C 20 24 20           4479 	.ascii "| $ "
      005194 00                    4480 	.db 0x00
                                   4481 	.area CSEG    (CODE)
                                   4482 	.area CONST   (CODE)
      005195                       4483 ___str_23:
      005195 0A                    4484 	.db 0x0a
      005196 0D                    4485 	.db 0x0d
      005197 E2                    4486 	.db 0xe2
      005198 94                    4487 	.db 0x94
      005199 82                    4488 	.db 0x82
      00519A 20 45 6E 74 65 72 65  4489 	.ascii " Entered address: 0x%03X"
             64 20 61 64 64 72 65
             73 73 3A 20 30 78 25
             30 33 58
      0051B2 0A                    4490 	.db 0x0a
      0051B3 0D                    4491 	.db 0x0d
      0051B4 00                    4492 	.db 0x00
                                   4493 	.area CSEG    (CODE)
                                   4494 	.area CONST   (CODE)
      0051B5                       4495 ___str_24:
      0051B5 E2                    4496 	.db 0xe2
      0051B6 95                    4497 	.db 0x95
      0051B7 94                    4498 	.db 0x94
      0051B8 E2                    4499 	.db 0xe2
      0051B9 95                    4500 	.db 0x95
      0051BA 90                    4501 	.db 0x90
      0051BB E2                    4502 	.db 0xe2
      0051BC 95                    4503 	.db 0x95
      0051BD 90                    4504 	.db 0x90
      0051BE E2                    4505 	.db 0xe2
      0051BF 95                    4506 	.db 0x95
      0051C0 90                    4507 	.db 0x90
      0051C1 E2                    4508 	.db 0xe2
      0051C2 95                    4509 	.db 0x95
      0051C3 90                    4510 	.db 0x90
      0051C4 E2                    4511 	.db 0xe2
      0051C5 95                    4512 	.db 0x95
      0051C6 90                    4513 	.db 0x90
      0051C7 E2                    4514 	.db 0xe2
      0051C8 95                    4515 	.db 0x95
      0051C9 90                    4516 	.db 0x90
      0051CA E2                    4517 	.db 0xe2
      0051CB 95                    4518 	.db 0x95
      0051CC 90                    4519 	.db 0x90
      0051CD E2                    4520 	.db 0xe2
      0051CE 95                    4521 	.db 0x95
      0051CF 90                    4522 	.db 0x90
      0051D0 E2                    4523 	.db 0xe2
      0051D1 95                    4524 	.db 0x95
      0051D2 90                    4525 	.db 0x90
      0051D3 E2                    4526 	.db 0xe2
      0051D4 95                    4527 	.db 0x95
      0051D5 90                    4528 	.db 0x90
      0051D6 E2                    4529 	.db 0xe2
      0051D7 95                    4530 	.db 0x95
      0051D8 90                    4531 	.db 0x90
      0051D9 E2                    4532 	.db 0xe2
      0051DA 95                    4533 	.db 0x95
      0051DB 90                    4534 	.db 0x90
      0051DC E2                    4535 	.db 0xe2
      0051DD 95                    4536 	.db 0x95
      0051DE 90                    4537 	.db 0x90
      0051DF E2                    4538 	.db 0xe2
      0051E0 95                    4539 	.db 0x95
      0051E1 90                    4540 	.db 0x90
      0051E2 E2                    4541 	.db 0xe2
      0051E3 95                    4542 	.db 0x95
      0051E4 90                    4543 	.db 0x90
      0051E5 E2                    4544 	.db 0xe2
      0051E6 95                    4545 	.db 0x95
      0051E7 90                    4546 	.db 0x90
      0051E8 E2                    4547 	.db 0xe2
      0051E9 95                    4548 	.db 0x95
      0051EA 90                    4549 	.db 0x90
      0051EB E2                    4550 	.db 0xe2
      0051EC 95                    4551 	.db 0x95
      0051ED 90                    4552 	.db 0x90
      0051EE E2                    4553 	.db 0xe2
      0051EF 95                    4554 	.db 0x95
      0051F0 90                    4555 	.db 0x90
      0051F1 E2                    4556 	.db 0xe2
      0051F2 95                    4557 	.db 0x95
      0051F3 90                    4558 	.db 0x90
      0051F4 E2                    4559 	.db 0xe2
      0051F5 95                    4560 	.db 0x95
      0051F6 90                    4561 	.db 0x90
      0051F7 E2                    4562 	.db 0xe2
      0051F8 95                    4563 	.db 0x95
      0051F9 90                    4564 	.db 0x90
      0051FA E2                    4565 	.db 0xe2
      0051FB 95                    4566 	.db 0x95
      0051FC 90                    4567 	.db 0x90
      0051FD E2                    4568 	.db 0xe2
      0051FE 95                    4569 	.db 0x95
      0051FF 90                    4570 	.db 0x90
      005200 E2                    4571 	.db 0xe2
      005201 95                    4572 	.db 0x95
      005202 90                    4573 	.db 0x90
      005203 E2                    4574 	.db 0xe2
      005204 95                    4575 	.db 0x95
      005205 90                    4576 	.db 0x90
      005206 E2                    4577 	.db 0xe2
      005207 95                    4578 	.db 0x95
      005208 90                    4579 	.db 0x90
      005209 E2                    4580 	.db 0xe2
      00520A 95                    4581 	.db 0x95
      00520B 90                    4582 	.db 0x90
      00520C E2                    4583 	.db 0xe2
      00520D 95                    4584 	.db 0x95
      00520E 90                    4585 	.db 0x90
      00520F E2                    4586 	.db 0xe2
      005210 95                    4587 	.db 0x95
      005211 90                    4588 	.db 0x90
      005212 E2                    4589 	.db 0xe2
      005213 95                    4590 	.db 0x95
      005214 90                    4591 	.db 0x90
      005215 E2                    4592 	.db 0xe2
      005216 95                    4593 	.db 0x95
      005217 90                    4594 	.db 0x90
      005218 E2                    4595 	.db 0xe2
      005219 95                    4596 	.db 0x95
      00521A 90                    4597 	.db 0x90
      00521B E2                    4598 	.db 0xe2
      00521C 95                    4599 	.db 0x95
      00521D 90                    4600 	.db 0x90
      00521E E2                    4601 	.db 0xe2
      00521F 95                    4602 	.db 0x95
      005220 90                    4603 	.db 0x90
      005221 E2                    4604 	.db 0xe2
      005222 95                    4605 	.db 0x95
      005223 90                    4606 	.db 0x90
      005224 E2                    4607 	.db 0xe2
      005225 95                    4608 	.db 0x95
      005226 90                    4609 	.db 0x90
      005227 E2                    4610 	.db 0xe2
      005228 95                    4611 	.db 0x95
      005229 90                    4612 	.db 0x90
      00522A E2                    4613 	.db 0xe2
      00522B 95                    4614 	.db 0x95
      00522C 90                    4615 	.db 0x90
      00522D E2                    4616 	.db 0xe2
      00522E 95                    4617 	.db 0x95
      00522F 90                    4618 	.db 0x90
      005230 E2                    4619 	.db 0xe2
      005231 95                    4620 	.db 0x95
      005232 90                    4621 	.db 0x90
      005233 E2                    4622 	.db 0xe2
      005234 95                    4623 	.db 0x95
      005235 90                    4624 	.db 0x90
      005236 E2                    4625 	.db 0xe2
      005237 95                    4626 	.db 0x95
      005238 97                    4627 	.db 0x97
      005239 0A                    4628 	.db 0x0a
      00523A 0D                    4629 	.db 0x0d
      00523B 00                    4630 	.db 0x00
                                   4631 	.area CSEG    (CODE)
                                   4632 	.area CONST   (CODE)
      00523C                       4633 ___str_25:
      00523C E2                    4634 	.db 0xe2
      00523D 95                    4635 	.db 0x95
      00523E 91                    4636 	.db 0x91
      00523F 20 20 20 20 20 20 20  4637 	.ascii "       ! ADDRESS OUT OF RANGE !         "
             21 20 41 44 44 52 45
             53 53 20 4F 55 54 20
             4F 46 20 52 41 4E 47
             45 20 21 20 20 20 20
             20 20 20 20 20
      005267 E2                    4638 	.db 0xe2
      005268 95                    4639 	.db 0x95
      005269 91                    4640 	.db 0x91
      00526A 0A                    4641 	.db 0x0a
      00526B 0D                    4642 	.db 0x0d
      00526C 00                    4643 	.db 0x00
                                   4644 	.area CSEG    (CODE)
                                   4645 	.area CONST   (CODE)
      00526D                       4646 ___str_26:
      00526D E2                    4647 	.db 0xe2
      00526E 95                    4648 	.db 0x95
      00526F 91                    4649 	.db 0x91
      005270 20 20 20 20 20 50 6C  4650 	.ascii "     Please Enter Valid Address         "
             65 61 73 65 20 45 6E
             74 65 72 20 56 61 6C
             69 64 20 41 64 64 72
             65 73 73 20 20 20 20
             20 20 20 20 20
      005298 E2                    4651 	.db 0xe2
      005299 95                    4652 	.db 0x95
      00529A 91                    4653 	.db 0x91
      00529B 0A                    4654 	.db 0x0a
      00529C 0D                    4655 	.db 0x0d
      00529D 00                    4656 	.db 0x00
                                   4657 	.area CSEG    (CODE)
                                   4658 	.area CONST   (CODE)
      00529E                       4659 ___str_27:
      00529E E2                    4660 	.db 0xe2
      00529F 95                    4661 	.db 0x95
      0052A0 9A                    4662 	.db 0x9a
      0052A1 E2                    4663 	.db 0xe2
      0052A2 95                    4664 	.db 0x95
      0052A3 90                    4665 	.db 0x90
      0052A4 E2                    4666 	.db 0xe2
      0052A5 95                    4667 	.db 0x95
      0052A6 90                    4668 	.db 0x90
      0052A7 E2                    4669 	.db 0xe2
      0052A8 95                    4670 	.db 0x95
      0052A9 90                    4671 	.db 0x90
      0052AA E2                    4672 	.db 0xe2
      0052AB 95                    4673 	.db 0x95
      0052AC 90                    4674 	.db 0x90
      0052AD E2                    4675 	.db 0xe2
      0052AE 95                    4676 	.db 0x95
      0052AF 90                    4677 	.db 0x90
      0052B0 E2                    4678 	.db 0xe2
      0052B1 95                    4679 	.db 0x95
      0052B2 90                    4680 	.db 0x90
      0052B3 E2                    4681 	.db 0xe2
      0052B4 95                    4682 	.db 0x95
      0052B5 90                    4683 	.db 0x90
      0052B6 E2                    4684 	.db 0xe2
      0052B7 95                    4685 	.db 0x95
      0052B8 90                    4686 	.db 0x90
      0052B9 E2                    4687 	.db 0xe2
      0052BA 95                    4688 	.db 0x95
      0052BB 90                    4689 	.db 0x90
      0052BC E2                    4690 	.db 0xe2
      0052BD 95                    4691 	.db 0x95
      0052BE 90                    4692 	.db 0x90
      0052BF E2                    4693 	.db 0xe2
      0052C0 95                    4694 	.db 0x95
      0052C1 90                    4695 	.db 0x90
      0052C2 E2                    4696 	.db 0xe2
      0052C3 95                    4697 	.db 0x95
      0052C4 90                    4698 	.db 0x90
      0052C5 E2                    4699 	.db 0xe2
      0052C6 95                    4700 	.db 0x95
      0052C7 90                    4701 	.db 0x90
      0052C8 E2                    4702 	.db 0xe2
      0052C9 95                    4703 	.db 0x95
      0052CA 90                    4704 	.db 0x90
      0052CB E2                    4705 	.db 0xe2
      0052CC 95                    4706 	.db 0x95
      0052CD 90                    4707 	.db 0x90
      0052CE E2                    4708 	.db 0xe2
      0052CF 95                    4709 	.db 0x95
      0052D0 90                    4710 	.db 0x90
      0052D1 E2                    4711 	.db 0xe2
      0052D2 95                    4712 	.db 0x95
      0052D3 90                    4713 	.db 0x90
      0052D4 E2                    4714 	.db 0xe2
      0052D5 95                    4715 	.db 0x95
      0052D6 90                    4716 	.db 0x90
      0052D7 E2                    4717 	.db 0xe2
      0052D8 95                    4718 	.db 0x95
      0052D9 90                    4719 	.db 0x90
      0052DA E2                    4720 	.db 0xe2
      0052DB 95                    4721 	.db 0x95
      0052DC 90                    4722 	.db 0x90
      0052DD E2                    4723 	.db 0xe2
      0052DE 95                    4724 	.db 0x95
      0052DF 90                    4725 	.db 0x90
      0052E0 E2                    4726 	.db 0xe2
      0052E1 95                    4727 	.db 0x95
      0052E2 90                    4728 	.db 0x90
      0052E3 E2                    4729 	.db 0xe2
      0052E4 95                    4730 	.db 0x95
      0052E5 90                    4731 	.db 0x90
      0052E6 E2                    4732 	.db 0xe2
      0052E7 95                    4733 	.db 0x95
      0052E8 90                    4734 	.db 0x90
      0052E9 E2                    4735 	.db 0xe2
      0052EA 95                    4736 	.db 0x95
      0052EB 90                    4737 	.db 0x90
      0052EC E2                    4738 	.db 0xe2
      0052ED 95                    4739 	.db 0x95
      0052EE 90                    4740 	.db 0x90
      0052EF E2                    4741 	.db 0xe2
      0052F0 95                    4742 	.db 0x95
      0052F1 90                    4743 	.db 0x90
      0052F2 E2                    4744 	.db 0xe2
      0052F3 95                    4745 	.db 0x95
      0052F4 90                    4746 	.db 0x90
      0052F5 E2                    4747 	.db 0xe2
      0052F6 95                    4748 	.db 0x95
      0052F7 90                    4749 	.db 0x90
      0052F8 E2                    4750 	.db 0xe2
      0052F9 95                    4751 	.db 0x95
      0052FA 90                    4752 	.db 0x90
      0052FB E2                    4753 	.db 0xe2
      0052FC 95                    4754 	.db 0x95
      0052FD 90                    4755 	.db 0x90
      0052FE E2                    4756 	.db 0xe2
      0052FF 95                    4757 	.db 0x95
      005300 90                    4758 	.db 0x90
      005301 E2                    4759 	.db 0xe2
      005302 95                    4760 	.db 0x95
      005303 90                    4761 	.db 0x90
      005304 E2                    4762 	.db 0xe2
      005305 95                    4763 	.db 0x95
      005306 90                    4764 	.db 0x90
      005307 E2                    4765 	.db 0xe2
      005308 95                    4766 	.db 0x95
      005309 90                    4767 	.db 0x90
      00530A E2                    4768 	.db 0xe2
      00530B 95                    4769 	.db 0x95
      00530C 90                    4770 	.db 0x90
      00530D E2                    4771 	.db 0xe2
      00530E 95                    4772 	.db 0x95
      00530F 90                    4773 	.db 0x90
      005310 E2                    4774 	.db 0xe2
      005311 95                    4775 	.db 0x95
      005312 90                    4776 	.db 0x90
      005313 E2                    4777 	.db 0xe2
      005314 95                    4778 	.db 0x95
      005315 90                    4779 	.db 0x90
      005316 E2                    4780 	.db 0xe2
      005317 95                    4781 	.db 0x95
      005318 90                    4782 	.db 0x90
      005319 E2                    4783 	.db 0xe2
      00531A 95                    4784 	.db 0x95
      00531B 90                    4785 	.db 0x90
      00531C E2                    4786 	.db 0xe2
      00531D 95                    4787 	.db 0x95
      00531E 90                    4788 	.db 0x90
      00531F E2                    4789 	.db 0xe2
      005320 95                    4790 	.db 0x95
      005321 9D                    4791 	.db 0x9d
      005322 0A                    4792 	.db 0x0a
      005323 0D                    4793 	.db 0x0d
      005324 00                    4794 	.db 0x00
                                   4795 	.area CSEG    (CODE)
                                   4796 	.area CONST   (CODE)
      005325                       4797 ___str_28:
      005325 E2                    4798 	.db 0xe2
      005326 94                    4799 	.db 0x94
      005327 82                    4800 	.db 0x82
      005328 20 45 6E 74 65 72 20  4801 	.ascii " Enter data (hex, up to 2 characters): "
             64 61 74 61 20 28 68
             65 78 2C 20 75 70 20
             74 6F 20 32 20 63 68
             61 72 61 63 74 65 72
             73 29 3A 20
      00534F 0A                    4802 	.db 0x0a
      005350 0D                    4803 	.db 0x0d
      005351 7C                    4804 	.ascii "|"
      005352 00                    4805 	.db 0x00
                                   4806 	.area CSEG    (CODE)
                                   4807 	.area CONST   (CODE)
      005353                       4808 ___str_29:
      005353 24 20                 4809 	.ascii "$ "
      005355 00                    4810 	.db 0x00
                                   4811 	.area CSEG    (CODE)
                                   4812 	.area CONST   (CODE)
      005356                       4813 ___str_30:
      005356 0A                    4814 	.db 0x0a
      005357 0D                    4815 	.db 0x0d
      005358 E2                    4816 	.db 0xe2
      005359 94                    4817 	.db 0x94
      00535A 82                    4818 	.db 0x82
      00535B 20 45 6E 74 65 72 65  4819 	.ascii " Entered data: 0x%02X"
             64 20 64 61 74 61 3A
             20 30 78 25 30 32 58
      005370 0A                    4820 	.db 0x0a
      005371 0D                    4821 	.db 0x0d
      005372 00                    4822 	.db 0x00
                                   4823 	.area CSEG    (CODE)
                                   4824 	.area CONST   (CODE)
      005373                       4825 ___str_31:
      005373 44 61 74 61 20 6F 75  4826 	.ascii "Data out of Range"
             74 20 6F 66 20 52 61
             6E 67 65
      005384 0A                    4827 	.db 0x0a
      005385 0D                    4828 	.db 0x0d
      005386 00                    4829 	.db 0x00
                                   4830 	.area CSEG    (CODE)
                                   4831 	.area CONST   (CODE)
      005387                       4832 ___str_32:
      005387 45 72 72 6F 72 3A 20  4833 	.ascii "Error: No ACK for device address (write)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 29
      0053AF 0A                    4834 	.db 0x0a
      0053B0 0D                    4835 	.db 0x0d
      0053B1 00                    4836 	.db 0x00
                                   4837 	.area CSEG    (CODE)
                                   4838 	.area CONST   (CODE)
      0053B2                       4839 ___str_33:
      0053B2 45 72 72 6F 72 3A 20  4840 	.ascii "Error: No ACK for memory address"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 6D 65 6D
             6F 72 79 20 61 64 64
             72 65 73 73
      0053D2 0A                    4841 	.db 0x0a
      0053D3 0D                    4842 	.db 0x0d
      0053D4 00                    4843 	.db 0x00
                                   4844 	.area CSEG    (CODE)
                                   4845 	.area CONST   (CODE)
      0053D5                       4846 ___str_34:
      0053D5 45 72 72 6F 72 3A 20  4847 	.ascii "Error: No ACK for data"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 61 74
             61
      0053EB 0A                    4848 	.db 0x0a
      0053EC 0D                    4849 	.db 0x0d
      0053ED 00                    4850 	.db 0x00
                                   4851 	.area CSEG    (CODE)
                                   4852 	.area CONST   (CODE)
      0053EE                       4853 ___str_35:
      0053EE 7C 20 57 72 69 74 69  4854 	.ascii "| Writing at Address 0x%03X Data 0x%02X          |"
             6E 67 20 61 74 20 41
             64 64 72 65 73 73 20
             30 78 25 30 33 58 20
             44 61 74 61 20 30 78
             25 30 32 58 20 20 20
             20 20 20 20 20 20 20
             7C
      005420 0A                    4855 	.db 0x0a
      005421 0D                    4856 	.db 0x0d
      005422 00                    4857 	.db 0x00
                                   4858 	.area CSEG    (CODE)
                                   4859 	.area CONST   (CODE)
      005423                       4860 ___str_36:
      005423 E2                    4861 	.db 0xe2
      005424 94                    4862 	.db 0x94
      005425 82                    4863 	.db 0x82
      005426 20 57 72 69 74 65 20  4864 	.ascii " Write successful!                             "
             73 75 63 63 65 73 73
             66 75 6C 21 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      005455 E2                    4865 	.db 0xe2
      005456 94                    4866 	.db 0x94
      005457 82                    4867 	.db 0x82
      005458 0A                    4868 	.db 0x0a
      005459 0D                    4869 	.db 0x0d
      00545A 00                    4870 	.db 0x00
                                   4871 	.area CSEG    (CODE)
                                   4872 	.area CONST   (CODE)
      00545B                       4873 ___str_37:
      00545B E2                    4874 	.db 0xe2
      00545C 94                    4875 	.db 0x94
      00545D 94                    4876 	.db 0x94
      00545E E2                    4877 	.db 0xe2
      00545F 94                    4878 	.db 0x94
      005460 80                    4879 	.db 0x80
      005461 E2                    4880 	.db 0xe2
      005462 94                    4881 	.db 0x94
      005463 80                    4882 	.db 0x80
      005464 E2                    4883 	.db 0xe2
      005465 94                    4884 	.db 0x94
      005466 80                    4885 	.db 0x80
      005467 E2                    4886 	.db 0xe2
      005468 94                    4887 	.db 0x94
      005469 80                    4888 	.db 0x80
      00546A E2                    4889 	.db 0xe2
      00546B 94                    4890 	.db 0x94
      00546C 80                    4891 	.db 0x80
      00546D E2                    4892 	.db 0xe2
      00546E 94                    4893 	.db 0x94
      00546F 80                    4894 	.db 0x80
      005470 E2                    4895 	.db 0xe2
      005471 94                    4896 	.db 0x94
      005472 80                    4897 	.db 0x80
      005473 E2                    4898 	.db 0xe2
      005474 94                    4899 	.db 0x94
      005475 80                    4900 	.db 0x80
      005476 E2                    4901 	.db 0xe2
      005477 94                    4902 	.db 0x94
      005478 80                    4903 	.db 0x80
      005479 E2                    4904 	.db 0xe2
      00547A 94                    4905 	.db 0x94
      00547B 80                    4906 	.db 0x80
      00547C E2                    4907 	.db 0xe2
      00547D 94                    4908 	.db 0x94
      00547E 80                    4909 	.db 0x80
      00547F E2                    4910 	.db 0xe2
      005480 94                    4911 	.db 0x94
      005481 80                    4912 	.db 0x80
      005482 E2                    4913 	.db 0xe2
      005483 94                    4914 	.db 0x94
      005484 80                    4915 	.db 0x80
      005485 E2                    4916 	.db 0xe2
      005486 94                    4917 	.db 0x94
      005487 80                    4918 	.db 0x80
      005488 E2                    4919 	.db 0xe2
      005489 94                    4920 	.db 0x94
      00548A 80                    4921 	.db 0x80
      00548B E2                    4922 	.db 0xe2
      00548C 94                    4923 	.db 0x94
      00548D 80                    4924 	.db 0x80
      00548E E2                    4925 	.db 0xe2
      00548F 94                    4926 	.db 0x94
      005490 80                    4927 	.db 0x80
      005491 E2                    4928 	.db 0xe2
      005492 94                    4929 	.db 0x94
      005493 80                    4930 	.db 0x80
      005494 E2                    4931 	.db 0xe2
      005495 94                    4932 	.db 0x94
      005496 80                    4933 	.db 0x80
      005497 E2                    4934 	.db 0xe2
      005498 94                    4935 	.db 0x94
      005499 80                    4936 	.db 0x80
      00549A E2                    4937 	.db 0xe2
      00549B 94                    4938 	.db 0x94
      00549C 80                    4939 	.db 0x80
      00549D E2                    4940 	.db 0xe2
      00549E 94                    4941 	.db 0x94
      00549F 80                    4942 	.db 0x80
      0054A0 E2                    4943 	.db 0xe2
      0054A1 94                    4944 	.db 0x94
      0054A2 80                    4945 	.db 0x80
      0054A3 E2                    4946 	.db 0xe2
      0054A4 94                    4947 	.db 0x94
      0054A5 80                    4948 	.db 0x80
      0054A6 E2                    4949 	.db 0xe2
      0054A7 94                    4950 	.db 0x94
      0054A8 80                    4951 	.db 0x80
      0054A9 E2                    4952 	.db 0xe2
      0054AA 94                    4953 	.db 0x94
      0054AB 80                    4954 	.db 0x80
      0054AC E2                    4955 	.db 0xe2
      0054AD 94                    4956 	.db 0x94
      0054AE 80                    4957 	.db 0x80
      0054AF E2                    4958 	.db 0xe2
      0054B0 94                    4959 	.db 0x94
      0054B1 80                    4960 	.db 0x80
      0054B2 E2                    4961 	.db 0xe2
      0054B3 94                    4962 	.db 0x94
      0054B4 80                    4963 	.db 0x80
      0054B5 E2                    4964 	.db 0xe2
      0054B6 94                    4965 	.db 0x94
      0054B7 80                    4966 	.db 0x80
      0054B8 E2                    4967 	.db 0xe2
      0054B9 94                    4968 	.db 0x94
      0054BA 80                    4969 	.db 0x80
      0054BB E2                    4970 	.db 0xe2
      0054BC 94                    4971 	.db 0x94
      0054BD 80                    4972 	.db 0x80
      0054BE E2                    4973 	.db 0xe2
      0054BF 94                    4974 	.db 0x94
      0054C0 80                    4975 	.db 0x80
      0054C1 E2                    4976 	.db 0xe2
      0054C2 94                    4977 	.db 0x94
      0054C3 80                    4978 	.db 0x80
      0054C4 E2                    4979 	.db 0xe2
      0054C5 94                    4980 	.db 0x94
      0054C6 80                    4981 	.db 0x80
      0054C7 E2                    4982 	.db 0xe2
      0054C8 94                    4983 	.db 0x94
      0054C9 80                    4984 	.db 0x80
      0054CA E2                    4985 	.db 0xe2
      0054CB 94                    4986 	.db 0x94
      0054CC 80                    4987 	.db 0x80
      0054CD E2                    4988 	.db 0xe2
      0054CE 94                    4989 	.db 0x94
      0054CF 80                    4990 	.db 0x80
      0054D0 E2                    4991 	.db 0xe2
      0054D1 94                    4992 	.db 0x94
      0054D2 80                    4993 	.db 0x80
      0054D3 E2                    4994 	.db 0xe2
      0054D4 94                    4995 	.db 0x94
      0054D5 80                    4996 	.db 0x80
      0054D6 E2                    4997 	.db 0xe2
      0054D7 94                    4998 	.db 0x94
      0054D8 80                    4999 	.db 0x80
      0054D9 E2                    5000 	.db 0xe2
      0054DA 94                    5001 	.db 0x94
      0054DB 80                    5002 	.db 0x80
      0054DC E2                    5003 	.db 0xe2
      0054DD 94                    5004 	.db 0x94
      0054DE 80                    5005 	.db 0x80
      0054DF E2                    5006 	.db 0xe2
      0054E0 94                    5007 	.db 0x94
      0054E1 80                    5008 	.db 0x80
      0054E2 E2                    5009 	.db 0xe2
      0054E3 94                    5010 	.db 0x94
      0054E4 80                    5011 	.db 0x80
      0054E5 E2                    5012 	.db 0xe2
      0054E6 94                    5013 	.db 0x94
      0054E7 80                    5014 	.db 0x80
      0054E8 E2                    5015 	.db 0xe2
      0054E9 94                    5016 	.db 0x94
      0054EA 80                    5017 	.db 0x80
      0054EB E2                    5018 	.db 0xe2
      0054EC 94                    5019 	.db 0x94
      0054ED 98                    5020 	.db 0x98
      0054EE 0A                    5021 	.db 0x0a
      0054EF 0D                    5022 	.db 0x0d
      0054F0 00                    5023 	.db 0x00
                                   5024 	.area CSEG    (CODE)
                                   5025 	.area CONST   (CODE)
      0054F1                       5026 ___str_38:
      0054F1 45 72 72 6F 72 3A 20  5027 	.ascii "Error: No ACK for device address (write mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 20 6D 6F
             64 65 29
      00551E 0A                    5028 	.db 0x0a
      00551F 0D                    5029 	.db 0x0d
      005520 00                    5030 	.db 0x00
                                   5031 	.area CSEG    (CODE)
                                   5032 	.area CONST   (CODE)
      005521                       5033 ___str_39:
      005521 45 72 72 6F 72 3A 20  5034 	.ascii "Error: No ACK for device address (read mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 72
             65 61 64 20 6D 6F 64
             65 29
      00554D 0A                    5035 	.db 0x0a
      00554E 0D                    5036 	.db 0x0d
      00554F 00                    5037 	.db 0x00
                                   5038 	.area CSEG    (CODE)
                                   5039 	.area CONST   (CODE)
      005550                       5040 ___str_40:
      005550 7C 20 30 78 25 30 33  5041 	.ascii "| 0x%03X : 0x%02X "
             58 20 3A 20 30 78 25
             30 32 58 20
      005562 0A                    5042 	.db 0x0a
      005563 0D                    5043 	.db 0x0d
      005564 00                    5044 	.db 0x00
                                   5045 	.area CSEG    (CODE)
                                   5046 	.area CONST   (CODE)
      005565                       5047 ___str_41:
      005565 E2                    5048 	.db 0xe2
      005566 94                    5049 	.db 0x94
      005567 82                    5050 	.db 0x82
      005568 20 52 65 61 64 20 73  5051 	.ascii " Read successful!                 "
             75 63 63 65 73 73 66
             75 6C 21 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20
      00558A E2                    5052 	.db 0xe2
      00558B 94                    5053 	.db 0x94
      00558C 82                    5054 	.db 0x82
      00558D 0A                    5055 	.db 0x0a
      00558E 0D                    5056 	.db 0x0d
      00558F 00                    5057 	.db 0x00
                                   5058 	.area CSEG    (CODE)
                                   5059 	.area CONST   (CODE)
      005590                       5060 ___str_42:
      005590 41 43 4B 20 44 49 44  5061 	.ascii "ACK DID NOT ARRIVE"
             20 4E 4F 54 20 41 52
             52 49 56 45
      0055A2 0A                    5062 	.db 0x0a
      0055A3 0D                    5063 	.db 0x0d
      0055A4 00                    5064 	.db 0x00
                                   5065 	.area CSEG    (CODE)
                                   5066 	.area CONST   (CODE)
      0055A5                       5067 ___str_43:
      0055A5 0D                    5068 	.db 0x0d
      0055A6 0A                    5069 	.db 0x0a
      0055A7 00                    5070 	.db 0x00
                                   5071 	.area CSEG    (CODE)
                                   5072 	.area CONST   (CODE)
      0055A8                       5073 ___str_44:
      0055A8 0D                    5074 	.db 0x0d
      0055A9 0A                    5075 	.db 0x0a
      0055AA 2D 2D 2D 2D 2D 2D 2D  5076 	.ascii "------------------------------------------------------------"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D
      0055E6 2D 2D 2D 2D           5077 	.ascii "----"
      0055EA 00                    5078 	.db 0x00
                                   5079 	.area CSEG    (CODE)
                                   5080 	.area CONST   (CODE)
      0055EB                       5081 ___str_45:
      0055EB 0D                    5082 	.db 0x0d
      0055EC 0A                    5083 	.db 0x0a
      0055ED 20 20 20 20 20 20 20  5084 	.ascii "                    EEPROM Hex Dump                         "
             20 20 20 20 20 20 20
             20 20 20 20 20 20 45
             45 50 52 4F 4D 20 48
             65 78 20 44 75 6D 70
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20
      005629 20 20 20 20           5085 	.ascii "    "
      00562D 00                    5086 	.db 0x00
                                   5087 	.area CSEG    (CODE)
                                   5088 	.area CONST   (CODE)
      00562E                       5089 ___str_46:
      00562E 0D                    5090 	.db 0x0d
      00562F 0A                    5091 	.db 0x0a
      005630 2D 2D 2D 2D 2D 2D 2D  5092 	.ascii "------------------------------------------------------------"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D
      00566C 2D 2D 2D 2D           5093 	.ascii "----"
      005670 0D                    5094 	.db 0x0d
      005671 0A                    5095 	.db 0x0a
      005672 00                    5096 	.db 0x00
                                   5097 	.area CSEG    (CODE)
                                   5098 	.area CONST   (CODE)
      005673                       5099 ___str_47:
      005673 25 30 33 58 3A 20     5100 	.ascii "%03X: "
      005679 00                    5101 	.db 0x00
                                   5102 	.area CSEG    (CODE)
                                   5103 	.area CONST   (CODE)
      00567A                       5104 ___str_48:
      00567A 25 30 32 58 20        5105 	.ascii "%02X "
      00567F 00                    5106 	.db 0x00
                                   5107 	.area CSEG    (CODE)
                                   5108 	.area CONST   (CODE)
      005680                       5109 ___str_49:
      005680 20 20 20              5110 	.ascii "   "
      005683 00                    5111 	.db 0x00
                                   5112 	.area CSEG    (CODE)
                                   5113 	.area CONST   (CODE)
      005684                       5114 ___str_50:
      005684 1B                    5115 	.db 0x1b
      005685 5B 31 3B 33 33 6D     5116 	.ascii "[1;33m"
      00568B 0A                    5117 	.db 0x0a
      00568C 0D                    5118 	.db 0x0d
      00568D 45 6E 74 65 72 20 53  5119 	.ascii "Enter Start Address for HEX Dump"
             74 61 72 74 20 41 64
             64 72 65 73 73 20 66
             6F 72 20 48 45 58 20
             44 75 6D 70
      0056AD 0D                    5120 	.db 0x0d
      0056AE 0A                    5121 	.db 0x0a
      0056AF 00                    5122 	.db 0x00
                                   5123 	.area CSEG    (CODE)
                                   5124 	.area CONST   (CODE)
      0056B0                       5125 ___str_51:
      0056B0 1B                    5126 	.db 0x1b
      0056B1 5B 31 3B 33 31 6D     5127 	.ascii "[1;31m"
      0056B7 0A                    5128 	.db 0x0a
      0056B8 0D                    5129 	.db 0x0d
      0056B9 49 6E 76 61 6C 69 64  5130 	.ascii "Invalid Start Address Range!!"
             20 53 74 61 72 74 20
             41 64 64 72 65 73 73
             20 52 61 6E 67 65 21
             21
      0056D6 0A                    5131 	.db 0x0a
      0056D7 0D                    5132 	.db 0x0d
      0056D8 20 41 64 64 72 65 73  5133 	.ascii " Address has to be between 0x000 to 0x7FF"
             73 20 68 61 73 20 74
             6F 20 62 65 20 62 65
             74 77 65 65 6E 20 30
             78 30 30 30 20 74 6F
             20 30 78 37 46 46
      005701 1B                    5134 	.db 0x1b
      005702 5B 30 6D              5135 	.ascii "[0m"
      005705 0D                    5136 	.db 0x0d
      005706 0A                    5137 	.db 0x0a
      005707 00                    5138 	.db 0x00
                                   5139 	.area CSEG    (CODE)
                                   5140 	.area CONST   (CODE)
      005708                       5141 ___str_52:
      005708 1B                    5142 	.db 0x1b
      005709 5B 31 3B 33 33 6D     5143 	.ascii "[1;33m"
      00570F 0A                    5144 	.db 0x0a
      005710 0D                    5145 	.db 0x0d
      005711 45 6E 74 65 72 20 45  5146 	.ascii "Enter End Address for HEX Dump"
             6E 64 20 41 64 64 72
             65 73 73 20 66 6F 72
             20 48 45 58 20 44 75
             6D 70
      00572F 0D                    5147 	.db 0x0d
      005730 0A                    5148 	.db 0x0a
      005731 00                    5149 	.db 0x00
                                   5150 	.area CSEG    (CODE)
                                   5151 	.area CONST   (CODE)
      005732                       5152 ___str_53:
      005732 1B                    5153 	.db 0x1b
      005733 5B 31 3B 33 31 6D     5154 	.ascii "[1;31m"
      005739 0A                    5155 	.db 0x0a
      00573A 0D                    5156 	.db 0x0d
      00573B 49 6E 76 61 6C 69 64  5157 	.ascii "Invalid End Address Range!!"
             20 45 6E 64 20 41 64
             64 72 65 73 73 20 52
             61 6E 67 65 21 21
      005756 0A                    5158 	.db 0x0a
      005757 0D                    5159 	.db 0x0d
      005758 20 41 64 64 72 65 73  5160 	.ascii " Address has to be between 0x000 to 0x7FF"
             73 20 68 61 73 20 74
             6F 20 62 65 20 62 65
             74 77 65 65 6E 20 30
             78 30 30 30 20 74 6F
             20 30 78 37 46 46
      005781 1B                    5161 	.db 0x1b
      005782 5B 30 6D              5162 	.ascii "[0m"
      005785 0D                    5163 	.db 0x0d
      005786 0A                    5164 	.db 0x0a
      005787 00                    5165 	.db 0x00
                                   5166 	.area CSEG    (CODE)
                                   5167 	.area CONST   (CODE)
      005788                       5168 ___str_54:
      005788 57 72 69 74 69 6E 67  5169 	.ascii "Writing data 0x%02X to address 0x%02X"
             20 64 61 74 61 20 30
             78 25 30 32 58 20 74
             6F 20 61 64 64 72 65
             73 73 20 30 78 25 30
             32 58
      0057AD 0A                    5170 	.db 0x0a
      0057AE 0D                    5171 	.db 0x0d
      0057AF 00                    5172 	.db 0x00
                                   5173 	.area CSEG    (CODE)
                                   5174 	.area CONST   (CODE)
      0057B0                       5175 ___str_55:
      0057B0 52 65 61 64 20 62 61  5176 	.ascii "Read back from address 0x%02X: 0x%02X"
             63 6B 20 66 72 6F 6D
             20 61 64 64 72 65 73
             73 20 30 78 25 30 32
             58 3A 20 30 78 25 30
             32 58
      0057D5 0A                    5177 	.db 0x0a
      0057D6 0D                    5178 	.db 0x0d
      0057D7 00                    5179 	.db 0x00
                                   5180 	.area CSEG    (CODE)
                                   5181 	.area CONST   (CODE)
      0057D8                       5182 ___str_56:
      0057D8 4D 41 54 43 48 20 2D  5183 	.ascii "MATCH - Write/Read successful!"
             20 57 72 69 74 65 2F
             52 65 61 64 20 73 75
             63 63 65 73 73 66 75
             6C 21
      0057F6 0A                    5184 	.db 0x0a
      0057F7 0D                    5185 	.db 0x0d
      0057F8 00                    5186 	.db 0x00
                                   5187 	.area CSEG    (CODE)
                                   5188 	.area CONST   (CODE)
      0057F9                       5189 ___str_57:
      0057F9 45 52 52 4F 52 20 2D  5190 	.ascii "ERROR - Data mismatch!"
             20 44 61 74 61 20 6D
             69 73 6D 61 74 63 68
             21
      00580F 0A                    5191 	.db 0x0a
      005810 0D                    5192 	.db 0x0d
      005811 00                    5193 	.db 0x00
                                   5194 	.area CSEG    (CODE)
                                   5195 	.area XINIT   (CODE)
      00581D                       5196 __xinit__address_range_flag:
      00581D 01 00                 5197 	.byte #0x01, #0x00	;  1
      00581F                       5198 __xinit__data_range_flag:
      00581F 01 00                 5199 	.byte #0x01, #0x00	;  1
      005821                       5200 __xinit__block:
      005821 00 00                 5201 	.byte #0x00, #0x00	; 0
                                   5202 	.area CABS    (ABS,CODE)
