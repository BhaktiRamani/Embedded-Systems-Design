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
      000402                        469 _pcf8574_read_pin_pin_65536_29:
      000402                        470 	.ds 1
      000403                        471 _pcf8574_write_port_value_65536_31:
      000403                        472 	.ds 1
      000404                        473 _pcf8574_set_pin_PARM_2:
      000404                        474 	.ds 1
      000405                        475 _pcf8574_set_pin_pin_65536_33:
      000405                        476 	.ds 1
      000406                        477 _pcf8574_set_pin_port_state_65536_34:
      000406                        478 	.ds 1
      000407                        479 _i2c_write_data_65536_37:
      000407                        480 	.ds 1
      000408                        481 _i2c_read_ACK_65536_42:
      000408                        482 	.ds 2
      00040A                        483 _i2c_read_buff_65536_43:
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
                                    606 ;result                    Allocated with name '_main_result_65537_26'
                                    607 ;------------------------------------------------------------
                                    608 ;	io_expander.c:55: int main()
                                    609 ;	-----------------------------------------
                                    610 ;	 function main
                                    611 ;	-----------------------------------------
      00308F                        612 _main:
                                    613 ;	io_expander.c:57: P1 &= ~(1<<3);  // Set P1.3 as output
      00308F 53 90 F7         [24]  614 	anl	_P1,#0xf7
                                    615 ;	io_expander.c:58: P1 &= ~(1<<4);  // Set P1.4 as output
      003092 53 90 EF         [24]  616 	anl	_P1,#0xef
                                    617 ;	io_expander.c:60: printf("IO EXPANDER PROGRAM\n\r");
      003095 74 72            [12]  618 	mov	a,#___str_0
      003097 C0 E0            [24]  619 	push	acc
      003099 74 3D            [12]  620 	mov	a,#(___str_0 >> 8)
      00309B C0 E0            [24]  621 	push	acc
      00309D 74 80            [12]  622 	mov	a,#0x80
      00309F C0 E0            [24]  623 	push	acc
      0030A1 12 33 10         [24]  624 	lcall	_printf
      0030A4 15 81            [12]  625 	dec	sp
      0030A6 15 81            [12]  626 	dec	sp
      0030A8 15 81            [12]  627 	dec	sp
                                    628 ;	io_expander.c:63: i2c_start();
      0030AA 12 32 89         [24]  629 	lcall	_i2c_start
                                    630 ;	io_expander.c:64: i2c_write(PCF8574_I2C_WRITE_ADDRESS);
      0030AD 75 82 70         [24]  631 	mov	dpl,#0x70
      0030B0 12 31 9C         [24]  632 	lcall	_i2c_write
                                    633 ;	io_expander.c:65: i2c_write(0xFF);
      0030B3 75 82 FF         [24]  634 	mov	dpl,#0xff
      0030B6 12 31 9C         [24]  635 	lcall	_i2c_write
                                    636 ;	io_expander.c:67: i2c_stop();
      0030B9 12 32 9E         [24]  637 	lcall	_i2c_stop
                                    638 ;	io_expander.c:69: printf("IO expander initialized\n\r");
      0030BC 74 88            [12]  639 	mov	a,#___str_1
      0030BE C0 E0            [24]  640 	push	acc
      0030C0 74 3D            [12]  641 	mov	a,#(___str_1 >> 8)
      0030C2 C0 E0            [24]  642 	push	acc
      0030C4 74 80            [12]  643 	mov	a,#0x80
      0030C6 C0 E0            [24]  644 	push	acc
      0030C8 12 33 10         [24]  645 	lcall	_printf
      0030CB 15 81            [12]  646 	dec	sp
      0030CD 15 81            [12]  647 	dec	sp
      0030CF 15 81            [12]  648 	dec	sp
                                    649 ;	io_expander.c:70: int result = pcf8574_read_pin(0);
      0030D1 75 82 00         [24]  650 	mov	dpl,#0x00
      0030D4 12 31 10         [24]  651 	lcall	_pcf8574_read_pin
      0030D7 AF 82            [24]  652 	mov	r7,dpl
      0030D9 7E 00            [12]  653 	mov	r6,#0x00
                                    654 ;	io_expander.c:71: printf("port 0 pin %d\n\r", result);
      0030DB C0 07            [24]  655 	push	ar7
      0030DD C0 06            [24]  656 	push	ar6
      0030DF 74 A2            [12]  657 	mov	a,#___str_2
      0030E1 C0 E0            [24]  658 	push	acc
      0030E3 74 3D            [12]  659 	mov	a,#(___str_2 >> 8)
      0030E5 C0 E0            [24]  660 	push	acc
      0030E7 74 80            [12]  661 	mov	a,#0x80
      0030E9 C0 E0            [24]  662 	push	acc
      0030EB 12 33 10         [24]  663 	lcall	_printf
      0030EE E5 81            [12]  664 	mov	a,sp
      0030F0 24 FB            [12]  665 	add	a,#0xfb
      0030F2 F5 81            [12]  666 	mov	sp,a
                                    667 ;	io_expander.c:92: }
      0030F4 22               [24]  668 	ret
                                    669 ;------------------------------------------------------------
                                    670 ;Allocation info for local variables in function 'pcf8574_read_port'
                                    671 ;------------------------------------------------------------
                                    672 ;data                      Allocated with name '_pcf8574_read_port_data_65536_28'
                                    673 ;------------------------------------------------------------
                                    674 ;	io_expander.c:95: uint8_t pcf8574_read_port(void) {
                                    675 ;	-----------------------------------------
                                    676 ;	 function pcf8574_read_port
                                    677 ;	-----------------------------------------
      0030F5                        678 _pcf8574_read_port:
                                    679 ;	io_expander.c:97: i2c_start();
      0030F5 12 32 89         [24]  680 	lcall	_i2c_start
                                    681 ;	io_expander.c:98: i2c_write(PCF8574_I2C_READ_ADDRESS);
      0030F8 75 82 71         [24]  682 	mov	dpl,#0x71
      0030FB 12 31 9C         [24]  683 	lcall	_i2c_write
                                    684 ;	io_expander.c:99: data = i2c_read(0);
      0030FE 90 00 00         [24]  685 	mov	dptr,#0x0000
      003101 12 32 04         [24]  686 	lcall	_i2c_read
      003104 AE 82            [24]  687 	mov	r6,dpl
                                    688 ;	io_expander.c:100: i2c_stop();
      003106 C0 06            [24]  689 	push	ar6
      003108 12 32 9E         [24]  690 	lcall	_i2c_stop
      00310B D0 06            [24]  691 	pop	ar6
                                    692 ;	io_expander.c:101: return data;
      00310D 8E 82            [24]  693 	mov	dpl,r6
                                    694 ;	io_expander.c:102: }
      00310F 22               [24]  695 	ret
                                    696 ;------------------------------------------------------------
                                    697 ;Allocation info for local variables in function 'pcf8574_read_pin'
                                    698 ;------------------------------------------------------------
                                    699 ;pin                       Allocated with name '_pcf8574_read_pin_pin_65536_29'
                                    700 ;port_state                Allocated with name '_pcf8574_read_pin_port_state_65536_30'
                                    701 ;------------------------------------------------------------
                                    702 ;	io_expander.c:104: uint8_t pcf8574_read_pin(uint8_t pin) {
                                    703 ;	-----------------------------------------
                                    704 ;	 function pcf8574_read_pin
                                    705 ;	-----------------------------------------
      003110                        706 _pcf8574_read_pin:
      003110 E5 82            [12]  707 	mov	a,dpl
      003112 90 04 02         [24]  708 	mov	dptr,#_pcf8574_read_pin_pin_65536_29
      003115 F0               [24]  709 	movx	@dptr,a
                                    710 ;	io_expander.c:105: uint8_t port_state = pcf8574_read_port();
      003116 12 30 F5         [24]  711 	lcall	_pcf8574_read_port
      003119 AF 82            [24]  712 	mov	r7,dpl
                                    713 ;	io_expander.c:106: return (port_state >> pin) & 0x01;
      00311B 90 04 02         [24]  714 	mov	dptr,#_pcf8574_read_pin_pin_65536_29
      00311E E0               [24]  715 	movx	a,@dptr
      00311F FE               [12]  716 	mov	r6,a
      003120 8E F0            [24]  717 	mov	b,r6
      003122 05 F0            [12]  718 	inc	b
      003124 EF               [12]  719 	mov	a,r7
      003125 80 02            [24]  720 	sjmp	00104$
      003127                        721 00103$:
      003127 C3               [12]  722 	clr	c
      003128 13               [12]  723 	rrc	a
      003129                        724 00104$:
      003129 D5 F0 FB         [24]  725 	djnz	b,00103$
      00312C 54 01            [12]  726 	anl	a,#0x01
                                    727 ;	io_expander.c:107: }
      00312E F5 82            [12]  728 	mov	dpl,a
      003130 22               [24]  729 	ret
                                    730 ;------------------------------------------------------------
                                    731 ;Allocation info for local variables in function 'pcf8574_write_port'
                                    732 ;------------------------------------------------------------
                                    733 ;value                     Allocated with name '_pcf8574_write_port_value_65536_31'
                                    734 ;------------------------------------------------------------
                                    735 ;	io_expander.c:109: void pcf8574_write_port(uint8_t value)
                                    736 ;	-----------------------------------------
                                    737 ;	 function pcf8574_write_port
                                    738 ;	-----------------------------------------
      003131                        739 _pcf8574_write_port:
      003131 E5 82            [12]  740 	mov	a,dpl
      003133 90 04 03         [24]  741 	mov	dptr,#_pcf8574_write_port_value_65536_31
      003136 F0               [24]  742 	movx	@dptr,a
                                    743 ;	io_expander.c:111: i2c_start();
      003137 12 32 89         [24]  744 	lcall	_i2c_start
                                    745 ;	io_expander.c:112: i2c_write(PCF8574_I2C_WRITE_ADDRESS);
      00313A 75 82 70         [24]  746 	mov	dpl,#0x70
      00313D 12 31 9C         [24]  747 	lcall	_i2c_write
                                    748 ;	io_expander.c:113: i2c_write(value);
      003140 90 04 03         [24]  749 	mov	dptr,#_pcf8574_write_port_value_65536_31
      003143 E0               [24]  750 	movx	a,@dptr
      003144 F5 82            [12]  751 	mov	dpl,a
      003146 12 31 9C         [24]  752 	lcall	_i2c_write
                                    753 ;	io_expander.c:114: i2c_stop();
                                    754 ;	io_expander.c:115: }
      003149 02 32 9E         [24]  755 	ljmp	_i2c_stop
                                    756 ;------------------------------------------------------------
                                    757 ;Allocation info for local variables in function 'pcf8574_set_pin'
                                    758 ;------------------------------------------------------------
                                    759 ;value                     Allocated with name '_pcf8574_set_pin_PARM_2'
                                    760 ;pin                       Allocated with name '_pcf8574_set_pin_pin_65536_33'
                                    761 ;port_state                Allocated with name '_pcf8574_set_pin_port_state_65536_34'
                                    762 ;------------------------------------------------------------
                                    763 ;	io_expander.c:117: void pcf8574_set_pin(uint8_t pin, uint8_t value) {
                                    764 ;	-----------------------------------------
                                    765 ;	 function pcf8574_set_pin
                                    766 ;	-----------------------------------------
      00314C                        767 _pcf8574_set_pin:
      00314C E5 82            [12]  768 	mov	a,dpl
      00314E 90 04 05         [24]  769 	mov	dptr,#_pcf8574_set_pin_pin_65536_33
      003151 F0               [24]  770 	movx	@dptr,a
                                    771 ;	io_expander.c:118: uint8_t port_state = pcf8574_read_port();
      003152 12 30 F5         [24]  772 	lcall	_pcf8574_read_port
      003155 AF 82            [24]  773 	mov	r7,dpl
                                    774 ;	io_expander.c:119: if (value) {
      003157 90 04 04         [24]  775 	mov	dptr,#_pcf8574_set_pin_PARM_2
      00315A E0               [24]  776 	movx	a,@dptr
      00315B 60 1D            [24]  777 	jz	00102$
                                    778 ;	io_expander.c:120: port_state |= (1 << pin);  // Set pin high
      00315D 90 04 05         [24]  779 	mov	dptr,#_pcf8574_set_pin_pin_65536_33
      003160 E0               [24]  780 	movx	a,@dptr
      003161 FE               [12]  781 	mov	r6,a
      003162 8E F0            [24]  782 	mov	b,r6
      003164 05 F0            [12]  783 	inc	b
      003166 74 01            [12]  784 	mov	a,#0x01
      003168 80 02            [24]  785 	sjmp	00113$
      00316A                        786 00111$:
      00316A 25 E0            [12]  787 	add	a,acc
      00316C                        788 00113$:
      00316C D5 F0 FB         [24]  789 	djnz	b,00111$
      00316F FE               [12]  790 	mov	r6,a
      003170 8F 05            [24]  791 	mov	ar5,r7
      003172 90 04 06         [24]  792 	mov	dptr,#_pcf8574_set_pin_port_state_65536_34
      003175 EE               [12]  793 	mov	a,r6
      003176 4D               [12]  794 	orl	a,r5
      003177 F0               [24]  795 	movx	@dptr,a
      003178 80 19            [24]  796 	sjmp	00103$
      00317A                        797 00102$:
                                    798 ;	io_expander.c:122: port_state &= ~(1 << pin); // Set pin low
      00317A 90 04 05         [24]  799 	mov	dptr,#_pcf8574_set_pin_pin_65536_33
      00317D E0               [24]  800 	movx	a,@dptr
      00317E FE               [12]  801 	mov	r6,a
      00317F 8E F0            [24]  802 	mov	b,r6
      003181 05 F0            [12]  803 	inc	b
      003183 74 01            [12]  804 	mov	a,#0x01
      003185 80 02            [24]  805 	sjmp	00116$
      003187                        806 00114$:
      003187 25 E0            [12]  807 	add	a,acc
      003189                        808 00116$:
      003189 D5 F0 FB         [24]  809 	djnz	b,00114$
      00318C F4               [12]  810 	cpl	a
      00318D FE               [12]  811 	mov	r6,a
      00318E 90 04 06         [24]  812 	mov	dptr,#_pcf8574_set_pin_port_state_65536_34
      003191 5F               [12]  813 	anl	a,r7
      003192 F0               [24]  814 	movx	@dptr,a
      003193                        815 00103$:
                                    816 ;	io_expander.c:124: pcf8574_write_port(port_state);
      003193 90 04 06         [24]  817 	mov	dptr,#_pcf8574_set_pin_port_state_65536_34
      003196 E0               [24]  818 	movx	a,@dptr
      003197 F5 82            [12]  819 	mov	dpl,a
                                    820 ;	io_expander.c:125: }
      003199 02 31 31         [24]  821 	ljmp	_pcf8574_write_port
                                    822 ;------------------------------------------------------------
                                    823 ;Allocation info for local variables in function 'i2c_write'
                                    824 ;------------------------------------------------------------
                                    825 ;data                      Allocated with name '_i2c_write_data_65536_37'
                                    826 ;i                         Allocated with name '_i2c_write_i_65536_38'
                                    827 ;------------------------------------------------------------
                                    828 ;	io_expander.c:135: int i2c_write(unsigned char data)
                                    829 ;	-----------------------------------------
                                    830 ;	 function i2c_write
                                    831 ;	-----------------------------------------
      00319C                        832 _i2c_write:
      00319C E5 82            [12]  833 	mov	a,dpl
      00319E 90 04 07         [24]  834 	mov	dptr,#_i2c_write_data_65536_37
      0031A1 F0               [24]  835 	movx	@dptr,a
                                    836 ;	io_expander.c:139: for(i=0;i<=7;i++)
      0031A2 7E 00            [12]  837 	mov	r6,#0x00
      0031A4 7F 00            [12]  838 	mov	r7,#0x00
      0031A6                        839 00104$:
                                    840 ;	io_expander.c:141: SDA = (data & 0x80) ? 1 : 0;    //msb first
      0031A6 90 04 07         [24]  841 	mov	dptr,#_i2c_write_data_65536_37
      0031A9 E0               [24]  842 	movx	a,@dptr
      0031AA FD               [12]  843 	mov	r5,a
      0031AB 23               [12]  844 	rl	a
      0031AC 54 01            [12]  845 	anl	a,#0x01
      0031AE 24 FF            [12]  846 	add	a,#0xff
      0031B0 92 94            [24]  847 	mov	_P1_4,c
                                    848 ;	io_expander.c:142: i2c_delay();        // Setup time for data
      0031B2 C0 07            [24]  849 	push	ar7
      0031B4 C0 06            [24]  850 	push	ar6
      0031B6 C0 05            [24]  851 	push	ar5
      0031B8 12 32 AB         [24]  852 	lcall	_i2c_delay
                                    853 ;	io_expander.c:143: SCL=1;
                                    854 ;	assignBit
      0031BB D2 93            [12]  855 	setb	_P1_3
                                    856 ;	io_expander.c:144: i2c_delay();        // Hold time for clock
      0031BD 12 32 AB         [24]  857 	lcall	_i2c_delay
      0031C0 D0 05            [24]  858 	pop	ar5
      0031C2 D0 06            [24]  859 	pop	ar6
      0031C4 D0 07            [24]  860 	pop	ar7
                                    861 ;	io_expander.c:145: SCL=0;
                                    862 ;	assignBit
      0031C6 C2 93            [12]  863 	clr	_P1_3
                                    864 ;	io_expander.c:146: data = data << 1;
      0031C8 ED               [12]  865 	mov	a,r5
      0031C9 2D               [12]  866 	add	a,r5
      0031CA 90 04 07         [24]  867 	mov	dptr,#_i2c_write_data_65536_37
      0031CD F0               [24]  868 	movx	@dptr,a
                                    869 ;	io_expander.c:139: for(i=0;i<=7;i++)
      0031CE 0E               [12]  870 	inc	r6
      0031CF BE 00 01         [24]  871 	cjne	r6,#0x00,00121$
      0031D2 0F               [12]  872 	inc	r7
      0031D3                        873 00121$:
      0031D3 C3               [12]  874 	clr	c
      0031D4 74 07            [12]  875 	mov	a,#0x07
      0031D6 9E               [12]  876 	subb	a,r6
      0031D7 E4               [12]  877 	clr	a
      0031D8 9F               [12]  878 	subb	a,r7
      0031D9 50 CB            [24]  879 	jnc	00104$
                                    880 ;	io_expander.c:150: SDA = 1;            // Release SDA for slave
                                    881 ;	assignBit
      0031DB D2 94            [12]  882 	setb	_P1_4
                                    883 ;	io_expander.c:151: SCL = 1;            // 9th clock pulse for ACK
                                    884 ;	assignBit
      0031DD D2 93            [12]  885 	setb	_P1_3
                                    886 ;	io_expander.c:152: i2c_delay();
      0031DF 12 32 AB         [24]  887 	lcall	_i2c_delay
                                    888 ;	io_expander.c:153: if(SDA == 1)        // If SDA is still high, no ACK received
      0031E2 30 94 19         [24]  889 	jnb	_P1_4,00103$
                                    890 ;	io_expander.c:156: printf("ACK DID NOT ARRIVE\n\r");
      0031E5 74 B2            [12]  891 	mov	a,#___str_3
      0031E7 C0 E0            [24]  892 	push	acc
      0031E9 74 3D            [12]  893 	mov	a,#(___str_3 >> 8)
      0031EB C0 E0            [24]  894 	push	acc
      0031ED 74 80            [12]  895 	mov	a,#0x80
      0031EF C0 E0            [24]  896 	push	acc
      0031F1 12 33 10         [24]  897 	lcall	_printf
      0031F4 15 81            [12]  898 	dec	sp
      0031F6 15 81            [12]  899 	dec	sp
      0031F8 15 81            [12]  900 	dec	sp
                                    901 ;	io_expander.c:157: return 0;       // Error
      0031FA 90 00 00         [24]  902 	mov	dptr,#0x0000
      0031FD 22               [24]  903 	ret
      0031FE                        904 00103$:
                                    905 ;	io_expander.c:159: SCL = 0;
                                    906 ;	assignBit
      0031FE C2 93            [12]  907 	clr	_P1_3
                                    908 ;	io_expander.c:161: return 1;           // Success
      003200 90 00 01         [24]  909 	mov	dptr,#0x0001
                                    910 ;	io_expander.c:163: }
      003203 22               [24]  911 	ret
                                    912 ;------------------------------------------------------------
                                    913 ;Allocation info for local variables in function 'i2c_read'
                                    914 ;------------------------------------------------------------
                                    915 ;ACK                       Allocated with name '_i2c_read_ACK_65536_42'
                                    916 ;buff                      Allocated with name '_i2c_read_buff_65536_43'
                                    917 ;i                         Allocated with name '_i2c_read_i_131072_44'
                                    918 ;------------------------------------------------------------
                                    919 ;	io_expander.c:173: int i2c_read(int ACK)
                                    920 ;	-----------------------------------------
                                    921 ;	 function i2c_read
                                    922 ;	-----------------------------------------
      003204                        923 _i2c_read:
      003204 AF 83            [24]  924 	mov	r7,dph
      003206 E5 82            [12]  925 	mov	a,dpl
      003208 90 04 08         [24]  926 	mov	dptr,#_i2c_read_ACK_65536_42
      00320B F0               [24]  927 	movx	@dptr,a
      00320C EF               [12]  928 	mov	a,r7
      00320D A3               [24]  929 	inc	dptr
      00320E F0               [24]  930 	movx	@dptr,a
                                    931 ;	io_expander.c:175: unsigned char buff=0;
      00320F 90 04 0A         [24]  932 	mov	dptr,#_i2c_read_buff_65536_43
      003212 E4               [12]  933 	clr	a
      003213 F0               [24]  934 	movx	@dptr,a
                                    935 ;	io_expander.c:176: SCL = 0;
                                    936 ;	assignBit
      003214 C2 93            [12]  937 	clr	_P1_3
                                    938 ;	io_expander.c:177: for(int i=0;i<8;i++)
      003216 7E 00            [12]  939 	mov	r6,#0x00
      003218 7F 00            [12]  940 	mov	r7,#0x00
      00321A                        941 00103$:
      00321A C3               [12]  942 	clr	c
      00321B EE               [12]  943 	mov	a,r6
      00321C 94 08            [12]  944 	subb	a,#0x08
      00321E EF               [12]  945 	mov	a,r7
      00321F 64 80            [12]  946 	xrl	a,#0x80
      003221 94 80            [12]  947 	subb	a,#0x80
      003223 50 40            [24]  948 	jnc	00101$
                                    949 ;	io_expander.c:179: SCL = 1;
                                    950 ;	assignBit
      003225 D2 93            [12]  951 	setb	_P1_3
                                    952 ;	io_expander.c:180: i2c_delay();
      003227 C0 07            [24]  953 	push	ar7
      003229 C0 06            [24]  954 	push	ar6
      00322B 12 32 AB         [24]  955 	lcall	_i2c_delay
      00322E D0 06            [24]  956 	pop	ar6
      003230 D0 07            [24]  957 	pop	ar7
                                    958 ;	io_expander.c:181: buff |= (SDA << (7 - i));
      003232 A2 94            [12]  959 	mov	c,_P1_4
      003234 E4               [12]  960 	clr	a
      003235 33               [12]  961 	rlc	a
      003236 FD               [12]  962 	mov	r5,a
      003237 8E 04            [24]  963 	mov	ar4,r6
      003239 74 07            [12]  964 	mov	a,#0x07
      00323B C3               [12]  965 	clr	c
      00323C 9C               [12]  966 	subb	a,r4
      00323D FC               [12]  967 	mov	r4,a
      00323E 8C F0            [24]  968 	mov	b,r4
      003240 05 F0            [12]  969 	inc	b
      003242 ED               [12]  970 	mov	a,r5
      003243 80 02            [24]  971 	sjmp	00119$
      003245                        972 00117$:
      003245 25 E0            [12]  973 	add	a,acc
      003247                        974 00119$:
      003247 D5 F0 FB         [24]  975 	djnz	b,00117$
      00324A FC               [12]  976 	mov	r4,a
      00324B 90 04 0A         [24]  977 	mov	dptr,#_i2c_read_buff_65536_43
      00324E E0               [24]  978 	movx	a,@dptr
      00324F 4C               [12]  979 	orl	a,r4
      003250 F0               [24]  980 	movx	@dptr,a
                                    981 ;	io_expander.c:182: i2c_delay();
      003251 C0 07            [24]  982 	push	ar7
      003253 C0 06            [24]  983 	push	ar6
      003255 12 32 AB         [24]  984 	lcall	_i2c_delay
      003258 D0 06            [24]  985 	pop	ar6
      00325A D0 07            [24]  986 	pop	ar7
                                    987 ;	io_expander.c:183: SCL=0;
                                    988 ;	assignBit
      00325C C2 93            [12]  989 	clr	_P1_3
                                    990 ;	io_expander.c:177: for(int i=0;i<8;i++)
      00325E 0E               [12]  991 	inc	r6
      00325F BE 00 B8         [24]  992 	cjne	r6,#0x00,00103$
      003262 0F               [12]  993 	inc	r7
      003263 80 B5            [24]  994 	sjmp	00103$
      003265                        995 00101$:
                                    996 ;	io_expander.c:187: SDA = !ACK;         // ACK = 0, NACK = 1
      003265 90 04 08         [24]  997 	mov	dptr,#_i2c_read_ACK_65536_42
      003268 E0               [24]  998 	movx	a,@dptr
      003269 FE               [12]  999 	mov	r6,a
      00326A A3               [24] 1000 	inc	dptr
      00326B E0               [24] 1001 	movx	a,@dptr
      00326C 4E               [12] 1002 	orl	a,r6
      00326D B4 01 00         [24] 1003 	cjne	a,#0x01,00121$
      003270                       1004 00121$:
      003270 E4               [12] 1005 	clr	a
      003271 33               [12] 1006 	rlc	a
      003272 24 FF            [12] 1007 	add	a,#0xff
      003274 92 94            [24] 1008 	mov	_P1_4,c
                                   1009 ;	io_expander.c:188: SCL = 1;
                                   1010 ;	assignBit
      003276 D2 93            [12] 1011 	setb	_P1_3
                                   1012 ;	io_expander.c:189: i2c_delay();
      003278 12 32 AB         [24] 1013 	lcall	_i2c_delay
                                   1014 ;	io_expander.c:190: SCL = 0;
                                   1015 ;	assignBit
      00327B C2 93            [12] 1016 	clr	_P1_3
                                   1017 ;	io_expander.c:192: return buff;
      00327D 90 04 0A         [24] 1018 	mov	dptr,#_i2c_read_buff_65536_43
      003280 E0               [24] 1019 	movx	a,@dptr
      003281 FF               [12] 1020 	mov	r7,a
      003282 7E 00            [12] 1021 	mov	r6,#0x00
      003284 8F 82            [24] 1022 	mov	dpl,r7
      003286 8E 83            [24] 1023 	mov	dph,r6
                                   1024 ;	io_expander.c:193: }
      003288 22               [24] 1025 	ret
                                   1026 ;------------------------------------------------------------
                                   1027 ;Allocation info for local variables in function 'i2c_start'
                                   1028 ;------------------------------------------------------------
                                   1029 ;	io_expander.c:200: void i2c_start(void)
                                   1030 ;	-----------------------------------------
                                   1031 ;	 function i2c_start
                                   1032 ;	-----------------------------------------
      003289                       1033 _i2c_start:
                                   1034 ;	io_expander.c:202: i2c_delay();
      003289 12 32 AB         [24] 1035 	lcall	_i2c_delay
                                   1036 ;	io_expander.c:203: SDA = 1;
                                   1037 ;	assignBit
      00328C D2 94            [12] 1038 	setb	_P1_4
                                   1039 ;	io_expander.c:204: i2c_delay();
      00328E 12 32 AB         [24] 1040 	lcall	_i2c_delay
                                   1041 ;	io_expander.c:205: SCL = 1;
                                   1042 ;	assignBit
      003291 D2 93            [12] 1043 	setb	_P1_3
                                   1044 ;	io_expander.c:206: i2c_delay();
      003293 12 32 AB         [24] 1045 	lcall	_i2c_delay
                                   1046 ;	io_expander.c:207: SDA = 0;
                                   1047 ;	assignBit
      003296 C2 94            [12] 1048 	clr	_P1_4
                                   1049 ;	io_expander.c:208: i2c_delay();
      003298 12 32 AB         [24] 1050 	lcall	_i2c_delay
                                   1051 ;	io_expander.c:209: SCL = 0;
                                   1052 ;	assignBit
      00329B C2 93            [12] 1053 	clr	_P1_3
                                   1054 ;	io_expander.c:210: }
      00329D 22               [24] 1055 	ret
                                   1056 ;------------------------------------------------------------
                                   1057 ;Allocation info for local variables in function 'i2c_stop'
                                   1058 ;------------------------------------------------------------
                                   1059 ;	io_expander.c:217: void i2c_stop(void)
                                   1060 ;	-----------------------------------------
                                   1061 ;	 function i2c_stop
                                   1062 ;	-----------------------------------------
      00329E                       1063 _i2c_stop:
                                   1064 ;	io_expander.c:219: SDA = 0;
                                   1065 ;	assignBit
      00329E C2 94            [12] 1066 	clr	_P1_4
                                   1067 ;	io_expander.c:220: i2c_delay();
      0032A0 12 32 AB         [24] 1068 	lcall	_i2c_delay
                                   1069 ;	io_expander.c:221: SCL = 1;
                                   1070 ;	assignBit
      0032A3 D2 93            [12] 1071 	setb	_P1_3
                                   1072 ;	io_expander.c:222: i2c_delay();
      0032A5 12 32 AB         [24] 1073 	lcall	_i2c_delay
                                   1074 ;	io_expander.c:223: SDA = 1; 
                                   1075 ;	assignBit
      0032A8 D2 94            [12] 1076 	setb	_P1_4
                                   1077 ;	io_expander.c:224: }
      0032AA 22               [24] 1078 	ret
                                   1079 ;------------------------------------------------------------
                                   1080 ;Allocation info for local variables in function 'i2c_delay'
                                   1081 ;------------------------------------------------------------
                                   1082 ;i                         Allocated with name '_i2c_delay_i_131072_51'
                                   1083 ;------------------------------------------------------------
                                   1084 ;	io_expander.c:233: void i2c_delay() 
                                   1085 ;	-----------------------------------------
                                   1086 ;	 function i2c_delay
                                   1087 ;	-----------------------------------------
      0032AB                       1088 _i2c_delay:
                                   1089 ;	io_expander.c:235: for(int i = 0; i<500; i++);
      0032AB 7E 00            [12] 1090 	mov	r6,#0x00
      0032AD 7F 00            [12] 1091 	mov	r7,#0x00
      0032AF                       1092 00103$:
      0032AF C3               [12] 1093 	clr	c
      0032B0 EE               [12] 1094 	mov	a,r6
      0032B1 94 F4            [12] 1095 	subb	a,#0xf4
      0032B3 EF               [12] 1096 	mov	a,r7
      0032B4 64 80            [12] 1097 	xrl	a,#0x80
      0032B6 94 81            [12] 1098 	subb	a,#0x81
      0032B8 50 07            [24] 1099 	jnc	00105$
      0032BA 0E               [12] 1100 	inc	r6
      0032BB BE 00 F1         [24] 1101 	cjne	r6,#0x00,00103$
      0032BE 0F               [12] 1102 	inc	r7
      0032BF 80 EE            [24] 1103 	sjmp	00103$
      0032C1                       1104 00105$:
                                   1105 ;	io_expander.c:236: }
      0032C1 22               [24] 1106 	ret
                                   1107 	.area CSEG    (CODE)
                                   1108 	.area CONST   (CODE)
                                   1109 	.area CONST   (CODE)
      003D72                       1110 ___str_0:
      003D72 49 4F 20 45 58 50 41  1111 	.ascii "IO EXPANDER PROGRAM"
             4E 44 45 52 20 50 52
             4F 47 52 41 4D
      003D85 0A                    1112 	.db 0x0a
      003D86 0D                    1113 	.db 0x0d
      003D87 00                    1114 	.db 0x00
                                   1115 	.area CSEG    (CODE)
                                   1116 	.area CONST   (CODE)
      003D88                       1117 ___str_1:
      003D88 49 4F 20 65 78 70 61  1118 	.ascii "IO expander initialized"
             6E 64 65 72 20 69 6E
             69 74 69 61 6C 69 7A
             65 64
      003D9F 0A                    1119 	.db 0x0a
      003DA0 0D                    1120 	.db 0x0d
      003DA1 00                    1121 	.db 0x00
                                   1122 	.area CSEG    (CODE)
                                   1123 	.area CONST   (CODE)
      003DA2                       1124 ___str_2:
      003DA2 70 6F 72 74 20 30 20  1125 	.ascii "port 0 pin %d"
             70 69 6E 20 25 64
      003DAF 0A                    1126 	.db 0x0a
      003DB0 0D                    1127 	.db 0x0d
      003DB1 00                    1128 	.db 0x00
                                   1129 	.area CSEG    (CODE)
                                   1130 	.area CONST   (CODE)
      003DB2                       1131 ___str_3:
      003DB2 41 43 4B 20 44 49 44  1132 	.ascii "ACK DID NOT ARRIVE"
             20 4E 4F 54 20 41 52
             52 49 56 45
      003DC4 0A                    1133 	.db 0x0a
      003DC5 0D                    1134 	.db 0x0d
      003DC6 00                    1135 	.db 0x00
                                   1136 	.area CSEG    (CODE)
                                   1137 	.area XINIT   (CODE)
                                   1138 	.area CABS    (ABS,CODE)
