                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module io_expander
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _external_ISR0
                                     13 	.globl _getchar
                                     14 	.globl _putchar
                                     15 	.globl _printf
                                     16 	.globl _P5_7
                                     17 	.globl _P5_6
                                     18 	.globl _P5_5
                                     19 	.globl _P5_4
                                     20 	.globl _P5_3
                                     21 	.globl _P5_2
                                     22 	.globl _P5_1
                                     23 	.globl _P5_0
                                     24 	.globl _P4_7
                                     25 	.globl _P4_6
                                     26 	.globl _P4_5
                                     27 	.globl _P4_4
                                     28 	.globl _P4_3
                                     29 	.globl _P4_2
                                     30 	.globl _P4_1
                                     31 	.globl _P4_0
                                     32 	.globl _PX0L
                                     33 	.globl _PT0L
                                     34 	.globl _PX1L
                                     35 	.globl _PT1L
                                     36 	.globl _PSL
                                     37 	.globl _PT2L
                                     38 	.globl _PPCL
                                     39 	.globl _EC
                                     40 	.globl _CCF0
                                     41 	.globl _CCF1
                                     42 	.globl _CCF2
                                     43 	.globl _CCF3
                                     44 	.globl _CCF4
                                     45 	.globl _CR
                                     46 	.globl _CF
                                     47 	.globl _TF2
                                     48 	.globl _EXF2
                                     49 	.globl _RCLK
                                     50 	.globl _TCLK
                                     51 	.globl _EXEN2
                                     52 	.globl _TR2
                                     53 	.globl _C_T2
                                     54 	.globl _CP_RL2
                                     55 	.globl _T2CON_7
                                     56 	.globl _T2CON_6
                                     57 	.globl _T2CON_5
                                     58 	.globl _T2CON_4
                                     59 	.globl _T2CON_3
                                     60 	.globl _T2CON_2
                                     61 	.globl _T2CON_1
                                     62 	.globl _T2CON_0
                                     63 	.globl _PT2
                                     64 	.globl _ET2
                                     65 	.globl _CY
                                     66 	.globl _AC
                                     67 	.globl _F0
                                     68 	.globl _RS1
                                     69 	.globl _RS0
                                     70 	.globl _OV
                                     71 	.globl _F1
                                     72 	.globl _P
                                     73 	.globl _PS
                                     74 	.globl _PT1
                                     75 	.globl _PX1
                                     76 	.globl _PT0
                                     77 	.globl _PX0
                                     78 	.globl _RD
                                     79 	.globl _WR
                                     80 	.globl _T1
                                     81 	.globl _T0
                                     82 	.globl _INT1
                                     83 	.globl _INT0
                                     84 	.globl _TXD
                                     85 	.globl _RXD
                                     86 	.globl _P3_7
                                     87 	.globl _P3_6
                                     88 	.globl _P3_5
                                     89 	.globl _P3_4
                                     90 	.globl _P3_3
                                     91 	.globl _P3_2
                                     92 	.globl _P3_1
                                     93 	.globl _P3_0
                                     94 	.globl _EA
                                     95 	.globl _ES
                                     96 	.globl _ET1
                                     97 	.globl _EX1
                                     98 	.globl _ET0
                                     99 	.globl _EX0
                                    100 	.globl _P2_7
                                    101 	.globl _P2_6
                                    102 	.globl _P2_5
                                    103 	.globl _P2_4
                                    104 	.globl _P2_3
                                    105 	.globl _P2_2
                                    106 	.globl _P2_1
                                    107 	.globl _P2_0
                                    108 	.globl _SM0
                                    109 	.globl _SM1
                                    110 	.globl _SM2
                                    111 	.globl _REN
                                    112 	.globl _TB8
                                    113 	.globl _RB8
                                    114 	.globl _TI
                                    115 	.globl _RI
                                    116 	.globl _P1_7
                                    117 	.globl _P1_6
                                    118 	.globl _P1_5
                                    119 	.globl _P1_4
                                    120 	.globl _P1_3
                                    121 	.globl _P1_2
                                    122 	.globl _P1_1
                                    123 	.globl _P1_0
                                    124 	.globl _TF1
                                    125 	.globl _TR1
                                    126 	.globl _TF0
                                    127 	.globl _TR0
                                    128 	.globl _IE1
                                    129 	.globl _IT1
                                    130 	.globl _IE0
                                    131 	.globl _IT0
                                    132 	.globl _P0_7
                                    133 	.globl _P0_6
                                    134 	.globl _P0_5
                                    135 	.globl _P0_4
                                    136 	.globl _P0_3
                                    137 	.globl _P0_2
                                    138 	.globl _P0_1
                                    139 	.globl _P0_0
                                    140 	.globl _EECON
                                    141 	.globl _KBF
                                    142 	.globl _KBE
                                    143 	.globl _KBLS
                                    144 	.globl _BRL
                                    145 	.globl _BDRCON
                                    146 	.globl _T2MOD
                                    147 	.globl _SPDAT
                                    148 	.globl _SPSTA
                                    149 	.globl _SPCON
                                    150 	.globl _SADEN
                                    151 	.globl _SADDR
                                    152 	.globl _WDTPRG
                                    153 	.globl _WDTRST
                                    154 	.globl _P5
                                    155 	.globl _P4
                                    156 	.globl _IPH1
                                    157 	.globl _IPL1
                                    158 	.globl _IPH0
                                    159 	.globl _IPL0
                                    160 	.globl _IEN1
                                    161 	.globl _IEN0
                                    162 	.globl _CMOD
                                    163 	.globl _CL
                                    164 	.globl _CH
                                    165 	.globl _CCON
                                    166 	.globl _CCAPM4
                                    167 	.globl _CCAPM3
                                    168 	.globl _CCAPM2
                                    169 	.globl _CCAPM1
                                    170 	.globl _CCAPM0
                                    171 	.globl _CCAP4L
                                    172 	.globl _CCAP3L
                                    173 	.globl _CCAP2L
                                    174 	.globl _CCAP1L
                                    175 	.globl _CCAP0L
                                    176 	.globl _CCAP4H
                                    177 	.globl _CCAP3H
                                    178 	.globl _CCAP2H
                                    179 	.globl _CCAP1H
                                    180 	.globl _CCAP0H
                                    181 	.globl _CKCON1
                                    182 	.globl _CKCON0
                                    183 	.globl _CKRL
                                    184 	.globl _AUXR1
                                    185 	.globl _AUXR
                                    186 	.globl _TH2
                                    187 	.globl _TL2
                                    188 	.globl _RCAP2H
                                    189 	.globl _RCAP2L
                                    190 	.globl _T2CON
                                    191 	.globl _B
                                    192 	.globl _ACC
                                    193 	.globl _PSW
                                    194 	.globl _IP
                                    195 	.globl _P3
                                    196 	.globl _IE
                                    197 	.globl _P2
                                    198 	.globl _SBUF
                                    199 	.globl _SCON
                                    200 	.globl _P1
                                    201 	.globl _TH1
                                    202 	.globl _TH0
                                    203 	.globl _TL1
                                    204 	.globl _TL0
                                    205 	.globl _TMOD
                                    206 	.globl _TCON
                                    207 	.globl _PCON
                                    208 	.globl _DPH
                                    209 	.globl _DPL
                                    210 	.globl _SP
                                    211 	.globl _P0
                                    212 	.globl _pcf8574_set_pin_PARM_2
                                    213 	.globl _enable_interrupt0
                                    214 	.globl _pcf8574_read_port
                                    215 	.globl _pcf8574_read_pin
                                    216 	.globl _pcf8574_write_port
                                    217 	.globl _pcf8574_set_pin
                                    218 	.globl _i2c_write
                                    219 	.globl _i2c_read
                                    220 	.globl _i2c_start
                                    221 	.globl _i2c_stop
                                    222 	.globl _i2c_delay
                                    223 ;--------------------------------------------------------
                                    224 ; special function registers
                                    225 ;--------------------------------------------------------
                                    226 	.area RSEG    (ABS,DATA)
      000000                        227 	.org 0x0000
                           000080   228 _P0	=	0x0080
                           000081   229 _SP	=	0x0081
                           000082   230 _DPL	=	0x0082
                           000083   231 _DPH	=	0x0083
                           000087   232 _PCON	=	0x0087
                           000088   233 _TCON	=	0x0088
                           000089   234 _TMOD	=	0x0089
                           00008A   235 _TL0	=	0x008a
                           00008B   236 _TL1	=	0x008b
                           00008C   237 _TH0	=	0x008c
                           00008D   238 _TH1	=	0x008d
                           000090   239 _P1	=	0x0090
                           000098   240 _SCON	=	0x0098
                           000099   241 _SBUF	=	0x0099
                           0000A0   242 _P2	=	0x00a0
                           0000A8   243 _IE	=	0x00a8
                           0000B0   244 _P3	=	0x00b0
                           0000B8   245 _IP	=	0x00b8
                           0000D0   246 _PSW	=	0x00d0
                           0000E0   247 _ACC	=	0x00e0
                           0000F0   248 _B	=	0x00f0
                           0000C8   249 _T2CON	=	0x00c8
                           0000CA   250 _RCAP2L	=	0x00ca
                           0000CB   251 _RCAP2H	=	0x00cb
                           0000CC   252 _TL2	=	0x00cc
                           0000CD   253 _TH2	=	0x00cd
                           00008E   254 _AUXR	=	0x008e
                           0000A2   255 _AUXR1	=	0x00a2
                           000097   256 _CKRL	=	0x0097
                           00008F   257 _CKCON0	=	0x008f
                           0000AF   258 _CKCON1	=	0x00af
                           0000FA   259 _CCAP0H	=	0x00fa
                           0000FB   260 _CCAP1H	=	0x00fb
                           0000FC   261 _CCAP2H	=	0x00fc
                           0000FD   262 _CCAP3H	=	0x00fd
                           0000FE   263 _CCAP4H	=	0x00fe
                           0000EA   264 _CCAP0L	=	0x00ea
                           0000EB   265 _CCAP1L	=	0x00eb
                           0000EC   266 _CCAP2L	=	0x00ec
                           0000ED   267 _CCAP3L	=	0x00ed
                           0000EE   268 _CCAP4L	=	0x00ee
                           0000DA   269 _CCAPM0	=	0x00da
                           0000DB   270 _CCAPM1	=	0x00db
                           0000DC   271 _CCAPM2	=	0x00dc
                           0000DD   272 _CCAPM3	=	0x00dd
                           0000DE   273 _CCAPM4	=	0x00de
                           0000D8   274 _CCON	=	0x00d8
                           0000F9   275 _CH	=	0x00f9
                           0000E9   276 _CL	=	0x00e9
                           0000D9   277 _CMOD	=	0x00d9
                           0000A8   278 _IEN0	=	0x00a8
                           0000B1   279 _IEN1	=	0x00b1
                           0000B8   280 _IPL0	=	0x00b8
                           0000B7   281 _IPH0	=	0x00b7
                           0000B2   282 _IPL1	=	0x00b2
                           0000B3   283 _IPH1	=	0x00b3
                           0000C0   284 _P4	=	0x00c0
                           0000E8   285 _P5	=	0x00e8
                           0000A6   286 _WDTRST	=	0x00a6
                           0000A7   287 _WDTPRG	=	0x00a7
                           0000A9   288 _SADDR	=	0x00a9
                           0000B9   289 _SADEN	=	0x00b9
                           0000C3   290 _SPCON	=	0x00c3
                           0000C4   291 _SPSTA	=	0x00c4
                           0000C5   292 _SPDAT	=	0x00c5
                           0000C9   293 _T2MOD	=	0x00c9
                           00009B   294 _BDRCON	=	0x009b
                           00009A   295 _BRL	=	0x009a
                           00009C   296 _KBLS	=	0x009c
                           00009D   297 _KBE	=	0x009d
                           00009E   298 _KBF	=	0x009e
                           0000D2   299 _EECON	=	0x00d2
                                    300 ;--------------------------------------------------------
                                    301 ; special function bits
                                    302 ;--------------------------------------------------------
                                    303 	.area RSEG    (ABS,DATA)
      000000                        304 	.org 0x0000
                           000080   305 _P0_0	=	0x0080
                           000081   306 _P0_1	=	0x0081
                           000082   307 _P0_2	=	0x0082
                           000083   308 _P0_3	=	0x0083
                           000084   309 _P0_4	=	0x0084
                           000085   310 _P0_5	=	0x0085
                           000086   311 _P0_6	=	0x0086
                           000087   312 _P0_7	=	0x0087
                           000088   313 _IT0	=	0x0088
                           000089   314 _IE0	=	0x0089
                           00008A   315 _IT1	=	0x008a
                           00008B   316 _IE1	=	0x008b
                           00008C   317 _TR0	=	0x008c
                           00008D   318 _TF0	=	0x008d
                           00008E   319 _TR1	=	0x008e
                           00008F   320 _TF1	=	0x008f
                           000090   321 _P1_0	=	0x0090
                           000091   322 _P1_1	=	0x0091
                           000092   323 _P1_2	=	0x0092
                           000093   324 _P1_3	=	0x0093
                           000094   325 _P1_4	=	0x0094
                           000095   326 _P1_5	=	0x0095
                           000096   327 _P1_6	=	0x0096
                           000097   328 _P1_7	=	0x0097
                           000098   329 _RI	=	0x0098
                           000099   330 _TI	=	0x0099
                           00009A   331 _RB8	=	0x009a
                           00009B   332 _TB8	=	0x009b
                           00009C   333 _REN	=	0x009c
                           00009D   334 _SM2	=	0x009d
                           00009E   335 _SM1	=	0x009e
                           00009F   336 _SM0	=	0x009f
                           0000A0   337 _P2_0	=	0x00a0
                           0000A1   338 _P2_1	=	0x00a1
                           0000A2   339 _P2_2	=	0x00a2
                           0000A3   340 _P2_3	=	0x00a3
                           0000A4   341 _P2_4	=	0x00a4
                           0000A5   342 _P2_5	=	0x00a5
                           0000A6   343 _P2_6	=	0x00a6
                           0000A7   344 _P2_7	=	0x00a7
                           0000A8   345 _EX0	=	0x00a8
                           0000A9   346 _ET0	=	0x00a9
                           0000AA   347 _EX1	=	0x00aa
                           0000AB   348 _ET1	=	0x00ab
                           0000AC   349 _ES	=	0x00ac
                           0000AF   350 _EA	=	0x00af
                           0000B0   351 _P3_0	=	0x00b0
                           0000B1   352 _P3_1	=	0x00b1
                           0000B2   353 _P3_2	=	0x00b2
                           0000B3   354 _P3_3	=	0x00b3
                           0000B4   355 _P3_4	=	0x00b4
                           0000B5   356 _P3_5	=	0x00b5
                           0000B6   357 _P3_6	=	0x00b6
                           0000B7   358 _P3_7	=	0x00b7
                           0000B0   359 _RXD	=	0x00b0
                           0000B1   360 _TXD	=	0x00b1
                           0000B2   361 _INT0	=	0x00b2
                           0000B3   362 _INT1	=	0x00b3
                           0000B4   363 _T0	=	0x00b4
                           0000B5   364 _T1	=	0x00b5
                           0000B6   365 _WR	=	0x00b6
                           0000B7   366 _RD	=	0x00b7
                           0000B8   367 _PX0	=	0x00b8
                           0000B9   368 _PT0	=	0x00b9
                           0000BA   369 _PX1	=	0x00ba
                           0000BB   370 _PT1	=	0x00bb
                           0000BC   371 _PS	=	0x00bc
                           0000D0   372 _P	=	0x00d0
                           0000D1   373 _F1	=	0x00d1
                           0000D2   374 _OV	=	0x00d2
                           0000D3   375 _RS0	=	0x00d3
                           0000D4   376 _RS1	=	0x00d4
                           0000D5   377 _F0	=	0x00d5
                           0000D6   378 _AC	=	0x00d6
                           0000D7   379 _CY	=	0x00d7
                           0000AD   380 _ET2	=	0x00ad
                           0000BD   381 _PT2	=	0x00bd
                           0000C8   382 _T2CON_0	=	0x00c8
                           0000C9   383 _T2CON_1	=	0x00c9
                           0000CA   384 _T2CON_2	=	0x00ca
                           0000CB   385 _T2CON_3	=	0x00cb
                           0000CC   386 _T2CON_4	=	0x00cc
                           0000CD   387 _T2CON_5	=	0x00cd
                           0000CE   388 _T2CON_6	=	0x00ce
                           0000CF   389 _T2CON_7	=	0x00cf
                           0000C8   390 _CP_RL2	=	0x00c8
                           0000C9   391 _C_T2	=	0x00c9
                           0000CA   392 _TR2	=	0x00ca
                           0000CB   393 _EXEN2	=	0x00cb
                           0000CC   394 _TCLK	=	0x00cc
                           0000CD   395 _RCLK	=	0x00cd
                           0000CE   396 _EXF2	=	0x00ce
                           0000CF   397 _TF2	=	0x00cf
                           0000DF   398 _CF	=	0x00df
                           0000DE   399 _CR	=	0x00de
                           0000DC   400 _CCF4	=	0x00dc
                           0000DB   401 _CCF3	=	0x00db
                           0000DA   402 _CCF2	=	0x00da
                           0000D9   403 _CCF1	=	0x00d9
                           0000D8   404 _CCF0	=	0x00d8
                           0000AE   405 _EC	=	0x00ae
                           0000BE   406 _PPCL	=	0x00be
                           0000BD   407 _PT2L	=	0x00bd
                           0000BC   408 _PSL	=	0x00bc
                           0000BB   409 _PT1L	=	0x00bb
                           0000BA   410 _PX1L	=	0x00ba
                           0000B9   411 _PT0L	=	0x00b9
                           0000B8   412 _PX0L	=	0x00b8
                           0000C0   413 _P4_0	=	0x00c0
                           0000C1   414 _P4_1	=	0x00c1
                           0000C2   415 _P4_2	=	0x00c2
                           0000C3   416 _P4_3	=	0x00c3
                           0000C4   417 _P4_4	=	0x00c4
                           0000C5   418 _P4_5	=	0x00c5
                           0000C6   419 _P4_6	=	0x00c6
                           0000C7   420 _P4_7	=	0x00c7
                           0000E8   421 _P5_0	=	0x00e8
                           0000E9   422 _P5_1	=	0x00e9
                           0000EA   423 _P5_2	=	0x00ea
                           0000EB   424 _P5_3	=	0x00eb
                           0000EC   425 _P5_4	=	0x00ec
                           0000ED   426 _P5_5	=	0x00ed
                           0000EE   427 _P5_6	=	0x00ee
                           0000EF   428 _P5_7	=	0x00ef
                                    429 ;--------------------------------------------------------
                                    430 ; overlayable register banks
                                    431 ;--------------------------------------------------------
                                    432 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        433 	.ds 8
                                    434 ;--------------------------------------------------------
                                    435 ; overlayable bit register bank
                                    436 ;--------------------------------------------------------
                                    437 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        438 bits:
      000020                        439 	.ds 1
                           008000   440 	b0 = bits[0]
                           008100   441 	b1 = bits[1]
                           008200   442 	b2 = bits[2]
                           008300   443 	b3 = bits[3]
                           008400   444 	b4 = bits[4]
                           008500   445 	b5 = bits[5]
                           008600   446 	b6 = bits[6]
                           008700   447 	b7 = bits[7]
                                    448 ;--------------------------------------------------------
                                    449 ; internal ram data
                                    450 ;--------------------------------------------------------
                                    451 	.area DSEG    (DATA)
                                    452 ;--------------------------------------------------------
                                    453 ; overlayable items in internal ram 
                                    454 ;--------------------------------------------------------
                                    455 ;--------------------------------------------------------
                                    456 ; Stack segment in internal ram 
                                    457 ;--------------------------------------------------------
                                    458 	.area	SSEG
      000021                        459 __start__stack:
      000021                        460 	.ds	1
                                    461 
                                    462 ;--------------------------------------------------------
                                    463 ; indirectly addressable internal ram data
                                    464 ;--------------------------------------------------------
                                    465 	.area ISEG    (DATA)
                                    466 ;--------------------------------------------------------
                                    467 ; absolute internal ram data
                                    468 ;--------------------------------------------------------
                                    469 	.area IABS    (ABS,DATA)
                                    470 	.area IABS    (ABS,DATA)
                                    471 ;--------------------------------------------------------
                                    472 ; bit data
                                    473 ;--------------------------------------------------------
                                    474 	.area BSEG    (BIT)
                                    475 ;--------------------------------------------------------
                                    476 ; paged external ram data
                                    477 ;--------------------------------------------------------
                                    478 	.area PSEG    (PAG,XDATA)
                                    479 ;--------------------------------------------------------
                                    480 ; external ram data
                                    481 ;--------------------------------------------------------
                                    482 	.area XSEG    (XDATA)
      000400                        483 _putchar_charToSend_65536_21:
      000400                        484 	.ds 2
      000402                        485 _pcf8574_read_pin_pin_65536_35:
      000402                        486 	.ds 1
      000403                        487 _pcf8574_write_port_value_65536_37:
      000403                        488 	.ds 1
      000404                        489 _pcf8574_set_pin_PARM_2:
      000404                        490 	.ds 1
      000405                        491 _pcf8574_set_pin_pin_65536_39:
      000405                        492 	.ds 1
      000406                        493 _pcf8574_set_pin_port_state_65536_40:
      000406                        494 	.ds 1
      000407                        495 _i2c_write_data_65536_43:
      000407                        496 	.ds 1
      000408                        497 _i2c_read_ACK_65536_48:
      000408                        498 	.ds 2
      00040A                        499 _i2c_read_buff_65536_49:
      00040A                        500 	.ds 1
                                    501 ;--------------------------------------------------------
                                    502 ; absolute external ram data
                                    503 ;--------------------------------------------------------
                                    504 	.area XABS    (ABS,XDATA)
                                    505 ;--------------------------------------------------------
                                    506 ; external initialized ram data
                                    507 ;--------------------------------------------------------
                                    508 	.area XISEG   (XDATA)
                                    509 	.area HOME    (CODE)
                                    510 	.area GSINIT0 (CODE)
                                    511 	.area GSINIT1 (CODE)
                                    512 	.area GSINIT2 (CODE)
                                    513 	.area GSINIT3 (CODE)
                                    514 	.area GSINIT4 (CODE)
                                    515 	.area GSINIT5 (CODE)
                                    516 	.area GSINIT  (CODE)
                                    517 	.area GSFINAL (CODE)
                                    518 	.area CSEG    (CODE)
                                    519 ;--------------------------------------------------------
                                    520 ; interrupt vector 
                                    521 ;--------------------------------------------------------
                                    522 	.area HOME    (CODE)
      002000                        523 __interrupt_vect:
      002000 02 20 09         [24]  524 	ljmp	__sdcc_gsinit_startup
      002003 02 20 92         [24]  525 	ljmp	_external_ISR0
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
      002062 02 20 06         [24]  540 	ljmp	__sdcc_program_startup
                                    541 ;--------------------------------------------------------
                                    542 ; Home
                                    543 ;--------------------------------------------------------
                                    544 	.area HOME    (CODE)
                                    545 	.area HOME    (CODE)
      002006                        546 __sdcc_program_startup:
      002006 02 20 F5         [24]  547 	ljmp	_main
                                    548 ;	return from main will return to caller
                                    549 ;--------------------------------------------------------
                                    550 ; code
                                    551 ;--------------------------------------------------------
                                    552 	.area CSEG    (CODE)
                                    553 ;------------------------------------------------------------
                                    554 ;Allocation info for local variables in function 'putchar'
                                    555 ;------------------------------------------------------------
                                    556 ;charToSend                Allocated with name '_putchar_charToSend_65536_21'
                                    557 ;------------------------------------------------------------
                                    558 ;	io_expander.c:38: int putchar(int charToSend) {
                                    559 ;	-----------------------------------------
                                    560 ;	 function putchar
                                    561 ;	-----------------------------------------
      002065                        562 _putchar:
                           000007   563 	ar7 = 0x07
                           000006   564 	ar6 = 0x06
                           000005   565 	ar5 = 0x05
                           000004   566 	ar4 = 0x04
                           000003   567 	ar3 = 0x03
                           000002   568 	ar2 = 0x02
                           000001   569 	ar1 = 0x01
                           000000   570 	ar0 = 0x00
      002065 AF 83            [24]  571 	mov	r7,dph
      002067 E5 82            [12]  572 	mov	a,dpl
      002069 90 04 00         [24]  573 	mov	dptr,#_putchar_charToSend_65536_21
      00206C F0               [24]  574 	movx	@dptr,a
      00206D EF               [12]  575 	mov	a,r7
      00206E A3               [24]  576 	inc	dptr
      00206F F0               [24]  577 	movx	@dptr,a
                                    578 ;	io_expander.c:39: SBUF = charToSend;       /* Load character into serial buffer */
      002070 90 04 00         [24]  579 	mov	dptr,#_putchar_charToSend_65536_21
      002073 E0               [24]  580 	movx	a,@dptr
      002074 FE               [12]  581 	mov	r6,a
      002075 A3               [24]  582 	inc	dptr
      002076 E0               [24]  583 	movx	a,@dptr
      002077 FF               [12]  584 	mov	r7,a
      002078 8E 99            [24]  585 	mov	_SBUF,r6
                                    586 ;	io_expander.c:40: while (!TI);             /* Wait for transmission completion */
      00207A                        587 00101$:
                                    588 ;	io_expander.c:41: TI = 0;                  /* Clear transmission flag */
                                    589 ;	assignBit
      00207A 10 99 02         [24]  590 	jbc	_TI,00114$
      00207D 80 FB            [24]  591 	sjmp	00101$
      00207F                        592 00114$:
                                    593 ;	io_expander.c:42: return charToSend;
      00207F 8E 82            [24]  594 	mov	dpl,r6
      002081 8F 83            [24]  595 	mov	dph,r7
                                    596 ;	io_expander.c:43: }
      002083 22               [24]  597 	ret
                                    598 ;------------------------------------------------------------
                                    599 ;Allocation info for local variables in function 'getchar'
                                    600 ;------------------------------------------------------------
                                    601 ;	io_expander.c:49: int getchar(void) {
                                    602 ;	-----------------------------------------
                                    603 ;	 function getchar
                                    604 ;	-----------------------------------------
      002084                        605 _getchar:
                                    606 ;	io_expander.c:50: while (!RI);             /* Wait for reception completion */
      002084                        607 00101$:
                                    608 ;	io_expander.c:51: RI = 0;                  /* Clear reception flag */
                                    609 ;	assignBit
      002084 10 98 02         [24]  610 	jbc	_RI,00114$
      002087 80 FB            [24]  611 	sjmp	00101$
      002089                        612 00114$:
                                    613 ;	io_expander.c:52: return SBUF;             /* Return received character */
      002089 AE 99            [24]  614 	mov	r6,_SBUF
      00208B 7F 00            [12]  615 	mov	r7,#0x00
      00208D 8E 82            [24]  616 	mov	dpl,r6
      00208F 8F 83            [24]  617 	mov	dph,r7
                                    618 ;	io_expander.c:53: }
      002091 22               [24]  619 	ret
                                    620 ;------------------------------------------------------------
                                    621 ;Allocation info for local variables in function 'external_ISR0'
                                    622 ;------------------------------------------------------------
                                    623 ;data                      Allocated with name '_external_ISR0_data_65536_27'
                                    624 ;------------------------------------------------------------
                                    625 ;	io_expander.c:56: void external_ISR0(void) __interrupt (0)
                                    626 ;	-----------------------------------------
                                    627 ;	 function external_ISR0
                                    628 ;	-----------------------------------------
      002092                        629 _external_ISR0:
      002092 C0 20            [24]  630 	push	bits
      002094 C0 E0            [24]  631 	push	acc
      002096 C0 F0            [24]  632 	push	b
      002098 C0 82            [24]  633 	push	dpl
      00209A C0 83            [24]  634 	push	dph
      00209C C0 07            [24]  635 	push	(0+7)
      00209E C0 06            [24]  636 	push	(0+6)
      0020A0 C0 05            [24]  637 	push	(0+5)
      0020A2 C0 04            [24]  638 	push	(0+4)
      0020A4 C0 03            [24]  639 	push	(0+3)
      0020A6 C0 02            [24]  640 	push	(0+2)
      0020A8 C0 01            [24]  641 	push	(0+1)
      0020AA C0 00            [24]  642 	push	(0+0)
      0020AC C0 D0            [24]  643 	push	psw
      0020AE 75 D0 00         [24]  644 	mov	psw,#0x00
                                    645 ;	io_expander.c:61: data=pcf8574_read_pin(0);
      0020B1 75 82 00         [24]  646 	mov	dpl,#0x00
      0020B4 12 21 EE         [24]  647 	lcall	_pcf8574_read_pin
                                    648 ;	io_expander.c:63: pcf8574_set_pin(7,1);
      0020B7 90 04 04         [24]  649 	mov	dptr,#_pcf8574_set_pin_PARM_2
      0020BA 74 01            [12]  650 	mov	a,#0x01
      0020BC F0               [24]  651 	movx	@dptr,a
      0020BD 75 82 07         [24]  652 	mov	dpl,#0x07
      0020C0 12 22 2A         [24]  653 	lcall	_pcf8574_set_pin
                                    654 ;	io_expander.c:64: printf("isr\n\r");
      0020C3 74 50            [12]  655 	mov	a,#___str_0
      0020C5 C0 E0            [24]  656 	push	acc
      0020C7 74 2E            [12]  657 	mov	a,#(___str_0 >> 8)
      0020C9 C0 E0            [24]  658 	push	acc
      0020CB 74 80            [12]  659 	mov	a,#0x80
      0020CD C0 E0            [24]  660 	push	acc
      0020CF 12 23 EE         [24]  661 	lcall	_printf
      0020D2 15 81            [12]  662 	dec	sp
      0020D4 15 81            [12]  663 	dec	sp
      0020D6 15 81            [12]  664 	dec	sp
                                    665 ;	io_expander.c:66: }
      0020D8 D0 D0            [24]  666 	pop	psw
      0020DA D0 00            [24]  667 	pop	(0+0)
      0020DC D0 01            [24]  668 	pop	(0+1)
      0020DE D0 02            [24]  669 	pop	(0+2)
      0020E0 D0 03            [24]  670 	pop	(0+3)
      0020E2 D0 04            [24]  671 	pop	(0+4)
      0020E4 D0 05            [24]  672 	pop	(0+5)
      0020E6 D0 06            [24]  673 	pop	(0+6)
      0020E8 D0 07            [24]  674 	pop	(0+7)
      0020EA D0 83            [24]  675 	pop	dph
      0020EC D0 82            [24]  676 	pop	dpl
      0020EE D0 F0            [24]  677 	pop	b
      0020F0 D0 E0            [24]  678 	pop	acc
      0020F2 D0 20            [24]  679 	pop	bits
      0020F4 32               [24]  680 	reti
                                    681 ;------------------------------------------------------------
                                    682 ;Allocation info for local variables in function 'main'
                                    683 ;------------------------------------------------------------
                                    684 ;result                    Allocated with name '_main_result_65537_29'
                                    685 ;------------------------------------------------------------
                                    686 ;	io_expander.c:67: int main()
                                    687 ;	-----------------------------------------
                                    688 ;	 function main
                                    689 ;	-----------------------------------------
      0020F5                        690 _main:
                                    691 ;	io_expander.c:69: P1 &= ~(1<<3);  // Set P1.3 as output
      0020F5 53 90 F7         [24]  692 	anl	_P1,#0xf7
                                    693 ;	io_expander.c:70: P1 &= ~(1<<4);  // Set P1.4 as output
      0020F8 53 90 EF         [24]  694 	anl	_P1,#0xef
                                    695 ;	io_expander.c:72: printf("IO EXPANDER PROGRAM\n\r");
      0020FB 74 56            [12]  696 	mov	a,#___str_1
      0020FD C0 E0            [24]  697 	push	acc
      0020FF 74 2E            [12]  698 	mov	a,#(___str_1 >> 8)
      002101 C0 E0            [24]  699 	push	acc
      002103 74 80            [12]  700 	mov	a,#0x80
      002105 C0 E0            [24]  701 	push	acc
      002107 12 23 EE         [24]  702 	lcall	_printf
      00210A 15 81            [12]  703 	dec	sp
      00210C 15 81            [12]  704 	dec	sp
      00210E 15 81            [12]  705 	dec	sp
                                    706 ;	io_expander.c:74: enable_interrupt0();
      002110 12 21 CC         [24]  707 	lcall	_enable_interrupt0
                                    708 ;	io_expander.c:76: i2c_start();
      002113 12 23 67         [24]  709 	lcall	_i2c_start
                                    710 ;	io_expander.c:77: i2c_write(PCF8574_I2C_WRITE_ADDRESS);
      002116 75 82 70         [24]  711 	mov	dpl,#0x70
      002119 12 22 7A         [24]  712 	lcall	_i2c_write
                                    713 ;	io_expander.c:78: i2c_write(0xFF);
      00211C 75 82 FF         [24]  714 	mov	dpl,#0xff
      00211F 12 22 7A         [24]  715 	lcall	_i2c_write
                                    716 ;	io_expander.c:80: i2c_stop();
      002122 12 23 7C         [24]  717 	lcall	_i2c_stop
                                    718 ;	io_expander.c:82: printf("IO expander initialized\n\r");
      002125 74 6C            [12]  719 	mov	a,#___str_2
      002127 C0 E0            [24]  720 	push	acc
      002129 74 2E            [12]  721 	mov	a,#(___str_2 >> 8)
      00212B C0 E0            [24]  722 	push	acc
      00212D 74 80            [12]  723 	mov	a,#0x80
      00212F C0 E0            [24]  724 	push	acc
      002131 12 23 EE         [24]  725 	lcall	_printf
      002134 15 81            [12]  726 	dec	sp
      002136 15 81            [12]  727 	dec	sp
      002138 15 81            [12]  728 	dec	sp
                                    729 ;	io_expander.c:83: int result = pcf8574_read_pin(0);
      00213A 75 82 00         [24]  730 	mov	dpl,#0x00
      00213D 12 21 EE         [24]  731 	lcall	_pcf8574_read_pin
      002140 AF 82            [24]  732 	mov	r7,dpl
      002142 7E 00            [12]  733 	mov	r6,#0x00
                                    734 ;	io_expander.c:84: printf("port 0 pin %d\n\r", result);
      002144 C0 07            [24]  735 	push	ar7
      002146 C0 06            [24]  736 	push	ar6
      002148 74 86            [12]  737 	mov	a,#___str_3
      00214A C0 E0            [24]  738 	push	acc
      00214C 74 2E            [12]  739 	mov	a,#(___str_3 >> 8)
      00214E C0 E0            [24]  740 	push	acc
      002150 74 80            [12]  741 	mov	a,#0x80
      002152 C0 E0            [24]  742 	push	acc
      002154 12 23 EE         [24]  743 	lcall	_printf
      002157 E5 81            [12]  744 	mov	a,sp
      002159 24 FB            [12]  745 	add	a,#0xfb
      00215B F5 81            [12]  746 	mov	sp,a
                                    747 ;	io_expander.c:85: pcf8574_set_pin(1,1);
      00215D 90 04 04         [24]  748 	mov	dptr,#_pcf8574_set_pin_PARM_2
      002160 74 01            [12]  749 	mov	a,#0x01
      002162 F0               [24]  750 	movx	@dptr,a
      002163 75 82 01         [24]  751 	mov	dpl,#0x01
      002166 12 22 2A         [24]  752 	lcall	_pcf8574_set_pin
                                    753 ;	io_expander.c:86: pcf8574_set_pin(2,1);
      002169 90 04 04         [24]  754 	mov	dptr,#_pcf8574_set_pin_PARM_2
      00216C 74 01            [12]  755 	mov	a,#0x01
      00216E F0               [24]  756 	movx	@dptr,a
      00216F 75 82 02         [24]  757 	mov	dpl,#0x02
      002172 12 22 2A         [24]  758 	lcall	_pcf8574_set_pin
                                    759 ;	io_expander.c:87: pcf8574_set_pin(3,1);
      002175 90 04 04         [24]  760 	mov	dptr,#_pcf8574_set_pin_PARM_2
      002178 74 01            [12]  761 	mov	a,#0x01
      00217A F0               [24]  762 	movx	@dptr,a
      00217B 75 82 03         [24]  763 	mov	dpl,#0x03
      00217E 12 22 2A         [24]  764 	lcall	_pcf8574_set_pin
                                    765 ;	io_expander.c:88: pcf8574_set_pin(4,1);
      002181 90 04 04         [24]  766 	mov	dptr,#_pcf8574_set_pin_PARM_2
      002184 74 01            [12]  767 	mov	a,#0x01
      002186 F0               [24]  768 	movx	@dptr,a
      002187 75 82 04         [24]  769 	mov	dpl,#0x04
      00218A 12 22 2A         [24]  770 	lcall	_pcf8574_set_pin
                                    771 ;	io_expander.c:89: pcf8574_set_pin(5,0);
      00218D 90 04 04         [24]  772 	mov	dptr,#_pcf8574_set_pin_PARM_2
      002190 E4               [12]  773 	clr	a
      002191 F0               [24]  774 	movx	@dptr,a
      002192 75 82 05         [24]  775 	mov	dpl,#0x05
      002195 12 22 2A         [24]  776 	lcall	_pcf8574_set_pin
                                    777 ;	io_expander.c:91: while(1)
      002198                        778 00102$:
                                    779 ;	io_expander.c:93: printf("W\n\r");
      002198 74 96            [12]  780 	mov	a,#___str_4
      00219A C0 E0            [24]  781 	push	acc
      00219C 74 2E            [12]  782 	mov	a,#(___str_4 >> 8)
      00219E C0 E0            [24]  783 	push	acc
      0021A0 74 80            [12]  784 	mov	a,#0x80
      0021A2 C0 E0            [24]  785 	push	acc
      0021A4 12 23 EE         [24]  786 	lcall	_printf
      0021A7 15 81            [12]  787 	dec	sp
      0021A9 15 81            [12]  788 	dec	sp
      0021AB 15 81            [12]  789 	dec	sp
                                    790 ;	io_expander.c:94: pcf8574_set_pin(5,0);
      0021AD 90 04 04         [24]  791 	mov	dptr,#_pcf8574_set_pin_PARM_2
      0021B0 E4               [12]  792 	clr	a
      0021B1 F0               [24]  793 	movx	@dptr,a
      0021B2 75 82 05         [24]  794 	mov	dpl,#0x05
      0021B5 12 22 2A         [24]  795 	lcall	_pcf8574_set_pin
                                    796 ;	io_expander.c:95: i2c_delay();
      0021B8 12 23 89         [24]  797 	lcall	_i2c_delay
                                    798 ;	io_expander.c:96: pcf8574_set_pin(5,1);
      0021BB 90 04 04         [24]  799 	mov	dptr,#_pcf8574_set_pin_PARM_2
      0021BE 74 01            [12]  800 	mov	a,#0x01
      0021C0 F0               [24]  801 	movx	@dptr,a
      0021C1 75 82 05         [24]  802 	mov	dpl,#0x05
      0021C4 12 22 2A         [24]  803 	lcall	_pcf8574_set_pin
                                    804 ;	io_expander.c:97: i2c_delay();
      0021C7 12 23 89         [24]  805 	lcall	_i2c_delay
                                    806 ;	io_expander.c:120: }
      0021CA 80 CC            [24]  807 	sjmp	00102$
                                    808 ;------------------------------------------------------------
                                    809 ;Allocation info for local variables in function 'enable_interrupt0'
                                    810 ;------------------------------------------------------------
                                    811 ;	io_expander.c:124: void enable_interrupt0(void)
                                    812 ;	-----------------------------------------
                                    813 ;	 function enable_interrupt0
                                    814 ;	-----------------------------------------
      0021CC                        815 _enable_interrupt0:
                                    816 ;	io_expander.c:127: IT0 = 1;           // Set INT0 to be edge-triggered
                                    817 ;	assignBit
      0021CC D2 88            [12]  818 	setb	_IT0
                                    819 ;	io_expander.c:128: EX0 = 1;          // Enable INT0 interrupt
                                    820 ;	assignBit
      0021CE D2 A8            [12]  821 	setb	_EX0
                                    822 ;	io_expander.c:129: EA = 1;           // Enable global interrupts
                                    823 ;	assignBit
      0021D0 D2 AF            [12]  824 	setb	_EA
                                    825 ;	io_expander.c:130: }
      0021D2 22               [24]  826 	ret
                                    827 ;------------------------------------------------------------
                                    828 ;Allocation info for local variables in function 'pcf8574_read_port'
                                    829 ;------------------------------------------------------------
                                    830 ;data                      Allocated with name '_pcf8574_read_port_data_65536_34'
                                    831 ;------------------------------------------------------------
                                    832 ;	io_expander.c:132: uint8_t pcf8574_read_port(void) {
                                    833 ;	-----------------------------------------
                                    834 ;	 function pcf8574_read_port
                                    835 ;	-----------------------------------------
      0021D3                        836 _pcf8574_read_port:
                                    837 ;	io_expander.c:134: i2c_start();
      0021D3 12 23 67         [24]  838 	lcall	_i2c_start
                                    839 ;	io_expander.c:135: i2c_write(PCF8574_I2C_READ_ADDRESS);
      0021D6 75 82 71         [24]  840 	mov	dpl,#0x71
      0021D9 12 22 7A         [24]  841 	lcall	_i2c_write
                                    842 ;	io_expander.c:136: data = i2c_read(0);
      0021DC 90 00 00         [24]  843 	mov	dptr,#0x0000
      0021DF 12 22 E2         [24]  844 	lcall	_i2c_read
      0021E2 AE 82            [24]  845 	mov	r6,dpl
                                    846 ;	io_expander.c:137: i2c_stop();
      0021E4 C0 06            [24]  847 	push	ar6
      0021E6 12 23 7C         [24]  848 	lcall	_i2c_stop
      0021E9 D0 06            [24]  849 	pop	ar6
                                    850 ;	io_expander.c:138: return data;
      0021EB 8E 82            [24]  851 	mov	dpl,r6
                                    852 ;	io_expander.c:139: }
      0021ED 22               [24]  853 	ret
                                    854 ;------------------------------------------------------------
                                    855 ;Allocation info for local variables in function 'pcf8574_read_pin'
                                    856 ;------------------------------------------------------------
                                    857 ;pin                       Allocated with name '_pcf8574_read_pin_pin_65536_35'
                                    858 ;port_state                Allocated with name '_pcf8574_read_pin_port_state_65536_36'
                                    859 ;------------------------------------------------------------
                                    860 ;	io_expander.c:141: uint8_t pcf8574_read_pin(uint8_t pin) {
                                    861 ;	-----------------------------------------
                                    862 ;	 function pcf8574_read_pin
                                    863 ;	-----------------------------------------
      0021EE                        864 _pcf8574_read_pin:
      0021EE E5 82            [12]  865 	mov	a,dpl
      0021F0 90 04 02         [24]  866 	mov	dptr,#_pcf8574_read_pin_pin_65536_35
      0021F3 F0               [24]  867 	movx	@dptr,a
                                    868 ;	io_expander.c:142: uint8_t port_state = pcf8574_read_port();
      0021F4 12 21 D3         [24]  869 	lcall	_pcf8574_read_port
      0021F7 AF 82            [24]  870 	mov	r7,dpl
                                    871 ;	io_expander.c:143: return (port_state >> pin) & 0x01;
      0021F9 90 04 02         [24]  872 	mov	dptr,#_pcf8574_read_pin_pin_65536_35
      0021FC E0               [24]  873 	movx	a,@dptr
      0021FD FE               [12]  874 	mov	r6,a
      0021FE 8E F0            [24]  875 	mov	b,r6
      002200 05 F0            [12]  876 	inc	b
      002202 EF               [12]  877 	mov	a,r7
      002203 80 02            [24]  878 	sjmp	00104$
      002205                        879 00103$:
      002205 C3               [12]  880 	clr	c
      002206 13               [12]  881 	rrc	a
      002207                        882 00104$:
      002207 D5 F0 FB         [24]  883 	djnz	b,00103$
      00220A 54 01            [12]  884 	anl	a,#0x01
                                    885 ;	io_expander.c:144: }
      00220C F5 82            [12]  886 	mov	dpl,a
      00220E 22               [24]  887 	ret
                                    888 ;------------------------------------------------------------
                                    889 ;Allocation info for local variables in function 'pcf8574_write_port'
                                    890 ;------------------------------------------------------------
                                    891 ;value                     Allocated with name '_pcf8574_write_port_value_65536_37'
                                    892 ;------------------------------------------------------------
                                    893 ;	io_expander.c:146: void pcf8574_write_port(uint8_t value)
                                    894 ;	-----------------------------------------
                                    895 ;	 function pcf8574_write_port
                                    896 ;	-----------------------------------------
      00220F                        897 _pcf8574_write_port:
      00220F E5 82            [12]  898 	mov	a,dpl
      002211 90 04 03         [24]  899 	mov	dptr,#_pcf8574_write_port_value_65536_37
      002214 F0               [24]  900 	movx	@dptr,a
                                    901 ;	io_expander.c:148: i2c_start();
      002215 12 23 67         [24]  902 	lcall	_i2c_start
                                    903 ;	io_expander.c:149: i2c_write(PCF8574_I2C_WRITE_ADDRESS);
      002218 75 82 70         [24]  904 	mov	dpl,#0x70
      00221B 12 22 7A         [24]  905 	lcall	_i2c_write
                                    906 ;	io_expander.c:150: i2c_write(value);
      00221E 90 04 03         [24]  907 	mov	dptr,#_pcf8574_write_port_value_65536_37
      002221 E0               [24]  908 	movx	a,@dptr
      002222 F5 82            [12]  909 	mov	dpl,a
      002224 12 22 7A         [24]  910 	lcall	_i2c_write
                                    911 ;	io_expander.c:151: i2c_stop();
                                    912 ;	io_expander.c:152: }
      002227 02 23 7C         [24]  913 	ljmp	_i2c_stop
                                    914 ;------------------------------------------------------------
                                    915 ;Allocation info for local variables in function 'pcf8574_set_pin'
                                    916 ;------------------------------------------------------------
                                    917 ;value                     Allocated with name '_pcf8574_set_pin_PARM_2'
                                    918 ;pin                       Allocated with name '_pcf8574_set_pin_pin_65536_39'
                                    919 ;port_state                Allocated with name '_pcf8574_set_pin_port_state_65536_40'
                                    920 ;------------------------------------------------------------
                                    921 ;	io_expander.c:154: void pcf8574_set_pin(uint8_t pin, uint8_t value) {
                                    922 ;	-----------------------------------------
                                    923 ;	 function pcf8574_set_pin
                                    924 ;	-----------------------------------------
      00222A                        925 _pcf8574_set_pin:
      00222A E5 82            [12]  926 	mov	a,dpl
      00222C 90 04 05         [24]  927 	mov	dptr,#_pcf8574_set_pin_pin_65536_39
      00222F F0               [24]  928 	movx	@dptr,a
                                    929 ;	io_expander.c:155: uint8_t port_state = pcf8574_read_port();
      002230 12 21 D3         [24]  930 	lcall	_pcf8574_read_port
      002233 AF 82            [24]  931 	mov	r7,dpl
                                    932 ;	io_expander.c:156: if (value) {
      002235 90 04 04         [24]  933 	mov	dptr,#_pcf8574_set_pin_PARM_2
      002238 E0               [24]  934 	movx	a,@dptr
      002239 60 1D            [24]  935 	jz	00102$
                                    936 ;	io_expander.c:157: port_state |= (1 << pin);  // Set pin high
      00223B 90 04 05         [24]  937 	mov	dptr,#_pcf8574_set_pin_pin_65536_39
      00223E E0               [24]  938 	movx	a,@dptr
      00223F FE               [12]  939 	mov	r6,a
      002240 8E F0            [24]  940 	mov	b,r6
      002242 05 F0            [12]  941 	inc	b
      002244 74 01            [12]  942 	mov	a,#0x01
      002246 80 02            [24]  943 	sjmp	00113$
      002248                        944 00111$:
      002248 25 E0            [12]  945 	add	a,acc
      00224A                        946 00113$:
      00224A D5 F0 FB         [24]  947 	djnz	b,00111$
      00224D FE               [12]  948 	mov	r6,a
      00224E 8F 05            [24]  949 	mov	ar5,r7
      002250 90 04 06         [24]  950 	mov	dptr,#_pcf8574_set_pin_port_state_65536_40
      002253 EE               [12]  951 	mov	a,r6
      002254 4D               [12]  952 	orl	a,r5
      002255 F0               [24]  953 	movx	@dptr,a
      002256 80 19            [24]  954 	sjmp	00103$
      002258                        955 00102$:
                                    956 ;	io_expander.c:159: port_state &= ~(1 << pin); // Set pin low
      002258 90 04 05         [24]  957 	mov	dptr,#_pcf8574_set_pin_pin_65536_39
      00225B E0               [24]  958 	movx	a,@dptr
      00225C FE               [12]  959 	mov	r6,a
      00225D 8E F0            [24]  960 	mov	b,r6
      00225F 05 F0            [12]  961 	inc	b
      002261 74 01            [12]  962 	mov	a,#0x01
      002263 80 02            [24]  963 	sjmp	00116$
      002265                        964 00114$:
      002265 25 E0            [12]  965 	add	a,acc
      002267                        966 00116$:
      002267 D5 F0 FB         [24]  967 	djnz	b,00114$
      00226A F4               [12]  968 	cpl	a
      00226B FE               [12]  969 	mov	r6,a
      00226C 90 04 06         [24]  970 	mov	dptr,#_pcf8574_set_pin_port_state_65536_40
      00226F 5F               [12]  971 	anl	a,r7
      002270 F0               [24]  972 	movx	@dptr,a
      002271                        973 00103$:
                                    974 ;	io_expander.c:161: pcf8574_write_port(port_state);
      002271 90 04 06         [24]  975 	mov	dptr,#_pcf8574_set_pin_port_state_65536_40
      002274 E0               [24]  976 	movx	a,@dptr
      002275 F5 82            [12]  977 	mov	dpl,a
                                    978 ;	io_expander.c:162: }
      002277 02 22 0F         [24]  979 	ljmp	_pcf8574_write_port
                                    980 ;------------------------------------------------------------
                                    981 ;Allocation info for local variables in function 'i2c_write'
                                    982 ;------------------------------------------------------------
                                    983 ;data                      Allocated with name '_i2c_write_data_65536_43'
                                    984 ;i                         Allocated with name '_i2c_write_i_65536_44'
                                    985 ;------------------------------------------------------------
                                    986 ;	io_expander.c:172: int i2c_write(unsigned char data)
                                    987 ;	-----------------------------------------
                                    988 ;	 function i2c_write
                                    989 ;	-----------------------------------------
      00227A                        990 _i2c_write:
      00227A E5 82            [12]  991 	mov	a,dpl
      00227C 90 04 07         [24]  992 	mov	dptr,#_i2c_write_data_65536_43
      00227F F0               [24]  993 	movx	@dptr,a
                                    994 ;	io_expander.c:176: for(i=0;i<=7;i++)
      002280 7E 00            [12]  995 	mov	r6,#0x00
      002282 7F 00            [12]  996 	mov	r7,#0x00
      002284                        997 00104$:
                                    998 ;	io_expander.c:178: SDA = (data & 0x80) ? 1 : 0;    //msb first
      002284 90 04 07         [24]  999 	mov	dptr,#_i2c_write_data_65536_43
      002287 E0               [24] 1000 	movx	a,@dptr
      002288 FD               [12] 1001 	mov	r5,a
      002289 23               [12] 1002 	rl	a
      00228A 54 01            [12] 1003 	anl	a,#0x01
      00228C 24 FF            [12] 1004 	add	a,#0xff
      00228E 92 94            [24] 1005 	mov	_P1_4,c
                                   1006 ;	io_expander.c:179: i2c_delay();        // Setup time for data
      002290 C0 07            [24] 1007 	push	ar7
      002292 C0 06            [24] 1008 	push	ar6
      002294 C0 05            [24] 1009 	push	ar5
      002296 12 23 89         [24] 1010 	lcall	_i2c_delay
                                   1011 ;	io_expander.c:180: SCL=1;
                                   1012 ;	assignBit
      002299 D2 93            [12] 1013 	setb	_P1_3
                                   1014 ;	io_expander.c:181: i2c_delay();        // Hold time for clock
      00229B 12 23 89         [24] 1015 	lcall	_i2c_delay
      00229E D0 05            [24] 1016 	pop	ar5
      0022A0 D0 06            [24] 1017 	pop	ar6
      0022A2 D0 07            [24] 1018 	pop	ar7
                                   1019 ;	io_expander.c:182: SCL=0;
                                   1020 ;	assignBit
      0022A4 C2 93            [12] 1021 	clr	_P1_3
                                   1022 ;	io_expander.c:183: data = data << 1;
      0022A6 ED               [12] 1023 	mov	a,r5
      0022A7 2D               [12] 1024 	add	a,r5
      0022A8 90 04 07         [24] 1025 	mov	dptr,#_i2c_write_data_65536_43
      0022AB F0               [24] 1026 	movx	@dptr,a
                                   1027 ;	io_expander.c:176: for(i=0;i<=7;i++)
      0022AC 0E               [12] 1028 	inc	r6
      0022AD BE 00 01         [24] 1029 	cjne	r6,#0x00,00121$
      0022B0 0F               [12] 1030 	inc	r7
      0022B1                       1031 00121$:
      0022B1 C3               [12] 1032 	clr	c
      0022B2 74 07            [12] 1033 	mov	a,#0x07
      0022B4 9E               [12] 1034 	subb	a,r6
      0022B5 E4               [12] 1035 	clr	a
      0022B6 9F               [12] 1036 	subb	a,r7
      0022B7 50 CB            [24] 1037 	jnc	00104$
                                   1038 ;	io_expander.c:187: SDA = 1;            // Release SDA for slave
                                   1039 ;	assignBit
      0022B9 D2 94            [12] 1040 	setb	_P1_4
                                   1041 ;	io_expander.c:188: SCL = 1;            // 9th clock pulse for ACK
                                   1042 ;	assignBit
      0022BB D2 93            [12] 1043 	setb	_P1_3
                                   1044 ;	io_expander.c:189: i2c_delay();
      0022BD 12 23 89         [24] 1045 	lcall	_i2c_delay
                                   1046 ;	io_expander.c:190: if(SDA == 1)        // If SDA is still high, no ACK received
      0022C0 30 94 19         [24] 1047 	jnb	_P1_4,00103$
                                   1048 ;	io_expander.c:193: printf("ACK DID NOT ARRIVE\n\r");
      0022C3 74 9A            [12] 1049 	mov	a,#___str_5
      0022C5 C0 E0            [24] 1050 	push	acc
      0022C7 74 2E            [12] 1051 	mov	a,#(___str_5 >> 8)
      0022C9 C0 E0            [24] 1052 	push	acc
      0022CB 74 80            [12] 1053 	mov	a,#0x80
      0022CD C0 E0            [24] 1054 	push	acc
      0022CF 12 23 EE         [24] 1055 	lcall	_printf
      0022D2 15 81            [12] 1056 	dec	sp
      0022D4 15 81            [12] 1057 	dec	sp
      0022D6 15 81            [12] 1058 	dec	sp
                                   1059 ;	io_expander.c:194: return 0;       // Error
      0022D8 90 00 00         [24] 1060 	mov	dptr,#0x0000
      0022DB 22               [24] 1061 	ret
      0022DC                       1062 00103$:
                                   1063 ;	io_expander.c:196: SCL = 0;
                                   1064 ;	assignBit
      0022DC C2 93            [12] 1065 	clr	_P1_3
                                   1066 ;	io_expander.c:198: return 1;           // Success
      0022DE 90 00 01         [24] 1067 	mov	dptr,#0x0001
                                   1068 ;	io_expander.c:200: }
      0022E1 22               [24] 1069 	ret
                                   1070 ;------------------------------------------------------------
                                   1071 ;Allocation info for local variables in function 'i2c_read'
                                   1072 ;------------------------------------------------------------
                                   1073 ;ACK                       Allocated with name '_i2c_read_ACK_65536_48'
                                   1074 ;buff                      Allocated with name '_i2c_read_buff_65536_49'
                                   1075 ;i                         Allocated with name '_i2c_read_i_131072_50'
                                   1076 ;------------------------------------------------------------
                                   1077 ;	io_expander.c:210: int i2c_read(int ACK)
                                   1078 ;	-----------------------------------------
                                   1079 ;	 function i2c_read
                                   1080 ;	-----------------------------------------
      0022E2                       1081 _i2c_read:
      0022E2 AF 83            [24] 1082 	mov	r7,dph
      0022E4 E5 82            [12] 1083 	mov	a,dpl
      0022E6 90 04 08         [24] 1084 	mov	dptr,#_i2c_read_ACK_65536_48
      0022E9 F0               [24] 1085 	movx	@dptr,a
      0022EA EF               [12] 1086 	mov	a,r7
      0022EB A3               [24] 1087 	inc	dptr
      0022EC F0               [24] 1088 	movx	@dptr,a
                                   1089 ;	io_expander.c:212: unsigned char buff=0;
      0022ED 90 04 0A         [24] 1090 	mov	dptr,#_i2c_read_buff_65536_49
      0022F0 E4               [12] 1091 	clr	a
      0022F1 F0               [24] 1092 	movx	@dptr,a
                                   1093 ;	io_expander.c:213: SCL = 0;
                                   1094 ;	assignBit
      0022F2 C2 93            [12] 1095 	clr	_P1_3
                                   1096 ;	io_expander.c:214: for(int i=0;i<8;i++)
      0022F4 7E 00            [12] 1097 	mov	r6,#0x00
      0022F6 7F 00            [12] 1098 	mov	r7,#0x00
      0022F8                       1099 00103$:
      0022F8 C3               [12] 1100 	clr	c
      0022F9 EE               [12] 1101 	mov	a,r6
      0022FA 94 08            [12] 1102 	subb	a,#0x08
      0022FC EF               [12] 1103 	mov	a,r7
      0022FD 64 80            [12] 1104 	xrl	a,#0x80
      0022FF 94 80            [12] 1105 	subb	a,#0x80
      002301 50 40            [24] 1106 	jnc	00101$
                                   1107 ;	io_expander.c:216: SCL = 1;
                                   1108 ;	assignBit
      002303 D2 93            [12] 1109 	setb	_P1_3
                                   1110 ;	io_expander.c:217: i2c_delay();
      002305 C0 07            [24] 1111 	push	ar7
      002307 C0 06            [24] 1112 	push	ar6
      002309 12 23 89         [24] 1113 	lcall	_i2c_delay
      00230C D0 06            [24] 1114 	pop	ar6
      00230E D0 07            [24] 1115 	pop	ar7
                                   1116 ;	io_expander.c:218: buff |= (SDA << (7 - i));
      002310 A2 94            [12] 1117 	mov	c,_P1_4
      002312 E4               [12] 1118 	clr	a
      002313 33               [12] 1119 	rlc	a
      002314 FD               [12] 1120 	mov	r5,a
      002315 8E 04            [24] 1121 	mov	ar4,r6
      002317 74 07            [12] 1122 	mov	a,#0x07
      002319 C3               [12] 1123 	clr	c
      00231A 9C               [12] 1124 	subb	a,r4
      00231B FC               [12] 1125 	mov	r4,a
      00231C 8C F0            [24] 1126 	mov	b,r4
      00231E 05 F0            [12] 1127 	inc	b
      002320 ED               [12] 1128 	mov	a,r5
      002321 80 02            [24] 1129 	sjmp	00119$
      002323                       1130 00117$:
      002323 25 E0            [12] 1131 	add	a,acc
      002325                       1132 00119$:
      002325 D5 F0 FB         [24] 1133 	djnz	b,00117$
      002328 FC               [12] 1134 	mov	r4,a
      002329 90 04 0A         [24] 1135 	mov	dptr,#_i2c_read_buff_65536_49
      00232C E0               [24] 1136 	movx	a,@dptr
      00232D 4C               [12] 1137 	orl	a,r4
      00232E F0               [24] 1138 	movx	@dptr,a
                                   1139 ;	io_expander.c:219: i2c_delay();
      00232F C0 07            [24] 1140 	push	ar7
      002331 C0 06            [24] 1141 	push	ar6
      002333 12 23 89         [24] 1142 	lcall	_i2c_delay
      002336 D0 06            [24] 1143 	pop	ar6
      002338 D0 07            [24] 1144 	pop	ar7
                                   1145 ;	io_expander.c:220: SCL=0;
                                   1146 ;	assignBit
      00233A C2 93            [12] 1147 	clr	_P1_3
                                   1148 ;	io_expander.c:214: for(int i=0;i<8;i++)
      00233C 0E               [12] 1149 	inc	r6
      00233D BE 00 B8         [24] 1150 	cjne	r6,#0x00,00103$
      002340 0F               [12] 1151 	inc	r7
      002341 80 B5            [24] 1152 	sjmp	00103$
      002343                       1153 00101$:
                                   1154 ;	io_expander.c:224: SDA = !ACK;         // ACK = 0, NACK = 1
      002343 90 04 08         [24] 1155 	mov	dptr,#_i2c_read_ACK_65536_48
      002346 E0               [24] 1156 	movx	a,@dptr
      002347 FE               [12] 1157 	mov	r6,a
      002348 A3               [24] 1158 	inc	dptr
      002349 E0               [24] 1159 	movx	a,@dptr
      00234A 4E               [12] 1160 	orl	a,r6
      00234B B4 01 00         [24] 1161 	cjne	a,#0x01,00121$
      00234E                       1162 00121$:
      00234E E4               [12] 1163 	clr	a
      00234F 33               [12] 1164 	rlc	a
      002350 24 FF            [12] 1165 	add	a,#0xff
      002352 92 94            [24] 1166 	mov	_P1_4,c
                                   1167 ;	io_expander.c:225: SCL = 1;
                                   1168 ;	assignBit
      002354 D2 93            [12] 1169 	setb	_P1_3
                                   1170 ;	io_expander.c:226: i2c_delay();
      002356 12 23 89         [24] 1171 	lcall	_i2c_delay
                                   1172 ;	io_expander.c:227: SCL = 0;
                                   1173 ;	assignBit
      002359 C2 93            [12] 1174 	clr	_P1_3
                                   1175 ;	io_expander.c:229: return buff;
      00235B 90 04 0A         [24] 1176 	mov	dptr,#_i2c_read_buff_65536_49
      00235E E0               [24] 1177 	movx	a,@dptr
      00235F FF               [12] 1178 	mov	r7,a
      002360 7E 00            [12] 1179 	mov	r6,#0x00
      002362 8F 82            [24] 1180 	mov	dpl,r7
      002364 8E 83            [24] 1181 	mov	dph,r6
                                   1182 ;	io_expander.c:230: }
      002366 22               [24] 1183 	ret
                                   1184 ;------------------------------------------------------------
                                   1185 ;Allocation info for local variables in function 'i2c_start'
                                   1186 ;------------------------------------------------------------
                                   1187 ;	io_expander.c:237: void i2c_start(void)
                                   1188 ;	-----------------------------------------
                                   1189 ;	 function i2c_start
                                   1190 ;	-----------------------------------------
      002367                       1191 _i2c_start:
                                   1192 ;	io_expander.c:239: i2c_delay();
      002367 12 23 89         [24] 1193 	lcall	_i2c_delay
                                   1194 ;	io_expander.c:240: SDA = 1;
                                   1195 ;	assignBit
      00236A D2 94            [12] 1196 	setb	_P1_4
                                   1197 ;	io_expander.c:241: i2c_delay();
      00236C 12 23 89         [24] 1198 	lcall	_i2c_delay
                                   1199 ;	io_expander.c:242: SCL = 1;
                                   1200 ;	assignBit
      00236F D2 93            [12] 1201 	setb	_P1_3
                                   1202 ;	io_expander.c:243: i2c_delay();
      002371 12 23 89         [24] 1203 	lcall	_i2c_delay
                                   1204 ;	io_expander.c:244: SDA = 0;
                                   1205 ;	assignBit
      002374 C2 94            [12] 1206 	clr	_P1_4
                                   1207 ;	io_expander.c:245: i2c_delay();
      002376 12 23 89         [24] 1208 	lcall	_i2c_delay
                                   1209 ;	io_expander.c:246: SCL = 0;
                                   1210 ;	assignBit
      002379 C2 93            [12] 1211 	clr	_P1_3
                                   1212 ;	io_expander.c:247: }
      00237B 22               [24] 1213 	ret
                                   1214 ;------------------------------------------------------------
                                   1215 ;Allocation info for local variables in function 'i2c_stop'
                                   1216 ;------------------------------------------------------------
                                   1217 ;	io_expander.c:254: void i2c_stop(void)
                                   1218 ;	-----------------------------------------
                                   1219 ;	 function i2c_stop
                                   1220 ;	-----------------------------------------
      00237C                       1221 _i2c_stop:
                                   1222 ;	io_expander.c:256: SDA = 0;
                                   1223 ;	assignBit
      00237C C2 94            [12] 1224 	clr	_P1_4
                                   1225 ;	io_expander.c:257: i2c_delay();
      00237E 12 23 89         [24] 1226 	lcall	_i2c_delay
                                   1227 ;	io_expander.c:258: SCL = 1;
                                   1228 ;	assignBit
      002381 D2 93            [12] 1229 	setb	_P1_3
                                   1230 ;	io_expander.c:259: i2c_delay();
      002383 12 23 89         [24] 1231 	lcall	_i2c_delay
                                   1232 ;	io_expander.c:260: SDA = 1; 
                                   1233 ;	assignBit
      002386 D2 94            [12] 1234 	setb	_P1_4
                                   1235 ;	io_expander.c:261: }
      002388 22               [24] 1236 	ret
                                   1237 ;------------------------------------------------------------
                                   1238 ;Allocation info for local variables in function 'i2c_delay'
                                   1239 ;------------------------------------------------------------
                                   1240 ;i                         Allocated with name '_i2c_delay_i_131072_57'
                                   1241 ;------------------------------------------------------------
                                   1242 ;	io_expander.c:270: void i2c_delay() 
                                   1243 ;	-----------------------------------------
                                   1244 ;	 function i2c_delay
                                   1245 ;	-----------------------------------------
      002389                       1246 _i2c_delay:
                                   1247 ;	io_expander.c:272: for(int i = 0; i<500; i++);
      002389 7E 00            [12] 1248 	mov	r6,#0x00
      00238B 7F 00            [12] 1249 	mov	r7,#0x00
      00238D                       1250 00103$:
      00238D C3               [12] 1251 	clr	c
      00238E EE               [12] 1252 	mov	a,r6
      00238F 94 F4            [12] 1253 	subb	a,#0xf4
      002391 EF               [12] 1254 	mov	a,r7
      002392 64 80            [12] 1255 	xrl	a,#0x80
      002394 94 81            [12] 1256 	subb	a,#0x81
      002396 50 07            [24] 1257 	jnc	00105$
      002398 0E               [12] 1258 	inc	r6
      002399 BE 00 F1         [24] 1259 	cjne	r6,#0x00,00103$
      00239C 0F               [12] 1260 	inc	r7
      00239D 80 EE            [24] 1261 	sjmp	00103$
      00239F                       1262 00105$:
                                   1263 ;	io_expander.c:273: }
      00239F 22               [24] 1264 	ret
                                   1265 	.area CSEG    (CODE)
                                   1266 	.area CONST   (CODE)
                                   1267 	.area CONST   (CODE)
      002E50                       1268 ___str_0:
      002E50 69 73 72              1269 	.ascii "isr"
      002E53 0A                    1270 	.db 0x0a
      002E54 0D                    1271 	.db 0x0d
      002E55 00                    1272 	.db 0x00
                                   1273 	.area CSEG    (CODE)
                                   1274 	.area CONST   (CODE)
      002E56                       1275 ___str_1:
      002E56 49 4F 20 45 58 50 41  1276 	.ascii "IO EXPANDER PROGRAM"
             4E 44 45 52 20 50 52
             4F 47 52 41 4D
      002E69 0A                    1277 	.db 0x0a
      002E6A 0D                    1278 	.db 0x0d
      002E6B 00                    1279 	.db 0x00
                                   1280 	.area CSEG    (CODE)
                                   1281 	.area CONST   (CODE)
      002E6C                       1282 ___str_2:
      002E6C 49 4F 20 65 78 70 61  1283 	.ascii "IO expander initialized"
             6E 64 65 72 20 69 6E
             69 74 69 61 6C 69 7A
             65 64
      002E83 0A                    1284 	.db 0x0a
      002E84 0D                    1285 	.db 0x0d
      002E85 00                    1286 	.db 0x00
                                   1287 	.area CSEG    (CODE)
                                   1288 	.area CONST   (CODE)
      002E86                       1289 ___str_3:
      002E86 70 6F 72 74 20 30 20  1290 	.ascii "port 0 pin %d"
             70 69 6E 20 25 64
      002E93 0A                    1291 	.db 0x0a
      002E94 0D                    1292 	.db 0x0d
      002E95 00                    1293 	.db 0x00
                                   1294 	.area CSEG    (CODE)
                                   1295 	.area CONST   (CODE)
      002E96                       1296 ___str_4:
      002E96 57                    1297 	.ascii "W"
      002E97 0A                    1298 	.db 0x0a
      002E98 0D                    1299 	.db 0x0d
      002E99 00                    1300 	.db 0x00
                                   1301 	.area CSEG    (CODE)
                                   1302 	.area CONST   (CODE)
      002E9A                       1303 ___str_5:
      002E9A 41 43 4B 20 44 49 44  1304 	.ascii "ACK DID NOT ARRIVE"
             20 4E 4F 54 20 41 52
             52 49 56 45
      002EAC 0A                    1305 	.db 0x0a
      002EAD 0D                    1306 	.db 0x0d
      002EAE 00                    1307 	.db 0x00
                                   1308 	.area CSEG    (CODE)
                                   1309 	.area XINIT   (CODE)
                                   1310 	.area CABS    (ABS,CODE)
