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
      000402                        485 _pcf8574_read_pin_pin_65536_34:
      000402                        486 	.ds 1
      000403                        487 _pcf8574_write_port_value_65536_36:
      000403                        488 	.ds 1
      000404                        489 _pcf8574_set_pin_PARM_2:
      000404                        490 	.ds 1
      000405                        491 _pcf8574_set_pin_pin_65536_38:
      000405                        492 	.ds 1
      000406                        493 _pcf8574_set_pin_port_state_65536_39:
      000406                        494 	.ds 1
      000407                        495 _i2c_write_data_65536_42:
      000407                        496 	.ds 1
      000408                        497 _i2c_read_ACK_65536_47:
      000408                        498 	.ds 2
      00040A                        499 _i2c_read_buff_65536_48:
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
      0020B4 12 21 BB         [24]  647 	lcall	_pcf8574_read_pin
      0020B7 AF 82            [24]  648 	mov	r7,dpl
                                    649 ;	io_expander.c:62: pcf8574_set_pin(7,data);
      0020B9 90 04 04         [24]  650 	mov	dptr,#_pcf8574_set_pin_PARM_2
      0020BC EF               [12]  651 	mov	a,r7
      0020BD F0               [24]  652 	movx	@dptr,a
      0020BE 75 82 07         [24]  653 	mov	dpl,#0x07
      0020C1 12 21 F7         [24]  654 	lcall	_pcf8574_set_pin
                                    655 ;	io_expander.c:63: printf("isr\n\r");
      0020C4 74 1D            [12]  656 	mov	a,#___str_0
      0020C6 C0 E0            [24]  657 	push	acc
      0020C8 74 2E            [12]  658 	mov	a,#(___str_0 >> 8)
      0020CA C0 E0            [24]  659 	push	acc
      0020CC 74 80            [12]  660 	mov	a,#0x80
      0020CE C0 E0            [24]  661 	push	acc
      0020D0 12 23 BB         [24]  662 	lcall	_printf
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
      0020FC 74 23            [12]  697 	mov	a,#___str_1
      0020FE C0 E0            [24]  698 	push	acc
      002100 74 2E            [12]  699 	mov	a,#(___str_1 >> 8)
      002102 C0 E0            [24]  700 	push	acc
      002104 74 80            [12]  701 	mov	a,#0x80
      002106 C0 E0            [24]  702 	push	acc
      002108 12 23 BB         [24]  703 	lcall	_printf
      00210B 15 81            [12]  704 	dec	sp
      00210D 15 81            [12]  705 	dec	sp
      00210F 15 81            [12]  706 	dec	sp
                                    707 ;	io_expander.c:73: enable_interrupt0();
      002111 12 21 99         [24]  708 	lcall	_enable_interrupt0
                                    709 ;	io_expander.c:75: i2c_start();
      002114 12 23 34         [24]  710 	lcall	_i2c_start
                                    711 ;	io_expander.c:76: i2c_write(PCF8574_I2C_WRITE_ADDRESS);
      002117 75 82 70         [24]  712 	mov	dpl,#0x70
      00211A 12 22 47         [24]  713 	lcall	_i2c_write
                                    714 ;	io_expander.c:77: i2c_write(0xFF);
      00211D 75 82 FF         [24]  715 	mov	dpl,#0xff
      002120 12 22 47         [24]  716 	lcall	_i2c_write
                                    717 ;	io_expander.c:79: i2c_stop();
      002123 12 23 49         [24]  718 	lcall	_i2c_stop
                                    719 ;	io_expander.c:81: printf("IO expander initialized\n\r");
      002126 74 39            [12]  720 	mov	a,#___str_2
      002128 C0 E0            [24]  721 	push	acc
      00212A 74 2E            [12]  722 	mov	a,#(___str_2 >> 8)
      00212C C0 E0            [24]  723 	push	acc
      00212E 74 80            [12]  724 	mov	a,#0x80
      002130 C0 E0            [24]  725 	push	acc
      002132 12 23 BB         [24]  726 	lcall	_printf
      002135 15 81            [12]  727 	dec	sp
      002137 15 81            [12]  728 	dec	sp
      002139 15 81            [12]  729 	dec	sp
                                    730 ;	io_expander.c:82: int result = pcf8574_read_pin(0);
      00213B 75 82 00         [24]  731 	mov	dpl,#0x00
      00213E 12 21 BB         [24]  732 	lcall	_pcf8574_read_pin
      002141 AF 82            [24]  733 	mov	r7,dpl
      002143 7E 00            [12]  734 	mov	r6,#0x00
                                    735 ;	io_expander.c:83: printf("port 0 pin %d\n\r", result);
      002145 C0 07            [24]  736 	push	ar7
      002147 C0 06            [24]  737 	push	ar6
      002149 74 53            [12]  738 	mov	a,#___str_3
      00214B C0 E0            [24]  739 	push	acc
      00214D 74 2E            [12]  740 	mov	a,#(___str_3 >> 8)
      00214F C0 E0            [24]  741 	push	acc
      002151 74 80            [12]  742 	mov	a,#0x80
      002153 C0 E0            [24]  743 	push	acc
      002155 12 23 BB         [24]  744 	lcall	_printf
      002158 E5 81            [12]  745 	mov	a,sp
      00215A 24 FB            [12]  746 	add	a,#0xfb
      00215C F5 81            [12]  747 	mov	sp,a
                                    748 ;	io_expander.c:84: pcf8574_set_pin(1,1);
      00215E 90 04 04         [24]  749 	mov	dptr,#_pcf8574_set_pin_PARM_2
      002161 74 01            [12]  750 	mov	a,#0x01
      002163 F0               [24]  751 	movx	@dptr,a
      002164 75 82 01         [24]  752 	mov	dpl,#0x01
      002167 12 21 F7         [24]  753 	lcall	_pcf8574_set_pin
                                    754 ;	io_expander.c:85: pcf8574_set_pin(2,1);
      00216A 90 04 04         [24]  755 	mov	dptr,#_pcf8574_set_pin_PARM_2
      00216D 74 01            [12]  756 	mov	a,#0x01
      00216F F0               [24]  757 	movx	@dptr,a
      002170 75 82 02         [24]  758 	mov	dpl,#0x02
      002173 12 21 F7         [24]  759 	lcall	_pcf8574_set_pin
                                    760 ;	io_expander.c:86: pcf8574_set_pin(3,1);
      002176 90 04 04         [24]  761 	mov	dptr,#_pcf8574_set_pin_PARM_2
      002179 74 01            [12]  762 	mov	a,#0x01
      00217B F0               [24]  763 	movx	@dptr,a
      00217C 75 82 03         [24]  764 	mov	dpl,#0x03
      00217F 12 21 F7         [24]  765 	lcall	_pcf8574_set_pin
                                    766 ;	io_expander.c:87: pcf8574_set_pin(4,1);
      002182 90 04 04         [24]  767 	mov	dptr,#_pcf8574_set_pin_PARM_2
      002185 74 01            [12]  768 	mov	a,#0x01
      002187 F0               [24]  769 	movx	@dptr,a
      002188 75 82 04         [24]  770 	mov	dpl,#0x04
      00218B 12 21 F7         [24]  771 	lcall	_pcf8574_set_pin
                                    772 ;	io_expander.c:88: pcf8574_set_pin(5,0);
      00218E 90 04 04         [24]  773 	mov	dptr,#_pcf8574_set_pin_PARM_2
      002191 E4               [12]  774 	clr	a
      002192 F0               [24]  775 	movx	@dptr,a
      002193 75 82 05         [24]  776 	mov	dpl,#0x05
                                    777 ;	io_expander.c:111: }
      002196 02 21 F7         [24]  778 	ljmp	_pcf8574_set_pin
                                    779 ;------------------------------------------------------------
                                    780 ;Allocation info for local variables in function 'enable_interrupt0'
                                    781 ;------------------------------------------------------------
                                    782 ;	io_expander.c:115: void enable_interrupt0(void)
                                    783 ;	-----------------------------------------
                                    784 ;	 function enable_interrupt0
                                    785 ;	-----------------------------------------
      002199                        786 _enable_interrupt0:
                                    787 ;	io_expander.c:118: IT0 = 1;           // Set INT0 to be edge-triggered
                                    788 ;	assignBit
      002199 D2 88            [12]  789 	setb	_IT0
                                    790 ;	io_expander.c:119: EX0 = 1;          // Enable INT0 interrupt
                                    791 ;	assignBit
      00219B D2 A8            [12]  792 	setb	_EX0
                                    793 ;	io_expander.c:120: EA = 1;           // Enable global interrupts
                                    794 ;	assignBit
      00219D D2 AF            [12]  795 	setb	_EA
                                    796 ;	io_expander.c:121: }
      00219F 22               [24]  797 	ret
                                    798 ;------------------------------------------------------------
                                    799 ;Allocation info for local variables in function 'pcf8574_read_port'
                                    800 ;------------------------------------------------------------
                                    801 ;data                      Allocated with name '_pcf8574_read_port_data_65536_33'
                                    802 ;------------------------------------------------------------
                                    803 ;	io_expander.c:123: uint8_t pcf8574_read_port(void) {
                                    804 ;	-----------------------------------------
                                    805 ;	 function pcf8574_read_port
                                    806 ;	-----------------------------------------
      0021A0                        807 _pcf8574_read_port:
                                    808 ;	io_expander.c:125: i2c_start();
      0021A0 12 23 34         [24]  809 	lcall	_i2c_start
                                    810 ;	io_expander.c:126: i2c_write(PCF8574_I2C_READ_ADDRESS);
      0021A3 75 82 71         [24]  811 	mov	dpl,#0x71
      0021A6 12 22 47         [24]  812 	lcall	_i2c_write
                                    813 ;	io_expander.c:127: data = i2c_read(0);
      0021A9 90 00 00         [24]  814 	mov	dptr,#0x0000
      0021AC 12 22 AF         [24]  815 	lcall	_i2c_read
      0021AF AE 82            [24]  816 	mov	r6,dpl
                                    817 ;	io_expander.c:128: i2c_stop();
      0021B1 C0 06            [24]  818 	push	ar6
      0021B3 12 23 49         [24]  819 	lcall	_i2c_stop
      0021B6 D0 06            [24]  820 	pop	ar6
                                    821 ;	io_expander.c:129: return data;
      0021B8 8E 82            [24]  822 	mov	dpl,r6
                                    823 ;	io_expander.c:130: }
      0021BA 22               [24]  824 	ret
                                    825 ;------------------------------------------------------------
                                    826 ;Allocation info for local variables in function 'pcf8574_read_pin'
                                    827 ;------------------------------------------------------------
                                    828 ;pin                       Allocated with name '_pcf8574_read_pin_pin_65536_34'
                                    829 ;port_state                Allocated with name '_pcf8574_read_pin_port_state_65536_35'
                                    830 ;------------------------------------------------------------
                                    831 ;	io_expander.c:132: uint8_t pcf8574_read_pin(uint8_t pin) {
                                    832 ;	-----------------------------------------
                                    833 ;	 function pcf8574_read_pin
                                    834 ;	-----------------------------------------
      0021BB                        835 _pcf8574_read_pin:
      0021BB E5 82            [12]  836 	mov	a,dpl
      0021BD 90 04 02         [24]  837 	mov	dptr,#_pcf8574_read_pin_pin_65536_34
      0021C0 F0               [24]  838 	movx	@dptr,a
                                    839 ;	io_expander.c:133: uint8_t port_state = pcf8574_read_port();
      0021C1 12 21 A0         [24]  840 	lcall	_pcf8574_read_port
      0021C4 AF 82            [24]  841 	mov	r7,dpl
                                    842 ;	io_expander.c:134: return (port_state >> pin) & 0x01;
      0021C6 90 04 02         [24]  843 	mov	dptr,#_pcf8574_read_pin_pin_65536_34
      0021C9 E0               [24]  844 	movx	a,@dptr
      0021CA FE               [12]  845 	mov	r6,a
      0021CB 8E F0            [24]  846 	mov	b,r6
      0021CD 05 F0            [12]  847 	inc	b
      0021CF EF               [12]  848 	mov	a,r7
      0021D0 80 02            [24]  849 	sjmp	00104$
      0021D2                        850 00103$:
      0021D2 C3               [12]  851 	clr	c
      0021D3 13               [12]  852 	rrc	a
      0021D4                        853 00104$:
      0021D4 D5 F0 FB         [24]  854 	djnz	b,00103$
      0021D7 54 01            [12]  855 	anl	a,#0x01
                                    856 ;	io_expander.c:135: }
      0021D9 F5 82            [12]  857 	mov	dpl,a
      0021DB 22               [24]  858 	ret
                                    859 ;------------------------------------------------------------
                                    860 ;Allocation info for local variables in function 'pcf8574_write_port'
                                    861 ;------------------------------------------------------------
                                    862 ;value                     Allocated with name '_pcf8574_write_port_value_65536_36'
                                    863 ;------------------------------------------------------------
                                    864 ;	io_expander.c:137: void pcf8574_write_port(uint8_t value)
                                    865 ;	-----------------------------------------
                                    866 ;	 function pcf8574_write_port
                                    867 ;	-----------------------------------------
      0021DC                        868 _pcf8574_write_port:
      0021DC E5 82            [12]  869 	mov	a,dpl
      0021DE 90 04 03         [24]  870 	mov	dptr,#_pcf8574_write_port_value_65536_36
      0021E1 F0               [24]  871 	movx	@dptr,a
                                    872 ;	io_expander.c:139: i2c_start();
      0021E2 12 23 34         [24]  873 	lcall	_i2c_start
                                    874 ;	io_expander.c:140: i2c_write(PCF8574_I2C_WRITE_ADDRESS);
      0021E5 75 82 70         [24]  875 	mov	dpl,#0x70
      0021E8 12 22 47         [24]  876 	lcall	_i2c_write
                                    877 ;	io_expander.c:141: i2c_write(value);
      0021EB 90 04 03         [24]  878 	mov	dptr,#_pcf8574_write_port_value_65536_36
      0021EE E0               [24]  879 	movx	a,@dptr
      0021EF F5 82            [12]  880 	mov	dpl,a
      0021F1 12 22 47         [24]  881 	lcall	_i2c_write
                                    882 ;	io_expander.c:142: i2c_stop();
                                    883 ;	io_expander.c:143: }
      0021F4 02 23 49         [24]  884 	ljmp	_i2c_stop
                                    885 ;------------------------------------------------------------
                                    886 ;Allocation info for local variables in function 'pcf8574_set_pin'
                                    887 ;------------------------------------------------------------
                                    888 ;value                     Allocated with name '_pcf8574_set_pin_PARM_2'
                                    889 ;pin                       Allocated with name '_pcf8574_set_pin_pin_65536_38'
                                    890 ;port_state                Allocated with name '_pcf8574_set_pin_port_state_65536_39'
                                    891 ;------------------------------------------------------------
                                    892 ;	io_expander.c:145: void pcf8574_set_pin(uint8_t pin, uint8_t value) {
                                    893 ;	-----------------------------------------
                                    894 ;	 function pcf8574_set_pin
                                    895 ;	-----------------------------------------
      0021F7                        896 _pcf8574_set_pin:
      0021F7 E5 82            [12]  897 	mov	a,dpl
      0021F9 90 04 05         [24]  898 	mov	dptr,#_pcf8574_set_pin_pin_65536_38
      0021FC F0               [24]  899 	movx	@dptr,a
                                    900 ;	io_expander.c:146: uint8_t port_state = pcf8574_read_port();
      0021FD 12 21 A0         [24]  901 	lcall	_pcf8574_read_port
      002200 AF 82            [24]  902 	mov	r7,dpl
                                    903 ;	io_expander.c:147: if (value) {
      002202 90 04 04         [24]  904 	mov	dptr,#_pcf8574_set_pin_PARM_2
      002205 E0               [24]  905 	movx	a,@dptr
      002206 60 1D            [24]  906 	jz	00102$
                                    907 ;	io_expander.c:148: port_state |= (1 << pin);  // Set pin high
      002208 90 04 05         [24]  908 	mov	dptr,#_pcf8574_set_pin_pin_65536_38
      00220B E0               [24]  909 	movx	a,@dptr
      00220C FE               [12]  910 	mov	r6,a
      00220D 8E F0            [24]  911 	mov	b,r6
      00220F 05 F0            [12]  912 	inc	b
      002211 74 01            [12]  913 	mov	a,#0x01
      002213 80 02            [24]  914 	sjmp	00113$
      002215                        915 00111$:
      002215 25 E0            [12]  916 	add	a,acc
      002217                        917 00113$:
      002217 D5 F0 FB         [24]  918 	djnz	b,00111$
      00221A FE               [12]  919 	mov	r6,a
      00221B 8F 05            [24]  920 	mov	ar5,r7
      00221D 90 04 06         [24]  921 	mov	dptr,#_pcf8574_set_pin_port_state_65536_39
      002220 EE               [12]  922 	mov	a,r6
      002221 4D               [12]  923 	orl	a,r5
      002222 F0               [24]  924 	movx	@dptr,a
      002223 80 19            [24]  925 	sjmp	00103$
      002225                        926 00102$:
                                    927 ;	io_expander.c:150: port_state &= ~(1 << pin); // Set pin low
      002225 90 04 05         [24]  928 	mov	dptr,#_pcf8574_set_pin_pin_65536_38
      002228 E0               [24]  929 	movx	a,@dptr
      002229 FE               [12]  930 	mov	r6,a
      00222A 8E F0            [24]  931 	mov	b,r6
      00222C 05 F0            [12]  932 	inc	b
      00222E 74 01            [12]  933 	mov	a,#0x01
      002230 80 02            [24]  934 	sjmp	00116$
      002232                        935 00114$:
      002232 25 E0            [12]  936 	add	a,acc
      002234                        937 00116$:
      002234 D5 F0 FB         [24]  938 	djnz	b,00114$
      002237 F4               [12]  939 	cpl	a
      002238 FE               [12]  940 	mov	r6,a
      002239 90 04 06         [24]  941 	mov	dptr,#_pcf8574_set_pin_port_state_65536_39
      00223C 5F               [12]  942 	anl	a,r7
      00223D F0               [24]  943 	movx	@dptr,a
      00223E                        944 00103$:
                                    945 ;	io_expander.c:152: pcf8574_write_port(port_state);
      00223E 90 04 06         [24]  946 	mov	dptr,#_pcf8574_set_pin_port_state_65536_39
      002241 E0               [24]  947 	movx	a,@dptr
      002242 F5 82            [12]  948 	mov	dpl,a
                                    949 ;	io_expander.c:153: }
      002244 02 21 DC         [24]  950 	ljmp	_pcf8574_write_port
                                    951 ;------------------------------------------------------------
                                    952 ;Allocation info for local variables in function 'i2c_write'
                                    953 ;------------------------------------------------------------
                                    954 ;data                      Allocated with name '_i2c_write_data_65536_42'
                                    955 ;i                         Allocated with name '_i2c_write_i_65536_43'
                                    956 ;------------------------------------------------------------
                                    957 ;	io_expander.c:163: int i2c_write(unsigned char data)
                                    958 ;	-----------------------------------------
                                    959 ;	 function i2c_write
                                    960 ;	-----------------------------------------
      002247                        961 _i2c_write:
      002247 E5 82            [12]  962 	mov	a,dpl
      002249 90 04 07         [24]  963 	mov	dptr,#_i2c_write_data_65536_42
      00224C F0               [24]  964 	movx	@dptr,a
                                    965 ;	io_expander.c:167: for(i=0;i<=7;i++)
      00224D 7E 00            [12]  966 	mov	r6,#0x00
      00224F 7F 00            [12]  967 	mov	r7,#0x00
      002251                        968 00104$:
                                    969 ;	io_expander.c:169: SDA = (data & 0x80) ? 1 : 0;    //msb first
      002251 90 04 07         [24]  970 	mov	dptr,#_i2c_write_data_65536_42
      002254 E0               [24]  971 	movx	a,@dptr
      002255 FD               [12]  972 	mov	r5,a
      002256 23               [12]  973 	rl	a
      002257 54 01            [12]  974 	anl	a,#0x01
      002259 24 FF            [12]  975 	add	a,#0xff
      00225B 92 94            [24]  976 	mov	_P1_4,c
                                    977 ;	io_expander.c:170: i2c_delay();        // Setup time for data
      00225D C0 07            [24]  978 	push	ar7
      00225F C0 06            [24]  979 	push	ar6
      002261 C0 05            [24]  980 	push	ar5
      002263 12 23 56         [24]  981 	lcall	_i2c_delay
                                    982 ;	io_expander.c:171: SCL=1;
                                    983 ;	assignBit
      002266 D2 93            [12]  984 	setb	_P1_3
                                    985 ;	io_expander.c:172: i2c_delay();        // Hold time for clock
      002268 12 23 56         [24]  986 	lcall	_i2c_delay
      00226B D0 05            [24]  987 	pop	ar5
      00226D D0 06            [24]  988 	pop	ar6
      00226F D0 07            [24]  989 	pop	ar7
                                    990 ;	io_expander.c:173: SCL=0;
                                    991 ;	assignBit
      002271 C2 93            [12]  992 	clr	_P1_3
                                    993 ;	io_expander.c:174: data = data << 1;
      002273 ED               [12]  994 	mov	a,r5
      002274 2D               [12]  995 	add	a,r5
      002275 90 04 07         [24]  996 	mov	dptr,#_i2c_write_data_65536_42
      002278 F0               [24]  997 	movx	@dptr,a
                                    998 ;	io_expander.c:167: for(i=0;i<=7;i++)
      002279 0E               [12]  999 	inc	r6
      00227A BE 00 01         [24] 1000 	cjne	r6,#0x00,00121$
      00227D 0F               [12] 1001 	inc	r7
      00227E                       1002 00121$:
      00227E C3               [12] 1003 	clr	c
      00227F 74 07            [12] 1004 	mov	a,#0x07
      002281 9E               [12] 1005 	subb	a,r6
      002282 E4               [12] 1006 	clr	a
      002283 9F               [12] 1007 	subb	a,r7
      002284 50 CB            [24] 1008 	jnc	00104$
                                   1009 ;	io_expander.c:178: SDA = 1;            // Release SDA for slave
                                   1010 ;	assignBit
      002286 D2 94            [12] 1011 	setb	_P1_4
                                   1012 ;	io_expander.c:179: SCL = 1;            // 9th clock pulse for ACK
                                   1013 ;	assignBit
      002288 D2 93            [12] 1014 	setb	_P1_3
                                   1015 ;	io_expander.c:180: i2c_delay();
      00228A 12 23 56         [24] 1016 	lcall	_i2c_delay
                                   1017 ;	io_expander.c:181: if(SDA == 1)        // If SDA is still high, no ACK received
      00228D 30 94 19         [24] 1018 	jnb	_P1_4,00103$
                                   1019 ;	io_expander.c:184: printf("ACK DID NOT ARRIVE\n\r");
      002290 74 63            [12] 1020 	mov	a,#___str_4
      002292 C0 E0            [24] 1021 	push	acc
      002294 74 2E            [12] 1022 	mov	a,#(___str_4 >> 8)
      002296 C0 E0            [24] 1023 	push	acc
      002298 74 80            [12] 1024 	mov	a,#0x80
      00229A C0 E0            [24] 1025 	push	acc
      00229C 12 23 BB         [24] 1026 	lcall	_printf
      00229F 15 81            [12] 1027 	dec	sp
      0022A1 15 81            [12] 1028 	dec	sp
      0022A3 15 81            [12] 1029 	dec	sp
                                   1030 ;	io_expander.c:185: return 0;       // Error
      0022A5 90 00 00         [24] 1031 	mov	dptr,#0x0000
      0022A8 22               [24] 1032 	ret
      0022A9                       1033 00103$:
                                   1034 ;	io_expander.c:187: SCL = 0;
                                   1035 ;	assignBit
      0022A9 C2 93            [12] 1036 	clr	_P1_3
                                   1037 ;	io_expander.c:189: return 1;           // Success
      0022AB 90 00 01         [24] 1038 	mov	dptr,#0x0001
                                   1039 ;	io_expander.c:191: }
      0022AE 22               [24] 1040 	ret
                                   1041 ;------------------------------------------------------------
                                   1042 ;Allocation info for local variables in function 'i2c_read'
                                   1043 ;------------------------------------------------------------
                                   1044 ;ACK                       Allocated with name '_i2c_read_ACK_65536_47'
                                   1045 ;buff                      Allocated with name '_i2c_read_buff_65536_48'
                                   1046 ;i                         Allocated with name '_i2c_read_i_131072_49'
                                   1047 ;------------------------------------------------------------
                                   1048 ;	io_expander.c:201: int i2c_read(int ACK)
                                   1049 ;	-----------------------------------------
                                   1050 ;	 function i2c_read
                                   1051 ;	-----------------------------------------
      0022AF                       1052 _i2c_read:
      0022AF AF 83            [24] 1053 	mov	r7,dph
      0022B1 E5 82            [12] 1054 	mov	a,dpl
      0022B3 90 04 08         [24] 1055 	mov	dptr,#_i2c_read_ACK_65536_47
      0022B6 F0               [24] 1056 	movx	@dptr,a
      0022B7 EF               [12] 1057 	mov	a,r7
      0022B8 A3               [24] 1058 	inc	dptr
      0022B9 F0               [24] 1059 	movx	@dptr,a
                                   1060 ;	io_expander.c:203: unsigned char buff=0;
      0022BA 90 04 0A         [24] 1061 	mov	dptr,#_i2c_read_buff_65536_48
      0022BD E4               [12] 1062 	clr	a
      0022BE F0               [24] 1063 	movx	@dptr,a
                                   1064 ;	io_expander.c:204: SCL = 0;
                                   1065 ;	assignBit
      0022BF C2 93            [12] 1066 	clr	_P1_3
                                   1067 ;	io_expander.c:205: for(int i=0;i<8;i++)
      0022C1 7E 00            [12] 1068 	mov	r6,#0x00
      0022C3 7F 00            [12] 1069 	mov	r7,#0x00
      0022C5                       1070 00103$:
      0022C5 C3               [12] 1071 	clr	c
      0022C6 EE               [12] 1072 	mov	a,r6
      0022C7 94 08            [12] 1073 	subb	a,#0x08
      0022C9 EF               [12] 1074 	mov	a,r7
      0022CA 64 80            [12] 1075 	xrl	a,#0x80
      0022CC 94 80            [12] 1076 	subb	a,#0x80
      0022CE 50 40            [24] 1077 	jnc	00101$
                                   1078 ;	io_expander.c:207: SCL = 1;
                                   1079 ;	assignBit
      0022D0 D2 93            [12] 1080 	setb	_P1_3
                                   1081 ;	io_expander.c:208: i2c_delay();
      0022D2 C0 07            [24] 1082 	push	ar7
      0022D4 C0 06            [24] 1083 	push	ar6
      0022D6 12 23 56         [24] 1084 	lcall	_i2c_delay
      0022D9 D0 06            [24] 1085 	pop	ar6
      0022DB D0 07            [24] 1086 	pop	ar7
                                   1087 ;	io_expander.c:209: buff |= (SDA << (7 - i));
      0022DD A2 94            [12] 1088 	mov	c,_P1_4
      0022DF E4               [12] 1089 	clr	a
      0022E0 33               [12] 1090 	rlc	a
      0022E1 FD               [12] 1091 	mov	r5,a
      0022E2 8E 04            [24] 1092 	mov	ar4,r6
      0022E4 74 07            [12] 1093 	mov	a,#0x07
      0022E6 C3               [12] 1094 	clr	c
      0022E7 9C               [12] 1095 	subb	a,r4
      0022E8 FC               [12] 1096 	mov	r4,a
      0022E9 8C F0            [24] 1097 	mov	b,r4
      0022EB 05 F0            [12] 1098 	inc	b
      0022ED ED               [12] 1099 	mov	a,r5
      0022EE 80 02            [24] 1100 	sjmp	00119$
      0022F0                       1101 00117$:
      0022F0 25 E0            [12] 1102 	add	a,acc
      0022F2                       1103 00119$:
      0022F2 D5 F0 FB         [24] 1104 	djnz	b,00117$
      0022F5 FC               [12] 1105 	mov	r4,a
      0022F6 90 04 0A         [24] 1106 	mov	dptr,#_i2c_read_buff_65536_48
      0022F9 E0               [24] 1107 	movx	a,@dptr
      0022FA 4C               [12] 1108 	orl	a,r4
      0022FB F0               [24] 1109 	movx	@dptr,a
                                   1110 ;	io_expander.c:210: i2c_delay();
      0022FC C0 07            [24] 1111 	push	ar7
      0022FE C0 06            [24] 1112 	push	ar6
      002300 12 23 56         [24] 1113 	lcall	_i2c_delay
      002303 D0 06            [24] 1114 	pop	ar6
      002305 D0 07            [24] 1115 	pop	ar7
                                   1116 ;	io_expander.c:211: SCL=0;
                                   1117 ;	assignBit
      002307 C2 93            [12] 1118 	clr	_P1_3
                                   1119 ;	io_expander.c:205: for(int i=0;i<8;i++)
      002309 0E               [12] 1120 	inc	r6
      00230A BE 00 B8         [24] 1121 	cjne	r6,#0x00,00103$
      00230D 0F               [12] 1122 	inc	r7
      00230E 80 B5            [24] 1123 	sjmp	00103$
      002310                       1124 00101$:
                                   1125 ;	io_expander.c:215: SDA = !ACK;         // ACK = 0, NACK = 1
      002310 90 04 08         [24] 1126 	mov	dptr,#_i2c_read_ACK_65536_47
      002313 E0               [24] 1127 	movx	a,@dptr
      002314 FE               [12] 1128 	mov	r6,a
      002315 A3               [24] 1129 	inc	dptr
      002316 E0               [24] 1130 	movx	a,@dptr
      002317 4E               [12] 1131 	orl	a,r6
      002318 B4 01 00         [24] 1132 	cjne	a,#0x01,00121$
      00231B                       1133 00121$:
      00231B E4               [12] 1134 	clr	a
      00231C 33               [12] 1135 	rlc	a
      00231D 24 FF            [12] 1136 	add	a,#0xff
      00231F 92 94            [24] 1137 	mov	_P1_4,c
                                   1138 ;	io_expander.c:216: SCL = 1;
                                   1139 ;	assignBit
      002321 D2 93            [12] 1140 	setb	_P1_3
                                   1141 ;	io_expander.c:217: i2c_delay();
      002323 12 23 56         [24] 1142 	lcall	_i2c_delay
                                   1143 ;	io_expander.c:218: SCL = 0;
                                   1144 ;	assignBit
      002326 C2 93            [12] 1145 	clr	_P1_3
                                   1146 ;	io_expander.c:220: return buff;
      002328 90 04 0A         [24] 1147 	mov	dptr,#_i2c_read_buff_65536_48
      00232B E0               [24] 1148 	movx	a,@dptr
      00232C FF               [12] 1149 	mov	r7,a
      00232D 7E 00            [12] 1150 	mov	r6,#0x00
      00232F 8F 82            [24] 1151 	mov	dpl,r7
      002331 8E 83            [24] 1152 	mov	dph,r6
                                   1153 ;	io_expander.c:221: }
      002333 22               [24] 1154 	ret
                                   1155 ;------------------------------------------------------------
                                   1156 ;Allocation info for local variables in function 'i2c_start'
                                   1157 ;------------------------------------------------------------
                                   1158 ;	io_expander.c:228: void i2c_start(void)
                                   1159 ;	-----------------------------------------
                                   1160 ;	 function i2c_start
                                   1161 ;	-----------------------------------------
      002334                       1162 _i2c_start:
                                   1163 ;	io_expander.c:230: i2c_delay();
      002334 12 23 56         [24] 1164 	lcall	_i2c_delay
                                   1165 ;	io_expander.c:231: SDA = 1;
                                   1166 ;	assignBit
      002337 D2 94            [12] 1167 	setb	_P1_4
                                   1168 ;	io_expander.c:232: i2c_delay();
      002339 12 23 56         [24] 1169 	lcall	_i2c_delay
                                   1170 ;	io_expander.c:233: SCL = 1;
                                   1171 ;	assignBit
      00233C D2 93            [12] 1172 	setb	_P1_3
                                   1173 ;	io_expander.c:234: i2c_delay();
      00233E 12 23 56         [24] 1174 	lcall	_i2c_delay
                                   1175 ;	io_expander.c:235: SDA = 0;
                                   1176 ;	assignBit
      002341 C2 94            [12] 1177 	clr	_P1_4
                                   1178 ;	io_expander.c:236: i2c_delay();
      002343 12 23 56         [24] 1179 	lcall	_i2c_delay
                                   1180 ;	io_expander.c:237: SCL = 0;
                                   1181 ;	assignBit
      002346 C2 93            [12] 1182 	clr	_P1_3
                                   1183 ;	io_expander.c:238: }
      002348 22               [24] 1184 	ret
                                   1185 ;------------------------------------------------------------
                                   1186 ;Allocation info for local variables in function 'i2c_stop'
                                   1187 ;------------------------------------------------------------
                                   1188 ;	io_expander.c:245: void i2c_stop(void)
                                   1189 ;	-----------------------------------------
                                   1190 ;	 function i2c_stop
                                   1191 ;	-----------------------------------------
      002349                       1192 _i2c_stop:
                                   1193 ;	io_expander.c:247: SDA = 0;
                                   1194 ;	assignBit
      002349 C2 94            [12] 1195 	clr	_P1_4
                                   1196 ;	io_expander.c:248: i2c_delay();
      00234B 12 23 56         [24] 1197 	lcall	_i2c_delay
                                   1198 ;	io_expander.c:249: SCL = 1;
                                   1199 ;	assignBit
      00234E D2 93            [12] 1200 	setb	_P1_3
                                   1201 ;	io_expander.c:250: i2c_delay();
      002350 12 23 56         [24] 1202 	lcall	_i2c_delay
                                   1203 ;	io_expander.c:251: SDA = 1; 
                                   1204 ;	assignBit
      002353 D2 94            [12] 1205 	setb	_P1_4
                                   1206 ;	io_expander.c:252: }
      002355 22               [24] 1207 	ret
                                   1208 ;------------------------------------------------------------
                                   1209 ;Allocation info for local variables in function 'i2c_delay'
                                   1210 ;------------------------------------------------------------
                                   1211 ;i                         Allocated with name '_i2c_delay_i_131072_56'
                                   1212 ;------------------------------------------------------------
                                   1213 ;	io_expander.c:261: void i2c_delay() 
                                   1214 ;	-----------------------------------------
                                   1215 ;	 function i2c_delay
                                   1216 ;	-----------------------------------------
      002356                       1217 _i2c_delay:
                                   1218 ;	io_expander.c:263: for(int i = 0; i<500; i++);
      002356 7E 00            [12] 1219 	mov	r6,#0x00
      002358 7F 00            [12] 1220 	mov	r7,#0x00
      00235A                       1221 00103$:
      00235A C3               [12] 1222 	clr	c
      00235B EE               [12] 1223 	mov	a,r6
      00235C 94 F4            [12] 1224 	subb	a,#0xf4
      00235E EF               [12] 1225 	mov	a,r7
      00235F 64 80            [12] 1226 	xrl	a,#0x80
      002361 94 81            [12] 1227 	subb	a,#0x81
      002363 50 07            [24] 1228 	jnc	00105$
      002365 0E               [12] 1229 	inc	r6
      002366 BE 00 F1         [24] 1230 	cjne	r6,#0x00,00103$
      002369 0F               [12] 1231 	inc	r7
      00236A 80 EE            [24] 1232 	sjmp	00103$
      00236C                       1233 00105$:
                                   1234 ;	io_expander.c:264: }
      00236C 22               [24] 1235 	ret
                                   1236 	.area CSEG    (CODE)
                                   1237 	.area CONST   (CODE)
                                   1238 	.area CONST   (CODE)
      002E1D                       1239 ___str_0:
      002E1D 69 73 72              1240 	.ascii "isr"
      002E20 0A                    1241 	.db 0x0a
      002E21 0D                    1242 	.db 0x0d
      002E22 00                    1243 	.db 0x00
                                   1244 	.area CSEG    (CODE)
                                   1245 	.area CONST   (CODE)
      002E23                       1246 ___str_1:
      002E23 49 4F 20 45 58 50 41  1247 	.ascii "IO EXPANDER PROGRAM"
             4E 44 45 52 20 50 52
             4F 47 52 41 4D
      002E36 0A                    1248 	.db 0x0a
      002E37 0D                    1249 	.db 0x0d
      002E38 00                    1250 	.db 0x00
                                   1251 	.area CSEG    (CODE)
                                   1252 	.area CONST   (CODE)
      002E39                       1253 ___str_2:
      002E39 49 4F 20 65 78 70 61  1254 	.ascii "IO expander initialized"
             6E 64 65 72 20 69 6E
             69 74 69 61 6C 69 7A
             65 64
      002E50 0A                    1255 	.db 0x0a
      002E51 0D                    1256 	.db 0x0d
      002E52 00                    1257 	.db 0x00
                                   1258 	.area CSEG    (CODE)
                                   1259 	.area CONST   (CODE)
      002E53                       1260 ___str_3:
      002E53 70 6F 72 74 20 30 20  1261 	.ascii "port 0 pin %d"
             70 69 6E 20 25 64
      002E60 0A                    1262 	.db 0x0a
      002E61 0D                    1263 	.db 0x0d
      002E62 00                    1264 	.db 0x00
                                   1265 	.area CSEG    (CODE)
                                   1266 	.area CONST   (CODE)
      002E63                       1267 ___str_4:
      002E63 41 43 4B 20 44 49 44  1268 	.ascii "ACK DID NOT ARRIVE"
             20 4E 4F 54 20 41 52
             52 49 56 45
      002E75 0A                    1269 	.db 0x0a
      002E76 0D                    1270 	.db 0x0d
      002E77 00                    1271 	.db 0x00
                                   1272 	.area CSEG    (CODE)
                                   1273 	.area XINIT   (CODE)
                                   1274 	.area CABS    (ABS,CODE)
