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
                                     11 	.globl _lcd_cgram_dump
                                     12 	.globl _lcd_ddram_dump_16x4
                                     13 	.globl _lcd_go_to_cgram_addr
                                     14 	.globl _lcd_get_cursor_position
                                     15 	.globl _write_lcd_data
                                     16 	.globl _write_lcd_command
                                     17 	.globl _read_lcd_data
                                     18 	.globl _delay_ms
                                     19 	.globl _printf
                                     20 	.globl _TF1
                                     21 	.globl _TR1
                                     22 	.globl _TF0
                                     23 	.globl _TR0
                                     24 	.globl _IE1
                                     25 	.globl _IT1
                                     26 	.globl _IE0
                                     27 	.globl _IT0
                                     28 	.globl _SM0
                                     29 	.globl _SM1
                                     30 	.globl _SM2
                                     31 	.globl _REN
                                     32 	.globl _TB8
                                     33 	.globl _RB8
                                     34 	.globl _TI
                                     35 	.globl _RI
                                     36 	.globl _CY
                                     37 	.globl _AC
                                     38 	.globl _F0
                                     39 	.globl _RS1
                                     40 	.globl _RS0
                                     41 	.globl _OV
                                     42 	.globl _F1
                                     43 	.globl _P
                                     44 	.globl _RD
                                     45 	.globl _WR
                                     46 	.globl _T1
                                     47 	.globl _T0
                                     48 	.globl _INT1
                                     49 	.globl _INT0
                                     50 	.globl _TXD0
                                     51 	.globl _TXD
                                     52 	.globl _RXD0
                                     53 	.globl _RXD
                                     54 	.globl _P3_7
                                     55 	.globl _P3_6
                                     56 	.globl _P3_5
                                     57 	.globl _P3_4
                                     58 	.globl _P3_3
                                     59 	.globl _P3_2
                                     60 	.globl _P3_1
                                     61 	.globl _P3_0
                                     62 	.globl _P2_7
                                     63 	.globl _P2_6
                                     64 	.globl _P2_5
                                     65 	.globl _P2_4
                                     66 	.globl _P2_3
                                     67 	.globl _P2_2
                                     68 	.globl _P2_1
                                     69 	.globl _P2_0
                                     70 	.globl _P1_7
                                     71 	.globl _P1_6
                                     72 	.globl _P1_5
                                     73 	.globl _P1_4
                                     74 	.globl _P1_3
                                     75 	.globl _P1_2
                                     76 	.globl _P1_1
                                     77 	.globl _P1_0
                                     78 	.globl _P0_7
                                     79 	.globl _P0_6
                                     80 	.globl _P0_5
                                     81 	.globl _P0_4
                                     82 	.globl _P0_3
                                     83 	.globl _P0_2
                                     84 	.globl _P0_1
                                     85 	.globl _P0_0
                                     86 	.globl _PS
                                     87 	.globl _PT1
                                     88 	.globl _PX1
                                     89 	.globl _PT0
                                     90 	.globl _PX0
                                     91 	.globl _EA
                                     92 	.globl _ES
                                     93 	.globl _ET1
                                     94 	.globl _EX1
                                     95 	.globl _ET0
                                     96 	.globl _EX0
                                     97 	.globl _BREG_F7
                                     98 	.globl _BREG_F6
                                     99 	.globl _BREG_F5
                                    100 	.globl _BREG_F4
                                    101 	.globl _BREG_F3
                                    102 	.globl _BREG_F2
                                    103 	.globl _BREG_F1
                                    104 	.globl _BREG_F0
                                    105 	.globl _P5_7
                                    106 	.globl _P5_6
                                    107 	.globl _P5_5
                                    108 	.globl _P5_4
                                    109 	.globl _P5_3
                                    110 	.globl _P5_2
                                    111 	.globl _P5_1
                                    112 	.globl _P5_0
                                    113 	.globl _P4_7
                                    114 	.globl _P4_6
                                    115 	.globl _P4_5
                                    116 	.globl _P4_4
                                    117 	.globl _P4_3
                                    118 	.globl _P4_2
                                    119 	.globl _P4_1
                                    120 	.globl _P4_0
                                    121 	.globl _PX0L
                                    122 	.globl _PT0L
                                    123 	.globl _PX1L
                                    124 	.globl _PT1L
                                    125 	.globl _PSL
                                    126 	.globl _PT2L
                                    127 	.globl _PPCL
                                    128 	.globl _EC
                                    129 	.globl _CCF0
                                    130 	.globl _CCF1
                                    131 	.globl _CCF2
                                    132 	.globl _CCF3
                                    133 	.globl _CCF4
                                    134 	.globl _CR
                                    135 	.globl _CF
                                    136 	.globl _TF2
                                    137 	.globl _EXF2
                                    138 	.globl _RCLK
                                    139 	.globl _TCLK
                                    140 	.globl _EXEN2
                                    141 	.globl _TR2
                                    142 	.globl _C_T2
                                    143 	.globl _CP_RL2
                                    144 	.globl _T2CON_7
                                    145 	.globl _T2CON_6
                                    146 	.globl _T2CON_5
                                    147 	.globl _T2CON_4
                                    148 	.globl _T2CON_3
                                    149 	.globl _T2CON_2
                                    150 	.globl _T2CON_1
                                    151 	.globl _T2CON_0
                                    152 	.globl _PT2
                                    153 	.globl _ET2
                                    154 	.globl _TMOD
                                    155 	.globl _TL1
                                    156 	.globl _TL0
                                    157 	.globl _TH1
                                    158 	.globl _TH0
                                    159 	.globl _TCON
                                    160 	.globl _SP
                                    161 	.globl _SCON
                                    162 	.globl _SBUF0
                                    163 	.globl _SBUF
                                    164 	.globl _PSW
                                    165 	.globl _PCON
                                    166 	.globl _P3
                                    167 	.globl _P2
                                    168 	.globl _P1
                                    169 	.globl _P0
                                    170 	.globl _IP
                                    171 	.globl _IE
                                    172 	.globl _DP0L
                                    173 	.globl _DPL
                                    174 	.globl _DP0H
                                    175 	.globl _DPH
                                    176 	.globl _B
                                    177 	.globl _ACC
                                    178 	.globl _EECON
                                    179 	.globl _KBF
                                    180 	.globl _KBE
                                    181 	.globl _KBLS
                                    182 	.globl _BRL
                                    183 	.globl _BDRCON
                                    184 	.globl _T2MOD
                                    185 	.globl _SPDAT
                                    186 	.globl _SPSTA
                                    187 	.globl _SPCON
                                    188 	.globl _SADEN
                                    189 	.globl _SADDR
                                    190 	.globl _WDTPRG
                                    191 	.globl _WDTRST
                                    192 	.globl _P5
                                    193 	.globl _P4
                                    194 	.globl _IPH1
                                    195 	.globl _IPL1
                                    196 	.globl _IPH0
                                    197 	.globl _IPL0
                                    198 	.globl _IEN1
                                    199 	.globl _IEN0
                                    200 	.globl _CMOD
                                    201 	.globl _CL
                                    202 	.globl _CH
                                    203 	.globl _CCON
                                    204 	.globl _CCAPM4
                                    205 	.globl _CCAPM3
                                    206 	.globl _CCAPM2
                                    207 	.globl _CCAPM1
                                    208 	.globl _CCAPM0
                                    209 	.globl _CCAP4L
                                    210 	.globl _CCAP3L
                                    211 	.globl _CCAP2L
                                    212 	.globl _CCAP1L
                                    213 	.globl _CCAP0L
                                    214 	.globl _CCAP4H
                                    215 	.globl _CCAP3H
                                    216 	.globl _CCAP2H
                                    217 	.globl _CCAP1H
                                    218 	.globl _CCAP0H
                                    219 	.globl _CKCON1
                                    220 	.globl _CKCON0
                                    221 	.globl _CKRL
                                    222 	.globl _AUXR1
                                    223 	.globl _AUXR
                                    224 	.globl _TH2
                                    225 	.globl _TL2
                                    226 	.globl _RCAP2H
                                    227 	.globl _RCAP2L
                                    228 	.globl _T2CON
                                    229 	.globl _read_data_register
                                    230 	.globl _write_data_register
                                    231 	.globl _read_control_register
                                    232 	.globl _write_control_register
                                    233 	.globl _lcd_create_char_PARM_2
                                    234 	.globl _lcd_go_toxy_PARM_2
                                    235 	.globl _lcd_put_string_PARM_3
                                    236 	.globl _lcd_put_string_PARM_2
                                    237 	.globl _lcd_wait
                                    238 	.globl _lcd_init
                                    239 	.globl _lcd_put_char
                                    240 	.globl _lcd_clear
                                    241 	.globl _lcd_put_string
                                    242 	.globl _lcd_go_to_ddram_addr
                                    243 	.globl _lcd_go_toxy
                                    244 	.globl _lcd_create_char
                                    245 	.globl _display_custom_char
                                    246 ;--------------------------------------------------------
                                    247 ; special function registers
                                    248 ;--------------------------------------------------------
                                    249 	.area RSEG    (ABS,DATA)
      000000                        250 	.org 0x0000
                           0000C8   251 _T2CON	=	0x00c8
                           0000CA   252 _RCAP2L	=	0x00ca
                           0000CB   253 _RCAP2H	=	0x00cb
                           0000CC   254 _TL2	=	0x00cc
                           0000CD   255 _TH2	=	0x00cd
                           00008E   256 _AUXR	=	0x008e
                           0000A2   257 _AUXR1	=	0x00a2
                           000097   258 _CKRL	=	0x0097
                           00008F   259 _CKCON0	=	0x008f
                           0000AF   260 _CKCON1	=	0x00af
                           0000FA   261 _CCAP0H	=	0x00fa
                           0000FB   262 _CCAP1H	=	0x00fb
                           0000FC   263 _CCAP2H	=	0x00fc
                           0000FD   264 _CCAP3H	=	0x00fd
                           0000FE   265 _CCAP4H	=	0x00fe
                           0000EA   266 _CCAP0L	=	0x00ea
                           0000EB   267 _CCAP1L	=	0x00eb
                           0000EC   268 _CCAP2L	=	0x00ec
                           0000ED   269 _CCAP3L	=	0x00ed
                           0000EE   270 _CCAP4L	=	0x00ee
                           0000DA   271 _CCAPM0	=	0x00da
                           0000DB   272 _CCAPM1	=	0x00db
                           0000DC   273 _CCAPM2	=	0x00dc
                           0000DD   274 _CCAPM3	=	0x00dd
                           0000DE   275 _CCAPM4	=	0x00de
                           0000D8   276 _CCON	=	0x00d8
                           0000F9   277 _CH	=	0x00f9
                           0000E9   278 _CL	=	0x00e9
                           0000D9   279 _CMOD	=	0x00d9
                           0000A8   280 _IEN0	=	0x00a8
                           0000B1   281 _IEN1	=	0x00b1
                           0000B8   282 _IPL0	=	0x00b8
                           0000B7   283 _IPH0	=	0x00b7
                           0000B2   284 _IPL1	=	0x00b2
                           0000B3   285 _IPH1	=	0x00b3
                           0000C0   286 _P4	=	0x00c0
                           0000E8   287 _P5	=	0x00e8
                           0000A6   288 _WDTRST	=	0x00a6
                           0000A7   289 _WDTPRG	=	0x00a7
                           0000A9   290 _SADDR	=	0x00a9
                           0000B9   291 _SADEN	=	0x00b9
                           0000C3   292 _SPCON	=	0x00c3
                           0000C4   293 _SPSTA	=	0x00c4
                           0000C5   294 _SPDAT	=	0x00c5
                           0000C9   295 _T2MOD	=	0x00c9
                           00009B   296 _BDRCON	=	0x009b
                           00009A   297 _BRL	=	0x009a
                           00009C   298 _KBLS	=	0x009c
                           00009D   299 _KBE	=	0x009d
                           00009E   300 _KBF	=	0x009e
                           0000D2   301 _EECON	=	0x00d2
                           0000E0   302 _ACC	=	0x00e0
                           0000F0   303 _B	=	0x00f0
                           000083   304 _DPH	=	0x0083
                           000083   305 _DP0H	=	0x0083
                           000082   306 _DPL	=	0x0082
                           000082   307 _DP0L	=	0x0082
                           0000A8   308 _IE	=	0x00a8
                           0000B8   309 _IP	=	0x00b8
                           000080   310 _P0	=	0x0080
                           000090   311 _P1	=	0x0090
                           0000A0   312 _P2	=	0x00a0
                           0000B0   313 _P3	=	0x00b0
                           000087   314 _PCON	=	0x0087
                           0000D0   315 _PSW	=	0x00d0
                           000099   316 _SBUF	=	0x0099
                           000099   317 _SBUF0	=	0x0099
                           000098   318 _SCON	=	0x0098
                           000081   319 _SP	=	0x0081
                           000088   320 _TCON	=	0x0088
                           00008C   321 _TH0	=	0x008c
                           00008D   322 _TH1	=	0x008d
                           00008A   323 _TL0	=	0x008a
                           00008B   324 _TL1	=	0x008b
                           000089   325 _TMOD	=	0x0089
                                    326 ;--------------------------------------------------------
                                    327 ; special function bits
                                    328 ;--------------------------------------------------------
                                    329 	.area RSEG    (ABS,DATA)
      000000                        330 	.org 0x0000
                           0000AD   331 _ET2	=	0x00ad
                           0000BD   332 _PT2	=	0x00bd
                           0000C8   333 _T2CON_0	=	0x00c8
                           0000C9   334 _T2CON_1	=	0x00c9
                           0000CA   335 _T2CON_2	=	0x00ca
                           0000CB   336 _T2CON_3	=	0x00cb
                           0000CC   337 _T2CON_4	=	0x00cc
                           0000CD   338 _T2CON_5	=	0x00cd
                           0000CE   339 _T2CON_6	=	0x00ce
                           0000CF   340 _T2CON_7	=	0x00cf
                           0000C8   341 _CP_RL2	=	0x00c8
                           0000C9   342 _C_T2	=	0x00c9
                           0000CA   343 _TR2	=	0x00ca
                           0000CB   344 _EXEN2	=	0x00cb
                           0000CC   345 _TCLK	=	0x00cc
                           0000CD   346 _RCLK	=	0x00cd
                           0000CE   347 _EXF2	=	0x00ce
                           0000CF   348 _TF2	=	0x00cf
                           0000DF   349 _CF	=	0x00df
                           0000DE   350 _CR	=	0x00de
                           0000DC   351 _CCF4	=	0x00dc
                           0000DB   352 _CCF3	=	0x00db
                           0000DA   353 _CCF2	=	0x00da
                           0000D9   354 _CCF1	=	0x00d9
                           0000D8   355 _CCF0	=	0x00d8
                           0000AE   356 _EC	=	0x00ae
                           0000BE   357 _PPCL	=	0x00be
                           0000BD   358 _PT2L	=	0x00bd
                           0000BC   359 _PSL	=	0x00bc
                           0000BB   360 _PT1L	=	0x00bb
                           0000BA   361 _PX1L	=	0x00ba
                           0000B9   362 _PT0L	=	0x00b9
                           0000B8   363 _PX0L	=	0x00b8
                           0000C0   364 _P4_0	=	0x00c0
                           0000C1   365 _P4_1	=	0x00c1
                           0000C2   366 _P4_2	=	0x00c2
                           0000C3   367 _P4_3	=	0x00c3
                           0000C4   368 _P4_4	=	0x00c4
                           0000C5   369 _P4_5	=	0x00c5
                           0000C6   370 _P4_6	=	0x00c6
                           0000C7   371 _P4_7	=	0x00c7
                           0000E8   372 _P5_0	=	0x00e8
                           0000E9   373 _P5_1	=	0x00e9
                           0000EA   374 _P5_2	=	0x00ea
                           0000EB   375 _P5_3	=	0x00eb
                           0000EC   376 _P5_4	=	0x00ec
                           0000ED   377 _P5_5	=	0x00ed
                           0000EE   378 _P5_6	=	0x00ee
                           0000EF   379 _P5_7	=	0x00ef
                           0000F0   380 _BREG_F0	=	0x00f0
                           0000F1   381 _BREG_F1	=	0x00f1
                           0000F2   382 _BREG_F2	=	0x00f2
                           0000F3   383 _BREG_F3	=	0x00f3
                           0000F4   384 _BREG_F4	=	0x00f4
                           0000F5   385 _BREG_F5	=	0x00f5
                           0000F6   386 _BREG_F6	=	0x00f6
                           0000F7   387 _BREG_F7	=	0x00f7
                           0000A8   388 _EX0	=	0x00a8
                           0000A9   389 _ET0	=	0x00a9
                           0000AA   390 _EX1	=	0x00aa
                           0000AB   391 _ET1	=	0x00ab
                           0000AC   392 _ES	=	0x00ac
                           0000AF   393 _EA	=	0x00af
                           0000B8   394 _PX0	=	0x00b8
                           0000B9   395 _PT0	=	0x00b9
                           0000BA   396 _PX1	=	0x00ba
                           0000BB   397 _PT1	=	0x00bb
                           0000BC   398 _PS	=	0x00bc
                           000080   399 _P0_0	=	0x0080
                           000081   400 _P0_1	=	0x0081
                           000082   401 _P0_2	=	0x0082
                           000083   402 _P0_3	=	0x0083
                           000084   403 _P0_4	=	0x0084
                           000085   404 _P0_5	=	0x0085
                           000086   405 _P0_6	=	0x0086
                           000087   406 _P0_7	=	0x0087
                           000090   407 _P1_0	=	0x0090
                           000091   408 _P1_1	=	0x0091
                           000092   409 _P1_2	=	0x0092
                           000093   410 _P1_3	=	0x0093
                           000094   411 _P1_4	=	0x0094
                           000095   412 _P1_5	=	0x0095
                           000096   413 _P1_6	=	0x0096
                           000097   414 _P1_7	=	0x0097
                           0000A0   415 _P2_0	=	0x00a0
                           0000A1   416 _P2_1	=	0x00a1
                           0000A2   417 _P2_2	=	0x00a2
                           0000A3   418 _P2_3	=	0x00a3
                           0000A4   419 _P2_4	=	0x00a4
                           0000A5   420 _P2_5	=	0x00a5
                           0000A6   421 _P2_6	=	0x00a6
                           0000A7   422 _P2_7	=	0x00a7
                           0000B0   423 _P3_0	=	0x00b0
                           0000B1   424 _P3_1	=	0x00b1
                           0000B2   425 _P3_2	=	0x00b2
                           0000B3   426 _P3_3	=	0x00b3
                           0000B4   427 _P3_4	=	0x00b4
                           0000B5   428 _P3_5	=	0x00b5
                           0000B6   429 _P3_6	=	0x00b6
                           0000B7   430 _P3_7	=	0x00b7
                           0000B0   431 _RXD	=	0x00b0
                           0000B0   432 _RXD0	=	0x00b0
                           0000B1   433 _TXD	=	0x00b1
                           0000B1   434 _TXD0	=	0x00b1
                           0000B2   435 _INT0	=	0x00b2
                           0000B3   436 _INT1	=	0x00b3
                           0000B4   437 _T0	=	0x00b4
                           0000B5   438 _T1	=	0x00b5
                           0000B6   439 _WR	=	0x00b6
                           0000B7   440 _RD	=	0x00b7
                           0000D0   441 _P	=	0x00d0
                           0000D1   442 _F1	=	0x00d1
                           0000D2   443 _OV	=	0x00d2
                           0000D3   444 _RS0	=	0x00d3
                           0000D4   445 _RS1	=	0x00d4
                           0000D5   446 _F0	=	0x00d5
                           0000D6   447 _AC	=	0x00d6
                           0000D7   448 _CY	=	0x00d7
                           000098   449 _RI	=	0x0098
                           000099   450 _TI	=	0x0099
                           00009A   451 _RB8	=	0x009a
                           00009B   452 _TB8	=	0x009b
                           00009C   453 _REN	=	0x009c
                           00009D   454 _SM2	=	0x009d
                           00009E   455 _SM1	=	0x009e
                           00009F   456 _SM0	=	0x009f
                           000088   457 _IT0	=	0x0088
                           000089   458 _IE0	=	0x0089
                           00008A   459 _IT1	=	0x008a
                           00008B   460 _IE1	=	0x008b
                           00008C   461 _TR0	=	0x008c
                           00008D   462 _TF0	=	0x008d
                           00008E   463 _TR1	=	0x008e
                           00008F   464 _TF1	=	0x008f
                                    465 ;--------------------------------------------------------
                                    466 ; overlayable register banks
                                    467 ;--------------------------------------------------------
                                    468 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        469 	.ds 8
                                    470 ;--------------------------------------------------------
                                    471 ; internal ram data
                                    472 ;--------------------------------------------------------
                                    473 	.area DSEG    (DATA)
                                    474 ;--------------------------------------------------------
                                    475 ; overlayable items in internal ram 
                                    476 ;--------------------------------------------------------
                                    477 ;--------------------------------------------------------
                                    478 ; indirectly addressable internal ram data
                                    479 ;--------------------------------------------------------
                                    480 	.area ISEG    (DATA)
                                    481 ;--------------------------------------------------------
                                    482 ; absolute internal ram data
                                    483 ;--------------------------------------------------------
                                    484 	.area IABS    (ABS,DATA)
                                    485 	.area IABS    (ABS,DATA)
                                    486 ;--------------------------------------------------------
                                    487 ; bit data
                                    488 ;--------------------------------------------------------
                                    489 	.area BSEG    (BIT)
                                    490 ;--------------------------------------------------------
                                    491 ; paged external ram data
                                    492 ;--------------------------------------------------------
                                    493 	.area PSEG    (PAG,XDATA)
                                    494 ;--------------------------------------------------------
                                    495 ; external ram data
                                    496 ;--------------------------------------------------------
                                    497 	.area XSEG    (XDATA)
      001925                        498 _delay_ms_ms_65536_48:
      001925                        499 	.ds 2
      001927                        500 _write_lcd_command_command_65536_56:
      001927                        501 	.ds 1
      001928                        502 _write_lcd_data_data_65536_58:
      001928                        503 	.ds 1
      001929                        504 _lcd_put_char_c_65536_61:
      001929                        505 	.ds 1
      00192A                        506 _lcd_put_string_PARM_2:
      00192A                        507 	.ds 1
      00192B                        508 _lcd_put_string_PARM_3:
      00192B                        509 	.ds 1
      00192C                        510 _lcd_put_string_str_65536_65:
      00192C                        511 	.ds 3
      00192F                        512 _lcd_put_string_current_row_65536_66:
      00192F                        513 	.ds 1
      001930                        514 _lcd_put_string_char_count_65536_66:
      001930                        515 	.ds 1
      001931                        516 _lcd_put_string_char_count_to_check_65536_66:
      001931                        517 	.ds 1
      001932                        518 _lcd_go_to_ddram_addr_addr_65536_71:
      001932                        519 	.ds 1
      001933                        520 _lcd_go_to_cgram_addr_addr_65536_73:
      001933                        521 	.ds 1
      001934                        522 _lcd_go_toxy_PARM_2:
      001934                        523 	.ds 1
      001935                        524 _lcd_go_toxy_row_65536_75:
      001935                        525 	.ds 1
      001936                        526 _lcd_go_toxy_address_65536_76:
      001936                        527 	.ds 1
      001937                        528 _lcd_ddram_dump_16x4_col_65536_81:
      001937                        529 	.ds 1
      001938                        530 _lcd_create_char_PARM_2:
      001938                        531 	.ds 3
      00193B                        532 _lcd_create_char_ccode_65536_91:
      00193B                        533 	.ds 1
      00193C                        534 _display_custom_char_ccode_65536_96:
      00193C                        535 	.ds 1
                                    536 ;--------------------------------------------------------
                                    537 ; absolute external ram data
                                    538 ;--------------------------------------------------------
                                    539 	.area XABS    (ABS,XDATA)
                                    540 ;--------------------------------------------------------
                                    541 ; external initialized ram data
                                    542 ;--------------------------------------------------------
                                    543 	.area XISEG   (XDATA)
      00198D                        544 _write_control_register::
      00198D                        545 	.ds 2
      00198F                        546 _read_control_register::
      00198F                        547 	.ds 2
      001991                        548 _write_data_register::
      001991                        549 	.ds 2
      001993                        550 _read_data_register::
      001993                        551 	.ds 2
                                    552 	.area HOME    (CODE)
                                    553 	.area GSINIT0 (CODE)
                                    554 	.area GSINIT1 (CODE)
                                    555 	.area GSINIT2 (CODE)
                                    556 	.area GSINIT3 (CODE)
                                    557 	.area GSINIT4 (CODE)
                                    558 	.area GSINIT5 (CODE)
                                    559 	.area GSINIT  (CODE)
                                    560 	.area GSFINAL (CODE)
                                    561 	.area CSEG    (CODE)
                                    562 ;--------------------------------------------------------
                                    563 ; global & static initialisations
                                    564 ;--------------------------------------------------------
                                    565 	.area HOME    (CODE)
                                    566 	.area GSINIT  (CODE)
                                    567 	.area GSFINAL (CODE)
                                    568 	.area GSINIT  (CODE)
                                    569 ;--------------------------------------------------------
                                    570 ; Home
                                    571 ;--------------------------------------------------------
                                    572 	.area HOME    (CODE)
                                    573 	.area HOME    (CODE)
                                    574 ;--------------------------------------------------------
                                    575 ; code
                                    576 ;--------------------------------------------------------
                                    577 	.area CSEG    (CODE)
                                    578 ;------------------------------------------------------------
                                    579 ;Allocation info for local variables in function 'delay_ms'
                                    580 ;------------------------------------------------------------
                                    581 ;ms                        Allocated with name '_delay_ms_ms_65536_48'
                                    582 ;i                         Allocated with name '_delay_ms_i_65536_49'
                                    583 ;j                         Allocated with name '_delay_ms_j_65536_49'
                                    584 ;------------------------------------------------------------
                                    585 ;	src/lcd.c:46: void delay_ms(unsigned int ms) {
                                    586 ;	-----------------------------------------
                                    587 ;	 function delay_ms
                                    588 ;	-----------------------------------------
      0032DD                        589 _delay_ms:
                           000007   590 	ar7 = 0x07
                           000006   591 	ar6 = 0x06
                           000005   592 	ar5 = 0x05
                           000004   593 	ar4 = 0x04
                           000003   594 	ar3 = 0x03
                           000002   595 	ar2 = 0x02
                           000001   596 	ar1 = 0x01
                           000000   597 	ar0 = 0x00
      0032DD AF 83            [24]  598 	mov	r7,dph
      0032DF E5 82            [12]  599 	mov	a,dpl
      0032E1 90 19 25         [24]  600 	mov	dptr,#_delay_ms_ms_65536_48
      0032E4 F0               [24]  601 	movx	@dptr,a
      0032E5 EF               [12]  602 	mov	a,r7
      0032E6 A3               [24]  603 	inc	dptr
      0032E7 F0               [24]  604 	movx	@dptr,a
                                    605 ;	src/lcd.c:48: for (i = 0; i < ms; i++)
      0032E8 90 19 25         [24]  606 	mov	dptr,#_delay_ms_ms_65536_48
      0032EB E0               [24]  607 	movx	a,@dptr
      0032EC FE               [12]  608 	mov	r6,a
      0032ED A3               [24]  609 	inc	dptr
      0032EE E0               [24]  610 	movx	a,@dptr
      0032EF FF               [12]  611 	mov	r7,a
      0032F0 7C 00            [12]  612 	mov	r4,#0x00
      0032F2 7D 00            [12]  613 	mov	r5,#0x00
      0032F4                        614 00107$:
      0032F4 C3               [12]  615 	clr	c
      0032F5 EC               [12]  616 	mov	a,r4
      0032F6 9E               [12]  617 	subb	a,r6
      0032F7 ED               [12]  618 	mov	a,r5
      0032F8 9F               [12]  619 	subb	a,r7
      0032F9 50 14            [24]  620 	jnc	00109$
                                    621 ;	src/lcd.c:49: for (j = 0; j < 123; j++);  // Delay tuned for 12MHz crystal
      0032FB 7A 7B            [12]  622 	mov	r2,#0x7b
      0032FD 7B 00            [12]  623 	mov	r3,#0x00
      0032FF                        624 00105$:
      0032FF 1A               [12]  625 	dec	r2
      003300 BA FF 01         [24]  626 	cjne	r2,#0xff,00130$
      003303 1B               [12]  627 	dec	r3
      003304                        628 00130$:
      003304 EA               [12]  629 	mov	a,r2
      003305 4B               [12]  630 	orl	a,r3
      003306 70 F7            [24]  631 	jnz	00105$
                                    632 ;	src/lcd.c:48: for (i = 0; i < ms; i++)
      003308 0C               [12]  633 	inc	r4
      003309 BC 00 E8         [24]  634 	cjne	r4,#0x00,00107$
      00330C 0D               [12]  635 	inc	r5
      00330D 80 E5            [24]  636 	sjmp	00107$
      00330F                        637 00109$:
                                    638 ;	src/lcd.c:50: }
      00330F 22               [24]  639 	ret
                                    640 ;------------------------------------------------------------
                                    641 ;Allocation info for local variables in function 'lcd_wait'
                                    642 ;------------------------------------------------------------
                                    643 ;	src/lcd.c:60: void lcd_wait(void) {
                                    644 ;	-----------------------------------------
                                    645 ;	 function lcd_wait
                                    646 ;	-----------------------------------------
      003310                        647 _lcd_wait:
                                    648 ;	src/lcd.c:61: while ((* read_control_register) & LCD_BUSY_FLAG)
      003310                        649 00101$:
      003310 90 19 8F         [24]  650 	mov	dptr,#_read_control_register
      003313 E0               [24]  651 	movx	a,@dptr
      003314 FE               [12]  652 	mov	r6,a
      003315 A3               [24]  653 	inc	dptr
      003316 E0               [24]  654 	movx	a,@dptr
      003317 FF               [12]  655 	mov	r7,a
      003318 8E 82            [24]  656 	mov	dpl,r6
      00331A 8F 83            [24]  657 	mov	dph,r7
      00331C E0               [24]  658 	movx	a,@dptr
      00331D 30 E7 08         [24]  659 	jnb	acc.7,00104$
                                    660 ;	src/lcd.c:64: delay_ms(1);
      003320 90 00 01         [24]  661 	mov	dptr,#0x0001
      003323 12 32 DD         [24]  662 	lcall	_delay_ms
      003326 80 E8            [24]  663 	sjmp	00101$
      003328                        664 00104$:
                                    665 ;	src/lcd.c:66: }
      003328 22               [24]  666 	ret
                                    667 ;------------------------------------------------------------
                                    668 ;Allocation info for local variables in function 'read_lcd_data'
                                    669 ;------------------------------------------------------------
                                    670 ;	src/lcd.c:74: uint8_t read_lcd_data()
                                    671 ;	-----------------------------------------
                                    672 ;	 function read_lcd_data
                                    673 ;	-----------------------------------------
      003329                        674 _read_lcd_data:
                                    675 ;	src/lcd.c:76: return *read_data_register;
      003329 90 19 93         [24]  676 	mov	dptr,#_read_data_register
      00332C E0               [24]  677 	movx	a,@dptr
      00332D FE               [12]  678 	mov	r6,a
      00332E A3               [24]  679 	inc	dptr
      00332F E0               [24]  680 	movx	a,@dptr
      003330 FF               [12]  681 	mov	r7,a
      003331 8E 82            [24]  682 	mov	dpl,r6
      003333 8F 83            [24]  683 	mov	dph,r7
      003335 E0               [24]  684 	movx	a,@dptr
                                    685 ;	src/lcd.c:77: }
      003336 F5 82            [12]  686 	mov	dpl,a
      003338 22               [24]  687 	ret
                                    688 ;------------------------------------------------------------
                                    689 ;Allocation info for local variables in function 'write_lcd_command'
                                    690 ;------------------------------------------------------------
                                    691 ;command                   Allocated with name '_write_lcd_command_command_65536_56'
                                    692 ;------------------------------------------------------------
                                    693 ;	src/lcd.c:87: void write_lcd_command(unsigned char command)
                                    694 ;	-----------------------------------------
                                    695 ;	 function write_lcd_command
                                    696 ;	-----------------------------------------
      003339                        697 _write_lcd_command:
      003339 E5 82            [12]  698 	mov	a,dpl
      00333B 90 19 27         [24]  699 	mov	dptr,#_write_lcd_command_command_65536_56
      00333E F0               [24]  700 	movx	@dptr,a
                                    701 ;	src/lcd.c:89: *write_control_register = command;
      00333F 90 19 8D         [24]  702 	mov	dptr,#_write_control_register
      003342 E0               [24]  703 	movx	a,@dptr
      003343 FE               [12]  704 	mov	r6,a
      003344 A3               [24]  705 	inc	dptr
      003345 E0               [24]  706 	movx	a,@dptr
      003346 FF               [12]  707 	mov	r7,a
      003347 90 19 27         [24]  708 	mov	dptr,#_write_lcd_command_command_65536_56
      00334A E0               [24]  709 	movx	a,@dptr
      00334B 8E 82            [24]  710 	mov	dpl,r6
      00334D 8F 83            [24]  711 	mov	dph,r7
      00334F F0               [24]  712 	movx	@dptr,a
                                    713 ;	src/lcd.c:90: }
      003350 22               [24]  714 	ret
                                    715 ;------------------------------------------------------------
                                    716 ;Allocation info for local variables in function 'write_lcd_data'
                                    717 ;------------------------------------------------------------
                                    718 ;data                      Allocated with name '_write_lcd_data_data_65536_58'
                                    719 ;------------------------------------------------------------
                                    720 ;	src/lcd.c:99: void write_lcd_data(unsigned char data)
                                    721 ;	-----------------------------------------
                                    722 ;	 function write_lcd_data
                                    723 ;	-----------------------------------------
      003351                        724 _write_lcd_data:
      003351 E5 82            [12]  725 	mov	a,dpl
      003353 90 19 28         [24]  726 	mov	dptr,#_write_lcd_data_data_65536_58
      003356 F0               [24]  727 	movx	@dptr,a
                                    728 ;	src/lcd.c:101: *write_data_register = data;
      003357 90 19 91         [24]  729 	mov	dptr,#_write_data_register
      00335A E0               [24]  730 	movx	a,@dptr
      00335B FE               [12]  731 	mov	r6,a
      00335C A3               [24]  732 	inc	dptr
      00335D E0               [24]  733 	movx	a,@dptr
      00335E FF               [12]  734 	mov	r7,a
      00335F 90 19 28         [24]  735 	mov	dptr,#_write_lcd_data_data_65536_58
      003362 E0               [24]  736 	movx	a,@dptr
      003363 8E 82            [24]  737 	mov	dpl,r6
      003365 8F 83            [24]  738 	mov	dph,r7
      003367 F0               [24]  739 	movx	@dptr,a
                                    740 ;	src/lcd.c:102: }
      003368 22               [24]  741 	ret
                                    742 ;------------------------------------------------------------
                                    743 ;Allocation info for local variables in function 'lcd_init'
                                    744 ;------------------------------------------------------------
                                    745 ;	src/lcd.c:110: void lcd_init()
                                    746 ;	-----------------------------------------
                                    747 ;	 function lcd_init
                                    748 ;	-----------------------------------------
      003369                        749 _lcd_init:
                                    750 ;	src/lcd.c:113: write_control_register = (__xdata unsigned char *)(LCD_WRITE_CMD); // Ensure proper casting
      003369 90 19 8D         [24]  751 	mov	dptr,#_write_control_register
      00336C E4               [12]  752 	clr	a
      00336D F0               [24]  753 	movx	@dptr,a
      00336E 74 F0            [12]  754 	mov	a,#0xf0
      003370 A3               [24]  755 	inc	dptr
      003371 F0               [24]  756 	movx	@dptr,a
                                    757 ;	src/lcd.c:114: read_control_register = (__xdata unsigned char *)(LCD_READ_CMD);
      003372 90 19 8F         [24]  758 	mov	dptr,#_read_control_register
      003375 E4               [12]  759 	clr	a
      003376 F0               [24]  760 	movx	@dptr,a
      003377 74 F1            [12]  761 	mov	a,#0xf1
      003379 A3               [24]  762 	inc	dptr
      00337A F0               [24]  763 	movx	@dptr,a
                                    764 ;	src/lcd.c:115: write_data_register = (__xdata unsigned char *)(LCD_WRITE_DATA);
      00337B 90 19 91         [24]  765 	mov	dptr,#_write_data_register
      00337E E4               [12]  766 	clr	a
      00337F F0               [24]  767 	movx	@dptr,a
      003380 74 F2            [12]  768 	mov	a,#0xf2
      003382 A3               [24]  769 	inc	dptr
      003383 F0               [24]  770 	movx	@dptr,a
                                    771 ;	src/lcd.c:116: read_data_register = (__xdata unsigned char *)(LCD_READ_DATA);
      003384 90 19 93         [24]  772 	mov	dptr,#_read_data_register
      003387 E4               [12]  773 	clr	a
      003388 F0               [24]  774 	movx	@dptr,a
      003389 74 F3            [12]  775 	mov	a,#0xf3
      00338B A3               [24]  776 	inc	dptr
      00338C F0               [24]  777 	movx	@dptr,a
                                    778 ;	src/lcd.c:117: delay_ms(40);
      00338D 90 00 28         [24]  779 	mov	dptr,#0x0028
      003390 12 32 DD         [24]  780 	lcall	_delay_ms
                                    781 ;	src/lcd.c:118: write_lcd_command(LCD_INIT_SYNC);
      003393 75 82 30         [24]  782 	mov	dpl,#0x30
      003396 12 33 39         [24]  783 	lcall	_write_lcd_command
                                    784 ;	src/lcd.c:119: delay_ms(5);
      003399 90 00 05         [24]  785 	mov	dptr,#0x0005
      00339C 12 32 DD         [24]  786 	lcall	_delay_ms
                                    787 ;	src/lcd.c:120: write_lcd_command(LCD_INIT_SYNC);
      00339F 75 82 30         [24]  788 	mov	dpl,#0x30
      0033A2 12 33 39         [24]  789 	lcall	_write_lcd_command
                                    790 ;	src/lcd.c:121: delay_ms(1);
      0033A5 90 00 01         [24]  791 	mov	dptr,#0x0001
      0033A8 12 32 DD         [24]  792 	lcall	_delay_ms
                                    793 ;	src/lcd.c:122: write_lcd_command(LCD_INIT_SYNC);
      0033AB 75 82 30         [24]  794 	mov	dpl,#0x30
      0033AE 12 33 39         [24]  795 	lcall	_write_lcd_command
                                    796 ;	src/lcd.c:123: delay_ms(2);
      0033B1 90 00 02         [24]  797 	mov	dptr,#0x0002
      0033B4 12 32 DD         [24]  798 	lcall	_delay_ms
                                    799 ;	src/lcd.c:124: write_lcd_command(LCD_INIT_SYNC_CMD);
      0033B7 75 82 38         [24]  800 	mov	dpl,#0x38
      0033BA 12 33 39         [24]  801 	lcall	_write_lcd_command
                                    802 ;	src/lcd.c:126: lcd_wait();
      0033BD 12 33 10         [24]  803 	lcall	_lcd_wait
                                    804 ;	src/lcd.c:127: write_lcd_command(LCD_DISPLAY_OFF_CMD);
      0033C0 75 82 08         [24]  805 	mov	dpl,#0x08
      0033C3 12 33 39         [24]  806 	lcall	_write_lcd_command
                                    807 ;	src/lcd.c:128: lcd_wait();
      0033C6 12 33 10         [24]  808 	lcall	_lcd_wait
                                    809 ;	src/lcd.c:129: write_lcd_command(LCD_DISPLAY_ON_CMD);
      0033C9 75 82 0C         [24]  810 	mov	dpl,#0x0c
      0033CC 12 33 39         [24]  811 	lcall	_write_lcd_command
                                    812 ;	src/lcd.c:130: lcd_wait();
      0033CF 12 33 10         [24]  813 	lcall	_lcd_wait
                                    814 ;	src/lcd.c:131: write_lcd_command(LCD_ENTRY_MODE_CMD);
      0033D2 75 82 06         [24]  815 	mov	dpl,#0x06
      0033D5 12 33 39         [24]  816 	lcall	_write_lcd_command
                                    817 ;	src/lcd.c:132: lcd_wait();
      0033D8 12 33 10         [24]  818 	lcall	_lcd_wait
                                    819 ;	src/lcd.c:133: write_lcd_command(LCD_CLEAR_CMD);
      0033DB 75 82 01         [24]  820 	mov	dpl,#0x01
      0033DE 12 33 39         [24]  821 	lcall	_write_lcd_command
                                    822 ;	src/lcd.c:134: lcd_wait();
                                    823 ;	src/lcd.c:136: }
      0033E1 02 33 10         [24]  824 	ljmp	_lcd_wait
                                    825 ;------------------------------------------------------------
                                    826 ;Allocation info for local variables in function 'lcd_put_char'
                                    827 ;------------------------------------------------------------
                                    828 ;c                         Allocated with name '_lcd_put_char_c_65536_61'
                                    829 ;------------------------------------------------------------
                                    830 ;	src/lcd.c:146: void lcd_put_char(uint8_t c) {
                                    831 ;	-----------------------------------------
                                    832 ;	 function lcd_put_char
                                    833 ;	-----------------------------------------
      0033E4                        834 _lcd_put_char:
      0033E4 E5 82            [12]  835 	mov	a,dpl
      0033E6 90 19 29         [24]  836 	mov	dptr,#_lcd_put_char_c_65536_61
      0033E9 F0               [24]  837 	movx	@dptr,a
                                    838 ;	src/lcd.c:147: write_lcd_data(c);
      0033EA E0               [24]  839 	movx	a,@dptr
      0033EB F5 82            [12]  840 	mov	dpl,a
      0033ED 12 33 51         [24]  841 	lcall	_write_lcd_data
                                    842 ;	src/lcd.c:148: lcd_wait();
                                    843 ;	src/lcd.c:150: }
      0033F0 02 33 10         [24]  844 	ljmp	_lcd_wait
                                    845 ;------------------------------------------------------------
                                    846 ;Allocation info for local variables in function 'lcd_clear'
                                    847 ;------------------------------------------------------------
                                    848 ;	src/lcd.c:159: void lcd_clear()
                                    849 ;	-----------------------------------------
                                    850 ;	 function lcd_clear
                                    851 ;	-----------------------------------------
      0033F3                        852 _lcd_clear:
                                    853 ;	src/lcd.c:161: write_lcd_command(LCD_CLEAR_CMD);
      0033F3 75 82 01         [24]  854 	mov	dpl,#0x01
      0033F6 12 33 39         [24]  855 	lcall	_write_lcd_command
                                    856 ;	src/lcd.c:162: lcd_wait();
                                    857 ;	src/lcd.c:163: }
      0033F9 02 33 10         [24]  858 	ljmp	_lcd_wait
                                    859 ;------------------------------------------------------------
                                    860 ;Allocation info for local variables in function 'lcd_get_cursor_position'
                                    861 ;------------------------------------------------------------
                                    862 ;address                   Allocated with name '_lcd_get_cursor_position_address_65536_64'
                                    863 ;------------------------------------------------------------
                                    864 ;	src/lcd.c:171: uint8_t lcd_get_cursor_position() {
                                    865 ;	-----------------------------------------
                                    866 ;	 function lcd_get_cursor_position
                                    867 ;	-----------------------------------------
      0033FC                        868 _lcd_get_cursor_position:
                                    869 ;	src/lcd.c:173: lcd_wait(); // Ensure LCD is not busy
      0033FC 12 33 10         [24]  870 	lcall	_lcd_wait
                                    871 ;	src/lcd.c:174: address = *read_control_register & 0x7F; // Mask to get the lower 7 bits
      0033FF 90 19 8F         [24]  872 	mov	dptr,#_read_control_register
      003402 E0               [24]  873 	movx	a,@dptr
      003403 FE               [12]  874 	mov	r6,a
      003404 A3               [24]  875 	inc	dptr
      003405 E0               [24]  876 	movx	a,@dptr
      003406 FF               [12]  877 	mov	r7,a
      003407 8E 82            [24]  878 	mov	dpl,r6
      003409 8F 83            [24]  879 	mov	dph,r7
      00340B E0               [24]  880 	movx	a,@dptr
      00340C FE               [12]  881 	mov	r6,a
      00340D 53 06 7F         [24]  882 	anl	ar6,#0x7f
                                    883 ;	src/lcd.c:175: return address;
      003410 8E 82            [24]  884 	mov	dpl,r6
                                    885 ;	src/lcd.c:176: }
      003412 22               [24]  886 	ret
                                    887 ;------------------------------------------------------------
                                    888 ;Allocation info for local variables in function 'lcd_put_string'
                                    889 ;------------------------------------------------------------
                                    890 ;row                       Allocated with name '_lcd_put_string_PARM_2'
                                    891 ;column                    Allocated with name '_lcd_put_string_PARM_3'
                                    892 ;str                       Allocated with name '_lcd_put_string_str_65536_65'
                                    893 ;current_row               Allocated with name '_lcd_put_string_current_row_65536_66'
                                    894 ;char_count                Allocated with name '_lcd_put_string_char_count_65536_66'
                                    895 ;char_count_to_check       Allocated with name '_lcd_put_string_char_count_to_check_65536_66'
                                    896 ;------------------------------------------------------------
                                    897 ;	src/lcd.c:187: void lcd_put_string(char *str,uint8_t row,uint8_t column) __critical
                                    898 ;	-----------------------------------------
                                    899 ;	 function lcd_put_string
                                    900 ;	-----------------------------------------
      003413                        901 _lcd_put_string:
      003413 D3               [12]  902 	setb	c
      003414 10 AF 01         [24]  903 	jbc	ea,00128$
      003417 C3               [12]  904 	clr	c
      003418                        905 00128$:
      003418 C0 D0            [24]  906 	push	psw
      00341A AF F0            [24]  907 	mov	r7,b
      00341C AE 83            [24]  908 	mov	r6,dph
      00341E E5 82            [12]  909 	mov	a,dpl
      003420 90 19 2C         [24]  910 	mov	dptr,#_lcd_put_string_str_65536_65
      003423 F0               [24]  911 	movx	@dptr,a
      003424 EE               [12]  912 	mov	a,r6
      003425 A3               [24]  913 	inc	dptr
      003426 F0               [24]  914 	movx	@dptr,a
      003427 EF               [12]  915 	mov	a,r7
      003428 A3               [24]  916 	inc	dptr
      003429 F0               [24]  917 	movx	@dptr,a
                                    918 ;	src/lcd.c:189: uint8_t current_row = row;
      00342A 90 19 2A         [24]  919 	mov	dptr,#_lcd_put_string_PARM_2
      00342D E0               [24]  920 	movx	a,@dptr
      00342E FF               [12]  921 	mov	r7,a
      00342F 90 19 2F         [24]  922 	mov	dptr,#_lcd_put_string_current_row_65536_66
      003432 F0               [24]  923 	movx	@dptr,a
                                    924 ;	src/lcd.c:190: uint8_t char_count = 0;
      003433 90 19 30         [24]  925 	mov	dptr,#_lcd_put_string_char_count_65536_66
      003436 E4               [12]  926 	clr	a
      003437 F0               [24]  927 	movx	@dptr,a
                                    928 ;	src/lcd.c:191: uint8_t char_count_to_check=CHAR_IN_FIRST_THREE_ROWS-column;
      003438 90 19 2B         [24]  929 	mov	dptr,#_lcd_put_string_PARM_3
      00343B E0               [24]  930 	movx	a,@dptr
      00343C FE               [12]  931 	mov	r6,a
      00343D FD               [12]  932 	mov	r5,a
      00343E 90 19 31         [24]  933 	mov	dptr,#_lcd_put_string_char_count_to_check_65536_66
      003441 74 10            [12]  934 	mov	a,#0x10
      003443 C3               [12]  935 	clr	c
      003444 9D               [12]  936 	subb	a,r5
      003445 F0               [24]  937 	movx	@dptr,a
                                    938 ;	src/lcd.c:193: lcd_go_toxy(row,column);
      003446 90 19 34         [24]  939 	mov	dptr,#_lcd_go_toxy_PARM_2
      003449 EE               [12]  940 	mov	a,r6
      00344A F0               [24]  941 	movx	@dptr,a
      00344B 8F 82            [24]  942 	mov	dpl,r7
      00344D 12 35 3B         [24]  943 	lcall	_lcd_go_toxy
                                    944 ;	src/lcd.c:194: while (*str) {
      003450 90 19 2C         [24]  945 	mov	dptr,#_lcd_put_string_str_65536_65
      003453 E0               [24]  946 	movx	a,@dptr
      003454 FD               [12]  947 	mov	r5,a
      003455 A3               [24]  948 	inc	dptr
      003456 E0               [24]  949 	movx	a,@dptr
      003457 FE               [12]  950 	mov	r6,a
      003458 A3               [24]  951 	inc	dptr
      003459 E0               [24]  952 	movx	a,@dptr
      00345A FF               [12]  953 	mov	r7,a
      00345B                        954 00106$:
      00345B 8D 82            [24]  955 	mov	dpl,r5
      00345D 8E 83            [24]  956 	mov	dph,r6
      00345F 8F F0            [24]  957 	mov	b,r7
      003461 12 47 DD         [24]  958 	lcall	__gptrget
      003464 70 03            [24]  959 	jnz	00129$
      003466 02 35 09         [24]  960 	ljmp	00115$
      003469                        961 00129$:
                                    962 ;	src/lcd.c:195: if (char_count == char_count_to_check) { // Move to the next row after 16 characters
      003469 90 19 30         [24]  963 	mov	dptr,#_lcd_put_string_char_count_65536_66
      00346C E0               [24]  964 	movx	a,@dptr
      00346D FC               [12]  965 	mov	r4,a
      00346E 90 19 31         [24]  966 	mov	dptr,#_lcd_put_string_char_count_to_check_65536_66
      003471 E0               [24]  967 	movx	a,@dptr
      003472 FB               [12]  968 	mov	r3,a
      003473 EC               [12]  969 	mov	a,r4
      003474 B5 03 5D         [24]  970 	cjne	a,ar3,00105$
                                    971 ;	src/lcd.c:196: char_count = 0;
      003477 90 19 30         [24]  972 	mov	dptr,#_lcd_put_string_char_count_65536_66
      00347A E4               [12]  973 	clr	a
      00347B F0               [24]  974 	movx	@dptr,a
                                    975 ;	src/lcd.c:197: current_row = (current_row + 1) % 4;
      00347C 90 19 2F         [24]  976 	mov	dptr,#_lcd_put_string_current_row_65536_66
      00347F E0               [24]  977 	movx	a,@dptr
      003480 FC               [12]  978 	mov	r4,a
      003481 7B 00            [12]  979 	mov	r3,#0x00
      003483 0C               [12]  980 	inc	r4
      003484 BC 00 01         [24]  981 	cjne	r4,#0x00,00132$
      003487 0B               [12]  982 	inc	r3
      003488                        983 00132$:
      003488 90 19 40         [24]  984 	mov	dptr,#__modsint_PARM_2
      00348B 74 04            [12]  985 	mov	a,#0x04
      00348D F0               [24]  986 	movx	@dptr,a
      00348E E4               [12]  987 	clr	a
      00348F A3               [24]  988 	inc	dptr
      003490 F0               [24]  989 	movx	@dptr,a
      003491 8C 82            [24]  990 	mov	dpl,r4
      003493 8B 83            [24]  991 	mov	dph,r3
      003495 C0 07            [24]  992 	push	ar7
      003497 C0 06            [24]  993 	push	ar6
      003499 C0 05            [24]  994 	push	ar5
      00349B 12 3B 3A         [24]  995 	lcall	__modsint
      00349E AB 82            [24]  996 	mov	r3,dpl
      0034A0 D0 05            [24]  997 	pop	ar5
      0034A2 D0 06            [24]  998 	pop	ar6
      0034A4 D0 07            [24]  999 	pop	ar7
      0034A6 90 19 2F         [24] 1000 	mov	dptr,#_lcd_put_string_current_row_65536_66
      0034A9 EB               [12] 1001 	mov	a,r3
      0034AA F0               [24] 1002 	movx	@dptr,a
                                   1003 ;	src/lcd.c:198: if(current_row==3)
      0034AB E0               [24] 1004 	movx	a,@dptr
      0034AC FC               [12] 1005 	mov	r4,a
      0034AD BC 03 08         [24] 1006 	cjne	r4,#0x03,00102$
                                   1007 ;	src/lcd.c:200: char_count_to_check = CHAR_IN_LAST_ROW;
      0034B0 90 19 31         [24] 1008 	mov	dptr,#_lcd_put_string_char_count_to_check_65536_66
      0034B3 74 08            [12] 1009 	mov	a,#0x08
      0034B5 F0               [24] 1010 	movx	@dptr,a
      0034B6 80 06            [24] 1011 	sjmp	00103$
      0034B8                       1012 00102$:
                                   1013 ;	src/lcd.c:204: char_count_to_check = CHAR_IN_FIRST_THREE_ROWS;
      0034B8 90 19 31         [24] 1014 	mov	dptr,#_lcd_put_string_char_count_to_check_65536_66
      0034BB 74 10            [12] 1015 	mov	a,#0x10
      0034BD F0               [24] 1016 	movx	@dptr,a
      0034BE                       1017 00103$:
                                   1018 ;	src/lcd.c:206: lcd_go_toxy(current_row,0);//Set to beginning of next row
      0034BE 90 19 34         [24] 1019 	mov	dptr,#_lcd_go_toxy_PARM_2
      0034C1 E4               [12] 1020 	clr	a
      0034C2 F0               [24] 1021 	movx	@dptr,a
      0034C3 8C 82            [24] 1022 	mov	dpl,r4
      0034C5 C0 07            [24] 1023 	push	ar7
      0034C7 C0 06            [24] 1024 	push	ar6
      0034C9 C0 05            [24] 1025 	push	ar5
      0034CB 12 35 3B         [24] 1026 	lcall	_lcd_go_toxy
      0034CE D0 05            [24] 1027 	pop	ar5
      0034D0 D0 06            [24] 1028 	pop	ar6
      0034D2 D0 07            [24] 1029 	pop	ar7
      0034D4                       1030 00105$:
                                   1031 ;	src/lcd.c:209: lcd_put_char(*str++); // Write the character
      0034D4 8D 82            [24] 1032 	mov	dpl,r5
      0034D6 8E 83            [24] 1033 	mov	dph,r6
      0034D8 8F F0            [24] 1034 	mov	b,r7
      0034DA 12 47 DD         [24] 1035 	lcall	__gptrget
      0034DD FC               [12] 1036 	mov	r4,a
      0034DE A3               [24] 1037 	inc	dptr
      0034DF AD 82            [24] 1038 	mov	r5,dpl
      0034E1 AE 83            [24] 1039 	mov	r6,dph
      0034E3 90 19 2C         [24] 1040 	mov	dptr,#_lcd_put_string_str_65536_65
      0034E6 ED               [12] 1041 	mov	a,r5
      0034E7 F0               [24] 1042 	movx	@dptr,a
      0034E8 EE               [12] 1043 	mov	a,r6
      0034E9 A3               [24] 1044 	inc	dptr
      0034EA F0               [24] 1045 	movx	@dptr,a
      0034EB EF               [12] 1046 	mov	a,r7
      0034EC A3               [24] 1047 	inc	dptr
      0034ED F0               [24] 1048 	movx	@dptr,a
      0034EE 8C 82            [24] 1049 	mov	dpl,r4
      0034F0 C0 07            [24] 1050 	push	ar7
      0034F2 C0 06            [24] 1051 	push	ar6
      0034F4 C0 05            [24] 1052 	push	ar5
      0034F6 12 33 E4         [24] 1053 	lcall	_lcd_put_char
      0034F9 D0 05            [24] 1054 	pop	ar5
      0034FB D0 06            [24] 1055 	pop	ar6
      0034FD D0 07            [24] 1056 	pop	ar7
                                   1057 ;	src/lcd.c:210: char_count++;
      0034FF 90 19 30         [24] 1058 	mov	dptr,#_lcd_put_string_char_count_65536_66
      003502 E0               [24] 1059 	movx	a,@dptr
      003503 24 01            [12] 1060 	add	a,#0x01
      003505 F0               [24] 1061 	movx	@dptr,a
      003506 02 34 5B         [24] 1062 	ljmp	00106$
      003509                       1063 00115$:
      003509 90 19 2C         [24] 1064 	mov	dptr,#_lcd_put_string_str_65536_65
      00350C ED               [12] 1065 	mov	a,r5
      00350D F0               [24] 1066 	movx	@dptr,a
      00350E EE               [12] 1067 	mov	a,r6
      00350F A3               [24] 1068 	inc	dptr
      003510 F0               [24] 1069 	movx	@dptr,a
      003511 EF               [12] 1070 	mov	a,r7
      003512 A3               [24] 1071 	inc	dptr
      003513 F0               [24] 1072 	movx	@dptr,a
                                   1073 ;	src/lcd.c:213: }
      003514 D0 D0            [24] 1074 	pop	psw
      003516 92 AF            [24] 1075 	mov	ea,c
      003518 22               [24] 1076 	ret
                                   1077 ;------------------------------------------------------------
                                   1078 ;Allocation info for local variables in function 'lcd_go_to_ddram_addr'
                                   1079 ;------------------------------------------------------------
                                   1080 ;addr                      Allocated with name '_lcd_go_to_ddram_addr_addr_65536_71'
                                   1081 ;------------------------------------------------------------
                                   1082 ;	src/lcd.c:222: void lcd_go_to_ddram_addr(uint8_t addr)
                                   1083 ;	-----------------------------------------
                                   1084 ;	 function lcd_go_to_ddram_addr
                                   1085 ;	-----------------------------------------
      003519                       1086 _lcd_go_to_ddram_addr:
      003519 E5 82            [12] 1087 	mov	a,dpl
      00351B 90 19 32         [24] 1088 	mov	dptr,#_lcd_go_to_ddram_addr_addr_65536_71
      00351E F0               [24] 1089 	movx	@dptr,a
                                   1090 ;	src/lcd.c:224: write_lcd_command(0x80 |addr );
      00351F E0               [24] 1091 	movx	a,@dptr
      003520 44 80            [12] 1092 	orl	a,#0x80
      003522 F5 82            [12] 1093 	mov	dpl,a
      003524 12 33 39         [24] 1094 	lcall	_write_lcd_command
                                   1095 ;	src/lcd.c:225: lcd_wait();
                                   1096 ;	src/lcd.c:226: }
      003527 02 33 10         [24] 1097 	ljmp	_lcd_wait
                                   1098 ;------------------------------------------------------------
                                   1099 ;Allocation info for local variables in function 'lcd_go_to_cgram_addr'
                                   1100 ;------------------------------------------------------------
                                   1101 ;addr                      Allocated with name '_lcd_go_to_cgram_addr_addr_65536_73'
                                   1102 ;------------------------------------------------------------
                                   1103 ;	src/lcd.c:235: void lcd_go_to_cgram_addr(uint8_t addr)
                                   1104 ;	-----------------------------------------
                                   1105 ;	 function lcd_go_to_cgram_addr
                                   1106 ;	-----------------------------------------
      00352A                       1107 _lcd_go_to_cgram_addr:
      00352A E5 82            [12] 1108 	mov	a,dpl
      00352C 90 19 33         [24] 1109 	mov	dptr,#_lcd_go_to_cgram_addr_addr_65536_73
      00352F F0               [24] 1110 	movx	@dptr,a
                                   1111 ;	src/lcd.c:237: write_lcd_command(0x40 |addr );
      003530 E0               [24] 1112 	movx	a,@dptr
      003531 44 40            [12] 1113 	orl	a,#0x40
      003533 F5 82            [12] 1114 	mov	dpl,a
      003535 12 33 39         [24] 1115 	lcall	_write_lcd_command
                                   1116 ;	src/lcd.c:238: lcd_wait();
                                   1117 ;	src/lcd.c:239: }
      003538 02 33 10         [24] 1118 	ljmp	_lcd_wait
                                   1119 ;------------------------------------------------------------
                                   1120 ;Allocation info for local variables in function 'lcd_go_toxy'
                                   1121 ;------------------------------------------------------------
                                   1122 ;column                    Allocated with name '_lcd_go_toxy_PARM_2'
                                   1123 ;row                       Allocated with name '_lcd_go_toxy_row_65536_75'
                                   1124 ;address                   Allocated with name '_lcd_go_toxy_address_65536_76'
                                   1125 ;------------------------------------------------------------
                                   1126 ;	src/lcd.c:248: void lcd_go_toxy(uint8_t row,uint8_t column)
                                   1127 ;	-----------------------------------------
                                   1128 ;	 function lcd_go_toxy
                                   1129 ;	-----------------------------------------
      00353B                       1130 _lcd_go_toxy:
      00353B E5 82            [12] 1131 	mov	a,dpl
      00353D 90 19 35         [24] 1132 	mov	dptr,#_lcd_go_toxy_row_65536_75
      003540 F0               [24] 1133 	movx	@dptr,a
                                   1134 ;	src/lcd.c:252: if (row == 0) {
      003541 E0               [24] 1135 	movx	a,@dptr
      003542 FF               [12] 1136 	mov	r7,a
      003543 70 0A            [24] 1137 	jnz	00108$
                                   1138 ;	src/lcd.c:253: address = ROW1_ADDR + column;  // First row
      003545 90 19 34         [24] 1139 	mov	dptr,#_lcd_go_toxy_PARM_2
      003548 E0               [24] 1140 	movx	a,@dptr
      003549 90 19 36         [24] 1141 	mov	dptr,#_lcd_go_toxy_address_65536_76
      00354C F0               [24] 1142 	movx	@dptr,a
      00354D 80 2E            [24] 1143 	sjmp	00109$
      00354F                       1144 00108$:
                                   1145 ;	src/lcd.c:254: } else if (row == 1) {
      00354F BF 01 0E         [24] 1146 	cjne	r7,#0x01,00105$
                                   1147 ;	src/lcd.c:255: address = ROW2_ADDR + column;  // Second row
      003552 90 19 34         [24] 1148 	mov	dptr,#_lcd_go_toxy_PARM_2
      003555 E0               [24] 1149 	movx	a,@dptr
      003556 FE               [12] 1150 	mov	r6,a
      003557 90 19 36         [24] 1151 	mov	dptr,#_lcd_go_toxy_address_65536_76
      00355A 74 40            [12] 1152 	mov	a,#0x40
      00355C 2E               [12] 1153 	add	a,r6
      00355D F0               [24] 1154 	movx	@dptr,a
      00355E 80 1D            [24] 1155 	sjmp	00109$
      003560                       1156 00105$:
                                   1157 ;	src/lcd.c:256: } else if (row == 2) {
      003560 BF 02 0E         [24] 1158 	cjne	r7,#0x02,00102$
                                   1159 ;	src/lcd.c:257: address = ROW3_ADDR + column;  // Third row (for Ds)
      003563 90 19 34         [24] 1160 	mov	dptr,#_lcd_go_toxy_PARM_2
      003566 E0               [24] 1161 	movx	a,@dptr
      003567 FF               [12] 1162 	mov	r7,a
      003568 90 19 36         [24] 1163 	mov	dptr,#_lcd_go_toxy_address_65536_76
      00356B 74 10            [12] 1164 	mov	a,#0x10
      00356D 2F               [12] 1165 	add	a,r7
      00356E F0               [24] 1166 	movx	@dptr,a
      00356F 80 0C            [24] 1167 	sjmp	00109$
      003571                       1168 00102$:
                                   1169 ;	src/lcd.c:259: address = ROW4_ADDR + column;  // Fourth row (for 20x4 LCDs)
      003571 90 19 34         [24] 1170 	mov	dptr,#_lcd_go_toxy_PARM_2
      003574 E0               [24] 1171 	movx	a,@dptr
      003575 FF               [12] 1172 	mov	r7,a
      003576 90 19 36         [24] 1173 	mov	dptr,#_lcd_go_toxy_address_65536_76
      003579 74 50            [12] 1174 	mov	a,#0x50
      00357B 2F               [12] 1175 	add	a,r7
      00357C F0               [24] 1176 	movx	@dptr,a
      00357D                       1177 00109$:
                                   1178 ;	src/lcd.c:261: lcd_go_to_ddram_addr(address); 
      00357D 90 19 36         [24] 1179 	mov	dptr,#_lcd_go_toxy_address_65536_76
      003580 E0               [24] 1180 	movx	a,@dptr
      003581 F5 82            [12] 1181 	mov	dpl,a
                                   1182 ;	src/lcd.c:262: }
      003583 02 35 19         [24] 1183 	ljmp	_lcd_go_to_ddram_addr
                                   1184 ;------------------------------------------------------------
                                   1185 ;Allocation info for local variables in function 'lcd_ddram_dump_16x4'
                                   1186 ;------------------------------------------------------------
                                   1187 ;row                       Allocated with name '_lcd_ddram_dump_16x4_row_65536_81'
                                   1188 ;col                       Allocated with name '_lcd_ddram_dump_16x4_col_65536_81'
                                   1189 ;data                      Allocated with name '_lcd_ddram_dump_16x4_data_65536_81'
                                   1190 ;------------------------------------------------------------
                                   1191 ;	src/lcd.c:266: void lcd_ddram_dump_16x4() {
                                   1192 ;	-----------------------------------------
                                   1193 ;	 function lcd_ddram_dump_16x4
                                   1194 ;	-----------------------------------------
      003586                       1195 _lcd_ddram_dump_16x4:
                                   1196 ;	src/lcd.c:267: unsigned char row=0, col=0, data=0;
      003586 90 19 37         [24] 1197 	mov	dptr,#_lcd_ddram_dump_16x4_col_65536_81
      003589 E4               [12] 1198 	clr	a
      00358A F0               [24] 1199 	movx	@dptr,a
                                   1200 ;	src/lcd.c:269: printf("\r\nDDRAM Contents (HEX):\r\n");
      00358B 74 8D            [12] 1201 	mov	a,#___str_0
      00358D C0 E0            [24] 1202 	push	acc
      00358F 74 4F            [12] 1203 	mov	a,#(___str_0 >> 8)
      003591 C0 E0            [24] 1204 	push	acc
      003593 74 80            [12] 1205 	mov	a,#0x80
      003595 C0 E0            [24] 1206 	push	acc
      003597 12 3D 9B         [24] 1207 	lcall	_printf
      00359A 15 81            [12] 1208 	dec	sp
      00359C 15 81            [12] 1209 	dec	sp
      00359E 15 81            [12] 1210 	dec	sp
                                   1211 ;	src/lcd.c:270: for (row = 0; row < 4; row++) {
      0035A0 7F 00            [12] 1212 	mov	r7,#0x00
      0035A2                       1213 00105$:
                                   1214 ;	src/lcd.c:271: lcd_go_toxy(row,col);
      0035A2 90 19 37         [24] 1215 	mov	dptr,#_lcd_ddram_dump_16x4_col_65536_81
      0035A5 E0               [24] 1216 	movx	a,@dptr
      0035A6 90 19 34         [24] 1217 	mov	dptr,#_lcd_go_toxy_PARM_2
      0035A9 F0               [24] 1218 	movx	@dptr,a
      0035AA 8F 82            [24] 1219 	mov	dpl,r7
      0035AC C0 07            [24] 1220 	push	ar7
      0035AE 12 35 3B         [24] 1221 	lcall	_lcd_go_toxy
      0035B1 D0 07            [24] 1222 	pop	ar7
                                   1223 ;	src/lcd.c:272: printf("Row %d: ", row + 1);
      0035B3 8F 05            [24] 1224 	mov	ar5,r7
      0035B5 7E 00            [12] 1225 	mov	r6,#0x00
      0035B7 0D               [12] 1226 	inc	r5
      0035B8 BD 00 01         [24] 1227 	cjne	r5,#0x00,00123$
      0035BB 0E               [12] 1228 	inc	r6
      0035BC                       1229 00123$:
      0035BC C0 07            [24] 1230 	push	ar7
      0035BE C0 05            [24] 1231 	push	ar5
      0035C0 C0 06            [24] 1232 	push	ar6
      0035C2 74 A7            [12] 1233 	mov	a,#___str_1
      0035C4 C0 E0            [24] 1234 	push	acc
      0035C6 74 4F            [12] 1235 	mov	a,#(___str_1 >> 8)
      0035C8 C0 E0            [24] 1236 	push	acc
      0035CA 74 80            [12] 1237 	mov	a,#0x80
      0035CC C0 E0            [24] 1238 	push	acc
      0035CE 12 3D 9B         [24] 1239 	lcall	_printf
      0035D1 E5 81            [12] 1240 	mov	a,sp
      0035D3 24 FB            [12] 1241 	add	a,#0xfb
      0035D5 F5 81            [12] 1242 	mov	sp,a
      0035D7 D0 07            [24] 1243 	pop	ar7
                                   1244 ;	src/lcd.c:274: for (col = 0; col < 16; col++) { // Read 16 bytes per row
      0035D9 7E 00            [12] 1245 	mov	r6,#0x00
      0035DB                       1246 00103$:
                                   1247 ;	src/lcd.c:275: data = read_lcd_data();
      0035DB C0 07            [24] 1248 	push	ar7
      0035DD C0 06            [24] 1249 	push	ar6
      0035DF 12 33 29         [24] 1250 	lcall	_read_lcd_data
      0035E2 AD 82            [24] 1251 	mov	r5,dpl
                                   1252 ;	src/lcd.c:276: printf("%02X ", data); // Display as hex
      0035E4 7C 00            [12] 1253 	mov	r4,#0x00
      0035E6 C0 05            [24] 1254 	push	ar5
      0035E8 C0 04            [24] 1255 	push	ar4
      0035EA 74 B0            [12] 1256 	mov	a,#___str_2
      0035EC C0 E0            [24] 1257 	push	acc
      0035EE 74 4F            [12] 1258 	mov	a,#(___str_2 >> 8)
      0035F0 C0 E0            [24] 1259 	push	acc
      0035F2 74 80            [12] 1260 	mov	a,#0x80
      0035F4 C0 E0            [24] 1261 	push	acc
      0035F6 12 3D 9B         [24] 1262 	lcall	_printf
      0035F9 E5 81            [12] 1263 	mov	a,sp
      0035FB 24 FB            [12] 1264 	add	a,#0xfb
      0035FD F5 81            [12] 1265 	mov	sp,a
      0035FF D0 06            [24] 1266 	pop	ar6
      003601 D0 07            [24] 1267 	pop	ar7
                                   1268 ;	src/lcd.c:274: for (col = 0; col < 16; col++) { // Read 16 bytes per row
      003603 0E               [12] 1269 	inc	r6
      003604 BE 10 00         [24] 1270 	cjne	r6,#0x10,00124$
      003607                       1271 00124$:
      003607 40 D2            [24] 1272 	jc	00103$
                                   1273 ;	src/lcd.c:278: col=0;
      003609 90 19 37         [24] 1274 	mov	dptr,#_lcd_ddram_dump_16x4_col_65536_81
      00360C E4               [12] 1275 	clr	a
      00360D F0               [24] 1276 	movx	@dptr,a
                                   1277 ;	src/lcd.c:279: printf("\r\n");
      00360E C0 07            [24] 1278 	push	ar7
      003610 74 B6            [12] 1279 	mov	a,#___str_3
      003612 C0 E0            [24] 1280 	push	acc
      003614 74 4F            [12] 1281 	mov	a,#(___str_3 >> 8)
      003616 C0 E0            [24] 1282 	push	acc
      003618 74 80            [12] 1283 	mov	a,#0x80
      00361A C0 E0            [24] 1284 	push	acc
      00361C 12 3D 9B         [24] 1285 	lcall	_printf
      00361F 15 81            [12] 1286 	dec	sp
      003621 15 81            [12] 1287 	dec	sp
      003623 15 81            [12] 1288 	dec	sp
      003625 D0 07            [24] 1289 	pop	ar7
                                   1290 ;	src/lcd.c:270: for (row = 0; row < 4; row++) {
      003627 0F               [12] 1291 	inc	r7
      003628 BF 04 00         [24] 1292 	cjne	r7,#0x04,00126$
      00362B                       1293 00126$:
      00362B 50 03            [24] 1294 	jnc	00127$
      00362D 02 35 A2         [24] 1295 	ljmp	00105$
      003630                       1296 00127$:
                                   1297 ;	src/lcd.c:281: }
      003630 22               [24] 1298 	ret
                                   1299 ;------------------------------------------------------------
                                   1300 ;Allocation info for local variables in function 'lcd_cgram_dump'
                                   1301 ;------------------------------------------------------------
                                   1302 ;data                      Allocated with name '_lcd_cgram_dump_data_65536_86'
                                   1303 ;address                   Allocated with name '_lcd_cgram_dump_address_131072_87'
                                   1304 ;------------------------------------------------------------
                                   1305 ;	src/lcd.c:283: void lcd_cgram_dump() {
                                   1306 ;	-----------------------------------------
                                   1307 ;	 function lcd_cgram_dump
                                   1308 ;	-----------------------------------------
      003631                       1309 _lcd_cgram_dump:
                                   1310 ;	src/lcd.c:286: printf("\r\nCGRAM Contents (HEX):\r\n");
      003631 74 B9            [12] 1311 	mov	a,#___str_4
      003633 C0 E0            [24] 1312 	push	acc
      003635 74 4F            [12] 1313 	mov	a,#(___str_4 >> 8)
      003637 C0 E0            [24] 1314 	push	acc
      003639 74 80            [12] 1315 	mov	a,#0x80
      00363B C0 E0            [24] 1316 	push	acc
      00363D 12 3D 9B         [24] 1317 	lcall	_printf
      003640 15 81            [12] 1318 	dec	sp
      003642 15 81            [12] 1319 	dec	sp
      003644 15 81            [12] 1320 	dec	sp
                                   1321 ;	src/lcd.c:288: for (unsigned char address = 0; address < 64; address++) {
      003646 7F 00            [12] 1322 	mov	r7,#0x00
      003648                       1323 00107$:
      003648 BF 40 00         [24] 1324 	cjne	r7,#0x40,00128$
      00364B                       1325 00128$:
      00364B 40 01            [24] 1326 	jc	00129$
      00364D 22               [24] 1327 	ret
      00364E                       1328 00129$:
                                   1329 ;	src/lcd.c:290: if (address % 16 == 0) {
      00364E 8F 05            [24] 1330 	mov	ar5,r7
      003650 7E 00            [12] 1331 	mov	r6,#0x00
      003652 ED               [12] 1332 	mov	a,r5
      003653 54 0F            [12] 1333 	anl	a,#0x0f
      003655 70 1D            [24] 1334 	jnz	00102$
                                   1335 ;	src/lcd.c:291: printf("0x%02X: ", address);
      003657 C0 07            [24] 1336 	push	ar7
      003659 C0 05            [24] 1337 	push	ar5
      00365B C0 06            [24] 1338 	push	ar6
      00365D 74 D3            [12] 1339 	mov	a,#___str_5
      00365F C0 E0            [24] 1340 	push	acc
      003661 74 4F            [12] 1341 	mov	a,#(___str_5 >> 8)
      003663 C0 E0            [24] 1342 	push	acc
      003665 74 80            [12] 1343 	mov	a,#0x80
      003667 C0 E0            [24] 1344 	push	acc
      003669 12 3D 9B         [24] 1345 	lcall	_printf
      00366C E5 81            [12] 1346 	mov	a,sp
      00366E 24 FB            [12] 1347 	add	a,#0xfb
      003670 F5 81            [12] 1348 	mov	sp,a
      003672 D0 07            [24] 1349 	pop	ar7
      003674                       1350 00102$:
                                   1351 ;	src/lcd.c:295: lcd_go_to_cgram_addr(address);
      003674 8F 82            [24] 1352 	mov	dpl,r7
      003676 C0 07            [24] 1353 	push	ar7
      003678 12 35 2A         [24] 1354 	lcall	_lcd_go_to_cgram_addr
                                   1355 ;	src/lcd.c:296: data = read_lcd_data();
      00367B 12 33 29         [24] 1356 	lcall	_read_lcd_data
      00367E AE 82            [24] 1357 	mov	r6,dpl
                                   1358 ;	src/lcd.c:299: printf("%02X ", data);
      003680 7D 00            [12] 1359 	mov	r5,#0x00
      003682 C0 06            [24] 1360 	push	ar6
      003684 C0 05            [24] 1361 	push	ar5
      003686 74 B0            [12] 1362 	mov	a,#___str_2
      003688 C0 E0            [24] 1363 	push	acc
      00368A 74 4F            [12] 1364 	mov	a,#(___str_2 >> 8)
      00368C C0 E0            [24] 1365 	push	acc
      00368E 74 80            [12] 1366 	mov	a,#0x80
      003690 C0 E0            [24] 1367 	push	acc
      003692 12 3D 9B         [24] 1368 	lcall	_printf
      003695 E5 81            [12] 1369 	mov	a,sp
      003697 24 FB            [12] 1370 	add	a,#0xfb
      003699 F5 81            [12] 1371 	mov	sp,a
      00369B D0 07            [24] 1372 	pop	ar7
                                   1373 ;	src/lcd.c:302: if ((address + 1) % 16 == 0) {
      00369D 8F 05            [24] 1374 	mov	ar5,r7
      00369F 7E 00            [12] 1375 	mov	r6,#0x00
      0036A1 0D               [12] 1376 	inc	r5
      0036A2 BD 00 01         [24] 1377 	cjne	r5,#0x00,00132$
      0036A5 0E               [12] 1378 	inc	r6
      0036A6                       1379 00132$:
      0036A6 90 19 40         [24] 1380 	mov	dptr,#__modsint_PARM_2
      0036A9 74 10            [12] 1381 	mov	a,#0x10
      0036AB F0               [24] 1382 	movx	@dptr,a
      0036AC E4               [12] 1383 	clr	a
      0036AD A3               [24] 1384 	inc	dptr
      0036AE F0               [24] 1385 	movx	@dptr,a
      0036AF 8D 82            [24] 1386 	mov	dpl,r5
      0036B1 8E 83            [24] 1387 	mov	dph,r6
      0036B3 C0 07            [24] 1388 	push	ar7
      0036B5 12 3B 3A         [24] 1389 	lcall	__modsint
      0036B8 E5 82            [12] 1390 	mov	a,dpl
      0036BA 85 83 F0         [24] 1391 	mov	b,dph
      0036BD D0 07            [24] 1392 	pop	ar7
      0036BF 45 F0            [12] 1393 	orl	a,b
      0036C1 70 19            [24] 1394 	jnz	00108$
                                   1395 ;	src/lcd.c:303: printf("\r\n");
      0036C3 C0 07            [24] 1396 	push	ar7
      0036C5 74 B6            [12] 1397 	mov	a,#___str_3
      0036C7 C0 E0            [24] 1398 	push	acc
      0036C9 74 4F            [12] 1399 	mov	a,#(___str_3 >> 8)
      0036CB C0 E0            [24] 1400 	push	acc
      0036CD 74 80            [12] 1401 	mov	a,#0x80
      0036CF C0 E0            [24] 1402 	push	acc
      0036D1 12 3D 9B         [24] 1403 	lcall	_printf
      0036D4 15 81            [12] 1404 	dec	sp
      0036D6 15 81            [12] 1405 	dec	sp
      0036D8 15 81            [12] 1406 	dec	sp
      0036DA D0 07            [24] 1407 	pop	ar7
      0036DC                       1408 00108$:
                                   1409 ;	src/lcd.c:288: for (unsigned char address = 0; address < 64; address++) {
      0036DC 0F               [12] 1410 	inc	r7
                                   1411 ;	src/lcd.c:306: }
      0036DD 02 36 48         [24] 1412 	ljmp	00107$
                                   1413 ;------------------------------------------------------------
                                   1414 ;Allocation info for local variables in function 'lcd_create_char'
                                   1415 ;------------------------------------------------------------
                                   1416 ;row_vals                  Allocated with name '_lcd_create_char_PARM_2'
                                   1417 ;ccode                     Allocated with name '_lcd_create_char_ccode_65536_91'
                                   1418 ;i                         Allocated with name '_lcd_create_char_i_65536_92'
                                   1419 ;------------------------------------------------------------
                                   1420 ;	src/lcd.c:308: void lcd_create_char(unsigned char ccode, unsigned char row_vals[]) {
                                   1421 ;	-----------------------------------------
                                   1422 ;	 function lcd_create_char
                                   1423 ;	-----------------------------------------
      0036E0                       1424 _lcd_create_char:
      0036E0 E5 82            [12] 1425 	mov	a,dpl
      0036E2 90 19 3B         [24] 1426 	mov	dptr,#_lcd_create_char_ccode_65536_91
      0036E5 F0               [24] 1427 	movx	@dptr,a
                                   1428 ;	src/lcd.c:312: if (ccode > 7) {
      0036E6 E0               [24] 1429 	movx	a,@dptr
      0036E7 FF               [12] 1430 	mov  r7,a
      0036E8 24 F8            [12] 1431 	add	a,#0xff - 0x07
      0036EA 50 16            [24] 1432 	jnc	00102$
                                   1433 ;	src/lcd.c:313: printf("Error: Invalid character code. Must be 0 to 7.\r\n");
      0036EC 74 DC            [12] 1434 	mov	a,#___str_6
      0036EE C0 E0            [24] 1435 	push	acc
      0036F0 74 4F            [12] 1436 	mov	a,#(___str_6 >> 8)
      0036F2 C0 E0            [24] 1437 	push	acc
      0036F4 74 80            [12] 1438 	mov	a,#0x80
      0036F6 C0 E0            [24] 1439 	push	acc
      0036F8 12 3D 9B         [24] 1440 	lcall	_printf
      0036FB 15 81            [12] 1441 	dec	sp
      0036FD 15 81            [12] 1442 	dec	sp
      0036FF 15 81            [12] 1443 	dec	sp
                                   1444 ;	src/lcd.c:314: return;
      003701 22               [24] 1445 	ret
      003702                       1446 00102$:
                                   1447 ;	src/lcd.c:318: lcd_go_to_cgram_addr(ccode * 8);
      003702 EF               [12] 1448 	mov	a,r7
      003703 C4               [12] 1449 	swap	a
      003704 03               [12] 1450 	rr	a
      003705 54 F8            [12] 1451 	anl	a,#0xf8
      003707 F5 82            [12] 1452 	mov	dpl,a
      003709 12 35 2A         [24] 1453 	lcall	_lcd_go_to_cgram_addr
                                   1454 ;	src/lcd.c:321: for (i = 0; i < 8; i++) {
      00370C 90 19 38         [24] 1455 	mov	dptr,#_lcd_create_char_PARM_2
      00370F E0               [24] 1456 	movx	a,@dptr
      003710 FD               [12] 1457 	mov	r5,a
      003711 A3               [24] 1458 	inc	dptr
      003712 E0               [24] 1459 	movx	a,@dptr
      003713 FE               [12] 1460 	mov	r6,a
      003714 A3               [24] 1461 	inc	dptr
      003715 E0               [24] 1462 	movx	a,@dptr
      003716 FF               [12] 1463 	mov	r7,a
      003717 7C 00            [12] 1464 	mov	r4,#0x00
      003719                       1465 00104$:
                                   1466 ;	src/lcd.c:322: write_lcd_data(row_vals[i]); // Write each byte to CGRAM
      003719 EC               [12] 1467 	mov	a,r4
      00371A 2D               [12] 1468 	add	a,r5
      00371B F9               [12] 1469 	mov	r1,a
      00371C E4               [12] 1470 	clr	a
      00371D 3E               [12] 1471 	addc	a,r6
      00371E FA               [12] 1472 	mov	r2,a
      00371F 8F 03            [24] 1473 	mov	ar3,r7
      003721 89 82            [24] 1474 	mov	dpl,r1
      003723 8A 83            [24] 1475 	mov	dph,r2
      003725 8B F0            [24] 1476 	mov	b,r3
      003727 12 47 DD         [24] 1477 	lcall	__gptrget
      00372A F5 82            [12] 1478 	mov	dpl,a
      00372C C0 07            [24] 1479 	push	ar7
      00372E C0 06            [24] 1480 	push	ar6
      003730 C0 05            [24] 1481 	push	ar5
      003732 C0 04            [24] 1482 	push	ar4
      003734 12 33 51         [24] 1483 	lcall	_write_lcd_data
      003737 D0 04            [24] 1484 	pop	ar4
      003739 D0 05            [24] 1485 	pop	ar5
      00373B D0 06            [24] 1486 	pop	ar6
      00373D D0 07            [24] 1487 	pop	ar7
                                   1488 ;	src/lcd.c:321: for (i = 0; i < 8; i++) {
      00373F 0C               [12] 1489 	inc	r4
      003740 BC 08 00         [24] 1490 	cjne	r4,#0x08,00122$
      003743                       1491 00122$:
      003743 40 D4            [24] 1492 	jc	00104$
                                   1493 ;	src/lcd.c:325: printf("\r\nCustom character %d created successfully.", ccode);
      003745 90 19 3B         [24] 1494 	mov	dptr,#_lcd_create_char_ccode_65536_91
      003748 E0               [24] 1495 	movx	a,@dptr
      003749 FF               [12] 1496 	mov	r7,a
      00374A FD               [12] 1497 	mov	r5,a
      00374B 7E 00            [12] 1498 	mov	r6,#0x00
      00374D C0 07            [24] 1499 	push	ar7
      00374F C0 05            [24] 1500 	push	ar5
      003751 C0 06            [24] 1501 	push	ar6
      003753 74 0D            [12] 1502 	mov	a,#___str_7
      003755 C0 E0            [24] 1503 	push	acc
      003757 74 50            [12] 1504 	mov	a,#(___str_7 >> 8)
      003759 C0 E0            [24] 1505 	push	acc
      00375B 74 80            [12] 1506 	mov	a,#0x80
      00375D C0 E0            [24] 1507 	push	acc
      00375F 12 3D 9B         [24] 1508 	lcall	_printf
      003762 E5 81            [12] 1509 	mov	a,sp
      003764 24 FB            [12] 1510 	add	a,#0xfb
      003766 F5 81            [12] 1511 	mov	sp,a
                                   1512 ;	src/lcd.c:328: lcd_go_toxy(0, 0);  // Example: Set cursor to the first row, first column
      003768 90 19 34         [24] 1513 	mov	dptr,#_lcd_go_toxy_PARM_2
      00376B E4               [12] 1514 	clr	a
      00376C F0               [24] 1515 	movx	@dptr,a
      00376D 75 82 00         [24] 1516 	mov	dpl,#0x00
      003770 12 35 3B         [24] 1517 	lcall	_lcd_go_toxy
      003773 D0 07            [24] 1518 	pop	ar7
                                   1519 ;	src/lcd.c:331: lcd_put_char(ccode); 
      003775 8F 82            [24] 1520 	mov	dpl,r7
                                   1521 ;	src/lcd.c:332: }
      003777 02 33 E4         [24] 1522 	ljmp	_lcd_put_char
                                   1523 ;------------------------------------------------------------
                                   1524 ;Allocation info for local variables in function 'display_custom_char'
                                   1525 ;------------------------------------------------------------
                                   1526 ;ccode                     Allocated with name '_display_custom_char_ccode_65536_96'
                                   1527 ;------------------------------------------------------------
                                   1528 ;	src/lcd.c:335: void display_custom_char(unsigned char ccode) {
                                   1529 ;	-----------------------------------------
                                   1530 ;	 function display_custom_char
                                   1531 ;	-----------------------------------------
      00377A                       1532 _display_custom_char:
      00377A E5 82            [12] 1533 	mov	a,dpl
      00377C 90 19 3C         [24] 1534 	mov	dptr,#_display_custom_char_ccode_65536_96
      00377F F0               [24] 1535 	movx	@dptr,a
                                   1536 ;	src/lcd.c:337: lcd_go_toxy(0, 0);  // Example: Set cursor to the first row, first column
      003780 90 19 34         [24] 1537 	mov	dptr,#_lcd_go_toxy_PARM_2
      003783 E4               [12] 1538 	clr	a
      003784 F0               [24] 1539 	movx	@dptr,a
      003785 75 82 00         [24] 1540 	mov	dpl,#0x00
      003788 12 35 3B         [24] 1541 	lcall	_lcd_go_toxy
                                   1542 ;	src/lcd.c:340: lcd_put_char(ccode); 
      00378B 90 19 3C         [24] 1543 	mov	dptr,#_display_custom_char_ccode_65536_96
      00378E E0               [24] 1544 	movx	a,@dptr
      00378F F5 82            [12] 1545 	mov	dpl,a
                                   1546 ;	src/lcd.c:341: }
      003791 02 33 E4         [24] 1547 	ljmp	_lcd_put_char
                                   1548 	.area CSEG    (CODE)
                                   1549 	.area CONST   (CODE)
                                   1550 	.area CONST   (CODE)
      004F8D                       1551 ___str_0:
      004F8D 0D                    1552 	.db 0x0d
      004F8E 0A                    1553 	.db 0x0a
      004F8F 44 44 52 41 4D 20 43  1554 	.ascii "DDRAM Contents (HEX):"
             6F 6E 74 65 6E 74 73
             20 28 48 45 58 29 3A
      004FA4 0D                    1555 	.db 0x0d
      004FA5 0A                    1556 	.db 0x0a
      004FA6 00                    1557 	.db 0x00
                                   1558 	.area CSEG    (CODE)
                                   1559 	.area CONST   (CODE)
      004FA7                       1560 ___str_1:
      004FA7 52 6F 77 20 25 64 3A  1561 	.ascii "Row %d: "
             20
      004FAF 00                    1562 	.db 0x00
                                   1563 	.area CSEG    (CODE)
                                   1564 	.area CONST   (CODE)
      004FB0                       1565 ___str_2:
      004FB0 25 30 32 58 20        1566 	.ascii "%02X "
      004FB5 00                    1567 	.db 0x00
                                   1568 	.area CSEG    (CODE)
                                   1569 	.area CONST   (CODE)
      004FB6                       1570 ___str_3:
      004FB6 0D                    1571 	.db 0x0d
      004FB7 0A                    1572 	.db 0x0a
      004FB8 00                    1573 	.db 0x00
                                   1574 	.area CSEG    (CODE)
                                   1575 	.area CONST   (CODE)
      004FB9                       1576 ___str_4:
      004FB9 0D                    1577 	.db 0x0d
      004FBA 0A                    1578 	.db 0x0a
      004FBB 43 47 52 41 4D 20 43  1579 	.ascii "CGRAM Contents (HEX):"
             6F 6E 74 65 6E 74 73
             20 28 48 45 58 29 3A
      004FD0 0D                    1580 	.db 0x0d
      004FD1 0A                    1581 	.db 0x0a
      004FD2 00                    1582 	.db 0x00
                                   1583 	.area CSEG    (CODE)
                                   1584 	.area CONST   (CODE)
      004FD3                       1585 ___str_5:
      004FD3 30 78 25 30 32 58 3A  1586 	.ascii "0x%02X: "
             20
      004FDB 00                    1587 	.db 0x00
                                   1588 	.area CSEG    (CODE)
                                   1589 	.area CONST   (CODE)
      004FDC                       1590 ___str_6:
      004FDC 45 72 72 6F 72 3A 20  1591 	.ascii "Error: Invalid character code. Must be 0 to 7."
             49 6E 76 61 6C 69 64
             20 63 68 61 72 61 63
             74 65 72 20 63 6F 64
             65 2E 20 4D 75 73 74
             20 62 65 20 30 20 74
             6F 20 37 2E
      00500A 0D                    1592 	.db 0x0d
      00500B 0A                    1593 	.db 0x0a
      00500C 00                    1594 	.db 0x00
                                   1595 	.area CSEG    (CODE)
                                   1596 	.area CONST   (CODE)
      00500D                       1597 ___str_7:
      00500D 0D                    1598 	.db 0x0d
      00500E 0A                    1599 	.db 0x0a
      00500F 43 75 73 74 6F 6D 20  1600 	.ascii "Custom character %d created successfully."
             63 68 61 72 61 63 74
             65 72 20 25 64 20 63
             72 65 61 74 65 64 20
             73 75 63 63 65 73 73
             66 75 6C 6C 79 2E
      005038 00                    1601 	.db 0x00
                                   1602 	.area CSEG    (CODE)
                                   1603 	.area XINIT   (CODE)
      0052F1                       1604 __xinit__write_control_register:
      0052F1 00 F0                 1605 	.byte #0x00,#0xf0
      0052F3                       1606 __xinit__read_control_register:
      0052F3 00 F1                 1607 	.byte #0x00,#0xf1
      0052F5                       1608 __xinit__write_data_register:
      0052F5 00 F2                 1609 	.byte #0x00,#0xf2
      0052F7                       1610 __xinit__read_data_register:
      0052F7 00 F3                 1611 	.byte #0x00,#0xf3
                                   1612 	.area CABS    (ABS,CODE)
