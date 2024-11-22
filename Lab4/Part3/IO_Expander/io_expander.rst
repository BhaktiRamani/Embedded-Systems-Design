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
                                     12 	.globl _getchar
                                     13 	.globl _putchar
                                     14 	.globl _printf
                                     15 	.globl _P5_7
                                     16 	.globl _P5_6
                                     17 	.globl _P5_5
                                     18 	.globl _P5_4
                                     19 	.globl _P5_3
                                     20 	.globl _P5_2
                                     21 	.globl _P5_1
                                     22 	.globl _P5_0
                                     23 	.globl _P4_7
                                     24 	.globl _P4_6
                                     25 	.globl _P4_5
                                     26 	.globl _P4_4
                                     27 	.globl _P4_3
                                     28 	.globl _P4_2
                                     29 	.globl _P4_1
                                     30 	.globl _P4_0
                                     31 	.globl _PX0L
                                     32 	.globl _PT0L
                                     33 	.globl _PX1L
                                     34 	.globl _PT1L
                                     35 	.globl _PSL
                                     36 	.globl _PT2L
                                     37 	.globl _PPCL
                                     38 	.globl _EC
                                     39 	.globl _CCF0
                                     40 	.globl _CCF1
                                     41 	.globl _CCF2
                                     42 	.globl _CCF3
                                     43 	.globl _CCF4
                                     44 	.globl _CR
                                     45 	.globl _CF
                                     46 	.globl _TF2
                                     47 	.globl _EXF2
                                     48 	.globl _RCLK
                                     49 	.globl _TCLK
                                     50 	.globl _EXEN2
                                     51 	.globl _TR2
                                     52 	.globl _C_T2
                                     53 	.globl _CP_RL2
                                     54 	.globl _T2CON_7
                                     55 	.globl _T2CON_6
                                     56 	.globl _T2CON_5
                                     57 	.globl _T2CON_4
                                     58 	.globl _T2CON_3
                                     59 	.globl _T2CON_2
                                     60 	.globl _T2CON_1
                                     61 	.globl _T2CON_0
                                     62 	.globl _PT2
                                     63 	.globl _ET2
                                     64 	.globl _CY
                                     65 	.globl _AC
                                     66 	.globl _F0
                                     67 	.globl _RS1
                                     68 	.globl _RS0
                                     69 	.globl _OV
                                     70 	.globl _F1
                                     71 	.globl _P
                                     72 	.globl _PS
                                     73 	.globl _PT1
                                     74 	.globl _PX1
                                     75 	.globl _PT0
                                     76 	.globl _PX0
                                     77 	.globl _RD
                                     78 	.globl _WR
                                     79 	.globl _T1
                                     80 	.globl _T0
                                     81 	.globl _INT1
                                     82 	.globl _INT0
                                     83 	.globl _TXD
                                     84 	.globl _RXD
                                     85 	.globl _P3_7
                                     86 	.globl _P3_6
                                     87 	.globl _P3_5
                                     88 	.globl _P3_4
                                     89 	.globl _P3_3
                                     90 	.globl _P3_2
                                     91 	.globl _P3_1
                                     92 	.globl _P3_0
                                     93 	.globl _EA
                                     94 	.globl _ES
                                     95 	.globl _ET1
                                     96 	.globl _EX1
                                     97 	.globl _ET0
                                     98 	.globl _EX0
                                     99 	.globl _P2_7
                                    100 	.globl _P2_6
                                    101 	.globl _P2_5
                                    102 	.globl _P2_4
                                    103 	.globl _P2_3
                                    104 	.globl _P2_2
                                    105 	.globl _P2_1
                                    106 	.globl _P2_0
                                    107 	.globl _SM0
                                    108 	.globl _SM1
                                    109 	.globl _SM2
                                    110 	.globl _REN
                                    111 	.globl _TB8
                                    112 	.globl _RB8
                                    113 	.globl _TI
                                    114 	.globl _RI
                                    115 	.globl _P1_7
                                    116 	.globl _P1_6
                                    117 	.globl _P1_5
                                    118 	.globl _P1_4
                                    119 	.globl _P1_3
                                    120 	.globl _P1_2
                                    121 	.globl _P1_1
                                    122 	.globl _P1_0
                                    123 	.globl _TF1
                                    124 	.globl _TR1
                                    125 	.globl _TF0
                                    126 	.globl _TR0
                                    127 	.globl _IE1
                                    128 	.globl _IT1
                                    129 	.globl _IE0
                                    130 	.globl _IT0
                                    131 	.globl _P0_7
                                    132 	.globl _P0_6
                                    133 	.globl _P0_5
                                    134 	.globl _P0_4
                                    135 	.globl _P0_3
                                    136 	.globl _P0_2
                                    137 	.globl _P0_1
                                    138 	.globl _P0_0
                                    139 	.globl _EECON
                                    140 	.globl _KBF
                                    141 	.globl _KBE
                                    142 	.globl _KBLS
                                    143 	.globl _BRL
                                    144 	.globl _BDRCON
                                    145 	.globl _T2MOD
                                    146 	.globl _SPDAT
                                    147 	.globl _SPSTA
                                    148 	.globl _SPCON
                                    149 	.globl _SADEN
                                    150 	.globl _SADDR
                                    151 	.globl _WDTPRG
                                    152 	.globl _WDTRST
                                    153 	.globl _P5
                                    154 	.globl _P4
                                    155 	.globl _IPH1
                                    156 	.globl _IPL1
                                    157 	.globl _IPH0
                                    158 	.globl _IPL0
                                    159 	.globl _IEN1
                                    160 	.globl _IEN0
                                    161 	.globl _CMOD
                                    162 	.globl _CL
                                    163 	.globl _CH
                                    164 	.globl _CCON
                                    165 	.globl _CCAPM4
                                    166 	.globl _CCAPM3
                                    167 	.globl _CCAPM2
                                    168 	.globl _CCAPM1
                                    169 	.globl _CCAPM0
                                    170 	.globl _CCAP4L
                                    171 	.globl _CCAP3L
                                    172 	.globl _CCAP2L
                                    173 	.globl _CCAP1L
                                    174 	.globl _CCAP0L
                                    175 	.globl _CCAP4H
                                    176 	.globl _CCAP3H
                                    177 	.globl _CCAP2H
                                    178 	.globl _CCAP1H
                                    179 	.globl _CCAP0H
                                    180 	.globl _CKCON1
                                    181 	.globl _CKCON0
                                    182 	.globl _CKRL
                                    183 	.globl _AUXR1
                                    184 	.globl _AUXR
                                    185 	.globl _TH2
                                    186 	.globl _TL2
                                    187 	.globl _RCAP2H
                                    188 	.globl _RCAP2L
                                    189 	.globl _T2CON
                                    190 	.globl _B
                                    191 	.globl _ACC
                                    192 	.globl _PSW
                                    193 	.globl _IP
                                    194 	.globl _P3
                                    195 	.globl _IE
                                    196 	.globl _P2
                                    197 	.globl _SBUF
                                    198 	.globl _SCON
                                    199 	.globl _P1
                                    200 	.globl _TH1
                                    201 	.globl _TH0
                                    202 	.globl _TL1
                                    203 	.globl _TL0
                                    204 	.globl _TMOD
                                    205 	.globl _TCON
                                    206 	.globl _PCON
                                    207 	.globl _DPH
                                    208 	.globl _DPL
                                    209 	.globl _SP
                                    210 	.globl _P0
                                    211 	.globl _pcf8574_set_pin_PARM_2
                                    212 	.globl _pcf8574_read_port
                                    213 	.globl _pcf8574_read_pin
                                    214 	.globl _pcf8574_write_port
                                    215 	.globl _pcf8574_set_pin
                                    216 	.globl _i2c_write
                                    217 	.globl _i2c_read
                                    218 	.globl _i2c_start
                                    219 	.globl _i2c_stop
                                    220 	.globl _i2c_delay
                                    221 ;--------------------------------------------------------
                                    222 ; special function registers
                                    223 ;--------------------------------------------------------
                                    224 	.area RSEG    (ABS,DATA)
      000000                        225 	.org 0x0000
                           000080   226 _P0	=	0x0080
                           000081   227 _SP	=	0x0081
                           000082   228 _DPL	=	0x0082
                           000083   229 _DPH	=	0x0083
                           000087   230 _PCON	=	0x0087
                           000088   231 _TCON	=	0x0088
                           000089   232 _TMOD	=	0x0089
                           00008A   233 _TL0	=	0x008a
                           00008B   234 _TL1	=	0x008b
                           00008C   235 _TH0	=	0x008c
                           00008D   236 _TH1	=	0x008d
                           000090   237 _P1	=	0x0090
                           000098   238 _SCON	=	0x0098
                           000099   239 _SBUF	=	0x0099
                           0000A0   240 _P2	=	0x00a0
                           0000A8   241 _IE	=	0x00a8
                           0000B0   242 _P3	=	0x00b0
                           0000B8   243 _IP	=	0x00b8
                           0000D0   244 _PSW	=	0x00d0
                           0000E0   245 _ACC	=	0x00e0
                           0000F0   246 _B	=	0x00f0
                           0000C8   247 _T2CON	=	0x00c8
                           0000CA   248 _RCAP2L	=	0x00ca
                           0000CB   249 _RCAP2H	=	0x00cb
                           0000CC   250 _TL2	=	0x00cc
                           0000CD   251 _TH2	=	0x00cd
                           00008E   252 _AUXR	=	0x008e
                           0000A2   253 _AUXR1	=	0x00a2
                           000097   254 _CKRL	=	0x0097
                           00008F   255 _CKCON0	=	0x008f
                           0000AF   256 _CKCON1	=	0x00af
                           0000FA   257 _CCAP0H	=	0x00fa
                           0000FB   258 _CCAP1H	=	0x00fb
                           0000FC   259 _CCAP2H	=	0x00fc
                           0000FD   260 _CCAP3H	=	0x00fd
                           0000FE   261 _CCAP4H	=	0x00fe
                           0000EA   262 _CCAP0L	=	0x00ea
                           0000EB   263 _CCAP1L	=	0x00eb
                           0000EC   264 _CCAP2L	=	0x00ec
                           0000ED   265 _CCAP3L	=	0x00ed
                           0000EE   266 _CCAP4L	=	0x00ee
                           0000DA   267 _CCAPM0	=	0x00da
                           0000DB   268 _CCAPM1	=	0x00db
                           0000DC   269 _CCAPM2	=	0x00dc
                           0000DD   270 _CCAPM3	=	0x00dd
                           0000DE   271 _CCAPM4	=	0x00de
                           0000D8   272 _CCON	=	0x00d8
                           0000F9   273 _CH	=	0x00f9
                           0000E9   274 _CL	=	0x00e9
                           0000D9   275 _CMOD	=	0x00d9
                           0000A8   276 _IEN0	=	0x00a8
                           0000B1   277 _IEN1	=	0x00b1
                           0000B8   278 _IPL0	=	0x00b8
                           0000B7   279 _IPH0	=	0x00b7
                           0000B2   280 _IPL1	=	0x00b2
                           0000B3   281 _IPH1	=	0x00b3
                           0000C0   282 _P4	=	0x00c0
                           0000E8   283 _P5	=	0x00e8
                           0000A6   284 _WDTRST	=	0x00a6
                           0000A7   285 _WDTPRG	=	0x00a7
                           0000A9   286 _SADDR	=	0x00a9
                           0000B9   287 _SADEN	=	0x00b9
                           0000C3   288 _SPCON	=	0x00c3
                           0000C4   289 _SPSTA	=	0x00c4
                           0000C5   290 _SPDAT	=	0x00c5
                           0000C9   291 _T2MOD	=	0x00c9
                           00009B   292 _BDRCON	=	0x009b
                           00009A   293 _BRL	=	0x009a
                           00009C   294 _KBLS	=	0x009c
                           00009D   295 _KBE	=	0x009d
                           00009E   296 _KBF	=	0x009e
                           0000D2   297 _EECON	=	0x00d2
                                    298 ;--------------------------------------------------------
                                    299 ; special function bits
                                    300 ;--------------------------------------------------------
                                    301 	.area RSEG    (ABS,DATA)
      000000                        302 	.org 0x0000
                           000080   303 _P0_0	=	0x0080
                           000081   304 _P0_1	=	0x0081
                           000082   305 _P0_2	=	0x0082
                           000083   306 _P0_3	=	0x0083
                           000084   307 _P0_4	=	0x0084
                           000085   308 _P0_5	=	0x0085
                           000086   309 _P0_6	=	0x0086
                           000087   310 _P0_7	=	0x0087
                           000088   311 _IT0	=	0x0088
                           000089   312 _IE0	=	0x0089
                           00008A   313 _IT1	=	0x008a
                           00008B   314 _IE1	=	0x008b
                           00008C   315 _TR0	=	0x008c
                           00008D   316 _TF0	=	0x008d
                           00008E   317 _TR1	=	0x008e
                           00008F   318 _TF1	=	0x008f
                           000090   319 _P1_0	=	0x0090
                           000091   320 _P1_1	=	0x0091
                           000092   321 _P1_2	=	0x0092
                           000093   322 _P1_3	=	0x0093
                           000094   323 _P1_4	=	0x0094
                           000095   324 _P1_5	=	0x0095
                           000096   325 _P1_6	=	0x0096
                           000097   326 _P1_7	=	0x0097
                           000098   327 _RI	=	0x0098
                           000099   328 _TI	=	0x0099
                           00009A   329 _RB8	=	0x009a
                           00009B   330 _TB8	=	0x009b
                           00009C   331 _REN	=	0x009c
                           00009D   332 _SM2	=	0x009d
                           00009E   333 _SM1	=	0x009e
                           00009F   334 _SM0	=	0x009f
                           0000A0   335 _P2_0	=	0x00a0
                           0000A1   336 _P2_1	=	0x00a1
                           0000A2   337 _P2_2	=	0x00a2
                           0000A3   338 _P2_3	=	0x00a3
                           0000A4   339 _P2_4	=	0x00a4
                           0000A5   340 _P2_5	=	0x00a5
                           0000A6   341 _P2_6	=	0x00a6
                           0000A7   342 _P2_7	=	0x00a7
                           0000A8   343 _EX0	=	0x00a8
                           0000A9   344 _ET0	=	0x00a9
                           0000AA   345 _EX1	=	0x00aa
                           0000AB   346 _ET1	=	0x00ab
                           0000AC   347 _ES	=	0x00ac
                           0000AF   348 _EA	=	0x00af
                           0000B0   349 _P3_0	=	0x00b0
                           0000B1   350 _P3_1	=	0x00b1
                           0000B2   351 _P3_2	=	0x00b2
                           0000B3   352 _P3_3	=	0x00b3
                           0000B4   353 _P3_4	=	0x00b4
                           0000B5   354 _P3_5	=	0x00b5
                           0000B6   355 _P3_6	=	0x00b6
                           0000B7   356 _P3_7	=	0x00b7
                           0000B0   357 _RXD	=	0x00b0
                           0000B1   358 _TXD	=	0x00b1
                           0000B2   359 _INT0	=	0x00b2
                           0000B3   360 _INT1	=	0x00b3
                           0000B4   361 _T0	=	0x00b4
                           0000B5   362 _T1	=	0x00b5
                           0000B6   363 _WR	=	0x00b6
                           0000B7   364 _RD	=	0x00b7
                           0000B8   365 _PX0	=	0x00b8
                           0000B9   366 _PT0	=	0x00b9
                           0000BA   367 _PX1	=	0x00ba
                           0000BB   368 _PT1	=	0x00bb
                           0000BC   369 _PS	=	0x00bc
                           0000D0   370 _P	=	0x00d0
                           0000D1   371 _F1	=	0x00d1
                           0000D2   372 _OV	=	0x00d2
                           0000D3   373 _RS0	=	0x00d3
                           0000D4   374 _RS1	=	0x00d4
                           0000D5   375 _F0	=	0x00d5
                           0000D6   376 _AC	=	0x00d6
                           0000D7   377 _CY	=	0x00d7
                           0000AD   378 _ET2	=	0x00ad
                           0000BD   379 _PT2	=	0x00bd
                           0000C8   380 _T2CON_0	=	0x00c8
                           0000C9   381 _T2CON_1	=	0x00c9
                           0000CA   382 _T2CON_2	=	0x00ca
                           0000CB   383 _T2CON_3	=	0x00cb
                           0000CC   384 _T2CON_4	=	0x00cc
                           0000CD   385 _T2CON_5	=	0x00cd
                           0000CE   386 _T2CON_6	=	0x00ce
                           0000CF   387 _T2CON_7	=	0x00cf
                           0000C8   388 _CP_RL2	=	0x00c8
                           0000C9   389 _C_T2	=	0x00c9
                           0000CA   390 _TR2	=	0x00ca
                           0000CB   391 _EXEN2	=	0x00cb
                           0000CC   392 _TCLK	=	0x00cc
                           0000CD   393 _RCLK	=	0x00cd
                           0000CE   394 _EXF2	=	0x00ce
                           0000CF   395 _TF2	=	0x00cf
                           0000DF   396 _CF	=	0x00df
                           0000DE   397 _CR	=	0x00de
                           0000DC   398 _CCF4	=	0x00dc
                           0000DB   399 _CCF3	=	0x00db
                           0000DA   400 _CCF2	=	0x00da
                           0000D9   401 _CCF1	=	0x00d9
                           0000D8   402 _CCF0	=	0x00d8
                           0000AE   403 _EC	=	0x00ae
                           0000BE   404 _PPCL	=	0x00be
                           0000BD   405 _PT2L	=	0x00bd
                           0000BC   406 _PSL	=	0x00bc
                           0000BB   407 _PT1L	=	0x00bb
                           0000BA   408 _PX1L	=	0x00ba
                           0000B9   409 _PT0L	=	0x00b9
                           0000B8   410 _PX0L	=	0x00b8
                           0000C0   411 _P4_0	=	0x00c0
                           0000C1   412 _P4_1	=	0x00c1
                           0000C2   413 _P4_2	=	0x00c2
                           0000C3   414 _P4_3	=	0x00c3
                           0000C4   415 _P4_4	=	0x00c4
                           0000C5   416 _P4_5	=	0x00c5
                           0000C6   417 _P4_6	=	0x00c6
                           0000C7   418 _P4_7	=	0x00c7
                           0000E8   419 _P5_0	=	0x00e8
                           0000E9   420 _P5_1	=	0x00e9
                           0000EA   421 _P5_2	=	0x00ea
                           0000EB   422 _P5_3	=	0x00eb
                           0000EC   423 _P5_4	=	0x00ec
                           0000ED   424 _P5_5	=	0x00ed
                           0000EE   425 _P5_6	=	0x00ee
                           0000EF   426 _P5_7	=	0x00ef
                                    427 ;--------------------------------------------------------
                                    428 ; overlayable register banks
                                    429 ;--------------------------------------------------------
                                    430 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        431 	.ds 8
                                    432 ;--------------------------------------------------------
                                    433 ; internal ram data
                                    434 ;--------------------------------------------------------
                                    435 	.area DSEG    (DATA)
                                    436 ;--------------------------------------------------------
                                    437 ; overlayable items in internal ram 
                                    438 ;--------------------------------------------------------
                                    439 ;--------------------------------------------------------
                                    440 ; Stack segment in internal ram 
                                    441 ;--------------------------------------------------------
                                    442 	.area	SSEG
      000014                        443 __start__stack:
      000014                        444 	.ds	1
                                    445 
                                    446 ;--------------------------------------------------------
                                    447 ; indirectly addressable internal ram data
                                    448 ;--------------------------------------------------------
                                    449 	.area ISEG    (DATA)
                                    450 ;--------------------------------------------------------
                                    451 ; absolute internal ram data
                                    452 ;--------------------------------------------------------
                                    453 	.area IABS    (ABS,DATA)
                                    454 	.area IABS    (ABS,DATA)
                                    455 ;--------------------------------------------------------
                                    456 ; bit data
                                    457 ;--------------------------------------------------------
                                    458 	.area BSEG    (BIT)
                                    459 ;--------------------------------------------------------
                                    460 ; paged external ram data
                                    461 ;--------------------------------------------------------
                                    462 	.area PSEG    (PAG,XDATA)
                                    463 ;--------------------------------------------------------
                                    464 ; external ram data
                                    465 ;--------------------------------------------------------
                                    466 	.area XSEG    (XDATA)
      000400                        467 _putchar_charToSend_65536_21:
      000400                        468 	.ds 2
      000402                        469 _pcf8574_read_pin_pin_65536_28:
      000402                        470 	.ds 1
      000403                        471 _pcf8574_write_port_value_65536_30:
      000403                        472 	.ds 1
      000404                        473 _pcf8574_set_pin_PARM_2:
      000404                        474 	.ds 1
      000405                        475 _pcf8574_set_pin_pin_65536_32:
      000405                        476 	.ds 1
      000406                        477 _pcf8574_set_pin_port_state_65536_33:
      000406                        478 	.ds 1
      000407                        479 _i2c_write_data_65536_36:
      000407                        480 	.ds 1
      000408                        481 _i2c_read_ACK_65536_41:
      000408                        482 	.ds 2
      00040A                        483 _i2c_read_buff_65536_42:
      00040A                        484 	.ds 1
                                    485 ;--------------------------------------------------------
                                    486 ; absolute external ram data
                                    487 ;--------------------------------------------------------
                                    488 	.area XABS    (ABS,XDATA)
                                    489 ;--------------------------------------------------------
                                    490 ; external initialized ram data
                                    491 ;--------------------------------------------------------
                                    492 	.area XISEG   (XDATA)
                                    493 	.area HOME    (CODE)
                                    494 	.area GSINIT0 (CODE)
                                    495 	.area GSINIT1 (CODE)
                                    496 	.area GSINIT2 (CODE)
                                    497 	.area GSINIT3 (CODE)
                                    498 	.area GSINIT4 (CODE)
                                    499 	.area GSINIT5 (CODE)
                                    500 	.area GSINIT  (CODE)
                                    501 	.area GSFINAL (CODE)
                                    502 	.area CSEG    (CODE)
                                    503 ;--------------------------------------------------------
                                    504 ; interrupt vector 
                                    505 ;--------------------------------------------------------
                                    506 	.area HOME    (CODE)
      003000                        507 __interrupt_vect:
      003000 02 30 06         [24]  508 	ljmp	__sdcc_gsinit_startup
                                    509 ;--------------------------------------------------------
                                    510 ; global & static initialisations
                                    511 ;--------------------------------------------------------
                                    512 	.area HOME    (CODE)
                                    513 	.area GSINIT  (CODE)
                                    514 	.area GSFINAL (CODE)
                                    515 	.area GSINIT  (CODE)
                                    516 	.globl __sdcc_gsinit_startup
                                    517 	.globl __sdcc_program_startup
                                    518 	.globl __start__stack
                                    519 	.globl __mcs51_genXINIT
                                    520 	.globl __mcs51_genXRAMCLEAR
                                    521 	.globl __mcs51_genRAMCLEAR
                                    522 	.area GSFINAL (CODE)
      00305F 02 30 03         [24]  523 	ljmp	__sdcc_program_startup
                                    524 ;--------------------------------------------------------
                                    525 ; Home
                                    526 ;--------------------------------------------------------
                                    527 	.area HOME    (CODE)
                                    528 	.area HOME    (CODE)
      003003                        529 __sdcc_program_startup:
      003003 02 30 8F         [24]  530 	ljmp	_main
                                    531 ;	return from main will return to caller
                                    532 ;--------------------------------------------------------
                                    533 ; code
                                    534 ;--------------------------------------------------------
                                    535 	.area CSEG    (CODE)
                                    536 ;------------------------------------------------------------
                                    537 ;Allocation info for local variables in function 'putchar'
                                    538 ;------------------------------------------------------------
                                    539 ;charToSend                Allocated with name '_putchar_charToSend_65536_21'
                                    540 ;------------------------------------------------------------
                                    541 ;	io_expander.c:38: int putchar(int charToSend) {
                                    542 ;	-----------------------------------------
                                    543 ;	 function putchar
                                    544 ;	-----------------------------------------
      003062                        545 _putchar:
                           000007   546 	ar7 = 0x07
                           000006   547 	ar6 = 0x06
                           000005   548 	ar5 = 0x05
                           000004   549 	ar4 = 0x04
                           000003   550 	ar3 = 0x03
                           000002   551 	ar2 = 0x02
                           000001   552 	ar1 = 0x01
                           000000   553 	ar0 = 0x00
      003062 AF 83            [24]  554 	mov	r7,dph
      003064 E5 82            [12]  555 	mov	a,dpl
      003066 90 04 00         [24]  556 	mov	dptr,#_putchar_charToSend_65536_21
      003069 F0               [24]  557 	movx	@dptr,a
      00306A EF               [12]  558 	mov	a,r7
      00306B A3               [24]  559 	inc	dptr
      00306C F0               [24]  560 	movx	@dptr,a
                                    561 ;	io_expander.c:39: SBUF = charToSend;       /* Load character into serial buffer */
      00306D 90 04 00         [24]  562 	mov	dptr,#_putchar_charToSend_65536_21
      003070 E0               [24]  563 	movx	a,@dptr
      003071 FE               [12]  564 	mov	r6,a
      003072 A3               [24]  565 	inc	dptr
      003073 E0               [24]  566 	movx	a,@dptr
      003074 FF               [12]  567 	mov	r7,a
      003075 8E 99            [24]  568 	mov	_SBUF,r6
                                    569 ;	io_expander.c:40: while (!TI);             /* Wait for transmission completion */
      003077                        570 00101$:
                                    571 ;	io_expander.c:41: TI = 0;                  /* Clear transmission flag */
                                    572 ;	assignBit
      003077 10 99 02         [24]  573 	jbc	_TI,00114$
      00307A 80 FB            [24]  574 	sjmp	00101$
      00307C                        575 00114$:
                                    576 ;	io_expander.c:42: return charToSend;
      00307C 8E 82            [24]  577 	mov	dpl,r6
      00307E 8F 83            [24]  578 	mov	dph,r7
                                    579 ;	io_expander.c:43: }
      003080 22               [24]  580 	ret
                                    581 ;------------------------------------------------------------
                                    582 ;Allocation info for local variables in function 'getchar'
                                    583 ;------------------------------------------------------------
                                    584 ;	io_expander.c:49: int getchar(void) {
                                    585 ;	-----------------------------------------
                                    586 ;	 function getchar
                                    587 ;	-----------------------------------------
      003081                        588 _getchar:
                                    589 ;	io_expander.c:50: while (!RI);             /* Wait for reception completion */
      003081                        590 00101$:
                                    591 ;	io_expander.c:51: RI = 0;                  /* Clear reception flag */
                                    592 ;	assignBit
      003081 10 98 02         [24]  593 	jbc	_RI,00114$
      003084 80 FB            [24]  594 	sjmp	00101$
      003086                        595 00114$:
                                    596 ;	io_expander.c:52: return SBUF;             /* Return received character */
      003086 AE 99            [24]  597 	mov	r6,_SBUF
      003088 7F 00            [12]  598 	mov	r7,#0x00
      00308A 8E 82            [24]  599 	mov	dpl,r6
      00308C 8F 83            [24]  600 	mov	dph,r7
                                    601 ;	io_expander.c:53: }
      00308E 22               [24]  602 	ret
                                    603 ;------------------------------------------------------------
                                    604 ;Allocation info for local variables in function 'main'
                                    605 ;------------------------------------------------------------
                                    606 ;	io_expander.c:55: int main()
                                    607 ;	-----------------------------------------
                                    608 ;	 function main
                                    609 ;	-----------------------------------------
      00308F                        610 _main:
                                    611 ;	io_expander.c:57: P1 &= ~(1<<3);  // Set P1.3 as output
      00308F 53 90 F7         [24]  612 	anl	_P1,#0xf7
                                    613 ;	io_expander.c:58: P1 &= ~(1<<4);  // Set P1.4 as output
      003092 53 90 EF         [24]  614 	anl	_P1,#0xef
                                    615 ;	io_expander.c:60: printf("IO EXPANDER PROGRAM\n\r");
      003095 74 4F            [12]  616 	mov	a,#___str_0
      003097 C0 E0            [24]  617 	push	acc
      003099 74 3D            [12]  618 	mov	a,#(___str_0 >> 8)
      00309B C0 E0            [24]  619 	push	acc
      00309D 74 80            [12]  620 	mov	a,#0x80
      00309F C0 E0            [24]  621 	push	acc
      0030A1 12 32 ED         [24]  622 	lcall	_printf
      0030A4 15 81            [12]  623 	dec	sp
      0030A6 15 81            [12]  624 	dec	sp
      0030A8 15 81            [12]  625 	dec	sp
                                    626 ;	io_expander.c:63: i2c_start();
      0030AA 12 32 66         [24]  627 	lcall	_i2c_start
                                    628 ;	io_expander.c:64: i2c_write(PCF8574_I2C_WRITE_ADDRESS);
      0030AD 75 82 70         [24]  629 	mov	dpl,#0x70
      0030B0 12 31 79         [24]  630 	lcall	_i2c_write
                                    631 ;	io_expander.c:65: i2c_write(0xFF);
      0030B3 75 82 FF         [24]  632 	mov	dpl,#0xff
      0030B6 12 31 79         [24]  633 	lcall	_i2c_write
                                    634 ;	io_expander.c:67: i2c_stop();
      0030B9 12 32 7B         [24]  635 	lcall	_i2c_stop
                                    636 ;	io_expander.c:69: printf("IO expander initialized\n\r");
      0030BC 74 65            [12]  637 	mov	a,#___str_1
      0030BE C0 E0            [24]  638 	push	acc
      0030C0 74 3D            [12]  639 	mov	a,#(___str_1 >> 8)
      0030C2 C0 E0            [24]  640 	push	acc
      0030C4 74 80            [12]  641 	mov	a,#0x80
      0030C6 C0 E0            [24]  642 	push	acc
      0030C8 12 32 ED         [24]  643 	lcall	_printf
      0030CB 15 81            [12]  644 	dec	sp
      0030CD 15 81            [12]  645 	dec	sp
      0030CF 15 81            [12]  646 	dec	sp
                                    647 ;	io_expander.c:90: }
      0030D1 22               [24]  648 	ret
                                    649 ;------------------------------------------------------------
                                    650 ;Allocation info for local variables in function 'pcf8574_read_port'
                                    651 ;------------------------------------------------------------
                                    652 ;data                      Allocated with name '_pcf8574_read_port_data_65536_27'
                                    653 ;------------------------------------------------------------
                                    654 ;	io_expander.c:93: uint8_t pcf8574_read_port(void) {
                                    655 ;	-----------------------------------------
                                    656 ;	 function pcf8574_read_port
                                    657 ;	-----------------------------------------
      0030D2                        658 _pcf8574_read_port:
                                    659 ;	io_expander.c:95: i2c_start();
      0030D2 12 32 66         [24]  660 	lcall	_i2c_start
                                    661 ;	io_expander.c:96: i2c_write(IO_EXPANDER_ID | READ);
      0030D5 75 82 39         [24]  662 	mov	dpl,#0x39
      0030D8 12 31 79         [24]  663 	lcall	_i2c_write
                                    664 ;	io_expander.c:97: data = i2c_read(0);
      0030DB 90 00 00         [24]  665 	mov	dptr,#0x0000
      0030DE 12 31 E1         [24]  666 	lcall	_i2c_read
      0030E1 AE 82            [24]  667 	mov	r6,dpl
                                    668 ;	io_expander.c:98: i2c_stop();
      0030E3 C0 06            [24]  669 	push	ar6
      0030E5 12 32 7B         [24]  670 	lcall	_i2c_stop
      0030E8 D0 06            [24]  671 	pop	ar6
                                    672 ;	io_expander.c:99: return data;
      0030EA 8E 82            [24]  673 	mov	dpl,r6
                                    674 ;	io_expander.c:100: }
      0030EC 22               [24]  675 	ret
                                    676 ;------------------------------------------------------------
                                    677 ;Allocation info for local variables in function 'pcf8574_read_pin'
                                    678 ;------------------------------------------------------------
                                    679 ;pin                       Allocated with name '_pcf8574_read_pin_pin_65536_28'
                                    680 ;port_state                Allocated with name '_pcf8574_read_pin_port_state_65536_29'
                                    681 ;------------------------------------------------------------
                                    682 ;	io_expander.c:102: uint8_t pcf8574_read_pin(uint8_t pin) {
                                    683 ;	-----------------------------------------
                                    684 ;	 function pcf8574_read_pin
                                    685 ;	-----------------------------------------
      0030ED                        686 _pcf8574_read_pin:
      0030ED E5 82            [12]  687 	mov	a,dpl
      0030EF 90 04 02         [24]  688 	mov	dptr,#_pcf8574_read_pin_pin_65536_28
      0030F2 F0               [24]  689 	movx	@dptr,a
                                    690 ;	io_expander.c:103: uint8_t port_state = pcf8574_read_port();
      0030F3 12 30 D2         [24]  691 	lcall	_pcf8574_read_port
      0030F6 AF 82            [24]  692 	mov	r7,dpl
                                    693 ;	io_expander.c:104: return (port_state >> pin) & 0x01;
      0030F8 90 04 02         [24]  694 	mov	dptr,#_pcf8574_read_pin_pin_65536_28
      0030FB E0               [24]  695 	movx	a,@dptr
      0030FC FE               [12]  696 	mov	r6,a
      0030FD 8E F0            [24]  697 	mov	b,r6
      0030FF 05 F0            [12]  698 	inc	b
      003101 EF               [12]  699 	mov	a,r7
      003102 80 02            [24]  700 	sjmp	00104$
      003104                        701 00103$:
      003104 C3               [12]  702 	clr	c
      003105 13               [12]  703 	rrc	a
      003106                        704 00104$:
      003106 D5 F0 FB         [24]  705 	djnz	b,00103$
      003109 54 01            [12]  706 	anl	a,#0x01
                                    707 ;	io_expander.c:105: }
      00310B F5 82            [12]  708 	mov	dpl,a
      00310D 22               [24]  709 	ret
                                    710 ;------------------------------------------------------------
                                    711 ;Allocation info for local variables in function 'pcf8574_write_port'
                                    712 ;------------------------------------------------------------
                                    713 ;value                     Allocated with name '_pcf8574_write_port_value_65536_30'
                                    714 ;------------------------------------------------------------
                                    715 ;	io_expander.c:107: void pcf8574_write_port(uint8_t value)
                                    716 ;	-----------------------------------------
                                    717 ;	 function pcf8574_write_port
                                    718 ;	-----------------------------------------
      00310E                        719 _pcf8574_write_port:
      00310E E5 82            [12]  720 	mov	a,dpl
      003110 90 04 03         [24]  721 	mov	dptr,#_pcf8574_write_port_value_65536_30
      003113 F0               [24]  722 	movx	@dptr,a
                                    723 ;	io_expander.c:109: i2c_start();
      003114 12 32 66         [24]  724 	lcall	_i2c_start
                                    725 ;	io_expander.c:110: i2c_write(IO_EXPANDER_ID | WRITE);
      003117 75 82 38         [24]  726 	mov	dpl,#0x38
      00311A 12 31 79         [24]  727 	lcall	_i2c_write
                                    728 ;	io_expander.c:111: i2c_write(value);
      00311D 90 04 03         [24]  729 	mov	dptr,#_pcf8574_write_port_value_65536_30
      003120 E0               [24]  730 	movx	a,@dptr
      003121 F5 82            [12]  731 	mov	dpl,a
      003123 12 31 79         [24]  732 	lcall	_i2c_write
                                    733 ;	io_expander.c:112: i2c_stop();
                                    734 ;	io_expander.c:113: }
      003126 02 32 7B         [24]  735 	ljmp	_i2c_stop
                                    736 ;------------------------------------------------------------
                                    737 ;Allocation info for local variables in function 'pcf8574_set_pin'
                                    738 ;------------------------------------------------------------
                                    739 ;value                     Allocated with name '_pcf8574_set_pin_PARM_2'
                                    740 ;pin                       Allocated with name '_pcf8574_set_pin_pin_65536_32'
                                    741 ;port_state                Allocated with name '_pcf8574_set_pin_port_state_65536_33'
                                    742 ;------------------------------------------------------------
                                    743 ;	io_expander.c:115: void pcf8574_set_pin(uint8_t pin, uint8_t value) {
                                    744 ;	-----------------------------------------
                                    745 ;	 function pcf8574_set_pin
                                    746 ;	-----------------------------------------
      003129                        747 _pcf8574_set_pin:
      003129 E5 82            [12]  748 	mov	a,dpl
      00312B 90 04 05         [24]  749 	mov	dptr,#_pcf8574_set_pin_pin_65536_32
      00312E F0               [24]  750 	movx	@dptr,a
                                    751 ;	io_expander.c:116: uint8_t port_state = pcf8574_read_port();
      00312F 12 30 D2         [24]  752 	lcall	_pcf8574_read_port
      003132 AF 82            [24]  753 	mov	r7,dpl
                                    754 ;	io_expander.c:117: if (value) {
      003134 90 04 04         [24]  755 	mov	dptr,#_pcf8574_set_pin_PARM_2
      003137 E0               [24]  756 	movx	a,@dptr
      003138 60 1D            [24]  757 	jz	00102$
                                    758 ;	io_expander.c:118: port_state |= (1 << pin);  // Set pin high
      00313A 90 04 05         [24]  759 	mov	dptr,#_pcf8574_set_pin_pin_65536_32
      00313D E0               [24]  760 	movx	a,@dptr
      00313E FE               [12]  761 	mov	r6,a
      00313F 8E F0            [24]  762 	mov	b,r6
      003141 05 F0            [12]  763 	inc	b
      003143 74 01            [12]  764 	mov	a,#0x01
      003145 80 02            [24]  765 	sjmp	00113$
      003147                        766 00111$:
      003147 25 E0            [12]  767 	add	a,acc
      003149                        768 00113$:
      003149 D5 F0 FB         [24]  769 	djnz	b,00111$
      00314C FE               [12]  770 	mov	r6,a
      00314D 8F 05            [24]  771 	mov	ar5,r7
      00314F 90 04 06         [24]  772 	mov	dptr,#_pcf8574_set_pin_port_state_65536_33
      003152 EE               [12]  773 	mov	a,r6
      003153 4D               [12]  774 	orl	a,r5
      003154 F0               [24]  775 	movx	@dptr,a
      003155 80 19            [24]  776 	sjmp	00103$
      003157                        777 00102$:
                                    778 ;	io_expander.c:120: port_state &= ~(1 << pin); // Set pin low
      003157 90 04 05         [24]  779 	mov	dptr,#_pcf8574_set_pin_pin_65536_32
      00315A E0               [24]  780 	movx	a,@dptr
      00315B FE               [12]  781 	mov	r6,a
      00315C 8E F0            [24]  782 	mov	b,r6
      00315E 05 F0            [12]  783 	inc	b
      003160 74 01            [12]  784 	mov	a,#0x01
      003162 80 02            [24]  785 	sjmp	00116$
      003164                        786 00114$:
      003164 25 E0            [12]  787 	add	a,acc
      003166                        788 00116$:
      003166 D5 F0 FB         [24]  789 	djnz	b,00114$
      003169 F4               [12]  790 	cpl	a
      00316A FE               [12]  791 	mov	r6,a
      00316B 90 04 06         [24]  792 	mov	dptr,#_pcf8574_set_pin_port_state_65536_33
      00316E 5F               [12]  793 	anl	a,r7
      00316F F0               [24]  794 	movx	@dptr,a
      003170                        795 00103$:
                                    796 ;	io_expander.c:122: pcf8574_write_port(port_state);
      003170 90 04 06         [24]  797 	mov	dptr,#_pcf8574_set_pin_port_state_65536_33
      003173 E0               [24]  798 	movx	a,@dptr
      003174 F5 82            [12]  799 	mov	dpl,a
                                    800 ;	io_expander.c:123: }
      003176 02 31 0E         [24]  801 	ljmp	_pcf8574_write_port
                                    802 ;------------------------------------------------------------
                                    803 ;Allocation info for local variables in function 'i2c_write'
                                    804 ;------------------------------------------------------------
                                    805 ;data                      Allocated with name '_i2c_write_data_65536_36'
                                    806 ;i                         Allocated with name '_i2c_write_i_65536_37'
                                    807 ;------------------------------------------------------------
                                    808 ;	io_expander.c:133: int i2c_write(unsigned char data)
                                    809 ;	-----------------------------------------
                                    810 ;	 function i2c_write
                                    811 ;	-----------------------------------------
      003179                        812 _i2c_write:
      003179 E5 82            [12]  813 	mov	a,dpl
      00317B 90 04 07         [24]  814 	mov	dptr,#_i2c_write_data_65536_36
      00317E F0               [24]  815 	movx	@dptr,a
                                    816 ;	io_expander.c:137: for(i=0;i<=7;i++)
      00317F 7E 00            [12]  817 	mov	r6,#0x00
      003181 7F 00            [12]  818 	mov	r7,#0x00
      003183                        819 00104$:
                                    820 ;	io_expander.c:139: SDA = (data & 0x80) ? 1 : 0;    //msb first
      003183 90 04 07         [24]  821 	mov	dptr,#_i2c_write_data_65536_36
      003186 E0               [24]  822 	movx	a,@dptr
      003187 FD               [12]  823 	mov	r5,a
      003188 23               [12]  824 	rl	a
      003189 54 01            [12]  825 	anl	a,#0x01
      00318B 24 FF            [12]  826 	add	a,#0xff
      00318D 92 94            [24]  827 	mov	_P1_4,c
                                    828 ;	io_expander.c:140: i2c_delay();        // Setup time for data
      00318F C0 07            [24]  829 	push	ar7
      003191 C0 06            [24]  830 	push	ar6
      003193 C0 05            [24]  831 	push	ar5
      003195 12 32 88         [24]  832 	lcall	_i2c_delay
                                    833 ;	io_expander.c:141: SCL=1;
                                    834 ;	assignBit
      003198 D2 93            [12]  835 	setb	_P1_3
                                    836 ;	io_expander.c:142: i2c_delay();        // Hold time for clock
      00319A 12 32 88         [24]  837 	lcall	_i2c_delay
      00319D D0 05            [24]  838 	pop	ar5
      00319F D0 06            [24]  839 	pop	ar6
      0031A1 D0 07            [24]  840 	pop	ar7
                                    841 ;	io_expander.c:143: SCL=0;
                                    842 ;	assignBit
      0031A3 C2 93            [12]  843 	clr	_P1_3
                                    844 ;	io_expander.c:144: data = data << 1;
      0031A5 ED               [12]  845 	mov	a,r5
      0031A6 2D               [12]  846 	add	a,r5
      0031A7 90 04 07         [24]  847 	mov	dptr,#_i2c_write_data_65536_36
      0031AA F0               [24]  848 	movx	@dptr,a
                                    849 ;	io_expander.c:137: for(i=0;i<=7;i++)
      0031AB 0E               [12]  850 	inc	r6
      0031AC BE 00 01         [24]  851 	cjne	r6,#0x00,00121$
      0031AF 0F               [12]  852 	inc	r7
      0031B0                        853 00121$:
      0031B0 C3               [12]  854 	clr	c
      0031B1 74 07            [12]  855 	mov	a,#0x07
      0031B3 9E               [12]  856 	subb	a,r6
      0031B4 E4               [12]  857 	clr	a
      0031B5 9F               [12]  858 	subb	a,r7
      0031B6 50 CB            [24]  859 	jnc	00104$
                                    860 ;	io_expander.c:148: SDA = 1;            // Release SDA for slave
                                    861 ;	assignBit
      0031B8 D2 94            [12]  862 	setb	_P1_4
                                    863 ;	io_expander.c:149: SCL = 1;            // 9th clock pulse for ACK
                                    864 ;	assignBit
      0031BA D2 93            [12]  865 	setb	_P1_3
                                    866 ;	io_expander.c:150: i2c_delay();
      0031BC 12 32 88         [24]  867 	lcall	_i2c_delay
                                    868 ;	io_expander.c:151: if(SDA == 1)        // If SDA is still high, no ACK received
      0031BF 30 94 19         [24]  869 	jnb	_P1_4,00103$
                                    870 ;	io_expander.c:154: printf("ACK DID NOT ARRIVE\n\r");
      0031C2 74 7F            [12]  871 	mov	a,#___str_2
      0031C4 C0 E0            [24]  872 	push	acc
      0031C6 74 3D            [12]  873 	mov	a,#(___str_2 >> 8)
      0031C8 C0 E0            [24]  874 	push	acc
      0031CA 74 80            [12]  875 	mov	a,#0x80
      0031CC C0 E0            [24]  876 	push	acc
      0031CE 12 32 ED         [24]  877 	lcall	_printf
      0031D1 15 81            [12]  878 	dec	sp
      0031D3 15 81            [12]  879 	dec	sp
      0031D5 15 81            [12]  880 	dec	sp
                                    881 ;	io_expander.c:155: return 0;       // Error
      0031D7 90 00 00         [24]  882 	mov	dptr,#0x0000
      0031DA 22               [24]  883 	ret
      0031DB                        884 00103$:
                                    885 ;	io_expander.c:157: SCL = 0;
                                    886 ;	assignBit
      0031DB C2 93            [12]  887 	clr	_P1_3
                                    888 ;	io_expander.c:159: return 1;           // Success
      0031DD 90 00 01         [24]  889 	mov	dptr,#0x0001
                                    890 ;	io_expander.c:161: }
      0031E0 22               [24]  891 	ret
                                    892 ;------------------------------------------------------------
                                    893 ;Allocation info for local variables in function 'i2c_read'
                                    894 ;------------------------------------------------------------
                                    895 ;ACK                       Allocated with name '_i2c_read_ACK_65536_41'
                                    896 ;buff                      Allocated with name '_i2c_read_buff_65536_42'
                                    897 ;i                         Allocated with name '_i2c_read_i_131072_43'
                                    898 ;------------------------------------------------------------
                                    899 ;	io_expander.c:171: int i2c_read(int ACK)
                                    900 ;	-----------------------------------------
                                    901 ;	 function i2c_read
                                    902 ;	-----------------------------------------
      0031E1                        903 _i2c_read:
      0031E1 AF 83            [24]  904 	mov	r7,dph
      0031E3 E5 82            [12]  905 	mov	a,dpl
      0031E5 90 04 08         [24]  906 	mov	dptr,#_i2c_read_ACK_65536_41
      0031E8 F0               [24]  907 	movx	@dptr,a
      0031E9 EF               [12]  908 	mov	a,r7
      0031EA A3               [24]  909 	inc	dptr
      0031EB F0               [24]  910 	movx	@dptr,a
                                    911 ;	io_expander.c:173: unsigned char buff=0;
      0031EC 90 04 0A         [24]  912 	mov	dptr,#_i2c_read_buff_65536_42
      0031EF E4               [12]  913 	clr	a
      0031F0 F0               [24]  914 	movx	@dptr,a
                                    915 ;	io_expander.c:174: SCL = 0;
                                    916 ;	assignBit
      0031F1 C2 93            [12]  917 	clr	_P1_3
                                    918 ;	io_expander.c:175: for(int i=0;i<8;i++)
      0031F3 7E 00            [12]  919 	mov	r6,#0x00
      0031F5 7F 00            [12]  920 	mov	r7,#0x00
      0031F7                        921 00103$:
      0031F7 C3               [12]  922 	clr	c
      0031F8 EE               [12]  923 	mov	a,r6
      0031F9 94 08            [12]  924 	subb	a,#0x08
      0031FB EF               [12]  925 	mov	a,r7
      0031FC 64 80            [12]  926 	xrl	a,#0x80
      0031FE 94 80            [12]  927 	subb	a,#0x80
      003200 50 40            [24]  928 	jnc	00101$
                                    929 ;	io_expander.c:177: SCL = 1;
                                    930 ;	assignBit
      003202 D2 93            [12]  931 	setb	_P1_3
                                    932 ;	io_expander.c:178: i2c_delay();
      003204 C0 07            [24]  933 	push	ar7
      003206 C0 06            [24]  934 	push	ar6
      003208 12 32 88         [24]  935 	lcall	_i2c_delay
      00320B D0 06            [24]  936 	pop	ar6
      00320D D0 07            [24]  937 	pop	ar7
                                    938 ;	io_expander.c:179: buff |= (SDA << (7 - i));
      00320F A2 94            [12]  939 	mov	c,_P1_4
      003211 E4               [12]  940 	clr	a
      003212 33               [12]  941 	rlc	a
      003213 FD               [12]  942 	mov	r5,a
      003214 8E 04            [24]  943 	mov	ar4,r6
      003216 74 07            [12]  944 	mov	a,#0x07
      003218 C3               [12]  945 	clr	c
      003219 9C               [12]  946 	subb	a,r4
      00321A FC               [12]  947 	mov	r4,a
      00321B 8C F0            [24]  948 	mov	b,r4
      00321D 05 F0            [12]  949 	inc	b
      00321F ED               [12]  950 	mov	a,r5
      003220 80 02            [24]  951 	sjmp	00119$
      003222                        952 00117$:
      003222 25 E0            [12]  953 	add	a,acc
      003224                        954 00119$:
      003224 D5 F0 FB         [24]  955 	djnz	b,00117$
      003227 FC               [12]  956 	mov	r4,a
      003228 90 04 0A         [24]  957 	mov	dptr,#_i2c_read_buff_65536_42
      00322B E0               [24]  958 	movx	a,@dptr
      00322C 4C               [12]  959 	orl	a,r4
      00322D F0               [24]  960 	movx	@dptr,a
                                    961 ;	io_expander.c:180: i2c_delay();
      00322E C0 07            [24]  962 	push	ar7
      003230 C0 06            [24]  963 	push	ar6
      003232 12 32 88         [24]  964 	lcall	_i2c_delay
      003235 D0 06            [24]  965 	pop	ar6
      003237 D0 07            [24]  966 	pop	ar7
                                    967 ;	io_expander.c:181: SCL=0;
                                    968 ;	assignBit
      003239 C2 93            [12]  969 	clr	_P1_3
                                    970 ;	io_expander.c:175: for(int i=0;i<8;i++)
      00323B 0E               [12]  971 	inc	r6
      00323C BE 00 B8         [24]  972 	cjne	r6,#0x00,00103$
      00323F 0F               [12]  973 	inc	r7
      003240 80 B5            [24]  974 	sjmp	00103$
      003242                        975 00101$:
                                    976 ;	io_expander.c:185: SDA = !ACK;         // ACK = 0, NACK = 1
      003242 90 04 08         [24]  977 	mov	dptr,#_i2c_read_ACK_65536_41
      003245 E0               [24]  978 	movx	a,@dptr
      003246 FE               [12]  979 	mov	r6,a
      003247 A3               [24]  980 	inc	dptr
      003248 E0               [24]  981 	movx	a,@dptr
      003249 4E               [12]  982 	orl	a,r6
      00324A B4 01 00         [24]  983 	cjne	a,#0x01,00121$
      00324D                        984 00121$:
      00324D E4               [12]  985 	clr	a
      00324E 33               [12]  986 	rlc	a
      00324F 24 FF            [12]  987 	add	a,#0xff
      003251 92 94            [24]  988 	mov	_P1_4,c
                                    989 ;	io_expander.c:186: SCL = 1;
                                    990 ;	assignBit
      003253 D2 93            [12]  991 	setb	_P1_3
                                    992 ;	io_expander.c:187: i2c_delay();
      003255 12 32 88         [24]  993 	lcall	_i2c_delay
                                    994 ;	io_expander.c:188: SCL = 0;
                                    995 ;	assignBit
      003258 C2 93            [12]  996 	clr	_P1_3
                                    997 ;	io_expander.c:190: return buff;
      00325A 90 04 0A         [24]  998 	mov	dptr,#_i2c_read_buff_65536_42
      00325D E0               [24]  999 	movx	a,@dptr
      00325E FF               [12] 1000 	mov	r7,a
      00325F 7E 00            [12] 1001 	mov	r6,#0x00
      003261 8F 82            [24] 1002 	mov	dpl,r7
      003263 8E 83            [24] 1003 	mov	dph,r6
                                   1004 ;	io_expander.c:191: }
      003265 22               [24] 1005 	ret
                                   1006 ;------------------------------------------------------------
                                   1007 ;Allocation info for local variables in function 'i2c_start'
                                   1008 ;------------------------------------------------------------
                                   1009 ;	io_expander.c:198: void i2c_start(void)
                                   1010 ;	-----------------------------------------
                                   1011 ;	 function i2c_start
                                   1012 ;	-----------------------------------------
      003266                       1013 _i2c_start:
                                   1014 ;	io_expander.c:200: i2c_delay();
      003266 12 32 88         [24] 1015 	lcall	_i2c_delay
                                   1016 ;	io_expander.c:201: SDA = 1;
                                   1017 ;	assignBit
      003269 D2 94            [12] 1018 	setb	_P1_4
                                   1019 ;	io_expander.c:202: i2c_delay();
      00326B 12 32 88         [24] 1020 	lcall	_i2c_delay
                                   1021 ;	io_expander.c:203: SCL = 1;
                                   1022 ;	assignBit
      00326E D2 93            [12] 1023 	setb	_P1_3
                                   1024 ;	io_expander.c:204: i2c_delay();
      003270 12 32 88         [24] 1025 	lcall	_i2c_delay
                                   1026 ;	io_expander.c:205: SDA = 0;
                                   1027 ;	assignBit
      003273 C2 94            [12] 1028 	clr	_P1_4
                                   1029 ;	io_expander.c:206: i2c_delay();
      003275 12 32 88         [24] 1030 	lcall	_i2c_delay
                                   1031 ;	io_expander.c:207: SCL = 0;
                                   1032 ;	assignBit
      003278 C2 93            [12] 1033 	clr	_P1_3
                                   1034 ;	io_expander.c:208: }
      00327A 22               [24] 1035 	ret
                                   1036 ;------------------------------------------------------------
                                   1037 ;Allocation info for local variables in function 'i2c_stop'
                                   1038 ;------------------------------------------------------------
                                   1039 ;	io_expander.c:215: void i2c_stop(void)
                                   1040 ;	-----------------------------------------
                                   1041 ;	 function i2c_stop
                                   1042 ;	-----------------------------------------
      00327B                       1043 _i2c_stop:
                                   1044 ;	io_expander.c:217: SDA = 0;
                                   1045 ;	assignBit
      00327B C2 94            [12] 1046 	clr	_P1_4
                                   1047 ;	io_expander.c:218: i2c_delay();
      00327D 12 32 88         [24] 1048 	lcall	_i2c_delay
                                   1049 ;	io_expander.c:219: SCL = 1;
                                   1050 ;	assignBit
      003280 D2 93            [12] 1051 	setb	_P1_3
                                   1052 ;	io_expander.c:220: i2c_delay();
      003282 12 32 88         [24] 1053 	lcall	_i2c_delay
                                   1054 ;	io_expander.c:221: SDA = 1; 
                                   1055 ;	assignBit
      003285 D2 94            [12] 1056 	setb	_P1_4
                                   1057 ;	io_expander.c:222: }
      003287 22               [24] 1058 	ret
                                   1059 ;------------------------------------------------------------
                                   1060 ;Allocation info for local variables in function 'i2c_delay'
                                   1061 ;------------------------------------------------------------
                                   1062 ;i                         Allocated with name '_i2c_delay_i_131072_50'
                                   1063 ;------------------------------------------------------------
                                   1064 ;	io_expander.c:231: void i2c_delay() 
                                   1065 ;	-----------------------------------------
                                   1066 ;	 function i2c_delay
                                   1067 ;	-----------------------------------------
      003288                       1068 _i2c_delay:
                                   1069 ;	io_expander.c:233: for(int i = 0; i<500; i++);
      003288 7E 00            [12] 1070 	mov	r6,#0x00
      00328A 7F 00            [12] 1071 	mov	r7,#0x00
      00328C                       1072 00103$:
      00328C C3               [12] 1073 	clr	c
      00328D EE               [12] 1074 	mov	a,r6
      00328E 94 F4            [12] 1075 	subb	a,#0xf4
      003290 EF               [12] 1076 	mov	a,r7
      003291 64 80            [12] 1077 	xrl	a,#0x80
      003293 94 81            [12] 1078 	subb	a,#0x81
      003295 50 07            [24] 1079 	jnc	00105$
      003297 0E               [12] 1080 	inc	r6
      003298 BE 00 F1         [24] 1081 	cjne	r6,#0x00,00103$
      00329B 0F               [12] 1082 	inc	r7
      00329C 80 EE            [24] 1083 	sjmp	00103$
      00329E                       1084 00105$:
                                   1085 ;	io_expander.c:234: }
      00329E 22               [24] 1086 	ret
                                   1087 	.area CSEG    (CODE)
                                   1088 	.area CONST   (CODE)
                                   1089 	.area CONST   (CODE)
      003D4F                       1090 ___str_0:
      003D4F 49 4F 20 45 58 50 41  1091 	.ascii "IO EXPANDER PROGRAM"
             4E 44 45 52 20 50 52
             4F 47 52 41 4D
      003D62 0A                    1092 	.db 0x0a
      003D63 0D                    1093 	.db 0x0d
      003D64 00                    1094 	.db 0x00
                                   1095 	.area CSEG    (CODE)
                                   1096 	.area CONST   (CODE)
      003D65                       1097 ___str_1:
      003D65 49 4F 20 65 78 70 61  1098 	.ascii "IO expander initialized"
             6E 64 65 72 20 69 6E
             69 74 69 61 6C 69 7A
             65 64
      003D7C 0A                    1099 	.db 0x0a
      003D7D 0D                    1100 	.db 0x0d
      003D7E 00                    1101 	.db 0x00
                                   1102 	.area CSEG    (CODE)
                                   1103 	.area CONST   (CODE)
      003D7F                       1104 ___str_2:
      003D7F 41 43 4B 20 44 49 44  1105 	.ascii "ACK DID NOT ARRIVE"
             20 4E 4F 54 20 41 52
             52 49 56 45
      003D91 0A                    1106 	.db 0x0a
      003D92 0D                    1107 	.db 0x0d
      003D93 00                    1108 	.db 0x00
                                   1109 	.area CSEG    (CODE)
                                   1110 	.area XINIT   (CODE)
                                   1111 	.area CABS    (ABS,CODE)
