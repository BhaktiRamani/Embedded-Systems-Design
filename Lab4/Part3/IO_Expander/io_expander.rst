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
      002006 02 20 F6         [24]  547 	ljmp	_main
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
                                    645 ;	io_expander.c:60: data=pcf8574_read_pin(0);
      0020B1 75 82 00         [24]  646 	mov	dpl,#0x00
      0020B4 12 21 D2         [24]  647 	lcall	_pcf8574_read_pin
      0020B7 AF 82            [24]  648 	mov	r7,dpl
                                    649 ;	io_expander.c:62: pcf8574_set_pin(7,data);
      0020B9 90 04 04         [24]  650 	mov	dptr,#_pcf8574_set_pin_PARM_2
      0020BC EF               [12]  651 	mov	a,r7
      0020BD F0               [24]  652 	movx	@dptr,a
      0020BE 75 82 07         [24]  653 	mov	dpl,#0x07
      0020C1 12 22 0E         [24]  654 	lcall	_pcf8574_set_pin
                                    655 ;	io_expander.c:63: printf("isr\n\r");
      0020C4 74 34            [12]  656 	mov	a,#___str_0
      0020C6 C0 E0            [24]  657 	push	acc
      0020C8 74 2E            [12]  658 	mov	a,#(___str_0 >> 8)
      0020CA C0 E0            [24]  659 	push	acc
      0020CC 74 80            [12]  660 	mov	a,#0x80
      0020CE C0 E0            [24]  661 	push	acc
      0020D0 12 23 D2         [24]  662 	lcall	_printf
      0020D3 15 81            [12]  663 	dec	sp
      0020D5 15 81            [12]  664 	dec	sp
      0020D7 15 81            [12]  665 	dec	sp
                                    666 ;	io_expander.c:65: }
      0020D9 D0 D0            [24]  667 	pop	psw
      0020DB D0 00            [24]  668 	pop	(0+0)
      0020DD D0 01            [24]  669 	pop	(0+1)
      0020DF D0 02            [24]  670 	pop	(0+2)
      0020E1 D0 03            [24]  671 	pop	(0+3)
      0020E3 D0 04            [24]  672 	pop	(0+4)
      0020E5 D0 05            [24]  673 	pop	(0+5)
      0020E7 D0 06            [24]  674 	pop	(0+6)
      0020E9 D0 07            [24]  675 	pop	(0+7)
      0020EB D0 83            [24]  676 	pop	dph
      0020ED D0 82            [24]  677 	pop	dpl
      0020EF D0 F0            [24]  678 	pop	b
      0020F1 D0 E0            [24]  679 	pop	acc
      0020F3 D0 20            [24]  680 	pop	bits
      0020F5 32               [24]  681 	reti
                                    682 ;------------------------------------------------------------
                                    683 ;Allocation info for local variables in function 'main'
                                    684 ;------------------------------------------------------------
                                    685 ;result                    Allocated with name '_main_result_65537_29'
                                    686 ;------------------------------------------------------------
                                    687 ;	io_expander.c:66: int main()
                                    688 ;	-----------------------------------------
                                    689 ;	 function main
                                    690 ;	-----------------------------------------
      0020F6                        691 _main:
                                    692 ;	io_expander.c:68: P1 &= ~(1<<3);  // Set P1.3 as output
      0020F6 53 90 F7         [24]  693 	anl	_P1,#0xf7
                                    694 ;	io_expander.c:69: P1 &= ~(1<<4);  // Set P1.4 as output
      0020F9 53 90 EF         [24]  695 	anl	_P1,#0xef
                                    696 ;	io_expander.c:71: printf("IO EXPANDER PROGRAM\n\r");
      0020FC 74 3A            [12]  697 	mov	a,#___str_1
      0020FE C0 E0            [24]  698 	push	acc
      002100 74 2E            [12]  699 	mov	a,#(___str_1 >> 8)
      002102 C0 E0            [24]  700 	push	acc
      002104 74 80            [12]  701 	mov	a,#0x80
      002106 C0 E0            [24]  702 	push	acc
      002108 12 23 D2         [24]  703 	lcall	_printf
      00210B 15 81            [12]  704 	dec	sp
      00210D 15 81            [12]  705 	dec	sp
      00210F 15 81            [12]  706 	dec	sp
                                    707 ;	io_expander.c:73: enable_interrupt0();
      002111 12 21 B0         [24]  708 	lcall	_enable_interrupt0
                                    709 ;	io_expander.c:75: i2c_start();
      002114 12 23 4B         [24]  710 	lcall	_i2c_start
                                    711 ;	io_expander.c:76: i2c_write(PCF8574_I2C_WRITE_ADDRESS);
      002117 75 82 70         [24]  712 	mov	dpl,#0x70
      00211A 12 22 5E         [24]  713 	lcall	_i2c_write
                                    714 ;	io_expander.c:77: i2c_write(0xFF);
      00211D 75 82 FF         [24]  715 	mov	dpl,#0xff
      002120 12 22 5E         [24]  716 	lcall	_i2c_write
                                    717 ;	io_expander.c:79: i2c_stop();
      002123 12 23 60         [24]  718 	lcall	_i2c_stop
                                    719 ;	io_expander.c:81: printf("IO expander initialized\n\r");
      002126 74 50            [12]  720 	mov	a,#___str_2
      002128 C0 E0            [24]  721 	push	acc
      00212A 74 2E            [12]  722 	mov	a,#(___str_2 >> 8)
      00212C C0 E0            [24]  723 	push	acc
      00212E 74 80            [12]  724 	mov	a,#0x80
      002130 C0 E0            [24]  725 	push	acc
      002132 12 23 D2         [24]  726 	lcall	_printf
      002135 15 81            [12]  727 	dec	sp
      002137 15 81            [12]  728 	dec	sp
      002139 15 81            [12]  729 	dec	sp
                                    730 ;	io_expander.c:82: int result = pcf8574_read_pin(0);
      00213B 75 82 00         [24]  731 	mov	dpl,#0x00
      00213E 12 21 D2         [24]  732 	lcall	_pcf8574_read_pin
      002141 AF 82            [24]  733 	mov	r7,dpl
      002143 7E 00            [12]  734 	mov	r6,#0x00
                                    735 ;	io_expander.c:83: printf("port 0 pin %d\n\r", result);
      002145 C0 07            [24]  736 	push	ar7
      002147 C0 06            [24]  737 	push	ar6
      002149 74 6A            [12]  738 	mov	a,#___str_3
      00214B C0 E0            [24]  739 	push	acc
      00214D 74 2E            [12]  740 	mov	a,#(___str_3 >> 8)
      00214F C0 E0            [24]  741 	push	acc
      002151 74 80            [12]  742 	mov	a,#0x80
      002153 C0 E0            [24]  743 	push	acc
      002155 12 23 D2         [24]  744 	lcall	_printf
      002158 E5 81            [12]  745 	mov	a,sp
      00215A 24 FB            [12]  746 	add	a,#0xfb
      00215C F5 81            [12]  747 	mov	sp,a
                                    748 ;	io_expander.c:84: pcf8574_set_pin(1,1);
      00215E 90 04 04         [24]  749 	mov	dptr,#_pcf8574_set_pin_PARM_2
      002161 74 01            [12]  750 	mov	a,#0x01
      002163 F0               [24]  751 	movx	@dptr,a
      002164 75 82 01         [24]  752 	mov	dpl,#0x01
      002167 12 22 0E         [24]  753 	lcall	_pcf8574_set_pin
                                    754 ;	io_expander.c:85: pcf8574_set_pin(2,1);
      00216A 90 04 04         [24]  755 	mov	dptr,#_pcf8574_set_pin_PARM_2
      00216D 74 01            [12]  756 	mov	a,#0x01
      00216F F0               [24]  757 	movx	@dptr,a
      002170 75 82 02         [24]  758 	mov	dpl,#0x02
      002173 12 22 0E         [24]  759 	lcall	_pcf8574_set_pin
                                    760 ;	io_expander.c:86: pcf8574_set_pin(3,1);
      002176 90 04 04         [24]  761 	mov	dptr,#_pcf8574_set_pin_PARM_2
      002179 74 01            [12]  762 	mov	a,#0x01
      00217B F0               [24]  763 	movx	@dptr,a
      00217C 75 82 03         [24]  764 	mov	dpl,#0x03
      00217F 12 22 0E         [24]  765 	lcall	_pcf8574_set_pin
                                    766 ;	io_expander.c:87: pcf8574_set_pin(4,1);
      002182 90 04 04         [24]  767 	mov	dptr,#_pcf8574_set_pin_PARM_2
      002185 74 01            [12]  768 	mov	a,#0x01
      002187 F0               [24]  769 	movx	@dptr,a
      002188 75 82 04         [24]  770 	mov	dpl,#0x04
      00218B 12 22 0E         [24]  771 	lcall	_pcf8574_set_pin
                                    772 ;	io_expander.c:88: pcf8574_set_pin(5,0);
      00218E 90 04 04         [24]  773 	mov	dptr,#_pcf8574_set_pin_PARM_2
      002191 E4               [12]  774 	clr	a
      002192 F0               [24]  775 	movx	@dptr,a
      002193 75 82 05         [24]  776 	mov	dpl,#0x05
      002196 12 22 0E         [24]  777 	lcall	_pcf8574_set_pin
                                    778 ;	io_expander.c:90: while(1)
      002199                        779 00102$:
                                    780 ;	io_expander.c:92: printf("W\n\r");
      002199 74 7A            [12]  781 	mov	a,#___str_4
      00219B C0 E0            [24]  782 	push	acc
      00219D 74 2E            [12]  783 	mov	a,#(___str_4 >> 8)
      00219F C0 E0            [24]  784 	push	acc
      0021A1 74 80            [12]  785 	mov	a,#0x80
      0021A3 C0 E0            [24]  786 	push	acc
      0021A5 12 23 D2         [24]  787 	lcall	_printf
      0021A8 15 81            [12]  788 	dec	sp
      0021AA 15 81            [12]  789 	dec	sp
      0021AC 15 81            [12]  790 	dec	sp
                                    791 ;	io_expander.c:114: }
      0021AE 80 E9            [24]  792 	sjmp	00102$
                                    793 ;------------------------------------------------------------
                                    794 ;Allocation info for local variables in function 'enable_interrupt0'
                                    795 ;------------------------------------------------------------
                                    796 ;	io_expander.c:118: void enable_interrupt0(void)
                                    797 ;	-----------------------------------------
                                    798 ;	 function enable_interrupt0
                                    799 ;	-----------------------------------------
      0021B0                        800 _enable_interrupt0:
                                    801 ;	io_expander.c:121: IT0 = 1;           // Set INT0 to be edge-triggered
                                    802 ;	assignBit
      0021B0 D2 88            [12]  803 	setb	_IT0
                                    804 ;	io_expander.c:122: EX0 = 1;          // Enable INT0 interrupt
                                    805 ;	assignBit
      0021B2 D2 A8            [12]  806 	setb	_EX0
                                    807 ;	io_expander.c:123: EA = 1;           // Enable global interrupts
                                    808 ;	assignBit
      0021B4 D2 AF            [12]  809 	setb	_EA
                                    810 ;	io_expander.c:124: }
      0021B6 22               [24]  811 	ret
                                    812 ;------------------------------------------------------------
                                    813 ;Allocation info for local variables in function 'pcf8574_read_port'
                                    814 ;------------------------------------------------------------
                                    815 ;data                      Allocated with name '_pcf8574_read_port_data_65536_34'
                                    816 ;------------------------------------------------------------
                                    817 ;	io_expander.c:126: uint8_t pcf8574_read_port(void) {
                                    818 ;	-----------------------------------------
                                    819 ;	 function pcf8574_read_port
                                    820 ;	-----------------------------------------
      0021B7                        821 _pcf8574_read_port:
                                    822 ;	io_expander.c:128: i2c_start();
      0021B7 12 23 4B         [24]  823 	lcall	_i2c_start
                                    824 ;	io_expander.c:129: i2c_write(PCF8574_I2C_READ_ADDRESS);
      0021BA 75 82 71         [24]  825 	mov	dpl,#0x71
      0021BD 12 22 5E         [24]  826 	lcall	_i2c_write
                                    827 ;	io_expander.c:130: data = i2c_read(0);
      0021C0 90 00 00         [24]  828 	mov	dptr,#0x0000
      0021C3 12 22 C6         [24]  829 	lcall	_i2c_read
      0021C6 AE 82            [24]  830 	mov	r6,dpl
                                    831 ;	io_expander.c:131: i2c_stop();
      0021C8 C0 06            [24]  832 	push	ar6
      0021CA 12 23 60         [24]  833 	lcall	_i2c_stop
      0021CD D0 06            [24]  834 	pop	ar6
                                    835 ;	io_expander.c:132: return data;
      0021CF 8E 82            [24]  836 	mov	dpl,r6
                                    837 ;	io_expander.c:133: }
      0021D1 22               [24]  838 	ret
                                    839 ;------------------------------------------------------------
                                    840 ;Allocation info for local variables in function 'pcf8574_read_pin'
                                    841 ;------------------------------------------------------------
                                    842 ;pin                       Allocated with name '_pcf8574_read_pin_pin_65536_35'
                                    843 ;port_state                Allocated with name '_pcf8574_read_pin_port_state_65536_36'
                                    844 ;------------------------------------------------------------
                                    845 ;	io_expander.c:135: uint8_t pcf8574_read_pin(uint8_t pin) {
                                    846 ;	-----------------------------------------
                                    847 ;	 function pcf8574_read_pin
                                    848 ;	-----------------------------------------
      0021D2                        849 _pcf8574_read_pin:
      0021D2 E5 82            [12]  850 	mov	a,dpl
      0021D4 90 04 02         [24]  851 	mov	dptr,#_pcf8574_read_pin_pin_65536_35
      0021D7 F0               [24]  852 	movx	@dptr,a
                                    853 ;	io_expander.c:136: uint8_t port_state = pcf8574_read_port();
      0021D8 12 21 B7         [24]  854 	lcall	_pcf8574_read_port
      0021DB AF 82            [24]  855 	mov	r7,dpl
                                    856 ;	io_expander.c:137: return (port_state >> pin) & 0x01;
      0021DD 90 04 02         [24]  857 	mov	dptr,#_pcf8574_read_pin_pin_65536_35
      0021E0 E0               [24]  858 	movx	a,@dptr
      0021E1 FE               [12]  859 	mov	r6,a
      0021E2 8E F0            [24]  860 	mov	b,r6
      0021E4 05 F0            [12]  861 	inc	b
      0021E6 EF               [12]  862 	mov	a,r7
      0021E7 80 02            [24]  863 	sjmp	00104$
      0021E9                        864 00103$:
      0021E9 C3               [12]  865 	clr	c
      0021EA 13               [12]  866 	rrc	a
      0021EB                        867 00104$:
      0021EB D5 F0 FB         [24]  868 	djnz	b,00103$
      0021EE 54 01            [12]  869 	anl	a,#0x01
                                    870 ;	io_expander.c:138: }
      0021F0 F5 82            [12]  871 	mov	dpl,a
      0021F2 22               [24]  872 	ret
                                    873 ;------------------------------------------------------------
                                    874 ;Allocation info for local variables in function 'pcf8574_write_port'
                                    875 ;------------------------------------------------------------
                                    876 ;value                     Allocated with name '_pcf8574_write_port_value_65536_37'
                                    877 ;------------------------------------------------------------
                                    878 ;	io_expander.c:140: void pcf8574_write_port(uint8_t value)
                                    879 ;	-----------------------------------------
                                    880 ;	 function pcf8574_write_port
                                    881 ;	-----------------------------------------
      0021F3                        882 _pcf8574_write_port:
      0021F3 E5 82            [12]  883 	mov	a,dpl
      0021F5 90 04 03         [24]  884 	mov	dptr,#_pcf8574_write_port_value_65536_37
      0021F8 F0               [24]  885 	movx	@dptr,a
                                    886 ;	io_expander.c:142: i2c_start();
      0021F9 12 23 4B         [24]  887 	lcall	_i2c_start
                                    888 ;	io_expander.c:143: i2c_write(PCF8574_I2C_WRITE_ADDRESS);
      0021FC 75 82 70         [24]  889 	mov	dpl,#0x70
      0021FF 12 22 5E         [24]  890 	lcall	_i2c_write
                                    891 ;	io_expander.c:144: i2c_write(value);
      002202 90 04 03         [24]  892 	mov	dptr,#_pcf8574_write_port_value_65536_37
      002205 E0               [24]  893 	movx	a,@dptr
      002206 F5 82            [12]  894 	mov	dpl,a
      002208 12 22 5E         [24]  895 	lcall	_i2c_write
                                    896 ;	io_expander.c:145: i2c_stop();
                                    897 ;	io_expander.c:146: }
      00220B 02 23 60         [24]  898 	ljmp	_i2c_stop
                                    899 ;------------------------------------------------------------
                                    900 ;Allocation info for local variables in function 'pcf8574_set_pin'
                                    901 ;------------------------------------------------------------
                                    902 ;value                     Allocated with name '_pcf8574_set_pin_PARM_2'
                                    903 ;pin                       Allocated with name '_pcf8574_set_pin_pin_65536_39'
                                    904 ;port_state                Allocated with name '_pcf8574_set_pin_port_state_65536_40'
                                    905 ;------------------------------------------------------------
                                    906 ;	io_expander.c:148: void pcf8574_set_pin(uint8_t pin, uint8_t value) {
                                    907 ;	-----------------------------------------
                                    908 ;	 function pcf8574_set_pin
                                    909 ;	-----------------------------------------
      00220E                        910 _pcf8574_set_pin:
      00220E E5 82            [12]  911 	mov	a,dpl
      002210 90 04 05         [24]  912 	mov	dptr,#_pcf8574_set_pin_pin_65536_39
      002213 F0               [24]  913 	movx	@dptr,a
                                    914 ;	io_expander.c:149: uint8_t port_state = pcf8574_read_port();
      002214 12 21 B7         [24]  915 	lcall	_pcf8574_read_port
      002217 AF 82            [24]  916 	mov	r7,dpl
                                    917 ;	io_expander.c:150: if (value) {
      002219 90 04 04         [24]  918 	mov	dptr,#_pcf8574_set_pin_PARM_2
      00221C E0               [24]  919 	movx	a,@dptr
      00221D 60 1D            [24]  920 	jz	00102$
                                    921 ;	io_expander.c:151: port_state |= (1 << pin);  // Set pin high
      00221F 90 04 05         [24]  922 	mov	dptr,#_pcf8574_set_pin_pin_65536_39
      002222 E0               [24]  923 	movx	a,@dptr
      002223 FE               [12]  924 	mov	r6,a
      002224 8E F0            [24]  925 	mov	b,r6
      002226 05 F0            [12]  926 	inc	b
      002228 74 01            [12]  927 	mov	a,#0x01
      00222A 80 02            [24]  928 	sjmp	00113$
      00222C                        929 00111$:
      00222C 25 E0            [12]  930 	add	a,acc
      00222E                        931 00113$:
      00222E D5 F0 FB         [24]  932 	djnz	b,00111$
      002231 FE               [12]  933 	mov	r6,a
      002232 8F 05            [24]  934 	mov	ar5,r7
      002234 90 04 06         [24]  935 	mov	dptr,#_pcf8574_set_pin_port_state_65536_40
      002237 EE               [12]  936 	mov	a,r6
      002238 4D               [12]  937 	orl	a,r5
      002239 F0               [24]  938 	movx	@dptr,a
      00223A 80 19            [24]  939 	sjmp	00103$
      00223C                        940 00102$:
                                    941 ;	io_expander.c:153: port_state &= ~(1 << pin); // Set pin low
      00223C 90 04 05         [24]  942 	mov	dptr,#_pcf8574_set_pin_pin_65536_39
      00223F E0               [24]  943 	movx	a,@dptr
      002240 FE               [12]  944 	mov	r6,a
      002241 8E F0            [24]  945 	mov	b,r6
      002243 05 F0            [12]  946 	inc	b
      002245 74 01            [12]  947 	mov	a,#0x01
      002247 80 02            [24]  948 	sjmp	00116$
      002249                        949 00114$:
      002249 25 E0            [12]  950 	add	a,acc
      00224B                        951 00116$:
      00224B D5 F0 FB         [24]  952 	djnz	b,00114$
      00224E F4               [12]  953 	cpl	a
      00224F FE               [12]  954 	mov	r6,a
      002250 90 04 06         [24]  955 	mov	dptr,#_pcf8574_set_pin_port_state_65536_40
      002253 5F               [12]  956 	anl	a,r7
      002254 F0               [24]  957 	movx	@dptr,a
      002255                        958 00103$:
                                    959 ;	io_expander.c:155: pcf8574_write_port(port_state);
      002255 90 04 06         [24]  960 	mov	dptr,#_pcf8574_set_pin_port_state_65536_40
      002258 E0               [24]  961 	movx	a,@dptr
      002259 F5 82            [12]  962 	mov	dpl,a
                                    963 ;	io_expander.c:156: }
      00225B 02 21 F3         [24]  964 	ljmp	_pcf8574_write_port
                                    965 ;------------------------------------------------------------
                                    966 ;Allocation info for local variables in function 'i2c_write'
                                    967 ;------------------------------------------------------------
                                    968 ;data                      Allocated with name '_i2c_write_data_65536_43'
                                    969 ;i                         Allocated with name '_i2c_write_i_65536_44'
                                    970 ;------------------------------------------------------------
                                    971 ;	io_expander.c:166: int i2c_write(unsigned char data)
                                    972 ;	-----------------------------------------
                                    973 ;	 function i2c_write
                                    974 ;	-----------------------------------------
      00225E                        975 _i2c_write:
      00225E E5 82            [12]  976 	mov	a,dpl
      002260 90 04 07         [24]  977 	mov	dptr,#_i2c_write_data_65536_43
      002263 F0               [24]  978 	movx	@dptr,a
                                    979 ;	io_expander.c:170: for(i=0;i<=7;i++)
      002264 7E 00            [12]  980 	mov	r6,#0x00
      002266 7F 00            [12]  981 	mov	r7,#0x00
      002268                        982 00104$:
                                    983 ;	io_expander.c:172: SDA = (data & 0x80) ? 1 : 0;    //msb first
      002268 90 04 07         [24]  984 	mov	dptr,#_i2c_write_data_65536_43
      00226B E0               [24]  985 	movx	a,@dptr
      00226C FD               [12]  986 	mov	r5,a
      00226D 23               [12]  987 	rl	a
      00226E 54 01            [12]  988 	anl	a,#0x01
      002270 24 FF            [12]  989 	add	a,#0xff
      002272 92 94            [24]  990 	mov	_P1_4,c
                                    991 ;	io_expander.c:173: i2c_delay();        // Setup time for data
      002274 C0 07            [24]  992 	push	ar7
      002276 C0 06            [24]  993 	push	ar6
      002278 C0 05            [24]  994 	push	ar5
      00227A 12 23 6D         [24]  995 	lcall	_i2c_delay
                                    996 ;	io_expander.c:174: SCL=1;
                                    997 ;	assignBit
      00227D D2 93            [12]  998 	setb	_P1_3
                                    999 ;	io_expander.c:175: i2c_delay();        // Hold time for clock
      00227F 12 23 6D         [24] 1000 	lcall	_i2c_delay
      002282 D0 05            [24] 1001 	pop	ar5
      002284 D0 06            [24] 1002 	pop	ar6
      002286 D0 07            [24] 1003 	pop	ar7
                                   1004 ;	io_expander.c:176: SCL=0;
                                   1005 ;	assignBit
      002288 C2 93            [12] 1006 	clr	_P1_3
                                   1007 ;	io_expander.c:177: data = data << 1;
      00228A ED               [12] 1008 	mov	a,r5
      00228B 2D               [12] 1009 	add	a,r5
      00228C 90 04 07         [24] 1010 	mov	dptr,#_i2c_write_data_65536_43
      00228F F0               [24] 1011 	movx	@dptr,a
                                   1012 ;	io_expander.c:170: for(i=0;i<=7;i++)
      002290 0E               [12] 1013 	inc	r6
      002291 BE 00 01         [24] 1014 	cjne	r6,#0x00,00121$
      002294 0F               [12] 1015 	inc	r7
      002295                       1016 00121$:
      002295 C3               [12] 1017 	clr	c
      002296 74 07            [12] 1018 	mov	a,#0x07
      002298 9E               [12] 1019 	subb	a,r6
      002299 E4               [12] 1020 	clr	a
      00229A 9F               [12] 1021 	subb	a,r7
      00229B 50 CB            [24] 1022 	jnc	00104$
                                   1023 ;	io_expander.c:181: SDA = 1;            // Release SDA for slave
                                   1024 ;	assignBit
      00229D D2 94            [12] 1025 	setb	_P1_4
                                   1026 ;	io_expander.c:182: SCL = 1;            // 9th clock pulse for ACK
                                   1027 ;	assignBit
      00229F D2 93            [12] 1028 	setb	_P1_3
                                   1029 ;	io_expander.c:183: i2c_delay();
      0022A1 12 23 6D         [24] 1030 	lcall	_i2c_delay
                                   1031 ;	io_expander.c:184: if(SDA == 1)        // If SDA is still high, no ACK received
      0022A4 30 94 19         [24] 1032 	jnb	_P1_4,00103$
                                   1033 ;	io_expander.c:187: printf("ACK DID NOT ARRIVE\n\r");
      0022A7 74 7E            [12] 1034 	mov	a,#___str_5
      0022A9 C0 E0            [24] 1035 	push	acc
      0022AB 74 2E            [12] 1036 	mov	a,#(___str_5 >> 8)
      0022AD C0 E0            [24] 1037 	push	acc
      0022AF 74 80            [12] 1038 	mov	a,#0x80
      0022B1 C0 E0            [24] 1039 	push	acc
      0022B3 12 23 D2         [24] 1040 	lcall	_printf
      0022B6 15 81            [12] 1041 	dec	sp
      0022B8 15 81            [12] 1042 	dec	sp
      0022BA 15 81            [12] 1043 	dec	sp
                                   1044 ;	io_expander.c:188: return 0;       // Error
      0022BC 90 00 00         [24] 1045 	mov	dptr,#0x0000
      0022BF 22               [24] 1046 	ret
      0022C0                       1047 00103$:
                                   1048 ;	io_expander.c:190: SCL = 0;
                                   1049 ;	assignBit
      0022C0 C2 93            [12] 1050 	clr	_P1_3
                                   1051 ;	io_expander.c:192: return 1;           // Success
      0022C2 90 00 01         [24] 1052 	mov	dptr,#0x0001
                                   1053 ;	io_expander.c:194: }
      0022C5 22               [24] 1054 	ret
                                   1055 ;------------------------------------------------------------
                                   1056 ;Allocation info for local variables in function 'i2c_read'
                                   1057 ;------------------------------------------------------------
                                   1058 ;ACK                       Allocated with name '_i2c_read_ACK_65536_48'
                                   1059 ;buff                      Allocated with name '_i2c_read_buff_65536_49'
                                   1060 ;i                         Allocated with name '_i2c_read_i_131072_50'
                                   1061 ;------------------------------------------------------------
                                   1062 ;	io_expander.c:204: int i2c_read(int ACK)
                                   1063 ;	-----------------------------------------
                                   1064 ;	 function i2c_read
                                   1065 ;	-----------------------------------------
      0022C6                       1066 _i2c_read:
      0022C6 AF 83            [24] 1067 	mov	r7,dph
      0022C8 E5 82            [12] 1068 	mov	a,dpl
      0022CA 90 04 08         [24] 1069 	mov	dptr,#_i2c_read_ACK_65536_48
      0022CD F0               [24] 1070 	movx	@dptr,a
      0022CE EF               [12] 1071 	mov	a,r7
      0022CF A3               [24] 1072 	inc	dptr
      0022D0 F0               [24] 1073 	movx	@dptr,a
                                   1074 ;	io_expander.c:206: unsigned char buff=0;
      0022D1 90 04 0A         [24] 1075 	mov	dptr,#_i2c_read_buff_65536_49
      0022D4 E4               [12] 1076 	clr	a
      0022D5 F0               [24] 1077 	movx	@dptr,a
                                   1078 ;	io_expander.c:207: SCL = 0;
                                   1079 ;	assignBit
      0022D6 C2 93            [12] 1080 	clr	_P1_3
                                   1081 ;	io_expander.c:208: for(int i=0;i<8;i++)
      0022D8 7E 00            [12] 1082 	mov	r6,#0x00
      0022DA 7F 00            [12] 1083 	mov	r7,#0x00
      0022DC                       1084 00103$:
      0022DC C3               [12] 1085 	clr	c
      0022DD EE               [12] 1086 	mov	a,r6
      0022DE 94 08            [12] 1087 	subb	a,#0x08
      0022E0 EF               [12] 1088 	mov	a,r7
      0022E1 64 80            [12] 1089 	xrl	a,#0x80
      0022E3 94 80            [12] 1090 	subb	a,#0x80
      0022E5 50 40            [24] 1091 	jnc	00101$
                                   1092 ;	io_expander.c:210: SCL = 1;
                                   1093 ;	assignBit
      0022E7 D2 93            [12] 1094 	setb	_P1_3
                                   1095 ;	io_expander.c:211: i2c_delay();
      0022E9 C0 07            [24] 1096 	push	ar7
      0022EB C0 06            [24] 1097 	push	ar6
      0022ED 12 23 6D         [24] 1098 	lcall	_i2c_delay
      0022F0 D0 06            [24] 1099 	pop	ar6
      0022F2 D0 07            [24] 1100 	pop	ar7
                                   1101 ;	io_expander.c:212: buff |= (SDA << (7 - i));
      0022F4 A2 94            [12] 1102 	mov	c,_P1_4
      0022F6 E4               [12] 1103 	clr	a
      0022F7 33               [12] 1104 	rlc	a
      0022F8 FD               [12] 1105 	mov	r5,a
      0022F9 8E 04            [24] 1106 	mov	ar4,r6
      0022FB 74 07            [12] 1107 	mov	a,#0x07
      0022FD C3               [12] 1108 	clr	c
      0022FE 9C               [12] 1109 	subb	a,r4
      0022FF FC               [12] 1110 	mov	r4,a
      002300 8C F0            [24] 1111 	mov	b,r4
      002302 05 F0            [12] 1112 	inc	b
      002304 ED               [12] 1113 	mov	a,r5
      002305 80 02            [24] 1114 	sjmp	00119$
      002307                       1115 00117$:
      002307 25 E0            [12] 1116 	add	a,acc
      002309                       1117 00119$:
      002309 D5 F0 FB         [24] 1118 	djnz	b,00117$
      00230C FC               [12] 1119 	mov	r4,a
      00230D 90 04 0A         [24] 1120 	mov	dptr,#_i2c_read_buff_65536_49
      002310 E0               [24] 1121 	movx	a,@dptr
      002311 4C               [12] 1122 	orl	a,r4
      002312 F0               [24] 1123 	movx	@dptr,a
                                   1124 ;	io_expander.c:213: i2c_delay();
      002313 C0 07            [24] 1125 	push	ar7
      002315 C0 06            [24] 1126 	push	ar6
      002317 12 23 6D         [24] 1127 	lcall	_i2c_delay
      00231A D0 06            [24] 1128 	pop	ar6
      00231C D0 07            [24] 1129 	pop	ar7
                                   1130 ;	io_expander.c:214: SCL=0;
                                   1131 ;	assignBit
      00231E C2 93            [12] 1132 	clr	_P1_3
                                   1133 ;	io_expander.c:208: for(int i=0;i<8;i++)
      002320 0E               [12] 1134 	inc	r6
      002321 BE 00 B8         [24] 1135 	cjne	r6,#0x00,00103$
      002324 0F               [12] 1136 	inc	r7
      002325 80 B5            [24] 1137 	sjmp	00103$
      002327                       1138 00101$:
                                   1139 ;	io_expander.c:218: SDA = !ACK;         // ACK = 0, NACK = 1
      002327 90 04 08         [24] 1140 	mov	dptr,#_i2c_read_ACK_65536_48
      00232A E0               [24] 1141 	movx	a,@dptr
      00232B FE               [12] 1142 	mov	r6,a
      00232C A3               [24] 1143 	inc	dptr
      00232D E0               [24] 1144 	movx	a,@dptr
      00232E 4E               [12] 1145 	orl	a,r6
      00232F B4 01 00         [24] 1146 	cjne	a,#0x01,00121$
      002332                       1147 00121$:
      002332 E4               [12] 1148 	clr	a
      002333 33               [12] 1149 	rlc	a
      002334 24 FF            [12] 1150 	add	a,#0xff
      002336 92 94            [24] 1151 	mov	_P1_4,c
                                   1152 ;	io_expander.c:219: SCL = 1;
                                   1153 ;	assignBit
      002338 D2 93            [12] 1154 	setb	_P1_3
                                   1155 ;	io_expander.c:220: i2c_delay();
      00233A 12 23 6D         [24] 1156 	lcall	_i2c_delay
                                   1157 ;	io_expander.c:221: SCL = 0;
                                   1158 ;	assignBit
      00233D C2 93            [12] 1159 	clr	_P1_3
                                   1160 ;	io_expander.c:223: return buff;
      00233F 90 04 0A         [24] 1161 	mov	dptr,#_i2c_read_buff_65536_49
      002342 E0               [24] 1162 	movx	a,@dptr
      002343 FF               [12] 1163 	mov	r7,a
      002344 7E 00            [12] 1164 	mov	r6,#0x00
      002346 8F 82            [24] 1165 	mov	dpl,r7
      002348 8E 83            [24] 1166 	mov	dph,r6
                                   1167 ;	io_expander.c:224: }
      00234A 22               [24] 1168 	ret
                                   1169 ;------------------------------------------------------------
                                   1170 ;Allocation info for local variables in function 'i2c_start'
                                   1171 ;------------------------------------------------------------
                                   1172 ;	io_expander.c:231: void i2c_start(void)
                                   1173 ;	-----------------------------------------
                                   1174 ;	 function i2c_start
                                   1175 ;	-----------------------------------------
      00234B                       1176 _i2c_start:
                                   1177 ;	io_expander.c:233: i2c_delay();
      00234B 12 23 6D         [24] 1178 	lcall	_i2c_delay
                                   1179 ;	io_expander.c:234: SDA = 1;
                                   1180 ;	assignBit
      00234E D2 94            [12] 1181 	setb	_P1_4
                                   1182 ;	io_expander.c:235: i2c_delay();
      002350 12 23 6D         [24] 1183 	lcall	_i2c_delay
                                   1184 ;	io_expander.c:236: SCL = 1;
                                   1185 ;	assignBit
      002353 D2 93            [12] 1186 	setb	_P1_3
                                   1187 ;	io_expander.c:237: i2c_delay();
      002355 12 23 6D         [24] 1188 	lcall	_i2c_delay
                                   1189 ;	io_expander.c:238: SDA = 0;
                                   1190 ;	assignBit
      002358 C2 94            [12] 1191 	clr	_P1_4
                                   1192 ;	io_expander.c:239: i2c_delay();
      00235A 12 23 6D         [24] 1193 	lcall	_i2c_delay
                                   1194 ;	io_expander.c:240: SCL = 0;
                                   1195 ;	assignBit
      00235D C2 93            [12] 1196 	clr	_P1_3
                                   1197 ;	io_expander.c:241: }
      00235F 22               [24] 1198 	ret
                                   1199 ;------------------------------------------------------------
                                   1200 ;Allocation info for local variables in function 'i2c_stop'
                                   1201 ;------------------------------------------------------------
                                   1202 ;	io_expander.c:248: void i2c_stop(void)
                                   1203 ;	-----------------------------------------
                                   1204 ;	 function i2c_stop
                                   1205 ;	-----------------------------------------
      002360                       1206 _i2c_stop:
                                   1207 ;	io_expander.c:250: SDA = 0;
                                   1208 ;	assignBit
      002360 C2 94            [12] 1209 	clr	_P1_4
                                   1210 ;	io_expander.c:251: i2c_delay();
      002362 12 23 6D         [24] 1211 	lcall	_i2c_delay
                                   1212 ;	io_expander.c:252: SCL = 1;
                                   1213 ;	assignBit
      002365 D2 93            [12] 1214 	setb	_P1_3
                                   1215 ;	io_expander.c:253: i2c_delay();
      002367 12 23 6D         [24] 1216 	lcall	_i2c_delay
                                   1217 ;	io_expander.c:254: SDA = 1; 
                                   1218 ;	assignBit
      00236A D2 94            [12] 1219 	setb	_P1_4
                                   1220 ;	io_expander.c:255: }
      00236C 22               [24] 1221 	ret
                                   1222 ;------------------------------------------------------------
                                   1223 ;Allocation info for local variables in function 'i2c_delay'
                                   1224 ;------------------------------------------------------------
                                   1225 ;i                         Allocated with name '_i2c_delay_i_131072_57'
                                   1226 ;------------------------------------------------------------
                                   1227 ;	io_expander.c:264: void i2c_delay() 
                                   1228 ;	-----------------------------------------
                                   1229 ;	 function i2c_delay
                                   1230 ;	-----------------------------------------
      00236D                       1231 _i2c_delay:
                                   1232 ;	io_expander.c:266: for(int i = 0; i<500; i++);
      00236D 7E 00            [12] 1233 	mov	r6,#0x00
      00236F 7F 00            [12] 1234 	mov	r7,#0x00
      002371                       1235 00103$:
      002371 C3               [12] 1236 	clr	c
      002372 EE               [12] 1237 	mov	a,r6
      002373 94 F4            [12] 1238 	subb	a,#0xf4
      002375 EF               [12] 1239 	mov	a,r7
      002376 64 80            [12] 1240 	xrl	a,#0x80
      002378 94 81            [12] 1241 	subb	a,#0x81
      00237A 50 07            [24] 1242 	jnc	00105$
      00237C 0E               [12] 1243 	inc	r6
      00237D BE 00 F1         [24] 1244 	cjne	r6,#0x00,00103$
      002380 0F               [12] 1245 	inc	r7
      002381 80 EE            [24] 1246 	sjmp	00103$
      002383                       1247 00105$:
                                   1248 ;	io_expander.c:267: }
      002383 22               [24] 1249 	ret
                                   1250 	.area CSEG    (CODE)
                                   1251 	.area CONST   (CODE)
                                   1252 	.area CONST   (CODE)
      002E34                       1253 ___str_0:
      002E34 69 73 72              1254 	.ascii "isr"
      002E37 0A                    1255 	.db 0x0a
      002E38 0D                    1256 	.db 0x0d
      002E39 00                    1257 	.db 0x00
                                   1258 	.area CSEG    (CODE)
                                   1259 	.area CONST   (CODE)
      002E3A                       1260 ___str_1:
      002E3A 49 4F 20 45 58 50 41  1261 	.ascii "IO EXPANDER PROGRAM"
             4E 44 45 52 20 50 52
             4F 47 52 41 4D
      002E4D 0A                    1262 	.db 0x0a
      002E4E 0D                    1263 	.db 0x0d
      002E4F 00                    1264 	.db 0x00
                                   1265 	.area CSEG    (CODE)
                                   1266 	.area CONST   (CODE)
      002E50                       1267 ___str_2:
      002E50 49 4F 20 65 78 70 61  1268 	.ascii "IO expander initialized"
             6E 64 65 72 20 69 6E
             69 74 69 61 6C 69 7A
             65 64
      002E67 0A                    1269 	.db 0x0a
      002E68 0D                    1270 	.db 0x0d
      002E69 00                    1271 	.db 0x00
                                   1272 	.area CSEG    (CODE)
                                   1273 	.area CONST   (CODE)
      002E6A                       1274 ___str_3:
      002E6A 70 6F 72 74 20 30 20  1275 	.ascii "port 0 pin %d"
             70 69 6E 20 25 64
      002E77 0A                    1276 	.db 0x0a
      002E78 0D                    1277 	.db 0x0d
      002E79 00                    1278 	.db 0x00
                                   1279 	.area CSEG    (CODE)
                                   1280 	.area CONST   (CODE)
      002E7A                       1281 ___str_4:
      002E7A 57                    1282 	.ascii "W"
      002E7B 0A                    1283 	.db 0x0a
      002E7C 0D                    1284 	.db 0x0d
      002E7D 00                    1285 	.db 0x00
                                   1286 	.area CSEG    (CODE)
                                   1287 	.area CONST   (CODE)
      002E7E                       1288 ___str_5:
      002E7E 41 43 4B 20 44 49 44  1289 	.ascii "ACK DID NOT ARRIVE"
             20 4E 4F 54 20 41 52
             52 49 56 45
      002E90 0A                    1290 	.db 0x0a
      002E91 0D                    1291 	.db 0x0d
      002E92 00                    1292 	.db 0x00
                                   1293 	.area CSEG    (CODE)
                                   1294 	.area XINIT   (CODE)
                                   1295 	.area CABS    (ABS,CODE)
