                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module eeprom
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _EEPROM_hexdump
                                     12 	.globl _take_address
                                     13 	.globl _putchar
                                     14 	.globl _i2c_delay
                                     15 	.globl _i2c_stop
                                     16 	.globl _i2c_start
                                     17 	.globl _i2c_read
                                     18 	.globl _i2c_write
                                     19 	.globl _printf
                                     20 	.globl _CY
                                     21 	.globl _AC
                                     22 	.globl _F0
                                     23 	.globl _RS1
                                     24 	.globl _RS0
                                     25 	.globl _OV
                                     26 	.globl _F1
                                     27 	.globl _P
                                     28 	.globl _PS
                                     29 	.globl _PT1
                                     30 	.globl _PX1
                                     31 	.globl _PT0
                                     32 	.globl _PX0
                                     33 	.globl _RD
                                     34 	.globl _WR
                                     35 	.globl _T1
                                     36 	.globl _T0
                                     37 	.globl _INT1
                                     38 	.globl _INT0
                                     39 	.globl _TXD
                                     40 	.globl _RXD
                                     41 	.globl _P3_7
                                     42 	.globl _P3_6
                                     43 	.globl _P3_5
                                     44 	.globl _P3_4
                                     45 	.globl _P3_3
                                     46 	.globl _P3_2
                                     47 	.globl _P3_1
                                     48 	.globl _P3_0
                                     49 	.globl _EA
                                     50 	.globl _ES
                                     51 	.globl _ET1
                                     52 	.globl _EX1
                                     53 	.globl _ET0
                                     54 	.globl _EX0
                                     55 	.globl _P2_7
                                     56 	.globl _P2_6
                                     57 	.globl _P2_5
                                     58 	.globl _P2_4
                                     59 	.globl _P2_3
                                     60 	.globl _P2_2
                                     61 	.globl _P2_1
                                     62 	.globl _P2_0
                                     63 	.globl _SM0
                                     64 	.globl _SM1
                                     65 	.globl _SM2
                                     66 	.globl _REN
                                     67 	.globl _TB8
                                     68 	.globl _RB8
                                     69 	.globl _TI
                                     70 	.globl _RI
                                     71 	.globl _P1_7
                                     72 	.globl _P1_6
                                     73 	.globl _P1_5
                                     74 	.globl _P1_4
                                     75 	.globl _P1_3
                                     76 	.globl _P1_2
                                     77 	.globl _P1_1
                                     78 	.globl _P1_0
                                     79 	.globl _TF1
                                     80 	.globl _TR1
                                     81 	.globl _TF0
                                     82 	.globl _TR0
                                     83 	.globl _IE1
                                     84 	.globl _IT1
                                     85 	.globl _IE0
                                     86 	.globl _IT0
                                     87 	.globl _P0_7
                                     88 	.globl _P0_6
                                     89 	.globl _P0_5
                                     90 	.globl _P0_4
                                     91 	.globl _P0_3
                                     92 	.globl _P0_2
                                     93 	.globl _P0_1
                                     94 	.globl _P0_0
                                     95 	.globl _P5_7
                                     96 	.globl _P5_6
                                     97 	.globl _P5_5
                                     98 	.globl _P5_4
                                     99 	.globl _P5_3
                                    100 	.globl _P5_2
                                    101 	.globl _P5_1
                                    102 	.globl _P5_0
                                    103 	.globl _P4_7
                                    104 	.globl _P4_6
                                    105 	.globl _P4_5
                                    106 	.globl _P4_4
                                    107 	.globl _P4_3
                                    108 	.globl _P4_2
                                    109 	.globl _P4_1
                                    110 	.globl _P4_0
                                    111 	.globl _PX0L
                                    112 	.globl _PT0L
                                    113 	.globl _PX1L
                                    114 	.globl _PT1L
                                    115 	.globl _PSL
                                    116 	.globl _PT2L
                                    117 	.globl _PPCL
                                    118 	.globl _EC
                                    119 	.globl _CCF0
                                    120 	.globl _CCF1
                                    121 	.globl _CCF2
                                    122 	.globl _CCF3
                                    123 	.globl _CCF4
                                    124 	.globl _CR
                                    125 	.globl _CF
                                    126 	.globl _TF2
                                    127 	.globl _EXF2
                                    128 	.globl _RCLK
                                    129 	.globl _TCLK
                                    130 	.globl _EXEN2
                                    131 	.globl _TR2
                                    132 	.globl _C_T2
                                    133 	.globl _CP_RL2
                                    134 	.globl _T2CON_7
                                    135 	.globl _T2CON_6
                                    136 	.globl _T2CON_5
                                    137 	.globl _T2CON_4
                                    138 	.globl _T2CON_3
                                    139 	.globl _T2CON_2
                                    140 	.globl _T2CON_1
                                    141 	.globl _T2CON_0
                                    142 	.globl _PT2
                                    143 	.globl _ET2
                                    144 	.globl _B
                                    145 	.globl _ACC
                                    146 	.globl _PSW
                                    147 	.globl _IP
                                    148 	.globl _P3
                                    149 	.globl _IE
                                    150 	.globl _P2
                                    151 	.globl _SBUF
                                    152 	.globl _SCON
                                    153 	.globl _P1
                                    154 	.globl _TH1
                                    155 	.globl _TH0
                                    156 	.globl _TL1
                                    157 	.globl _TL0
                                    158 	.globl _TMOD
                                    159 	.globl _TCON
                                    160 	.globl _PCON
                                    161 	.globl _DPH
                                    162 	.globl _DPL
                                    163 	.globl _SP
                                    164 	.globl _P0
                                    165 	.globl _EECON
                                    166 	.globl _KBF
                                    167 	.globl _KBE
                                    168 	.globl _KBLS
                                    169 	.globl _BRL
                                    170 	.globl _BDRCON
                                    171 	.globl _T2MOD
                                    172 	.globl _SPDAT
                                    173 	.globl _SPSTA
                                    174 	.globl _SPCON
                                    175 	.globl _SADEN
                                    176 	.globl _SADDR
                                    177 	.globl _WDTPRG
                                    178 	.globl _WDTRST
                                    179 	.globl _P5
                                    180 	.globl _P4
                                    181 	.globl _IPH1
                                    182 	.globl _IPL1
                                    183 	.globl _IPH0
                                    184 	.globl _IPL0
                                    185 	.globl _IEN1
                                    186 	.globl _IEN0
                                    187 	.globl _CMOD
                                    188 	.globl _CL
                                    189 	.globl _CH
                                    190 	.globl _CCON
                                    191 	.globl _CCAPM4
                                    192 	.globl _CCAPM3
                                    193 	.globl _CCAPM2
                                    194 	.globl _CCAPM1
                                    195 	.globl _CCAPM0
                                    196 	.globl _CCAP4L
                                    197 	.globl _CCAP3L
                                    198 	.globl _CCAP2L
                                    199 	.globl _CCAP1L
                                    200 	.globl _CCAP0L
                                    201 	.globl _CCAP4H
                                    202 	.globl _CCAP3H
                                    203 	.globl _CCAP2H
                                    204 	.globl _CCAP1H
                                    205 	.globl _CCAP0H
                                    206 	.globl _CKCON1
                                    207 	.globl _CKCON0
                                    208 	.globl _CKRL
                                    209 	.globl _AUXR1
                                    210 	.globl _AUXR
                                    211 	.globl _TH2
                                    212 	.globl _TL2
                                    213 	.globl _RCAP2H
                                    214 	.globl _RCAP2L
                                    215 	.globl _T2CON
                                    216 	.globl _EEPROM_hexdump_PARM_2
                                    217 	.globl _eeprom_write_PARM_2
                                    218 	.globl _eeprom_write
                                    219 	.globl _eeprom_read
                                    220 	.globl _handler_EEPROM_hexdump
                                    221 	.globl _eeprom_reset
                                    222 ;--------------------------------------------------------
                                    223 ; special function registers
                                    224 ;--------------------------------------------------------
                                    225 	.area RSEG    (ABS,DATA)
      000000                        226 	.org 0x0000
                           0000C8   227 _T2CON	=	0x00c8
                           0000CA   228 _RCAP2L	=	0x00ca
                           0000CB   229 _RCAP2H	=	0x00cb
                           0000CC   230 _TL2	=	0x00cc
                           0000CD   231 _TH2	=	0x00cd
                           00008E   232 _AUXR	=	0x008e
                           0000A2   233 _AUXR1	=	0x00a2
                           000097   234 _CKRL	=	0x0097
                           00008F   235 _CKCON0	=	0x008f
                           0000AF   236 _CKCON1	=	0x00af
                           0000FA   237 _CCAP0H	=	0x00fa
                           0000FB   238 _CCAP1H	=	0x00fb
                           0000FC   239 _CCAP2H	=	0x00fc
                           0000FD   240 _CCAP3H	=	0x00fd
                           0000FE   241 _CCAP4H	=	0x00fe
                           0000EA   242 _CCAP0L	=	0x00ea
                           0000EB   243 _CCAP1L	=	0x00eb
                           0000EC   244 _CCAP2L	=	0x00ec
                           0000ED   245 _CCAP3L	=	0x00ed
                           0000EE   246 _CCAP4L	=	0x00ee
                           0000DA   247 _CCAPM0	=	0x00da
                           0000DB   248 _CCAPM1	=	0x00db
                           0000DC   249 _CCAPM2	=	0x00dc
                           0000DD   250 _CCAPM3	=	0x00dd
                           0000DE   251 _CCAPM4	=	0x00de
                           0000D8   252 _CCON	=	0x00d8
                           0000F9   253 _CH	=	0x00f9
                           0000E9   254 _CL	=	0x00e9
                           0000D9   255 _CMOD	=	0x00d9
                           0000A8   256 _IEN0	=	0x00a8
                           0000B1   257 _IEN1	=	0x00b1
                           0000B8   258 _IPL0	=	0x00b8
                           0000B7   259 _IPH0	=	0x00b7
                           0000B2   260 _IPL1	=	0x00b2
                           0000B3   261 _IPH1	=	0x00b3
                           0000C0   262 _P4	=	0x00c0
                           0000E8   263 _P5	=	0x00e8
                           0000A6   264 _WDTRST	=	0x00a6
                           0000A7   265 _WDTPRG	=	0x00a7
                           0000A9   266 _SADDR	=	0x00a9
                           0000B9   267 _SADEN	=	0x00b9
                           0000C3   268 _SPCON	=	0x00c3
                           0000C4   269 _SPSTA	=	0x00c4
                           0000C5   270 _SPDAT	=	0x00c5
                           0000C9   271 _T2MOD	=	0x00c9
                           00009B   272 _BDRCON	=	0x009b
                           00009A   273 _BRL	=	0x009a
                           00009C   274 _KBLS	=	0x009c
                           00009D   275 _KBE	=	0x009d
                           00009E   276 _KBF	=	0x009e
                           0000D2   277 _EECON	=	0x00d2
                           000080   278 _P0	=	0x0080
                           000081   279 _SP	=	0x0081
                           000082   280 _DPL	=	0x0082
                           000083   281 _DPH	=	0x0083
                           000087   282 _PCON	=	0x0087
                           000088   283 _TCON	=	0x0088
                           000089   284 _TMOD	=	0x0089
                           00008A   285 _TL0	=	0x008a
                           00008B   286 _TL1	=	0x008b
                           00008C   287 _TH0	=	0x008c
                           00008D   288 _TH1	=	0x008d
                           000090   289 _P1	=	0x0090
                           000098   290 _SCON	=	0x0098
                           000099   291 _SBUF	=	0x0099
                           0000A0   292 _P2	=	0x00a0
                           0000A8   293 _IE	=	0x00a8
                           0000B0   294 _P3	=	0x00b0
                           0000B8   295 _IP	=	0x00b8
                           0000D0   296 _PSW	=	0x00d0
                           0000E0   297 _ACC	=	0x00e0
                           0000F0   298 _B	=	0x00f0
                                    299 ;--------------------------------------------------------
                                    300 ; special function bits
                                    301 ;--------------------------------------------------------
                                    302 	.area RSEG    (ABS,DATA)
      000000                        303 	.org 0x0000
                           0000AD   304 _ET2	=	0x00ad
                           0000BD   305 _PT2	=	0x00bd
                           0000C8   306 _T2CON_0	=	0x00c8
                           0000C9   307 _T2CON_1	=	0x00c9
                           0000CA   308 _T2CON_2	=	0x00ca
                           0000CB   309 _T2CON_3	=	0x00cb
                           0000CC   310 _T2CON_4	=	0x00cc
                           0000CD   311 _T2CON_5	=	0x00cd
                           0000CE   312 _T2CON_6	=	0x00ce
                           0000CF   313 _T2CON_7	=	0x00cf
                           0000C8   314 _CP_RL2	=	0x00c8
                           0000C9   315 _C_T2	=	0x00c9
                           0000CA   316 _TR2	=	0x00ca
                           0000CB   317 _EXEN2	=	0x00cb
                           0000CC   318 _TCLK	=	0x00cc
                           0000CD   319 _RCLK	=	0x00cd
                           0000CE   320 _EXF2	=	0x00ce
                           0000CF   321 _TF2	=	0x00cf
                           0000DF   322 _CF	=	0x00df
                           0000DE   323 _CR	=	0x00de
                           0000DC   324 _CCF4	=	0x00dc
                           0000DB   325 _CCF3	=	0x00db
                           0000DA   326 _CCF2	=	0x00da
                           0000D9   327 _CCF1	=	0x00d9
                           0000D8   328 _CCF0	=	0x00d8
                           0000AE   329 _EC	=	0x00ae
                           0000BE   330 _PPCL	=	0x00be
                           0000BD   331 _PT2L	=	0x00bd
                           0000BC   332 _PSL	=	0x00bc
                           0000BB   333 _PT1L	=	0x00bb
                           0000BA   334 _PX1L	=	0x00ba
                           0000B9   335 _PT0L	=	0x00b9
                           0000B8   336 _PX0L	=	0x00b8
                           0000C0   337 _P4_0	=	0x00c0
                           0000C1   338 _P4_1	=	0x00c1
                           0000C2   339 _P4_2	=	0x00c2
                           0000C3   340 _P4_3	=	0x00c3
                           0000C4   341 _P4_4	=	0x00c4
                           0000C5   342 _P4_5	=	0x00c5
                           0000C6   343 _P4_6	=	0x00c6
                           0000C7   344 _P4_7	=	0x00c7
                           0000E8   345 _P5_0	=	0x00e8
                           0000E9   346 _P5_1	=	0x00e9
                           0000EA   347 _P5_2	=	0x00ea
                           0000EB   348 _P5_3	=	0x00eb
                           0000EC   349 _P5_4	=	0x00ec
                           0000ED   350 _P5_5	=	0x00ed
                           0000EE   351 _P5_6	=	0x00ee
                           0000EF   352 _P5_7	=	0x00ef
                           000080   353 _P0_0	=	0x0080
                           000081   354 _P0_1	=	0x0081
                           000082   355 _P0_2	=	0x0082
                           000083   356 _P0_3	=	0x0083
                           000084   357 _P0_4	=	0x0084
                           000085   358 _P0_5	=	0x0085
                           000086   359 _P0_6	=	0x0086
                           000087   360 _P0_7	=	0x0087
                           000088   361 _IT0	=	0x0088
                           000089   362 _IE0	=	0x0089
                           00008A   363 _IT1	=	0x008a
                           00008B   364 _IE1	=	0x008b
                           00008C   365 _TR0	=	0x008c
                           00008D   366 _TF0	=	0x008d
                           00008E   367 _TR1	=	0x008e
                           00008F   368 _TF1	=	0x008f
                           000090   369 _P1_0	=	0x0090
                           000091   370 _P1_1	=	0x0091
                           000092   371 _P1_2	=	0x0092
                           000093   372 _P1_3	=	0x0093
                           000094   373 _P1_4	=	0x0094
                           000095   374 _P1_5	=	0x0095
                           000096   375 _P1_6	=	0x0096
                           000097   376 _P1_7	=	0x0097
                           000098   377 _RI	=	0x0098
                           000099   378 _TI	=	0x0099
                           00009A   379 _RB8	=	0x009a
                           00009B   380 _TB8	=	0x009b
                           00009C   381 _REN	=	0x009c
                           00009D   382 _SM2	=	0x009d
                           00009E   383 _SM1	=	0x009e
                           00009F   384 _SM0	=	0x009f
                           0000A0   385 _P2_0	=	0x00a0
                           0000A1   386 _P2_1	=	0x00a1
                           0000A2   387 _P2_2	=	0x00a2
                           0000A3   388 _P2_3	=	0x00a3
                           0000A4   389 _P2_4	=	0x00a4
                           0000A5   390 _P2_5	=	0x00a5
                           0000A6   391 _P2_6	=	0x00a6
                           0000A7   392 _P2_7	=	0x00a7
                           0000A8   393 _EX0	=	0x00a8
                           0000A9   394 _ET0	=	0x00a9
                           0000AA   395 _EX1	=	0x00aa
                           0000AB   396 _ET1	=	0x00ab
                           0000AC   397 _ES	=	0x00ac
                           0000AF   398 _EA	=	0x00af
                           0000B0   399 _P3_0	=	0x00b0
                           0000B1   400 _P3_1	=	0x00b1
                           0000B2   401 _P3_2	=	0x00b2
                           0000B3   402 _P3_3	=	0x00b3
                           0000B4   403 _P3_4	=	0x00b4
                           0000B5   404 _P3_5	=	0x00b5
                           0000B6   405 _P3_6	=	0x00b6
                           0000B7   406 _P3_7	=	0x00b7
                           0000B0   407 _RXD	=	0x00b0
                           0000B1   408 _TXD	=	0x00b1
                           0000B2   409 _INT0	=	0x00b2
                           0000B3   410 _INT1	=	0x00b3
                           0000B4   411 _T0	=	0x00b4
                           0000B5   412 _T1	=	0x00b5
                           0000B6   413 _WR	=	0x00b6
                           0000B7   414 _RD	=	0x00b7
                           0000B8   415 _PX0	=	0x00b8
                           0000B9   416 _PT0	=	0x00b9
                           0000BA   417 _PX1	=	0x00ba
                           0000BB   418 _PT1	=	0x00bb
                           0000BC   419 _PS	=	0x00bc
                           0000D0   420 _P	=	0x00d0
                           0000D1   421 _F1	=	0x00d1
                           0000D2   422 _OV	=	0x00d2
                           0000D3   423 _RS0	=	0x00d3
                           0000D4   424 _RS1	=	0x00d4
                           0000D5   425 _F0	=	0x00d5
                           0000D6   426 _AC	=	0x00d6
                           0000D7   427 _CY	=	0x00d7
                                    428 ;--------------------------------------------------------
                                    429 ; overlayable register banks
                                    430 ;--------------------------------------------------------
                                    431 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        432 	.ds 8
                                    433 ;--------------------------------------------------------
                                    434 ; internal ram data
                                    435 ;--------------------------------------------------------
                                    436 	.area DSEG    (DATA)
                                    437 ;--------------------------------------------------------
                                    438 ; overlayable items in internal ram 
                                    439 ;--------------------------------------------------------
                                    440 ;--------------------------------------------------------
                                    441 ; indirectly addressable internal ram data
                                    442 ;--------------------------------------------------------
                                    443 	.area ISEG    (DATA)
                                    444 ;--------------------------------------------------------
                                    445 ; absolute internal ram data
                                    446 ;--------------------------------------------------------
                                    447 	.area IABS    (ABS,DATA)
                                    448 	.area IABS    (ABS,DATA)
                                    449 ;--------------------------------------------------------
                                    450 ; bit data
                                    451 ;--------------------------------------------------------
                                    452 	.area BSEG    (BIT)
                                    453 ;--------------------------------------------------------
                                    454 ; paged external ram data
                                    455 ;--------------------------------------------------------
                                    456 	.area PSEG    (PAG,XDATA)
                                    457 ;--------------------------------------------------------
                                    458 ; external ram data
                                    459 ;--------------------------------------------------------
                                    460 	.area XSEG    (XDATA)
      000405                        461 _eeprom_write_PARM_2:
      000405                        462 	.ds 1
      000406                        463 _eeprom_write_address_65536_23:
      000406                        464 	.ds 2
      000408                        465 _eeprom_read_address_65536_30:
      000408                        466 	.ds 2
      00040A                        467 _EEPROM_hexdump_PARM_2:
      00040A                        468 	.ds 2
      00040C                        469 _EEPROM_hexdump_start_address_65536_35:
      00040C                        470 	.ds 2
      00040E                        471 _EEPROM_hexdump_current_address_65537_37:
      00040E                        472 	.ds 2
                                    473 ;--------------------------------------------------------
                                    474 ; absolute external ram data
                                    475 ;--------------------------------------------------------
                                    476 	.area XABS    (ABS,XDATA)
                                    477 ;--------------------------------------------------------
                                    478 ; external initialized ram data
                                    479 ;--------------------------------------------------------
                                    480 	.area XISEG   (XDATA)
                                    481 	.area HOME    (CODE)
                                    482 	.area GSINIT0 (CODE)
                                    483 	.area GSINIT1 (CODE)
                                    484 	.area GSINIT2 (CODE)
                                    485 	.area GSINIT3 (CODE)
                                    486 	.area GSINIT4 (CODE)
                                    487 	.area GSINIT5 (CODE)
                                    488 	.area GSINIT  (CODE)
                                    489 	.area GSFINAL (CODE)
                                    490 	.area CSEG    (CODE)
                                    491 ;--------------------------------------------------------
                                    492 ; global & static initialisations
                                    493 ;--------------------------------------------------------
                                    494 	.area HOME    (CODE)
                                    495 	.area GSINIT  (CODE)
                                    496 	.area GSFINAL (CODE)
                                    497 	.area GSINIT  (CODE)
                                    498 ;--------------------------------------------------------
                                    499 ; Home
                                    500 ;--------------------------------------------------------
                                    501 	.area HOME    (CODE)
                                    502 	.area HOME    (CODE)
                                    503 ;--------------------------------------------------------
                                    504 ; code
                                    505 ;--------------------------------------------------------
                                    506 	.area CSEG    (CODE)
                                    507 ;------------------------------------------------------------
                                    508 ;Allocation info for local variables in function 'eeprom_write'
                                    509 ;------------------------------------------------------------
                                    510 ;data                      Allocated with name '_eeprom_write_PARM_2'
                                    511 ;address                   Allocated with name '_eeprom_write_address_65536_23'
                                    512 ;i                         Allocated with name '_eeprom_write_i_131072_28'
                                    513 ;------------------------------------------------------------
                                    514 ;	src/eeprom.c:15: int eeprom_write(unsigned int address, unsigned char data) 
                                    515 ;	-----------------------------------------
                                    516 ;	 function eeprom_write
                                    517 ;	-----------------------------------------
      002333                        518 _eeprom_write:
                           000007   519 	ar7 = 0x07
                           000006   520 	ar6 = 0x06
                           000005   521 	ar5 = 0x05
                           000004   522 	ar4 = 0x04
                           000003   523 	ar3 = 0x03
                           000002   524 	ar2 = 0x02
                           000001   525 	ar1 = 0x01
                           000000   526 	ar0 = 0x00
      002333 AF 83            [24]  527 	mov	r7,dph
      002335 E5 82            [12]  528 	mov	a,dpl
      002337 90 04 06         [24]  529 	mov	dptr,#_eeprom_write_address_65536_23
      00233A F0               [24]  530 	movx	@dptr,a
      00233B EF               [12]  531 	mov	a,r7
      00233C A3               [24]  532 	inc	dptr
      00233D F0               [24]  533 	movx	@dptr,a
                                    534 ;	src/eeprom.c:18: i2c_start();
      00233E 12 29 D4         [24]  535 	lcall	_i2c_start
                                    536 ;	src/eeprom.c:21: if(!i2c_write(EEPROM_ID | block | WRITE)) {
      002341 90 04 5E         [24]  537 	mov	dptr,#_block
      002344 E0               [24]  538 	movx	a,@dptr
      002345 FE               [12]  539 	mov	r6,a
      002346 A3               [24]  540 	inc	dptr
      002347 E0               [24]  541 	movx	a,@dptr
      002348 43 06 A0         [24]  542 	orl	ar6,#0xa0
      00234B 8E 82            [24]  543 	mov	dpl,r6
      00234D 12 2A 6E         [24]  544 	lcall	_i2c_write
      002350 E5 82            [12]  545 	mov	a,dpl
      002352 85 83 F0         [24]  546 	mov	b,dph
      002355 45 F0            [12]  547 	orl	a,b
      002357 70 1C            [24]  548 	jnz	00102$
                                    549 ;	src/eeprom.c:22: printf("Error: No ACK for device address (write)\n\r");
      002359 74 1C            [12]  550 	mov	a,#___str_0
      00235B C0 E0            [24]  551 	push	acc
      00235D 74 3E            [12]  552 	mov	a,#(___str_0 >> 8)
      00235F C0 E0            [24]  553 	push	acc
      002361 74 80            [12]  554 	mov	a,#0x80
      002363 C0 E0            [24]  555 	push	acc
      002365 12 30 C9         [24]  556 	lcall	_printf
      002368 15 81            [12]  557 	dec	sp
      00236A 15 81            [12]  558 	dec	sp
      00236C 15 81            [12]  559 	dec	sp
                                    560 ;	src/eeprom.c:23: i2c_stop();
      00236E 12 29 C7         [24]  561 	lcall	_i2c_stop
                                    562 ;	src/eeprom.c:24: return 0;
      002371 90 00 00         [24]  563 	mov	dptr,#0x0000
      002374 22               [24]  564 	ret
      002375                        565 00102$:
                                    566 ;	src/eeprom.c:28: if(!i2c_write((unsigned char)address)) {
      002375 90 04 06         [24]  567 	mov	dptr,#_eeprom_write_address_65536_23
      002378 E0               [24]  568 	movx	a,@dptr
      002379 FE               [12]  569 	mov	r6,a
      00237A A3               [24]  570 	inc	dptr
      00237B E0               [24]  571 	movx	a,@dptr
      00237C FF               [12]  572 	mov	r7,a
      00237D 8E 05            [24]  573 	mov	ar5,r6
      00237F 8D 82            [24]  574 	mov	dpl,r5
      002381 C0 07            [24]  575 	push	ar7
      002383 C0 06            [24]  576 	push	ar6
      002385 12 2A 6E         [24]  577 	lcall	_i2c_write
      002388 E5 82            [12]  578 	mov	a,dpl
      00238A 85 83 F0         [24]  579 	mov	b,dph
      00238D D0 06            [24]  580 	pop	ar6
      00238F D0 07            [24]  581 	pop	ar7
      002391 45 F0            [12]  582 	orl	a,b
      002393 70 1C            [24]  583 	jnz	00104$
                                    584 ;	src/eeprom.c:29: printf("Error: No ACK for memory address\n\r");
      002395 74 47            [12]  585 	mov	a,#___str_1
      002397 C0 E0            [24]  586 	push	acc
      002399 74 3E            [12]  587 	mov	a,#(___str_1 >> 8)
      00239B C0 E0            [24]  588 	push	acc
      00239D 74 80            [12]  589 	mov	a,#0x80
      00239F C0 E0            [24]  590 	push	acc
      0023A1 12 30 C9         [24]  591 	lcall	_printf
      0023A4 15 81            [12]  592 	dec	sp
      0023A6 15 81            [12]  593 	dec	sp
      0023A8 15 81            [12]  594 	dec	sp
                                    595 ;	src/eeprom.c:30: i2c_stop();
      0023AA 12 29 C7         [24]  596 	lcall	_i2c_stop
                                    597 ;	src/eeprom.c:31: return 0;
      0023AD 90 00 00         [24]  598 	mov	dptr,#0x0000
      0023B0 22               [24]  599 	ret
      0023B1                        600 00104$:
                                    601 ;	src/eeprom.c:35: if(!i2c_write(data)) {
      0023B1 90 04 05         [24]  602 	mov	dptr,#_eeprom_write_PARM_2
      0023B4 E0               [24]  603 	movx	a,@dptr
      0023B5 FD               [12]  604 	mov	r5,a
      0023B6 F5 82            [12]  605 	mov	dpl,a
      0023B8 C0 07            [24]  606 	push	ar7
      0023BA C0 06            [24]  607 	push	ar6
      0023BC C0 05            [24]  608 	push	ar5
      0023BE 12 2A 6E         [24]  609 	lcall	_i2c_write
      0023C1 E5 82            [12]  610 	mov	a,dpl
      0023C3 85 83 F0         [24]  611 	mov	b,dph
      0023C6 D0 05            [24]  612 	pop	ar5
      0023C8 D0 06            [24]  613 	pop	ar6
      0023CA D0 07            [24]  614 	pop	ar7
      0023CC 45 F0            [12]  615 	orl	a,b
      0023CE 70 1C            [24]  616 	jnz	00106$
                                    617 ;	src/eeprom.c:36: printf("Error: No ACK for data\n\r");
      0023D0 74 6A            [12]  618 	mov	a,#___str_2
      0023D2 C0 E0            [24]  619 	push	acc
      0023D4 74 3E            [12]  620 	mov	a,#(___str_2 >> 8)
      0023D6 C0 E0            [24]  621 	push	acc
      0023D8 74 80            [12]  622 	mov	a,#0x80
      0023DA C0 E0            [24]  623 	push	acc
      0023DC 12 30 C9         [24]  624 	lcall	_printf
      0023DF 15 81            [12]  625 	dec	sp
      0023E1 15 81            [12]  626 	dec	sp
      0023E3 15 81            [12]  627 	dec	sp
                                    628 ;	src/eeprom.c:37: i2c_stop();
      0023E5 12 29 C7         [24]  629 	lcall	_i2c_stop
                                    630 ;	src/eeprom.c:38: return 0;
      0023E8 90 00 00         [24]  631 	mov	dptr,#0x0000
      0023EB 22               [24]  632 	ret
      0023EC                        633 00106$:
                                    634 ;	src/eeprom.c:41: i2c_stop();
      0023EC C0 07            [24]  635 	push	ar7
      0023EE C0 06            [24]  636 	push	ar6
      0023F0 C0 05            [24]  637 	push	ar5
      0023F2 12 29 C7         [24]  638 	lcall	_i2c_stop
      0023F5 D0 05            [24]  639 	pop	ar5
      0023F7 D0 06            [24]  640 	pop	ar6
      0023F9 D0 07            [24]  641 	pop	ar7
                                    642 ;	src/eeprom.c:43: for(int i = 0; i<10; i++)
      0023FB 7B 00            [12]  643 	mov	r3,#0x00
      0023FD 7C 00            [12]  644 	mov	r4,#0x00
      0023FF                        645 00109$:
      0023FF C3               [12]  646 	clr	c
      002400 EB               [12]  647 	mov	a,r3
      002401 94 0A            [12]  648 	subb	a,#0x0a
      002403 EC               [12]  649 	mov	a,r4
      002404 64 80            [12]  650 	xrl	a,#0x80
      002406 94 80            [12]  651 	subb	a,#0x80
      002408 50 1E            [24]  652 	jnc	00107$
                                    653 ;	src/eeprom.c:45: i2c_delay();
      00240A C0 07            [24]  654 	push	ar7
      00240C C0 06            [24]  655 	push	ar6
      00240E C0 05            [24]  656 	push	ar5
      002410 C0 04            [24]  657 	push	ar4
      002412 C0 03            [24]  658 	push	ar3
      002414 12 29 B0         [24]  659 	lcall	_i2c_delay
      002417 D0 03            [24]  660 	pop	ar3
      002419 D0 04            [24]  661 	pop	ar4
      00241B D0 05            [24]  662 	pop	ar5
      00241D D0 06            [24]  663 	pop	ar6
      00241F D0 07            [24]  664 	pop	ar7
                                    665 ;	src/eeprom.c:43: for(int i = 0; i<10; i++)
      002421 0B               [12]  666 	inc	r3
      002422 BB 00 DA         [24]  667 	cjne	r3,#0x00,00109$
      002425 0C               [12]  668 	inc	r4
      002426 80 D7            [24]  669 	sjmp	00109$
      002428                        670 00107$:
                                    671 ;	src/eeprom.c:48: printf("| Writing at Address 0x%03X Data 0x%02X          |\n\r", address, data);
      002428 7C 00            [12]  672 	mov	r4,#0x00
      00242A C0 05            [24]  673 	push	ar5
      00242C C0 04            [24]  674 	push	ar4
      00242E C0 06            [24]  675 	push	ar6
      002430 C0 07            [24]  676 	push	ar7
      002432 74 83            [12]  677 	mov	a,#___str_3
      002434 C0 E0            [24]  678 	push	acc
      002436 74 3E            [12]  679 	mov	a,#(___str_3 >> 8)
      002438 C0 E0            [24]  680 	push	acc
      00243A 74 80            [12]  681 	mov	a,#0x80
      00243C C0 E0            [24]  682 	push	acc
      00243E 12 30 C9         [24]  683 	lcall	_printf
      002441 E5 81            [12]  684 	mov	a,sp
      002443 24 F9            [12]  685 	add	a,#0xf9
      002445 F5 81            [12]  686 	mov	sp,a
                                    687 ;	src/eeprom.c:49: printf("│ Write successful!                             │\n\r");
      002447 74 B8            [12]  688 	mov	a,#___str_4
      002449 C0 E0            [24]  689 	push	acc
      00244B 74 3E            [12]  690 	mov	a,#(___str_4 >> 8)
      00244D C0 E0            [24]  691 	push	acc
      00244F 74 80            [12]  692 	mov	a,#0x80
      002451 C0 E0            [24]  693 	push	acc
      002453 12 30 C9         [24]  694 	lcall	_printf
      002456 15 81            [12]  695 	dec	sp
      002458 15 81            [12]  696 	dec	sp
      00245A 15 81            [12]  697 	dec	sp
                                    698 ;	src/eeprom.c:50: printf("└───────────────────────────────────────────────┘\n\r");
      00245C 74 F0            [12]  699 	mov	a,#___str_5
      00245E C0 E0            [24]  700 	push	acc
      002460 74 3E            [12]  701 	mov	a,#(___str_5 >> 8)
      002462 C0 E0            [24]  702 	push	acc
      002464 74 80            [12]  703 	mov	a,#0x80
      002466 C0 E0            [24]  704 	push	acc
      002468 12 30 C9         [24]  705 	lcall	_printf
      00246B 15 81            [12]  706 	dec	sp
      00246D 15 81            [12]  707 	dec	sp
      00246F 15 81            [12]  708 	dec	sp
                                    709 ;	src/eeprom.c:51: return 1;  // Success
      002471 90 00 01         [24]  710 	mov	dptr,#0x0001
                                    711 ;	src/eeprom.c:54: }
      002474 22               [24]  712 	ret
                                    713 ;------------------------------------------------------------
                                    714 ;Allocation info for local variables in function 'eeprom_read'
                                    715 ;------------------------------------------------------------
                                    716 ;address                   Allocated with name '_eeprom_read_address_65536_30'
                                    717 ;result                    Allocated with name '_eeprom_read_result_65536_31'
                                    718 ;------------------------------------------------------------
                                    719 ;	src/eeprom.c:70: int eeprom_read(unsigned int address)
                                    720 ;	-----------------------------------------
                                    721 ;	 function eeprom_read
                                    722 ;	-----------------------------------------
      002475                        723 _eeprom_read:
      002475 AF 83            [24]  724 	mov	r7,dph
      002477 E5 82            [12]  725 	mov	a,dpl
      002479 90 04 08         [24]  726 	mov	dptr,#_eeprom_read_address_65536_30
      00247C F0               [24]  727 	movx	@dptr,a
      00247D EF               [12]  728 	mov	a,r7
      00247E A3               [24]  729 	inc	dptr
      00247F F0               [24]  730 	movx	@dptr,a
                                    731 ;	src/eeprom.c:76: i2c_start();
      002480 12 29 D4         [24]  732 	lcall	_i2c_start
                                    733 ;	src/eeprom.c:79: if(!i2c_write(EEPROM_ID | WRITE)) {
      002483 75 82 A0         [24]  734 	mov	dpl,#0xa0
      002486 12 2A 6E         [24]  735 	lcall	_i2c_write
      002489 E5 82            [12]  736 	mov	a,dpl
      00248B 85 83 F0         [24]  737 	mov	b,dph
      00248E 45 F0            [12]  738 	orl	a,b
      002490 70 1C            [24]  739 	jnz	00102$
                                    740 ;	src/eeprom.c:80: printf("Error: No ACK for device address (write mode)\n\r");
      002492 74 86            [12]  741 	mov	a,#___str_6
      002494 C0 E0            [24]  742 	push	acc
      002496 74 3F            [12]  743 	mov	a,#(___str_6 >> 8)
      002498 C0 E0            [24]  744 	push	acc
      00249A 74 80            [12]  745 	mov	a,#0x80
      00249C C0 E0            [24]  746 	push	acc
      00249E 12 30 C9         [24]  747 	lcall	_printf
      0024A1 15 81            [12]  748 	dec	sp
      0024A3 15 81            [12]  749 	dec	sp
      0024A5 15 81            [12]  750 	dec	sp
                                    751 ;	src/eeprom.c:81: i2c_stop();
      0024A7 12 29 C7         [24]  752 	lcall	_i2c_stop
                                    753 ;	src/eeprom.c:82: return -1;
      0024AA 90 FF FF         [24]  754 	mov	dptr,#0xffff
      0024AD 22               [24]  755 	ret
      0024AE                        756 00102$:
                                    757 ;	src/eeprom.c:86: if(!i2c_write((unsigned char)address)) {
      0024AE 90 04 08         [24]  758 	mov	dptr,#_eeprom_read_address_65536_30
      0024B1 E0               [24]  759 	movx	a,@dptr
      0024B2 FE               [12]  760 	mov	r6,a
      0024B3 A3               [24]  761 	inc	dptr
      0024B4 E0               [24]  762 	movx	a,@dptr
      0024B5 FF               [12]  763 	mov	r7,a
      0024B6 8E 05            [24]  764 	mov	ar5,r6
      0024B8 8D 82            [24]  765 	mov	dpl,r5
      0024BA C0 07            [24]  766 	push	ar7
      0024BC C0 06            [24]  767 	push	ar6
      0024BE 12 2A 6E         [24]  768 	lcall	_i2c_write
      0024C1 E5 82            [12]  769 	mov	a,dpl
      0024C3 85 83 F0         [24]  770 	mov	b,dph
      0024C6 D0 06            [24]  771 	pop	ar6
      0024C8 D0 07            [24]  772 	pop	ar7
      0024CA 45 F0            [12]  773 	orl	a,b
      0024CC 70 1C            [24]  774 	jnz	00104$
                                    775 ;	src/eeprom.c:87: printf("Error: No ACK for memory address\n\r");
      0024CE 74 47            [12]  776 	mov	a,#___str_1
      0024D0 C0 E0            [24]  777 	push	acc
      0024D2 74 3E            [12]  778 	mov	a,#(___str_1 >> 8)
      0024D4 C0 E0            [24]  779 	push	acc
      0024D6 74 80            [12]  780 	mov	a,#0x80
      0024D8 C0 E0            [24]  781 	push	acc
      0024DA 12 30 C9         [24]  782 	lcall	_printf
      0024DD 15 81            [12]  783 	dec	sp
      0024DF 15 81            [12]  784 	dec	sp
      0024E1 15 81            [12]  785 	dec	sp
                                    786 ;	src/eeprom.c:88: i2c_stop();
      0024E3 12 29 C7         [24]  787 	lcall	_i2c_stop
                                    788 ;	src/eeprom.c:89: return -1;
      0024E6 90 FF FF         [24]  789 	mov	dptr,#0xffff
      0024E9 22               [24]  790 	ret
      0024EA                        791 00104$:
                                    792 ;	src/eeprom.c:93: i2c_start();
      0024EA C0 07            [24]  793 	push	ar7
      0024EC C0 06            [24]  794 	push	ar6
      0024EE 12 29 D4         [24]  795 	lcall	_i2c_start
                                    796 ;	src/eeprom.c:96: if(!i2c_write(EEPROM_ID | READ)) {
      0024F1 75 82 A1         [24]  797 	mov	dpl,#0xa1
      0024F4 12 2A 6E         [24]  798 	lcall	_i2c_write
      0024F7 E5 82            [12]  799 	mov	a,dpl
      0024F9 85 83 F0         [24]  800 	mov	b,dph
      0024FC D0 06            [24]  801 	pop	ar6
      0024FE D0 07            [24]  802 	pop	ar7
      002500 45 F0            [12]  803 	orl	a,b
      002502 70 1C            [24]  804 	jnz	00106$
                                    805 ;	src/eeprom.c:97: printf("Error: No ACK for device address (read mode)\n\r");
      002504 74 B6            [12]  806 	mov	a,#___str_7
      002506 C0 E0            [24]  807 	push	acc
      002508 74 3F            [12]  808 	mov	a,#(___str_7 >> 8)
      00250A C0 E0            [24]  809 	push	acc
      00250C 74 80            [12]  810 	mov	a,#0x80
      00250E C0 E0            [24]  811 	push	acc
      002510 12 30 C9         [24]  812 	lcall	_printf
      002513 15 81            [12]  813 	dec	sp
      002515 15 81            [12]  814 	dec	sp
      002517 15 81            [12]  815 	dec	sp
                                    816 ;	src/eeprom.c:98: i2c_stop();
      002519 12 29 C7         [24]  817 	lcall	_i2c_stop
                                    818 ;	src/eeprom.c:99: return -1;
      00251C 90 FF FF         [24]  819 	mov	dptr,#0xffff
      00251F 22               [24]  820 	ret
      002520                        821 00106$:
                                    822 ;	src/eeprom.c:103: result = i2c_read(0);  // 0 means send NACK
      002520 90 00 00         [24]  823 	mov	dptr,#0x0000
      002523 C0 07            [24]  824 	push	ar7
      002525 C0 06            [24]  825 	push	ar6
      002527 12 29 E9         [24]  826 	lcall	_i2c_read
      00252A AC 82            [24]  827 	mov	r4,dpl
      00252C D0 06            [24]  828 	pop	ar6
      00252E D0 07            [24]  829 	pop	ar7
                                    830 ;	src/eeprom.c:105: printf("| 0x%03X : 0x%02X \n\r", address, result);
      002530 7D 00            [12]  831 	mov	r5,#0x00
      002532 C0 05            [24]  832 	push	ar5
      002534 C0 04            [24]  833 	push	ar4
      002536 C0 04            [24]  834 	push	ar4
      002538 C0 05            [24]  835 	push	ar5
      00253A C0 06            [24]  836 	push	ar6
      00253C C0 07            [24]  837 	push	ar7
      00253E 74 E5            [12]  838 	mov	a,#___str_8
      002540 C0 E0            [24]  839 	push	acc
      002542 74 3F            [12]  840 	mov	a,#(___str_8 >> 8)
      002544 C0 E0            [24]  841 	push	acc
      002546 74 80            [12]  842 	mov	a,#0x80
      002548 C0 E0            [24]  843 	push	acc
      00254A 12 30 C9         [24]  844 	lcall	_printf
      00254D E5 81            [12]  845 	mov	a,sp
      00254F 24 F9            [12]  846 	add	a,#0xf9
      002551 F5 81            [12]  847 	mov	sp,a
                                    848 ;	src/eeprom.c:106: printf("│ Read successful!                 │\n\r");
      002553 74 FA            [12]  849 	mov	a,#___str_9
      002555 C0 E0            [24]  850 	push	acc
      002557 74 3F            [12]  851 	mov	a,#(___str_9 >> 8)
      002559 C0 E0            [24]  852 	push	acc
      00255B 74 80            [12]  853 	mov	a,#0x80
      00255D C0 E0            [24]  854 	push	acc
      00255F 12 30 C9         [24]  855 	lcall	_printf
      002562 15 81            [12]  856 	dec	sp
      002564 15 81            [12]  857 	dec	sp
      002566 15 81            [12]  858 	dec	sp
                                    859 ;	src/eeprom.c:107: printf("└───────────────────────────────────────────────┘\n\r");
      002568 74 F0            [12]  860 	mov	a,#___str_5
      00256A C0 E0            [24]  861 	push	acc
      00256C 74 3E            [12]  862 	mov	a,#(___str_5 >> 8)
      00256E C0 E0            [24]  863 	push	acc
      002570 74 80            [12]  864 	mov	a,#0x80
      002572 C0 E0            [24]  865 	push	acc
      002574 12 30 C9         [24]  866 	lcall	_printf
      002577 15 81            [12]  867 	dec	sp
      002579 15 81            [12]  868 	dec	sp
      00257B 15 81            [12]  869 	dec	sp
                                    870 ;	src/eeprom.c:108: i2c_stop();
      00257D 12 29 C7         [24]  871 	lcall	_i2c_stop
      002580 D0 04            [24]  872 	pop	ar4
      002582 D0 05            [24]  873 	pop	ar5
                                    874 ;	src/eeprom.c:109: return result;
      002584 8C 82            [24]  875 	mov	dpl,r4
      002586 8D 83            [24]  876 	mov	dph,r5
                                    877 ;	src/eeprom.c:110: }
      002588 22               [24]  878 	ret
                                    879 ;------------------------------------------------------------
                                    880 ;Allocation info for local variables in function 'EEPROM_hexdump'
                                    881 ;------------------------------------------------------------
                                    882 ;end_address               Allocated with name '_EEPROM_hexdump_PARM_2'
                                    883 ;start_address             Allocated with name '_EEPROM_hexdump_start_address_65536_35'
                                    884 ;num_bytes                 Allocated with name '_EEPROM_hexdump_num_bytes_65537_37'
                                    885 ;current_address           Allocated with name '_EEPROM_hexdump_current_address_65537_37'
                                    886 ;i                         Allocated with name '_EEPROM_hexdump_i_196609_39'
                                    887 ;data                      Allocated with name '_EEPROM_hexdump_data_327682_45'
                                    888 ;i                         Allocated with name '_EEPROM_hexdump_i_196609_47'
                                    889 ;data                      Allocated with name '_EEPROM_hexdump_data_327682_50'
                                    890 ;------------------------------------------------------------
                                    891 ;	src/eeprom.c:125: int EEPROM_hexdump(uint16_t start_address, uint16_t end_address) {
                                    892 ;	-----------------------------------------
                                    893 ;	 function EEPROM_hexdump
                                    894 ;	-----------------------------------------
      002589                        895 _EEPROM_hexdump:
      002589 AF 83            [24]  896 	mov	r7,dph
      00258B E5 82            [12]  897 	mov	a,dpl
      00258D 90 04 0C         [24]  898 	mov	dptr,#_EEPROM_hexdump_start_address_65536_35
      002590 F0               [24]  899 	movx	@dptr,a
      002591 EF               [12]  900 	mov	a,r7
      002592 A3               [24]  901 	inc	dptr
      002593 F0               [24]  902 	movx	@dptr,a
                                    903 ;	src/eeprom.c:127: printf("\r\n----------------------------------------------------------------\r\n");
      002594 74 25            [12]  904 	mov	a,#___str_10
      002596 C0 E0            [24]  905 	push	acc
      002598 74 40            [12]  906 	mov	a,#(___str_10 >> 8)
      00259A C0 E0            [24]  907 	push	acc
      00259C 74 80            [12]  908 	mov	a,#0x80
      00259E C0 E0            [24]  909 	push	acc
      0025A0 12 30 C9         [24]  910 	lcall	_printf
      0025A3 15 81            [12]  911 	dec	sp
      0025A5 15 81            [12]  912 	dec	sp
      0025A7 15 81            [12]  913 	dec	sp
                                    914 ;	src/eeprom.c:128: printf("                    EEPROM Hex Dump                               \r\n");
      0025A9 74 6A            [12]  915 	mov	a,#___str_11
      0025AB C0 E0            [24]  916 	push	acc
      0025AD 74 40            [12]  917 	mov	a,#(___str_11 >> 8)
      0025AF C0 E0            [24]  918 	push	acc
      0025B1 74 80            [12]  919 	mov	a,#0x80
      0025B3 C0 E0            [24]  920 	push	acc
      0025B5 12 30 C9         [24]  921 	lcall	_printf
      0025B8 15 81            [12]  922 	dec	sp
      0025BA 15 81            [12]  923 	dec	sp
      0025BC 15 81            [12]  924 	dec	sp
                                    925 ;	src/eeprom.c:129: printf("----------------------------------------------------------------\r\n");
      0025BE 74 AF            [12]  926 	mov	a,#___str_12
      0025C0 C0 E0            [24]  927 	push	acc
      0025C2 74 40            [12]  928 	mov	a,#(___str_12 >> 8)
      0025C4 C0 E0            [24]  929 	push	acc
      0025C6 74 80            [12]  930 	mov	a,#0x80
      0025C8 C0 E0            [24]  931 	push	acc
      0025CA 12 30 C9         [24]  932 	lcall	_printf
      0025CD 15 81            [12]  933 	dec	sp
      0025CF 15 81            [12]  934 	dec	sp
      0025D1 15 81            [12]  935 	dec	sp
                                    936 ;	src/eeprom.c:130: printf("     0  1  2  3  4  5  6  7  8  9  A  B  C  D  E  F\r\n");
      0025D3 74 F2            [12]  937 	mov	a,#___str_13
      0025D5 C0 E0            [24]  938 	push	acc
      0025D7 74 40            [12]  939 	mov	a,#(___str_13 >> 8)
      0025D9 C0 E0            [24]  940 	push	acc
      0025DB 74 80            [12]  941 	mov	a,#0x80
      0025DD C0 E0            [24]  942 	push	acc
      0025DF 12 30 C9         [24]  943 	lcall	_printf
      0025E2 15 81            [12]  944 	dec	sp
      0025E4 15 81            [12]  945 	dec	sp
      0025E6 15 81            [12]  946 	dec	sp
                                    947 ;	src/eeprom.c:134: uint16_t current_address = start_address;
      0025E8 90 04 0C         [24]  948 	mov	dptr,#_EEPROM_hexdump_start_address_65536_35
      0025EB E0               [24]  949 	movx	a,@dptr
      0025EC FE               [12]  950 	mov	r6,a
      0025ED A3               [24]  951 	inc	dptr
      0025EE E0               [24]  952 	movx	a,@dptr
      0025EF FF               [12]  953 	mov	r7,a
      0025F0 90 04 0E         [24]  954 	mov	dptr,#_EEPROM_hexdump_current_address_65537_37
      0025F3 EE               [12]  955 	mov	a,r6
      0025F4 F0               [24]  956 	movx	@dptr,a
      0025F5 EF               [12]  957 	mov	a,r7
      0025F6 A3               [24]  958 	inc	dptr
      0025F7 F0               [24]  959 	movx	@dptr,a
                                    960 ;	src/eeprom.c:137: while (current_address <= end_address) {
      0025F8 90 04 0A         [24]  961 	mov	dptr,#_EEPROM_hexdump_PARM_2
      0025FB E0               [24]  962 	movx	a,@dptr
      0025FC FE               [12]  963 	mov	r6,a
      0025FD A3               [24]  964 	inc	dptr
      0025FE E0               [24]  965 	movx	a,@dptr
      0025FF FF               [12]  966 	mov	r7,a
      002600                        967 00119$:
      002600 90 04 0E         [24]  968 	mov	dptr,#_EEPROM_hexdump_current_address_65537_37
      002603 E0               [24]  969 	movx	a,@dptr
      002604 FC               [12]  970 	mov	r4,a
      002605 A3               [24]  971 	inc	dptr
      002606 E0               [24]  972 	movx	a,@dptr
      002607 FD               [12]  973 	mov	r5,a
      002608 C3               [12]  974 	clr	c
      002609 EE               [12]  975 	mov	a,r6
      00260A 9C               [12]  976 	subb	a,r4
      00260B EF               [12]  977 	mov	a,r7
      00260C 9D               [12]  978 	subb	a,r5
      00260D 50 03            [24]  979 	jnc	00183$
      00260F 02 28 9F         [24]  980 	ljmp	00121$
      002612                        981 00183$:
                                    982 ;	src/eeprom.c:139: printf("%03X: ", current_address & 0xFFF0);
      002612 53 04 F0         [24]  983 	anl	ar4,#0xf0
      002615 C0 07            [24]  984 	push	ar7
      002617 C0 06            [24]  985 	push	ar6
      002619 C0 04            [24]  986 	push	ar4
      00261B C0 05            [24]  987 	push	ar5
      00261D 74 28            [12]  988 	mov	a,#___str_14
      00261F C0 E0            [24]  989 	push	acc
      002621 74 41            [12]  990 	mov	a,#(___str_14 >> 8)
      002623 C0 E0            [24]  991 	push	acc
      002625 74 80            [12]  992 	mov	a,#0x80
      002627 C0 E0            [24]  993 	push	acc
      002629 12 30 C9         [24]  994 	lcall	_printf
      00262C E5 81            [12]  995 	mov	a,sp
      00262E 24 FB            [12]  996 	add	a,#0xfb
      002630 F5 81            [12]  997 	mov	sp,a
      002632 D0 06            [24]  998 	pop	ar6
      002634 D0 07            [24]  999 	pop	ar7
                                   1000 ;	src/eeprom.c:142: for (uint8_t i = 0; i < 16; i++) {
      002636 7D 00            [12] 1001 	mov	r5,#0x00
      002638                       1002 00123$:
      002638 BD 10 00         [24] 1003 	cjne	r5,#0x10,00184$
      00263B                       1004 00184$:
      00263B 40 03            [24] 1005 	jc	00185$
      00263D 02 27 74         [24] 1006 	ljmp	00110$
      002640                       1007 00185$:
                                   1008 ;	src/eeprom.c:143: if (current_address + i <= end_address) {
      002640 8D 03            [24] 1009 	mov	ar3,r5
      002642 7C 00            [12] 1010 	mov	r4,#0x00
      002644 90 04 0E         [24] 1011 	mov	dptr,#_EEPROM_hexdump_current_address_65537_37
      002647 E0               [24] 1012 	movx	a,@dptr
      002648 F9               [12] 1013 	mov	r1,a
      002649 A3               [24] 1014 	inc	dptr
      00264A E0               [24] 1015 	movx	a,@dptr
      00264B FA               [12] 1016 	mov	r2,a
      00264C C0 05            [24] 1017 	push	ar5
      00264E 89 00            [24] 1018 	mov	ar0,r1
      002650 8A 05            [24] 1019 	mov	ar5,r2
      002652 EB               [12] 1020 	mov	a,r3
      002653 28               [12] 1021 	add	a,r0
      002654 F8               [12] 1022 	mov	r0,a
      002655 EC               [12] 1023 	mov	a,r4
      002656 3D               [12] 1024 	addc	a,r5
      002657 FD               [12] 1025 	mov	r5,a
      002658 C3               [12] 1026 	clr	c
      002659 EE               [12] 1027 	mov	a,r6
      00265A 98               [12] 1028 	subb	a,r0
      00265B EF               [12] 1029 	mov	a,r7
      00265C 9D               [12] 1030 	subb	a,r5
      00265D D0 05            [24] 1031 	pop	ar5
      00265F 50 03            [24] 1032 	jnc	00186$
      002661 02 27 4F         [24] 1033 	ljmp	00108$
      002664                       1034 00186$:
                                   1035 ;	src/eeprom.c:145: i2c_start();
      002664 C0 07            [24] 1036 	push	ar7
      002666 C0 06            [24] 1037 	push	ar6
      002668 C0 05            [24] 1038 	push	ar5
      00266A C0 02            [24] 1039 	push	ar2
      00266C C0 01            [24] 1040 	push	ar1
      00266E 12 29 D4         [24] 1041 	lcall	_i2c_start
                                   1042 ;	src/eeprom.c:148: if (!i2c_write(EEPROM_ID | WRITE)) {
      002671 75 82 A0         [24] 1043 	mov	dpl,#0xa0
      002674 12 2A 6E         [24] 1044 	lcall	_i2c_write
      002677 E5 82            [12] 1045 	mov	a,dpl
      002679 85 83 F0         [24] 1046 	mov	b,dph
      00267C D0 01            [24] 1047 	pop	ar1
      00267E D0 02            [24] 1048 	pop	ar2
      002680 D0 05            [24] 1049 	pop	ar5
      002682 D0 06            [24] 1050 	pop	ar6
      002684 D0 07            [24] 1051 	pop	ar7
      002686 45 F0            [12] 1052 	orl	a,b
      002688 70 1C            [24] 1053 	jnz	00102$
                                   1054 ;	src/eeprom.c:149: printf("Error: Device not responding\r\n");
      00268A 74 2F            [12] 1055 	mov	a,#___str_15
      00268C C0 E0            [24] 1056 	push	acc
      00268E 74 41            [12] 1057 	mov	a,#(___str_15 >> 8)
      002690 C0 E0            [24] 1058 	push	acc
      002692 74 80            [12] 1059 	mov	a,#0x80
      002694 C0 E0            [24] 1060 	push	acc
      002696 12 30 C9         [24] 1061 	lcall	_printf
      002699 15 81            [12] 1062 	dec	sp
      00269B 15 81            [12] 1063 	dec	sp
      00269D 15 81            [12] 1064 	dec	sp
                                   1065 ;	src/eeprom.c:150: i2c_stop();
      00269F 12 29 C7         [24] 1066 	lcall	_i2c_stop
                                   1067 ;	src/eeprom.c:151: return 0;
      0026A2 90 00 00         [24] 1068 	mov	dptr,#0x0000
      0026A5 22               [24] 1069 	ret
      0026A6                       1070 00102$:
                                   1071 ;	src/eeprom.c:155: if (!i2c_write((unsigned char)(current_address + i))) {
      0026A6 ED               [12] 1072 	mov	a,r5
      0026A7 29               [12] 1073 	add	a,r1
      0026A8 F5 82            [12] 1074 	mov	dpl,a
      0026AA C0 07            [24] 1075 	push	ar7
      0026AC C0 06            [24] 1076 	push	ar6
      0026AE C0 05            [24] 1077 	push	ar5
      0026B0 12 2A 6E         [24] 1078 	lcall	_i2c_write
      0026B3 E5 82            [12] 1079 	mov	a,dpl
      0026B5 85 83 F0         [24] 1080 	mov	b,dph
      0026B8 D0 05            [24] 1081 	pop	ar5
      0026BA D0 06            [24] 1082 	pop	ar6
      0026BC D0 07            [24] 1083 	pop	ar7
      0026BE 45 F0            [12] 1084 	orl	a,b
      0026C0 70 1C            [24] 1085 	jnz	00104$
                                   1086 ;	src/eeprom.c:156: printf("Error: Address write failed\r\n");
      0026C2 74 4E            [12] 1087 	mov	a,#___str_16
      0026C4 C0 E0            [24] 1088 	push	acc
      0026C6 74 41            [12] 1089 	mov	a,#(___str_16 >> 8)
      0026C8 C0 E0            [24] 1090 	push	acc
      0026CA 74 80            [12] 1091 	mov	a,#0x80
      0026CC C0 E0            [24] 1092 	push	acc
      0026CE 12 30 C9         [24] 1093 	lcall	_printf
      0026D1 15 81            [12] 1094 	dec	sp
      0026D3 15 81            [12] 1095 	dec	sp
      0026D5 15 81            [12] 1096 	dec	sp
                                   1097 ;	src/eeprom.c:157: i2c_stop();
      0026D7 12 29 C7         [24] 1098 	lcall	_i2c_stop
                                   1099 ;	src/eeprom.c:158: return 0;
      0026DA 90 00 00         [24] 1100 	mov	dptr,#0x0000
      0026DD 22               [24] 1101 	ret
      0026DE                       1102 00104$:
                                   1103 ;	src/eeprom.c:162: i2c_start();
      0026DE C0 07            [24] 1104 	push	ar7
      0026E0 C0 06            [24] 1105 	push	ar6
      0026E2 C0 05            [24] 1106 	push	ar5
      0026E4 12 29 D4         [24] 1107 	lcall	_i2c_start
                                   1108 ;	src/eeprom.c:165: if (!i2c_write(EEPROM_ID | READ)) {
      0026E7 75 82 A1         [24] 1109 	mov	dpl,#0xa1
      0026EA 12 2A 6E         [24] 1110 	lcall	_i2c_write
      0026ED E5 82            [12] 1111 	mov	a,dpl
      0026EF 85 83 F0         [24] 1112 	mov	b,dph
      0026F2 D0 05            [24] 1113 	pop	ar5
      0026F4 D0 06            [24] 1114 	pop	ar6
      0026F6 D0 07            [24] 1115 	pop	ar7
      0026F8 45 F0            [12] 1116 	orl	a,b
      0026FA 70 1C            [24] 1117 	jnz	00106$
                                   1118 ;	src/eeprom.c:166: printf("Error: Device not responding in read mode\r\n");
      0026FC 74 6C            [12] 1119 	mov	a,#___str_17
      0026FE C0 E0            [24] 1120 	push	acc
      002700 74 41            [12] 1121 	mov	a,#(___str_17 >> 8)
      002702 C0 E0            [24] 1122 	push	acc
      002704 74 80            [12] 1123 	mov	a,#0x80
      002706 C0 E0            [24] 1124 	push	acc
      002708 12 30 C9         [24] 1125 	lcall	_printf
      00270B 15 81            [12] 1126 	dec	sp
      00270D 15 81            [12] 1127 	dec	sp
      00270F 15 81            [12] 1128 	dec	sp
                                   1129 ;	src/eeprom.c:167: i2c_stop();
      002711 12 29 C7         [24] 1130 	lcall	_i2c_stop
                                   1131 ;	src/eeprom.c:168: return 0;
      002714 90 00 00         [24] 1132 	mov	dptr,#0x0000
      002717 22               [24] 1133 	ret
      002718                       1134 00106$:
                                   1135 ;	src/eeprom.c:172: unsigned char data = i2c_read(0);
      002718 90 00 00         [24] 1136 	mov	dptr,#0x0000
      00271B C0 07            [24] 1137 	push	ar7
      00271D C0 06            [24] 1138 	push	ar6
      00271F C0 05            [24] 1139 	push	ar5
      002721 12 29 E9         [24] 1140 	lcall	_i2c_read
      002724 AB 82            [24] 1141 	mov	r3,dpl
                                   1142 ;	src/eeprom.c:173: printf("%02X ", data);
      002726 7C 00            [12] 1143 	mov	r4,#0x00
      002728 C0 03            [24] 1144 	push	ar3
      00272A C0 04            [24] 1145 	push	ar4
      00272C 74 98            [12] 1146 	mov	a,#___str_18
      00272E C0 E0            [24] 1147 	push	acc
      002730 74 41            [12] 1148 	mov	a,#(___str_18 >> 8)
      002732 C0 E0            [24] 1149 	push	acc
      002734 74 80            [12] 1150 	mov	a,#0x80
      002736 C0 E0            [24] 1151 	push	acc
      002738 12 30 C9         [24] 1152 	lcall	_printf
      00273B E5 81            [12] 1153 	mov	a,sp
      00273D 24 FB            [12] 1154 	add	a,#0xfb
      00273F F5 81            [12] 1155 	mov	sp,a
                                   1156 ;	src/eeprom.c:175: i2c_stop();
      002741 12 29 C7         [24] 1157 	lcall	_i2c_stop
                                   1158 ;	src/eeprom.c:176: i2c_delay(); // Small delay between reads
      002744 12 29 B0         [24] 1159 	lcall	_i2c_delay
      002747 D0 05            [24] 1160 	pop	ar5
      002749 D0 06            [24] 1161 	pop	ar6
      00274B D0 07            [24] 1162 	pop	ar7
      00274D 80 21            [24] 1163 	sjmp	00124$
      00274F                       1164 00108$:
                                   1165 ;	src/eeprom.c:178: printf("   "); // Print spaces for addresses beyond end_address
      00274F C0 07            [24] 1166 	push	ar7
      002751 C0 06            [24] 1167 	push	ar6
      002753 C0 05            [24] 1168 	push	ar5
      002755 74 9E            [12] 1169 	mov	a,#___str_19
      002757 C0 E0            [24] 1170 	push	acc
      002759 74 41            [12] 1171 	mov	a,#(___str_19 >> 8)
      00275B C0 E0            [24] 1172 	push	acc
      00275D 74 80            [12] 1173 	mov	a,#0x80
      00275F C0 E0            [24] 1174 	push	acc
      002761 12 30 C9         [24] 1175 	lcall	_printf
      002764 15 81            [12] 1176 	dec	sp
      002766 15 81            [12] 1177 	dec	sp
      002768 15 81            [12] 1178 	dec	sp
      00276A D0 05            [24] 1179 	pop	ar5
      00276C D0 06            [24] 1180 	pop	ar6
      00276E D0 07            [24] 1181 	pop	ar7
      002770                       1182 00124$:
                                   1183 ;	src/eeprom.c:142: for (uint8_t i = 0; i < 16; i++) {
      002770 0D               [12] 1184 	inc	r5
      002771 02 26 38         [24] 1185 	ljmp	00123$
      002774                       1186 00110$:
                                   1187 ;	src/eeprom.c:183: printf(" | ");
      002774 C0 07            [24] 1188 	push	ar7
      002776 C0 06            [24] 1189 	push	ar6
      002778 74 A2            [12] 1190 	mov	a,#___str_20
      00277A C0 E0            [24] 1191 	push	acc
      00277C 74 41            [12] 1192 	mov	a,#(___str_20 >> 8)
      00277E C0 E0            [24] 1193 	push	acc
      002780 74 80            [12] 1194 	mov	a,#0x80
      002782 C0 E0            [24] 1195 	push	acc
      002784 12 30 C9         [24] 1196 	lcall	_printf
      002787 15 81            [12] 1197 	dec	sp
      002789 15 81            [12] 1198 	dec	sp
      00278B 15 81            [12] 1199 	dec	sp
      00278D D0 06            [24] 1200 	pop	ar6
      00278F D0 07            [24] 1201 	pop	ar7
                                   1202 ;	src/eeprom.c:184: for (uint8_t i = 0; i < 16; i++) {
      002791 90 04 0E         [24] 1203 	mov	dptr,#_EEPROM_hexdump_current_address_65537_37
      002794 E0               [24] 1204 	movx	a,@dptr
      002795 FC               [12] 1205 	mov	r4,a
      002796 A3               [24] 1206 	inc	dptr
      002797 E0               [24] 1207 	movx	a,@dptr
      002798 FD               [12] 1208 	mov	r5,a
      002799 7B 00            [12] 1209 	mov	r3,#0x00
      00279B                       1210 00126$:
      00279B BB 10 00         [24] 1211 	cjne	r3,#0x10,00190$
      00279E                       1212 00190$:
      00279E 40 03            [24] 1213 	jc	00191$
      0027A0 02 28 68         [24] 1214 	ljmp	00118$
      0027A3                       1215 00191$:
                                   1216 ;	src/eeprom.c:185: if (current_address + i <= end_address) {
      0027A3 8B 01            [24] 1217 	mov	ar1,r3
      0027A5 7A 00            [12] 1218 	mov	r2,#0x00
      0027A7 C0 03            [24] 1219 	push	ar3
      0027A9 8C 00            [24] 1220 	mov	ar0,r4
      0027AB 8D 03            [24] 1221 	mov	ar3,r5
      0027AD E9               [12] 1222 	mov	a,r1
      0027AE 28               [12] 1223 	add	a,r0
      0027AF F8               [12] 1224 	mov	r0,a
      0027B0 EA               [12] 1225 	mov	a,r2
      0027B1 3B               [12] 1226 	addc	a,r3
      0027B2 FB               [12] 1227 	mov	r3,a
      0027B3 C3               [12] 1228 	clr	c
      0027B4 EE               [12] 1229 	mov	a,r6
      0027B5 98               [12] 1230 	subb	a,r0
      0027B6 EF               [12] 1231 	mov	a,r7
      0027B7 9B               [12] 1232 	subb	a,r3
      0027B8 D0 03            [24] 1233 	pop	ar3
      0027BA 50 03            [24] 1234 	jnc	00192$
      0027BC 02 28 4A         [24] 1235 	ljmp	00116$
      0027BF                       1236 00192$:
                                   1237 ;	src/eeprom.c:187: i2c_start();
      0027BF C0 07            [24] 1238 	push	ar7
      0027C1 C0 06            [24] 1239 	push	ar6
      0027C3 C0 05            [24] 1240 	push	ar5
      0027C5 C0 04            [24] 1241 	push	ar4
      0027C7 C0 03            [24] 1242 	push	ar3
      0027C9 12 29 D4         [24] 1243 	lcall	_i2c_start
                                   1244 ;	src/eeprom.c:188: i2c_write(EEPROM_ID | WRITE);
      0027CC 75 82 A0         [24] 1245 	mov	dpl,#0xa0
      0027CF 12 2A 6E         [24] 1246 	lcall	_i2c_write
      0027D2 D0 03            [24] 1247 	pop	ar3
      0027D4 D0 04            [24] 1248 	pop	ar4
                                   1249 ;	src/eeprom.c:189: i2c_write((unsigned char)(current_address + i));
      0027D6 8C 02            [24] 1250 	mov	ar2,r4
      0027D8 EB               [12] 1251 	mov	a,r3
      0027D9 2A               [12] 1252 	add	a,r2
      0027DA F5 82            [12] 1253 	mov	dpl,a
      0027DC C0 04            [24] 1254 	push	ar4
      0027DE C0 03            [24] 1255 	push	ar3
      0027E0 12 2A 6E         [24] 1256 	lcall	_i2c_write
                                   1257 ;	src/eeprom.c:190: i2c_start();
      0027E3 12 29 D4         [24] 1258 	lcall	_i2c_start
                                   1259 ;	src/eeprom.c:191: i2c_write(EEPROM_ID | READ);
      0027E6 75 82 A1         [24] 1260 	mov	dpl,#0xa1
      0027E9 12 2A 6E         [24] 1261 	lcall	_i2c_write
                                   1262 ;	src/eeprom.c:192: unsigned char data = i2c_read(0);
      0027EC 90 00 00         [24] 1263 	mov	dptr,#0x0000
      0027EF 12 29 E9         [24] 1264 	lcall	_i2c_read
      0027F2 A9 82            [24] 1265 	mov	r1,dpl
                                   1266 ;	src/eeprom.c:193: i2c_stop();
      0027F4 C0 01            [24] 1267 	push	ar1
      0027F6 12 29 C7         [24] 1268 	lcall	_i2c_stop
      0027F9 D0 01            [24] 1269 	pop	ar1
      0027FB D0 03            [24] 1270 	pop	ar3
      0027FD D0 04            [24] 1271 	pop	ar4
      0027FF D0 05            [24] 1272 	pop	ar5
      002801 D0 06            [24] 1273 	pop	ar6
      002803 D0 07            [24] 1274 	pop	ar7
                                   1275 ;	src/eeprom.c:196: if (data >= 32 && data <= 126) {
      002805 B9 20 00         [24] 1276 	cjne	r1,#0x20,00193$
      002808                       1277 00193$:
      002808 40 24            [24] 1278 	jc	00112$
      00280A E9               [12] 1279 	mov	a,r1
      00280B 24 81            [12] 1280 	add	a,#0xff - 0x7e
      00280D 40 1F            [24] 1281 	jc	00112$
                                   1282 ;	src/eeprom.c:197: putchar(data);
      00280F 7A 00            [12] 1283 	mov	r2,#0x00
      002811 89 82            [24] 1284 	mov	dpl,r1
      002813 8A 83            [24] 1285 	mov	dph,r2
      002815 C0 07            [24] 1286 	push	ar7
      002817 C0 06            [24] 1287 	push	ar6
      002819 C0 05            [24] 1288 	push	ar5
      00281B C0 04            [24] 1289 	push	ar4
      00281D C0 03            [24] 1290 	push	ar3
      00281F 12 29 83         [24] 1291 	lcall	_putchar
      002822 D0 03            [24] 1292 	pop	ar3
      002824 D0 04            [24] 1293 	pop	ar4
      002826 D0 05            [24] 1294 	pop	ar5
      002828 D0 06            [24] 1295 	pop	ar6
      00282A D0 07            [24] 1296 	pop	ar7
      00282C 80 36            [24] 1297 	sjmp	00127$
      00282E                       1298 00112$:
                                   1299 ;	src/eeprom.c:199: putchar('.');
      00282E 90 00 2E         [24] 1300 	mov	dptr,#0x002e
      002831 C0 07            [24] 1301 	push	ar7
      002833 C0 06            [24] 1302 	push	ar6
      002835 C0 05            [24] 1303 	push	ar5
      002837 C0 04            [24] 1304 	push	ar4
      002839 C0 03            [24] 1305 	push	ar3
      00283B 12 29 83         [24] 1306 	lcall	_putchar
      00283E D0 03            [24] 1307 	pop	ar3
      002840 D0 04            [24] 1308 	pop	ar4
      002842 D0 05            [24] 1309 	pop	ar5
      002844 D0 06            [24] 1310 	pop	ar6
      002846 D0 07            [24] 1311 	pop	ar7
      002848 80 1A            [24] 1312 	sjmp	00127$
      00284A                       1313 00116$:
                                   1314 ;	src/eeprom.c:202: putchar(' ');
      00284A 90 00 20         [24] 1315 	mov	dptr,#0x0020
      00284D C0 07            [24] 1316 	push	ar7
      00284F C0 06            [24] 1317 	push	ar6
      002851 C0 05            [24] 1318 	push	ar5
      002853 C0 04            [24] 1319 	push	ar4
      002855 C0 03            [24] 1320 	push	ar3
      002857 12 29 83         [24] 1321 	lcall	_putchar
      00285A D0 03            [24] 1322 	pop	ar3
      00285C D0 04            [24] 1323 	pop	ar4
      00285E D0 05            [24] 1324 	pop	ar5
      002860 D0 06            [24] 1325 	pop	ar6
      002862 D0 07            [24] 1326 	pop	ar7
      002864                       1327 00127$:
                                   1328 ;	src/eeprom.c:184: for (uint8_t i = 0; i < 16; i++) {
      002864 0B               [12] 1329 	inc	r3
      002865 02 27 9B         [24] 1330 	ljmp	00126$
      002868                       1331 00118$:
                                   1332 ;	src/eeprom.c:206: printf("\r\n");
      002868 C0 07            [24] 1333 	push	ar7
      00286A C0 06            [24] 1334 	push	ar6
      00286C 74 A6            [12] 1335 	mov	a,#___str_21
      00286E C0 E0            [24] 1336 	push	acc
      002870 74 41            [12] 1337 	mov	a,#(___str_21 >> 8)
      002872 C0 E0            [24] 1338 	push	acc
      002874 74 80            [12] 1339 	mov	a,#0x80
      002876 C0 E0            [24] 1340 	push	acc
      002878 12 30 C9         [24] 1341 	lcall	_printf
      00287B 15 81            [12] 1342 	dec	sp
      00287D 15 81            [12] 1343 	dec	sp
      00287F 15 81            [12] 1344 	dec	sp
      002881 D0 06            [24] 1345 	pop	ar6
      002883 D0 07            [24] 1346 	pop	ar7
                                   1347 ;	src/eeprom.c:207: current_address += 16;
      002885 90 04 0E         [24] 1348 	mov	dptr,#_EEPROM_hexdump_current_address_65537_37
      002888 E0               [24] 1349 	movx	a,@dptr
      002889 FC               [12] 1350 	mov	r4,a
      00288A A3               [24] 1351 	inc	dptr
      00288B E0               [24] 1352 	movx	a,@dptr
      00288C FD               [12] 1353 	mov	r5,a
      00288D 74 10            [12] 1354 	mov	a,#0x10
      00288F 2C               [12] 1355 	add	a,r4
      002890 FC               [12] 1356 	mov	r4,a
      002891 E4               [12] 1357 	clr	a
      002892 3D               [12] 1358 	addc	a,r5
      002893 FD               [12] 1359 	mov	r5,a
      002894 90 04 0E         [24] 1360 	mov	dptr,#_EEPROM_hexdump_current_address_65537_37
      002897 EC               [12] 1361 	mov	a,r4
      002898 F0               [24] 1362 	movx	@dptr,a
      002899 ED               [12] 1363 	mov	a,r5
      00289A A3               [24] 1364 	inc	dptr
      00289B F0               [24] 1365 	movx	@dptr,a
      00289C 02 26 00         [24] 1366 	ljmp	00119$
      00289F                       1367 00121$:
                                   1368 ;	src/eeprom.c:210: printf("----------------------------------------------------------------\r\n");
      00289F 74 AF            [12] 1369 	mov	a,#___str_12
      0028A1 C0 E0            [24] 1370 	push	acc
      0028A3 74 40            [12] 1371 	mov	a,#(___str_12 >> 8)
      0028A5 C0 E0            [24] 1372 	push	acc
      0028A7 74 80            [12] 1373 	mov	a,#0x80
      0028A9 C0 E0            [24] 1374 	push	acc
      0028AB 12 30 C9         [24] 1375 	lcall	_printf
      0028AE 15 81            [12] 1376 	dec	sp
      0028B0 15 81            [12] 1377 	dec	sp
      0028B2 15 81            [12] 1378 	dec	sp
                                   1379 ;	src/eeprom.c:211: return 1;
      0028B4 90 00 01         [24] 1380 	mov	dptr,#0x0001
                                   1381 ;	src/eeprom.c:212: }
      0028B7 22               [24] 1382 	ret
                                   1383 ;------------------------------------------------------------
                                   1384 ;Allocation info for local variables in function 'handler_EEPROM_hexdump'
                                   1385 ;------------------------------------------------------------
                                   1386 ;start_addr                Allocated with name '_handler_EEPROM_hexdump_start_addr_65537_56'
                                   1387 ;end_addr                  Allocated with name '_handler_EEPROM_hexdump_end_addr_65538_58'
                                   1388 ;------------------------------------------------------------
                                   1389 ;	src/eeprom.c:215: void handler_EEPROM_hexdump(void) {
                                   1390 ;	-----------------------------------------
                                   1391 ;	 function handler_EEPROM_hexdump
                                   1392 ;	-----------------------------------------
      0028B8                       1393 _handler_EEPROM_hexdump:
                                   1394 ;	src/eeprom.c:216: printf("\nEnter Start Address for HEX Dump (000-7FF):\r\n");
      0028B8 74 A9            [12] 1395 	mov	a,#___str_22
      0028BA C0 E0            [24] 1396 	push	acc
      0028BC 74 41            [12] 1397 	mov	a,#(___str_22 >> 8)
      0028BE C0 E0            [24] 1398 	push	acc
      0028C0 74 80            [12] 1399 	mov	a,#0x80
      0028C2 C0 E0            [24] 1400 	push	acc
      0028C4 12 30 C9         [24] 1401 	lcall	_printf
      0028C7 15 81            [12] 1402 	dec	sp
      0028C9 15 81            [12] 1403 	dec	sp
      0028CB 15 81            [12] 1404 	dec	sp
                                   1405 ;	src/eeprom.c:217: uint16_t start_addr = take_address();
      0028CD 12 2C C4         [24] 1406 	lcall	_take_address
      0028D0 AE 82            [24] 1407 	mov	r6,dpl
      0028D2 AF 83            [24] 1408 	mov	r7,dph
                                   1409 ;	src/eeprom.c:219: if (start_addr > ADDR_MAX) {
      0028D4 8E 04            [24] 1410 	mov	ar4,r6
      0028D6 8F 05            [24] 1411 	mov	ar5,r7
      0028D8 C3               [12] 1412 	clr	c
      0028D9 74 FF            [12] 1413 	mov	a,#0xff
      0028DB 9C               [12] 1414 	subb	a,r4
      0028DC 74 07            [12] 1415 	mov	a,#0x07
      0028DE 9D               [12] 1416 	subb	a,r5
      0028DF 50 16            [24] 1417 	jnc	00102$
                                   1418 ;	src/eeprom.c:220: printf("Invalid Start Address! Must be between 0x000 and 0x7FF\r\n");
      0028E1 74 D8            [12] 1419 	mov	a,#___str_23
      0028E3 C0 E0            [24] 1420 	push	acc
      0028E5 74 41            [12] 1421 	mov	a,#(___str_23 >> 8)
      0028E7 C0 E0            [24] 1422 	push	acc
      0028E9 74 80            [12] 1423 	mov	a,#0x80
      0028EB C0 E0            [24] 1424 	push	acc
      0028ED 12 30 C9         [24] 1425 	lcall	_printf
      0028F0 15 81            [12] 1426 	dec	sp
      0028F2 15 81            [12] 1427 	dec	sp
      0028F4 15 81            [12] 1428 	dec	sp
                                   1429 ;	src/eeprom.c:221: return;
      0028F6 22               [24] 1430 	ret
      0028F7                       1431 00102$:
                                   1432 ;	src/eeprom.c:224: printf("\nEnter End Address for HEX Dump (000-7FF):\r\n");
      0028F7 C0 07            [24] 1433 	push	ar7
      0028F9 C0 06            [24] 1434 	push	ar6
      0028FB 74 11            [12] 1435 	mov	a,#___str_24
      0028FD C0 E0            [24] 1436 	push	acc
      0028FF 74 42            [12] 1437 	mov	a,#(___str_24 >> 8)
      002901 C0 E0            [24] 1438 	push	acc
      002903 74 80            [12] 1439 	mov	a,#0x80
      002905 C0 E0            [24] 1440 	push	acc
      002907 12 30 C9         [24] 1441 	lcall	_printf
      00290A 15 81            [12] 1442 	dec	sp
      00290C 15 81            [12] 1443 	dec	sp
      00290E 15 81            [12] 1444 	dec	sp
                                   1445 ;	src/eeprom.c:225: uint16_t end_addr = take_address();
      002910 12 2C C4         [24] 1446 	lcall	_take_address
      002913 AC 82            [24] 1447 	mov	r4,dpl
      002915 AD 83            [24] 1448 	mov	r5,dph
      002917 D0 06            [24] 1449 	pop	ar6
      002919 D0 07            [24] 1450 	pop	ar7
                                   1451 ;	src/eeprom.c:227: if (end_addr > ADDR_MAX || end_addr < start_addr) {
      00291B 8C 02            [24] 1452 	mov	ar2,r4
      00291D 8D 03            [24] 1453 	mov	ar3,r5
      00291F C3               [12] 1454 	clr	c
      002920 74 FF            [12] 1455 	mov	a,#0xff
      002922 9A               [12] 1456 	subb	a,r2
      002923 74 07            [12] 1457 	mov	a,#0x07
      002925 9B               [12] 1458 	subb	a,r3
      002926 40 06            [24] 1459 	jc	00103$
      002928 EC               [12] 1460 	mov	a,r4
      002929 9E               [12] 1461 	subb	a,r6
      00292A ED               [12] 1462 	mov	a,r5
      00292B 9F               [12] 1463 	subb	a,r7
      00292C 50 1A            [24] 1464 	jnc	00104$
      00292E                       1465 00103$:
                                   1466 ;	src/eeprom.c:228: printf("Invalid End Address! Must be between 0x%03X and 0x7FF\r\n", start_addr);
      00292E C0 06            [24] 1467 	push	ar6
      002930 C0 07            [24] 1468 	push	ar7
      002932 74 3E            [12] 1469 	mov	a,#___str_25
      002934 C0 E0            [24] 1470 	push	acc
      002936 74 42            [12] 1471 	mov	a,#(___str_25 >> 8)
      002938 C0 E0            [24] 1472 	push	acc
      00293A 74 80            [12] 1473 	mov	a,#0x80
      00293C C0 E0            [24] 1474 	push	acc
      00293E 12 30 C9         [24] 1475 	lcall	_printf
      002941 E5 81            [12] 1476 	mov	a,sp
      002943 24 FB            [12] 1477 	add	a,#0xfb
      002945 F5 81            [12] 1478 	mov	sp,a
                                   1479 ;	src/eeprom.c:229: return;
      002947 22               [24] 1480 	ret
      002948                       1481 00104$:
                                   1482 ;	src/eeprom.c:232: EEPROM_hexdump(start_addr, end_addr);
      002948 90 04 0A         [24] 1483 	mov	dptr,#_EEPROM_hexdump_PARM_2
      00294B EC               [12] 1484 	mov	a,r4
      00294C F0               [24] 1485 	movx	@dptr,a
      00294D ED               [12] 1486 	mov	a,r5
      00294E A3               [24] 1487 	inc	dptr
      00294F F0               [24] 1488 	movx	@dptr,a
      002950 8E 82            [24] 1489 	mov	dpl,r6
      002952 8F 83            [24] 1490 	mov	dph,r7
                                   1491 ;	src/eeprom.c:233: }
      002954 02 25 89         [24] 1492 	ljmp	_EEPROM_hexdump
                                   1493 ;------------------------------------------------------------
                                   1494 ;Allocation info for local variables in function 'eeprom_reset'
                                   1495 ;------------------------------------------------------------
                                   1496 ;i                         Allocated with name '_eeprom_reset_i_131072_61'
                                   1497 ;------------------------------------------------------------
                                   1498 ;	src/eeprom.c:246: void eeprom_reset()
                                   1499 ;	-----------------------------------------
                                   1500 ;	 function eeprom_reset
                                   1501 ;	-----------------------------------------
      002957                       1502 _eeprom_reset:
                                   1503 ;	src/eeprom.c:248: i2c_start();
      002957 12 29 D4         [24] 1504 	lcall	_i2c_start
                                   1505 ;	src/eeprom.c:249: SDA = 0;
                                   1506 ;	assignBit
      00295A C2 94            [12] 1507 	clr	_P1_4
                                   1508 ;	src/eeprom.c:250: SDA = 1;
                                   1509 ;	assignBit
      00295C D2 94            [12] 1510 	setb	_P1_4
                                   1511 ;	src/eeprom.c:251: for(int i = 0; i<10; i++)
      00295E 7E 00            [12] 1512 	mov	r6,#0x00
      002960 7F 00            [12] 1513 	mov	r7,#0x00
      002962                       1514 00103$:
      002962 C3               [12] 1515 	clr	c
      002963 EE               [12] 1516 	mov	a,r6
      002964 94 0A            [12] 1517 	subb	a,#0x0a
      002966 EF               [12] 1518 	mov	a,r7
      002967 64 80            [12] 1519 	xrl	a,#0x80
      002969 94 80            [12] 1520 	subb	a,#0x80
      00296B 50 0B            [24] 1521 	jnc	00101$
                                   1522 ;	src/eeprom.c:253: SCL = 0;
                                   1523 ;	assignBit
      00296D C2 93            [12] 1524 	clr	_P1_3
                                   1525 ;	src/eeprom.c:254: SCL = 1;
                                   1526 ;	assignBit
      00296F D2 93            [12] 1527 	setb	_P1_3
                                   1528 ;	src/eeprom.c:251: for(int i = 0; i<10; i++)
      002971 0E               [12] 1529 	inc	r6
      002972 BE 00 ED         [24] 1530 	cjne	r6,#0x00,00103$
      002975 0F               [12] 1531 	inc	r7
      002976 80 EA            [24] 1532 	sjmp	00103$
      002978                       1533 00101$:
                                   1534 ;	src/eeprom.c:256: i2c_start();
      002978 12 29 D4         [24] 1535 	lcall	_i2c_start
                                   1536 ;	src/eeprom.c:257: SDA = 0;
                                   1537 ;	assignBit
      00297B C2 94            [12] 1538 	clr	_P1_4
                                   1539 ;	src/eeprom.c:258: i2c_stop();
      00297D 12 29 C7         [24] 1540 	lcall	_i2c_stop
                                   1541 ;	src/eeprom.c:259: SDA = 1;
                                   1542 ;	assignBit
      002980 D2 94            [12] 1543 	setb	_P1_4
                                   1544 ;	src/eeprom.c:260: }
      002982 22               [24] 1545 	ret
                                   1546 	.area CSEG    (CODE)
                                   1547 	.area CONST   (CODE)
                                   1548 	.area CONST   (CODE)
      003E1C                       1549 ___str_0:
      003E1C 45 72 72 6F 72 3A 20  1550 	.ascii "Error: No ACK for device address (write)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 29
      003E44 0A                    1551 	.db 0x0a
      003E45 0D                    1552 	.db 0x0d
      003E46 00                    1553 	.db 0x00
                                   1554 	.area CSEG    (CODE)
                                   1555 	.area CONST   (CODE)
      003E47                       1556 ___str_1:
      003E47 45 72 72 6F 72 3A 20  1557 	.ascii "Error: No ACK for memory address"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 6D 65 6D
             6F 72 79 20 61 64 64
             72 65 73 73
      003E67 0A                    1558 	.db 0x0a
      003E68 0D                    1559 	.db 0x0d
      003E69 00                    1560 	.db 0x00
                                   1561 	.area CSEG    (CODE)
                                   1562 	.area CONST   (CODE)
      003E6A                       1563 ___str_2:
      003E6A 45 72 72 6F 72 3A 20  1564 	.ascii "Error: No ACK for data"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 61 74
             61
      003E80 0A                    1565 	.db 0x0a
      003E81 0D                    1566 	.db 0x0d
      003E82 00                    1567 	.db 0x00
                                   1568 	.area CSEG    (CODE)
                                   1569 	.area CONST   (CODE)
      003E83                       1570 ___str_3:
      003E83 7C 20 57 72 69 74 69  1571 	.ascii "| Writing at Address 0x%03X Data 0x%02X          |"
             6E 67 20 61 74 20 41
             64 64 72 65 73 73 20
             30 78 25 30 33 58 20
             44 61 74 61 20 30 78
             25 30 32 58 20 20 20
             20 20 20 20 20 20 20
             7C
      003EB5 0A                    1572 	.db 0x0a
      003EB6 0D                    1573 	.db 0x0d
      003EB7 00                    1574 	.db 0x00
                                   1575 	.area CSEG    (CODE)
                                   1576 	.area CONST   (CODE)
      003EB8                       1577 ___str_4:
      003EB8 E2                    1578 	.db 0xe2
      003EB9 94                    1579 	.db 0x94
      003EBA 82                    1580 	.db 0x82
      003EBB 20 57 72 69 74 65 20  1581 	.ascii " Write successful!                             "
             73 75 63 63 65 73 73
             66 75 6C 21 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20
      003EEA E2                    1582 	.db 0xe2
      003EEB 94                    1583 	.db 0x94
      003EEC 82                    1584 	.db 0x82
      003EED 0A                    1585 	.db 0x0a
      003EEE 0D                    1586 	.db 0x0d
      003EEF 00                    1587 	.db 0x00
                                   1588 	.area CSEG    (CODE)
                                   1589 	.area CONST   (CODE)
      003EF0                       1590 ___str_5:
      003EF0 E2                    1591 	.db 0xe2
      003EF1 94                    1592 	.db 0x94
      003EF2 94                    1593 	.db 0x94
      003EF3 E2                    1594 	.db 0xe2
      003EF4 94                    1595 	.db 0x94
      003EF5 80                    1596 	.db 0x80
      003EF6 E2                    1597 	.db 0xe2
      003EF7 94                    1598 	.db 0x94
      003EF8 80                    1599 	.db 0x80
      003EF9 E2                    1600 	.db 0xe2
      003EFA 94                    1601 	.db 0x94
      003EFB 80                    1602 	.db 0x80
      003EFC E2                    1603 	.db 0xe2
      003EFD 94                    1604 	.db 0x94
      003EFE 80                    1605 	.db 0x80
      003EFF E2                    1606 	.db 0xe2
      003F00 94                    1607 	.db 0x94
      003F01 80                    1608 	.db 0x80
      003F02 E2                    1609 	.db 0xe2
      003F03 94                    1610 	.db 0x94
      003F04 80                    1611 	.db 0x80
      003F05 E2                    1612 	.db 0xe2
      003F06 94                    1613 	.db 0x94
      003F07 80                    1614 	.db 0x80
      003F08 E2                    1615 	.db 0xe2
      003F09 94                    1616 	.db 0x94
      003F0A 80                    1617 	.db 0x80
      003F0B E2                    1618 	.db 0xe2
      003F0C 94                    1619 	.db 0x94
      003F0D 80                    1620 	.db 0x80
      003F0E E2                    1621 	.db 0xe2
      003F0F 94                    1622 	.db 0x94
      003F10 80                    1623 	.db 0x80
      003F11 E2                    1624 	.db 0xe2
      003F12 94                    1625 	.db 0x94
      003F13 80                    1626 	.db 0x80
      003F14 E2                    1627 	.db 0xe2
      003F15 94                    1628 	.db 0x94
      003F16 80                    1629 	.db 0x80
      003F17 E2                    1630 	.db 0xe2
      003F18 94                    1631 	.db 0x94
      003F19 80                    1632 	.db 0x80
      003F1A E2                    1633 	.db 0xe2
      003F1B 94                    1634 	.db 0x94
      003F1C 80                    1635 	.db 0x80
      003F1D E2                    1636 	.db 0xe2
      003F1E 94                    1637 	.db 0x94
      003F1F 80                    1638 	.db 0x80
      003F20 E2                    1639 	.db 0xe2
      003F21 94                    1640 	.db 0x94
      003F22 80                    1641 	.db 0x80
      003F23 E2                    1642 	.db 0xe2
      003F24 94                    1643 	.db 0x94
      003F25 80                    1644 	.db 0x80
      003F26 E2                    1645 	.db 0xe2
      003F27 94                    1646 	.db 0x94
      003F28 80                    1647 	.db 0x80
      003F29 E2                    1648 	.db 0xe2
      003F2A 94                    1649 	.db 0x94
      003F2B 80                    1650 	.db 0x80
      003F2C E2                    1651 	.db 0xe2
      003F2D 94                    1652 	.db 0x94
      003F2E 80                    1653 	.db 0x80
      003F2F E2                    1654 	.db 0xe2
      003F30 94                    1655 	.db 0x94
      003F31 80                    1656 	.db 0x80
      003F32 E2                    1657 	.db 0xe2
      003F33 94                    1658 	.db 0x94
      003F34 80                    1659 	.db 0x80
      003F35 E2                    1660 	.db 0xe2
      003F36 94                    1661 	.db 0x94
      003F37 80                    1662 	.db 0x80
      003F38 E2                    1663 	.db 0xe2
      003F39 94                    1664 	.db 0x94
      003F3A 80                    1665 	.db 0x80
      003F3B E2                    1666 	.db 0xe2
      003F3C 94                    1667 	.db 0x94
      003F3D 80                    1668 	.db 0x80
      003F3E E2                    1669 	.db 0xe2
      003F3F 94                    1670 	.db 0x94
      003F40 80                    1671 	.db 0x80
      003F41 E2                    1672 	.db 0xe2
      003F42 94                    1673 	.db 0x94
      003F43 80                    1674 	.db 0x80
      003F44 E2                    1675 	.db 0xe2
      003F45 94                    1676 	.db 0x94
      003F46 80                    1677 	.db 0x80
      003F47 E2                    1678 	.db 0xe2
      003F48 94                    1679 	.db 0x94
      003F49 80                    1680 	.db 0x80
      003F4A E2                    1681 	.db 0xe2
      003F4B 94                    1682 	.db 0x94
      003F4C 80                    1683 	.db 0x80
      003F4D E2                    1684 	.db 0xe2
      003F4E 94                    1685 	.db 0x94
      003F4F 80                    1686 	.db 0x80
      003F50 E2                    1687 	.db 0xe2
      003F51 94                    1688 	.db 0x94
      003F52 80                    1689 	.db 0x80
      003F53 E2                    1690 	.db 0xe2
      003F54 94                    1691 	.db 0x94
      003F55 80                    1692 	.db 0x80
      003F56 E2                    1693 	.db 0xe2
      003F57 94                    1694 	.db 0x94
      003F58 80                    1695 	.db 0x80
      003F59 E2                    1696 	.db 0xe2
      003F5A 94                    1697 	.db 0x94
      003F5B 80                    1698 	.db 0x80
      003F5C E2                    1699 	.db 0xe2
      003F5D 94                    1700 	.db 0x94
      003F5E 80                    1701 	.db 0x80
      003F5F E2                    1702 	.db 0xe2
      003F60 94                    1703 	.db 0x94
      003F61 80                    1704 	.db 0x80
      003F62 E2                    1705 	.db 0xe2
      003F63 94                    1706 	.db 0x94
      003F64 80                    1707 	.db 0x80
      003F65 E2                    1708 	.db 0xe2
      003F66 94                    1709 	.db 0x94
      003F67 80                    1710 	.db 0x80
      003F68 E2                    1711 	.db 0xe2
      003F69 94                    1712 	.db 0x94
      003F6A 80                    1713 	.db 0x80
      003F6B E2                    1714 	.db 0xe2
      003F6C 94                    1715 	.db 0x94
      003F6D 80                    1716 	.db 0x80
      003F6E E2                    1717 	.db 0xe2
      003F6F 94                    1718 	.db 0x94
      003F70 80                    1719 	.db 0x80
      003F71 E2                    1720 	.db 0xe2
      003F72 94                    1721 	.db 0x94
      003F73 80                    1722 	.db 0x80
      003F74 E2                    1723 	.db 0xe2
      003F75 94                    1724 	.db 0x94
      003F76 80                    1725 	.db 0x80
      003F77 E2                    1726 	.db 0xe2
      003F78 94                    1727 	.db 0x94
      003F79 80                    1728 	.db 0x80
      003F7A E2                    1729 	.db 0xe2
      003F7B 94                    1730 	.db 0x94
      003F7C 80                    1731 	.db 0x80
      003F7D E2                    1732 	.db 0xe2
      003F7E 94                    1733 	.db 0x94
      003F7F 80                    1734 	.db 0x80
      003F80 E2                    1735 	.db 0xe2
      003F81 94                    1736 	.db 0x94
      003F82 98                    1737 	.db 0x98
      003F83 0A                    1738 	.db 0x0a
      003F84 0D                    1739 	.db 0x0d
      003F85 00                    1740 	.db 0x00
                                   1741 	.area CSEG    (CODE)
                                   1742 	.area CONST   (CODE)
      003F86                       1743 ___str_6:
      003F86 45 72 72 6F 72 3A 20  1744 	.ascii "Error: No ACK for device address (write mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 77
             72 69 74 65 20 6D 6F
             64 65 29
      003FB3 0A                    1745 	.db 0x0a
      003FB4 0D                    1746 	.db 0x0d
      003FB5 00                    1747 	.db 0x00
                                   1748 	.area CSEG    (CODE)
                                   1749 	.area CONST   (CODE)
      003FB6                       1750 ___str_7:
      003FB6 45 72 72 6F 72 3A 20  1751 	.ascii "Error: No ACK for device address (read mode)"
             4E 6F 20 41 43 4B 20
             66 6F 72 20 64 65 76
             69 63 65 20 61 64 64
             72 65 73 73 20 28 72
             65 61 64 20 6D 6F 64
             65 29
      003FE2 0A                    1752 	.db 0x0a
      003FE3 0D                    1753 	.db 0x0d
      003FE4 00                    1754 	.db 0x00
                                   1755 	.area CSEG    (CODE)
                                   1756 	.area CONST   (CODE)
      003FE5                       1757 ___str_8:
      003FE5 7C 20 30 78 25 30 33  1758 	.ascii "| 0x%03X : 0x%02X "
             58 20 3A 20 30 78 25
             30 32 58 20
      003FF7 0A                    1759 	.db 0x0a
      003FF8 0D                    1760 	.db 0x0d
      003FF9 00                    1761 	.db 0x00
                                   1762 	.area CSEG    (CODE)
                                   1763 	.area CONST   (CODE)
      003FFA                       1764 ___str_9:
      003FFA E2                    1765 	.db 0xe2
      003FFB 94                    1766 	.db 0x94
      003FFC 82                    1767 	.db 0x82
      003FFD 20 52 65 61 64 20 73  1768 	.ascii " Read successful!                 "
             75 63 63 65 73 73 66
             75 6C 21 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20
      00401F E2                    1769 	.db 0xe2
      004020 94                    1770 	.db 0x94
      004021 82                    1771 	.db 0x82
      004022 0A                    1772 	.db 0x0a
      004023 0D                    1773 	.db 0x0d
      004024 00                    1774 	.db 0x00
                                   1775 	.area CSEG    (CODE)
                                   1776 	.area CONST   (CODE)
      004025                       1777 ___str_10:
      004025 0D                    1778 	.db 0x0d
      004026 0A                    1779 	.db 0x0a
      004027 2D 2D 2D 2D 2D 2D 2D  1780 	.ascii "------------------------------------------------------------"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D
      004063 2D 2D 2D 2D           1781 	.ascii "----"
      004067 0D                    1782 	.db 0x0d
      004068 0A                    1783 	.db 0x0a
      004069 00                    1784 	.db 0x00
                                   1785 	.area CSEG    (CODE)
                                   1786 	.area CONST   (CODE)
      00406A                       1787 ___str_11:
      00406A 20 20 20 20 20 20 20  1788 	.ascii "                    EEPROM Hex Dump                         "
             20 20 20 20 20 20 20
             20 20 20 20 20 20 45
             45 50 52 4F 4D 20 48
             65 78 20 44 75 6D 70
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20
      0040A6 20 20 20 20 20 20     1789 	.ascii "      "
      0040AC 0D                    1790 	.db 0x0d
      0040AD 0A                    1791 	.db 0x0a
      0040AE 00                    1792 	.db 0x00
                                   1793 	.area CSEG    (CODE)
                                   1794 	.area CONST   (CODE)
      0040AF                       1795 ___str_12:
      0040AF 2D 2D 2D 2D 2D 2D 2D  1796 	.ascii "------------------------------------------------------------"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D
      0040EB 2D 2D 2D 2D           1797 	.ascii "----"
      0040EF 0D                    1798 	.db 0x0d
      0040F0 0A                    1799 	.db 0x0a
      0040F1 00                    1800 	.db 0x00
                                   1801 	.area CSEG    (CODE)
                                   1802 	.area CONST   (CODE)
      0040F2                       1803 ___str_13:
      0040F2 20 20 20 20 20 30 20  1804 	.ascii "     0  1  2  3  4  5  6  7  8  9  A  B  C  D  E  F"
             20 31 20 20 32 20 20
             33 20 20 34 20 20 35
             20 20 36 20 20 37 20
             20 38 20 20 39 20 20
             41 20 20 42 20 20 43
             20 20 44 20 20 45 20
             20 46
      004125 0D                    1805 	.db 0x0d
      004126 0A                    1806 	.db 0x0a
      004127 00                    1807 	.db 0x00
                                   1808 	.area CSEG    (CODE)
                                   1809 	.area CONST   (CODE)
      004128                       1810 ___str_14:
      004128 25 30 33 58 3A 20     1811 	.ascii "%03X: "
      00412E 00                    1812 	.db 0x00
                                   1813 	.area CSEG    (CODE)
                                   1814 	.area CONST   (CODE)
      00412F                       1815 ___str_15:
      00412F 45 72 72 6F 72 3A 20  1816 	.ascii "Error: Device not responding"
             44 65 76 69 63 65 20
             6E 6F 74 20 72 65 73
             70 6F 6E 64 69 6E 67
      00414B 0D                    1817 	.db 0x0d
      00414C 0A                    1818 	.db 0x0a
      00414D 00                    1819 	.db 0x00
                                   1820 	.area CSEG    (CODE)
                                   1821 	.area CONST   (CODE)
      00414E                       1822 ___str_16:
      00414E 45 72 72 6F 72 3A 20  1823 	.ascii "Error: Address write failed"
             41 64 64 72 65 73 73
             20 77 72 69 74 65 20
             66 61 69 6C 65 64
      004169 0D                    1824 	.db 0x0d
      00416A 0A                    1825 	.db 0x0a
      00416B 00                    1826 	.db 0x00
                                   1827 	.area CSEG    (CODE)
                                   1828 	.area CONST   (CODE)
      00416C                       1829 ___str_17:
      00416C 45 72 72 6F 72 3A 20  1830 	.ascii "Error: Device not responding in read mode"
             44 65 76 69 63 65 20
             6E 6F 74 20 72 65 73
             70 6F 6E 64 69 6E 67
             20 69 6E 20 72 65 61
             64 20 6D 6F 64 65
      004195 0D                    1831 	.db 0x0d
      004196 0A                    1832 	.db 0x0a
      004197 00                    1833 	.db 0x00
                                   1834 	.area CSEG    (CODE)
                                   1835 	.area CONST   (CODE)
      004198                       1836 ___str_18:
      004198 25 30 32 58 20        1837 	.ascii "%02X "
      00419D 00                    1838 	.db 0x00
                                   1839 	.area CSEG    (CODE)
                                   1840 	.area CONST   (CODE)
      00419E                       1841 ___str_19:
      00419E 20 20 20              1842 	.ascii "   "
      0041A1 00                    1843 	.db 0x00
                                   1844 	.area CSEG    (CODE)
                                   1845 	.area CONST   (CODE)
      0041A2                       1846 ___str_20:
      0041A2 20 7C 20              1847 	.ascii " | "
      0041A5 00                    1848 	.db 0x00
                                   1849 	.area CSEG    (CODE)
                                   1850 	.area CONST   (CODE)
      0041A6                       1851 ___str_21:
      0041A6 0D                    1852 	.db 0x0d
      0041A7 0A                    1853 	.db 0x0a
      0041A8 00                    1854 	.db 0x00
                                   1855 	.area CSEG    (CODE)
                                   1856 	.area CONST   (CODE)
      0041A9                       1857 ___str_22:
      0041A9 0A                    1858 	.db 0x0a
      0041AA 45 6E 74 65 72 20 53  1859 	.ascii "Enter Start Address for HEX Dump (000-7FF):"
             74 61 72 74 20 41 64
             64 72 65 73 73 20 66
             6F 72 20 48 45 58 20
             44 75 6D 70 20 28 30
             30 30 2D 37 46 46 29
             3A
      0041D5 0D                    1860 	.db 0x0d
      0041D6 0A                    1861 	.db 0x0a
      0041D7 00                    1862 	.db 0x00
                                   1863 	.area CSEG    (CODE)
                                   1864 	.area CONST   (CODE)
      0041D8                       1865 ___str_23:
      0041D8 49 6E 76 61 6C 69 64  1866 	.ascii "Invalid Start Address! Must be between 0x000 and 0x7FF"
             20 53 74 61 72 74 20
             41 64 64 72 65 73 73
             21 20 4D 75 73 74 20
             62 65 20 62 65 74 77
             65 65 6E 20 30 78 30
             30 30 20 61 6E 64 20
             30 78 37 46 46
      00420E 0D                    1867 	.db 0x0d
      00420F 0A                    1868 	.db 0x0a
      004210 00                    1869 	.db 0x00
                                   1870 	.area CSEG    (CODE)
                                   1871 	.area CONST   (CODE)
      004211                       1872 ___str_24:
      004211 0A                    1873 	.db 0x0a
      004212 45 6E 74 65 72 20 45  1874 	.ascii "Enter End Address for HEX Dump (000-7FF):"
             6E 64 20 41 64 64 72
             65 73 73 20 66 6F 72
             20 48 45 58 20 44 75
             6D 70 20 28 30 30 30
             2D 37 46 46 29 3A
      00423B 0D                    1875 	.db 0x0d
      00423C 0A                    1876 	.db 0x0a
      00423D 00                    1877 	.db 0x00
                                   1878 	.area CSEG    (CODE)
                                   1879 	.area CONST   (CODE)
      00423E                       1880 ___str_25:
      00423E 49 6E 76 61 6C 69 64  1881 	.ascii "Invalid End Address! Must be between 0x%03X and 0x7FF"
             20 45 6E 64 20 41 64
             64 72 65 73 73 21 20
             4D 75 73 74 20 62 65
             20 62 65 74 77 65 65
             6E 20 30 78 25 30 33
             58 20 61 6E 64 20 30
             78 37 46 46
      004273 0D                    1882 	.db 0x0d
      004274 0A                    1883 	.db 0x0a
      004275 00                    1884 	.db 0x00
                                   1885 	.area CSEG    (CODE)
                                   1886 	.area XINIT   (CODE)
                                   1887 	.area CABS    (ABS,CODE)
