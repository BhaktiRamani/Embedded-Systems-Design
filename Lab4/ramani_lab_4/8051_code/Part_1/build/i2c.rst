                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module i2c
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _test_function
                                     12 	.globl _eeprom_read
                                     13 	.globl _eeprom_write
                                     14 	.globl _printf
                                     15 	.globl _CY
                                     16 	.globl _AC
                                     17 	.globl _F0
                                     18 	.globl _RS1
                                     19 	.globl _RS0
                                     20 	.globl _OV
                                     21 	.globl _F1
                                     22 	.globl _P
                                     23 	.globl _PS
                                     24 	.globl _PT1
                                     25 	.globl _PX1
                                     26 	.globl _PT0
                                     27 	.globl _PX0
                                     28 	.globl _RD
                                     29 	.globl _WR
                                     30 	.globl _T1
                                     31 	.globl _T0
                                     32 	.globl _INT1
                                     33 	.globl _INT0
                                     34 	.globl _TXD
                                     35 	.globl _RXD
                                     36 	.globl _P3_7
                                     37 	.globl _P3_6
                                     38 	.globl _P3_5
                                     39 	.globl _P3_4
                                     40 	.globl _P3_3
                                     41 	.globl _P3_2
                                     42 	.globl _P3_1
                                     43 	.globl _P3_0
                                     44 	.globl _EA
                                     45 	.globl _ES
                                     46 	.globl _ET1
                                     47 	.globl _EX1
                                     48 	.globl _ET0
                                     49 	.globl _EX0
                                     50 	.globl _P2_7
                                     51 	.globl _P2_6
                                     52 	.globl _P2_5
                                     53 	.globl _P2_4
                                     54 	.globl _P2_3
                                     55 	.globl _P2_2
                                     56 	.globl _P2_1
                                     57 	.globl _P2_0
                                     58 	.globl _SM0
                                     59 	.globl _SM1
                                     60 	.globl _SM2
                                     61 	.globl _REN
                                     62 	.globl _TB8
                                     63 	.globl _RB8
                                     64 	.globl _TI
                                     65 	.globl _RI
                                     66 	.globl _P1_7
                                     67 	.globl _P1_6
                                     68 	.globl _P1_5
                                     69 	.globl _P1_4
                                     70 	.globl _P1_3
                                     71 	.globl _P1_2
                                     72 	.globl _P1_1
                                     73 	.globl _P1_0
                                     74 	.globl _TF1
                                     75 	.globl _TR1
                                     76 	.globl _TF0
                                     77 	.globl _TR0
                                     78 	.globl _IE1
                                     79 	.globl _IT1
                                     80 	.globl _IE0
                                     81 	.globl _IT0
                                     82 	.globl _P0_7
                                     83 	.globl _P0_6
                                     84 	.globl _P0_5
                                     85 	.globl _P0_4
                                     86 	.globl _P0_3
                                     87 	.globl _P0_2
                                     88 	.globl _P0_1
                                     89 	.globl _P0_0
                                     90 	.globl _P5_7
                                     91 	.globl _P5_6
                                     92 	.globl _P5_5
                                     93 	.globl _P5_4
                                     94 	.globl _P5_3
                                     95 	.globl _P5_2
                                     96 	.globl _P5_1
                                     97 	.globl _P5_0
                                     98 	.globl _P4_7
                                     99 	.globl _P4_6
                                    100 	.globl _P4_5
                                    101 	.globl _P4_4
                                    102 	.globl _P4_3
                                    103 	.globl _P4_2
                                    104 	.globl _P4_1
                                    105 	.globl _P4_0
                                    106 	.globl _PX0L
                                    107 	.globl _PT0L
                                    108 	.globl _PX1L
                                    109 	.globl _PT1L
                                    110 	.globl _PSL
                                    111 	.globl _PT2L
                                    112 	.globl _PPCL
                                    113 	.globl _EC
                                    114 	.globl _CCF0
                                    115 	.globl _CCF1
                                    116 	.globl _CCF2
                                    117 	.globl _CCF3
                                    118 	.globl _CCF4
                                    119 	.globl _CR
                                    120 	.globl _CF
                                    121 	.globl _TF2
                                    122 	.globl _EXF2
                                    123 	.globl _RCLK
                                    124 	.globl _TCLK
                                    125 	.globl _EXEN2
                                    126 	.globl _TR2
                                    127 	.globl _C_T2
                                    128 	.globl _CP_RL2
                                    129 	.globl _T2CON_7
                                    130 	.globl _T2CON_6
                                    131 	.globl _T2CON_5
                                    132 	.globl _T2CON_4
                                    133 	.globl _T2CON_3
                                    134 	.globl _T2CON_2
                                    135 	.globl _T2CON_1
                                    136 	.globl _T2CON_0
                                    137 	.globl _PT2
                                    138 	.globl _ET2
                                    139 	.globl _B
                                    140 	.globl _ACC
                                    141 	.globl _PSW
                                    142 	.globl _IP
                                    143 	.globl _P3
                                    144 	.globl _IE
                                    145 	.globl _P2
                                    146 	.globl _SBUF
                                    147 	.globl _SCON
                                    148 	.globl _P1
                                    149 	.globl _TH1
                                    150 	.globl _TH0
                                    151 	.globl _TL1
                                    152 	.globl _TL0
                                    153 	.globl _TMOD
                                    154 	.globl _TCON
                                    155 	.globl _PCON
                                    156 	.globl _DPH
                                    157 	.globl _DPL
                                    158 	.globl _SP
                                    159 	.globl _P0
                                    160 	.globl _EECON
                                    161 	.globl _KBF
                                    162 	.globl _KBE
                                    163 	.globl _KBLS
                                    164 	.globl _BRL
                                    165 	.globl _BDRCON
                                    166 	.globl _T2MOD
                                    167 	.globl _SPDAT
                                    168 	.globl _SPSTA
                                    169 	.globl _SPCON
                                    170 	.globl _SADEN
                                    171 	.globl _SADDR
                                    172 	.globl _WDTPRG
                                    173 	.globl _WDTRST
                                    174 	.globl _P5
                                    175 	.globl _P4
                                    176 	.globl _IPH1
                                    177 	.globl _IPL1
                                    178 	.globl _IPH0
                                    179 	.globl _IPL0
                                    180 	.globl _IEN1
                                    181 	.globl _IEN0
                                    182 	.globl _CMOD
                                    183 	.globl _CL
                                    184 	.globl _CH
                                    185 	.globl _CCON
                                    186 	.globl _CCAPM4
                                    187 	.globl _CCAPM3
                                    188 	.globl _CCAPM2
                                    189 	.globl _CCAPM1
                                    190 	.globl _CCAPM0
                                    191 	.globl _CCAP4L
                                    192 	.globl _CCAP3L
                                    193 	.globl _CCAP2L
                                    194 	.globl _CCAP1L
                                    195 	.globl _CCAP0L
                                    196 	.globl _CCAP4H
                                    197 	.globl _CCAP3H
                                    198 	.globl _CCAP2H
                                    199 	.globl _CCAP1H
                                    200 	.globl _CCAP0H
                                    201 	.globl _CKCON1
                                    202 	.globl _CKCON0
                                    203 	.globl _CKRL
                                    204 	.globl _AUXR1
                                    205 	.globl _AUXR
                                    206 	.globl _TH2
                                    207 	.globl _TL2
                                    208 	.globl _RCAP2H
                                    209 	.globl _RCAP2L
                                    210 	.globl _T2CON
                                    211 	.globl _i2c_delay
                                    212 	.globl _i2c_stop
                                    213 	.globl _i2c_start
                                    214 	.globl _i2c_read
                                    215 	.globl _i2c_write
                                    216 ;--------------------------------------------------------
                                    217 ; special function registers
                                    218 ;--------------------------------------------------------
                                    219 	.area RSEG    (ABS,DATA)
      000000                        220 	.org 0x0000
                           0000C8   221 _T2CON	=	0x00c8
                           0000CA   222 _RCAP2L	=	0x00ca
                           0000CB   223 _RCAP2H	=	0x00cb
                           0000CC   224 _TL2	=	0x00cc
                           0000CD   225 _TH2	=	0x00cd
                           00008E   226 _AUXR	=	0x008e
                           0000A2   227 _AUXR1	=	0x00a2
                           000097   228 _CKRL	=	0x0097
                           00008F   229 _CKCON0	=	0x008f
                           0000AF   230 _CKCON1	=	0x00af
                           0000FA   231 _CCAP0H	=	0x00fa
                           0000FB   232 _CCAP1H	=	0x00fb
                           0000FC   233 _CCAP2H	=	0x00fc
                           0000FD   234 _CCAP3H	=	0x00fd
                           0000FE   235 _CCAP4H	=	0x00fe
                           0000EA   236 _CCAP0L	=	0x00ea
                           0000EB   237 _CCAP1L	=	0x00eb
                           0000EC   238 _CCAP2L	=	0x00ec
                           0000ED   239 _CCAP3L	=	0x00ed
                           0000EE   240 _CCAP4L	=	0x00ee
                           0000DA   241 _CCAPM0	=	0x00da
                           0000DB   242 _CCAPM1	=	0x00db
                           0000DC   243 _CCAPM2	=	0x00dc
                           0000DD   244 _CCAPM3	=	0x00dd
                           0000DE   245 _CCAPM4	=	0x00de
                           0000D8   246 _CCON	=	0x00d8
                           0000F9   247 _CH	=	0x00f9
                           0000E9   248 _CL	=	0x00e9
                           0000D9   249 _CMOD	=	0x00d9
                           0000A8   250 _IEN0	=	0x00a8
                           0000B1   251 _IEN1	=	0x00b1
                           0000B8   252 _IPL0	=	0x00b8
                           0000B7   253 _IPH0	=	0x00b7
                           0000B2   254 _IPL1	=	0x00b2
                           0000B3   255 _IPH1	=	0x00b3
                           0000C0   256 _P4	=	0x00c0
                           0000E8   257 _P5	=	0x00e8
                           0000A6   258 _WDTRST	=	0x00a6
                           0000A7   259 _WDTPRG	=	0x00a7
                           0000A9   260 _SADDR	=	0x00a9
                           0000B9   261 _SADEN	=	0x00b9
                           0000C3   262 _SPCON	=	0x00c3
                           0000C4   263 _SPSTA	=	0x00c4
                           0000C5   264 _SPDAT	=	0x00c5
                           0000C9   265 _T2MOD	=	0x00c9
                           00009B   266 _BDRCON	=	0x009b
                           00009A   267 _BRL	=	0x009a
                           00009C   268 _KBLS	=	0x009c
                           00009D   269 _KBE	=	0x009d
                           00009E   270 _KBF	=	0x009e
                           0000D2   271 _EECON	=	0x00d2
                           000080   272 _P0	=	0x0080
                           000081   273 _SP	=	0x0081
                           000082   274 _DPL	=	0x0082
                           000083   275 _DPH	=	0x0083
                           000087   276 _PCON	=	0x0087
                           000088   277 _TCON	=	0x0088
                           000089   278 _TMOD	=	0x0089
                           00008A   279 _TL0	=	0x008a
                           00008B   280 _TL1	=	0x008b
                           00008C   281 _TH0	=	0x008c
                           00008D   282 _TH1	=	0x008d
                           000090   283 _P1	=	0x0090
                           000098   284 _SCON	=	0x0098
                           000099   285 _SBUF	=	0x0099
                           0000A0   286 _P2	=	0x00a0
                           0000A8   287 _IE	=	0x00a8
                           0000B0   288 _P3	=	0x00b0
                           0000B8   289 _IP	=	0x00b8
                           0000D0   290 _PSW	=	0x00d0
                           0000E0   291 _ACC	=	0x00e0
                           0000F0   292 _B	=	0x00f0
                                    293 ;--------------------------------------------------------
                                    294 ; special function bits
                                    295 ;--------------------------------------------------------
                                    296 	.area RSEG    (ABS,DATA)
      000000                        297 	.org 0x0000
                           0000AD   298 _ET2	=	0x00ad
                           0000BD   299 _PT2	=	0x00bd
                           0000C8   300 _T2CON_0	=	0x00c8
                           0000C9   301 _T2CON_1	=	0x00c9
                           0000CA   302 _T2CON_2	=	0x00ca
                           0000CB   303 _T2CON_3	=	0x00cb
                           0000CC   304 _T2CON_4	=	0x00cc
                           0000CD   305 _T2CON_5	=	0x00cd
                           0000CE   306 _T2CON_6	=	0x00ce
                           0000CF   307 _T2CON_7	=	0x00cf
                           0000C8   308 _CP_RL2	=	0x00c8
                           0000C9   309 _C_T2	=	0x00c9
                           0000CA   310 _TR2	=	0x00ca
                           0000CB   311 _EXEN2	=	0x00cb
                           0000CC   312 _TCLK	=	0x00cc
                           0000CD   313 _RCLK	=	0x00cd
                           0000CE   314 _EXF2	=	0x00ce
                           0000CF   315 _TF2	=	0x00cf
                           0000DF   316 _CF	=	0x00df
                           0000DE   317 _CR	=	0x00de
                           0000DC   318 _CCF4	=	0x00dc
                           0000DB   319 _CCF3	=	0x00db
                           0000DA   320 _CCF2	=	0x00da
                           0000D9   321 _CCF1	=	0x00d9
                           0000D8   322 _CCF0	=	0x00d8
                           0000AE   323 _EC	=	0x00ae
                           0000BE   324 _PPCL	=	0x00be
                           0000BD   325 _PT2L	=	0x00bd
                           0000BC   326 _PSL	=	0x00bc
                           0000BB   327 _PT1L	=	0x00bb
                           0000BA   328 _PX1L	=	0x00ba
                           0000B9   329 _PT0L	=	0x00b9
                           0000B8   330 _PX0L	=	0x00b8
                           0000C0   331 _P4_0	=	0x00c0
                           0000C1   332 _P4_1	=	0x00c1
                           0000C2   333 _P4_2	=	0x00c2
                           0000C3   334 _P4_3	=	0x00c3
                           0000C4   335 _P4_4	=	0x00c4
                           0000C5   336 _P4_5	=	0x00c5
                           0000C6   337 _P4_6	=	0x00c6
                           0000C7   338 _P4_7	=	0x00c7
                           0000E8   339 _P5_0	=	0x00e8
                           0000E9   340 _P5_1	=	0x00e9
                           0000EA   341 _P5_2	=	0x00ea
                           0000EB   342 _P5_3	=	0x00eb
                           0000EC   343 _P5_4	=	0x00ec
                           0000ED   344 _P5_5	=	0x00ed
                           0000EE   345 _P5_6	=	0x00ee
                           0000EF   346 _P5_7	=	0x00ef
                           000080   347 _P0_0	=	0x0080
                           000081   348 _P0_1	=	0x0081
                           000082   349 _P0_2	=	0x0082
                           000083   350 _P0_3	=	0x0083
                           000084   351 _P0_4	=	0x0084
                           000085   352 _P0_5	=	0x0085
                           000086   353 _P0_6	=	0x0086
                           000087   354 _P0_7	=	0x0087
                           000088   355 _IT0	=	0x0088
                           000089   356 _IE0	=	0x0089
                           00008A   357 _IT1	=	0x008a
                           00008B   358 _IE1	=	0x008b
                           00008C   359 _TR0	=	0x008c
                           00008D   360 _TF0	=	0x008d
                           00008E   361 _TR1	=	0x008e
                           00008F   362 _TF1	=	0x008f
                           000090   363 _P1_0	=	0x0090
                           000091   364 _P1_1	=	0x0091
                           000092   365 _P1_2	=	0x0092
                           000093   366 _P1_3	=	0x0093
                           000094   367 _P1_4	=	0x0094
                           000095   368 _P1_5	=	0x0095
                           000096   369 _P1_6	=	0x0096
                           000097   370 _P1_7	=	0x0097
                           000098   371 _RI	=	0x0098
                           000099   372 _TI	=	0x0099
                           00009A   373 _RB8	=	0x009a
                           00009B   374 _TB8	=	0x009b
                           00009C   375 _REN	=	0x009c
                           00009D   376 _SM2	=	0x009d
                           00009E   377 _SM1	=	0x009e
                           00009F   378 _SM0	=	0x009f
                           0000A0   379 _P2_0	=	0x00a0
                           0000A1   380 _P2_1	=	0x00a1
                           0000A2   381 _P2_2	=	0x00a2
                           0000A3   382 _P2_3	=	0x00a3
                           0000A4   383 _P2_4	=	0x00a4
                           0000A5   384 _P2_5	=	0x00a5
                           0000A6   385 _P2_6	=	0x00a6
                           0000A7   386 _P2_7	=	0x00a7
                           0000A8   387 _EX0	=	0x00a8
                           0000A9   388 _ET0	=	0x00a9
                           0000AA   389 _EX1	=	0x00aa
                           0000AB   390 _ET1	=	0x00ab
                           0000AC   391 _ES	=	0x00ac
                           0000AF   392 _EA	=	0x00af
                           0000B0   393 _P3_0	=	0x00b0
                           0000B1   394 _P3_1	=	0x00b1
                           0000B2   395 _P3_2	=	0x00b2
                           0000B3   396 _P3_3	=	0x00b3
                           0000B4   397 _P3_4	=	0x00b4
                           0000B5   398 _P3_5	=	0x00b5
                           0000B6   399 _P3_6	=	0x00b6
                           0000B7   400 _P3_7	=	0x00b7
                           0000B0   401 _RXD	=	0x00b0
                           0000B1   402 _TXD	=	0x00b1
                           0000B2   403 _INT0	=	0x00b2
                           0000B3   404 _INT1	=	0x00b3
                           0000B4   405 _T0	=	0x00b4
                           0000B5   406 _T1	=	0x00b5
                           0000B6   407 _WR	=	0x00b6
                           0000B7   408 _RD	=	0x00b7
                           0000B8   409 _PX0	=	0x00b8
                           0000B9   410 _PT0	=	0x00b9
                           0000BA   411 _PX1	=	0x00ba
                           0000BB   412 _PT1	=	0x00bb
                           0000BC   413 _PS	=	0x00bc
                           0000D0   414 _P	=	0x00d0
                           0000D1   415 _F1	=	0x00d1
                           0000D2   416 _OV	=	0x00d2
                           0000D3   417 _RS0	=	0x00d3
                           0000D4   418 _RS1	=	0x00d4
                           0000D5   419 _F0	=	0x00d5
                           0000D6   420 _AC	=	0x00d6
                           0000D7   421 _CY	=	0x00d7
                                    422 ;--------------------------------------------------------
                                    423 ; overlayable register banks
                                    424 ;--------------------------------------------------------
                                    425 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        426 	.ds 8
                                    427 ;--------------------------------------------------------
                                    428 ; internal ram data
                                    429 ;--------------------------------------------------------
                                    430 	.area DSEG    (DATA)
                                    431 ;--------------------------------------------------------
                                    432 ; overlayable items in internal ram 
                                    433 ;--------------------------------------------------------
                                    434 ;--------------------------------------------------------
                                    435 ; indirectly addressable internal ram data
                                    436 ;--------------------------------------------------------
                                    437 	.area ISEG    (DATA)
                                    438 ;--------------------------------------------------------
                                    439 ; absolute internal ram data
                                    440 ;--------------------------------------------------------
                                    441 	.area IABS    (ABS,DATA)
                                    442 	.area IABS    (ABS,DATA)
                                    443 ;--------------------------------------------------------
                                    444 ; bit data
                                    445 ;--------------------------------------------------------
                                    446 	.area BSEG    (BIT)
                                    447 ;--------------------------------------------------------
                                    448 ; paged external ram data
                                    449 ;--------------------------------------------------------
                                    450 	.area PSEG    (PAG,XDATA)
                                    451 ;--------------------------------------------------------
                                    452 ; external ram data
                                    453 ;--------------------------------------------------------
                                    454 	.area XSEG    (XDATA)
      000412                        455 _i2c_read_ACK_65536_29:
      000412                        456 	.ds 2
      000414                        457 _i2c_read_buff_65536_30:
      000414                        458 	.ds 1
      000415                        459 _i2c_write_data_65536_33:
      000415                        460 	.ds 1
                                    461 ;--------------------------------------------------------
                                    462 ; absolute external ram data
                                    463 ;--------------------------------------------------------
                                    464 	.area XABS    (ABS,XDATA)
                                    465 ;--------------------------------------------------------
                                    466 ; external initialized ram data
                                    467 ;--------------------------------------------------------
                                    468 	.area XISEG   (XDATA)
                                    469 	.area HOME    (CODE)
                                    470 	.area GSINIT0 (CODE)
                                    471 	.area GSINIT1 (CODE)
                                    472 	.area GSINIT2 (CODE)
                                    473 	.area GSINIT3 (CODE)
                                    474 	.area GSINIT4 (CODE)
                                    475 	.area GSINIT5 (CODE)
                                    476 	.area GSINIT  (CODE)
                                    477 	.area GSFINAL (CODE)
                                    478 	.area CSEG    (CODE)
                                    479 ;--------------------------------------------------------
                                    480 ; global & static initialisations
                                    481 ;--------------------------------------------------------
                                    482 	.area HOME    (CODE)
                                    483 	.area GSINIT  (CODE)
                                    484 	.area GSFINAL (CODE)
                                    485 	.area GSINIT  (CODE)
                                    486 ;--------------------------------------------------------
                                    487 ; Home
                                    488 ;--------------------------------------------------------
                                    489 	.area HOME    (CODE)
                                    490 	.area HOME    (CODE)
                                    491 ;--------------------------------------------------------
                                    492 ; code
                                    493 ;--------------------------------------------------------
                                    494 	.area CSEG    (CODE)
                                    495 ;------------------------------------------------------------
                                    496 ;Allocation info for local variables in function 'i2c_delay'
                                    497 ;------------------------------------------------------------
                                    498 ;i                         Allocated with name '_i2c_delay_i_131072_24'
                                    499 ;------------------------------------------------------------
                                    500 ;	src/i2c.c:10: void i2c_delay() 
                                    501 ;	-----------------------------------------
                                    502 ;	 function i2c_delay
                                    503 ;	-----------------------------------------
      0029B0                        504 _i2c_delay:
                           000007   505 	ar7 = 0x07
                           000006   506 	ar6 = 0x06
                           000005   507 	ar5 = 0x05
                           000004   508 	ar4 = 0x04
                           000003   509 	ar3 = 0x03
                           000002   510 	ar2 = 0x02
                           000001   511 	ar1 = 0x01
                           000000   512 	ar0 = 0x00
                                    513 ;	src/i2c.c:12: for(int i = 0; i<500; i++);
      0029B0 7E 00            [12]  514 	mov	r6,#0x00
      0029B2 7F 00            [12]  515 	mov	r7,#0x00
      0029B4                        516 00103$:
      0029B4 C3               [12]  517 	clr	c
      0029B5 EE               [12]  518 	mov	a,r6
      0029B6 94 F4            [12]  519 	subb	a,#0xf4
      0029B8 EF               [12]  520 	mov	a,r7
      0029B9 64 80            [12]  521 	xrl	a,#0x80
      0029BB 94 81            [12]  522 	subb	a,#0x81
      0029BD 50 07            [24]  523 	jnc	00105$
      0029BF 0E               [12]  524 	inc	r6
      0029C0 BE 00 F1         [24]  525 	cjne	r6,#0x00,00103$
      0029C3 0F               [12]  526 	inc	r7
      0029C4 80 EE            [24]  527 	sjmp	00103$
      0029C6                        528 00105$:
                                    529 ;	src/i2c.c:13: }
      0029C6 22               [24]  530 	ret
                                    531 ;------------------------------------------------------------
                                    532 ;Allocation info for local variables in function 'i2c_stop'
                                    533 ;------------------------------------------------------------
                                    534 ;	src/i2c.c:20: void i2c_stop(void)
                                    535 ;	-----------------------------------------
                                    536 ;	 function i2c_stop
                                    537 ;	-----------------------------------------
      0029C7                        538 _i2c_stop:
                                    539 ;	src/i2c.c:22: SDA = 0;
                                    540 ;	assignBit
      0029C7 C2 94            [12]  541 	clr	_P1_4
                                    542 ;	src/i2c.c:23: i2c_delay();
      0029C9 12 29 B0         [24]  543 	lcall	_i2c_delay
                                    544 ;	src/i2c.c:24: SCL = 1;
                                    545 ;	assignBit
      0029CC D2 93            [12]  546 	setb	_P1_3
                                    547 ;	src/i2c.c:25: i2c_delay();
      0029CE 12 29 B0         [24]  548 	lcall	_i2c_delay
                                    549 ;	src/i2c.c:26: SDA = 1; 
                                    550 ;	assignBit
      0029D1 D2 94            [12]  551 	setb	_P1_4
                                    552 ;	src/i2c.c:27: }
      0029D3 22               [24]  553 	ret
                                    554 ;------------------------------------------------------------
                                    555 ;Allocation info for local variables in function 'i2c_start'
                                    556 ;------------------------------------------------------------
                                    557 ;	src/i2c.c:34: void i2c_start(void)
                                    558 ;	-----------------------------------------
                                    559 ;	 function i2c_start
                                    560 ;	-----------------------------------------
      0029D4                        561 _i2c_start:
                                    562 ;	src/i2c.c:36: i2c_delay();
      0029D4 12 29 B0         [24]  563 	lcall	_i2c_delay
                                    564 ;	src/i2c.c:37: SDA = 1;
                                    565 ;	assignBit
      0029D7 D2 94            [12]  566 	setb	_P1_4
                                    567 ;	src/i2c.c:38: i2c_delay();
      0029D9 12 29 B0         [24]  568 	lcall	_i2c_delay
                                    569 ;	src/i2c.c:39: SCL = 1;
                                    570 ;	assignBit
      0029DC D2 93            [12]  571 	setb	_P1_3
                                    572 ;	src/i2c.c:40: i2c_delay();
      0029DE 12 29 B0         [24]  573 	lcall	_i2c_delay
                                    574 ;	src/i2c.c:41: SDA = 0;
                                    575 ;	assignBit
      0029E1 C2 94            [12]  576 	clr	_P1_4
                                    577 ;	src/i2c.c:42: i2c_delay();
      0029E3 12 29 B0         [24]  578 	lcall	_i2c_delay
                                    579 ;	src/i2c.c:43: SCL = 0;
                                    580 ;	assignBit
      0029E6 C2 93            [12]  581 	clr	_P1_3
                                    582 ;	src/i2c.c:44: }
      0029E8 22               [24]  583 	ret
                                    584 ;------------------------------------------------------------
                                    585 ;Allocation info for local variables in function 'i2c_read'
                                    586 ;------------------------------------------------------------
                                    587 ;ACK                       Allocated with name '_i2c_read_ACK_65536_29'
                                    588 ;buff                      Allocated with name '_i2c_read_buff_65536_30'
                                    589 ;i                         Allocated with name '_i2c_read_i_131072_31'
                                    590 ;------------------------------------------------------------
                                    591 ;	src/i2c.c:54: int i2c_read(int ACK)
                                    592 ;	-----------------------------------------
                                    593 ;	 function i2c_read
                                    594 ;	-----------------------------------------
      0029E9                        595 _i2c_read:
      0029E9 AF 83            [24]  596 	mov	r7,dph
      0029EB E5 82            [12]  597 	mov	a,dpl
      0029ED 90 04 12         [24]  598 	mov	dptr,#_i2c_read_ACK_65536_29
      0029F0 F0               [24]  599 	movx	@dptr,a
      0029F1 EF               [12]  600 	mov	a,r7
      0029F2 A3               [24]  601 	inc	dptr
      0029F3 F0               [24]  602 	movx	@dptr,a
                                    603 ;	src/i2c.c:56: unsigned char buff=0;
      0029F4 90 04 14         [24]  604 	mov	dptr,#_i2c_read_buff_65536_30
      0029F7 E4               [12]  605 	clr	a
      0029F8 F0               [24]  606 	movx	@dptr,a
                                    607 ;	src/i2c.c:57: SCL = 0;
                                    608 ;	assignBit
      0029F9 C2 93            [12]  609 	clr	_P1_3
                                    610 ;	src/i2c.c:58: for(int i=0;i<8;i++)
      0029FB 7E 00            [12]  611 	mov	r6,#0x00
      0029FD 7F 00            [12]  612 	mov	r7,#0x00
      0029FF                        613 00103$:
      0029FF C3               [12]  614 	clr	c
      002A00 EE               [12]  615 	mov	a,r6
      002A01 94 08            [12]  616 	subb	a,#0x08
      002A03 EF               [12]  617 	mov	a,r7
      002A04 64 80            [12]  618 	xrl	a,#0x80
      002A06 94 80            [12]  619 	subb	a,#0x80
      002A08 50 40            [24]  620 	jnc	00101$
                                    621 ;	src/i2c.c:60: SCL = 1;
                                    622 ;	assignBit
      002A0A D2 93            [12]  623 	setb	_P1_3
                                    624 ;	src/i2c.c:61: i2c_delay();
      002A0C C0 07            [24]  625 	push	ar7
      002A0E C0 06            [24]  626 	push	ar6
      002A10 12 29 B0         [24]  627 	lcall	_i2c_delay
      002A13 D0 06            [24]  628 	pop	ar6
      002A15 D0 07            [24]  629 	pop	ar7
                                    630 ;	src/i2c.c:62: buff |= (SDA << (7 - i));
      002A17 A2 94            [12]  631 	mov	c,_P1_4
      002A19 E4               [12]  632 	clr	a
      002A1A 33               [12]  633 	rlc	a
      002A1B FD               [12]  634 	mov	r5,a
      002A1C 8E 04            [24]  635 	mov	ar4,r6
      002A1E 74 07            [12]  636 	mov	a,#0x07
      002A20 C3               [12]  637 	clr	c
      002A21 9C               [12]  638 	subb	a,r4
      002A22 FC               [12]  639 	mov	r4,a
      002A23 8C F0            [24]  640 	mov	b,r4
      002A25 05 F0            [12]  641 	inc	b
      002A27 ED               [12]  642 	mov	a,r5
      002A28 80 02            [24]  643 	sjmp	00119$
      002A2A                        644 00117$:
      002A2A 25 E0            [12]  645 	add	a,acc
      002A2C                        646 00119$:
      002A2C D5 F0 FB         [24]  647 	djnz	b,00117$
      002A2F FC               [12]  648 	mov	r4,a
      002A30 90 04 14         [24]  649 	mov	dptr,#_i2c_read_buff_65536_30
      002A33 E0               [24]  650 	movx	a,@dptr
      002A34 4C               [12]  651 	orl	a,r4
      002A35 F0               [24]  652 	movx	@dptr,a
                                    653 ;	src/i2c.c:63: i2c_delay();
      002A36 C0 07            [24]  654 	push	ar7
      002A38 C0 06            [24]  655 	push	ar6
      002A3A 12 29 B0         [24]  656 	lcall	_i2c_delay
      002A3D D0 06            [24]  657 	pop	ar6
      002A3F D0 07            [24]  658 	pop	ar7
                                    659 ;	src/i2c.c:64: SCL=0;
                                    660 ;	assignBit
      002A41 C2 93            [12]  661 	clr	_P1_3
                                    662 ;	src/i2c.c:58: for(int i=0;i<8;i++)
      002A43 0E               [12]  663 	inc	r6
      002A44 BE 00 B8         [24]  664 	cjne	r6,#0x00,00103$
      002A47 0F               [12]  665 	inc	r7
      002A48 80 B5            [24]  666 	sjmp	00103$
      002A4A                        667 00101$:
                                    668 ;	src/i2c.c:68: SDA = !ACK;         // ACK = 0, NACK = 1
      002A4A 90 04 12         [24]  669 	mov	dptr,#_i2c_read_ACK_65536_29
      002A4D E0               [24]  670 	movx	a,@dptr
      002A4E FE               [12]  671 	mov	r6,a
      002A4F A3               [24]  672 	inc	dptr
      002A50 E0               [24]  673 	movx	a,@dptr
      002A51 4E               [12]  674 	orl	a,r6
      002A52 B4 01 00         [24]  675 	cjne	a,#0x01,00121$
      002A55                        676 00121$:
      002A55 E4               [12]  677 	clr	a
      002A56 33               [12]  678 	rlc	a
      002A57 24 FF            [12]  679 	add	a,#0xff
      002A59 92 94            [24]  680 	mov	_P1_4,c
                                    681 ;	src/i2c.c:69: SCL = 1;
                                    682 ;	assignBit
      002A5B D2 93            [12]  683 	setb	_P1_3
                                    684 ;	src/i2c.c:70: i2c_delay();
      002A5D 12 29 B0         [24]  685 	lcall	_i2c_delay
                                    686 ;	src/i2c.c:71: SCL = 0;
                                    687 ;	assignBit
      002A60 C2 93            [12]  688 	clr	_P1_3
                                    689 ;	src/i2c.c:73: return buff;
      002A62 90 04 14         [24]  690 	mov	dptr,#_i2c_read_buff_65536_30
      002A65 E0               [24]  691 	movx	a,@dptr
      002A66 FF               [12]  692 	mov	r7,a
      002A67 7E 00            [12]  693 	mov	r6,#0x00
      002A69 8F 82            [24]  694 	mov	dpl,r7
      002A6B 8E 83            [24]  695 	mov	dph,r6
                                    696 ;	src/i2c.c:74: }
      002A6D 22               [24]  697 	ret
                                    698 ;------------------------------------------------------------
                                    699 ;Allocation info for local variables in function 'i2c_write'
                                    700 ;------------------------------------------------------------
                                    701 ;data                      Allocated with name '_i2c_write_data_65536_33'
                                    702 ;i                         Allocated with name '_i2c_write_i_65536_34'
                                    703 ;------------------------------------------------------------
                                    704 ;	src/i2c.c:85: int i2c_write(unsigned char data)
                                    705 ;	-----------------------------------------
                                    706 ;	 function i2c_write
                                    707 ;	-----------------------------------------
      002A6E                        708 _i2c_write:
      002A6E E5 82            [12]  709 	mov	a,dpl
      002A70 90 04 15         [24]  710 	mov	dptr,#_i2c_write_data_65536_33
      002A73 F0               [24]  711 	movx	@dptr,a
                                    712 ;	src/i2c.c:89: for(i=0;i<=7;i++)
      002A74 7E 00            [12]  713 	mov	r6,#0x00
      002A76 7F 00            [12]  714 	mov	r7,#0x00
      002A78                        715 00104$:
                                    716 ;	src/i2c.c:91: SDA = (data & 0x80) ? 1 : 0;    //msb first
      002A78 90 04 15         [24]  717 	mov	dptr,#_i2c_write_data_65536_33
      002A7B E0               [24]  718 	movx	a,@dptr
      002A7C FD               [12]  719 	mov	r5,a
      002A7D 23               [12]  720 	rl	a
      002A7E 54 01            [12]  721 	anl	a,#0x01
      002A80 24 FF            [12]  722 	add	a,#0xff
      002A82 92 94            [24]  723 	mov	_P1_4,c
                                    724 ;	src/i2c.c:92: i2c_delay();        // Setup time for data
      002A84 C0 07            [24]  725 	push	ar7
      002A86 C0 06            [24]  726 	push	ar6
      002A88 C0 05            [24]  727 	push	ar5
      002A8A 12 29 B0         [24]  728 	lcall	_i2c_delay
                                    729 ;	src/i2c.c:93: SCL=1;
                                    730 ;	assignBit
      002A8D D2 93            [12]  731 	setb	_P1_3
                                    732 ;	src/i2c.c:94: i2c_delay();        // Hold time for clock
      002A8F 12 29 B0         [24]  733 	lcall	_i2c_delay
      002A92 D0 05            [24]  734 	pop	ar5
      002A94 D0 06            [24]  735 	pop	ar6
      002A96 D0 07            [24]  736 	pop	ar7
                                    737 ;	src/i2c.c:95: SCL=0;
                                    738 ;	assignBit
      002A98 C2 93            [12]  739 	clr	_P1_3
                                    740 ;	src/i2c.c:96: data = data << 1;
      002A9A ED               [12]  741 	mov	a,r5
      002A9B 2D               [12]  742 	add	a,r5
      002A9C 90 04 15         [24]  743 	mov	dptr,#_i2c_write_data_65536_33
      002A9F F0               [24]  744 	movx	@dptr,a
                                    745 ;	src/i2c.c:89: for(i=0;i<=7;i++)
      002AA0 0E               [12]  746 	inc	r6
      002AA1 BE 00 01         [24]  747 	cjne	r6,#0x00,00121$
      002AA4 0F               [12]  748 	inc	r7
      002AA5                        749 00121$:
      002AA5 C3               [12]  750 	clr	c
      002AA6 74 07            [12]  751 	mov	a,#0x07
      002AA8 9E               [12]  752 	subb	a,r6
      002AA9 E4               [12]  753 	clr	a
      002AAA 9F               [12]  754 	subb	a,r7
      002AAB 50 CB            [24]  755 	jnc	00104$
                                    756 ;	src/i2c.c:100: SDA = 1;            // Release SDA for slave
                                    757 ;	assignBit
      002AAD D2 94            [12]  758 	setb	_P1_4
                                    759 ;	src/i2c.c:101: SCL = 1;            // 9th clock pulse for ACK
                                    760 ;	assignBit
      002AAF D2 93            [12]  761 	setb	_P1_3
                                    762 ;	src/i2c.c:102: i2c_delay();
      002AB1 12 29 B0         [24]  763 	lcall	_i2c_delay
                                    764 ;	src/i2c.c:103: if(SDA == 1)        // If SDA is still high, no ACK received
      002AB4 30 94 19         [24]  765 	jnb	_P1_4,00103$
                                    766 ;	src/i2c.c:106: printf("ACK DID NOT ARRIVE\n\r");
      002AB7 74 76            [12]  767 	mov	a,#___str_0
      002AB9 C0 E0            [24]  768 	push	acc
      002ABB 74 42            [12]  769 	mov	a,#(___str_0 >> 8)
      002ABD C0 E0            [24]  770 	push	acc
      002ABF 74 80            [12]  771 	mov	a,#0x80
      002AC1 C0 E0            [24]  772 	push	acc
      002AC3 12 30 C9         [24]  773 	lcall	_printf
      002AC6 15 81            [12]  774 	dec	sp
      002AC8 15 81            [12]  775 	dec	sp
      002ACA 15 81            [12]  776 	dec	sp
                                    777 ;	src/i2c.c:107: return 0;       // Error
      002ACC 90 00 00         [24]  778 	mov	dptr,#0x0000
      002ACF 22               [24]  779 	ret
      002AD0                        780 00103$:
                                    781 ;	src/i2c.c:109: SCL = 0;
                                    782 ;	assignBit
      002AD0 C2 93            [12]  783 	clr	_P1_3
                                    784 ;	src/i2c.c:111: return 1;           // Success
      002AD2 90 00 01         [24]  785 	mov	dptr,#0x0001
                                    786 ;	src/i2c.c:113: }
      002AD5 22               [24]  787 	ret
                                    788 ;------------------------------------------------------------
                                    789 ;Allocation info for local variables in function 'test_function'
                                    790 ;------------------------------------------------------------
                                    791 ;test_data                 Allocated with name '_test_function_test_data_65537_39'
                                    792 ;address                   Allocated with name '_test_function_address_65537_39'
                                    793 ;i                         Allocated with name '_test_function_i_131073_40'
                                    794 ;read_data                 Allocated with name '_test_function_read_data_65538_42'
                                    795 ;------------------------------------------------------------
                                    796 ;	src/i2c.c:115: void test_function()
                                    797 ;	-----------------------------------------
                                    798 ;	 function test_function
                                    799 ;	-----------------------------------------
      002AD6                        800 _test_function:
                                    801 ;	src/i2c.c:117: i2c_start();
      002AD6 12 29 D4         [24]  802 	lcall	_i2c_start
                                    803 ;	src/i2c.c:118: i2c_delay();
      002AD9 12 29 B0         [24]  804 	lcall	_i2c_delay
                                    805 ;	src/i2c.c:124: printf("Writing data 0x%02X to address 0x%02X\n\r", test_data, address);
      002ADC 74 02            [12]  806 	mov	a,#0x02
      002ADE C0 E0            [24]  807 	push	acc
      002AE0 E4               [12]  808 	clr	a
      002AE1 C0 E0            [24]  809 	push	acc
      002AE3 74 26            [12]  810 	mov	a,#0x26
      002AE5 C0 E0            [24]  811 	push	acc
      002AE7 E4               [12]  812 	clr	a
      002AE8 C0 E0            [24]  813 	push	acc
      002AEA 74 8B            [12]  814 	mov	a,#___str_1
      002AEC C0 E0            [24]  815 	push	acc
      002AEE 74 42            [12]  816 	mov	a,#(___str_1 >> 8)
      002AF0 C0 E0            [24]  817 	push	acc
      002AF2 74 80            [12]  818 	mov	a,#0x80
      002AF4 C0 E0            [24]  819 	push	acc
      002AF6 12 30 C9         [24]  820 	lcall	_printf
      002AF9 E5 81            [12]  821 	mov	a,sp
      002AFB 24 F9            [12]  822 	add	a,#0xf9
      002AFD F5 81            [12]  823 	mov	sp,a
                                    824 ;	src/i2c.c:125: eeprom_write(address, test_data);
      002AFF 90 04 05         [24]  825 	mov	dptr,#_eeprom_write_PARM_2
      002B02 74 26            [12]  826 	mov	a,#0x26
      002B04 F0               [24]  827 	movx	@dptr,a
      002B05 90 00 02         [24]  828 	mov	dptr,#0x0002
      002B08 12 23 33         [24]  829 	lcall	_eeprom_write
                                    830 ;	src/i2c.c:126: i2c_stop();
      002B0B 12 29 C7         [24]  831 	lcall	_i2c_stop
                                    832 ;	src/i2c.c:128: for(int i = 0; i<100; i++)
      002B0E 7E 00            [12]  833 	mov	r6,#0x00
      002B10 7F 00            [12]  834 	mov	r7,#0x00
      002B12                        835 00106$:
      002B12 C3               [12]  836 	clr	c
      002B13 EE               [12]  837 	mov	a,r6
      002B14 94 64            [12]  838 	subb	a,#0x64
      002B16 EF               [12]  839 	mov	a,r7
      002B17 64 80            [12]  840 	xrl	a,#0x80
      002B19 94 80            [12]  841 	subb	a,#0x80
      002B1B 50 12            [24]  842 	jnc	00101$
                                    843 ;	src/i2c.c:130: i2c_delay();
      002B1D C0 07            [24]  844 	push	ar7
      002B1F C0 06            [24]  845 	push	ar6
      002B21 12 29 B0         [24]  846 	lcall	_i2c_delay
      002B24 D0 06            [24]  847 	pop	ar6
      002B26 D0 07            [24]  848 	pop	ar7
                                    849 ;	src/i2c.c:128: for(int i = 0; i<100; i++)
      002B28 0E               [12]  850 	inc	r6
      002B29 BE 00 E6         [24]  851 	cjne	r6,#0x00,00106$
      002B2C 0F               [12]  852 	inc	r7
      002B2D 80 E3            [24]  853 	sjmp	00106$
      002B2F                        854 00101$:
                                    855 ;	src/i2c.c:134: unsigned char read_data = eeprom_read(address);
      002B2F 90 00 02         [24]  856 	mov	dptr,#0x0002
      002B32 12 24 75         [24]  857 	lcall	_eeprom_read
      002B35 AE 82            [24]  858 	mov	r6,dpl
                                    859 ;	src/i2c.c:135: printf("Read back from address 0x%02X: 0x%02X\n\r", address, read_data);
      002B37 8E 05            [24]  860 	mov	ar5,r6
      002B39 7F 00            [12]  861 	mov	r7,#0x00
      002B3B C0 06            [24]  862 	push	ar6
      002B3D C0 05            [24]  863 	push	ar5
      002B3F C0 07            [24]  864 	push	ar7
      002B41 74 02            [12]  865 	mov	a,#0x02
      002B43 C0 E0            [24]  866 	push	acc
      002B45 E4               [12]  867 	clr	a
      002B46 C0 E0            [24]  868 	push	acc
      002B48 74 B3            [12]  869 	mov	a,#___str_2
      002B4A C0 E0            [24]  870 	push	acc
      002B4C 74 42            [12]  871 	mov	a,#(___str_2 >> 8)
      002B4E C0 E0            [24]  872 	push	acc
      002B50 74 80            [12]  873 	mov	a,#0x80
      002B52 C0 E0            [24]  874 	push	acc
      002B54 12 30 C9         [24]  875 	lcall	_printf
      002B57 E5 81            [12]  876 	mov	a,sp
      002B59 24 F9            [12]  877 	add	a,#0xf9
      002B5B F5 81            [12]  878 	mov	sp,a
      002B5D D0 06            [24]  879 	pop	ar6
                                    880 ;	src/i2c.c:138: if(read_data == test_data) {
      002B5F BE 26 16         [24]  881 	cjne	r6,#0x26,00103$
                                    882 ;	src/i2c.c:139: printf("MATCH - Write/Read successful!\n\r");
      002B62 74 DB            [12]  883 	mov	a,#___str_3
      002B64 C0 E0            [24]  884 	push	acc
      002B66 74 42            [12]  885 	mov	a,#(___str_3 >> 8)
      002B68 C0 E0            [24]  886 	push	acc
      002B6A 74 80            [12]  887 	mov	a,#0x80
      002B6C C0 E0            [24]  888 	push	acc
      002B6E 12 30 C9         [24]  889 	lcall	_printf
      002B71 15 81            [12]  890 	dec	sp
      002B73 15 81            [12]  891 	dec	sp
      002B75 15 81            [12]  892 	dec	sp
      002B77 22               [24]  893 	ret
      002B78                        894 00103$:
                                    895 ;	src/i2c.c:141: printf("ERROR - Data mismatch!\n\r");
      002B78 74 FC            [12]  896 	mov	a,#___str_4
      002B7A C0 E0            [24]  897 	push	acc
      002B7C 74 42            [12]  898 	mov	a,#(___str_4 >> 8)
      002B7E C0 E0            [24]  899 	push	acc
      002B80 74 80            [12]  900 	mov	a,#0x80
      002B82 C0 E0            [24]  901 	push	acc
      002B84 12 30 C9         [24]  902 	lcall	_printf
      002B87 15 81            [12]  903 	dec	sp
      002B89 15 81            [12]  904 	dec	sp
      002B8B 15 81            [12]  905 	dec	sp
                                    906 ;	src/i2c.c:145: }
      002B8D 22               [24]  907 	ret
                                    908 	.area CSEG    (CODE)
                                    909 	.area CONST   (CODE)
                                    910 	.area CONST   (CODE)
      004276                        911 ___str_0:
      004276 41 43 4B 20 44 49 44   912 	.ascii "ACK DID NOT ARRIVE"
             20 4E 4F 54 20 41 52
             52 49 56 45
      004288 0A                     913 	.db 0x0a
      004289 0D                     914 	.db 0x0d
      00428A 00                     915 	.db 0x00
                                    916 	.area CSEG    (CODE)
                                    917 	.area CONST   (CODE)
      00428B                        918 ___str_1:
      00428B 57 72 69 74 69 6E 67   919 	.ascii "Writing data 0x%02X to address 0x%02X"
             20 64 61 74 61 20 30
             78 25 30 32 58 20 74
             6F 20 61 64 64 72 65
             73 73 20 30 78 25 30
             32 58
      0042B0 0A                     920 	.db 0x0a
      0042B1 0D                     921 	.db 0x0d
      0042B2 00                     922 	.db 0x00
                                    923 	.area CSEG    (CODE)
                                    924 	.area CONST   (CODE)
      0042B3                        925 ___str_2:
      0042B3 52 65 61 64 20 62 61   926 	.ascii "Read back from address 0x%02X: 0x%02X"
             63 6B 20 66 72 6F 6D
             20 61 64 64 72 65 73
             73 20 30 78 25 30 32
             58 3A 20 30 78 25 30
             32 58
      0042D8 0A                     927 	.db 0x0a
      0042D9 0D                     928 	.db 0x0d
      0042DA 00                     929 	.db 0x00
                                    930 	.area CSEG    (CODE)
                                    931 	.area CONST   (CODE)
      0042DB                        932 ___str_3:
      0042DB 4D 41 54 43 48 20 2D   933 	.ascii "MATCH - Write/Read successful!"
             20 57 72 69 74 65 2F
             52 65 61 64 20 73 75
             63 63 65 73 73 66 75
             6C 21
      0042F9 0A                     934 	.db 0x0a
      0042FA 0D                     935 	.db 0x0d
      0042FB 00                     936 	.db 0x00
                                    937 	.area CSEG    (CODE)
                                    938 	.area CONST   (CODE)
      0042FC                        939 ___str_4:
      0042FC 45 52 52 4F 52 20 2D   940 	.ascii "ERROR - Data mismatch!"
             20 44 61 74 61 20 6D
             69 73 6D 61 74 63 68
             21
      004312 0A                     941 	.db 0x0a
      004313 0D                     942 	.db 0x0d
      004314 00                     943 	.db 0x00
                                    944 	.area CSEG    (CODE)
                                    945 	.area XINIT   (CODE)
                                    946 	.area CABS    (ABS,CODE)
