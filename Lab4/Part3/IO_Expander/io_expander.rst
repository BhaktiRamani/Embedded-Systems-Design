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
      003095 74 AC            [12]  618 	mov	a,#___str_0
      003097 C0 E0            [24]  619 	push	acc
      003099 74 3D            [12]  620 	mov	a,#(___str_0 >> 8)
      00309B C0 E0            [24]  621 	push	acc
      00309D 74 80            [12]  622 	mov	a,#0x80
      00309F C0 E0            [24]  623 	push	acc
      0030A1 12 33 4A         [24]  624 	lcall	_printf
      0030A4 15 81            [12]  625 	dec	sp
      0030A6 15 81            [12]  626 	dec	sp
      0030A8 15 81            [12]  627 	dec	sp
                                    628 ;	io_expander.c:63: i2c_start();
      0030AA 12 32 C3         [24]  629 	lcall	_i2c_start
                                    630 ;	io_expander.c:64: i2c_write(PCF8574_I2C_WRITE_ADDRESS);
      0030AD 75 82 70         [24]  631 	mov	dpl,#0x70
      0030B0 12 31 D6         [24]  632 	lcall	_i2c_write
                                    633 ;	io_expander.c:65: i2c_write(0xFF);
      0030B3 75 82 FF         [24]  634 	mov	dpl,#0xff
      0030B6 12 31 D6         [24]  635 	lcall	_i2c_write
                                    636 ;	io_expander.c:67: i2c_stop();
      0030B9 12 32 D8         [24]  637 	lcall	_i2c_stop
                                    638 ;	io_expander.c:69: printf("IO expander initialized\n\r");
      0030BC 74 C2            [12]  639 	mov	a,#___str_1
      0030BE C0 E0            [24]  640 	push	acc
      0030C0 74 3D            [12]  641 	mov	a,#(___str_1 >> 8)
      0030C2 C0 E0            [24]  642 	push	acc
      0030C4 74 80            [12]  643 	mov	a,#0x80
      0030C6 C0 E0            [24]  644 	push	acc
      0030C8 12 33 4A         [24]  645 	lcall	_printf
      0030CB 15 81            [12]  646 	dec	sp
      0030CD 15 81            [12]  647 	dec	sp
      0030CF 15 81            [12]  648 	dec	sp
                                    649 ;	io_expander.c:70: int result = pcf8574_read_pin(0);
      0030D1 75 82 00         [24]  650 	mov	dpl,#0x00
      0030D4 12 31 4A         [24]  651 	lcall	_pcf8574_read_pin
      0030D7 AF 82            [24]  652 	mov	r7,dpl
      0030D9 7E 00            [12]  653 	mov	r6,#0x00
                                    654 ;	io_expander.c:71: printf("port 0 pin %d\n\r", result);
      0030DB C0 07            [24]  655 	push	ar7
      0030DD C0 06            [24]  656 	push	ar6
      0030DF 74 DC            [12]  657 	mov	a,#___str_2
      0030E1 C0 E0            [24]  658 	push	acc
      0030E3 74 3D            [12]  659 	mov	a,#(___str_2 >> 8)
      0030E5 C0 E0            [24]  660 	push	acc
      0030E7 74 80            [12]  661 	mov	a,#0x80
      0030E9 C0 E0            [24]  662 	push	acc
      0030EB 12 33 4A         [24]  663 	lcall	_printf
      0030EE E5 81            [12]  664 	mov	a,sp
      0030F0 24 FB            [12]  665 	add	a,#0xfb
      0030F2 F5 81            [12]  666 	mov	sp,a
                                    667 ;	io_expander.c:72: pcf8574_set_pin(1,1);
      0030F4 90 04 04         [24]  668 	mov	dptr,#_pcf8574_set_pin_PARM_2
      0030F7 74 01            [12]  669 	mov	a,#0x01
      0030F9 F0               [24]  670 	movx	@dptr,a
      0030FA 75 82 01         [24]  671 	mov	dpl,#0x01
      0030FD 12 31 86         [24]  672 	lcall	_pcf8574_set_pin
                                    673 ;	io_expander.c:73: pcf8574_set_pin(2,1);
      003100 90 04 04         [24]  674 	mov	dptr,#_pcf8574_set_pin_PARM_2
      003103 74 01            [12]  675 	mov	a,#0x01
      003105 F0               [24]  676 	movx	@dptr,a
      003106 75 82 02         [24]  677 	mov	dpl,#0x02
      003109 12 31 86         [24]  678 	lcall	_pcf8574_set_pin
                                    679 ;	io_expander.c:74: pcf8574_set_pin(3,1);
      00310C 90 04 04         [24]  680 	mov	dptr,#_pcf8574_set_pin_PARM_2
      00310F 74 01            [12]  681 	mov	a,#0x01
      003111 F0               [24]  682 	movx	@dptr,a
      003112 75 82 03         [24]  683 	mov	dpl,#0x03
      003115 12 31 86         [24]  684 	lcall	_pcf8574_set_pin
                                    685 ;	io_expander.c:75: pcf8574_set_pin(4,1);
      003118 90 04 04         [24]  686 	mov	dptr,#_pcf8574_set_pin_PARM_2
      00311B 74 01            [12]  687 	mov	a,#0x01
      00311D F0               [24]  688 	movx	@dptr,a
      00311E 75 82 04         [24]  689 	mov	dpl,#0x04
      003121 12 31 86         [24]  690 	lcall	_pcf8574_set_pin
                                    691 ;	io_expander.c:76: pcf8574_set_pin(5,0);
      003124 90 04 04         [24]  692 	mov	dptr,#_pcf8574_set_pin_PARM_2
      003127 E4               [12]  693 	clr	a
      003128 F0               [24]  694 	movx	@dptr,a
      003129 75 82 05         [24]  695 	mov	dpl,#0x05
                                    696 ;	io_expander.c:98: }
      00312C 02 31 86         [24]  697 	ljmp	_pcf8574_set_pin
                                    698 ;------------------------------------------------------------
                                    699 ;Allocation info for local variables in function 'pcf8574_read_port'
                                    700 ;------------------------------------------------------------
                                    701 ;data                      Allocated with name '_pcf8574_read_port_data_65536_28'
                                    702 ;------------------------------------------------------------
                                    703 ;	io_expander.c:101: uint8_t pcf8574_read_port(void) {
                                    704 ;	-----------------------------------------
                                    705 ;	 function pcf8574_read_port
                                    706 ;	-----------------------------------------
      00312F                        707 _pcf8574_read_port:
                                    708 ;	io_expander.c:103: i2c_start();
      00312F 12 32 C3         [24]  709 	lcall	_i2c_start
                                    710 ;	io_expander.c:104: i2c_write(PCF8574_I2C_READ_ADDRESS);
      003132 75 82 71         [24]  711 	mov	dpl,#0x71
      003135 12 31 D6         [24]  712 	lcall	_i2c_write
                                    713 ;	io_expander.c:105: data = i2c_read(0);
      003138 90 00 00         [24]  714 	mov	dptr,#0x0000
      00313B 12 32 3E         [24]  715 	lcall	_i2c_read
      00313E AE 82            [24]  716 	mov	r6,dpl
                                    717 ;	io_expander.c:106: i2c_stop();
      003140 C0 06            [24]  718 	push	ar6
      003142 12 32 D8         [24]  719 	lcall	_i2c_stop
      003145 D0 06            [24]  720 	pop	ar6
                                    721 ;	io_expander.c:107: return data;
      003147 8E 82            [24]  722 	mov	dpl,r6
                                    723 ;	io_expander.c:108: }
      003149 22               [24]  724 	ret
                                    725 ;------------------------------------------------------------
                                    726 ;Allocation info for local variables in function 'pcf8574_read_pin'
                                    727 ;------------------------------------------------------------
                                    728 ;pin                       Allocated with name '_pcf8574_read_pin_pin_65536_29'
                                    729 ;port_state                Allocated with name '_pcf8574_read_pin_port_state_65536_30'
                                    730 ;------------------------------------------------------------
                                    731 ;	io_expander.c:110: uint8_t pcf8574_read_pin(uint8_t pin) {
                                    732 ;	-----------------------------------------
                                    733 ;	 function pcf8574_read_pin
                                    734 ;	-----------------------------------------
      00314A                        735 _pcf8574_read_pin:
      00314A E5 82            [12]  736 	mov	a,dpl
      00314C 90 04 02         [24]  737 	mov	dptr,#_pcf8574_read_pin_pin_65536_29
      00314F F0               [24]  738 	movx	@dptr,a
                                    739 ;	io_expander.c:111: uint8_t port_state = pcf8574_read_port();
      003150 12 31 2F         [24]  740 	lcall	_pcf8574_read_port
      003153 AF 82            [24]  741 	mov	r7,dpl
                                    742 ;	io_expander.c:112: return (port_state >> pin) & 0x01;
      003155 90 04 02         [24]  743 	mov	dptr,#_pcf8574_read_pin_pin_65536_29
      003158 E0               [24]  744 	movx	a,@dptr
      003159 FE               [12]  745 	mov	r6,a
      00315A 8E F0            [24]  746 	mov	b,r6
      00315C 05 F0            [12]  747 	inc	b
      00315E EF               [12]  748 	mov	a,r7
      00315F 80 02            [24]  749 	sjmp	00104$
      003161                        750 00103$:
      003161 C3               [12]  751 	clr	c
      003162 13               [12]  752 	rrc	a
      003163                        753 00104$:
      003163 D5 F0 FB         [24]  754 	djnz	b,00103$
      003166 54 01            [12]  755 	anl	a,#0x01
                                    756 ;	io_expander.c:113: }
      003168 F5 82            [12]  757 	mov	dpl,a
      00316A 22               [24]  758 	ret
                                    759 ;------------------------------------------------------------
                                    760 ;Allocation info for local variables in function 'pcf8574_write_port'
                                    761 ;------------------------------------------------------------
                                    762 ;value                     Allocated with name '_pcf8574_write_port_value_65536_31'
                                    763 ;------------------------------------------------------------
                                    764 ;	io_expander.c:115: void pcf8574_write_port(uint8_t value)
                                    765 ;	-----------------------------------------
                                    766 ;	 function pcf8574_write_port
                                    767 ;	-----------------------------------------
      00316B                        768 _pcf8574_write_port:
      00316B E5 82            [12]  769 	mov	a,dpl
      00316D 90 04 03         [24]  770 	mov	dptr,#_pcf8574_write_port_value_65536_31
      003170 F0               [24]  771 	movx	@dptr,a
                                    772 ;	io_expander.c:117: i2c_start();
      003171 12 32 C3         [24]  773 	lcall	_i2c_start
                                    774 ;	io_expander.c:118: i2c_write(PCF8574_I2C_WRITE_ADDRESS);
      003174 75 82 70         [24]  775 	mov	dpl,#0x70
      003177 12 31 D6         [24]  776 	lcall	_i2c_write
                                    777 ;	io_expander.c:119: i2c_write(value);
      00317A 90 04 03         [24]  778 	mov	dptr,#_pcf8574_write_port_value_65536_31
      00317D E0               [24]  779 	movx	a,@dptr
      00317E F5 82            [12]  780 	mov	dpl,a
      003180 12 31 D6         [24]  781 	lcall	_i2c_write
                                    782 ;	io_expander.c:120: i2c_stop();
                                    783 ;	io_expander.c:121: }
      003183 02 32 D8         [24]  784 	ljmp	_i2c_stop
                                    785 ;------------------------------------------------------------
                                    786 ;Allocation info for local variables in function 'pcf8574_set_pin'
                                    787 ;------------------------------------------------------------
                                    788 ;value                     Allocated with name '_pcf8574_set_pin_PARM_2'
                                    789 ;pin                       Allocated with name '_pcf8574_set_pin_pin_65536_33'
                                    790 ;port_state                Allocated with name '_pcf8574_set_pin_port_state_65536_34'
                                    791 ;------------------------------------------------------------
                                    792 ;	io_expander.c:123: void pcf8574_set_pin(uint8_t pin, uint8_t value) {
                                    793 ;	-----------------------------------------
                                    794 ;	 function pcf8574_set_pin
                                    795 ;	-----------------------------------------
      003186                        796 _pcf8574_set_pin:
      003186 E5 82            [12]  797 	mov	a,dpl
      003188 90 04 05         [24]  798 	mov	dptr,#_pcf8574_set_pin_pin_65536_33
      00318B F0               [24]  799 	movx	@dptr,a
                                    800 ;	io_expander.c:124: uint8_t port_state = pcf8574_read_port();
      00318C 12 31 2F         [24]  801 	lcall	_pcf8574_read_port
      00318F AF 82            [24]  802 	mov	r7,dpl
                                    803 ;	io_expander.c:125: if (value) {
      003191 90 04 04         [24]  804 	mov	dptr,#_pcf8574_set_pin_PARM_2
      003194 E0               [24]  805 	movx	a,@dptr
      003195 60 1D            [24]  806 	jz	00102$
                                    807 ;	io_expander.c:126: port_state |= (1 << pin);  // Set pin high
      003197 90 04 05         [24]  808 	mov	dptr,#_pcf8574_set_pin_pin_65536_33
      00319A E0               [24]  809 	movx	a,@dptr
      00319B FE               [12]  810 	mov	r6,a
      00319C 8E F0            [24]  811 	mov	b,r6
      00319E 05 F0            [12]  812 	inc	b
      0031A0 74 01            [12]  813 	mov	a,#0x01
      0031A2 80 02            [24]  814 	sjmp	00113$
      0031A4                        815 00111$:
      0031A4 25 E0            [12]  816 	add	a,acc
      0031A6                        817 00113$:
      0031A6 D5 F0 FB         [24]  818 	djnz	b,00111$
      0031A9 FE               [12]  819 	mov	r6,a
      0031AA 8F 05            [24]  820 	mov	ar5,r7
      0031AC 90 04 06         [24]  821 	mov	dptr,#_pcf8574_set_pin_port_state_65536_34
      0031AF EE               [12]  822 	mov	a,r6
      0031B0 4D               [12]  823 	orl	a,r5
      0031B1 F0               [24]  824 	movx	@dptr,a
      0031B2 80 19            [24]  825 	sjmp	00103$
      0031B4                        826 00102$:
                                    827 ;	io_expander.c:128: port_state &= ~(1 << pin); // Set pin low
      0031B4 90 04 05         [24]  828 	mov	dptr,#_pcf8574_set_pin_pin_65536_33
      0031B7 E0               [24]  829 	movx	a,@dptr
      0031B8 FE               [12]  830 	mov	r6,a
      0031B9 8E F0            [24]  831 	mov	b,r6
      0031BB 05 F0            [12]  832 	inc	b
      0031BD 74 01            [12]  833 	mov	a,#0x01
      0031BF 80 02            [24]  834 	sjmp	00116$
      0031C1                        835 00114$:
      0031C1 25 E0            [12]  836 	add	a,acc
      0031C3                        837 00116$:
      0031C3 D5 F0 FB         [24]  838 	djnz	b,00114$
      0031C6 F4               [12]  839 	cpl	a
      0031C7 FE               [12]  840 	mov	r6,a
      0031C8 90 04 06         [24]  841 	mov	dptr,#_pcf8574_set_pin_port_state_65536_34
      0031CB 5F               [12]  842 	anl	a,r7
      0031CC F0               [24]  843 	movx	@dptr,a
      0031CD                        844 00103$:
                                    845 ;	io_expander.c:130: pcf8574_write_port(port_state);
      0031CD 90 04 06         [24]  846 	mov	dptr,#_pcf8574_set_pin_port_state_65536_34
      0031D0 E0               [24]  847 	movx	a,@dptr
      0031D1 F5 82            [12]  848 	mov	dpl,a
                                    849 ;	io_expander.c:131: }
      0031D3 02 31 6B         [24]  850 	ljmp	_pcf8574_write_port
                                    851 ;------------------------------------------------------------
                                    852 ;Allocation info for local variables in function 'i2c_write'
                                    853 ;------------------------------------------------------------
                                    854 ;data                      Allocated with name '_i2c_write_data_65536_37'
                                    855 ;i                         Allocated with name '_i2c_write_i_65536_38'
                                    856 ;------------------------------------------------------------
                                    857 ;	io_expander.c:141: int i2c_write(unsigned char data)
                                    858 ;	-----------------------------------------
                                    859 ;	 function i2c_write
                                    860 ;	-----------------------------------------
      0031D6                        861 _i2c_write:
      0031D6 E5 82            [12]  862 	mov	a,dpl
      0031D8 90 04 07         [24]  863 	mov	dptr,#_i2c_write_data_65536_37
      0031DB F0               [24]  864 	movx	@dptr,a
                                    865 ;	io_expander.c:145: for(i=0;i<=7;i++)
      0031DC 7E 00            [12]  866 	mov	r6,#0x00
      0031DE 7F 00            [12]  867 	mov	r7,#0x00
      0031E0                        868 00104$:
                                    869 ;	io_expander.c:147: SDA = (data & 0x80) ? 1 : 0;    //msb first
      0031E0 90 04 07         [24]  870 	mov	dptr,#_i2c_write_data_65536_37
      0031E3 E0               [24]  871 	movx	a,@dptr
      0031E4 FD               [12]  872 	mov	r5,a
      0031E5 23               [12]  873 	rl	a
      0031E6 54 01            [12]  874 	anl	a,#0x01
      0031E8 24 FF            [12]  875 	add	a,#0xff
      0031EA 92 94            [24]  876 	mov	_P1_4,c
                                    877 ;	io_expander.c:148: i2c_delay();        // Setup time for data
      0031EC C0 07            [24]  878 	push	ar7
      0031EE C0 06            [24]  879 	push	ar6
      0031F0 C0 05            [24]  880 	push	ar5
      0031F2 12 32 E5         [24]  881 	lcall	_i2c_delay
                                    882 ;	io_expander.c:149: SCL=1;
                                    883 ;	assignBit
      0031F5 D2 93            [12]  884 	setb	_P1_3
                                    885 ;	io_expander.c:150: i2c_delay();        // Hold time for clock
      0031F7 12 32 E5         [24]  886 	lcall	_i2c_delay
      0031FA D0 05            [24]  887 	pop	ar5
      0031FC D0 06            [24]  888 	pop	ar6
      0031FE D0 07            [24]  889 	pop	ar7
                                    890 ;	io_expander.c:151: SCL=0;
                                    891 ;	assignBit
      003200 C2 93            [12]  892 	clr	_P1_3
                                    893 ;	io_expander.c:152: data = data << 1;
      003202 ED               [12]  894 	mov	a,r5
      003203 2D               [12]  895 	add	a,r5
      003204 90 04 07         [24]  896 	mov	dptr,#_i2c_write_data_65536_37
      003207 F0               [24]  897 	movx	@dptr,a
                                    898 ;	io_expander.c:145: for(i=0;i<=7;i++)
      003208 0E               [12]  899 	inc	r6
      003209 BE 00 01         [24]  900 	cjne	r6,#0x00,00121$
      00320C 0F               [12]  901 	inc	r7
      00320D                        902 00121$:
      00320D C3               [12]  903 	clr	c
      00320E 74 07            [12]  904 	mov	a,#0x07
      003210 9E               [12]  905 	subb	a,r6
      003211 E4               [12]  906 	clr	a
      003212 9F               [12]  907 	subb	a,r7
      003213 50 CB            [24]  908 	jnc	00104$
                                    909 ;	io_expander.c:156: SDA = 1;            // Release SDA for slave
                                    910 ;	assignBit
      003215 D2 94            [12]  911 	setb	_P1_4
                                    912 ;	io_expander.c:157: SCL = 1;            // 9th clock pulse for ACK
                                    913 ;	assignBit
      003217 D2 93            [12]  914 	setb	_P1_3
                                    915 ;	io_expander.c:158: i2c_delay();
      003219 12 32 E5         [24]  916 	lcall	_i2c_delay
                                    917 ;	io_expander.c:159: if(SDA == 1)        // If SDA is still high, no ACK received
      00321C 30 94 19         [24]  918 	jnb	_P1_4,00103$
                                    919 ;	io_expander.c:162: printf("ACK DID NOT ARRIVE\n\r");
      00321F 74 EC            [12]  920 	mov	a,#___str_3
      003221 C0 E0            [24]  921 	push	acc
      003223 74 3D            [12]  922 	mov	a,#(___str_3 >> 8)
      003225 C0 E0            [24]  923 	push	acc
      003227 74 80            [12]  924 	mov	a,#0x80
      003229 C0 E0            [24]  925 	push	acc
      00322B 12 33 4A         [24]  926 	lcall	_printf
      00322E 15 81            [12]  927 	dec	sp
      003230 15 81            [12]  928 	dec	sp
      003232 15 81            [12]  929 	dec	sp
                                    930 ;	io_expander.c:163: return 0;       // Error
      003234 90 00 00         [24]  931 	mov	dptr,#0x0000
      003237 22               [24]  932 	ret
      003238                        933 00103$:
                                    934 ;	io_expander.c:165: SCL = 0;
                                    935 ;	assignBit
      003238 C2 93            [12]  936 	clr	_P1_3
                                    937 ;	io_expander.c:167: return 1;           // Success
      00323A 90 00 01         [24]  938 	mov	dptr,#0x0001
                                    939 ;	io_expander.c:169: }
      00323D 22               [24]  940 	ret
                                    941 ;------------------------------------------------------------
                                    942 ;Allocation info for local variables in function 'i2c_read'
                                    943 ;------------------------------------------------------------
                                    944 ;ACK                       Allocated with name '_i2c_read_ACK_65536_42'
                                    945 ;buff                      Allocated with name '_i2c_read_buff_65536_43'
                                    946 ;i                         Allocated with name '_i2c_read_i_131072_44'
                                    947 ;------------------------------------------------------------
                                    948 ;	io_expander.c:179: int i2c_read(int ACK)
                                    949 ;	-----------------------------------------
                                    950 ;	 function i2c_read
                                    951 ;	-----------------------------------------
      00323E                        952 _i2c_read:
      00323E AF 83            [24]  953 	mov	r7,dph
      003240 E5 82            [12]  954 	mov	a,dpl
      003242 90 04 08         [24]  955 	mov	dptr,#_i2c_read_ACK_65536_42
      003245 F0               [24]  956 	movx	@dptr,a
      003246 EF               [12]  957 	mov	a,r7
      003247 A3               [24]  958 	inc	dptr
      003248 F0               [24]  959 	movx	@dptr,a
                                    960 ;	io_expander.c:181: unsigned char buff=0;
      003249 90 04 0A         [24]  961 	mov	dptr,#_i2c_read_buff_65536_43
      00324C E4               [12]  962 	clr	a
      00324D F0               [24]  963 	movx	@dptr,a
                                    964 ;	io_expander.c:182: SCL = 0;
                                    965 ;	assignBit
      00324E C2 93            [12]  966 	clr	_P1_3
                                    967 ;	io_expander.c:183: for(int i=0;i<8;i++)
      003250 7E 00            [12]  968 	mov	r6,#0x00
      003252 7F 00            [12]  969 	mov	r7,#0x00
      003254                        970 00103$:
      003254 C3               [12]  971 	clr	c
      003255 EE               [12]  972 	mov	a,r6
      003256 94 08            [12]  973 	subb	a,#0x08
      003258 EF               [12]  974 	mov	a,r7
      003259 64 80            [12]  975 	xrl	a,#0x80
      00325B 94 80            [12]  976 	subb	a,#0x80
      00325D 50 40            [24]  977 	jnc	00101$
                                    978 ;	io_expander.c:185: SCL = 1;
                                    979 ;	assignBit
      00325F D2 93            [12]  980 	setb	_P1_3
                                    981 ;	io_expander.c:186: i2c_delay();
      003261 C0 07            [24]  982 	push	ar7
      003263 C0 06            [24]  983 	push	ar6
      003265 12 32 E5         [24]  984 	lcall	_i2c_delay
      003268 D0 06            [24]  985 	pop	ar6
      00326A D0 07            [24]  986 	pop	ar7
                                    987 ;	io_expander.c:187: buff |= (SDA << (7 - i));
      00326C A2 94            [12]  988 	mov	c,_P1_4
      00326E E4               [12]  989 	clr	a
      00326F 33               [12]  990 	rlc	a
      003270 FD               [12]  991 	mov	r5,a
      003271 8E 04            [24]  992 	mov	ar4,r6
      003273 74 07            [12]  993 	mov	a,#0x07
      003275 C3               [12]  994 	clr	c
      003276 9C               [12]  995 	subb	a,r4
      003277 FC               [12]  996 	mov	r4,a
      003278 8C F0            [24]  997 	mov	b,r4
      00327A 05 F0            [12]  998 	inc	b
      00327C ED               [12]  999 	mov	a,r5
      00327D 80 02            [24] 1000 	sjmp	00119$
      00327F                       1001 00117$:
      00327F 25 E0            [12] 1002 	add	a,acc
      003281                       1003 00119$:
      003281 D5 F0 FB         [24] 1004 	djnz	b,00117$
      003284 FC               [12] 1005 	mov	r4,a
      003285 90 04 0A         [24] 1006 	mov	dptr,#_i2c_read_buff_65536_43
      003288 E0               [24] 1007 	movx	a,@dptr
      003289 4C               [12] 1008 	orl	a,r4
      00328A F0               [24] 1009 	movx	@dptr,a
                                   1010 ;	io_expander.c:188: i2c_delay();
      00328B C0 07            [24] 1011 	push	ar7
      00328D C0 06            [24] 1012 	push	ar6
      00328F 12 32 E5         [24] 1013 	lcall	_i2c_delay
      003292 D0 06            [24] 1014 	pop	ar6
      003294 D0 07            [24] 1015 	pop	ar7
                                   1016 ;	io_expander.c:189: SCL=0;
                                   1017 ;	assignBit
      003296 C2 93            [12] 1018 	clr	_P1_3
                                   1019 ;	io_expander.c:183: for(int i=0;i<8;i++)
      003298 0E               [12] 1020 	inc	r6
      003299 BE 00 B8         [24] 1021 	cjne	r6,#0x00,00103$
      00329C 0F               [12] 1022 	inc	r7
      00329D 80 B5            [24] 1023 	sjmp	00103$
      00329F                       1024 00101$:
                                   1025 ;	io_expander.c:193: SDA = !ACK;         // ACK = 0, NACK = 1
      00329F 90 04 08         [24] 1026 	mov	dptr,#_i2c_read_ACK_65536_42
      0032A2 E0               [24] 1027 	movx	a,@dptr
      0032A3 FE               [12] 1028 	mov	r6,a
      0032A4 A3               [24] 1029 	inc	dptr
      0032A5 E0               [24] 1030 	movx	a,@dptr
      0032A6 4E               [12] 1031 	orl	a,r6
      0032A7 B4 01 00         [24] 1032 	cjne	a,#0x01,00121$
      0032AA                       1033 00121$:
      0032AA E4               [12] 1034 	clr	a
      0032AB 33               [12] 1035 	rlc	a
      0032AC 24 FF            [12] 1036 	add	a,#0xff
      0032AE 92 94            [24] 1037 	mov	_P1_4,c
                                   1038 ;	io_expander.c:194: SCL = 1;
                                   1039 ;	assignBit
      0032B0 D2 93            [12] 1040 	setb	_P1_3
                                   1041 ;	io_expander.c:195: i2c_delay();
      0032B2 12 32 E5         [24] 1042 	lcall	_i2c_delay
                                   1043 ;	io_expander.c:196: SCL = 0;
                                   1044 ;	assignBit
      0032B5 C2 93            [12] 1045 	clr	_P1_3
                                   1046 ;	io_expander.c:198: return buff;
      0032B7 90 04 0A         [24] 1047 	mov	dptr,#_i2c_read_buff_65536_43
      0032BA E0               [24] 1048 	movx	a,@dptr
      0032BB FF               [12] 1049 	mov	r7,a
      0032BC 7E 00            [12] 1050 	mov	r6,#0x00
      0032BE 8F 82            [24] 1051 	mov	dpl,r7
      0032C0 8E 83            [24] 1052 	mov	dph,r6
                                   1053 ;	io_expander.c:199: }
      0032C2 22               [24] 1054 	ret
                                   1055 ;------------------------------------------------------------
                                   1056 ;Allocation info for local variables in function 'i2c_start'
                                   1057 ;------------------------------------------------------------
                                   1058 ;	io_expander.c:206: void i2c_start(void)
                                   1059 ;	-----------------------------------------
                                   1060 ;	 function i2c_start
                                   1061 ;	-----------------------------------------
      0032C3                       1062 _i2c_start:
                                   1063 ;	io_expander.c:208: i2c_delay();
      0032C3 12 32 E5         [24] 1064 	lcall	_i2c_delay
                                   1065 ;	io_expander.c:209: SDA = 1;
                                   1066 ;	assignBit
      0032C6 D2 94            [12] 1067 	setb	_P1_4
                                   1068 ;	io_expander.c:210: i2c_delay();
      0032C8 12 32 E5         [24] 1069 	lcall	_i2c_delay
                                   1070 ;	io_expander.c:211: SCL = 1;
                                   1071 ;	assignBit
      0032CB D2 93            [12] 1072 	setb	_P1_3
                                   1073 ;	io_expander.c:212: i2c_delay();
      0032CD 12 32 E5         [24] 1074 	lcall	_i2c_delay
                                   1075 ;	io_expander.c:213: SDA = 0;
                                   1076 ;	assignBit
      0032D0 C2 94            [12] 1077 	clr	_P1_4
                                   1078 ;	io_expander.c:214: i2c_delay();
      0032D2 12 32 E5         [24] 1079 	lcall	_i2c_delay
                                   1080 ;	io_expander.c:215: SCL = 0;
                                   1081 ;	assignBit
      0032D5 C2 93            [12] 1082 	clr	_P1_3
                                   1083 ;	io_expander.c:216: }
      0032D7 22               [24] 1084 	ret
                                   1085 ;------------------------------------------------------------
                                   1086 ;Allocation info for local variables in function 'i2c_stop'
                                   1087 ;------------------------------------------------------------
                                   1088 ;	io_expander.c:223: void i2c_stop(void)
                                   1089 ;	-----------------------------------------
                                   1090 ;	 function i2c_stop
                                   1091 ;	-----------------------------------------
      0032D8                       1092 _i2c_stop:
                                   1093 ;	io_expander.c:225: SDA = 0;
                                   1094 ;	assignBit
      0032D8 C2 94            [12] 1095 	clr	_P1_4
                                   1096 ;	io_expander.c:226: i2c_delay();
      0032DA 12 32 E5         [24] 1097 	lcall	_i2c_delay
                                   1098 ;	io_expander.c:227: SCL = 1;
                                   1099 ;	assignBit
      0032DD D2 93            [12] 1100 	setb	_P1_3
                                   1101 ;	io_expander.c:228: i2c_delay();
      0032DF 12 32 E5         [24] 1102 	lcall	_i2c_delay
                                   1103 ;	io_expander.c:229: SDA = 1; 
                                   1104 ;	assignBit
      0032E2 D2 94            [12] 1105 	setb	_P1_4
                                   1106 ;	io_expander.c:230: }
      0032E4 22               [24] 1107 	ret
                                   1108 ;------------------------------------------------------------
                                   1109 ;Allocation info for local variables in function 'i2c_delay'
                                   1110 ;------------------------------------------------------------
                                   1111 ;i                         Allocated with name '_i2c_delay_i_131072_51'
                                   1112 ;------------------------------------------------------------
                                   1113 ;	io_expander.c:239: void i2c_delay() 
                                   1114 ;	-----------------------------------------
                                   1115 ;	 function i2c_delay
                                   1116 ;	-----------------------------------------
      0032E5                       1117 _i2c_delay:
                                   1118 ;	io_expander.c:241: for(int i = 0; i<500; i++);
      0032E5 7E 00            [12] 1119 	mov	r6,#0x00
      0032E7 7F 00            [12] 1120 	mov	r7,#0x00
      0032E9                       1121 00103$:
      0032E9 C3               [12] 1122 	clr	c
      0032EA EE               [12] 1123 	mov	a,r6
      0032EB 94 F4            [12] 1124 	subb	a,#0xf4
      0032ED EF               [12] 1125 	mov	a,r7
      0032EE 64 80            [12] 1126 	xrl	a,#0x80
      0032F0 94 81            [12] 1127 	subb	a,#0x81
      0032F2 50 07            [24] 1128 	jnc	00105$
      0032F4 0E               [12] 1129 	inc	r6
      0032F5 BE 00 F1         [24] 1130 	cjne	r6,#0x00,00103$
      0032F8 0F               [12] 1131 	inc	r7
      0032F9 80 EE            [24] 1132 	sjmp	00103$
      0032FB                       1133 00105$:
                                   1134 ;	io_expander.c:242: }
      0032FB 22               [24] 1135 	ret
                                   1136 	.area CSEG    (CODE)
                                   1137 	.area CONST   (CODE)
                                   1138 	.area CONST   (CODE)
      003DAC                       1139 ___str_0:
      003DAC 49 4F 20 45 58 50 41  1140 	.ascii "IO EXPANDER PROGRAM"
             4E 44 45 52 20 50 52
             4F 47 52 41 4D
      003DBF 0A                    1141 	.db 0x0a
      003DC0 0D                    1142 	.db 0x0d
      003DC1 00                    1143 	.db 0x00
                                   1144 	.area CSEG    (CODE)
                                   1145 	.area CONST   (CODE)
      003DC2                       1146 ___str_1:
      003DC2 49 4F 20 65 78 70 61  1147 	.ascii "IO expander initialized"
             6E 64 65 72 20 69 6E
             69 74 69 61 6C 69 7A
             65 64
      003DD9 0A                    1148 	.db 0x0a
      003DDA 0D                    1149 	.db 0x0d
      003DDB 00                    1150 	.db 0x00
                                   1151 	.area CSEG    (CODE)
                                   1152 	.area CONST   (CODE)
      003DDC                       1153 ___str_2:
      003DDC 70 6F 72 74 20 30 20  1154 	.ascii "port 0 pin %d"
             70 69 6E 20 25 64
      003DE9 0A                    1155 	.db 0x0a
      003DEA 0D                    1156 	.db 0x0d
      003DEB 00                    1157 	.db 0x00
                                   1158 	.area CSEG    (CODE)
                                   1159 	.area CONST   (CODE)
      003DEC                       1160 ___str_3:
      003DEC 41 43 4B 20 44 49 44  1161 	.ascii "ACK DID NOT ARRIVE"
             20 4E 4F 54 20 41 52
             52 49 56 45
      003DFE 0A                    1162 	.db 0x0a
      003DFF 0D                    1163 	.db 0x0d
      003E00 00                    1164 	.db 0x00
                                   1165 	.area CSEG    (CODE)
                                   1166 	.area XINIT   (CODE)
                                   1167 	.area CABS    (ABS,CODE)
