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
      000402                        469 _pcf8574_read_pin_pin_65536_31:
      000402                        470 	.ds 1
      000403                        471 _pcf8574_write_port_value_65536_33:
      000403                        472 	.ds 1
      000404                        473 _pcf8574_set_pin_PARM_2:
      000404                        474 	.ds 1
      000405                        475 _pcf8574_set_pin_pin_65536_35:
      000405                        476 	.ds 1
      000406                        477 _pcf8574_set_pin_port_state_65536_36:
      000406                        478 	.ds 1
      000407                        479 _i2c_write_data_65536_39:
      000407                        480 	.ds 1
      000408                        481 _i2c_read_ACK_65536_44:
      000408                        482 	.ds 2
      00040A                        483 _i2c_read_buff_65536_45:
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
                                    606 ;result                    Allocated with name '_main_result_131072_26'
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
      003095 74 BF            [12]  618 	mov	a,#___str_0
      003097 C0 E0            [24]  619 	push	acc
      003099 74 3D            [12]  620 	mov	a,#(___str_0 >> 8)
      00309B C0 E0            [24]  621 	push	acc
      00309D 74 80            [12]  622 	mov	a,#0x80
      00309F C0 E0            [24]  623 	push	acc
      0030A1 12 33 5D         [24]  624 	lcall	_printf
      0030A4 15 81            [12]  625 	dec	sp
      0030A6 15 81            [12]  626 	dec	sp
      0030A8 15 81            [12]  627 	dec	sp
                                    628 ;	io_expander.c:63: i2c_start();
      0030AA 12 32 D6         [24]  629 	lcall	_i2c_start
                                    630 ;	io_expander.c:64: i2c_write(IO_EXPANDER_ID | WRITE);
      0030AD 75 82 40         [24]  631 	mov	dpl,#0x40
      0030B0 12 31 E9         [24]  632 	lcall	_i2c_write
                                    633 ;	io_expander.c:65: i2c_write(INPUT_OUTPUT);
      0030B3 75 82 03         [24]  634 	mov	dpl,#0x03
      0030B6 12 31 E9         [24]  635 	lcall	_i2c_write
                                    636 ;	io_expander.c:66: i2c_stop();
      0030B9 12 32 EB         [24]  637 	lcall	_i2c_stop
                                    638 ;	io_expander.c:68: printf("IO expander initialized\n\r");
      0030BC 74 D5            [12]  639 	mov	a,#___str_1
      0030BE C0 E0            [24]  640 	push	acc
      0030C0 74 3D            [12]  641 	mov	a,#(___str_1 >> 8)
      0030C2 C0 E0            [24]  642 	push	acc
      0030C4 74 80            [12]  643 	mov	a,#0x80
      0030C6 C0 E0            [24]  644 	push	acc
      0030C8 12 33 5D         [24]  645 	lcall	_printf
      0030CB 15 81            [12]  646 	dec	sp
      0030CD 15 81            [12]  647 	dec	sp
      0030CF 15 81            [12]  648 	dec	sp
                                    649 ;	io_expander.c:69: while(1)
      0030D1                        650 00107$:
                                    651 ;	io_expander.c:71: int result = pcf8574_read_pin(0);
      0030D1 75 82 00         [24]  652 	mov	dpl,#0x00
      0030D4 12 31 5D         [24]  653 	lcall	_pcf8574_read_pin
      0030D7 AF 82            [24]  654 	mov	r7,dpl
      0030D9 8F 05            [24]  655 	mov	ar5,r7
      0030DB 7E 00            [12]  656 	mov	r6,#0x00
                                    657 ;	io_expander.c:72: if(result == 0)
      0030DD EF               [12]  658 	mov	a,r7
      0030DE 70 2D            [24]  659 	jnz	00104$
                                    660 ;	io_expander.c:74: pcf8574_set_pin(7, 0);
      0030E0 90 04 04         [24]  661 	mov	dptr,#_pcf8574_set_pin_PARM_2
      0030E3 E4               [12]  662 	clr	a
      0030E4 F0               [24]  663 	movx	@dptr,a
      0030E5 75 82 07         [24]  664 	mov	dpl,#0x07
      0030E8 12 31 99         [24]  665 	lcall	_pcf8574_set_pin
                                    666 ;	io_expander.c:75: pcf8574_set_pin(6, 0);
      0030EB 90 04 04         [24]  667 	mov	dptr,#_pcf8574_set_pin_PARM_2
      0030EE E4               [12]  668 	clr	a
      0030EF F0               [24]  669 	movx	@dptr,a
      0030F0 75 82 06         [24]  670 	mov	dpl,#0x06
      0030F3 12 31 99         [24]  671 	lcall	_pcf8574_set_pin
                                    672 ;	io_expander.c:76: printf("H\n\r");
      0030F6 74 EF            [12]  673 	mov	a,#___str_2
      0030F8 C0 E0            [24]  674 	push	acc
      0030FA 74 3D            [12]  675 	mov	a,#(___str_2 >> 8)
      0030FC C0 E0            [24]  676 	push	acc
      0030FE 74 80            [12]  677 	mov	a,#0x80
      003100 C0 E0            [24]  678 	push	acc
      003102 12 33 5D         [24]  679 	lcall	_printf
      003105 15 81            [12]  680 	dec	sp
      003107 15 81            [12]  681 	dec	sp
      003109 15 81            [12]  682 	dec	sp
      00310B 80 C4            [24]  683 	sjmp	00107$
      00310D                        684 00104$:
                                    685 ;	io_expander.c:78: else if(result == 1)
      00310D BD 01 C1         [24]  686 	cjne	r5,#0x01,00107$
      003110 BE 00 BE         [24]  687 	cjne	r6,#0x00,00107$
                                    688 ;	io_expander.c:80: pcf8574_set_pin(7, 1);
      003113 90 04 04         [24]  689 	mov	dptr,#_pcf8574_set_pin_PARM_2
      003116 74 01            [12]  690 	mov	a,#0x01
      003118 F0               [24]  691 	movx	@dptr,a
      003119 75 82 07         [24]  692 	mov	dpl,#0x07
      00311C 12 31 99         [24]  693 	lcall	_pcf8574_set_pin
                                    694 ;	io_expander.c:81: pcf8574_set_pin(6, 1);
      00311F 90 04 04         [24]  695 	mov	dptr,#_pcf8574_set_pin_PARM_2
      003122 74 01            [12]  696 	mov	a,#0x01
      003124 F0               [24]  697 	movx	@dptr,a
      003125 75 82 06         [24]  698 	mov	dpl,#0x06
      003128 12 31 99         [24]  699 	lcall	_pcf8574_set_pin
                                    700 ;	io_expander.c:82: printf("L\n\r");
      00312B 74 F3            [12]  701 	mov	a,#___str_3
      00312D C0 E0            [24]  702 	push	acc
      00312F 74 3D            [12]  703 	mov	a,#(___str_3 >> 8)
      003131 C0 E0            [24]  704 	push	acc
      003133 74 80            [12]  705 	mov	a,#0x80
      003135 C0 E0            [24]  706 	push	acc
      003137 12 33 5D         [24]  707 	lcall	_printf
      00313A 15 81            [12]  708 	dec	sp
      00313C 15 81            [12]  709 	dec	sp
      00313E 15 81            [12]  710 	dec	sp
                                    711 ;	io_expander.c:89: }
      003140 80 8F            [24]  712 	sjmp	00107$
                                    713 ;------------------------------------------------------------
                                    714 ;Allocation info for local variables in function 'pcf8574_read_port'
                                    715 ;------------------------------------------------------------
                                    716 ;data                      Allocated with name '_pcf8574_read_port_data_65536_30'
                                    717 ;------------------------------------------------------------
                                    718 ;	io_expander.c:92: uint8_t pcf8574_read_port(void) {
                                    719 ;	-----------------------------------------
                                    720 ;	 function pcf8574_read_port
                                    721 ;	-----------------------------------------
      003142                        722 _pcf8574_read_port:
                                    723 ;	io_expander.c:94: i2c_start();
      003142 12 32 D6         [24]  724 	lcall	_i2c_start
                                    725 ;	io_expander.c:95: i2c_write(IO_EXPANDER_ID | READ);
      003145 75 82 41         [24]  726 	mov	dpl,#0x41
      003148 12 31 E9         [24]  727 	lcall	_i2c_write
                                    728 ;	io_expander.c:96: data = i2c_read(0);
      00314B 90 00 00         [24]  729 	mov	dptr,#0x0000
      00314E 12 32 51         [24]  730 	lcall	_i2c_read
      003151 AE 82            [24]  731 	mov	r6,dpl
                                    732 ;	io_expander.c:97: i2c_stop();
      003153 C0 06            [24]  733 	push	ar6
      003155 12 32 EB         [24]  734 	lcall	_i2c_stop
      003158 D0 06            [24]  735 	pop	ar6
                                    736 ;	io_expander.c:98: return data;
      00315A 8E 82            [24]  737 	mov	dpl,r6
                                    738 ;	io_expander.c:99: }
      00315C 22               [24]  739 	ret
                                    740 ;------------------------------------------------------------
                                    741 ;Allocation info for local variables in function 'pcf8574_read_pin'
                                    742 ;------------------------------------------------------------
                                    743 ;pin                       Allocated with name '_pcf8574_read_pin_pin_65536_31'
                                    744 ;port_state                Allocated with name '_pcf8574_read_pin_port_state_65536_32'
                                    745 ;------------------------------------------------------------
                                    746 ;	io_expander.c:101: uint8_t pcf8574_read_pin(uint8_t pin) {
                                    747 ;	-----------------------------------------
                                    748 ;	 function pcf8574_read_pin
                                    749 ;	-----------------------------------------
      00315D                        750 _pcf8574_read_pin:
      00315D E5 82            [12]  751 	mov	a,dpl
      00315F 90 04 02         [24]  752 	mov	dptr,#_pcf8574_read_pin_pin_65536_31
      003162 F0               [24]  753 	movx	@dptr,a
                                    754 ;	io_expander.c:102: uint8_t port_state = pcf8574_read_port();
      003163 12 31 42         [24]  755 	lcall	_pcf8574_read_port
      003166 AF 82            [24]  756 	mov	r7,dpl
                                    757 ;	io_expander.c:103: return (port_state >> pin) & 0x01;
      003168 90 04 02         [24]  758 	mov	dptr,#_pcf8574_read_pin_pin_65536_31
      00316B E0               [24]  759 	movx	a,@dptr
      00316C FE               [12]  760 	mov	r6,a
      00316D 8E F0            [24]  761 	mov	b,r6
      00316F 05 F0            [12]  762 	inc	b
      003171 EF               [12]  763 	mov	a,r7
      003172 80 02            [24]  764 	sjmp	00104$
      003174                        765 00103$:
      003174 C3               [12]  766 	clr	c
      003175 13               [12]  767 	rrc	a
      003176                        768 00104$:
      003176 D5 F0 FB         [24]  769 	djnz	b,00103$
      003179 54 01            [12]  770 	anl	a,#0x01
                                    771 ;	io_expander.c:104: }
      00317B F5 82            [12]  772 	mov	dpl,a
      00317D 22               [24]  773 	ret
                                    774 ;------------------------------------------------------------
                                    775 ;Allocation info for local variables in function 'pcf8574_write_port'
                                    776 ;------------------------------------------------------------
                                    777 ;value                     Allocated with name '_pcf8574_write_port_value_65536_33'
                                    778 ;------------------------------------------------------------
                                    779 ;	io_expander.c:106: void pcf8574_write_port(uint8_t value)
                                    780 ;	-----------------------------------------
                                    781 ;	 function pcf8574_write_port
                                    782 ;	-----------------------------------------
      00317E                        783 _pcf8574_write_port:
      00317E E5 82            [12]  784 	mov	a,dpl
      003180 90 04 03         [24]  785 	mov	dptr,#_pcf8574_write_port_value_65536_33
      003183 F0               [24]  786 	movx	@dptr,a
                                    787 ;	io_expander.c:108: i2c_start();
      003184 12 32 D6         [24]  788 	lcall	_i2c_start
                                    789 ;	io_expander.c:109: i2c_write(IO_EXPANDER_ID | WRITE);
      003187 75 82 40         [24]  790 	mov	dpl,#0x40
      00318A 12 31 E9         [24]  791 	lcall	_i2c_write
                                    792 ;	io_expander.c:110: i2c_write(value);
      00318D 90 04 03         [24]  793 	mov	dptr,#_pcf8574_write_port_value_65536_33
      003190 E0               [24]  794 	movx	a,@dptr
      003191 F5 82            [12]  795 	mov	dpl,a
      003193 12 31 E9         [24]  796 	lcall	_i2c_write
                                    797 ;	io_expander.c:111: i2c_stop();
                                    798 ;	io_expander.c:112: }
      003196 02 32 EB         [24]  799 	ljmp	_i2c_stop
                                    800 ;------------------------------------------------------------
                                    801 ;Allocation info for local variables in function 'pcf8574_set_pin'
                                    802 ;------------------------------------------------------------
                                    803 ;value                     Allocated with name '_pcf8574_set_pin_PARM_2'
                                    804 ;pin                       Allocated with name '_pcf8574_set_pin_pin_65536_35'
                                    805 ;port_state                Allocated with name '_pcf8574_set_pin_port_state_65536_36'
                                    806 ;------------------------------------------------------------
                                    807 ;	io_expander.c:114: void pcf8574_set_pin(uint8_t pin, uint8_t value) {
                                    808 ;	-----------------------------------------
                                    809 ;	 function pcf8574_set_pin
                                    810 ;	-----------------------------------------
      003199                        811 _pcf8574_set_pin:
      003199 E5 82            [12]  812 	mov	a,dpl
      00319B 90 04 05         [24]  813 	mov	dptr,#_pcf8574_set_pin_pin_65536_35
      00319E F0               [24]  814 	movx	@dptr,a
                                    815 ;	io_expander.c:115: uint8_t port_state = pcf8574_read_port();
      00319F 12 31 42         [24]  816 	lcall	_pcf8574_read_port
      0031A2 AF 82            [24]  817 	mov	r7,dpl
                                    818 ;	io_expander.c:116: if (value) {
      0031A4 90 04 04         [24]  819 	mov	dptr,#_pcf8574_set_pin_PARM_2
      0031A7 E0               [24]  820 	movx	a,@dptr
      0031A8 60 1D            [24]  821 	jz	00102$
                                    822 ;	io_expander.c:117: port_state |= (1 << pin);  // Set pin high
      0031AA 90 04 05         [24]  823 	mov	dptr,#_pcf8574_set_pin_pin_65536_35
      0031AD E0               [24]  824 	movx	a,@dptr
      0031AE FE               [12]  825 	mov	r6,a
      0031AF 8E F0            [24]  826 	mov	b,r6
      0031B1 05 F0            [12]  827 	inc	b
      0031B3 74 01            [12]  828 	mov	a,#0x01
      0031B5 80 02            [24]  829 	sjmp	00113$
      0031B7                        830 00111$:
      0031B7 25 E0            [12]  831 	add	a,acc
      0031B9                        832 00113$:
      0031B9 D5 F0 FB         [24]  833 	djnz	b,00111$
      0031BC FE               [12]  834 	mov	r6,a
      0031BD 8F 05            [24]  835 	mov	ar5,r7
      0031BF 90 04 06         [24]  836 	mov	dptr,#_pcf8574_set_pin_port_state_65536_36
      0031C2 EE               [12]  837 	mov	a,r6
      0031C3 4D               [12]  838 	orl	a,r5
      0031C4 F0               [24]  839 	movx	@dptr,a
      0031C5 80 19            [24]  840 	sjmp	00103$
      0031C7                        841 00102$:
                                    842 ;	io_expander.c:119: port_state &= ~(1 << pin); // Set pin low
      0031C7 90 04 05         [24]  843 	mov	dptr,#_pcf8574_set_pin_pin_65536_35
      0031CA E0               [24]  844 	movx	a,@dptr
      0031CB FE               [12]  845 	mov	r6,a
      0031CC 8E F0            [24]  846 	mov	b,r6
      0031CE 05 F0            [12]  847 	inc	b
      0031D0 74 01            [12]  848 	mov	a,#0x01
      0031D2 80 02            [24]  849 	sjmp	00116$
      0031D4                        850 00114$:
      0031D4 25 E0            [12]  851 	add	a,acc
      0031D6                        852 00116$:
      0031D6 D5 F0 FB         [24]  853 	djnz	b,00114$
      0031D9 F4               [12]  854 	cpl	a
      0031DA FE               [12]  855 	mov	r6,a
      0031DB 90 04 06         [24]  856 	mov	dptr,#_pcf8574_set_pin_port_state_65536_36
      0031DE 5F               [12]  857 	anl	a,r7
      0031DF F0               [24]  858 	movx	@dptr,a
      0031E0                        859 00103$:
                                    860 ;	io_expander.c:121: pcf8574_write_port(port_state);
      0031E0 90 04 06         [24]  861 	mov	dptr,#_pcf8574_set_pin_port_state_65536_36
      0031E3 E0               [24]  862 	movx	a,@dptr
      0031E4 F5 82            [12]  863 	mov	dpl,a
                                    864 ;	io_expander.c:122: }
      0031E6 02 31 7E         [24]  865 	ljmp	_pcf8574_write_port
                                    866 ;------------------------------------------------------------
                                    867 ;Allocation info for local variables in function 'i2c_write'
                                    868 ;------------------------------------------------------------
                                    869 ;data                      Allocated with name '_i2c_write_data_65536_39'
                                    870 ;i                         Allocated with name '_i2c_write_i_65536_40'
                                    871 ;------------------------------------------------------------
                                    872 ;	io_expander.c:132: int i2c_write(unsigned char data)
                                    873 ;	-----------------------------------------
                                    874 ;	 function i2c_write
                                    875 ;	-----------------------------------------
      0031E9                        876 _i2c_write:
      0031E9 E5 82            [12]  877 	mov	a,dpl
      0031EB 90 04 07         [24]  878 	mov	dptr,#_i2c_write_data_65536_39
      0031EE F0               [24]  879 	movx	@dptr,a
                                    880 ;	io_expander.c:136: for(i=0;i<=7;i++)
      0031EF 7E 00            [12]  881 	mov	r6,#0x00
      0031F1 7F 00            [12]  882 	mov	r7,#0x00
      0031F3                        883 00104$:
                                    884 ;	io_expander.c:138: SDA = (data & 0x80) ? 1 : 0;    //msb first
      0031F3 90 04 07         [24]  885 	mov	dptr,#_i2c_write_data_65536_39
      0031F6 E0               [24]  886 	movx	a,@dptr
      0031F7 FD               [12]  887 	mov	r5,a
      0031F8 23               [12]  888 	rl	a
      0031F9 54 01            [12]  889 	anl	a,#0x01
      0031FB 24 FF            [12]  890 	add	a,#0xff
      0031FD 92 94            [24]  891 	mov	_P1_4,c
                                    892 ;	io_expander.c:139: i2c_delay();        // Setup time for data
      0031FF C0 07            [24]  893 	push	ar7
      003201 C0 06            [24]  894 	push	ar6
      003203 C0 05            [24]  895 	push	ar5
      003205 12 32 F8         [24]  896 	lcall	_i2c_delay
                                    897 ;	io_expander.c:140: SCL=1;
                                    898 ;	assignBit
      003208 D2 93            [12]  899 	setb	_P1_3
                                    900 ;	io_expander.c:141: i2c_delay();        // Hold time for clock
      00320A 12 32 F8         [24]  901 	lcall	_i2c_delay
      00320D D0 05            [24]  902 	pop	ar5
      00320F D0 06            [24]  903 	pop	ar6
      003211 D0 07            [24]  904 	pop	ar7
                                    905 ;	io_expander.c:142: SCL=0;
                                    906 ;	assignBit
      003213 C2 93            [12]  907 	clr	_P1_3
                                    908 ;	io_expander.c:143: data = data << 1;
      003215 ED               [12]  909 	mov	a,r5
      003216 2D               [12]  910 	add	a,r5
      003217 90 04 07         [24]  911 	mov	dptr,#_i2c_write_data_65536_39
      00321A F0               [24]  912 	movx	@dptr,a
                                    913 ;	io_expander.c:136: for(i=0;i<=7;i++)
      00321B 0E               [12]  914 	inc	r6
      00321C BE 00 01         [24]  915 	cjne	r6,#0x00,00121$
      00321F 0F               [12]  916 	inc	r7
      003220                        917 00121$:
      003220 C3               [12]  918 	clr	c
      003221 74 07            [12]  919 	mov	a,#0x07
      003223 9E               [12]  920 	subb	a,r6
      003224 E4               [12]  921 	clr	a
      003225 9F               [12]  922 	subb	a,r7
      003226 50 CB            [24]  923 	jnc	00104$
                                    924 ;	io_expander.c:147: SDA = 1;            // Release SDA for slave
                                    925 ;	assignBit
      003228 D2 94            [12]  926 	setb	_P1_4
                                    927 ;	io_expander.c:148: SCL = 1;            // 9th clock pulse for ACK
                                    928 ;	assignBit
      00322A D2 93            [12]  929 	setb	_P1_3
                                    930 ;	io_expander.c:149: i2c_delay();
      00322C 12 32 F8         [24]  931 	lcall	_i2c_delay
                                    932 ;	io_expander.c:150: if(SDA == 1)        // If SDA is still high, no ACK received
      00322F 30 94 19         [24]  933 	jnb	_P1_4,00103$
                                    934 ;	io_expander.c:153: printf("ACK DID NOT ARRIVE\n\r");
      003232 74 F7            [12]  935 	mov	a,#___str_4
      003234 C0 E0            [24]  936 	push	acc
      003236 74 3D            [12]  937 	mov	a,#(___str_4 >> 8)
      003238 C0 E0            [24]  938 	push	acc
      00323A 74 80            [12]  939 	mov	a,#0x80
      00323C C0 E0            [24]  940 	push	acc
      00323E 12 33 5D         [24]  941 	lcall	_printf
      003241 15 81            [12]  942 	dec	sp
      003243 15 81            [12]  943 	dec	sp
      003245 15 81            [12]  944 	dec	sp
                                    945 ;	io_expander.c:154: return 0;       // Error
      003247 90 00 00         [24]  946 	mov	dptr,#0x0000
      00324A 22               [24]  947 	ret
      00324B                        948 00103$:
                                    949 ;	io_expander.c:156: SCL = 0;
                                    950 ;	assignBit
      00324B C2 93            [12]  951 	clr	_P1_3
                                    952 ;	io_expander.c:158: return 1;           // Success
      00324D 90 00 01         [24]  953 	mov	dptr,#0x0001
                                    954 ;	io_expander.c:160: }
      003250 22               [24]  955 	ret
                                    956 ;------------------------------------------------------------
                                    957 ;Allocation info for local variables in function 'i2c_read'
                                    958 ;------------------------------------------------------------
                                    959 ;ACK                       Allocated with name '_i2c_read_ACK_65536_44'
                                    960 ;buff                      Allocated with name '_i2c_read_buff_65536_45'
                                    961 ;i                         Allocated with name '_i2c_read_i_131072_46'
                                    962 ;------------------------------------------------------------
                                    963 ;	io_expander.c:170: int i2c_read(int ACK)
                                    964 ;	-----------------------------------------
                                    965 ;	 function i2c_read
                                    966 ;	-----------------------------------------
      003251                        967 _i2c_read:
      003251 AF 83            [24]  968 	mov	r7,dph
      003253 E5 82            [12]  969 	mov	a,dpl
      003255 90 04 08         [24]  970 	mov	dptr,#_i2c_read_ACK_65536_44
      003258 F0               [24]  971 	movx	@dptr,a
      003259 EF               [12]  972 	mov	a,r7
      00325A A3               [24]  973 	inc	dptr
      00325B F0               [24]  974 	movx	@dptr,a
                                    975 ;	io_expander.c:172: unsigned char buff=0;
      00325C 90 04 0A         [24]  976 	mov	dptr,#_i2c_read_buff_65536_45
      00325F E4               [12]  977 	clr	a
      003260 F0               [24]  978 	movx	@dptr,a
                                    979 ;	io_expander.c:173: SCL = 0;
                                    980 ;	assignBit
      003261 C2 93            [12]  981 	clr	_P1_3
                                    982 ;	io_expander.c:174: for(int i=0;i<8;i++)
      003263 7E 00            [12]  983 	mov	r6,#0x00
      003265 7F 00            [12]  984 	mov	r7,#0x00
      003267                        985 00103$:
      003267 C3               [12]  986 	clr	c
      003268 EE               [12]  987 	mov	a,r6
      003269 94 08            [12]  988 	subb	a,#0x08
      00326B EF               [12]  989 	mov	a,r7
      00326C 64 80            [12]  990 	xrl	a,#0x80
      00326E 94 80            [12]  991 	subb	a,#0x80
      003270 50 40            [24]  992 	jnc	00101$
                                    993 ;	io_expander.c:176: SCL = 1;
                                    994 ;	assignBit
      003272 D2 93            [12]  995 	setb	_P1_3
                                    996 ;	io_expander.c:177: i2c_delay();
      003274 C0 07            [24]  997 	push	ar7
      003276 C0 06            [24]  998 	push	ar6
      003278 12 32 F8         [24]  999 	lcall	_i2c_delay
      00327B D0 06            [24] 1000 	pop	ar6
      00327D D0 07            [24] 1001 	pop	ar7
                                   1002 ;	io_expander.c:178: buff |= (SDA << (7 - i));
      00327F A2 94            [12] 1003 	mov	c,_P1_4
      003281 E4               [12] 1004 	clr	a
      003282 33               [12] 1005 	rlc	a
      003283 FD               [12] 1006 	mov	r5,a
      003284 8E 04            [24] 1007 	mov	ar4,r6
      003286 74 07            [12] 1008 	mov	a,#0x07
      003288 C3               [12] 1009 	clr	c
      003289 9C               [12] 1010 	subb	a,r4
      00328A FC               [12] 1011 	mov	r4,a
      00328B 8C F0            [24] 1012 	mov	b,r4
      00328D 05 F0            [12] 1013 	inc	b
      00328F ED               [12] 1014 	mov	a,r5
      003290 80 02            [24] 1015 	sjmp	00119$
      003292                       1016 00117$:
      003292 25 E0            [12] 1017 	add	a,acc
      003294                       1018 00119$:
      003294 D5 F0 FB         [24] 1019 	djnz	b,00117$
      003297 FC               [12] 1020 	mov	r4,a
      003298 90 04 0A         [24] 1021 	mov	dptr,#_i2c_read_buff_65536_45
      00329B E0               [24] 1022 	movx	a,@dptr
      00329C 4C               [12] 1023 	orl	a,r4
      00329D F0               [24] 1024 	movx	@dptr,a
                                   1025 ;	io_expander.c:179: i2c_delay();
      00329E C0 07            [24] 1026 	push	ar7
      0032A0 C0 06            [24] 1027 	push	ar6
      0032A2 12 32 F8         [24] 1028 	lcall	_i2c_delay
      0032A5 D0 06            [24] 1029 	pop	ar6
      0032A7 D0 07            [24] 1030 	pop	ar7
                                   1031 ;	io_expander.c:180: SCL=0;
                                   1032 ;	assignBit
      0032A9 C2 93            [12] 1033 	clr	_P1_3
                                   1034 ;	io_expander.c:174: for(int i=0;i<8;i++)
      0032AB 0E               [12] 1035 	inc	r6
      0032AC BE 00 B8         [24] 1036 	cjne	r6,#0x00,00103$
      0032AF 0F               [12] 1037 	inc	r7
      0032B0 80 B5            [24] 1038 	sjmp	00103$
      0032B2                       1039 00101$:
                                   1040 ;	io_expander.c:184: SDA = !ACK;         // ACK = 0, NACK = 1
      0032B2 90 04 08         [24] 1041 	mov	dptr,#_i2c_read_ACK_65536_44
      0032B5 E0               [24] 1042 	movx	a,@dptr
      0032B6 FE               [12] 1043 	mov	r6,a
      0032B7 A3               [24] 1044 	inc	dptr
      0032B8 E0               [24] 1045 	movx	a,@dptr
      0032B9 4E               [12] 1046 	orl	a,r6
      0032BA B4 01 00         [24] 1047 	cjne	a,#0x01,00121$
      0032BD                       1048 00121$:
      0032BD E4               [12] 1049 	clr	a
      0032BE 33               [12] 1050 	rlc	a
      0032BF 24 FF            [12] 1051 	add	a,#0xff
      0032C1 92 94            [24] 1052 	mov	_P1_4,c
                                   1053 ;	io_expander.c:185: SCL = 1;
                                   1054 ;	assignBit
      0032C3 D2 93            [12] 1055 	setb	_P1_3
                                   1056 ;	io_expander.c:186: i2c_delay();
      0032C5 12 32 F8         [24] 1057 	lcall	_i2c_delay
                                   1058 ;	io_expander.c:187: SCL = 0;
                                   1059 ;	assignBit
      0032C8 C2 93            [12] 1060 	clr	_P1_3
                                   1061 ;	io_expander.c:189: return buff;
      0032CA 90 04 0A         [24] 1062 	mov	dptr,#_i2c_read_buff_65536_45
      0032CD E0               [24] 1063 	movx	a,@dptr
      0032CE FF               [12] 1064 	mov	r7,a
      0032CF 7E 00            [12] 1065 	mov	r6,#0x00
      0032D1 8F 82            [24] 1066 	mov	dpl,r7
      0032D3 8E 83            [24] 1067 	mov	dph,r6
                                   1068 ;	io_expander.c:190: }
      0032D5 22               [24] 1069 	ret
                                   1070 ;------------------------------------------------------------
                                   1071 ;Allocation info for local variables in function 'i2c_start'
                                   1072 ;------------------------------------------------------------
                                   1073 ;	io_expander.c:197: void i2c_start(void)
                                   1074 ;	-----------------------------------------
                                   1075 ;	 function i2c_start
                                   1076 ;	-----------------------------------------
      0032D6                       1077 _i2c_start:
                                   1078 ;	io_expander.c:199: i2c_delay();
      0032D6 12 32 F8         [24] 1079 	lcall	_i2c_delay
                                   1080 ;	io_expander.c:200: SDA = 1;
                                   1081 ;	assignBit
      0032D9 D2 94            [12] 1082 	setb	_P1_4
                                   1083 ;	io_expander.c:201: i2c_delay();
      0032DB 12 32 F8         [24] 1084 	lcall	_i2c_delay
                                   1085 ;	io_expander.c:202: SCL = 1;
                                   1086 ;	assignBit
      0032DE D2 93            [12] 1087 	setb	_P1_3
                                   1088 ;	io_expander.c:203: i2c_delay();
      0032E0 12 32 F8         [24] 1089 	lcall	_i2c_delay
                                   1090 ;	io_expander.c:204: SDA = 0;
                                   1091 ;	assignBit
      0032E3 C2 94            [12] 1092 	clr	_P1_4
                                   1093 ;	io_expander.c:205: i2c_delay();
      0032E5 12 32 F8         [24] 1094 	lcall	_i2c_delay
                                   1095 ;	io_expander.c:206: SCL = 0;
                                   1096 ;	assignBit
      0032E8 C2 93            [12] 1097 	clr	_P1_3
                                   1098 ;	io_expander.c:207: }
      0032EA 22               [24] 1099 	ret
                                   1100 ;------------------------------------------------------------
                                   1101 ;Allocation info for local variables in function 'i2c_stop'
                                   1102 ;------------------------------------------------------------
                                   1103 ;	io_expander.c:214: void i2c_stop(void)
                                   1104 ;	-----------------------------------------
                                   1105 ;	 function i2c_stop
                                   1106 ;	-----------------------------------------
      0032EB                       1107 _i2c_stop:
                                   1108 ;	io_expander.c:216: SDA = 0;
                                   1109 ;	assignBit
      0032EB C2 94            [12] 1110 	clr	_P1_4
                                   1111 ;	io_expander.c:217: i2c_delay();
      0032ED 12 32 F8         [24] 1112 	lcall	_i2c_delay
                                   1113 ;	io_expander.c:218: SCL = 1;
                                   1114 ;	assignBit
      0032F0 D2 93            [12] 1115 	setb	_P1_3
                                   1116 ;	io_expander.c:219: i2c_delay();
      0032F2 12 32 F8         [24] 1117 	lcall	_i2c_delay
                                   1118 ;	io_expander.c:220: SDA = 1; 
                                   1119 ;	assignBit
      0032F5 D2 94            [12] 1120 	setb	_P1_4
                                   1121 ;	io_expander.c:221: }
      0032F7 22               [24] 1122 	ret
                                   1123 ;------------------------------------------------------------
                                   1124 ;Allocation info for local variables in function 'i2c_delay'
                                   1125 ;------------------------------------------------------------
                                   1126 ;i                         Allocated with name '_i2c_delay_i_131072_53'
                                   1127 ;------------------------------------------------------------
                                   1128 ;	io_expander.c:230: void i2c_delay() 
                                   1129 ;	-----------------------------------------
                                   1130 ;	 function i2c_delay
                                   1131 ;	-----------------------------------------
      0032F8                       1132 _i2c_delay:
                                   1133 ;	io_expander.c:232: for(int i = 0; i<500; i++);
      0032F8 7E 00            [12] 1134 	mov	r6,#0x00
      0032FA 7F 00            [12] 1135 	mov	r7,#0x00
      0032FC                       1136 00103$:
      0032FC C3               [12] 1137 	clr	c
      0032FD EE               [12] 1138 	mov	a,r6
      0032FE 94 F4            [12] 1139 	subb	a,#0xf4
      003300 EF               [12] 1140 	mov	a,r7
      003301 64 80            [12] 1141 	xrl	a,#0x80
      003303 94 81            [12] 1142 	subb	a,#0x81
      003305 50 07            [24] 1143 	jnc	00105$
      003307 0E               [12] 1144 	inc	r6
      003308 BE 00 F1         [24] 1145 	cjne	r6,#0x00,00103$
      00330B 0F               [12] 1146 	inc	r7
      00330C 80 EE            [24] 1147 	sjmp	00103$
      00330E                       1148 00105$:
                                   1149 ;	io_expander.c:233: }
      00330E 22               [24] 1150 	ret
                                   1151 	.area CSEG    (CODE)
                                   1152 	.area CONST   (CODE)
                                   1153 	.area CONST   (CODE)
      003DBF                       1154 ___str_0:
      003DBF 49 4F 20 45 58 50 41  1155 	.ascii "IO EXPANDER PROGRAM"
             4E 44 45 52 20 50 52
             4F 47 52 41 4D
      003DD2 0A                    1156 	.db 0x0a
      003DD3 0D                    1157 	.db 0x0d
      003DD4 00                    1158 	.db 0x00
                                   1159 	.area CSEG    (CODE)
                                   1160 	.area CONST   (CODE)
      003DD5                       1161 ___str_1:
      003DD5 49 4F 20 65 78 70 61  1162 	.ascii "IO expander initialized"
             6E 64 65 72 20 69 6E
             69 74 69 61 6C 69 7A
             65 64
      003DEC 0A                    1163 	.db 0x0a
      003DED 0D                    1164 	.db 0x0d
      003DEE 00                    1165 	.db 0x00
                                   1166 	.area CSEG    (CODE)
                                   1167 	.area CONST   (CODE)
      003DEF                       1168 ___str_2:
      003DEF 48                    1169 	.ascii "H"
      003DF0 0A                    1170 	.db 0x0a
      003DF1 0D                    1171 	.db 0x0d
      003DF2 00                    1172 	.db 0x00
                                   1173 	.area CSEG    (CODE)
                                   1174 	.area CONST   (CODE)
      003DF3                       1175 ___str_3:
      003DF3 4C                    1176 	.ascii "L"
      003DF4 0A                    1177 	.db 0x0a
      003DF5 0D                    1178 	.db 0x0d
      003DF6 00                    1179 	.db 0x00
                                   1180 	.area CSEG    (CODE)
                                   1181 	.area CONST   (CODE)
      003DF7                       1182 ___str_4:
      003DF7 41 43 4B 20 44 49 44  1183 	.ascii "ACK DID NOT ARRIVE"
             20 4E 4F 54 20 41 52
             52 49 56 45
      003E09 0A                    1184 	.db 0x0a
      003E0A 0D                    1185 	.db 0x0d
      003E0B 00                    1186 	.db 0x00
                                   1187 	.area CSEG    (CODE)
                                   1188 	.area XINIT   (CODE)
                                   1189 	.area CABS    (ABS,CODE)
