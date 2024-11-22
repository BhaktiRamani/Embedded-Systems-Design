                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module lcd
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _lcd_go_to_cgram_addr
                                     12 	.globl _lcd_get_cursor_position
                                     13 	.globl _write_lcd_data
                                     14 	.globl _write_lcd_command
                                     15 	.globl _read_lcd_data
                                     16 	.globl _delay_ms
                                     17 	.globl _TF1
                                     18 	.globl _TR1
                                     19 	.globl _TF0
                                     20 	.globl _TR0
                                     21 	.globl _IE1
                                     22 	.globl _IT1
                                     23 	.globl _IE0
                                     24 	.globl _IT0
                                     25 	.globl _SM0
                                     26 	.globl _SM1
                                     27 	.globl _SM2
                                     28 	.globl _REN
                                     29 	.globl _TB8
                                     30 	.globl _RB8
                                     31 	.globl _TI
                                     32 	.globl _RI
                                     33 	.globl _CY
                                     34 	.globl _AC
                                     35 	.globl _F0
                                     36 	.globl _RS1
                                     37 	.globl _RS0
                                     38 	.globl _OV
                                     39 	.globl _F1
                                     40 	.globl _P
                                     41 	.globl _RD
                                     42 	.globl _WR
                                     43 	.globl _T1
                                     44 	.globl _T0
                                     45 	.globl _INT1
                                     46 	.globl _INT0
                                     47 	.globl _TXD0
                                     48 	.globl _TXD
                                     49 	.globl _RXD0
                                     50 	.globl _RXD
                                     51 	.globl _P3_7
                                     52 	.globl _P3_6
                                     53 	.globl _P3_5
                                     54 	.globl _P3_4
                                     55 	.globl _P3_3
                                     56 	.globl _P3_2
                                     57 	.globl _P3_1
                                     58 	.globl _P3_0
                                     59 	.globl _P2_7
                                     60 	.globl _P2_6
                                     61 	.globl _P2_5
                                     62 	.globl _P2_4
                                     63 	.globl _P2_3
                                     64 	.globl _P2_2
                                     65 	.globl _P2_1
                                     66 	.globl _P2_0
                                     67 	.globl _P1_7
                                     68 	.globl _P1_6
                                     69 	.globl _P1_5
                                     70 	.globl _P1_4
                                     71 	.globl _P1_3
                                     72 	.globl _P1_2
                                     73 	.globl _P1_1
                                     74 	.globl _P1_0
                                     75 	.globl _P0_7
                                     76 	.globl _P0_6
                                     77 	.globl _P0_5
                                     78 	.globl _P0_4
                                     79 	.globl _P0_3
                                     80 	.globl _P0_2
                                     81 	.globl _P0_1
                                     82 	.globl _P0_0
                                     83 	.globl _PS
                                     84 	.globl _PT1
                                     85 	.globl _PX1
                                     86 	.globl _PT0
                                     87 	.globl _PX0
                                     88 	.globl _EA
                                     89 	.globl _ES
                                     90 	.globl _ET1
                                     91 	.globl _EX1
                                     92 	.globl _ET0
                                     93 	.globl _EX0
                                     94 	.globl _BREG_F7
                                     95 	.globl _BREG_F6
                                     96 	.globl _BREG_F5
                                     97 	.globl _BREG_F4
                                     98 	.globl _BREG_F3
                                     99 	.globl _BREG_F2
                                    100 	.globl _BREG_F1
                                    101 	.globl _BREG_F0
                                    102 	.globl _P5_7
                                    103 	.globl _P5_6
                                    104 	.globl _P5_5
                                    105 	.globl _P5_4
                                    106 	.globl _P5_3
                                    107 	.globl _P5_2
                                    108 	.globl _P5_1
                                    109 	.globl _P5_0
                                    110 	.globl _P4_7
                                    111 	.globl _P4_6
                                    112 	.globl _P4_5
                                    113 	.globl _P4_4
                                    114 	.globl _P4_3
                                    115 	.globl _P4_2
                                    116 	.globl _P4_1
                                    117 	.globl _P4_0
                                    118 	.globl _PX0L
                                    119 	.globl _PT0L
                                    120 	.globl _PX1L
                                    121 	.globl _PT1L
                                    122 	.globl _PSL
                                    123 	.globl _PT2L
                                    124 	.globl _PPCL
                                    125 	.globl _EC
                                    126 	.globl _CCF0
                                    127 	.globl _CCF1
                                    128 	.globl _CCF2
                                    129 	.globl _CCF3
                                    130 	.globl _CCF4
                                    131 	.globl _CR
                                    132 	.globl _CF
                                    133 	.globl _TF2
                                    134 	.globl _EXF2
                                    135 	.globl _RCLK
                                    136 	.globl _TCLK
                                    137 	.globl _EXEN2
                                    138 	.globl _TR2
                                    139 	.globl _C_T2
                                    140 	.globl _CP_RL2
                                    141 	.globl _T2CON_7
                                    142 	.globl _T2CON_6
                                    143 	.globl _T2CON_5
                                    144 	.globl _T2CON_4
                                    145 	.globl _T2CON_3
                                    146 	.globl _T2CON_2
                                    147 	.globl _T2CON_1
                                    148 	.globl _T2CON_0
                                    149 	.globl _PT2
                                    150 	.globl _ET2
                                    151 	.globl _TMOD
                                    152 	.globl _TL1
                                    153 	.globl _TL0
                                    154 	.globl _TH1
                                    155 	.globl _TH0
                                    156 	.globl _TCON
                                    157 	.globl _SP
                                    158 	.globl _SCON
                                    159 	.globl _SBUF0
                                    160 	.globl _SBUF
                                    161 	.globl _PSW
                                    162 	.globl _PCON
                                    163 	.globl _P3
                                    164 	.globl _P2
                                    165 	.globl _P1
                                    166 	.globl _P0
                                    167 	.globl _IP
                                    168 	.globl _IE
                                    169 	.globl _DP0L
                                    170 	.globl _DPL
                                    171 	.globl _DP0H
                                    172 	.globl _DPH
                                    173 	.globl _B
                                    174 	.globl _ACC
                                    175 	.globl _EECON
                                    176 	.globl _KBF
                                    177 	.globl _KBE
                                    178 	.globl _KBLS
                                    179 	.globl _BRL
                                    180 	.globl _BDRCON
                                    181 	.globl _T2MOD
                                    182 	.globl _SPDAT
                                    183 	.globl _SPSTA
                                    184 	.globl _SPCON
                                    185 	.globl _SADEN
                                    186 	.globl _SADDR
                                    187 	.globl _WDTPRG
                                    188 	.globl _WDTRST
                                    189 	.globl _P5
                                    190 	.globl _P4
                                    191 	.globl _IPH1
                                    192 	.globl _IPL1
                                    193 	.globl _IPH0
                                    194 	.globl _IPL0
                                    195 	.globl _IEN1
                                    196 	.globl _IEN0
                                    197 	.globl _CMOD
                                    198 	.globl _CL
                                    199 	.globl _CH
                                    200 	.globl _CCON
                                    201 	.globl _CCAPM4
                                    202 	.globl _CCAPM3
                                    203 	.globl _CCAPM2
                                    204 	.globl _CCAPM1
                                    205 	.globl _CCAPM0
                                    206 	.globl _CCAP4L
                                    207 	.globl _CCAP3L
                                    208 	.globl _CCAP2L
                                    209 	.globl _CCAP1L
                                    210 	.globl _CCAP0L
                                    211 	.globl _CCAP4H
                                    212 	.globl _CCAP3H
                                    213 	.globl _CCAP2H
                                    214 	.globl _CCAP1H
                                    215 	.globl _CCAP0H
                                    216 	.globl _CKCON1
                                    217 	.globl _CKCON0
                                    218 	.globl _CKRL
                                    219 	.globl _AUXR1
                                    220 	.globl _AUXR
                                    221 	.globl _TH2
                                    222 	.globl _TL2
                                    223 	.globl _RCAP2H
                                    224 	.globl _RCAP2L
                                    225 	.globl _T2CON
                                    226 	.globl _read_data_register
                                    227 	.globl _write_data_register
                                    228 	.globl _read_control_register
                                    229 	.globl _write_control_register
                                    230 	.globl _lcd_go_toxy_PARM_2
                                    231 	.globl _lcd_put_string_PARM_3
                                    232 	.globl _lcd_put_string_PARM_2
                                    233 	.globl _lcd_wait
                                    234 	.globl _lcd_init
                                    235 	.globl _lcd_put_char
                                    236 	.globl _lcd_clear
                                    237 	.globl _lcd_put_string
                                    238 	.globl _lcd_go_to_ddram_addr
                                    239 	.globl _lcd_go_toxy
                                    240 ;--------------------------------------------------------
                                    241 ; special function registers
                                    242 ;--------------------------------------------------------
                                    243 	.area RSEG    (ABS,DATA)
      000000                        244 	.org 0x0000
                           0000C8   245 _T2CON	=	0x00c8
                           0000CA   246 _RCAP2L	=	0x00ca
                           0000CB   247 _RCAP2H	=	0x00cb
                           0000CC   248 _TL2	=	0x00cc
                           0000CD   249 _TH2	=	0x00cd
                           00008E   250 _AUXR	=	0x008e
                           0000A2   251 _AUXR1	=	0x00a2
                           000097   252 _CKRL	=	0x0097
                           00008F   253 _CKCON0	=	0x008f
                           0000AF   254 _CKCON1	=	0x00af
                           0000FA   255 _CCAP0H	=	0x00fa
                           0000FB   256 _CCAP1H	=	0x00fb
                           0000FC   257 _CCAP2H	=	0x00fc
                           0000FD   258 _CCAP3H	=	0x00fd
                           0000FE   259 _CCAP4H	=	0x00fe
                           0000EA   260 _CCAP0L	=	0x00ea
                           0000EB   261 _CCAP1L	=	0x00eb
                           0000EC   262 _CCAP2L	=	0x00ec
                           0000ED   263 _CCAP3L	=	0x00ed
                           0000EE   264 _CCAP4L	=	0x00ee
                           0000DA   265 _CCAPM0	=	0x00da
                           0000DB   266 _CCAPM1	=	0x00db
                           0000DC   267 _CCAPM2	=	0x00dc
                           0000DD   268 _CCAPM3	=	0x00dd
                           0000DE   269 _CCAPM4	=	0x00de
                           0000D8   270 _CCON	=	0x00d8
                           0000F9   271 _CH	=	0x00f9
                           0000E9   272 _CL	=	0x00e9
                           0000D9   273 _CMOD	=	0x00d9
                           0000A8   274 _IEN0	=	0x00a8
                           0000B1   275 _IEN1	=	0x00b1
                           0000B8   276 _IPL0	=	0x00b8
                           0000B7   277 _IPH0	=	0x00b7
                           0000B2   278 _IPL1	=	0x00b2
                           0000B3   279 _IPH1	=	0x00b3
                           0000C0   280 _P4	=	0x00c0
                           0000E8   281 _P5	=	0x00e8
                           0000A6   282 _WDTRST	=	0x00a6
                           0000A7   283 _WDTPRG	=	0x00a7
                           0000A9   284 _SADDR	=	0x00a9
                           0000B9   285 _SADEN	=	0x00b9
                           0000C3   286 _SPCON	=	0x00c3
                           0000C4   287 _SPSTA	=	0x00c4
                           0000C5   288 _SPDAT	=	0x00c5
                           0000C9   289 _T2MOD	=	0x00c9
                           00009B   290 _BDRCON	=	0x009b
                           00009A   291 _BRL	=	0x009a
                           00009C   292 _KBLS	=	0x009c
                           00009D   293 _KBE	=	0x009d
                           00009E   294 _KBF	=	0x009e
                           0000D2   295 _EECON	=	0x00d2
                           0000E0   296 _ACC	=	0x00e0
                           0000F0   297 _B	=	0x00f0
                           000083   298 _DPH	=	0x0083
                           000083   299 _DP0H	=	0x0083
                           000082   300 _DPL	=	0x0082
                           000082   301 _DP0L	=	0x0082
                           0000A8   302 _IE	=	0x00a8
                           0000B8   303 _IP	=	0x00b8
                           000080   304 _P0	=	0x0080
                           000090   305 _P1	=	0x0090
                           0000A0   306 _P2	=	0x00a0
                           0000B0   307 _P3	=	0x00b0
                           000087   308 _PCON	=	0x0087
                           0000D0   309 _PSW	=	0x00d0
                           000099   310 _SBUF	=	0x0099
                           000099   311 _SBUF0	=	0x0099
                           000098   312 _SCON	=	0x0098
                           000081   313 _SP	=	0x0081
                           000088   314 _TCON	=	0x0088
                           00008C   315 _TH0	=	0x008c
                           00008D   316 _TH1	=	0x008d
                           00008A   317 _TL0	=	0x008a
                           00008B   318 _TL1	=	0x008b
                           000089   319 _TMOD	=	0x0089
                                    320 ;--------------------------------------------------------
                                    321 ; special function bits
                                    322 ;--------------------------------------------------------
                                    323 	.area RSEG    (ABS,DATA)
      000000                        324 	.org 0x0000
                           0000AD   325 _ET2	=	0x00ad
                           0000BD   326 _PT2	=	0x00bd
                           0000C8   327 _T2CON_0	=	0x00c8
                           0000C9   328 _T2CON_1	=	0x00c9
                           0000CA   329 _T2CON_2	=	0x00ca
                           0000CB   330 _T2CON_3	=	0x00cb
                           0000CC   331 _T2CON_4	=	0x00cc
                           0000CD   332 _T2CON_5	=	0x00cd
                           0000CE   333 _T2CON_6	=	0x00ce
                           0000CF   334 _T2CON_7	=	0x00cf
                           0000C8   335 _CP_RL2	=	0x00c8
                           0000C9   336 _C_T2	=	0x00c9
                           0000CA   337 _TR2	=	0x00ca
                           0000CB   338 _EXEN2	=	0x00cb
                           0000CC   339 _TCLK	=	0x00cc
                           0000CD   340 _RCLK	=	0x00cd
                           0000CE   341 _EXF2	=	0x00ce
                           0000CF   342 _TF2	=	0x00cf
                           0000DF   343 _CF	=	0x00df
                           0000DE   344 _CR	=	0x00de
                           0000DC   345 _CCF4	=	0x00dc
                           0000DB   346 _CCF3	=	0x00db
                           0000DA   347 _CCF2	=	0x00da
                           0000D9   348 _CCF1	=	0x00d9
                           0000D8   349 _CCF0	=	0x00d8
                           0000AE   350 _EC	=	0x00ae
                           0000BE   351 _PPCL	=	0x00be
                           0000BD   352 _PT2L	=	0x00bd
                           0000BC   353 _PSL	=	0x00bc
                           0000BB   354 _PT1L	=	0x00bb
                           0000BA   355 _PX1L	=	0x00ba
                           0000B9   356 _PT0L	=	0x00b9
                           0000B8   357 _PX0L	=	0x00b8
                           0000C0   358 _P4_0	=	0x00c0
                           0000C1   359 _P4_1	=	0x00c1
                           0000C2   360 _P4_2	=	0x00c2
                           0000C3   361 _P4_3	=	0x00c3
                           0000C4   362 _P4_4	=	0x00c4
                           0000C5   363 _P4_5	=	0x00c5
                           0000C6   364 _P4_6	=	0x00c6
                           0000C7   365 _P4_7	=	0x00c7
                           0000E8   366 _P5_0	=	0x00e8
                           0000E9   367 _P5_1	=	0x00e9
                           0000EA   368 _P5_2	=	0x00ea
                           0000EB   369 _P5_3	=	0x00eb
                           0000EC   370 _P5_4	=	0x00ec
                           0000ED   371 _P5_5	=	0x00ed
                           0000EE   372 _P5_6	=	0x00ee
                           0000EF   373 _P5_7	=	0x00ef
                           0000F0   374 _BREG_F0	=	0x00f0
                           0000F1   375 _BREG_F1	=	0x00f1
                           0000F2   376 _BREG_F2	=	0x00f2
                           0000F3   377 _BREG_F3	=	0x00f3
                           0000F4   378 _BREG_F4	=	0x00f4
                           0000F5   379 _BREG_F5	=	0x00f5
                           0000F6   380 _BREG_F6	=	0x00f6
                           0000F7   381 _BREG_F7	=	0x00f7
                           0000A8   382 _EX0	=	0x00a8
                           0000A9   383 _ET0	=	0x00a9
                           0000AA   384 _EX1	=	0x00aa
                           0000AB   385 _ET1	=	0x00ab
                           0000AC   386 _ES	=	0x00ac
                           0000AF   387 _EA	=	0x00af
                           0000B8   388 _PX0	=	0x00b8
                           0000B9   389 _PT0	=	0x00b9
                           0000BA   390 _PX1	=	0x00ba
                           0000BB   391 _PT1	=	0x00bb
                           0000BC   392 _PS	=	0x00bc
                           000080   393 _P0_0	=	0x0080
                           000081   394 _P0_1	=	0x0081
                           000082   395 _P0_2	=	0x0082
                           000083   396 _P0_3	=	0x0083
                           000084   397 _P0_4	=	0x0084
                           000085   398 _P0_5	=	0x0085
                           000086   399 _P0_6	=	0x0086
                           000087   400 _P0_7	=	0x0087
                           000090   401 _P1_0	=	0x0090
                           000091   402 _P1_1	=	0x0091
                           000092   403 _P1_2	=	0x0092
                           000093   404 _P1_3	=	0x0093
                           000094   405 _P1_4	=	0x0094
                           000095   406 _P1_5	=	0x0095
                           000096   407 _P1_6	=	0x0096
                           000097   408 _P1_7	=	0x0097
                           0000A0   409 _P2_0	=	0x00a0
                           0000A1   410 _P2_1	=	0x00a1
                           0000A2   411 _P2_2	=	0x00a2
                           0000A3   412 _P2_3	=	0x00a3
                           0000A4   413 _P2_4	=	0x00a4
                           0000A5   414 _P2_5	=	0x00a5
                           0000A6   415 _P2_6	=	0x00a6
                           0000A7   416 _P2_7	=	0x00a7
                           0000B0   417 _P3_0	=	0x00b0
                           0000B1   418 _P3_1	=	0x00b1
                           0000B2   419 _P3_2	=	0x00b2
                           0000B3   420 _P3_3	=	0x00b3
                           0000B4   421 _P3_4	=	0x00b4
                           0000B5   422 _P3_5	=	0x00b5
                           0000B6   423 _P3_6	=	0x00b6
                           0000B7   424 _P3_7	=	0x00b7
                           0000B0   425 _RXD	=	0x00b0
                           0000B0   426 _RXD0	=	0x00b0
                           0000B1   427 _TXD	=	0x00b1
                           0000B1   428 _TXD0	=	0x00b1
                           0000B2   429 _INT0	=	0x00b2
                           0000B3   430 _INT1	=	0x00b3
                           0000B4   431 _T0	=	0x00b4
                           0000B5   432 _T1	=	0x00b5
                           0000B6   433 _WR	=	0x00b6
                           0000B7   434 _RD	=	0x00b7
                           0000D0   435 _P	=	0x00d0
                           0000D1   436 _F1	=	0x00d1
                           0000D2   437 _OV	=	0x00d2
                           0000D3   438 _RS0	=	0x00d3
                           0000D4   439 _RS1	=	0x00d4
                           0000D5   440 _F0	=	0x00d5
                           0000D6   441 _AC	=	0x00d6
                           0000D7   442 _CY	=	0x00d7
                           000098   443 _RI	=	0x0098
                           000099   444 _TI	=	0x0099
                           00009A   445 _RB8	=	0x009a
                           00009B   446 _TB8	=	0x009b
                           00009C   447 _REN	=	0x009c
                           00009D   448 _SM2	=	0x009d
                           00009E   449 _SM1	=	0x009e
                           00009F   450 _SM0	=	0x009f
                           000088   451 _IT0	=	0x0088
                           000089   452 _IE0	=	0x0089
                           00008A   453 _IT1	=	0x008a
                           00008B   454 _IE1	=	0x008b
                           00008C   455 _TR0	=	0x008c
                           00008D   456 _TF0	=	0x008d
                           00008E   457 _TR1	=	0x008e
                           00008F   458 _TF1	=	0x008f
                                    459 ;--------------------------------------------------------
                                    460 ; overlayable register banks
                                    461 ;--------------------------------------------------------
                                    462 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        463 	.ds 8
                                    464 ;--------------------------------------------------------
                                    465 ; internal ram data
                                    466 ;--------------------------------------------------------
                                    467 	.area DSEG    (DATA)
                                    468 ;--------------------------------------------------------
                                    469 ; overlayable items in internal ram 
                                    470 ;--------------------------------------------------------
                                    471 ;--------------------------------------------------------
                                    472 ; indirectly addressable internal ram data
                                    473 ;--------------------------------------------------------
                                    474 	.area ISEG    (DATA)
                                    475 ;--------------------------------------------------------
                                    476 ; absolute internal ram data
                                    477 ;--------------------------------------------------------
                                    478 	.area IABS    (ABS,DATA)
                                    479 	.area IABS    (ABS,DATA)
                                    480 ;--------------------------------------------------------
                                    481 ; bit data
                                    482 ;--------------------------------------------------------
                                    483 	.area BSEG    (BIT)
                                    484 ;--------------------------------------------------------
                                    485 ; paged external ram data
                                    486 ;--------------------------------------------------------
                                    487 	.area PSEG    (PAG,XDATA)
                                    488 ;--------------------------------------------------------
                                    489 ; external ram data
                                    490 ;--------------------------------------------------------
                                    491 	.area XSEG    (XDATA)
      001925                        492 _delay_ms_ms_65536_48:
      001925                        493 	.ds 2
      001927                        494 _write_lcd_command_command_65536_56:
      001927                        495 	.ds 1
      001928                        496 _write_lcd_data_data_65536_58:
      001928                        497 	.ds 1
      001929                        498 _lcd_put_char_c_65536_61:
      001929                        499 	.ds 1
      00192A                        500 _lcd_put_string_PARM_2:
      00192A                        501 	.ds 1
      00192B                        502 _lcd_put_string_PARM_3:
      00192B                        503 	.ds 1
      00192C                        504 _lcd_put_string_str_65536_65:
      00192C                        505 	.ds 3
      00192F                        506 _lcd_put_string_current_row_65536_66:
      00192F                        507 	.ds 1
      001930                        508 _lcd_put_string_char_count_65536_66:
      001930                        509 	.ds 1
      001931                        510 _lcd_put_string_char_count_to_check_65536_66:
      001931                        511 	.ds 1
      001932                        512 _lcd_go_to_ddram_addr_addr_65536_71:
      001932                        513 	.ds 1
      001933                        514 _lcd_go_to_cgram_addr_addr_65536_73:
      001933                        515 	.ds 1
      001934                        516 _lcd_go_toxy_PARM_2:
      001934                        517 	.ds 1
      001935                        518 _lcd_go_toxy_row_65536_75:
      001935                        519 	.ds 1
      001936                        520 _lcd_go_toxy_address_65536_76:
      001936                        521 	.ds 1
                                    522 ;--------------------------------------------------------
                                    523 ; absolute external ram data
                                    524 ;--------------------------------------------------------
                                    525 	.area XABS    (ABS,XDATA)
                                    526 ;--------------------------------------------------------
                                    527 ; external initialized ram data
                                    528 ;--------------------------------------------------------
                                    529 	.area XISEG   (XDATA)
      001987                        530 _write_control_register::
      001987                        531 	.ds 2
      001989                        532 _read_control_register::
      001989                        533 	.ds 2
      00198B                        534 _write_data_register::
      00198B                        535 	.ds 2
      00198D                        536 _read_data_register::
      00198D                        537 	.ds 2
                                    538 	.area HOME    (CODE)
                                    539 	.area GSINIT0 (CODE)
                                    540 	.area GSINIT1 (CODE)
                                    541 	.area GSINIT2 (CODE)
                                    542 	.area GSINIT3 (CODE)
                                    543 	.area GSINIT4 (CODE)
                                    544 	.area GSINIT5 (CODE)
                                    545 	.area GSINIT  (CODE)
                                    546 	.area GSFINAL (CODE)
                                    547 	.area CSEG    (CODE)
                                    548 ;--------------------------------------------------------
                                    549 ; global & static initialisations
                                    550 ;--------------------------------------------------------
                                    551 	.area HOME    (CODE)
                                    552 	.area GSINIT  (CODE)
                                    553 	.area GSFINAL (CODE)
                                    554 	.area GSINIT  (CODE)
                                    555 ;--------------------------------------------------------
                                    556 ; Home
                                    557 ;--------------------------------------------------------
                                    558 	.area HOME    (CODE)
                                    559 	.area HOME    (CODE)
                                    560 ;--------------------------------------------------------
                                    561 ; code
                                    562 ;--------------------------------------------------------
                                    563 	.area CSEG    (CODE)
                                    564 ;------------------------------------------------------------
                                    565 ;Allocation info for local variables in function 'delay_ms'
                                    566 ;------------------------------------------------------------
                                    567 ;ms                        Allocated with name '_delay_ms_ms_65536_48'
                                    568 ;i                         Allocated with name '_delay_ms_i_65536_49'
                                    569 ;j                         Allocated with name '_delay_ms_j_65536_49'
                                    570 ;------------------------------------------------------------
                                    571 ;	src/lcd.c:75: void delay_ms(unsigned int ms) {
                                    572 ;	-----------------------------------------
                                    573 ;	 function delay_ms
                                    574 ;	-----------------------------------------
      003370                        575 _delay_ms:
                           000007   576 	ar7 = 0x07
                           000006   577 	ar6 = 0x06
                           000005   578 	ar5 = 0x05
                           000004   579 	ar4 = 0x04
                           000003   580 	ar3 = 0x03
                           000002   581 	ar2 = 0x02
                           000001   582 	ar1 = 0x01
                           000000   583 	ar0 = 0x00
      003370 AF 83            [24]  584 	mov	r7,dph
      003372 E5 82            [12]  585 	mov	a,dpl
      003374 90 19 25         [24]  586 	mov	dptr,#_delay_ms_ms_65536_48
      003377 F0               [24]  587 	movx	@dptr,a
      003378 EF               [12]  588 	mov	a,r7
      003379 A3               [24]  589 	inc	dptr
      00337A F0               [24]  590 	movx	@dptr,a
                                    591 ;	src/lcd.c:77: for (i = 0; i < ms; i++)
      00337B 90 19 25         [24]  592 	mov	dptr,#_delay_ms_ms_65536_48
      00337E E0               [24]  593 	movx	a,@dptr
      00337F FE               [12]  594 	mov	r6,a
      003380 A3               [24]  595 	inc	dptr
      003381 E0               [24]  596 	movx	a,@dptr
      003382 FF               [12]  597 	mov	r7,a
      003383 7C 00            [12]  598 	mov	r4,#0x00
      003385 7D 00            [12]  599 	mov	r5,#0x00
      003387                        600 00107$:
      003387 C3               [12]  601 	clr	c
      003388 EC               [12]  602 	mov	a,r4
      003389 9E               [12]  603 	subb	a,r6
      00338A ED               [12]  604 	mov	a,r5
      00338B 9F               [12]  605 	subb	a,r7
      00338C 50 14            [24]  606 	jnc	00109$
                                    607 ;	src/lcd.c:78: for (j = 0; j < 123; j++);  // Delay tuned for 12MHz crystal
      00338E 7A 7B            [12]  608 	mov	r2,#0x7b
      003390 7B 00            [12]  609 	mov	r3,#0x00
      003392                        610 00105$:
      003392 1A               [12]  611 	dec	r2
      003393 BA FF 01         [24]  612 	cjne	r2,#0xff,00130$
      003396 1B               [12]  613 	dec	r3
      003397                        614 00130$:
      003397 EA               [12]  615 	mov	a,r2
      003398 4B               [12]  616 	orl	a,r3
      003399 70 F7            [24]  617 	jnz	00105$
                                    618 ;	src/lcd.c:77: for (i = 0; i < ms; i++)
      00339B 0C               [12]  619 	inc	r4
      00339C BC 00 E8         [24]  620 	cjne	r4,#0x00,00107$
      00339F 0D               [12]  621 	inc	r5
      0033A0 80 E5            [24]  622 	sjmp	00107$
      0033A2                        623 00109$:
                                    624 ;	src/lcd.c:79: }
      0033A2 22               [24]  625 	ret
                                    626 ;------------------------------------------------------------
                                    627 ;Allocation info for local variables in function 'lcd_wait'
                                    628 ;------------------------------------------------------------
                                    629 ;	src/lcd.c:90: void lcd_wait(void) {
                                    630 ;	-----------------------------------------
                                    631 ;	 function lcd_wait
                                    632 ;	-----------------------------------------
      0033A3                        633 _lcd_wait:
                                    634 ;	src/lcd.c:91: while ((*read_control_register) & LCD_BUSY_FLAG)
      0033A3                        635 00101$:
      0033A3 90 19 89         [24]  636 	mov	dptr,#_read_control_register
      0033A6 E0               [24]  637 	movx	a,@dptr
      0033A7 FE               [12]  638 	mov	r6,a
      0033A8 A3               [24]  639 	inc	dptr
      0033A9 E0               [24]  640 	movx	a,@dptr
      0033AA FF               [12]  641 	mov	r7,a
      0033AB 8E 82            [24]  642 	mov	dpl,r6
      0033AD 8F 83            [24]  643 	mov	dph,r7
      0033AF E0               [24]  644 	movx	a,@dptr
      0033B0 30 E7 08         [24]  645 	jnb	acc.7,00104$
                                    646 ;	src/lcd.c:94: delay_ms(1);
      0033B3 90 00 01         [24]  647 	mov	dptr,#0x0001
      0033B6 12 33 70         [24]  648 	lcall	_delay_ms
      0033B9 80 E8            [24]  649 	sjmp	00101$
      0033BB                        650 00104$:
                                    651 ;	src/lcd.c:96: }
      0033BB 22               [24]  652 	ret
                                    653 ;------------------------------------------------------------
                                    654 ;Allocation info for local variables in function 'read_lcd_data'
                                    655 ;------------------------------------------------------------
                                    656 ;	src/lcd.c:106: uint8_t read_lcd_data() {
                                    657 ;	-----------------------------------------
                                    658 ;	 function read_lcd_data
                                    659 ;	-----------------------------------------
      0033BC                        660 _read_lcd_data:
                                    661 ;	src/lcd.c:107: return *read_data_register;
      0033BC 90 19 8D         [24]  662 	mov	dptr,#_read_data_register
      0033BF E0               [24]  663 	movx	a,@dptr
      0033C0 FE               [12]  664 	mov	r6,a
      0033C1 A3               [24]  665 	inc	dptr
      0033C2 E0               [24]  666 	movx	a,@dptr
      0033C3 FF               [12]  667 	mov	r7,a
      0033C4 8E 82            [24]  668 	mov	dpl,r6
      0033C6 8F 83            [24]  669 	mov	dph,r7
      0033C8 E0               [24]  670 	movx	a,@dptr
                                    671 ;	src/lcd.c:108: }
      0033C9 F5 82            [12]  672 	mov	dpl,a
      0033CB 22               [24]  673 	ret
                                    674 ;------------------------------------------------------------
                                    675 ;Allocation info for local variables in function 'write_lcd_command'
                                    676 ;------------------------------------------------------------
                                    677 ;command                   Allocated with name '_write_lcd_command_command_65536_56'
                                    678 ;------------------------------------------------------------
                                    679 ;	src/lcd.c:119: void write_lcd_command(unsigned char command) {
                                    680 ;	-----------------------------------------
                                    681 ;	 function write_lcd_command
                                    682 ;	-----------------------------------------
      0033CC                        683 _write_lcd_command:
      0033CC E5 82            [12]  684 	mov	a,dpl
      0033CE 90 19 27         [24]  685 	mov	dptr,#_write_lcd_command_command_65536_56
      0033D1 F0               [24]  686 	movx	@dptr,a
                                    687 ;	src/lcd.c:120: *write_control_register = command;
      0033D2 90 19 87         [24]  688 	mov	dptr,#_write_control_register
      0033D5 E0               [24]  689 	movx	a,@dptr
      0033D6 FE               [12]  690 	mov	r6,a
      0033D7 A3               [24]  691 	inc	dptr
      0033D8 E0               [24]  692 	movx	a,@dptr
      0033D9 FF               [12]  693 	mov	r7,a
      0033DA 90 19 27         [24]  694 	mov	dptr,#_write_lcd_command_command_65536_56
      0033DD E0               [24]  695 	movx	a,@dptr
      0033DE 8E 82            [24]  696 	mov	dpl,r6
      0033E0 8F 83            [24]  697 	mov	dph,r7
      0033E2 F0               [24]  698 	movx	@dptr,a
                                    699 ;	src/lcd.c:121: }
      0033E3 22               [24]  700 	ret
                                    701 ;------------------------------------------------------------
                                    702 ;Allocation info for local variables in function 'write_lcd_data'
                                    703 ;------------------------------------------------------------
                                    704 ;data                      Allocated with name '_write_lcd_data_data_65536_58'
                                    705 ;------------------------------------------------------------
                                    706 ;	src/lcd.c:132: void write_lcd_data(unsigned char data) {
                                    707 ;	-----------------------------------------
                                    708 ;	 function write_lcd_data
                                    709 ;	-----------------------------------------
      0033E4                        710 _write_lcd_data:
      0033E4 E5 82            [12]  711 	mov	a,dpl
      0033E6 90 19 28         [24]  712 	mov	dptr,#_write_lcd_data_data_65536_58
      0033E9 F0               [24]  713 	movx	@dptr,a
                                    714 ;	src/lcd.c:133: *write_data_register = data;
      0033EA 90 19 8B         [24]  715 	mov	dptr,#_write_data_register
      0033ED E0               [24]  716 	movx	a,@dptr
      0033EE FE               [12]  717 	mov	r6,a
      0033EF A3               [24]  718 	inc	dptr
      0033F0 E0               [24]  719 	movx	a,@dptr
      0033F1 FF               [12]  720 	mov	r7,a
      0033F2 90 19 28         [24]  721 	mov	dptr,#_write_lcd_data_data_65536_58
      0033F5 E0               [24]  722 	movx	a,@dptr
      0033F6 8E 82            [24]  723 	mov	dpl,r6
      0033F8 8F 83            [24]  724 	mov	dph,r7
      0033FA F0               [24]  725 	movx	@dptr,a
                                    726 ;	src/lcd.c:134: }
      0033FB 22               [24]  727 	ret
                                    728 ;------------------------------------------------------------
                                    729 ;Allocation info for local variables in function 'lcd_init'
                                    730 ;------------------------------------------------------------
                                    731 ;	src/lcd.c:145: void lcd_init() {
                                    732 ;	-----------------------------------------
                                    733 ;	 function lcd_init
                                    734 ;	-----------------------------------------
      0033FC                        735 _lcd_init:
                                    736 ;	src/lcd.c:146: write_control_register = (__xdata unsigned char *)(LCD_WRITE_CMD); // Ensure proper casting
      0033FC 90 19 87         [24]  737 	mov	dptr,#_write_control_register
      0033FF E4               [12]  738 	clr	a
      003400 F0               [24]  739 	movx	@dptr,a
      003401 74 F0            [12]  740 	mov	a,#0xf0
      003403 A3               [24]  741 	inc	dptr
      003404 F0               [24]  742 	movx	@dptr,a
                                    743 ;	src/lcd.c:147: read_control_register = (__xdata unsigned char *)(LCD_READ_CMD);
      003405 90 19 89         [24]  744 	mov	dptr,#_read_control_register
      003408 E4               [12]  745 	clr	a
      003409 F0               [24]  746 	movx	@dptr,a
      00340A 74 F1            [12]  747 	mov	a,#0xf1
      00340C A3               [24]  748 	inc	dptr
      00340D F0               [24]  749 	movx	@dptr,a
                                    750 ;	src/lcd.c:148: write_data_register = (__xdata unsigned char *)(LCD_WRITE_DATA);
      00340E 90 19 8B         [24]  751 	mov	dptr,#_write_data_register
      003411 E4               [12]  752 	clr	a
      003412 F0               [24]  753 	movx	@dptr,a
      003413 74 F2            [12]  754 	mov	a,#0xf2
      003415 A3               [24]  755 	inc	dptr
      003416 F0               [24]  756 	movx	@dptr,a
                                    757 ;	src/lcd.c:149: read_data_register = (__xdata unsigned char *)(LCD_READ_DATA);
      003417 90 19 8D         [24]  758 	mov	dptr,#_read_data_register
      00341A E4               [12]  759 	clr	a
      00341B F0               [24]  760 	movx	@dptr,a
      00341C 74 F3            [12]  761 	mov	a,#0xf3
      00341E A3               [24]  762 	inc	dptr
      00341F F0               [24]  763 	movx	@dptr,a
                                    764 ;	src/lcd.c:150: delay_ms(40);
      003420 90 00 28         [24]  765 	mov	dptr,#0x0028
      003423 12 33 70         [24]  766 	lcall	_delay_ms
                                    767 ;	src/lcd.c:151: write_lcd_command(LCD_INIT_SYNC);
      003426 75 82 30         [24]  768 	mov	dpl,#0x30
      003429 12 33 CC         [24]  769 	lcall	_write_lcd_command
                                    770 ;	src/lcd.c:152: delay_ms(5);
      00342C 90 00 05         [24]  771 	mov	dptr,#0x0005
      00342F 12 33 70         [24]  772 	lcall	_delay_ms
                                    773 ;	src/lcd.c:153: write_lcd_command(LCD_INIT_SYNC);
      003432 75 82 30         [24]  774 	mov	dpl,#0x30
      003435 12 33 CC         [24]  775 	lcall	_write_lcd_command
                                    776 ;	src/lcd.c:154: delay_ms(1);
      003438 90 00 01         [24]  777 	mov	dptr,#0x0001
      00343B 12 33 70         [24]  778 	lcall	_delay_ms
                                    779 ;	src/lcd.c:155: write_lcd_command(LCD_INIT_SYNC);
      00343E 75 82 30         [24]  780 	mov	dpl,#0x30
      003441 12 33 CC         [24]  781 	lcall	_write_lcd_command
                                    782 ;	src/lcd.c:156: delay_ms(2);
      003444 90 00 02         [24]  783 	mov	dptr,#0x0002
      003447 12 33 70         [24]  784 	lcall	_delay_ms
                                    785 ;	src/lcd.c:157: write_lcd_command(LCD_INIT_SYNC_CMD);
      00344A 75 82 38         [24]  786 	mov	dpl,#0x38
      00344D 12 33 CC         [24]  787 	lcall	_write_lcd_command
                                    788 ;	src/lcd.c:159: lcd_wait();
      003450 12 33 A3         [24]  789 	lcall	_lcd_wait
                                    790 ;	src/lcd.c:160: write_lcd_command(LCD_DISPLAY_OFF_CMD);
      003453 75 82 08         [24]  791 	mov	dpl,#0x08
      003456 12 33 CC         [24]  792 	lcall	_write_lcd_command
                                    793 ;	src/lcd.c:161: lcd_wait();
      003459 12 33 A3         [24]  794 	lcall	_lcd_wait
                                    795 ;	src/lcd.c:162: write_lcd_command(LCD_DISPLAY_ON_CMD);
      00345C 75 82 0C         [24]  796 	mov	dpl,#0x0c
      00345F 12 33 CC         [24]  797 	lcall	_write_lcd_command
                                    798 ;	src/lcd.c:163: lcd_wait();
      003462 12 33 A3         [24]  799 	lcall	_lcd_wait
                                    800 ;	src/lcd.c:164: write_lcd_command(LCD_ENTRY_MODE_CMD);
      003465 75 82 06         [24]  801 	mov	dpl,#0x06
      003468 12 33 CC         [24]  802 	lcall	_write_lcd_command
                                    803 ;	src/lcd.c:165: lcd_wait();
      00346B 12 33 A3         [24]  804 	lcall	_lcd_wait
                                    805 ;	src/lcd.c:166: write_lcd_command(LCD_CLEAR_CMD);
      00346E 75 82 01         [24]  806 	mov	dpl,#0x01
      003471 12 33 CC         [24]  807 	lcall	_write_lcd_command
                                    808 ;	src/lcd.c:167: lcd_wait();
                                    809 ;	src/lcd.c:168: }
      003474 02 33 A3         [24]  810 	ljmp	_lcd_wait
                                    811 ;------------------------------------------------------------
                                    812 ;Allocation info for local variables in function 'lcd_put_char'
                                    813 ;------------------------------------------------------------
                                    814 ;c                         Allocated with name '_lcd_put_char_c_65536_61'
                                    815 ;------------------------------------------------------------
                                    816 ;	src/lcd.c:178: void lcd_put_char(uint8_t c) {
                                    817 ;	-----------------------------------------
                                    818 ;	 function lcd_put_char
                                    819 ;	-----------------------------------------
      003477                        820 _lcd_put_char:
      003477 E5 82            [12]  821 	mov	a,dpl
      003479 90 19 29         [24]  822 	mov	dptr,#_lcd_put_char_c_65536_61
      00347C F0               [24]  823 	movx	@dptr,a
                                    824 ;	src/lcd.c:179: write_lcd_data(c);
      00347D E0               [24]  825 	movx	a,@dptr
      00347E F5 82            [12]  826 	mov	dpl,a
      003480 12 33 E4         [24]  827 	lcall	_write_lcd_data
                                    828 ;	src/lcd.c:180: lcd_wait();
                                    829 ;	src/lcd.c:181: }
      003483 02 33 A3         [24]  830 	ljmp	_lcd_wait
                                    831 ;------------------------------------------------------------
                                    832 ;Allocation info for local variables in function 'lcd_clear'
                                    833 ;------------------------------------------------------------
                                    834 ;	src/lcd.c:191: void lcd_clear() {
                                    835 ;	-----------------------------------------
                                    836 ;	 function lcd_clear
                                    837 ;	-----------------------------------------
      003486                        838 _lcd_clear:
                                    839 ;	src/lcd.c:192: write_lcd_command(LCD_CLEAR_CMD);
      003486 75 82 01         [24]  840 	mov	dpl,#0x01
      003489 12 33 CC         [24]  841 	lcall	_write_lcd_command
                                    842 ;	src/lcd.c:193: lcd_wait();
                                    843 ;	src/lcd.c:194: }
      00348C 02 33 A3         [24]  844 	ljmp	_lcd_wait
                                    845 ;------------------------------------------------------------
                                    846 ;Allocation info for local variables in function 'lcd_get_cursor_position'
                                    847 ;------------------------------------------------------------
                                    848 ;address                   Allocated with name '_lcd_get_cursor_position_address_65536_64'
                                    849 ;------------------------------------------------------------
                                    850 ;	src/lcd.c:204: uint8_t lcd_get_cursor_position() {
                                    851 ;	-----------------------------------------
                                    852 ;	 function lcd_get_cursor_position
                                    853 ;	-----------------------------------------
      00348F                        854 _lcd_get_cursor_position:
                                    855 ;	src/lcd.c:206: lcd_wait(); // Ensure LCD is not busy
      00348F 12 33 A3         [24]  856 	lcall	_lcd_wait
                                    857 ;	src/lcd.c:207: address = *read_control_register & 0x7F; // Mask to get the lower 7 bits
      003492 90 19 89         [24]  858 	mov	dptr,#_read_control_register
      003495 E0               [24]  859 	movx	a,@dptr
      003496 FE               [12]  860 	mov	r6,a
      003497 A3               [24]  861 	inc	dptr
      003498 E0               [24]  862 	movx	a,@dptr
      003499 FF               [12]  863 	mov	r7,a
      00349A 8E 82            [24]  864 	mov	dpl,r6
      00349C 8F 83            [24]  865 	mov	dph,r7
      00349E E0               [24]  866 	movx	a,@dptr
      00349F FE               [12]  867 	mov	r6,a
      0034A0 53 06 7F         [24]  868 	anl	ar6,#0x7f
                                    869 ;	src/lcd.c:208: return address;
      0034A3 8E 82            [24]  870 	mov	dpl,r6
                                    871 ;	src/lcd.c:209: }
      0034A5 22               [24]  872 	ret
                                    873 ;------------------------------------------------------------
                                    874 ;Allocation info for local variables in function 'lcd_put_string'
                                    875 ;------------------------------------------------------------
                                    876 ;row                       Allocated with name '_lcd_put_string_PARM_2'
                                    877 ;column                    Allocated with name '_lcd_put_string_PARM_3'
                                    878 ;str                       Allocated with name '_lcd_put_string_str_65536_65'
                                    879 ;current_row               Allocated with name '_lcd_put_string_current_row_65536_66'
                                    880 ;char_count                Allocated with name '_lcd_put_string_char_count_65536_66'
                                    881 ;char_count_to_check       Allocated with name '_lcd_put_string_char_count_to_check_65536_66'
                                    882 ;------------------------------------------------------------
                                    883 ;	src/lcd.c:222: void lcd_put_string(char *str, uint8_t row, uint8_t column) __critical {
                                    884 ;	-----------------------------------------
                                    885 ;	 function lcd_put_string
                                    886 ;	-----------------------------------------
      0034A6                        887 _lcd_put_string:
      0034A6 D3               [12]  888 	setb	c
      0034A7 10 AF 01         [24]  889 	jbc	ea,00128$
      0034AA C3               [12]  890 	clr	c
      0034AB                        891 00128$:
      0034AB C0 D0            [24]  892 	push	psw
      0034AD AF F0            [24]  893 	mov	r7,b
      0034AF AE 83            [24]  894 	mov	r6,dph
      0034B1 E5 82            [12]  895 	mov	a,dpl
      0034B3 90 19 2C         [24]  896 	mov	dptr,#_lcd_put_string_str_65536_65
      0034B6 F0               [24]  897 	movx	@dptr,a
      0034B7 EE               [12]  898 	mov	a,r6
      0034B8 A3               [24]  899 	inc	dptr
      0034B9 F0               [24]  900 	movx	@dptr,a
      0034BA EF               [12]  901 	mov	a,r7
      0034BB A3               [24]  902 	inc	dptr
      0034BC F0               [24]  903 	movx	@dptr,a
                                    904 ;	src/lcd.c:223: uint8_t current_row = row;
      0034BD 90 19 2A         [24]  905 	mov	dptr,#_lcd_put_string_PARM_2
      0034C0 E0               [24]  906 	movx	a,@dptr
      0034C1 FF               [12]  907 	mov	r7,a
      0034C2 90 19 2F         [24]  908 	mov	dptr,#_lcd_put_string_current_row_65536_66
      0034C5 F0               [24]  909 	movx	@dptr,a
                                    910 ;	src/lcd.c:224: uint8_t char_count = 0;
      0034C6 90 19 30         [24]  911 	mov	dptr,#_lcd_put_string_char_count_65536_66
      0034C9 E4               [12]  912 	clr	a
      0034CA F0               [24]  913 	movx	@dptr,a
                                    914 ;	src/lcd.c:225: uint8_t char_count_to_check = CHAR_IN_FIRST_THREE_ROWS - column;
      0034CB 90 19 2B         [24]  915 	mov	dptr,#_lcd_put_string_PARM_3
      0034CE E0               [24]  916 	movx	a,@dptr
      0034CF FE               [12]  917 	mov	r6,a
      0034D0 FD               [12]  918 	mov	r5,a
      0034D1 90 19 31         [24]  919 	mov	dptr,#_lcd_put_string_char_count_to_check_65536_66
      0034D4 74 10            [12]  920 	mov	a,#0x10
      0034D6 C3               [12]  921 	clr	c
      0034D7 9D               [12]  922 	subb	a,r5
      0034D8 F0               [24]  923 	movx	@dptr,a
                                    924 ;	src/lcd.c:227: lcd_go_toxy(row, column);
      0034D9 90 19 34         [24]  925 	mov	dptr,#_lcd_go_toxy_PARM_2
      0034DC EE               [12]  926 	mov	a,r6
      0034DD F0               [24]  927 	movx	@dptr,a
      0034DE 8F 82            [24]  928 	mov	dpl,r7
      0034E0 12 35 CE         [24]  929 	lcall	_lcd_go_toxy
                                    930 ;	src/lcd.c:228: while (*str) {
      0034E3 90 19 2C         [24]  931 	mov	dptr,#_lcd_put_string_str_65536_65
      0034E6 E0               [24]  932 	movx	a,@dptr
      0034E7 FD               [12]  933 	mov	r5,a
      0034E8 A3               [24]  934 	inc	dptr
      0034E9 E0               [24]  935 	movx	a,@dptr
      0034EA FE               [12]  936 	mov	r6,a
      0034EB A3               [24]  937 	inc	dptr
      0034EC E0               [24]  938 	movx	a,@dptr
      0034ED FF               [12]  939 	mov	r7,a
      0034EE                        940 00106$:
      0034EE 8D 82            [24]  941 	mov	dpl,r5
      0034F0 8E 83            [24]  942 	mov	dph,r6
      0034F2 8F F0            [24]  943 	mov	b,r7
      0034F4 12 46 BA         [24]  944 	lcall	__gptrget
      0034F7 70 03            [24]  945 	jnz	00129$
      0034F9 02 35 9C         [24]  946 	ljmp	00115$
      0034FC                        947 00129$:
                                    948 ;	src/lcd.c:229: if (char_count == char_count_to_check) { // Move to the next row after 16 characters
      0034FC 90 19 30         [24]  949 	mov	dptr,#_lcd_put_string_char_count_65536_66
      0034FF E0               [24]  950 	movx	a,@dptr
      003500 FC               [12]  951 	mov	r4,a
      003501 90 19 31         [24]  952 	mov	dptr,#_lcd_put_string_char_count_to_check_65536_66
      003504 E0               [24]  953 	movx	a,@dptr
      003505 FB               [12]  954 	mov	r3,a
      003506 EC               [12]  955 	mov	a,r4
      003507 B5 03 5D         [24]  956 	cjne	a,ar3,00105$
                                    957 ;	src/lcd.c:230: char_count = 0;
      00350A 90 19 30         [24]  958 	mov	dptr,#_lcd_put_string_char_count_65536_66
      00350D E4               [12]  959 	clr	a
      00350E F0               [24]  960 	movx	@dptr,a
                                    961 ;	src/lcd.c:231: current_row = (current_row + 1) % 4;
      00350F 90 19 2F         [24]  962 	mov	dptr,#_lcd_put_string_current_row_65536_66
      003512 E0               [24]  963 	movx	a,@dptr
      003513 FC               [12]  964 	mov	r4,a
      003514 7B 00            [12]  965 	mov	r3,#0x00
      003516 0C               [12]  966 	inc	r4
      003517 BC 00 01         [24]  967 	cjne	r4,#0x00,00132$
      00351A 0B               [12]  968 	inc	r3
      00351B                        969 00132$:
      00351B 90 19 3A         [24]  970 	mov	dptr,#__modsint_PARM_2
      00351E 74 04            [12]  971 	mov	a,#0x04
      003520 F0               [24]  972 	movx	@dptr,a
      003521 E4               [12]  973 	clr	a
      003522 A3               [24]  974 	inc	dptr
      003523 F0               [24]  975 	movx	@dptr,a
      003524 8C 82            [24]  976 	mov	dpl,r4
      003526 8B 83            [24]  977 	mov	dph,r3
      003528 C0 07            [24]  978 	push	ar7
      00352A C0 06            [24]  979 	push	ar6
      00352C C0 05            [24]  980 	push	ar5
      00352E 12 3A 17         [24]  981 	lcall	__modsint
      003531 AB 82            [24]  982 	mov	r3,dpl
      003533 D0 05            [24]  983 	pop	ar5
      003535 D0 06            [24]  984 	pop	ar6
      003537 D0 07            [24]  985 	pop	ar7
      003539 90 19 2F         [24]  986 	mov	dptr,#_lcd_put_string_current_row_65536_66
      00353C EB               [12]  987 	mov	a,r3
      00353D F0               [24]  988 	movx	@dptr,a
                                    989 ;	src/lcd.c:232: if (current_row == 3) {
      00353E E0               [24]  990 	movx	a,@dptr
      00353F FC               [12]  991 	mov	r4,a
      003540 BC 03 08         [24]  992 	cjne	r4,#0x03,00102$
                                    993 ;	src/lcd.c:233: char_count_to_check = CHAR_IN_LAST_ROW;
      003543 90 19 31         [24]  994 	mov	dptr,#_lcd_put_string_char_count_to_check_65536_66
      003546 74 08            [12]  995 	mov	a,#0x08
      003548 F0               [24]  996 	movx	@dptr,a
      003549 80 06            [24]  997 	sjmp	00103$
      00354B                        998 00102$:
                                    999 ;	src/lcd.c:235: char_count_to_check = CHAR_IN_FIRST_THREE_ROWS;
      00354B 90 19 31         [24] 1000 	mov	dptr,#_lcd_put_string_char_count_to_check_65536_66
      00354E 74 10            [12] 1001 	mov	a,#0x10
      003550 F0               [24] 1002 	movx	@dptr,a
      003551                       1003 00103$:
                                   1004 ;	src/lcd.c:237: lcd_go_toxy(current_row, 0); // Set to beginning of next row
      003551 90 19 34         [24] 1005 	mov	dptr,#_lcd_go_toxy_PARM_2
      003554 E4               [12] 1006 	clr	a
      003555 F0               [24] 1007 	movx	@dptr,a
      003556 8C 82            [24] 1008 	mov	dpl,r4
      003558 C0 07            [24] 1009 	push	ar7
      00355A C0 06            [24] 1010 	push	ar6
      00355C C0 05            [24] 1011 	push	ar5
      00355E 12 35 CE         [24] 1012 	lcall	_lcd_go_toxy
      003561 D0 05            [24] 1013 	pop	ar5
      003563 D0 06            [24] 1014 	pop	ar6
      003565 D0 07            [24] 1015 	pop	ar7
      003567                       1016 00105$:
                                   1017 ;	src/lcd.c:240: lcd_put_char(*str++); // Write the character
      003567 8D 82            [24] 1018 	mov	dpl,r5
      003569 8E 83            [24] 1019 	mov	dph,r6
      00356B 8F F0            [24] 1020 	mov	b,r7
      00356D 12 46 BA         [24] 1021 	lcall	__gptrget
      003570 FC               [12] 1022 	mov	r4,a
      003571 A3               [24] 1023 	inc	dptr
      003572 AD 82            [24] 1024 	mov	r5,dpl
      003574 AE 83            [24] 1025 	mov	r6,dph
      003576 90 19 2C         [24] 1026 	mov	dptr,#_lcd_put_string_str_65536_65
      003579 ED               [12] 1027 	mov	a,r5
      00357A F0               [24] 1028 	movx	@dptr,a
      00357B EE               [12] 1029 	mov	a,r6
      00357C A3               [24] 1030 	inc	dptr
      00357D F0               [24] 1031 	movx	@dptr,a
      00357E EF               [12] 1032 	mov	a,r7
      00357F A3               [24] 1033 	inc	dptr
      003580 F0               [24] 1034 	movx	@dptr,a
      003581 8C 82            [24] 1035 	mov	dpl,r4
      003583 C0 07            [24] 1036 	push	ar7
      003585 C0 06            [24] 1037 	push	ar6
      003587 C0 05            [24] 1038 	push	ar5
      003589 12 34 77         [24] 1039 	lcall	_lcd_put_char
      00358C D0 05            [24] 1040 	pop	ar5
      00358E D0 06            [24] 1041 	pop	ar6
      003590 D0 07            [24] 1042 	pop	ar7
                                   1043 ;	src/lcd.c:241: char_count++;
      003592 90 19 30         [24] 1044 	mov	dptr,#_lcd_put_string_char_count_65536_66
      003595 E0               [24] 1045 	movx	a,@dptr
      003596 24 01            [12] 1046 	add	a,#0x01
      003598 F0               [24] 1047 	movx	@dptr,a
      003599 02 34 EE         [24] 1048 	ljmp	00106$
      00359C                       1049 00115$:
      00359C 90 19 2C         [24] 1050 	mov	dptr,#_lcd_put_string_str_65536_65
      00359F ED               [12] 1051 	mov	a,r5
      0035A0 F0               [24] 1052 	movx	@dptr,a
      0035A1 EE               [12] 1053 	mov	a,r6
      0035A2 A3               [24] 1054 	inc	dptr
      0035A3 F0               [24] 1055 	movx	@dptr,a
      0035A4 EF               [12] 1056 	mov	a,r7
      0035A5 A3               [24] 1057 	inc	dptr
      0035A6 F0               [24] 1058 	movx	@dptr,a
                                   1059 ;	src/lcd.c:243: }
      0035A7 D0 D0            [24] 1060 	pop	psw
      0035A9 92 AF            [24] 1061 	mov	ea,c
      0035AB 22               [24] 1062 	ret
                                   1063 ;------------------------------------------------------------
                                   1064 ;Allocation info for local variables in function 'lcd_go_to_ddram_addr'
                                   1065 ;------------------------------------------------------------
                                   1066 ;addr                      Allocated with name '_lcd_go_to_ddram_addr_addr_65536_71'
                                   1067 ;------------------------------------------------------------
                                   1068 ;	src/lcd.c:253: void lcd_go_to_ddram_addr(uint8_t addr) {
                                   1069 ;	-----------------------------------------
                                   1070 ;	 function lcd_go_to_ddram_addr
                                   1071 ;	-----------------------------------------
      0035AC                       1072 _lcd_go_to_ddram_addr:
      0035AC E5 82            [12] 1073 	mov	a,dpl
      0035AE 90 19 32         [24] 1074 	mov	dptr,#_lcd_go_to_ddram_addr_addr_65536_71
      0035B1 F0               [24] 1075 	movx	@dptr,a
                                   1076 ;	src/lcd.c:254: write_lcd_command(0x80 | addr);
      0035B2 E0               [24] 1077 	movx	a,@dptr
      0035B3 44 80            [12] 1078 	orl	a,#0x80
      0035B5 F5 82            [12] 1079 	mov	dpl,a
      0035B7 12 33 CC         [24] 1080 	lcall	_write_lcd_command
                                   1081 ;	src/lcd.c:255: lcd_wait();
                                   1082 ;	src/lcd.c:256: }
      0035BA 02 33 A3         [24] 1083 	ljmp	_lcd_wait
                                   1084 ;------------------------------------------------------------
                                   1085 ;Allocation info for local variables in function 'lcd_go_to_cgram_addr'
                                   1086 ;------------------------------------------------------------
                                   1087 ;addr                      Allocated with name '_lcd_go_to_cgram_addr_addr_65536_73'
                                   1088 ;------------------------------------------------------------
                                   1089 ;	src/lcd.c:266: void lcd_go_to_cgram_addr(uint8_t addr) {
                                   1090 ;	-----------------------------------------
                                   1091 ;	 function lcd_go_to_cgram_addr
                                   1092 ;	-----------------------------------------
      0035BD                       1093 _lcd_go_to_cgram_addr:
      0035BD E5 82            [12] 1094 	mov	a,dpl
      0035BF 90 19 33         [24] 1095 	mov	dptr,#_lcd_go_to_cgram_addr_addr_65536_73
      0035C2 F0               [24] 1096 	movx	@dptr,a
                                   1097 ;	src/lcd.c:267: write_lcd_command(0x40 | addr);
      0035C3 E0               [24] 1098 	movx	a,@dptr
      0035C4 44 40            [12] 1099 	orl	a,#0x40
      0035C6 F5 82            [12] 1100 	mov	dpl,a
      0035C8 12 33 CC         [24] 1101 	lcall	_write_lcd_command
                                   1102 ;	src/lcd.c:268: lcd_wait();
                                   1103 ;	src/lcd.c:269: }
      0035CB 02 33 A3         [24] 1104 	ljmp	_lcd_wait
                                   1105 ;------------------------------------------------------------
                                   1106 ;Allocation info for local variables in function 'lcd_go_toxy'
                                   1107 ;------------------------------------------------------------
                                   1108 ;column                    Allocated with name '_lcd_go_toxy_PARM_2'
                                   1109 ;row                       Allocated with name '_lcd_go_toxy_row_65536_75'
                                   1110 ;address                   Allocated with name '_lcd_go_toxy_address_65536_76'
                                   1111 ;------------------------------------------------------------
                                   1112 ;	src/lcd.c:281: void lcd_go_toxy(uint8_t row, uint8_t column) {
                                   1113 ;	-----------------------------------------
                                   1114 ;	 function lcd_go_toxy
                                   1115 ;	-----------------------------------------
      0035CE                       1116 _lcd_go_toxy:
      0035CE E5 82            [12] 1117 	mov	a,dpl
      0035D0 90 19 35         [24] 1118 	mov	dptr,#_lcd_go_toxy_row_65536_75
      0035D3 F0               [24] 1119 	movx	@dptr,a
                                   1120 ;	src/lcd.c:284: if (row == 0) {
      0035D4 E0               [24] 1121 	movx	a,@dptr
      0035D5 FF               [12] 1122 	mov	r7,a
      0035D6 70 0A            [24] 1123 	jnz	00108$
                                   1124 ;	src/lcd.c:285: address = ROW1_ADDR + column;  // First row
      0035D8 90 19 34         [24] 1125 	mov	dptr,#_lcd_go_toxy_PARM_2
      0035DB E0               [24] 1126 	movx	a,@dptr
      0035DC 90 19 36         [24] 1127 	mov	dptr,#_lcd_go_toxy_address_65536_76
      0035DF F0               [24] 1128 	movx	@dptr,a
      0035E0 80 2E            [24] 1129 	sjmp	00109$
      0035E2                       1130 00108$:
                                   1131 ;	src/lcd.c:286: } else if (row == 1) {
      0035E2 BF 01 0E         [24] 1132 	cjne	r7,#0x01,00105$
                                   1133 ;	src/lcd.c:287: address = ROW2_ADDR + column;  // Second row
      0035E5 90 19 34         [24] 1134 	mov	dptr,#_lcd_go_toxy_PARM_2
      0035E8 E0               [24] 1135 	movx	a,@dptr
      0035E9 FE               [12] 1136 	mov	r6,a
      0035EA 90 19 36         [24] 1137 	mov	dptr,#_lcd_go_toxy_address_65536_76
      0035ED 74 40            [12] 1138 	mov	a,#0x40
      0035EF 2E               [12] 1139 	add	a,r6
      0035F0 F0               [24] 1140 	movx	@dptr,a
      0035F1 80 1D            [24] 1141 	sjmp	00109$
      0035F3                       1142 00105$:
                                   1143 ;	src/lcd.c:288: } else if (row == 2) {
      0035F3 BF 02 0E         [24] 1144 	cjne	r7,#0x02,00102$
                                   1145 ;	src/lcd.c:289: address = ROW3_ADDR + column;  // Third row (for Ds)
      0035F6 90 19 34         [24] 1146 	mov	dptr,#_lcd_go_toxy_PARM_2
      0035F9 E0               [24] 1147 	movx	a,@dptr
      0035FA FF               [12] 1148 	mov	r7,a
      0035FB 90 19 36         [24] 1149 	mov	dptr,#_lcd_go_toxy_address_65536_76
      0035FE 74 10            [12] 1150 	mov	a,#0x10
      003600 2F               [12] 1151 	add	a,r7
      003601 F0               [24] 1152 	movx	@dptr,a
      003602 80 0C            [24] 1153 	sjmp	00109$
      003604                       1154 00102$:
                                   1155 ;	src/lcd.c:291: address = ROW4_ADDR + column;  // Fourth row (for 20x4 LCDs)
      003604 90 19 34         [24] 1156 	mov	dptr,#_lcd_go_toxy_PARM_2
      003607 E0               [24] 1157 	movx	a,@dptr
      003608 FF               [12] 1158 	mov	r7,a
      003609 90 19 36         [24] 1159 	mov	dptr,#_lcd_go_toxy_address_65536_76
      00360C 74 50            [12] 1160 	mov	a,#0x50
      00360E 2F               [12] 1161 	add	a,r7
      00360F F0               [24] 1162 	movx	@dptr,a
      003610                       1163 00109$:
                                   1164 ;	src/lcd.c:293: lcd_go_to_ddram_addr(address);
      003610 90 19 36         [24] 1165 	mov	dptr,#_lcd_go_toxy_address_65536_76
      003613 E0               [24] 1166 	movx	a,@dptr
      003614 F5 82            [12] 1167 	mov	dpl,a
                                   1168 ;	src/lcd.c:294: }
      003616 02 35 AC         [24] 1169 	ljmp	_lcd_go_to_ddram_addr
                                   1170 	.area CSEG    (CODE)
                                   1171 	.area CONST   (CODE)
                                   1172 	.area XINIT   (CODE)
      005B52                       1173 __xinit__write_control_register:
      005B52 00 F0                 1174 	.byte #0x00,#0xf0
      005B54                       1175 __xinit__read_control_register:
      005B54 00 F1                 1176 	.byte #0x00,#0xf1
      005B56                       1177 __xinit__write_data_register:
      005B56 00 F2                 1178 	.byte #0x00,#0xf2
      005B58                       1179 __xinit__read_data_register:
      005B58 00 F3                 1180 	.byte #0x00,#0xf3
                                   1181 	.area CABS    (ABS,CODE)
