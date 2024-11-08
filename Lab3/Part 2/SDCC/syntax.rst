                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module syntax
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _get_command
                                     13 	.globl _get_number
                                     14 	.globl _dataout
                                     15 	.globl _memset
                                     16 	.globl _printf
                                     17 	.globl _free
                                     18 	.globl _malloc
                                     19 	.globl _P5_7
                                     20 	.globl _P5_6
                                     21 	.globl _P5_5
                                     22 	.globl _P5_4
                                     23 	.globl _P5_3
                                     24 	.globl _P5_2
                                     25 	.globl _P5_1
                                     26 	.globl _P5_0
                                     27 	.globl _P4_7
                                     28 	.globl _P4_6
                                     29 	.globl _P4_5
                                     30 	.globl _P4_4
                                     31 	.globl _P4_3
                                     32 	.globl _P4_2
                                     33 	.globl _P4_1
                                     34 	.globl _P4_0
                                     35 	.globl _PX0L
                                     36 	.globl _PT0L
                                     37 	.globl _PX1L
                                     38 	.globl _PT1L
                                     39 	.globl _PSL
                                     40 	.globl _PT2L
                                     41 	.globl _PPCL
                                     42 	.globl _EC
                                     43 	.globl _CCF0
                                     44 	.globl _CCF1
                                     45 	.globl _CCF2
                                     46 	.globl _CCF3
                                     47 	.globl _CCF4
                                     48 	.globl _CR
                                     49 	.globl _CF
                                     50 	.globl _TF2
                                     51 	.globl _EXF2
                                     52 	.globl _RCLK
                                     53 	.globl _TCLK
                                     54 	.globl _EXEN2
                                     55 	.globl _TR2
                                     56 	.globl _C_T2
                                     57 	.globl _CP_RL2
                                     58 	.globl _T2CON_7
                                     59 	.globl _T2CON_6
                                     60 	.globl _T2CON_5
                                     61 	.globl _T2CON_4
                                     62 	.globl _T2CON_3
                                     63 	.globl _T2CON_2
                                     64 	.globl _T2CON_1
                                     65 	.globl _T2CON_0
                                     66 	.globl _PT2
                                     67 	.globl _ET2
                                     68 	.globl _CY
                                     69 	.globl _AC
                                     70 	.globl _F0
                                     71 	.globl _RS1
                                     72 	.globl _RS0
                                     73 	.globl _OV
                                     74 	.globl _F1
                                     75 	.globl _P
                                     76 	.globl _PS
                                     77 	.globl _PT1
                                     78 	.globl _PX1
                                     79 	.globl _PT0
                                     80 	.globl _PX0
                                     81 	.globl _RD
                                     82 	.globl _WR
                                     83 	.globl _T1
                                     84 	.globl _T0
                                     85 	.globl _INT1
                                     86 	.globl _INT0
                                     87 	.globl _TXD
                                     88 	.globl _RXD
                                     89 	.globl _P3_7
                                     90 	.globl _P3_6
                                     91 	.globl _P3_5
                                     92 	.globl _P3_4
                                     93 	.globl _P3_3
                                     94 	.globl _P3_2
                                     95 	.globl _P3_1
                                     96 	.globl _P3_0
                                     97 	.globl _EA
                                     98 	.globl _ES
                                     99 	.globl _ET1
                                    100 	.globl _EX1
                                    101 	.globl _ET0
                                    102 	.globl _EX0
                                    103 	.globl _P2_7
                                    104 	.globl _P2_6
                                    105 	.globl _P2_5
                                    106 	.globl _P2_4
                                    107 	.globl _P2_3
                                    108 	.globl _P2_2
                                    109 	.globl _P2_1
                                    110 	.globl _P2_0
                                    111 	.globl _SM0
                                    112 	.globl _SM1
                                    113 	.globl _SM2
                                    114 	.globl _REN
                                    115 	.globl _TB8
                                    116 	.globl _RB8
                                    117 	.globl _TI
                                    118 	.globl _RI
                                    119 	.globl _P1_7
                                    120 	.globl _P1_6
                                    121 	.globl _P1_5
                                    122 	.globl _P1_4
                                    123 	.globl _P1_3
                                    124 	.globl _P1_2
                                    125 	.globl _P1_1
                                    126 	.globl _P1_0
                                    127 	.globl _TF1
                                    128 	.globl _TR1
                                    129 	.globl _TF0
                                    130 	.globl _TR0
                                    131 	.globl _IE1
                                    132 	.globl _IT1
                                    133 	.globl _IE0
                                    134 	.globl _IT0
                                    135 	.globl _P0_7
                                    136 	.globl _P0_6
                                    137 	.globl _P0_5
                                    138 	.globl _P0_4
                                    139 	.globl _P0_3
                                    140 	.globl _P0_2
                                    141 	.globl _P0_1
                                    142 	.globl _P0_0
                                    143 	.globl _EECON
                                    144 	.globl _KBF
                                    145 	.globl _KBE
                                    146 	.globl _KBLS
                                    147 	.globl _BRL
                                    148 	.globl _BDRCON
                                    149 	.globl _T2MOD
                                    150 	.globl _SPDAT
                                    151 	.globl _SPSTA
                                    152 	.globl _SPCON
                                    153 	.globl _SADEN
                                    154 	.globl _SADDR
                                    155 	.globl _WDTPRG
                                    156 	.globl _WDTRST
                                    157 	.globl _P5
                                    158 	.globl _P4
                                    159 	.globl _IPH1
                                    160 	.globl _IPL1
                                    161 	.globl _IPH0
                                    162 	.globl _IPL0
                                    163 	.globl _IEN1
                                    164 	.globl _IEN0
                                    165 	.globl _CMOD
                                    166 	.globl _CL
                                    167 	.globl _CH
                                    168 	.globl _CCON
                                    169 	.globl _CCAPM4
                                    170 	.globl _CCAPM3
                                    171 	.globl _CCAPM2
                                    172 	.globl _CCAPM1
                                    173 	.globl _CCAPM0
                                    174 	.globl _CCAP4L
                                    175 	.globl _CCAP3L
                                    176 	.globl _CCAP2L
                                    177 	.globl _CCAP1L
                                    178 	.globl _CCAP0L
                                    179 	.globl _CCAP4H
                                    180 	.globl _CCAP3H
                                    181 	.globl _CCAP2H
                                    182 	.globl _CCAP1H
                                    183 	.globl _CCAP0H
                                    184 	.globl _CKCON1
                                    185 	.globl _CKCON0
                                    186 	.globl _CKRL
                                    187 	.globl _AUXR1
                                    188 	.globl _AUXR
                                    189 	.globl _TH2
                                    190 	.globl _TL2
                                    191 	.globl _RCAP2H
                                    192 	.globl _RCAP2L
                                    193 	.globl _T2CON
                                    194 	.globl _B
                                    195 	.globl _ACC
                                    196 	.globl _PSW
                                    197 	.globl _IP
                                    198 	.globl _P3
                                    199 	.globl _IE
                                    200 	.globl _P2
                                    201 	.globl _SBUF
                                    202 	.globl _SCON
                                    203 	.globl _P1
                                    204 	.globl _TH1
                                    205 	.globl _TH0
                                    206 	.globl _TL1
                                    207 	.globl _TL0
                                    208 	.globl _TMOD
                                    209 	.globl _TCON
                                    210 	.globl _PCON
                                    211 	.globl _DPH
                                    212 	.globl _DPL
                                    213 	.globl _SP
                                    214 	.globl _P0
                                    215 	.globl _pointer2
                                    216 	.globl _pointer1
                                    217 	.globl _wr
                                    218 	.globl _recived_bytes
                                    219 	.globl _recent_storage
                                    220 	.globl _recent_commands
                                    221 	.globl _total_number_of_storage
                                    222 	.globl _total_number_of_commands
                                    223 	.globl _get_buf_value_PARM_3
                                    224 	.globl _get_buf_value_PARM_2
                                    225 	.globl _array_for_nodes
                                    226 	.globl _dataout_PARM_2
                                    227 	.globl _temp_buffer_size
                                    228 	.globl _init_uart
                                    229 	.globl _putchar
                                    230 	.globl _getchar
                                    231 	.globl _get_buf_value
                                    232 	.globl _print_prompt
                                    233 	.globl _buffer0_dump
                                    234 ;--------------------------------------------------------
                                    235 ; special function registers
                                    236 ;--------------------------------------------------------
                                    237 	.area RSEG    (ABS,DATA)
      000000                        238 	.org 0x0000
                           000080   239 _P0	=	0x0080
                           000081   240 _SP	=	0x0081
                           000082   241 _DPL	=	0x0082
                           000083   242 _DPH	=	0x0083
                           000087   243 _PCON	=	0x0087
                           000088   244 _TCON	=	0x0088
                           000089   245 _TMOD	=	0x0089
                           00008A   246 _TL0	=	0x008a
                           00008B   247 _TL1	=	0x008b
                           00008C   248 _TH0	=	0x008c
                           00008D   249 _TH1	=	0x008d
                           000090   250 _P1	=	0x0090
                           000098   251 _SCON	=	0x0098
                           000099   252 _SBUF	=	0x0099
                           0000A0   253 _P2	=	0x00a0
                           0000A8   254 _IE	=	0x00a8
                           0000B0   255 _P3	=	0x00b0
                           0000B8   256 _IP	=	0x00b8
                           0000D0   257 _PSW	=	0x00d0
                           0000E0   258 _ACC	=	0x00e0
                           0000F0   259 _B	=	0x00f0
                           0000C8   260 _T2CON	=	0x00c8
                           0000CA   261 _RCAP2L	=	0x00ca
                           0000CB   262 _RCAP2H	=	0x00cb
                           0000CC   263 _TL2	=	0x00cc
                           0000CD   264 _TH2	=	0x00cd
                           00008E   265 _AUXR	=	0x008e
                           0000A2   266 _AUXR1	=	0x00a2
                           000097   267 _CKRL	=	0x0097
                           00008F   268 _CKCON0	=	0x008f
                           0000AF   269 _CKCON1	=	0x00af
                           0000FA   270 _CCAP0H	=	0x00fa
                           0000FB   271 _CCAP1H	=	0x00fb
                           0000FC   272 _CCAP2H	=	0x00fc
                           0000FD   273 _CCAP3H	=	0x00fd
                           0000FE   274 _CCAP4H	=	0x00fe
                           0000EA   275 _CCAP0L	=	0x00ea
                           0000EB   276 _CCAP1L	=	0x00eb
                           0000EC   277 _CCAP2L	=	0x00ec
                           0000ED   278 _CCAP3L	=	0x00ed
                           0000EE   279 _CCAP4L	=	0x00ee
                           0000DA   280 _CCAPM0	=	0x00da
                           0000DB   281 _CCAPM1	=	0x00db
                           0000DC   282 _CCAPM2	=	0x00dc
                           0000DD   283 _CCAPM3	=	0x00dd
                           0000DE   284 _CCAPM4	=	0x00de
                           0000D8   285 _CCON	=	0x00d8
                           0000F9   286 _CH	=	0x00f9
                           0000E9   287 _CL	=	0x00e9
                           0000D9   288 _CMOD	=	0x00d9
                           0000A8   289 _IEN0	=	0x00a8
                           0000B1   290 _IEN1	=	0x00b1
                           0000B8   291 _IPL0	=	0x00b8
                           0000B7   292 _IPH0	=	0x00b7
                           0000B2   293 _IPL1	=	0x00b2
                           0000B3   294 _IPH1	=	0x00b3
                           0000C0   295 _P4	=	0x00c0
                           0000E8   296 _P5	=	0x00e8
                           0000A6   297 _WDTRST	=	0x00a6
                           0000A7   298 _WDTPRG	=	0x00a7
                           0000A9   299 _SADDR	=	0x00a9
                           0000B9   300 _SADEN	=	0x00b9
                           0000C3   301 _SPCON	=	0x00c3
                           0000C4   302 _SPSTA	=	0x00c4
                           0000C5   303 _SPDAT	=	0x00c5
                           0000C9   304 _T2MOD	=	0x00c9
                           00009B   305 _BDRCON	=	0x009b
                           00009A   306 _BRL	=	0x009a
                           00009C   307 _KBLS	=	0x009c
                           00009D   308 _KBE	=	0x009d
                           00009E   309 _KBF	=	0x009e
                           0000D2   310 _EECON	=	0x00d2
                                    311 ;--------------------------------------------------------
                                    312 ; special function bits
                                    313 ;--------------------------------------------------------
                                    314 	.area RSEG    (ABS,DATA)
      000000                        315 	.org 0x0000
                           000080   316 _P0_0	=	0x0080
                           000081   317 _P0_1	=	0x0081
                           000082   318 _P0_2	=	0x0082
                           000083   319 _P0_3	=	0x0083
                           000084   320 _P0_4	=	0x0084
                           000085   321 _P0_5	=	0x0085
                           000086   322 _P0_6	=	0x0086
                           000087   323 _P0_7	=	0x0087
                           000088   324 _IT0	=	0x0088
                           000089   325 _IE0	=	0x0089
                           00008A   326 _IT1	=	0x008a
                           00008B   327 _IE1	=	0x008b
                           00008C   328 _TR0	=	0x008c
                           00008D   329 _TF0	=	0x008d
                           00008E   330 _TR1	=	0x008e
                           00008F   331 _TF1	=	0x008f
                           000090   332 _P1_0	=	0x0090
                           000091   333 _P1_1	=	0x0091
                           000092   334 _P1_2	=	0x0092
                           000093   335 _P1_3	=	0x0093
                           000094   336 _P1_4	=	0x0094
                           000095   337 _P1_5	=	0x0095
                           000096   338 _P1_6	=	0x0096
                           000097   339 _P1_7	=	0x0097
                           000098   340 _RI	=	0x0098
                           000099   341 _TI	=	0x0099
                           00009A   342 _RB8	=	0x009a
                           00009B   343 _TB8	=	0x009b
                           00009C   344 _REN	=	0x009c
                           00009D   345 _SM2	=	0x009d
                           00009E   346 _SM1	=	0x009e
                           00009F   347 _SM0	=	0x009f
                           0000A0   348 _P2_0	=	0x00a0
                           0000A1   349 _P2_1	=	0x00a1
                           0000A2   350 _P2_2	=	0x00a2
                           0000A3   351 _P2_3	=	0x00a3
                           0000A4   352 _P2_4	=	0x00a4
                           0000A5   353 _P2_5	=	0x00a5
                           0000A6   354 _P2_6	=	0x00a6
                           0000A7   355 _P2_7	=	0x00a7
                           0000A8   356 _EX0	=	0x00a8
                           0000A9   357 _ET0	=	0x00a9
                           0000AA   358 _EX1	=	0x00aa
                           0000AB   359 _ET1	=	0x00ab
                           0000AC   360 _ES	=	0x00ac
                           0000AF   361 _EA	=	0x00af
                           0000B0   362 _P3_0	=	0x00b0
                           0000B1   363 _P3_1	=	0x00b1
                           0000B2   364 _P3_2	=	0x00b2
                           0000B3   365 _P3_3	=	0x00b3
                           0000B4   366 _P3_4	=	0x00b4
                           0000B5   367 _P3_5	=	0x00b5
                           0000B6   368 _P3_6	=	0x00b6
                           0000B7   369 _P3_7	=	0x00b7
                           0000B0   370 _RXD	=	0x00b0
                           0000B1   371 _TXD	=	0x00b1
                           0000B2   372 _INT0	=	0x00b2
                           0000B3   373 _INT1	=	0x00b3
                           0000B4   374 _T0	=	0x00b4
                           0000B5   375 _T1	=	0x00b5
                           0000B6   376 _WR	=	0x00b6
                           0000B7   377 _RD	=	0x00b7
                           0000B8   378 _PX0	=	0x00b8
                           0000B9   379 _PT0	=	0x00b9
                           0000BA   380 _PX1	=	0x00ba
                           0000BB   381 _PT1	=	0x00bb
                           0000BC   382 _PS	=	0x00bc
                           0000D0   383 _P	=	0x00d0
                           0000D1   384 _F1	=	0x00d1
                           0000D2   385 _OV	=	0x00d2
                           0000D3   386 _RS0	=	0x00d3
                           0000D4   387 _RS1	=	0x00d4
                           0000D5   388 _F0	=	0x00d5
                           0000D6   389 _AC	=	0x00d6
                           0000D7   390 _CY	=	0x00d7
                           0000AD   391 _ET2	=	0x00ad
                           0000BD   392 _PT2	=	0x00bd
                           0000C8   393 _T2CON_0	=	0x00c8
                           0000C9   394 _T2CON_1	=	0x00c9
                           0000CA   395 _T2CON_2	=	0x00ca
                           0000CB   396 _T2CON_3	=	0x00cb
                           0000CC   397 _T2CON_4	=	0x00cc
                           0000CD   398 _T2CON_5	=	0x00cd
                           0000CE   399 _T2CON_6	=	0x00ce
                           0000CF   400 _T2CON_7	=	0x00cf
                           0000C8   401 _CP_RL2	=	0x00c8
                           0000C9   402 _C_T2	=	0x00c9
                           0000CA   403 _TR2	=	0x00ca
                           0000CB   404 _EXEN2	=	0x00cb
                           0000CC   405 _TCLK	=	0x00cc
                           0000CD   406 _RCLK	=	0x00cd
                           0000CE   407 _EXF2	=	0x00ce
                           0000CF   408 _TF2	=	0x00cf
                           0000DF   409 _CF	=	0x00df
                           0000DE   410 _CR	=	0x00de
                           0000DC   411 _CCF4	=	0x00dc
                           0000DB   412 _CCF3	=	0x00db
                           0000DA   413 _CCF2	=	0x00da
                           0000D9   414 _CCF1	=	0x00d9
                           0000D8   415 _CCF0	=	0x00d8
                           0000AE   416 _EC	=	0x00ae
                           0000BE   417 _PPCL	=	0x00be
                           0000BD   418 _PT2L	=	0x00bd
                           0000BC   419 _PSL	=	0x00bc
                           0000BB   420 _PT1L	=	0x00bb
                           0000BA   421 _PX1L	=	0x00ba
                           0000B9   422 _PT0L	=	0x00b9
                           0000B8   423 _PX0L	=	0x00b8
                           0000C0   424 _P4_0	=	0x00c0
                           0000C1   425 _P4_1	=	0x00c1
                           0000C2   426 _P4_2	=	0x00c2
                           0000C3   427 _P4_3	=	0x00c3
                           0000C4   428 _P4_4	=	0x00c4
                           0000C5   429 _P4_5	=	0x00c5
                           0000C6   430 _P4_6	=	0x00c6
                           0000C7   431 _P4_7	=	0x00c7
                           0000E8   432 _P5_0	=	0x00e8
                           0000E9   433 _P5_1	=	0x00e9
                           0000EA   434 _P5_2	=	0x00ea
                           0000EB   435 _P5_3	=	0x00eb
                           0000EC   436 _P5_4	=	0x00ec
                           0000ED   437 _P5_5	=	0x00ed
                           0000EE   438 _P5_6	=	0x00ee
                           0000EF   439 _P5_7	=	0x00ef
                                    440 ;--------------------------------------------------------
                                    441 ; overlayable register banks
                                    442 ;--------------------------------------------------------
                                    443 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        444 	.ds 8
                                    445 ;--------------------------------------------------------
                                    446 ; internal ram data
                                    447 ;--------------------------------------------------------
                                    448 	.area DSEG    (DATA)
      000008                        449 _get_buf_value_sloc0_1_0:
      000008                        450 	.ds 1
      000009                        451 _get_buf_value_sloc1_1_0:
      000009                        452 	.ds 2
      00000B                        453 _get_command_sloc0_1_0:
      00000B                        454 	.ds 2
      00000D                        455 _get_command_sloc1_1_0:
      00000D                        456 	.ds 3
      000010                        457 _get_command_sloc2_1_0:
      000010                        458 	.ds 3
      000013                        459 _buffer0_dump_sloc0_1_0:
      000013                        460 	.ds 2
      000015                        461 _buffer0_dump_sloc1_1_0:
      000015                        462 	.ds 3
      000018                        463 _buffer0_dump_sloc2_1_0:
      000018                        464 	.ds 2
      00001A                        465 _main_sloc0_1_0:
      00001A                        466 	.ds 2
                                    467 ;--------------------------------------------------------
                                    468 ; overlayable items in internal ram 
                                    469 ;--------------------------------------------------------
                                    470 ;--------------------------------------------------------
                                    471 ; Stack segment in internal ram 
                                    472 ;--------------------------------------------------------
                                    473 	.area	SSEG
      000030                        474 __start__stack:
      000030                        475 	.ds	1
                                    476 
                                    477 ;--------------------------------------------------------
                                    478 ; indirectly addressable internal ram data
                                    479 ;--------------------------------------------------------
                                    480 	.area ISEG    (DATA)
      00002E                        481 _temp_buffer_size::
      00002E                        482 	.ds 2
                                    483 ;--------------------------------------------------------
                                    484 ; absolute internal ram data
                                    485 ;--------------------------------------------------------
                                    486 	.area IABS    (ABS,DATA)
                                    487 	.area IABS    (ABS,DATA)
                                    488 ;--------------------------------------------------------
                                    489 ; bit data
                                    490 ;--------------------------------------------------------
                                    491 	.area BSEG    (BIT)
                                    492 ;--------------------------------------------------------
                                    493 ; paged external ram data
                                    494 ;--------------------------------------------------------
                                    495 	.area PSEG    (PAG,XDATA)
                                    496 ;--------------------------------------------------------
                                    497 ; external ram data
                                    498 ;--------------------------------------------------------
                                    499 	.area XSEG    (XDATA)
      000400                        500 _dataout_PARM_2:
      000400                        501 	.ds 1
      000401                        502 _dataout_address_65536_68:
      000401                        503 	.ds 2
      000403                        504 _array_for_nodes::
      000403                        505 	.ds 600
      00065B                        506 _putchar_chr_65536_78:
      00065B                        507 	.ds 2
      00065D                        508 _get_buf_value_PARM_2:
      00065D                        509 	.ds 2
      00065F                        510 _get_buf_value_PARM_3:
      00065F                        511 	.ds 2
      000661                        512 _get_buf_value_string_65536_83:
      000661                        513 	.ds 3
      000664                        514 _get_buf_value_buffer_size_65536_84:
      000664                        515 	.ds 2
      000666                        516 _get_buf_value_input_65536_84:
      000666                        517 	.ds 5
      00066B                        518 _get_buf_value_valid_input_65536_84:
      00066B                        519 	.ds 2
      00066D                        520 _print_prompt_string_65536_91:
      00066D                        521 	.ds 3
      000670                        522 _get_number_prompt_65536_94:
      000670                        523 	.ds 3
      000673                        524 _get_number_buffer_size_65536_95:
      000673                        525 	.ds 2
      000675                        526 _get_number_index_65536_95:
      000675                        527 	.ds 2
      000677                        528 _get_command_command_65536_98:
      000677                        529 	.ds 2
      000679                        530 _get_command_node_196610_120:
      000679                        531 	.ds 6
      00067F                        532 _buffer0_dump_offset_131073_128:
      00067F                        533 	.ds 2
      000681                        534 _main_node1_65538_140:
      000681                        535 	.ds 6
      000687                        536 _main_node2_65539_141:
      000687                        537 	.ds 6
                                    538 ;--------------------------------------------------------
                                    539 ; absolute external ram data
                                    540 ;--------------------------------------------------------
                                    541 	.area XABS    (ABS,XDATA)
                                    542 ;--------------------------------------------------------
                                    543 ; external initialized ram data
                                    544 ;--------------------------------------------------------
                                    545 	.area XISEG   (XDATA)
      001CD7                        546 _index_of_buffers:
      001CD7                        547 	.ds 1
      001CD8                        548 _total_number_of_commands::
      001CD8                        549 	.ds 1
      001CD9                        550 _total_number_of_storage::
      001CD9                        551 	.ds 1
      001CDA                        552 _recent_commands::
      001CDA                        553 	.ds 1
      001CDB                        554 _recent_storage::
      001CDB                        555 	.ds 1
      001CDC                        556 _recived_bytes::
      001CDC                        557 	.ds 1
      001CDD                        558 _wr::
      001CDD                        559 	.ds 3
      001CE0                        560 _pointer1::
      001CE0                        561 	.ds 2
      001CE2                        562 _pointer2::
      001CE2                        563 	.ds 2
                                    564 	.area HOME    (CODE)
                                    565 	.area GSINIT0 (CODE)
                                    566 	.area GSINIT1 (CODE)
                                    567 	.area GSINIT2 (CODE)
                                    568 	.area GSINIT3 (CODE)
                                    569 	.area GSINIT4 (CODE)
                                    570 	.area GSINIT5 (CODE)
                                    571 	.area GSINIT  (CODE)
                                    572 	.area GSFINAL (CODE)
                                    573 	.area CSEG    (CODE)
                                    574 ;--------------------------------------------------------
                                    575 ; interrupt vector 
                                    576 ;--------------------------------------------------------
                                    577 	.area HOME    (CODE)
      003000                        578 __interrupt_vect:
      003000 02 30 06         [24]  579 	ljmp	__sdcc_gsinit_startup
                                    580 ;--------------------------------------------------------
                                    581 ; global & static initialisations
                                    582 ;--------------------------------------------------------
                                    583 	.area HOME    (CODE)
                                    584 	.area GSINIT  (CODE)
                                    585 	.area GSFINAL (CODE)
                                    586 	.area GSINIT  (CODE)
                                    587 	.globl __sdcc_gsinit_startup
                                    588 	.globl __sdcc_program_startup
                                    589 	.globl __start__stack
                                    590 	.globl __mcs51_genXINIT
                                    591 	.globl __mcs51_genXRAMCLEAR
                                    592 	.globl __mcs51_genRAMCLEAR
                                    593 ;	syntax.c:52: __idata int temp_buffer_size = 0;
      00305F 78 2E            [12]  594 	mov	r0,#_temp_buffer_size
      003061 E4               [12]  595 	clr	a
      003062 F6               [12]  596 	mov	@r0,a
      003063 08               [12]  597 	inc	r0
      003064 F6               [12]  598 	mov	@r0,a
                                    599 	.area GSFINAL (CODE)
      003065 02 30 03         [24]  600 	ljmp	__sdcc_program_startup
                                    601 ;--------------------------------------------------------
                                    602 ; Home
                                    603 ;--------------------------------------------------------
                                    604 	.area HOME    (CODE)
                                    605 	.area HOME    (CODE)
      003003                        606 __sdcc_program_startup:
      003003 02 3F C2         [24]  607 	ljmp	_main
                                    608 ;	return from main will return to caller
                                    609 ;--------------------------------------------------------
                                    610 ; code
                                    611 ;--------------------------------------------------------
                                    612 	.area CSEG    (CODE)
                                    613 ;------------------------------------------------------------
                                    614 ;Allocation info for local variables in function 'dataout'
                                    615 ;------------------------------------------------------------
                                    616 ;value                     Allocated with name '_dataout_PARM_2'
                                    617 ;address                   Allocated with name '_dataout_address_65536_68'
                                    618 ;debug_add                 Allocated with name '_dataout_debug_add_65536_69'
                                    619 ;------------------------------------------------------------
                                    620 ;	syntax.c:27: void dataout(uint16_t address, uint8_t value)
                                    621 ;	-----------------------------------------
                                    622 ;	 function dataout
                                    623 ;	-----------------------------------------
      003068                        624 _dataout:
                           000007   625 	ar7 = 0x07
                           000006   626 	ar6 = 0x06
                           000005   627 	ar5 = 0x05
                           000004   628 	ar4 = 0x04
                           000003   629 	ar3 = 0x03
                           000002   630 	ar2 = 0x02
                           000001   631 	ar1 = 0x01
                           000000   632 	ar0 = 0x00
      003068 AF 83            [24]  633 	mov	r7,dph
      00306A E5 82            [12]  634 	mov	a,dpl
      00306C 90 04 01         [24]  635 	mov	dptr,#_dataout_address_65536_68
      00306F F0               [24]  636 	movx	@dptr,a
      003070 EF               [12]  637 	mov	a,r7
      003071 A3               [24]  638 	inc	dptr
      003072 F0               [24]  639 	movx	@dptr,a
                                    640 ;	syntax.c:29: __xdata unsigned char * debug_add = (__xdata unsigned char*)address;
      003073 90 04 01         [24]  641 	mov	dptr,#_dataout_address_65536_68
      003076 E0               [24]  642 	movx	a,@dptr
      003077 FE               [12]  643 	mov	r6,a
      003078 A3               [24]  644 	inc	dptr
      003079 E0               [24]  645 	movx	a,@dptr
      00307A FF               [12]  646 	mov	r7,a
                                    647 ;	syntax.c:30: *debug_add = value; 
      00307B 90 04 00         [24]  648 	mov	dptr,#_dataout_PARM_2
      00307E E0               [24]  649 	movx	a,@dptr
      00307F 8E 82            [24]  650 	mov	dpl,r6
      003081 8F 83            [24]  651 	mov	dph,r7
      003083 F0               [24]  652 	movx	@dptr,a
                                    653 ;	syntax.c:31: }
      003084 22               [24]  654 	ret
                                    655 ;------------------------------------------------------------
                                    656 ;Allocation info for local variables in function 'init_uart'
                                    657 ;------------------------------------------------------------
                                    658 ;	syntax.c:73: void init_uart(void)
                                    659 ;	-----------------------------------------
                                    660 ;	 function init_uart
                                    661 ;	-----------------------------------------
      003085                        662 _init_uart:
                                    663 ;	syntax.c:75: SCON = 0x50;               // Serial mode 1, 8-bit UART, enable receiver
      003085 75 98 50         [24]  664 	mov	_SCON,#0x50
                                    665 ;	syntax.c:76: TMOD = 0x20;               // Timer 1, mode 2 (8-bit auto-reload)
      003088 75 89 20         [24]  666 	mov	_TMOD,#0x20
                                    667 ;	syntax.c:77: TH1 = 0xFD;                // 9600 baud rate
      00308B 75 8D FD         [24]  668 	mov	_TH1,#0xfd
                                    669 ;	syntax.c:78: TR1 = 1;                   // Start timer 1
                                    670 ;	assignBit
      00308E D2 8E            [12]  671 	setb	_TR1
                                    672 ;	syntax.c:79: }
      003090 22               [24]  673 	ret
                                    674 ;------------------------------------------------------------
                                    675 ;Allocation info for local variables in function 'putchar'
                                    676 ;------------------------------------------------------------
                                    677 ;chr                       Allocated with name '_putchar_chr_65536_78'
                                    678 ;------------------------------------------------------------
                                    679 ;	syntax.c:87: int putchar(int chr)
                                    680 ;	-----------------------------------------
                                    681 ;	 function putchar
                                    682 ;	-----------------------------------------
      003091                        683 _putchar:
      003091 AF 83            [24]  684 	mov	r7,dph
      003093 E5 82            [12]  685 	mov	a,dpl
      003095 90 06 5B         [24]  686 	mov	dptr,#_putchar_chr_65536_78
      003098 F0               [24]  687 	movx	@dptr,a
      003099 EF               [12]  688 	mov	a,r7
      00309A A3               [24]  689 	inc	dptr
      00309B F0               [24]  690 	movx	@dptr,a
                                    691 ;	syntax.c:89: SBUF = chr;                 // Load character to send
      00309C 90 06 5B         [24]  692 	mov	dptr,#_putchar_chr_65536_78
      00309F E0               [24]  693 	movx	a,@dptr
      0030A0 FE               [12]  694 	mov	r6,a
      0030A1 A3               [24]  695 	inc	dptr
      0030A2 E0               [24]  696 	movx	a,@dptr
      0030A3 8E 99            [24]  697 	mov	_SBUF,r6
                                    698 ;	syntax.c:90: while(!TI);                 // Wait for transmission complete
      0030A5                        699 00101$:
                                    700 ;	syntax.c:92: TI = 0;                     // Clear transmission flag
                                    701 ;	assignBit
      0030A5 10 99 02         [24]  702 	jbc	_TI,00114$
      0030A8 80 FB            [24]  703 	sjmp	00101$
      0030AA                        704 00114$:
                                    705 ;	syntax.c:93: return 1;
      0030AA 90 00 01         [24]  706 	mov	dptr,#0x0001
                                    707 ;	syntax.c:94: }
      0030AD 22               [24]  708 	ret
                                    709 ;------------------------------------------------------------
                                    710 ;Allocation info for local variables in function 'getchar'
                                    711 ;------------------------------------------------------------
                                    712 ;a                         Allocated with name '_getchar_a_65537_82'
                                    713 ;------------------------------------------------------------
                                    714 ;	syntax.c:102: int getchar(void){
                                    715 ;	-----------------------------------------
                                    716 ;	 function getchar
                                    717 ;	-----------------------------------------
      0030AE                        718 _getchar:
                                    719 ;	syntax.c:103: while(!RI);                 // Wait for character reception
      0030AE                        720 00101$:
      0030AE 30 98 FD         [24]  721 	jnb	_RI,00101$
                                    722 ;	syntax.c:104: int a = SBUF;               // Get received character
      0030B1 AE 99            [24]  723 	mov	r6,_SBUF
      0030B3 7F 00            [12]  724 	mov	r7,#0x00
                                    725 ;	syntax.c:106: RI = 0;                     // Clear reception flag
                                    726 ;	assignBit
      0030B5 C2 98            [12]  727 	clr	_RI
                                    728 ;	syntax.c:107: recived_bytes++;            // Update received byte count
      0030B7 90 1C DC         [24]  729 	mov	dptr,#_recived_bytes
      0030BA E0               [24]  730 	movx	a,@dptr
      0030BB 24 01            [12]  731 	add	a,#0x01
      0030BD F0               [24]  732 	movx	@dptr,a
                                    733 ;	syntax.c:108: return a;
      0030BE 8E 82            [24]  734 	mov	dpl,r6
      0030C0 8F 83            [24]  735 	mov	dph,r7
                                    736 ;	syntax.c:109: }
      0030C2 22               [24]  737 	ret
                                    738 ;------------------------------------------------------------
                                    739 ;Allocation info for local variables in function 'get_buf_value'
                                    740 ;------------------------------------------------------------
                                    741 ;sloc0                     Allocated with name '_get_buf_value_sloc0_1_0'
                                    742 ;sloc1                     Allocated with name '_get_buf_value_sloc1_1_0'
                                    743 ;UPPER                     Allocated with name '_get_buf_value_PARM_2'
                                    744 ;LOWER                     Allocated with name '_get_buf_value_PARM_3'
                                    745 ;string                    Allocated with name '_get_buf_value_string_65536_83'
                                    746 ;buffer_size               Allocated with name '_get_buf_value_buffer_size_65536_84'
                                    747 ;input                     Allocated with name '_get_buf_value_input_65536_84'
                                    748 ;valid_input               Allocated with name '_get_buf_value_valid_input_65536_84'
                                    749 ;digit_count               Allocated with name '_get_buf_value_digit_count_131073_86'
                                    750 ;i                         Allocated with name '_get_buf_value_i_131073_86'
                                    751 ;c                         Allocated with name '_get_buf_value_c_131073_86'
                                    752 ;------------------------------------------------------------
                                    753 ;	syntax.c:120: int get_buf_value(const char* string, int UPPER, int LOWER) {
                                    754 ;	-----------------------------------------
                                    755 ;	 function get_buf_value
                                    756 ;	-----------------------------------------
      0030C3                        757 _get_buf_value:
      0030C3 AF F0            [24]  758 	mov	r7,b
      0030C5 AE 83            [24]  759 	mov	r6,dph
      0030C7 E5 82            [12]  760 	mov	a,dpl
      0030C9 90 06 61         [24]  761 	mov	dptr,#_get_buf_value_string_65536_83
      0030CC F0               [24]  762 	movx	@dptr,a
      0030CD EE               [12]  763 	mov	a,r6
      0030CE A3               [24]  764 	inc	dptr
      0030CF F0               [24]  765 	movx	@dptr,a
      0030D0 EF               [12]  766 	mov	a,r7
      0030D1 A3               [24]  767 	inc	dptr
      0030D2 F0               [24]  768 	movx	@dptr,a
                                    769 ;	syntax.c:121: int buffer_size = 0;
      0030D3 90 06 64         [24]  770 	mov	dptr,#_get_buf_value_buffer_size_65536_84
      0030D6 E4               [12]  771 	clr	a
      0030D7 F0               [24]  772 	movx	@dptr,a
      0030D8 A3               [24]  773 	inc	dptr
      0030D9 F0               [24]  774 	movx	@dptr,a
                                    775 ;	syntax.c:123: int valid_input = 0;
      0030DA 90 06 6B         [24]  776 	mov	dptr,#_get_buf_value_valid_input_65536_84
      0030DD F0               [24]  777 	movx	@dptr,a
      0030DE A3               [24]  778 	inc	dptr
      0030DF F0               [24]  779 	movx	@dptr,a
                                    780 ;	syntax.c:125: while (!valid_input) {
      0030E0 90 06 5D         [24]  781 	mov	dptr,#_get_buf_value_PARM_2
      0030E3 E0               [24]  782 	movx	a,@dptr
      0030E4 FE               [12]  783 	mov	r6,a
      0030E5 A3               [24]  784 	inc	dptr
      0030E6 E0               [24]  785 	movx	a,@dptr
      0030E7 FF               [12]  786 	mov	r7,a
      0030E8 90 06 5F         [24]  787 	mov	dptr,#_get_buf_value_PARM_3
      0030EB E0               [24]  788 	movx	a,@dptr
      0030EC F5 09            [12]  789 	mov	_get_buf_value_sloc1_1_0,a
      0030EE A3               [24]  790 	inc	dptr
      0030EF E0               [24]  791 	movx	a,@dptr
      0030F0 F5 0A            [12]  792 	mov	(_get_buf_value_sloc1_1_0 + 1),a
      0030F2                        793 00117$:
      0030F2 90 06 6B         [24]  794 	mov	dptr,#_get_buf_value_valid_input_65536_84
      0030F5 E0               [24]  795 	movx	a,@dptr
      0030F6 F5 F0            [12]  796 	mov	b,a
      0030F8 A3               [24]  797 	inc	dptr
      0030F9 E0               [24]  798 	movx	a,@dptr
      0030FA 45 F0            [12]  799 	orl	a,b
      0030FC 60 03            [24]  800 	jz	00166$
      0030FE 02 33 67         [24]  801 	ljmp	00119$
      003101                        802 00166$:
                                    803 ;	syntax.c:126: print_prompt("\n\r+--------------------------------------------------+");
      003101 90 55 EF         [24]  804 	mov	dptr,#___str_0
      003104 75 F0 80         [24]  805 	mov	b,#0x80
      003107 C0 07            [24]  806 	push	ar7
      003109 C0 06            [24]  807 	push	ar6
      00310B 12 33 73         [24]  808 	lcall	_print_prompt
                                    809 ;	syntax.c:127: print_prompt(string);
      00310E 90 06 61         [24]  810 	mov	dptr,#_get_buf_value_string_65536_83
      003111 E0               [24]  811 	movx	a,@dptr
      003112 F9               [12]  812 	mov	r1,a
      003113 A3               [24]  813 	inc	dptr
      003114 E0               [24]  814 	movx	a,@dptr
      003115 FA               [12]  815 	mov	r2,a
      003116 A3               [24]  816 	inc	dptr
      003117 E0               [24]  817 	movx	a,@dptr
      003118 FB               [12]  818 	mov	r3,a
      003119 89 82            [24]  819 	mov	dpl,r1
      00311B 8A 83            [24]  820 	mov	dph,r2
      00311D 8B F0            [24]  821 	mov	b,r3
      00311F 12 33 73         [24]  822 	lcall	_print_prompt
      003122 D0 06            [24]  823 	pop	ar6
      003124 D0 07            [24]  824 	pop	ar7
                                    825 ;	syntax.c:130: buffer_size = 0;
      003126 90 06 64         [24]  826 	mov	dptr,#_get_buf_value_buffer_size_65536_84
      003129 E4               [12]  827 	clr	a
      00312A F0               [24]  828 	movx	@dptr,a
      00312B A3               [24]  829 	inc	dptr
      00312C F0               [24]  830 	movx	@dptr,a
                                    831 ;	syntax.c:136: while ((c = getchar()) != 0x0d && digit_count < 4) {
      00312D 7A 00            [12]  832 	mov	r2,#0x00
      00312F 7B 00            [12]  833 	mov	r3,#0x00
      003131 78 00            [12]  834 	mov	r0,#0x00
      003133 79 00            [12]  835 	mov	r1,#0x00
      003135                        836 00108$:
      003135 C0 06            [24]  837 	push	ar6
      003137 C0 07            [24]  838 	push	ar7
      003139 C0 03            [24]  839 	push	ar3
      00313B C0 02            [24]  840 	push	ar2
      00313D C0 01            [24]  841 	push	ar1
      00313F C0 00            [24]  842 	push	ar0
      003141 12 30 AE         [24]  843 	lcall	_getchar
      003144 AE 82            [24]  844 	mov	r6,dpl
      003146 D0 00            [24]  845 	pop	ar0
      003148 D0 01            [24]  846 	pop	ar1
      00314A D0 02            [24]  847 	pop	ar2
      00314C D0 03            [24]  848 	pop	ar3
      00314E 8E 08            [24]  849 	mov	_get_buf_value_sloc0_1_0,r6
      003150 74 0D            [12]  850 	mov	a,#0x0d
      003152 B5 08 07         [24]  851 	cjne	a,_get_buf_value_sloc0_1_0,00167$
      003155 D0 07            [24]  852 	pop	ar7
      003157 D0 06            [24]  853 	pop	ar6
      003159 02 32 5D         [24]  854 	ljmp	00110$
      00315C                        855 00167$:
      00315C D0 07            [24]  856 	pop	ar7
      00315E D0 06            [24]  857 	pop	ar6
      003160 C3               [12]  858 	clr	c
      003161 E8               [12]  859 	mov	a,r0
      003162 94 04            [12]  860 	subb	a,#0x04
      003164 E9               [12]  861 	mov	a,r1
      003165 64 80            [12]  862 	xrl	a,#0x80
      003167 94 80            [12]  863 	subb	a,#0x80
      003169 40 03            [24]  864 	jc	00168$
      00316B 02 32 5D         [24]  865 	ljmp	00110$
      00316E                        866 00168$:
                                    867 ;	syntax.c:138: if (c < '0' || c > '9') {
      00316E 74 D0            [12]  868 	mov	a,#0x100 - 0x30
      003170 25 08            [12]  869 	add	a,_get_buf_value_sloc0_1_0
      003172 50 06            [24]  870 	jnc	00104$
      003174 E5 08            [12]  871 	mov	a,_get_buf_value_sloc0_1_0
      003176 24 C6            [12]  872 	add	a,#0xff - 0x39
      003178 50 5A            [24]  873 	jnc	00105$
      00317A                        874 00104$:
                                    875 ;	syntax.c:139: printf("\n\r| ERROR: Invalid input - Please enter numbers only     |");
      00317A C0 07            [24]  876 	push	ar7
      00317C C0 06            [24]  877 	push	ar6
      00317E 74 26            [12]  878 	mov	a,#___str_1
      003180 C0 E0            [24]  879 	push	acc
      003182 74 56            [12]  880 	mov	a,#(___str_1 >> 8)
      003184 C0 E0            [24]  881 	push	acc
      003186 74 80            [12]  882 	mov	a,#0x80
      003188 C0 E0            [24]  883 	push	acc
      00318A 12 4B AD         [24]  884 	lcall	_printf
      00318D 15 81            [12]  885 	dec	sp
      00318F 15 81            [12]  886 	dec	sp
      003191 15 81            [12]  887 	dec	sp
                                    888 ;	syntax.c:140: printf("\n\r+--------------------------------------------------+\n\r");
      003193 74 61            [12]  889 	mov	a,#___str_2
      003195 C0 E0            [24]  890 	push	acc
      003197 74 56            [12]  891 	mov	a,#(___str_2 >> 8)
      003199 C0 E0            [24]  892 	push	acc
      00319B 74 80            [12]  893 	mov	a,#0x80
      00319D C0 E0            [24]  894 	push	acc
      00319F 12 4B AD         [24]  895 	lcall	_printf
      0031A2 15 81            [12]  896 	dec	sp
      0031A4 15 81            [12]  897 	dec	sp
      0031A6 15 81            [12]  898 	dec	sp
      0031A8 D0 06            [24]  899 	pop	ar6
      0031AA D0 07            [24]  900 	pop	ar7
                                    901 ;	syntax.c:142: while (getchar() != 0x0d);  // Clear input buffer
      0031AC                        902 00101$:
      0031AC C0 06            [24]  903 	push	ar6
      0031AE C0 07            [24]  904 	push	ar7
      0031B0 12 30 AE         [24]  905 	lcall	_getchar
      0031B3 AE 82            [24]  906 	mov	r6,dpl
      0031B5 AF 83            [24]  907 	mov	r7,dph
      0031B7 BE 0D 05         [24]  908 	cjne	r6,#0x0d,00171$
      0031BA BF 00 02         [24]  909 	cjne	r7,#0x00,00171$
      0031BD 80 06            [24]  910 	sjmp	00172$
      0031BF                        911 00171$:
      0031BF D0 07            [24]  912 	pop	ar7
      0031C1 D0 06            [24]  913 	pop	ar6
      0031C3 80 E7            [24]  914 	sjmp	00101$
      0031C5                        915 00172$:
      0031C5 D0 07            [24]  916 	pop	ar7
      0031C7 D0 06            [24]  917 	pop	ar6
                                    918 ;	syntax.c:143: buffer_size = -1;
      0031C9 90 06 64         [24]  919 	mov	dptr,#_get_buf_value_buffer_size_65536_84
      0031CC 74 FF            [12]  920 	mov	a,#0xff
      0031CE F0               [24]  921 	movx	@dptr,a
      0031CF A3               [24]  922 	inc	dptr
      0031D0 F0               [24]  923 	movx	@dptr,a
                                    924 ;	syntax.c:144: break;
      0031D1 02 32 5D         [24]  925 	ljmp	00110$
      0031D4                        926 00105$:
                                    927 ;	syntax.c:147: putchar(c);
      0031D4 C0 06            [24]  928 	push	ar6
      0031D6 C0 07            [24]  929 	push	ar7
      0031D8 AE 08            [24]  930 	mov	r6,_get_buf_value_sloc0_1_0
      0031DA 7F 00            [12]  931 	mov	r7,#0x00
      0031DC 8E 82            [24]  932 	mov	dpl,r6
      0031DE 8F 83            [24]  933 	mov	dph,r7
      0031E0 C0 07            [24]  934 	push	ar7
      0031E2 C0 06            [24]  935 	push	ar6
      0031E4 C0 03            [24]  936 	push	ar3
      0031E6 C0 02            [24]  937 	push	ar2
      0031E8 C0 01            [24]  938 	push	ar1
      0031EA C0 00            [24]  939 	push	ar0
      0031EC 12 30 91         [24]  940 	lcall	_putchar
      0031EF D0 00            [24]  941 	pop	ar0
      0031F1 D0 01            [24]  942 	pop	ar1
      0031F3 D0 02            [24]  943 	pop	ar2
      0031F5 D0 03            [24]  944 	pop	ar3
      0031F7 D0 06            [24]  945 	pop	ar6
      0031F9 D0 07            [24]  946 	pop	ar7
                                    947 ;	syntax.c:148: input[i++] = c;
      0031FB EA               [12]  948 	mov	a,r2
      0031FC 24 66            [12]  949 	add	a,#_get_buf_value_input_65536_84
      0031FE F5 82            [12]  950 	mov	dpl,a
      003200 EB               [12]  951 	mov	a,r3
      003201 34 06            [12]  952 	addc	a,#(_get_buf_value_input_65536_84 >> 8)
      003203 F5 83            [12]  953 	mov	dph,a
      003205 0A               [12]  954 	inc	r2
      003206 BA 00 01         [24]  955 	cjne	r2,#0x00,00173$
      003209 0B               [12]  956 	inc	r3
      00320A                        957 00173$:
      00320A E5 08            [12]  958 	mov	a,_get_buf_value_sloc0_1_0
      00320C F0               [24]  959 	movx	@dptr,a
                                    960 ;	syntax.c:149: digit_count++;
      00320D 08               [12]  961 	inc	r0
      00320E B8 00 01         [24]  962 	cjne	r0,#0x00,00174$
      003211 09               [12]  963 	inc	r1
      003212                        964 00174$:
                                    965 ;	syntax.c:150: buffer_size = buffer_size * 10 + (c - '0');
      003212 90 06 64         [24]  966 	mov	dptr,#_get_buf_value_buffer_size_65536_84
      003215 E0               [24]  967 	movx	a,@dptr
      003216 FC               [12]  968 	mov	r4,a
      003217 A3               [24]  969 	inc	dptr
      003218 E0               [24]  970 	movx	a,@dptr
      003219 FD               [12]  971 	mov	r5,a
      00321A 90 1C 8A         [24]  972 	mov	dptr,#__mulint_PARM_2
      00321D EC               [12]  973 	mov	a,r4
      00321E F0               [24]  974 	movx	@dptr,a
      00321F ED               [12]  975 	mov	a,r5
      003220 A3               [24]  976 	inc	dptr
      003221 F0               [24]  977 	movx	@dptr,a
      003222 90 00 0A         [24]  978 	mov	dptr,#0x000a
      003225 C0 07            [24]  979 	push	ar7
      003227 C0 06            [24]  980 	push	ar6
      003229 C0 03            [24]  981 	push	ar3
      00322B C0 02            [24]  982 	push	ar2
      00322D C0 01            [24]  983 	push	ar1
      00322F C0 00            [24]  984 	push	ar0
      003231 12 49 2C         [24]  985 	lcall	__mulint
      003234 AC 82            [24]  986 	mov	r4,dpl
      003236 AD 83            [24]  987 	mov	r5,dph
      003238 D0 00            [24]  988 	pop	ar0
      00323A D0 01            [24]  989 	pop	ar1
      00323C D0 02            [24]  990 	pop	ar2
      00323E D0 03            [24]  991 	pop	ar3
      003240 D0 06            [24]  992 	pop	ar6
      003242 D0 07            [24]  993 	pop	ar7
      003244 EE               [12]  994 	mov	a,r6
      003245 24 D0            [12]  995 	add	a,#0xd0
      003247 FE               [12]  996 	mov	r6,a
      003248 EF               [12]  997 	mov	a,r7
      003249 34 FF            [12]  998 	addc	a,#0xff
      00324B FF               [12]  999 	mov	r7,a
      00324C 90 06 64         [24] 1000 	mov	dptr,#_get_buf_value_buffer_size_65536_84
      00324F EE               [12] 1001 	mov	a,r6
      003250 2C               [12] 1002 	add	a,r4
      003251 F0               [24] 1003 	movx	@dptr,a
      003252 EF               [12] 1004 	mov	a,r7
      003253 3D               [12] 1005 	addc	a,r5
      003254 A3               [24] 1006 	inc	dptr
      003255 F0               [24] 1007 	movx	@dptr,a
      003256 D0 07            [24] 1008 	pop	ar7
      003258 D0 06            [24] 1009 	pop	ar6
      00325A 02 31 35         [24] 1010 	ljmp	00108$
      00325D                       1011 00110$:
                                   1012 ;	syntax.c:154: if (buffer_size == -1) {
      00325D 90 06 64         [24] 1013 	mov	dptr,#_get_buf_value_buffer_size_65536_84
      003260 E0               [24] 1014 	movx	a,@dptr
      003261 FC               [12] 1015 	mov	r4,a
      003262 A3               [24] 1016 	inc	dptr
      003263 E0               [24] 1017 	movx	a,@dptr
      003264 FD               [12] 1018 	mov	r5,a
      003265 BC FF 06         [24] 1019 	cjne	r4,#0xff,00175$
      003268 BD FF 03         [24] 1020 	cjne	r5,#0xff,00175$
      00326B 02 30 F2         [24] 1021 	ljmp	00117$
      00326E                       1022 00175$:
                                   1023 ;	syntax.c:159: if ((buffer_size % 16) != 0 || (buffer_size < LOWER) || (buffer_size > UPPER)) {
      00326E 90 1C 8C         [24] 1024 	mov	dptr,#__modsint_PARM_2
      003271 74 10            [12] 1025 	mov	a,#0x10
      003273 F0               [24] 1026 	movx	@dptr,a
      003274 E4               [12] 1027 	clr	a
      003275 A3               [24] 1028 	inc	dptr
      003276 F0               [24] 1029 	movx	@dptr,a
      003277 8C 82            [24] 1030 	mov	dpl,r4
      003279 8D 83            [24] 1031 	mov	dph,r5
      00327B C0 07            [24] 1032 	push	ar7
      00327D C0 06            [24] 1033 	push	ar6
      00327F C0 05            [24] 1034 	push	ar5
      003281 C0 04            [24] 1035 	push	ar4
      003283 12 49 4C         [24] 1036 	lcall	__modsint
      003286 E5 82            [12] 1037 	mov	a,dpl
      003288 85 83 F0         [24] 1038 	mov	b,dph
      00328B D0 04            [24] 1039 	pop	ar4
      00328D D0 05            [24] 1040 	pop	ar5
      00328F D0 06            [24] 1041 	pop	ar6
      003291 D0 07            [24] 1042 	pop	ar7
      003293 45 F0            [12] 1043 	orl	a,b
      003295 70 1F            [24] 1044 	jnz	00113$
      003297 C3               [12] 1045 	clr	c
      003298 EC               [12] 1046 	mov	a,r4
      003299 95 09            [12] 1047 	subb	a,_get_buf_value_sloc1_1_0
      00329B ED               [12] 1048 	mov	a,r5
      00329C 64 80            [12] 1049 	xrl	a,#0x80
      00329E 85 0A F0         [24] 1050 	mov	b,(_get_buf_value_sloc1_1_0 + 1)
      0032A1 63 F0 80         [24] 1051 	xrl	b,#0x80
      0032A4 95 F0            [12] 1052 	subb	a,b
      0032A6 40 0E            [24] 1053 	jc	00113$
      0032A8 EE               [12] 1054 	mov	a,r6
      0032A9 9C               [12] 1055 	subb	a,r4
      0032AA EF               [12] 1056 	mov	a,r7
      0032AB 64 80            [12] 1057 	xrl	a,#0x80
      0032AD 8D F0            [24] 1058 	mov	b,r5
      0032AF 63 F0 80         [24] 1059 	xrl	b,#0x80
      0032B2 95 F0            [12] 1060 	subb	a,b
      0032B4 50 6F            [24] 1061 	jnc	00114$
      0032B6                       1062 00113$:
                                   1063 ;	syntax.c:160: printf("\n\r| ERROR: Invalid buffer size                          |");
      0032B6 C0 07            [24] 1064 	push	ar7
      0032B8 C0 06            [24] 1065 	push	ar6
      0032BA 74 9A            [12] 1066 	mov	a,#___str_3
      0032BC C0 E0            [24] 1067 	push	acc
      0032BE 74 56            [12] 1068 	mov	a,#(___str_3 >> 8)
      0032C0 C0 E0            [24] 1069 	push	acc
      0032C2 74 80            [12] 1070 	mov	a,#0x80
      0032C4 C0 E0            [24] 1071 	push	acc
      0032C6 12 4B AD         [24] 1072 	lcall	_printf
      0032C9 15 81            [12] 1073 	dec	sp
      0032CB 15 81            [12] 1074 	dec	sp
      0032CD 15 81            [12] 1075 	dec	sp
      0032CF D0 06            [24] 1076 	pop	ar6
      0032D1 D0 07            [24] 1077 	pop	ar7
                                   1078 ;	syntax.c:161: printf("\n\r| - Must be between %d and %d                       |", LOWER, UPPER);
      0032D3 C0 07            [24] 1079 	push	ar7
      0032D5 C0 06            [24] 1080 	push	ar6
      0032D7 C0 06            [24] 1081 	push	ar6
      0032D9 C0 07            [24] 1082 	push	ar7
      0032DB C0 09            [24] 1083 	push	_get_buf_value_sloc1_1_0
      0032DD C0 0A            [24] 1084 	push	(_get_buf_value_sloc1_1_0 + 1)
      0032DF 74 D4            [12] 1085 	mov	a,#___str_4
      0032E1 C0 E0            [24] 1086 	push	acc
      0032E3 74 56            [12] 1087 	mov	a,#(___str_4 >> 8)
      0032E5 C0 E0            [24] 1088 	push	acc
      0032E7 74 80            [12] 1089 	mov	a,#0x80
      0032E9 C0 E0            [24] 1090 	push	acc
      0032EB 12 4B AD         [24] 1091 	lcall	_printf
      0032EE E5 81            [12] 1092 	mov	a,sp
      0032F0 24 F9            [12] 1093 	add	a,#0xf9
      0032F2 F5 81            [12] 1094 	mov	sp,a
                                   1095 ;	syntax.c:162: printf("\n\r| - Must be multiple of 16                           |");
      0032F4 74 0C            [12] 1096 	mov	a,#___str_5
      0032F6 C0 E0            [24] 1097 	push	acc
      0032F8 74 57            [12] 1098 	mov	a,#(___str_5 >> 8)
      0032FA C0 E0            [24] 1099 	push	acc
      0032FC 74 80            [12] 1100 	mov	a,#0x80
      0032FE C0 E0            [24] 1101 	push	acc
      003300 12 4B AD         [24] 1102 	lcall	_printf
      003303 15 81            [12] 1103 	dec	sp
      003305 15 81            [12] 1104 	dec	sp
      003307 15 81            [12] 1105 	dec	sp
                                   1106 ;	syntax.c:163: printf("\n\r+--------------------------------------------------+\n\r");
      003309 74 61            [12] 1107 	mov	a,#___str_2
      00330B C0 E0            [24] 1108 	push	acc
      00330D 74 56            [12] 1109 	mov	a,#(___str_2 >> 8)
      00330F C0 E0            [24] 1110 	push	acc
      003311 74 80            [12] 1111 	mov	a,#0x80
      003313 C0 E0            [24] 1112 	push	acc
      003315 12 4B AD         [24] 1113 	lcall	_printf
      003318 15 81            [12] 1114 	dec	sp
      00331A 15 81            [12] 1115 	dec	sp
      00331C 15 81            [12] 1116 	dec	sp
      00331E D0 06            [24] 1117 	pop	ar6
      003320 D0 07            [24] 1118 	pop	ar7
                                   1119 ;	syntax.c:164: continue;
      003322 02 30 F2         [24] 1120 	ljmp	00117$
      003325                       1121 00114$:
                                   1122 ;	syntax.c:166: printf("\n\r| Input size: %-39d |", buffer_size);
      003325 C0 07            [24] 1123 	push	ar7
      003327 C0 06            [24] 1124 	push	ar6
      003329 C0 04            [24] 1125 	push	ar4
      00332B C0 05            [24] 1126 	push	ar5
      00332D 74 45            [12] 1127 	mov	a,#___str_6
      00332F C0 E0            [24] 1128 	push	acc
      003331 74 57            [12] 1129 	mov	a,#(___str_6 >> 8)
      003333 C0 E0            [24] 1130 	push	acc
      003335 74 80            [12] 1131 	mov	a,#0x80
      003337 C0 E0            [24] 1132 	push	acc
      003339 12 4B AD         [24] 1133 	lcall	_printf
      00333C E5 81            [12] 1134 	mov	a,sp
      00333E 24 FB            [12] 1135 	add	a,#0xfb
      003340 F5 81            [12] 1136 	mov	sp,a
                                   1137 ;	syntax.c:167: printf("\n\r+--------------------------------------------------+\n\r");
      003342 74 61            [12] 1138 	mov	a,#___str_2
      003344 C0 E0            [24] 1139 	push	acc
      003346 74 56            [12] 1140 	mov	a,#(___str_2 >> 8)
      003348 C0 E0            [24] 1141 	push	acc
      00334A 74 80            [12] 1142 	mov	a,#0x80
      00334C C0 E0            [24] 1143 	push	acc
      00334E 12 4B AD         [24] 1144 	lcall	_printf
      003351 15 81            [12] 1145 	dec	sp
      003353 15 81            [12] 1146 	dec	sp
      003355 15 81            [12] 1147 	dec	sp
      003357 D0 06            [24] 1148 	pop	ar6
      003359 D0 07            [24] 1149 	pop	ar7
                                   1150 ;	syntax.c:168: valid_input = 1;
      00335B 90 06 6B         [24] 1151 	mov	dptr,#_get_buf_value_valid_input_65536_84
      00335E 74 01            [12] 1152 	mov	a,#0x01
      003360 F0               [24] 1153 	movx	@dptr,a
      003361 E4               [12] 1154 	clr	a
      003362 A3               [24] 1155 	inc	dptr
      003363 F0               [24] 1156 	movx	@dptr,a
      003364 02 30 F2         [24] 1157 	ljmp	00117$
      003367                       1158 00119$:
                                   1159 ;	syntax.c:171: return buffer_size;
      003367 90 06 64         [24] 1160 	mov	dptr,#_get_buf_value_buffer_size_65536_84
      00336A E0               [24] 1161 	movx	a,@dptr
      00336B FE               [12] 1162 	mov	r6,a
      00336C A3               [24] 1163 	inc	dptr
      00336D E0               [24] 1164 	movx	a,@dptr
                                   1165 ;	syntax.c:172: }
      00336E 8E 82            [24] 1166 	mov	dpl,r6
      003370 F5 83            [12] 1167 	mov	dph,a
      003372 22               [24] 1168 	ret
                                   1169 ;------------------------------------------------------------
                                   1170 ;Allocation info for local variables in function 'print_prompt'
                                   1171 ;------------------------------------------------------------
                                   1172 ;string                    Allocated with name '_print_prompt_string_65536_91'
                                   1173 ;------------------------------------------------------------
                                   1174 ;	syntax.c:180: void print_prompt(const char * string){
                                   1175 ;	-----------------------------------------
                                   1176 ;	 function print_prompt
                                   1177 ;	-----------------------------------------
      003373                       1178 _print_prompt:
      003373 AF F0            [24] 1179 	mov	r7,b
      003375 AE 83            [24] 1180 	mov	r6,dph
      003377 E5 82            [12] 1181 	mov	a,dpl
      003379 90 06 6D         [24] 1182 	mov	dptr,#_print_prompt_string_65536_91
      00337C F0               [24] 1183 	movx	@dptr,a
      00337D EE               [12] 1184 	mov	a,r6
      00337E A3               [24] 1185 	inc	dptr
      00337F F0               [24] 1186 	movx	@dptr,a
      003380 EF               [12] 1187 	mov	a,r7
      003381 A3               [24] 1188 	inc	dptr
      003382 F0               [24] 1189 	movx	@dptr,a
                                   1190 ;	syntax.c:181: while(*string != '\0'){
      003383 90 06 6D         [24] 1191 	mov	dptr,#_print_prompt_string_65536_91
      003386 E0               [24] 1192 	movx	a,@dptr
      003387 FD               [12] 1193 	mov	r5,a
      003388 A3               [24] 1194 	inc	dptr
      003389 E0               [24] 1195 	movx	a,@dptr
      00338A FE               [12] 1196 	mov	r6,a
      00338B A3               [24] 1197 	inc	dptr
      00338C E0               [24] 1198 	movx	a,@dptr
      00338D FF               [12] 1199 	mov	r7,a
      00338E                       1200 00101$:
      00338E 8D 82            [24] 1201 	mov	dpl,r5
      003390 8E 83            [24] 1202 	mov	dph,r6
      003392 8F F0            [24] 1203 	mov	b,r7
      003394 12 55 CF         [24] 1204 	lcall	__gptrget
      003397 FC               [12] 1205 	mov	r4,a
      003398 60 27            [24] 1206 	jz	00108$
                                   1207 ;	syntax.c:182: putchar(*string);
      00339A 7B 00            [12] 1208 	mov	r3,#0x00
      00339C 8C 82            [24] 1209 	mov	dpl,r4
      00339E 8B 83            [24] 1210 	mov	dph,r3
      0033A0 C0 07            [24] 1211 	push	ar7
      0033A2 C0 06            [24] 1212 	push	ar6
      0033A4 C0 05            [24] 1213 	push	ar5
      0033A6 12 30 91         [24] 1214 	lcall	_putchar
      0033A9 D0 05            [24] 1215 	pop	ar5
      0033AB D0 06            [24] 1216 	pop	ar6
      0033AD D0 07            [24] 1217 	pop	ar7
                                   1218 ;	syntax.c:183: string++;
      0033AF 0D               [12] 1219 	inc	r5
      0033B0 BD 00 01         [24] 1220 	cjne	r5,#0x00,00116$
      0033B3 0E               [12] 1221 	inc	r6
      0033B4                       1222 00116$:
      0033B4 90 06 6D         [24] 1223 	mov	dptr,#_print_prompt_string_65536_91
      0033B7 ED               [12] 1224 	mov	a,r5
      0033B8 F0               [24] 1225 	movx	@dptr,a
      0033B9 EE               [12] 1226 	mov	a,r6
      0033BA A3               [24] 1227 	inc	dptr
      0033BB F0               [24] 1228 	movx	@dptr,a
      0033BC EF               [12] 1229 	mov	a,r7
      0033BD A3               [24] 1230 	inc	dptr
      0033BE F0               [24] 1231 	movx	@dptr,a
      0033BF 80 CD            [24] 1232 	sjmp	00101$
      0033C1                       1233 00108$:
      0033C1 90 06 6D         [24] 1234 	mov	dptr,#_print_prompt_string_65536_91
      0033C4 ED               [12] 1235 	mov	a,r5
      0033C5 F0               [24] 1236 	movx	@dptr,a
      0033C6 EE               [12] 1237 	mov	a,r6
      0033C7 A3               [24] 1238 	inc	dptr
      0033C8 F0               [24] 1239 	movx	@dptr,a
      0033C9 EF               [12] 1240 	mov	a,r7
      0033CA A3               [24] 1241 	inc	dptr
      0033CB F0               [24] 1242 	movx	@dptr,a
                                   1243 ;	syntax.c:185: }
      0033CC 22               [24] 1244 	ret
                                   1245 ;------------------------------------------------------------
                                   1246 ;Allocation info for local variables in function 'get_number'
                                   1247 ;------------------------------------------------------------
                                   1248 ;prompt                    Allocated with name '_get_number_prompt_65536_94'
                                   1249 ;buffer_size               Allocated with name '_get_number_buffer_size_65536_95'
                                   1250 ;c                         Allocated with name '_get_number_c_65536_95'
                                   1251 ;index                     Allocated with name '_get_number_index_65536_95'
                                   1252 ;------------------------------------------------------------
                                   1253 ;	syntax.c:193: int get_number(const char* prompt)
                                   1254 ;	-----------------------------------------
                                   1255 ;	 function get_number
                                   1256 ;	-----------------------------------------
      0033CD                       1257 _get_number:
      0033CD AF F0            [24] 1258 	mov	r7,b
      0033CF AE 83            [24] 1259 	mov	r6,dph
      0033D1 E5 82            [12] 1260 	mov	a,dpl
      0033D3 90 06 70         [24] 1261 	mov	dptr,#_get_number_prompt_65536_94
      0033D6 F0               [24] 1262 	movx	@dptr,a
      0033D7 EE               [12] 1263 	mov	a,r6
      0033D8 A3               [24] 1264 	inc	dptr
      0033D9 F0               [24] 1265 	movx	@dptr,a
      0033DA EF               [12] 1266 	mov	a,r7
      0033DB A3               [24] 1267 	inc	dptr
      0033DC F0               [24] 1268 	movx	@dptr,a
                                   1269 ;	syntax.c:195: int buffer_size = 0;
      0033DD 90 06 73         [24] 1270 	mov	dptr,#_get_number_buffer_size_65536_95
      0033E0 E4               [12] 1271 	clr	a
      0033E1 F0               [24] 1272 	movx	@dptr,a
      0033E2 A3               [24] 1273 	inc	dptr
      0033E3 F0               [24] 1274 	movx	@dptr,a
                                   1275 ;	syntax.c:197: int index = 100;            // Start with highest place value for 3 digits
      0033E4 90 06 75         [24] 1276 	mov	dptr,#_get_number_index_65536_95
      0033E7 74 64            [12] 1277 	mov	a,#0x64
      0033E9 F0               [24] 1278 	movx	@dptr,a
      0033EA E4               [12] 1279 	clr	a
      0033EB A3               [24] 1280 	inc	dptr
      0033EC F0               [24] 1281 	movx	@dptr,a
                                   1282 ;	syntax.c:199: print_prompt("\n\r+--------------------------------------------------+");
      0033ED 90 55 EF         [24] 1283 	mov	dptr,#___str_0
      0033F0 75 F0 80         [24] 1284 	mov	b,#0x80
      0033F3 12 33 73         [24] 1285 	lcall	_print_prompt
                                   1286 ;	syntax.c:200: print_prompt(prompt);
      0033F6 90 06 70         [24] 1287 	mov	dptr,#_get_number_prompt_65536_94
      0033F9 E0               [24] 1288 	movx	a,@dptr
      0033FA FD               [12] 1289 	mov	r5,a
      0033FB A3               [24] 1290 	inc	dptr
      0033FC E0               [24] 1291 	movx	a,@dptr
      0033FD FE               [12] 1292 	mov	r6,a
      0033FE A3               [24] 1293 	inc	dptr
      0033FF E0               [24] 1294 	movx	a,@dptr
      003400 FF               [12] 1295 	mov	r7,a
      003401 8D 82            [24] 1296 	mov	dpl,r5
      003403 8E 83            [24] 1297 	mov	dph,r6
      003405 8F F0            [24] 1298 	mov	b,r7
      003407 12 33 73         [24] 1299 	lcall	_print_prompt
                                   1300 ;	syntax.c:202: while (index >= 1 && (c = getchar()) != 0x0d) {
      00340A                       1301 00105$:
      00340A 90 06 75         [24] 1302 	mov	dptr,#_get_number_index_65536_95
      00340D E0               [24] 1303 	movx	a,@dptr
      00340E FE               [12] 1304 	mov	r6,a
      00340F A3               [24] 1305 	inc	dptr
      003410 E0               [24] 1306 	movx	a,@dptr
      003411 FF               [12] 1307 	mov	r7,a
      003412 C3               [12] 1308 	clr	c
      003413 EE               [12] 1309 	mov	a,r6
      003414 94 01            [12] 1310 	subb	a,#0x01
      003416 EF               [12] 1311 	mov	a,r7
      003417 64 80            [12] 1312 	xrl	a,#0x80
      003419 94 80            [12] 1313 	subb	a,#0x80
      00341B 50 03            [24] 1314 	jnc	00126$
      00341D 02 34 DB         [24] 1315 	ljmp	00107$
      003420                       1316 00126$:
      003420 C0 07            [24] 1317 	push	ar7
      003422 C0 06            [24] 1318 	push	ar6
      003424 12 30 AE         [24] 1319 	lcall	_getchar
      003427 AC 82            [24] 1320 	mov	r4,dpl
      003429 AD 83            [24] 1321 	mov	r5,dph
      00342B D0 06            [24] 1322 	pop	ar6
      00342D D0 07            [24] 1323 	pop	ar7
      00342F BC 0D 03         [24] 1324 	cjne	r4,#0x0d,00127$
      003432 02 34 DB         [24] 1325 	ljmp	00107$
      003435                       1326 00127$:
                                   1327 ;	syntax.c:203: if (c < '0' || c > '9') {
      003435 BC 30 00         [24] 1328 	cjne	r4,#0x30,00128$
      003438                       1329 00128$:
      003438 40 05            [24] 1330 	jc	00101$
      00343A EC               [12] 1331 	mov	a,r4
      00343B 24 C6            [12] 1332 	add	a,#0xff - 0x39
      00343D 50 2E            [24] 1333 	jnc	00102$
      00343F                       1334 00101$:
                                   1335 ;	syntax.c:204: printf("\n\r| ERROR: Invalid input - Please enter numbers only     |");
      00343F 74 26            [12] 1336 	mov	a,#___str_1
      003441 C0 E0            [24] 1337 	push	acc
      003443 74 56            [12] 1338 	mov	a,#(___str_1 >> 8)
      003445 C0 E0            [24] 1339 	push	acc
      003447 74 80            [12] 1340 	mov	a,#0x80
      003449 C0 E0            [24] 1341 	push	acc
      00344B 12 4B AD         [24] 1342 	lcall	_printf
      00344E 15 81            [12] 1343 	dec	sp
      003450 15 81            [12] 1344 	dec	sp
      003452 15 81            [12] 1345 	dec	sp
                                   1346 ;	syntax.c:205: printf("\n\r+--------------------------------------------------+\n\r");
      003454 74 61            [12] 1347 	mov	a,#___str_2
      003456 C0 E0            [24] 1348 	push	acc
      003458 74 56            [12] 1349 	mov	a,#(___str_2 >> 8)
      00345A C0 E0            [24] 1350 	push	acc
      00345C 74 80            [12] 1351 	mov	a,#0x80
      00345E C0 E0            [24] 1352 	push	acc
      003460 12 4B AD         [24] 1353 	lcall	_printf
      003463 15 81            [12] 1354 	dec	sp
      003465 15 81            [12] 1355 	dec	sp
      003467 15 81            [12] 1356 	dec	sp
                                   1357 ;	syntax.c:206: return -1;
      003469 90 FF FF         [24] 1358 	mov	dptr,#0xffff
      00346C 22               [24] 1359 	ret
      00346D                       1360 00102$:
                                   1361 ;	syntax.c:209: putchar(c);
      00346D 7D 00            [12] 1362 	mov	r5,#0x00
      00346F 8C 82            [24] 1363 	mov	dpl,r4
      003471 8D 83            [24] 1364 	mov	dph,r5
      003473 C0 07            [24] 1365 	push	ar7
      003475 C0 06            [24] 1366 	push	ar6
      003477 C0 05            [24] 1367 	push	ar5
      003479 C0 04            [24] 1368 	push	ar4
      00347B 12 30 91         [24] 1369 	lcall	_putchar
      00347E D0 04            [24] 1370 	pop	ar4
      003480 D0 05            [24] 1371 	pop	ar5
      003482 D0 06            [24] 1372 	pop	ar6
      003484 D0 07            [24] 1373 	pop	ar7
                                   1374 ;	syntax.c:210: buffer_size += (c - '0') * index;
      003486 EC               [12] 1375 	mov	a,r4
      003487 24 D0            [12] 1376 	add	a,#0xd0
      003489 FC               [12] 1377 	mov	r4,a
      00348A ED               [12] 1378 	mov	a,r5
      00348B 34 FF            [12] 1379 	addc	a,#0xff
      00348D FD               [12] 1380 	mov	r5,a
      00348E 90 1C 8A         [24] 1381 	mov	dptr,#__mulint_PARM_2
      003491 EE               [12] 1382 	mov	a,r6
      003492 F0               [24] 1383 	movx	@dptr,a
      003493 EF               [12] 1384 	mov	a,r7
      003494 A3               [24] 1385 	inc	dptr
      003495 F0               [24] 1386 	movx	@dptr,a
      003496 8C 82            [24] 1387 	mov	dpl,r4
      003498 8D 83            [24] 1388 	mov	dph,r5
      00349A C0 07            [24] 1389 	push	ar7
      00349C C0 06            [24] 1390 	push	ar6
      00349E 12 49 2C         [24] 1391 	lcall	__mulint
      0034A1 AC 82            [24] 1392 	mov	r4,dpl
      0034A3 AD 83            [24] 1393 	mov	r5,dph
      0034A5 D0 06            [24] 1394 	pop	ar6
      0034A7 D0 07            [24] 1395 	pop	ar7
      0034A9 90 06 73         [24] 1396 	mov	dptr,#_get_number_buffer_size_65536_95
      0034AC E0               [24] 1397 	movx	a,@dptr
      0034AD FA               [12] 1398 	mov	r2,a
      0034AE A3               [24] 1399 	inc	dptr
      0034AF E0               [24] 1400 	movx	a,@dptr
      0034B0 FB               [12] 1401 	mov	r3,a
      0034B1 90 06 73         [24] 1402 	mov	dptr,#_get_number_buffer_size_65536_95
      0034B4 EC               [12] 1403 	mov	a,r4
      0034B5 2A               [12] 1404 	add	a,r2
      0034B6 F0               [24] 1405 	movx	@dptr,a
      0034B7 ED               [12] 1406 	mov	a,r5
      0034B8 3B               [12] 1407 	addc	a,r3
      0034B9 A3               [24] 1408 	inc	dptr
      0034BA F0               [24] 1409 	movx	@dptr,a
                                   1410 ;	syntax.c:211: index = index/10;
      0034BB 90 1C 95         [24] 1411 	mov	dptr,#__divsint_PARM_2
      0034BE 74 0A            [12] 1412 	mov	a,#0x0a
      0034C0 F0               [24] 1413 	movx	@dptr,a
      0034C1 E4               [12] 1414 	clr	a
      0034C2 A3               [24] 1415 	inc	dptr
      0034C3 F0               [24] 1416 	movx	@dptr,a
      0034C4 8E 82            [24] 1417 	mov	dpl,r6
      0034C6 8F 83            [24] 1418 	mov	dph,r7
      0034C8 12 4A 60         [24] 1419 	lcall	__divsint
      0034CB E5 82            [12] 1420 	mov	a,dpl
      0034CD 85 83 F0         [24] 1421 	mov	b,dph
      0034D0 90 06 75         [24] 1422 	mov	dptr,#_get_number_index_65536_95
      0034D3 F0               [24] 1423 	movx	@dptr,a
      0034D4 E5 F0            [12] 1424 	mov	a,b
      0034D6 A3               [24] 1425 	inc	dptr
      0034D7 F0               [24] 1426 	movx	@dptr,a
      0034D8 02 34 0A         [24] 1427 	ljmp	00105$
      0034DB                       1428 00107$:
                                   1429 ;	syntax.c:214: printf("\n\r| Input size: %-39d |", buffer_size);
      0034DB 90 06 73         [24] 1430 	mov	dptr,#_get_number_buffer_size_65536_95
      0034DE E0               [24] 1431 	movx	a,@dptr
      0034DF FE               [12] 1432 	mov	r6,a
      0034E0 A3               [24] 1433 	inc	dptr
      0034E1 E0               [24] 1434 	movx	a,@dptr
      0034E2 FF               [12] 1435 	mov	r7,a
      0034E3 C0 07            [24] 1436 	push	ar7
      0034E5 C0 06            [24] 1437 	push	ar6
      0034E7 C0 06            [24] 1438 	push	ar6
      0034E9 C0 07            [24] 1439 	push	ar7
      0034EB 74 45            [12] 1440 	mov	a,#___str_6
      0034ED C0 E0            [24] 1441 	push	acc
      0034EF 74 57            [12] 1442 	mov	a,#(___str_6 >> 8)
      0034F1 C0 E0            [24] 1443 	push	acc
      0034F3 74 80            [12] 1444 	mov	a,#0x80
      0034F5 C0 E0            [24] 1445 	push	acc
      0034F7 12 4B AD         [24] 1446 	lcall	_printf
      0034FA E5 81            [12] 1447 	mov	a,sp
      0034FC 24 FB            [12] 1448 	add	a,#0xfb
      0034FE F5 81            [12] 1449 	mov	sp,a
                                   1450 ;	syntax.c:215: printf("\n\r+--------------------------------------------------+\n\r");
      003500 74 61            [12] 1451 	mov	a,#___str_2
      003502 C0 E0            [24] 1452 	push	acc
      003504 74 56            [12] 1453 	mov	a,#(___str_2 >> 8)
      003506 C0 E0            [24] 1454 	push	acc
      003508 74 80            [12] 1455 	mov	a,#0x80
      00350A C0 E0            [24] 1456 	push	acc
      00350C 12 4B AD         [24] 1457 	lcall	_printf
      00350F 15 81            [12] 1458 	dec	sp
      003511 15 81            [12] 1459 	dec	sp
      003513 15 81            [12] 1460 	dec	sp
      003515 D0 06            [24] 1461 	pop	ar6
      003517 D0 07            [24] 1462 	pop	ar7
                                   1463 ;	syntax.c:217: return buffer_size;
      003519 8E 82            [24] 1464 	mov	dpl,r6
      00351B 8F 83            [24] 1465 	mov	dph,r7
                                   1466 ;	syntax.c:218: }
      00351D 22               [24] 1467 	ret
                                   1468 ;------------------------------------------------------------
                                   1469 ;Allocation info for local variables in function 'get_command'
                                   1470 ;------------------------------------------------------------
                                   1471 ;sloc0                     Allocated with name '_get_command_sloc0_1_0'
                                   1472 ;sloc1                     Allocated with name '_get_command_sloc1_1_0'
                                   1473 ;sloc2                     Allocated with name '_get_command_sloc2_1_0'
                                   1474 ;command                   Allocated with name '_get_command_command_65536_98'
                                   1475 ;temp_value                Allocated with name '_get_command_temp_value_65536_99'
                                   1476 ;pointer                   Allocated with name '_get_command_pointer_65536_99'
                                   1477 ;array_index_temp          Allocated with name '_get_command_array_index_temp_65536_99'
                                   1478 ;total_buffers             Allocated with name '_get_command_total_buffers_196609_102'
                                   1479 ;buffers_freed             Allocated with name '_get_command_buffers_freed_196609_102'
                                   1480 ;failed_frees              Allocated with name '_get_command_failed_frees_196609_102'
                                   1481 ;i                         Allocated with name '_get_command_i_262145_103'
                                   1482 ;i                         Allocated with name '_get_command_i_262145_106'
                                   1483 ;i                         Allocated with name '_get_command_i_196608_111'
                                   1484 ;buffer_size               Allocated with name '_get_command_buffer_size_131073_115'
                                   1485 ;node                      Allocated with name '_get_command_node_196610_120'
                                   1486 ;------------------------------------------------------------
                                   1487 ;	syntax.c:227: int get_command(int command)
                                   1488 ;	-----------------------------------------
                                   1489 ;	 function get_command
                                   1490 ;	-----------------------------------------
      00351E                       1491 _get_command:
      00351E AF 83            [24] 1492 	mov	r7,dph
      003520 E5 82            [12] 1493 	mov	a,dpl
      003522 90 06 77         [24] 1494 	mov	dptr,#_get_command_command_65536_98
      003525 F0               [24] 1495 	movx	@dptr,a
      003526 EF               [12] 1496 	mov	a,r7
      003527 A3               [24] 1497 	inc	dptr
      003528 F0               [24] 1498 	movx	@dptr,a
                                   1499 ;	syntax.c:233: switch(command)
      003529 90 06 77         [24] 1500 	mov	dptr,#_get_command_command_65536_98
      00352C E0               [24] 1501 	movx	a,@dptr
      00352D FE               [12] 1502 	mov	r6,a
      00352E A3               [24] 1503 	inc	dptr
      00352F E0               [24] 1504 	movx	a,@dptr
      003530 FF               [12] 1505 	mov	r7,a
      003531 BE 2B 06         [24] 1506 	cjne	r6,#0x2b,00225$
      003534 BF 00 03         [24] 1507 	cjne	r7,#0x00,00225$
      003537 02 3B 16         [24] 1508 	ljmp	00117$
      00353A                       1509 00225$:
      00353A BE 2D 06         [24] 1510 	cjne	r6,#0x2d,00226$
      00353D BF 00 03         [24] 1511 	cjne	r7,#0x00,00226$
      003540 02 3C 8C         [24] 1512 	ljmp	00125$
      003543                       1513 00226$:
      003543 BE 3D 06         [24] 1514 	cjne	r6,#0x3d,00227$
      003546 BF 00 03         [24] 1515 	cjne	r7,#0x00,00227$
      003549 02 3D 81         [24] 1516 	ljmp	00132$
      00354C                       1517 00227$:
      00354C BE 3F 06         [24] 1518 	cjne	r6,#0x3f,00228$
      00354F BF 00 03         [24] 1519 	cjne	r7,#0x00,00228$
      003552 02 36 C5         [24] 1520 	ljmp	00111$
      003555                       1521 00228$:
      003555 BE 40 05         [24] 1522 	cjne	r6,#0x40,00229$
      003558 BF 00 02         [24] 1523 	cjne	r7,#0x00,00229$
      00355B 80 03            [24] 1524 	sjmp	00230$
      00355D                       1525 00229$:
      00355D 02 3D 90         [24] 1526 	ljmp	00133$
      003560                       1527 00230$:
                                   1528 ;	syntax.c:237: DEBUGPORT(0x05);
      003560 90 04 00         [24] 1529 	mov	dptr,#_dataout_PARM_2
      003563 74 05            [12] 1530 	mov	a,#0x05
      003565 F0               [24] 1531 	movx	@dptr,a
      003566 90 FE FE         [24] 1532 	mov	dptr,#0xfefe
      003569 12 30 68         [24] 1533 	lcall	_dataout
                                   1534 ;	syntax.c:242: printf("\n\r| BUFFER DEALLOCATION STATUS                      |");
      00356C 74 5D            [12] 1535 	mov	a,#___str_7
      00356E C0 E0            [24] 1536 	push	acc
      003570 74 57            [12] 1537 	mov	a,#(___str_7 >> 8)
      003572 C0 E0            [24] 1538 	push	acc
      003574 74 80            [12] 1539 	mov	a,#0x80
      003576 C0 E0            [24] 1540 	push	acc
      003578 12 4B AD         [24] 1541 	lcall	_printf
      00357B 15 81            [12] 1542 	dec	sp
      00357D 15 81            [12] 1543 	dec	sp
      00357F 15 81            [12] 1544 	dec	sp
                                   1545 ;	syntax.c:243: printf("\n\r|------------------------------------------------|");
      003581 74 93            [12] 1546 	mov	a,#___str_8
      003583 C0 E0            [24] 1547 	push	acc
      003585 74 57            [12] 1548 	mov	a,#(___str_8 >> 8)
      003587 C0 E0            [24] 1549 	push	acc
      003589 74 80            [12] 1550 	mov	a,#0x80
      00358B C0 E0            [24] 1551 	push	acc
      00358D 12 4B AD         [24] 1552 	lcall	_printf
      003590 15 81            [12] 1553 	dec	sp
      003592 15 81            [12] 1554 	dec	sp
      003594 15 81            [12] 1555 	dec	sp
                                   1556 ;	syntax.c:246: for(int i = 0; i < 100; i++) 
      003596 E4               [12] 1557 	clr	a
      003597 F5 0B            [12] 1558 	mov	_get_command_sloc0_1_0,a
      003599 F5 0C            [12] 1559 	mov	(_get_command_sloc0_1_0 + 1),a
      00359B FC               [12] 1560 	mov	r4,a
      00359C FD               [12] 1561 	mov	r5,a
      00359D                       1562 00135$:
      00359D C3               [12] 1563 	clr	c
      00359E EC               [12] 1564 	mov	a,r4
      00359F 94 64            [12] 1565 	subb	a,#0x64
      0035A1 ED               [12] 1566 	mov	a,r5
      0035A2 64 80            [12] 1567 	xrl	a,#0x80
      0035A4 94 80            [12] 1568 	subb	a,#0x80
      0035A6 50 41            [24] 1569 	jnc	00104$
                                   1570 ;	syntax.c:248: if(array_for_nodes[i].data_pointer != NULL)
      0035A8 90 1C 8A         [24] 1571 	mov	dptr,#__mulint_PARM_2
      0035AB EC               [12] 1572 	mov	a,r4
      0035AC F0               [24] 1573 	movx	@dptr,a
      0035AD ED               [12] 1574 	mov	a,r5
      0035AE A3               [24] 1575 	inc	dptr
      0035AF F0               [24] 1576 	movx	@dptr,a
      0035B0 90 00 06         [24] 1577 	mov	dptr,#0x0006
      0035B3 C0 05            [24] 1578 	push	ar5
      0035B5 C0 04            [24] 1579 	push	ar4
      0035B7 12 49 2C         [24] 1580 	lcall	__mulint
      0035BA AA 82            [24] 1581 	mov	r2,dpl
      0035BC AB 83            [24] 1582 	mov	r3,dph
      0035BE D0 04            [24] 1583 	pop	ar4
      0035C0 D0 05            [24] 1584 	pop	ar5
      0035C2 EA               [12] 1585 	mov	a,r2
      0035C3 24 03            [12] 1586 	add	a,#_array_for_nodes
      0035C5 FA               [12] 1587 	mov	r2,a
      0035C6 EB               [12] 1588 	mov	a,r3
      0035C7 34 04            [12] 1589 	addc	a,#(_array_for_nodes >> 8)
      0035C9 FB               [12] 1590 	mov	r3,a
      0035CA 8A 82            [24] 1591 	mov	dpl,r2
      0035CC 8B 83            [24] 1592 	mov	dph,r3
      0035CE A3               [24] 1593 	inc	dptr
      0035CF E0               [24] 1594 	movx	a,@dptr
      0035D0 FA               [12] 1595 	mov	r2,a
      0035D1 A3               [24] 1596 	inc	dptr
      0035D2 E0               [24] 1597 	movx	a,@dptr
      0035D3 FB               [12] 1598 	mov	r3,a
      0035D4 A3               [24] 1599 	inc	dptr
      0035D5 E0               [24] 1600 	movx	a,@dptr
      0035D6 EA               [12] 1601 	mov	a,r2
      0035D7 4B               [12] 1602 	orl	a,r3
      0035D8 60 08            [24] 1603 	jz	00136$
                                   1604 ;	syntax.c:250: total_buffers++;
      0035DA 05 0B            [12] 1605 	inc	_get_command_sloc0_1_0
      0035DC E4               [12] 1606 	clr	a
      0035DD B5 0B 02         [24] 1607 	cjne	a,_get_command_sloc0_1_0,00233$
      0035E0 05 0C            [12] 1608 	inc	(_get_command_sloc0_1_0 + 1)
      0035E2                       1609 00233$:
      0035E2                       1610 00136$:
                                   1611 ;	syntax.c:246: for(int i = 0; i < 100; i++) 
      0035E2 0C               [12] 1612 	inc	r4
      0035E3 BC 00 B7         [24] 1613 	cjne	r4,#0x00,00135$
      0035E6 0D               [12] 1614 	inc	r5
      0035E7 80 B4            [24] 1615 	sjmp	00135$
      0035E9                       1616 00104$:
                                   1617 ;	syntax.c:254: printf("\n\r| Buffers to Free  | %-28d |", total_buffers);
      0035E9 C0 0B            [24] 1618 	push	_get_command_sloc0_1_0
      0035EB C0 0C            [24] 1619 	push	(_get_command_sloc0_1_0 + 1)
      0035ED 74 C8            [12] 1620 	mov	a,#___str_9
      0035EF C0 E0            [24] 1621 	push	acc
      0035F1 74 57            [12] 1622 	mov	a,#(___str_9 >> 8)
      0035F3 C0 E0            [24] 1623 	push	acc
      0035F5 74 80            [12] 1624 	mov	a,#0x80
      0035F7 C0 E0            [24] 1625 	push	acc
      0035F9 12 4B AD         [24] 1626 	lcall	_printf
      0035FC E5 81            [12] 1627 	mov	a,sp
      0035FE 24 FB            [12] 1628 	add	a,#0xfb
      003600 F5 81            [12] 1629 	mov	sp,a
                                   1630 ;	syntax.c:257: for(int i = 0; i < 100; i++) 
      003602 7E 00            [12] 1631 	mov	r6,#0x00
      003604 7F 00            [12] 1632 	mov	r7,#0x00
      003606                       1633 00138$:
      003606 C3               [12] 1634 	clr	c
      003607 EE               [12] 1635 	mov	a,r6
      003608 94 64            [12] 1636 	subb	a,#0x64
      00360A EF               [12] 1637 	mov	a,r7
      00360B 64 80            [12] 1638 	xrl	a,#0x80
      00360D 94 80            [12] 1639 	subb	a,#0x80
      00360F 50 75            [24] 1640 	jnc	00107$
                                   1641 ;	syntax.c:259: if(array_for_nodes[i].data_pointer != NULL) 
      003611 90 1C 8A         [24] 1642 	mov	dptr,#__mulint_PARM_2
      003614 EE               [12] 1643 	mov	a,r6
      003615 F0               [24] 1644 	movx	@dptr,a
      003616 EF               [12] 1645 	mov	a,r7
      003617 A3               [24] 1646 	inc	dptr
      003618 F0               [24] 1647 	movx	@dptr,a
      003619 90 00 06         [24] 1648 	mov	dptr,#0x0006
      00361C C0 07            [24] 1649 	push	ar7
      00361E C0 06            [24] 1650 	push	ar6
      003620 12 49 2C         [24] 1651 	lcall	__mulint
      003623 AC 82            [24] 1652 	mov	r4,dpl
      003625 AD 83            [24] 1653 	mov	r5,dph
      003627 D0 06            [24] 1654 	pop	ar6
      003629 D0 07            [24] 1655 	pop	ar7
      00362B EC               [12] 1656 	mov	a,r4
      00362C 24 03            [12] 1657 	add	a,#_array_for_nodes
      00362E FC               [12] 1658 	mov	r4,a
      00362F ED               [12] 1659 	mov	a,r5
      003630 34 04            [12] 1660 	addc	a,#(_array_for_nodes >> 8)
      003632 FD               [12] 1661 	mov	r5,a
      003633 0C               [12] 1662 	inc	r4
      003634 BC 00 01         [24] 1663 	cjne	r4,#0x00,00236$
      003637 0D               [12] 1664 	inc	r5
      003638                       1665 00236$:
      003638 8C 82            [24] 1666 	mov	dpl,r4
      00363A 8D 83            [24] 1667 	mov	dph,r5
      00363C E0               [24] 1668 	movx	a,@dptr
      00363D F5 0D            [12] 1669 	mov	_get_command_sloc1_1_0,a
      00363F A3               [24] 1670 	inc	dptr
      003640 E0               [24] 1671 	movx	a,@dptr
      003641 F5 0E            [12] 1672 	mov	(_get_command_sloc1_1_0 + 1),a
      003643 A3               [24] 1673 	inc	dptr
      003644 E0               [24] 1674 	movx	a,@dptr
      003645 F5 0F            [12] 1675 	mov	(_get_command_sloc1_1_0 + 2),a
      003647 E5 0D            [12] 1676 	mov	a,_get_command_sloc1_1_0
      003649 45 0E            [12] 1677 	orl	a,(_get_command_sloc1_1_0 + 1)
      00364B 60 31            [24] 1678 	jz	00139$
                                   1679 ;	syntax.c:261: free(array_for_nodes[i].data_pointer);
      00364D C0 06            [24] 1680 	push	ar6
      00364F C0 07            [24] 1681 	push	ar7
      003651 AA 0D            [24] 1682 	mov	r2,_get_command_sloc1_1_0
      003653 AB 0E            [24] 1683 	mov	r3,(_get_command_sloc1_1_0 + 1)
      003655 AF 0F            [24] 1684 	mov	r7,(_get_command_sloc1_1_0 + 2)
      003657 8A 82            [24] 1685 	mov	dpl,r2
      003659 8B 83            [24] 1686 	mov	dph,r3
      00365B 8F F0            [24] 1687 	mov	b,r7
      00365D C0 07            [24] 1688 	push	ar7
      00365F C0 06            [24] 1689 	push	ar6
      003661 C0 05            [24] 1690 	push	ar5
      003663 C0 04            [24] 1691 	push	ar4
      003665 12 45 79         [24] 1692 	lcall	_free
      003668 D0 04            [24] 1693 	pop	ar4
      00366A D0 05            [24] 1694 	pop	ar5
      00366C D0 06            [24] 1695 	pop	ar6
      00366E D0 07            [24] 1696 	pop	ar7
                                   1697 ;	syntax.c:262: array_for_nodes[i].data_pointer = NULL;
      003670 8C 82            [24] 1698 	mov	dpl,r4
      003672 8D 83            [24] 1699 	mov	dph,r5
      003674 E4               [12] 1700 	clr	a
      003675 F0               [24] 1701 	movx	@dptr,a
      003676 A3               [24] 1702 	inc	dptr
      003677 F0               [24] 1703 	movx	@dptr,a
      003678 A3               [24] 1704 	inc	dptr
      003679 F0               [24] 1705 	movx	@dptr,a
                                   1706 ;	syntax.c:408: return 0;
      00367A D0 07            [24] 1707 	pop	ar7
      00367C D0 06            [24] 1708 	pop	ar6
                                   1709 ;	syntax.c:262: array_for_nodes[i].data_pointer = NULL;
      00367E                       1710 00139$:
                                   1711 ;	syntax.c:257: for(int i = 0; i < 100; i++) 
      00367E 0E               [12] 1712 	inc	r6
      00367F BE 00 01         [24] 1713 	cjne	r6,#0x00,00238$
      003682 0F               [12] 1714 	inc	r7
      003683                       1715 00238$:
      003683 02 36 06         [24] 1716 	ljmp	00138$
      003686                       1717 00107$:
                                   1718 ;	syntax.c:266: printf("\n\r+--------------------------------------------------+\n\r");
      003686 74 61            [12] 1719 	mov	a,#___str_2
      003688 C0 E0            [24] 1720 	push	acc
      00368A 74 56            [12] 1721 	mov	a,#(___str_2 >> 8)
      00368C C0 E0            [24] 1722 	push	acc
      00368E 74 80            [12] 1723 	mov	a,#0x80
      003690 C0 E0            [24] 1724 	push	acc
      003692 12 4B AD         [24] 1725 	lcall	_printf
      003695 15 81            [12] 1726 	dec	sp
      003697 15 81            [12] 1727 	dec	sp
      003699 15 81            [12] 1728 	dec	sp
                                   1729 ;	syntax.c:270: printf("\n\r| All buffers successfully deallocated            |");
      00369B 74 E7            [12] 1730 	mov	a,#___str_10
      00369D C0 E0            [24] 1731 	push	acc
      00369F 74 57            [12] 1732 	mov	a,#(___str_10 >> 8)
      0036A1 C0 E0            [24] 1733 	push	acc
      0036A3 74 80            [12] 1734 	mov	a,#0x80
      0036A5 C0 E0            [24] 1735 	push	acc
      0036A7 12 4B AD         [24] 1736 	lcall	_printf
      0036AA 15 81            [12] 1737 	dec	sp
      0036AC 15 81            [12] 1738 	dec	sp
      0036AE 15 81            [12] 1739 	dec	sp
                                   1740 ;	syntax.c:274: printf("\n\r+--------------------------------------------------+\n\r");
      0036B0 74 61            [12] 1741 	mov	a,#___str_2
      0036B2 C0 E0            [24] 1742 	push	acc
      0036B4 74 56            [12] 1743 	mov	a,#(___str_2 >> 8)
      0036B6 C0 E0            [24] 1744 	push	acc
      0036B8 74 80            [12] 1745 	mov	a,#0x80
      0036BA C0 E0            [24] 1746 	push	acc
      0036BC 12 4B AD         [24] 1747 	lcall	_printf
      0036BF 15 81            [12] 1748 	dec	sp
      0036C1 15 81            [12] 1749 	dec	sp
      0036C3 15 81            [12] 1750 	dec	sp
                                   1751 ;	syntax.c:282: case '?':               // Show system status
      0036C5                       1752 00111$:
                                   1753 ;	syntax.c:283: DEBUGPORT(0x04);
      0036C5 90 04 00         [24] 1754 	mov	dptr,#_dataout_PARM_2
      0036C8 74 04            [12] 1755 	mov	a,#0x04
      0036CA F0               [24] 1756 	movx	@dptr,a
      0036CB 90 FE FE         [24] 1757 	mov	dptr,#0xfefe
      0036CE 12 30 68         [24] 1758 	lcall	_dataout
                                   1759 ;	syntax.c:284: printf("\n\r+------------------SYSTEM STATUS-------------------+");
      0036D1 74 53            [12] 1760 	mov	a,#___str_12
      0036D3 C0 E0            [24] 1761 	push	acc
      0036D5 74 58            [12] 1762 	mov	a,#(___str_12 >> 8)
      0036D7 C0 E0            [24] 1763 	push	acc
      0036D9 74 80            [12] 1764 	mov	a,#0x80
      0036DB C0 E0            [24] 1765 	push	acc
      0036DD 12 4B AD         [24] 1766 	lcall	_printf
      0036E0 15 81            [12] 1767 	dec	sp
      0036E2 15 81            [12] 1768 	dec	sp
      0036E4 15 81            [12] 1769 	dec	sp
                                   1770 ;	syntax.c:285: printf("\n\r| COMMAND STATISTICS                              |");
      0036E6 74 8A            [12] 1771 	mov	a,#___str_13
      0036E8 C0 E0            [24] 1772 	push	acc
      0036EA 74 58            [12] 1773 	mov	a,#(___str_13 >> 8)
      0036EC C0 E0            [24] 1774 	push	acc
      0036EE 74 80            [12] 1775 	mov	a,#0x80
      0036F0 C0 E0            [24] 1776 	push	acc
      0036F2 12 4B AD         [24] 1777 	lcall	_printf
      0036F5 15 81            [12] 1778 	dec	sp
      0036F7 15 81            [12] 1779 	dec	sp
      0036F9 15 81            [12] 1780 	dec	sp
                                   1781 ;	syntax.c:286: printf("\n\r|------------------------------------------------|");
      0036FB 74 93            [12] 1782 	mov	a,#___str_8
      0036FD C0 E0            [24] 1783 	push	acc
      0036FF 74 57            [12] 1784 	mov	a,#(___str_8 >> 8)
      003701 C0 E0            [24] 1785 	push	acc
      003703 74 80            [12] 1786 	mov	a,#0x80
      003705 C0 E0            [24] 1787 	push	acc
      003707 12 4B AD         [24] 1788 	lcall	_printf
      00370A 15 81            [12] 1789 	dec	sp
      00370C 15 81            [12] 1790 	dec	sp
      00370E 15 81            [12] 1791 	dec	sp
                                   1792 ;	syntax.c:287: printf("\n\r| Total Commands   | %-28d |", total_number_of_commands);
      003710 90 1C D8         [24] 1793 	mov	dptr,#_total_number_of_commands
      003713 E0               [24] 1794 	movx	a,@dptr
      003714 FF               [12] 1795 	mov	r7,a
      003715 7E 00            [12] 1796 	mov	r6,#0x00
      003717 C0 07            [24] 1797 	push	ar7
      003719 C0 06            [24] 1798 	push	ar6
      00371B 74 C0            [12] 1799 	mov	a,#___str_14
      00371D C0 E0            [24] 1800 	push	acc
      00371F 74 58            [12] 1801 	mov	a,#(___str_14 >> 8)
      003721 C0 E0            [24] 1802 	push	acc
      003723 74 80            [12] 1803 	mov	a,#0x80
      003725 C0 E0            [24] 1804 	push	acc
      003727 12 4B AD         [24] 1805 	lcall	_printf
      00372A E5 81            [12] 1806 	mov	a,sp
      00372C 24 FB            [12] 1807 	add	a,#0xfb
      00372E F5 81            [12] 1808 	mov	sp,a
                                   1809 ;	syntax.c:288: printf("\n\r| Recent Commands  | %-28d |", recent_commands);
      003730 90 1C DA         [24] 1810 	mov	dptr,#_recent_commands
      003733 E0               [24] 1811 	movx	a,@dptr
      003734 FF               [12] 1812 	mov	r7,a
      003735 7E 00            [12] 1813 	mov	r6,#0x00
      003737 C0 07            [24] 1814 	push	ar7
      003739 C0 06            [24] 1815 	push	ar6
      00373B 74 DF            [12] 1816 	mov	a,#___str_15
      00373D C0 E0            [24] 1817 	push	acc
      00373F 74 58            [12] 1818 	mov	a,#(___str_15 >> 8)
      003741 C0 E0            [24] 1819 	push	acc
      003743 74 80            [12] 1820 	mov	a,#0x80
      003745 C0 E0            [24] 1821 	push	acc
      003747 12 4B AD         [24] 1822 	lcall	_printf
      00374A E5 81            [12] 1823 	mov	a,sp
      00374C 24 FB            [12] 1824 	add	a,#0xfb
      00374E F5 81            [12] 1825 	mov	sp,a
                                   1826 ;	syntax.c:289: printf("\n\r|------------------------------------------------|");
      003750 74 93            [12] 1827 	mov	a,#___str_8
      003752 C0 E0            [24] 1828 	push	acc
      003754 74 57            [12] 1829 	mov	a,#(___str_8 >> 8)
      003756 C0 E0            [24] 1830 	push	acc
      003758 74 80            [12] 1831 	mov	a,#0x80
      00375A C0 E0            [24] 1832 	push	acc
      00375C 12 4B AD         [24] 1833 	lcall	_printf
      00375F 15 81            [12] 1834 	dec	sp
      003761 15 81            [12] 1835 	dec	sp
      003763 15 81            [12] 1836 	dec	sp
                                   1837 ;	syntax.c:290: printf("\n\r| STORAGE STATISTICS                             |");
      003765 74 FE            [12] 1838 	mov	a,#___str_16
      003767 C0 E0            [24] 1839 	push	acc
      003769 74 58            [12] 1840 	mov	a,#(___str_16 >> 8)
      00376B C0 E0            [24] 1841 	push	acc
      00376D 74 80            [12] 1842 	mov	a,#0x80
      00376F C0 E0            [24] 1843 	push	acc
      003771 12 4B AD         [24] 1844 	lcall	_printf
      003774 15 81            [12] 1845 	dec	sp
      003776 15 81            [12] 1846 	dec	sp
      003778 15 81            [12] 1847 	dec	sp
                                   1848 ;	syntax.c:291: printf("\n\r|------------------------------------------------|");
      00377A 74 93            [12] 1849 	mov	a,#___str_8
      00377C C0 E0            [24] 1850 	push	acc
      00377E 74 57            [12] 1851 	mov	a,#(___str_8 >> 8)
      003780 C0 E0            [24] 1852 	push	acc
      003782 74 80            [12] 1853 	mov	a,#0x80
      003784 C0 E0            [24] 1854 	push	acc
      003786 12 4B AD         [24] 1855 	lcall	_printf
      003789 15 81            [12] 1856 	dec	sp
      00378B 15 81            [12] 1857 	dec	sp
      00378D 15 81            [12] 1858 	dec	sp
                                   1859 ;	syntax.c:292: printf("\n\r| Total Storage    | %-28d |", total_number_of_storage);
      00378F 90 1C D9         [24] 1860 	mov	dptr,#_total_number_of_storage
      003792 E0               [24] 1861 	movx	a,@dptr
      003793 FF               [12] 1862 	mov	r7,a
      003794 7E 00            [12] 1863 	mov	r6,#0x00
      003796 C0 07            [24] 1864 	push	ar7
      003798 C0 06            [24] 1865 	push	ar6
      00379A 74 33            [12] 1866 	mov	a,#___str_17
      00379C C0 E0            [24] 1867 	push	acc
      00379E 74 59            [12] 1868 	mov	a,#(___str_17 >> 8)
      0037A0 C0 E0            [24] 1869 	push	acc
      0037A2 74 80            [12] 1870 	mov	a,#0x80
      0037A4 C0 E0            [24] 1871 	push	acc
      0037A6 12 4B AD         [24] 1872 	lcall	_printf
      0037A9 E5 81            [12] 1873 	mov	a,sp
      0037AB 24 FB            [12] 1874 	add	a,#0xfb
      0037AD F5 81            [12] 1875 	mov	sp,a
                                   1876 ;	syntax.c:293: printf("\n\r| Recent Storage   | %-28d |", recent_storage);
      0037AF 90 1C DB         [24] 1877 	mov	dptr,#_recent_storage
      0037B2 E0               [24] 1878 	movx	a,@dptr
      0037B3 FF               [12] 1879 	mov	r7,a
      0037B4 7E 00            [12] 1880 	mov	r6,#0x00
      0037B6 C0 07            [24] 1881 	push	ar7
      0037B8 C0 06            [24] 1882 	push	ar6
      0037BA 74 52            [12] 1883 	mov	a,#___str_18
      0037BC C0 E0            [24] 1884 	push	acc
      0037BE 74 59            [12] 1885 	mov	a,#(___str_18 >> 8)
      0037C0 C0 E0            [24] 1886 	push	acc
      0037C2 74 80            [12] 1887 	mov	a,#0x80
      0037C4 C0 E0            [24] 1888 	push	acc
      0037C6 12 4B AD         [24] 1889 	lcall	_printf
      0037C9 E5 81            [12] 1890 	mov	a,sp
      0037CB 24 FB            [12] 1891 	add	a,#0xfb
      0037CD F5 81            [12] 1892 	mov	sp,a
                                   1893 ;	syntax.c:294: printf("\n\r+--------------------------------------------------+");
      0037CF 74 EF            [12] 1894 	mov	a,#___str_0
      0037D1 C0 E0            [24] 1895 	push	acc
      0037D3 74 55            [12] 1896 	mov	a,#(___str_0 >> 8)
      0037D5 C0 E0            [24] 1897 	push	acc
      0037D7 74 80            [12] 1898 	mov	a,#0x80
      0037D9 C0 E0            [24] 1899 	push	acc
      0037DB 12 4B AD         [24] 1900 	lcall	_printf
      0037DE 15 81            [12] 1901 	dec	sp
      0037E0 15 81            [12] 1902 	dec	sp
      0037E2 15 81            [12] 1903 	dec	sp
                                   1904 ;	syntax.c:295: printf("\n\r| TOTAL BUFFERS IN HEAP                           |");
      0037E4 74 71            [12] 1905 	mov	a,#___str_19
      0037E6 C0 E0            [24] 1906 	push	acc
      0037E8 74 59            [12] 1907 	mov	a,#(___str_19 >> 8)
      0037EA C0 E0            [24] 1908 	push	acc
      0037EC 74 80            [12] 1909 	mov	a,#0x80
      0037EE C0 E0            [24] 1910 	push	acc
      0037F0 12 4B AD         [24] 1911 	lcall	_printf
      0037F3 15 81            [12] 1912 	dec	sp
      0037F5 15 81            [12] 1913 	dec	sp
      0037F7 15 81            [12] 1914 	dec	sp
                                   1915 ;	syntax.c:296: printf("\n\r|------------------------------------------------|");
      0037F9 74 93            [12] 1916 	mov	a,#___str_8
      0037FB C0 E0            [24] 1917 	push	acc
      0037FD 74 57            [12] 1918 	mov	a,#(___str_8 >> 8)
      0037FF C0 E0            [24] 1919 	push	acc
      003801 74 80            [12] 1920 	mov	a,#0x80
      003803 C0 E0            [24] 1921 	push	acc
      003805 12 4B AD         [24] 1922 	lcall	_printf
      003808 15 81            [12] 1923 	dec	sp
      00380A 15 81            [12] 1924 	dec	sp
      00380C 15 81            [12] 1925 	dec	sp
                                   1926 ;	syntax.c:297: printf("\n\r| Total Buffers    | %-28d |", index_of_buffers);
      00380E 90 1C D7         [24] 1927 	mov	dptr,#_index_of_buffers
      003811 E0               [24] 1928 	movx	a,@dptr
      003812 FF               [12] 1929 	mov	r7,a
      003813 7E 00            [12] 1930 	mov	r6,#0x00
      003815 C0 07            [24] 1931 	push	ar7
      003817 C0 06            [24] 1932 	push	ar6
      003819 74 A7            [12] 1933 	mov	a,#___str_20
      00381B C0 E0            [24] 1934 	push	acc
      00381D 74 59            [12] 1935 	mov	a,#(___str_20 >> 8)
      00381F C0 E0            [24] 1936 	push	acc
      003821 74 80            [12] 1937 	mov	a,#0x80
      003823 C0 E0            [24] 1938 	push	acc
      003825 12 4B AD         [24] 1939 	lcall	_printf
      003828 E5 81            [12] 1940 	mov	a,sp
      00382A 24 FB            [12] 1941 	add	a,#0xfb
      00382C F5 81            [12] 1942 	mov	sp,a
                                   1943 ;	syntax.c:298: printf("\n\r+--------------------------------------------------+");
      00382E 74 EF            [12] 1944 	mov	a,#___str_0
      003830 C0 E0            [24] 1945 	push	acc
      003832 74 55            [12] 1946 	mov	a,#(___str_0 >> 8)
      003834 C0 E0            [24] 1947 	push	acc
      003836 74 80            [12] 1948 	mov	a,#0x80
      003838 C0 E0            [24] 1949 	push	acc
      00383A 12 4B AD         [24] 1950 	lcall	_printf
      00383D 15 81            [12] 1951 	dec	sp
      00383F 15 81            [12] 1952 	dec	sp
      003841 15 81            [12] 1953 	dec	sp
                                   1954 ;	syntax.c:300: printf("\n\r+------------------BUFFER INFO--------------------+");
      003843 74 C6            [12] 1955 	mov	a,#___str_21
      003845 C0 E0            [24] 1956 	push	acc
      003847 74 59            [12] 1957 	mov	a,#(___str_21 >> 8)
      003849 C0 E0            [24] 1958 	push	acc
      00384B 74 80            [12] 1959 	mov	a,#0x80
      00384D C0 E0            [24] 1960 	push	acc
      00384F 12 4B AD         [24] 1961 	lcall	_printf
      003852 15 81            [12] 1962 	dec	sp
      003854 15 81            [12] 1963 	dec	sp
      003856 15 81            [12] 1964 	dec	sp
                                   1965 ;	syntax.c:301: printf("\n\r| ID | Start Addr  | End Addr    | Size (bytes) |");
      003858 74 FC            [12] 1966 	mov	a,#___str_22
      00385A C0 E0            [24] 1967 	push	acc
      00385C 74 59            [12] 1968 	mov	a,#(___str_22 >> 8)
      00385E C0 E0            [24] 1969 	push	acc
      003860 74 80            [12] 1970 	mov	a,#0x80
      003862 C0 E0            [24] 1971 	push	acc
      003864 12 4B AD         [24] 1972 	lcall	_printf
      003867 15 81            [12] 1973 	dec	sp
      003869 15 81            [12] 1974 	dec	sp
      00386B 15 81            [12] 1975 	dec	sp
                                   1976 ;	syntax.c:302: printf("\n\r|----|-------------|-------------|--------------|");
      00386D 74 30            [12] 1977 	mov	a,#___str_23
      00386F C0 E0            [24] 1978 	push	acc
      003871 74 5A            [12] 1979 	mov	a,#(___str_23 >> 8)
      003873 C0 E0            [24] 1980 	push	acc
      003875 74 80            [12] 1981 	mov	a,#0x80
      003877 C0 E0            [24] 1982 	push	acc
      003879 12 4B AD         [24] 1983 	lcall	_printf
      00387C 15 81            [12] 1984 	dec	sp
      00387E 15 81            [12] 1985 	dec	sp
      003880 15 81            [12] 1986 	dec	sp
                                   1987 ;	syntax.c:304: for(int i=1; i<100; i++){
      003882 7E 01            [12] 1988 	mov	r6,#0x01
      003884 7F 00            [12] 1989 	mov	r7,#0x00
      003886                       1990 00141$:
      003886 C3               [12] 1991 	clr	c
      003887 EE               [12] 1992 	mov	a,r6
      003888 94 64            [12] 1993 	subb	a,#0x64
      00388A EF               [12] 1994 	mov	a,r7
      00388B 64 80            [12] 1995 	xrl	a,#0x80
      00388D 94 80            [12] 1996 	subb	a,#0x80
      00388F 40 03            [24] 1997 	jc	00239$
      003891 02 39 21         [24] 1998 	ljmp	00114$
      003894                       1999 00239$:
                                   2000 ;	syntax.c:305: if(array_for_nodes[i]){
      003894 90 1C 8A         [24] 2001 	mov	dptr,#__mulint_PARM_2
      003897 EE               [12] 2002 	mov	a,r6
      003898 F0               [24] 2003 	movx	@dptr,a
      003899 EF               [12] 2004 	mov	a,r7
      00389A A3               [24] 2005 	inc	dptr
      00389B F0               [24] 2006 	movx	@dptr,a
      00389C 90 00 06         [24] 2007 	mov	dptr,#0x0006
      00389F C0 07            [24] 2008 	push	ar7
      0038A1 C0 06            [24] 2009 	push	ar6
      0038A3 12 49 2C         [24] 2010 	lcall	__mulint
      0038A6 AC 82            [24] 2011 	mov	r4,dpl
      0038A8 AD 83            [24] 2012 	mov	r5,dph
      0038AA D0 06            [24] 2013 	pop	ar6
      0038AC D0 07            [24] 2014 	pop	ar7
      0038AE EC               [12] 2015 	mov	a,r4
      0038AF 24 03            [12] 2016 	add	a,#_array_for_nodes
      0038B1 FC               [12] 2017 	mov	r4,a
      0038B2 ED               [12] 2018 	mov	a,r5
      0038B3 34 04            [12] 2019 	addc	a,#(_array_for_nodes >> 8)
      0038B5 FD               [12] 2020 	mov	r5,a
      0038B6 8C 82            [24] 2021 	mov	dpl,r4
      0038B8 8D 83            [24] 2022 	mov	dph,r5
      0038BA E0               [24] 2023 	movx	a,@dptr
      0038BB 60 5C            [24] 2024 	jz	00142$
                                   2025 ;	syntax.c:309: array_for_nodes[i].size);
      0038BD 8C 82            [24] 2026 	mov	dpl,r4
      0038BF 8D 83            [24] 2027 	mov	dph,r5
      0038C1 A3               [24] 2028 	inc	dptr
      0038C2 A3               [24] 2029 	inc	dptr
      0038C3 A3               [24] 2030 	inc	dptr
      0038C4 A3               [24] 2031 	inc	dptr
      0038C5 E0               [24] 2032 	movx	a,@dptr
      0038C6 F5 0D            [12] 2033 	mov	_get_command_sloc1_1_0,a
      0038C8 A3               [24] 2034 	inc	dptr
      0038C9 E0               [24] 2035 	movx	a,@dptr
      0038CA F5 0E            [12] 2036 	mov	(_get_command_sloc1_1_0 + 1),a
                                   2037 ;	syntax.c:308: array_for_nodes[i].data_pointer+array_for_nodes[i].size,
      0038CC 8C 82            [24] 2038 	mov	dpl,r4
      0038CE 8D 83            [24] 2039 	mov	dph,r5
      0038D0 A3               [24] 2040 	inc	dptr
      0038D1 E0               [24] 2041 	movx	a,@dptr
      0038D2 F5 10            [12] 2042 	mov	_get_command_sloc2_1_0,a
      0038D4 A3               [24] 2043 	inc	dptr
      0038D5 E0               [24] 2044 	movx	a,@dptr
      0038D6 F5 11            [12] 2045 	mov	(_get_command_sloc2_1_0 + 1),a
      0038D8 A3               [24] 2046 	inc	dptr
      0038D9 E0               [24] 2047 	movx	a,@dptr
      0038DA F5 12            [12] 2048 	mov	(_get_command_sloc2_1_0 + 2),a
      0038DC E5 0D            [12] 2049 	mov	a,_get_command_sloc1_1_0
      0038DE 25 10            [12] 2050 	add	a,_get_command_sloc2_1_0
      0038E0 FA               [12] 2051 	mov	r2,a
      0038E1 E5 0E            [12] 2052 	mov	a,(_get_command_sloc1_1_0 + 1)
      0038E3 35 11            [12] 2053 	addc	a,(_get_command_sloc2_1_0 + 1)
      0038E5 FC               [12] 2054 	mov	r4,a
      0038E6 AD 12            [24] 2055 	mov	r5,(_get_command_sloc2_1_0 + 2)
                                   2056 ;	syntax.c:306: printf("\n\r| %-2d | %-10p | %-10p | %-11d |",
      0038E8 C0 07            [24] 2057 	push	ar7
      0038EA C0 06            [24] 2058 	push	ar6
      0038EC C0 0D            [24] 2059 	push	_get_command_sloc1_1_0
      0038EE C0 0E            [24] 2060 	push	(_get_command_sloc1_1_0 + 1)
      0038F0 C0 02            [24] 2061 	push	ar2
      0038F2 C0 04            [24] 2062 	push	ar4
      0038F4 C0 05            [24] 2063 	push	ar5
      0038F6 C0 10            [24] 2064 	push	_get_command_sloc2_1_0
      0038F8 C0 11            [24] 2065 	push	(_get_command_sloc2_1_0 + 1)
      0038FA C0 12            [24] 2066 	push	(_get_command_sloc2_1_0 + 2)
      0038FC C0 06            [24] 2067 	push	ar6
      0038FE C0 07            [24] 2068 	push	ar7
      003900 74 64            [12] 2069 	mov	a,#___str_24
      003902 C0 E0            [24] 2070 	push	acc
      003904 74 5A            [12] 2071 	mov	a,#(___str_24 >> 8)
      003906 C0 E0            [24] 2072 	push	acc
      003908 74 80            [12] 2073 	mov	a,#0x80
      00390A C0 E0            [24] 2074 	push	acc
      00390C 12 4B AD         [24] 2075 	lcall	_printf
      00390F E5 81            [12] 2076 	mov	a,sp
      003911 24 F3            [12] 2077 	add	a,#0xf3
      003913 F5 81            [12] 2078 	mov	sp,a
      003915 D0 06            [24] 2079 	pop	ar6
      003917 D0 07            [24] 2080 	pop	ar7
      003919                       2081 00142$:
                                   2082 ;	syntax.c:304: for(int i=1; i<100; i++){
      003919 0E               [12] 2083 	inc	r6
      00391A BE 00 01         [24] 2084 	cjne	r6,#0x00,00241$
      00391D 0F               [12] 2085 	inc	r7
      00391E                       2086 00241$:
      00391E 02 38 86         [24] 2087 	ljmp	00141$
      003921                       2088 00114$:
                                   2089 ;	syntax.c:313: printf("\n\r|------------------------------------------------|");
      003921 74 93            [12] 2090 	mov	a,#___str_8
      003923 C0 E0            [24] 2091 	push	acc
      003925 74 57            [12] 2092 	mov	a,#(___str_8 >> 8)
      003927 C0 E0            [24] 2093 	push	acc
      003929 74 80            [12] 2094 	mov	a,#0x80
      00392B C0 E0            [24] 2095 	push	acc
      00392D 12 4B AD         [24] 2096 	lcall	_printf
      003930 15 81            [12] 2097 	dec	sp
      003932 15 81            [12] 2098 	dec	sp
      003934 15 81            [12] 2099 	dec	sp
                                   2100 ;	syntax.c:315: printf("\n\r| MEMORY ALLOCATION STATUS BUFFER 0              |");
      003936 74 87            [12] 2101 	mov	a,#___str_25
      003938 C0 E0            [24] 2102 	push	acc
      00393A 74 5A            [12] 2103 	mov	a,#(___str_25 >> 8)
      00393C C0 E0            [24] 2104 	push	acc
      00393E 74 80            [12] 2105 	mov	a,#0x80
      003940 C0 E0            [24] 2106 	push	acc
      003942 12 4B AD         [24] 2107 	lcall	_printf
      003945 15 81            [12] 2108 	dec	sp
      003947 15 81            [12] 2109 	dec	sp
      003949 15 81            [12] 2110 	dec	sp
                                   2111 ;	syntax.c:316: printf("\n\r|------------------------------------------------|");
      00394B 74 93            [12] 2112 	mov	a,#___str_8
      00394D C0 E0            [24] 2113 	push	acc
      00394F 74 57            [12] 2114 	mov	a,#(___str_8 >> 8)
      003951 C0 E0            [24] 2115 	push	acc
      003953 74 80            [12] 2116 	mov	a,#0x80
      003955 C0 E0            [24] 2117 	push	acc
      003957 12 4B AD         [24] 2118 	lcall	_printf
      00395A 15 81            [12] 2119 	dec	sp
      00395C 15 81            [12] 2120 	dec	sp
      00395E 15 81            [12] 2121 	dec	sp
                                   2122 ;	syntax.c:317: printf("\n\r| Total Space      | %-28d |", array_for_nodes[0].size);
      003960 90 04 07         [24] 2123 	mov	dptr,#(_array_for_nodes + 0x0004)
      003963 E0               [24] 2124 	movx	a,@dptr
      003964 FE               [12] 2125 	mov	r6,a
      003965 A3               [24] 2126 	inc	dptr
      003966 E0               [24] 2127 	movx	a,@dptr
      003967 FF               [12] 2128 	mov	r7,a
      003968 C0 06            [24] 2129 	push	ar6
      00396A C0 07            [24] 2130 	push	ar7
      00396C 74 BC            [12] 2131 	mov	a,#___str_26
      00396E C0 E0            [24] 2132 	push	acc
      003970 74 5A            [12] 2133 	mov	a,#(___str_26 >> 8)
      003972 C0 E0            [24] 2134 	push	acc
      003974 74 80            [12] 2135 	mov	a,#0x80
      003976 C0 E0            [24] 2136 	push	acc
      003978 12 4B AD         [24] 2137 	lcall	_printf
      00397B E5 81            [12] 2138 	mov	a,sp
      00397D 24 FB            [12] 2139 	add	a,#0xfb
      00397F F5 81            [12] 2140 	mov	sp,a
                                   2141 ;	syntax.c:318: printf("\n\r| Occupied Space   | %-28d |", total_number_of_storage);
      003981 90 1C D9         [24] 2142 	mov	dptr,#_total_number_of_storage
      003984 E0               [24] 2143 	movx	a,@dptr
      003985 FF               [12] 2144 	mov	r7,a
      003986 7E 00            [12] 2145 	mov	r6,#0x00
      003988 C0 07            [24] 2146 	push	ar7
      00398A C0 06            [24] 2147 	push	ar6
      00398C 74 DB            [12] 2148 	mov	a,#___str_27
      00398E C0 E0            [24] 2149 	push	acc
      003990 74 5A            [12] 2150 	mov	a,#(___str_27 >> 8)
      003992 C0 E0            [24] 2151 	push	acc
      003994 74 80            [12] 2152 	mov	a,#0x80
      003996 C0 E0            [24] 2153 	push	acc
      003998 12 4B AD         [24] 2154 	lcall	_printf
      00399B E5 81            [12] 2155 	mov	a,sp
      00399D 24 FB            [12] 2156 	add	a,#0xfb
      00399F F5 81            [12] 2157 	mov	sp,a
                                   2158 ;	syntax.c:319: printf("\n\r| Free Space       | %-28d |", array_for_nodes[0].size - total_number_of_storage);
      0039A1 90 04 07         [24] 2159 	mov	dptr,#(_array_for_nodes + 0x0004)
      0039A4 E0               [24] 2160 	movx	a,@dptr
      0039A5 FE               [12] 2161 	mov	r6,a
      0039A6 A3               [24] 2162 	inc	dptr
      0039A7 E0               [24] 2163 	movx	a,@dptr
      0039A8 FF               [12] 2164 	mov	r7,a
      0039A9 90 1C D9         [24] 2165 	mov	dptr,#_total_number_of_storage
      0039AC E0               [24] 2166 	movx	a,@dptr
      0039AD FD               [12] 2167 	mov	r5,a
      0039AE 7C 00            [12] 2168 	mov	r4,#0x00
      0039B0 EE               [12] 2169 	mov	a,r6
      0039B1 C3               [12] 2170 	clr	c
      0039B2 9D               [12] 2171 	subb	a,r5
      0039B3 FE               [12] 2172 	mov	r6,a
      0039B4 EF               [12] 2173 	mov	a,r7
      0039B5 9C               [12] 2174 	subb	a,r4
      0039B6 FF               [12] 2175 	mov	r7,a
      0039B7 C0 06            [24] 2176 	push	ar6
      0039B9 C0 07            [24] 2177 	push	ar7
      0039BB 74 FA            [12] 2178 	mov	a,#___str_28
      0039BD C0 E0            [24] 2179 	push	acc
      0039BF 74 5A            [12] 2180 	mov	a,#(___str_28 >> 8)
      0039C1 C0 E0            [24] 2181 	push	acc
      0039C3 74 80            [12] 2182 	mov	a,#0x80
      0039C5 C0 E0            [24] 2183 	push	acc
      0039C7 12 4B AD         [24] 2184 	lcall	_printf
      0039CA E5 81            [12] 2185 	mov	a,sp
      0039CC 24 FB            [12] 2186 	add	a,#0xfb
      0039CE F5 81            [12] 2187 	mov	sp,a
                                   2188 ;	syntax.c:320: printf("\n\r+--------------------------------------------------+");
      0039D0 74 EF            [12] 2189 	mov	a,#___str_0
      0039D2 C0 E0            [24] 2190 	push	acc
      0039D4 74 55            [12] 2191 	mov	a,#(___str_0 >> 8)
      0039D6 C0 E0            [24] 2192 	push	acc
      0039D8 74 80            [12] 2193 	mov	a,#0x80
      0039DA C0 E0            [24] 2194 	push	acc
      0039DC 12 4B AD         [24] 2195 	lcall	_printf
      0039DF 15 81            [12] 2196 	dec	sp
      0039E1 15 81            [12] 2197 	dec	sp
      0039E3 15 81            [12] 2198 	dec	sp
                                   2199 ;	syntax.c:321: printf("\n\r+--------------------------------------------------+");
      0039E5 74 EF            [12] 2200 	mov	a,#___str_0
      0039E7 C0 E0            [24] 2201 	push	acc
      0039E9 74 55            [12] 2202 	mov	a,#(___str_0 >> 8)
      0039EB C0 E0            [24] 2203 	push	acc
      0039ED 74 80            [12] 2204 	mov	a,#0x80
      0039EF C0 E0            [24] 2205 	push	acc
      0039F1 12 4B AD         [24] 2206 	lcall	_printf
      0039F4 15 81            [12] 2207 	dec	sp
      0039F6 15 81            [12] 2208 	dec	sp
      0039F8 15 81            [12] 2209 	dec	sp
                                   2210 ;	syntax.c:323: buffer0_dump();
      0039FA 12 3D 94         [24] 2211 	lcall	_buffer0_dump
                                   2212 ;	syntax.c:324: printf("\n\r| BUFFER 0 CLEAR STATUS                           |");
      0039FD 74 19            [12] 2213 	mov	a,#___str_29
      0039FF C0 E0            [24] 2214 	push	acc
      003A01 74 5B            [12] 2215 	mov	a,#(___str_29 >> 8)
      003A03 C0 E0            [24] 2216 	push	acc
      003A05 74 80            [12] 2217 	mov	a,#0x80
      003A07 C0 E0            [24] 2218 	push	acc
      003A09 12 4B AD         [24] 2219 	lcall	_printf
      003A0C 15 81            [12] 2220 	dec	sp
      003A0E 15 81            [12] 2221 	dec	sp
      003A10 15 81            [12] 2222 	dec	sp
                                   2223 ;	syntax.c:325: printf("\n\r|------------------------------------------------|");
      003A12 74 93            [12] 2224 	mov	a,#___str_8
      003A14 C0 E0            [24] 2225 	push	acc
      003A16 74 57            [12] 2226 	mov	a,#(___str_8 >> 8)
      003A18 C0 E0            [24] 2227 	push	acc
      003A1A 74 80            [12] 2228 	mov	a,#0x80
      003A1C C0 E0            [24] 2229 	push	acc
      003A1E 12 4B AD         [24] 2230 	lcall	_printf
      003A21 15 81            [12] 2231 	dec	sp
      003A23 15 81            [12] 2232 	dec	sp
      003A25 15 81            [12] 2233 	dec	sp
                                   2234 ;	syntax.c:328: if(array_for_nodes[0].data_pointer == NULL) {
      003A27 90 04 04         [24] 2235 	mov	dptr,#(_array_for_nodes + 0x0001)
      003A2A E0               [24] 2236 	movx	a,@dptr
      003A2B FD               [12] 2237 	mov	r5,a
      003A2C A3               [24] 2238 	inc	dptr
      003A2D E0               [24] 2239 	movx	a,@dptr
      003A2E FE               [12] 2240 	mov	r6,a
      003A2F A3               [24] 2241 	inc	dptr
      003A30 E0               [24] 2242 	movx	a,@dptr
      003A31 FF               [12] 2243 	mov	r7,a
      003A32 ED               [12] 2244 	mov	a,r5
      003A33 4E               [12] 2245 	orl	a,r6
      003A34 70 2B            [24] 2246 	jnz	00116$
                                   2247 ;	syntax.c:329: printf("\n\r| Buffer 0 is not initialized                     |");
      003A36 74 4F            [12] 2248 	mov	a,#___str_30
      003A38 C0 E0            [24] 2249 	push	acc
      003A3A 74 5B            [12] 2250 	mov	a,#(___str_30 >> 8)
      003A3C C0 E0            [24] 2251 	push	acc
      003A3E 74 80            [12] 2252 	mov	a,#0x80
      003A40 C0 E0            [24] 2253 	push	acc
      003A42 12 4B AD         [24] 2254 	lcall	_printf
      003A45 15 81            [12] 2255 	dec	sp
      003A47 15 81            [12] 2256 	dec	sp
      003A49 15 81            [12] 2257 	dec	sp
                                   2258 ;	syntax.c:330: printf("\n\r+--------------------------------------------------+\n\r");
      003A4B 74 61            [12] 2259 	mov	a,#___str_2
      003A4D C0 E0            [24] 2260 	push	acc
      003A4F 74 56            [12] 2261 	mov	a,#(___str_2 >> 8)
      003A51 C0 E0            [24] 2262 	push	acc
      003A53 74 80            [12] 2263 	mov	a,#0x80
      003A55 C0 E0            [24] 2264 	push	acc
      003A57 12 4B AD         [24] 2265 	lcall	_printf
      003A5A 15 81            [12] 2266 	dec	sp
      003A5C 15 81            [12] 2267 	dec	sp
      003A5E 15 81            [12] 2268 	dec	sp
                                   2269 ;	syntax.c:331: return;
      003A60 22               [24] 2270 	ret
      003A61                       2271 00116$:
                                   2272 ;	syntax.c:334: uint16_t buffer_size = array_for_nodes[0].size;
      003A61 90 04 07         [24] 2273 	mov	dptr,#(_array_for_nodes + 0x0004)
      003A64 E0               [24] 2274 	movx	a,@dptr
      003A65 FB               [12] 2275 	mov	r3,a
      003A66 A3               [24] 2276 	inc	dptr
      003A67 E0               [24] 2277 	movx	a,@dptr
      003A68 FC               [12] 2278 	mov	r4,a
                                   2279 ;	syntax.c:337: memset(array_for_nodes[0].data_pointer, 0, buffer_size);
      003A69 8D 10            [24] 2280 	mov	_get_command_sloc2_1_0,r5
      003A6B 8E 11            [24] 2281 	mov	(_get_command_sloc2_1_0 + 1),r6
      003A6D 8F 12            [24] 2282 	mov	(_get_command_sloc2_1_0 + 2),r7
      003A6F 8B 02            [24] 2283 	mov	ar2,r3
      003A71 8C 07            [24] 2284 	mov	ar7,r4
      003A73 90 1C 7E         [24] 2285 	mov	dptr,#_memset_PARM_2
      003A76 E4               [12] 2286 	clr	a
      003A77 F0               [24] 2287 	movx	@dptr,a
      003A78 90 1C 7F         [24] 2288 	mov	dptr,#_memset_PARM_3
      003A7B EA               [12] 2289 	mov	a,r2
      003A7C F0               [24] 2290 	movx	@dptr,a
      003A7D EF               [12] 2291 	mov	a,r7
      003A7E A3               [24] 2292 	inc	dptr
      003A7F F0               [24] 2293 	movx	@dptr,a
      003A80 85 10 82         [24] 2294 	mov	dpl,_get_command_sloc2_1_0
      003A83 85 11 83         [24] 2295 	mov	dph,(_get_command_sloc2_1_0 + 1)
      003A86 85 12 F0         [24] 2296 	mov	b,(_get_command_sloc2_1_0 + 2)
      003A89 C0 04            [24] 2297 	push	ar4
      003A8B C0 03            [24] 2298 	push	ar3
      003A8D 12 47 44         [24] 2299 	lcall	_memset
      003A90 D0 03            [24] 2300 	pop	ar3
      003A92 D0 04            [24] 2301 	pop	ar4
                                   2302 ;	syntax.c:338: array_for_nodes[0].index = 0;
      003A94 90 04 03         [24] 2303 	mov	dptr,#_array_for_nodes
      003A97 E4               [12] 2304 	clr	a
      003A98 F0               [24] 2305 	movx	@dptr,a
                                   2306 ;	syntax.c:340: temp_buffer_size = buffer_size;    // Reset available space
      003A99 78 2E            [12] 2307 	mov	r0,#_temp_buffer_size
      003A9B A6 03            [24] 2308 	mov	@r0,ar3
      003A9D 08               [12] 2309 	inc	r0
      003A9E A6 04            [24] 2310 	mov	@r0,ar4
                                   2311 ;	syntax.c:341: wr = array_for_nodes[0].data_pointer;  // Reset write pointer to start
      003AA0 90 04 04         [24] 2312 	mov	dptr,#(_array_for_nodes + 0x0001)
      003AA3 E0               [24] 2313 	movx	a,@dptr
      003AA4 FD               [12] 2314 	mov	r5,a
      003AA5 A3               [24] 2315 	inc	dptr
      003AA6 E0               [24] 2316 	movx	a,@dptr
      003AA7 FE               [12] 2317 	mov	r6,a
      003AA8 A3               [24] 2318 	inc	dptr
      003AA9 E0               [24] 2319 	movx	a,@dptr
      003AAA FF               [12] 2320 	mov	r7,a
      003AAB 90 1C DD         [24] 2321 	mov	dptr,#_wr
      003AAE ED               [12] 2322 	mov	a,r5
      003AAF F0               [24] 2323 	movx	@dptr,a
      003AB0 EE               [12] 2324 	mov	a,r6
      003AB1 A3               [24] 2325 	inc	dptr
      003AB2 F0               [24] 2326 	movx	@dptr,a
      003AB3 EF               [12] 2327 	mov	a,r7
      003AB4 A3               [24] 2328 	inc	dptr
      003AB5 F0               [24] 2329 	movx	@dptr,a
                                   2330 ;	syntax.c:342: total_number_of_storage = 0;       // Reset storage counters
      003AB6 90 1C D9         [24] 2331 	mov	dptr,#_total_number_of_storage
      003AB9 E4               [12] 2332 	clr	a
      003ABA F0               [24] 2333 	movx	@dptr,a
                                   2334 ;	syntax.c:344: printf("\n\r| Buffer Size      | %-28d |", buffer_size);
      003ABB C0 03            [24] 2335 	push	ar3
      003ABD C0 04            [24] 2336 	push	ar4
      003ABF 74 85            [12] 2337 	mov	a,#___str_31
      003AC1 C0 E0            [24] 2338 	push	acc
      003AC3 74 5B            [12] 2339 	mov	a,#(___str_31 >> 8)
      003AC5 C0 E0            [24] 2340 	push	acc
      003AC7 74 80            [12] 2341 	mov	a,#0x80
      003AC9 C0 E0            [24] 2342 	push	acc
      003ACB 12 4B AD         [24] 2343 	lcall	_printf
      003ACE E5 81            [12] 2344 	mov	a,sp
      003AD0 24 FB            [12] 2345 	add	a,#0xfb
      003AD2 F5 81            [12] 2346 	mov	sp,a
                                   2347 ;	syntax.c:345: printf("\n\r| Status          | %-28s |", "Data Erased");
      003AD4 74 C2            [12] 2348 	mov	a,#___str_33
      003AD6 C0 E0            [24] 2349 	push	acc
      003AD8 74 5B            [12] 2350 	mov	a,#(___str_33 >> 8)
      003ADA C0 E0            [24] 2351 	push	acc
      003ADC 74 80            [12] 2352 	mov	a,#0x80
      003ADE C0 E0            [24] 2353 	push	acc
      003AE0 74 A4            [12] 2354 	mov	a,#___str_32
      003AE2 C0 E0            [24] 2355 	push	acc
      003AE4 74 5B            [12] 2356 	mov	a,#(___str_32 >> 8)
      003AE6 C0 E0            [24] 2357 	push	acc
      003AE8 74 80            [12] 2358 	mov	a,#0x80
      003AEA C0 E0            [24] 2359 	push	acc
      003AEC 12 4B AD         [24] 2360 	lcall	_printf
      003AEF E5 81            [12] 2361 	mov	a,sp
      003AF1 24 FA            [12] 2362 	add	a,#0xfa
      003AF3 F5 81            [12] 2363 	mov	sp,a
                                   2364 ;	syntax.c:346: printf("\n\r+--------------------------------------------------+\n\r");
      003AF5 74 61            [12] 2365 	mov	a,#___str_2
      003AF7 C0 E0            [24] 2366 	push	acc
      003AF9 74 56            [12] 2367 	mov	a,#(___str_2 >> 8)
      003AFB C0 E0            [24] 2368 	push	acc
      003AFD 74 80            [12] 2369 	mov	a,#0x80
      003AFF C0 E0            [24] 2370 	push	acc
      003B01 12 4B AD         [24] 2371 	lcall	_printf
      003B04 15 81            [12] 2372 	dec	sp
      003B06 15 81            [12] 2373 	dec	sp
      003B08 15 81            [12] 2374 	dec	sp
                                   2375 ;	syntax.c:347: recent_commands = 0;
      003B0A 90 1C DA         [24] 2376 	mov	dptr,#_recent_commands
      003B0D E4               [12] 2377 	clr	a
      003B0E F0               [24] 2378 	movx	@dptr,a
                                   2379 ;	syntax.c:348: recent_storage = 0;
      003B0F 90 1C DB         [24] 2380 	mov	dptr,#_recent_storage
      003B12 F0               [24] 2381 	movx	@dptr,a
                                   2382 ;	syntax.c:349: break;
      003B13 02 3D 90         [24] 2383 	ljmp	00133$
                                   2384 ;	syntax.c:351: case '+':               // Create new buffer
      003B16                       2385 00117$:
                                   2386 ;	syntax.c:352: DEBUGPORT(0x01);
      003B16 90 04 00         [24] 2387 	mov	dptr,#_dataout_PARM_2
      003B19 74 01            [12] 2388 	mov	a,#0x01
      003B1B F0               [24] 2389 	movx	@dptr,a
      003B1C 90 FE FE         [24] 2390 	mov	dptr,#0xfefe
      003B1F 12 30 68         [24] 2391 	lcall	_dataout
                                   2392 ;	syntax.c:353: printf("\n\r+----------------BUFFER CREATION------------------+");
      003B22 74 CE            [12] 2393 	mov	a,#___str_34
      003B24 C0 E0            [24] 2394 	push	acc
      003B26 74 5B            [12] 2395 	mov	a,#(___str_34 >> 8)
      003B28 C0 E0            [24] 2396 	push	acc
      003B2A 74 80            [12] 2397 	mov	a,#0x80
      003B2C C0 E0            [24] 2398 	push	acc
      003B2E 12 4B AD         [24] 2399 	lcall	_printf
      003B31 15 81            [12] 2400 	dec	sp
      003B33 15 81            [12] 2401 	dec	sp
      003B35 15 81            [12] 2402 	dec	sp
                                   2403 ;	syntax.c:354: temp_value = get_number("\n\r| Enter buffer size (50-500): ");
      003B37 90 5C 04         [24] 2404 	mov	dptr,#___str_35
      003B3A 75 F0 80         [24] 2405 	mov	b,#0x80
      003B3D 12 33 CD         [24] 2406 	lcall	_get_number
      003B40 AE 82            [24] 2407 	mov	r6,dpl
      003B42 AF 83            [24] 2408 	mov	r7,dph
                                   2409 ;	syntax.c:355: if(temp_value < 50 || temp_value > 500)
      003B44 C3               [12] 2410 	clr	c
      003B45 EE               [12] 2411 	mov	a,r6
      003B46 94 32            [12] 2412 	subb	a,#0x32
      003B48 EF               [12] 2413 	mov	a,r7
      003B49 64 80            [12] 2414 	xrl	a,#0x80
      003B4B 94 80            [12] 2415 	subb	a,#0x80
      003B4D 40 0E            [24] 2416 	jc	00121$
      003B4F 74 F4            [12] 2417 	mov	a,#0xf4
      003B51 9E               [12] 2418 	subb	a,r6
      003B52 74 81            [12] 2419 	mov	a,#(0x01 ^ 0x80)
      003B54 8F F0            [24] 2420 	mov	b,r7
      003B56 63 F0 80         [24] 2421 	xrl	b,#0x80
      003B59 95 F0            [12] 2422 	subb	a,b
      003B5B 50 19            [24] 2423 	jnc	00122$
      003B5D                       2424 00121$:
                                   2425 ;	syntax.c:357: printf("\n\r ERROR : Invalid request\n\r"); 
      003B5D 74 25            [12] 2426 	mov	a,#___str_36
      003B5F C0 E0            [24] 2427 	push	acc
      003B61 74 5C            [12] 2428 	mov	a,#(___str_36 >> 8)
      003B63 C0 E0            [24] 2429 	push	acc
      003B65 74 80            [12] 2430 	mov	a,#0x80
      003B67 C0 E0            [24] 2431 	push	acc
      003B69 12 4B AD         [24] 2432 	lcall	_printf
      003B6C 15 81            [12] 2433 	dec	sp
      003B6E 15 81            [12] 2434 	dec	sp
      003B70 15 81            [12] 2435 	dec	sp
                                   2436 ;	syntax.c:358: return -1;
      003B72 90 FF FF         [24] 2437 	mov	dptr,#0xffff
      003B75 22               [24] 2438 	ret
      003B76                       2439 00122$:
                                   2440 ;	syntax.c:362: printf("\n\r| Requested Size: %-32d |", temp_value);
      003B76 C0 07            [24] 2441 	push	ar7
      003B78 C0 06            [24] 2442 	push	ar6
      003B7A C0 06            [24] 2443 	push	ar6
      003B7C C0 07            [24] 2444 	push	ar7
      003B7E 74 42            [12] 2445 	mov	a,#___str_37
      003B80 C0 E0            [24] 2446 	push	acc
      003B82 74 5C            [12] 2447 	mov	a,#(___str_37 >> 8)
      003B84 C0 E0            [24] 2448 	push	acc
      003B86 74 80            [12] 2449 	mov	a,#0x80
      003B88 C0 E0            [24] 2450 	push	acc
      003B8A 12 4B AD         [24] 2451 	lcall	_printf
      003B8D E5 81            [12] 2452 	mov	a,sp
      003B8F 24 FB            [12] 2453 	add	a,#0xfb
      003B91 F5 81            [12] 2454 	mov	sp,a
      003B93 D0 06            [24] 2455 	pop	ar6
      003B95 D0 07            [24] 2456 	pop	ar7
                                   2457 ;	syntax.c:364: pointer = (__xdata uint8_t *) malloc(temp_value);
      003B97 8E 82            [24] 2458 	mov	dpl,r6
      003B99 8F 83            [24] 2459 	mov	dph,r7
      003B9B C0 07            [24] 2460 	push	ar7
      003B9D C0 06            [24] 2461 	push	ar6
      003B9F 12 47 C3         [24] 2462 	lcall	_malloc
      003BA2 AC 82            [24] 2463 	mov	r4,dpl
      003BA4 AD 83            [24] 2464 	mov	r5,dph
      003BA6 D0 06            [24] 2465 	pop	ar6
      003BA8 D0 07            [24] 2466 	pop	ar7
                                   2467 ;	syntax.c:365: if (pointer == NULL){
      003BAA EC               [12] 2468 	mov	a,r4
      003BAB 4D               [12] 2469 	orl	a,r5
      003BAC 70 3C            [24] 2470 	jnz	00119$
                                   2471 ;	syntax.c:366: printf("\n\r| ERROR: Memory allocation failed                  |");
      003BAE C0 07            [24] 2472 	push	ar7
      003BB0 C0 06            [24] 2473 	push	ar6
      003BB2 C0 05            [24] 2474 	push	ar5
      003BB4 C0 04            [24] 2475 	push	ar4
      003BB6 74 5E            [12] 2476 	mov	a,#___str_38
      003BB8 C0 E0            [24] 2477 	push	acc
      003BBA 74 5C            [12] 2478 	mov	a,#(___str_38 >> 8)
      003BBC C0 E0            [24] 2479 	push	acc
      003BBE 74 80            [12] 2480 	mov	a,#0x80
      003BC0 C0 E0            [24] 2481 	push	acc
      003BC2 12 4B AD         [24] 2482 	lcall	_printf
      003BC5 15 81            [12] 2483 	dec	sp
      003BC7 15 81            [12] 2484 	dec	sp
      003BC9 15 81            [12] 2485 	dec	sp
                                   2486 ;	syntax.c:367: printf("\n\r| Try smaller size with '+' command                |");
      003BCB 74 95            [12] 2487 	mov	a,#___str_39
      003BCD C0 E0            [24] 2488 	push	acc
      003BCF 74 5C            [12] 2489 	mov	a,#(___str_39 >> 8)
      003BD1 C0 E0            [24] 2490 	push	acc
      003BD3 74 80            [12] 2491 	mov	a,#0x80
      003BD5 C0 E0            [24] 2492 	push	acc
      003BD7 12 4B AD         [24] 2493 	lcall	_printf
      003BDA 15 81            [12] 2494 	dec	sp
      003BDC 15 81            [12] 2495 	dec	sp
      003BDE 15 81            [12] 2496 	dec	sp
      003BE0 D0 04            [24] 2497 	pop	ar4
      003BE2 D0 05            [24] 2498 	pop	ar5
      003BE4 D0 06            [24] 2499 	pop	ar6
      003BE6 D0 07            [24] 2500 	pop	ar7
      003BE8 80 25            [24] 2501 	sjmp	00120$
      003BEA                       2502 00119$:
                                   2503 ;	syntax.c:369: printf("\n\r| SUCCESS: Buffer created successfully            |");
      003BEA C0 07            [24] 2504 	push	ar7
      003BEC C0 06            [24] 2505 	push	ar6
      003BEE C0 05            [24] 2506 	push	ar5
      003BF0 C0 04            [24] 2507 	push	ar4
      003BF2 74 CC            [12] 2508 	mov	a,#___str_40
      003BF4 C0 E0            [24] 2509 	push	acc
      003BF6 74 5C            [12] 2510 	mov	a,#(___str_40 >> 8)
      003BF8 C0 E0            [24] 2511 	push	acc
      003BFA 74 80            [12] 2512 	mov	a,#0x80
      003BFC C0 E0            [24] 2513 	push	acc
      003BFE 12 4B AD         [24] 2514 	lcall	_printf
      003C01 15 81            [12] 2515 	dec	sp
      003C03 15 81            [12] 2516 	dec	sp
      003C05 15 81            [12] 2517 	dec	sp
      003C07 D0 04            [24] 2518 	pop	ar4
      003C09 D0 05            [24] 2519 	pop	ar5
      003C0B D0 06            [24] 2520 	pop	ar6
      003C0D D0 07            [24] 2521 	pop	ar7
      003C0F                       2522 00120$:
                                   2523 ;	syntax.c:371: printf("\n\r+--------------------------------------------------+\n\r");
      003C0F C0 07            [24] 2524 	push	ar7
      003C11 C0 06            [24] 2525 	push	ar6
      003C13 C0 05            [24] 2526 	push	ar5
      003C15 C0 04            [24] 2527 	push	ar4
      003C17 74 61            [12] 2528 	mov	a,#___str_2
      003C19 C0 E0            [24] 2529 	push	acc
      003C1B 74 56            [12] 2530 	mov	a,#(___str_2 >> 8)
      003C1D C0 E0            [24] 2531 	push	acc
      003C1F 74 80            [12] 2532 	mov	a,#0x80
      003C21 C0 E0            [24] 2533 	push	acc
      003C23 12 4B AD         [24] 2534 	lcall	_printf
      003C26 15 81            [12] 2535 	dec	sp
      003C28 15 81            [12] 2536 	dec	sp
      003C2A 15 81            [12] 2537 	dec	sp
      003C2C D0 04            [24] 2538 	pop	ar4
      003C2E D0 05            [24] 2539 	pop	ar5
      003C30 D0 06            [24] 2540 	pop	ar6
      003C32 D0 07            [24] 2541 	pop	ar7
                                   2542 ;	syntax.c:373: node_t node = {index_of_buffers, pointer, temp_value};
      003C34 90 1C D7         [24] 2543 	mov	dptr,#_index_of_buffers
      003C37 E0               [24] 2544 	movx	a,@dptr
      003C38 90 06 79         [24] 2545 	mov	dptr,#_get_command_node_196610_120
      003C3B F0               [24] 2546 	movx	@dptr,a
      003C3C 7B 00            [12] 2547 	mov	r3,#0x00
      003C3E 90 06 7A         [24] 2548 	mov	dptr,#(_get_command_node_196610_120 + 0x0001)
      003C41 EC               [12] 2549 	mov	a,r4
      003C42 F0               [24] 2550 	movx	@dptr,a
      003C43 ED               [12] 2551 	mov	a,r5
      003C44 A3               [24] 2552 	inc	dptr
      003C45 F0               [24] 2553 	movx	@dptr,a
      003C46 EB               [12] 2554 	mov	a,r3
      003C47 A3               [24] 2555 	inc	dptr
      003C48 F0               [24] 2556 	movx	@dptr,a
      003C49 90 06 7D         [24] 2557 	mov	dptr,#(_get_command_node_196610_120 + 0x0004)
      003C4C EE               [12] 2558 	mov	a,r6
      003C4D F0               [24] 2559 	movx	@dptr,a
      003C4E EF               [12] 2560 	mov	a,r7
      003C4F A3               [24] 2561 	inc	dptr
      003C50 F0               [24] 2562 	movx	@dptr,a
                                   2563 ;	syntax.c:374: array_for_nodes[index_of_buffers] = node;
      003C51 90 1C D7         [24] 2564 	mov	dptr,#_index_of_buffers
      003C54 E0               [24] 2565 	movx	a,@dptr
      003C55 75 F0 06         [24] 2566 	mov	b,#0x06
      003C58 A4               [48] 2567 	mul	ab
      003C59 24 03            [12] 2568 	add	a,#_array_for_nodes
      003C5B FE               [12] 2569 	mov	r6,a
      003C5C 74 04            [12] 2570 	mov	a,#(_array_for_nodes >> 8)
      003C5E 35 F0            [12] 2571 	addc	a,b
      003C60 FF               [12] 2572 	mov	r7,a
      003C61 7D 00            [12] 2573 	mov	r5,#0x00
      003C63 90 1C 76         [24] 2574 	mov	dptr,#___memcpy_PARM_2
      003C66 74 79            [12] 2575 	mov	a,#_get_command_node_196610_120
      003C68 F0               [24] 2576 	movx	@dptr,a
      003C69 74 06            [12] 2577 	mov	a,#(_get_command_node_196610_120 >> 8)
      003C6B A3               [24] 2578 	inc	dptr
      003C6C F0               [24] 2579 	movx	@dptr,a
      003C6D E4               [12] 2580 	clr	a
      003C6E A3               [24] 2581 	inc	dptr
      003C6F F0               [24] 2582 	movx	@dptr,a
      003C70 90 1C 79         [24] 2583 	mov	dptr,#___memcpy_PARM_3
      003C73 74 06            [12] 2584 	mov	a,#0x06
      003C75 F0               [24] 2585 	movx	@dptr,a
      003C76 E4               [12] 2586 	clr	a
      003C77 A3               [24] 2587 	inc	dptr
      003C78 F0               [24] 2588 	movx	@dptr,a
      003C79 8E 82            [24] 2589 	mov	dpl,r6
      003C7B 8F 83            [24] 2590 	mov	dph,r7
      003C7D 8D F0            [24] 2591 	mov	b,r5
      003C7F 12 46 D0         [24] 2592 	lcall	___memcpy
                                   2593 ;	syntax.c:375: index_of_buffers++;
      003C82 90 1C D7         [24] 2594 	mov	dptr,#_index_of_buffers
      003C85 E0               [24] 2595 	movx	a,@dptr
      003C86 24 01            [12] 2596 	add	a,#0x01
      003C88 F0               [24] 2597 	movx	@dptr,a
                                   2598 ;	syntax.c:377: break;
      003C89 02 3D 90         [24] 2599 	ljmp	00133$
                                   2600 ;	syntax.c:379: case '-':               // Delete buffer
      003C8C                       2601 00125$:
                                   2602 ;	syntax.c:380: DEBUGPORT(0x02);
      003C8C 90 04 00         [24] 2603 	mov	dptr,#_dataout_PARM_2
      003C8F 74 02            [12] 2604 	mov	a,#0x02
      003C91 F0               [24] 2605 	movx	@dptr,a
      003C92 90 FE FE         [24] 2606 	mov	dptr,#0xfefe
      003C95 12 30 68         [24] 2607 	lcall	_dataout
                                   2608 ;	syntax.c:381: printf("\n\r+----------------BUFFER DELETION------------------+");
      003C98 74 02            [12] 2609 	mov	a,#___str_41
      003C9A C0 E0            [24] 2610 	push	acc
      003C9C 74 5D            [12] 2611 	mov	a,#(___str_41 >> 8)
      003C9E C0 E0            [24] 2612 	push	acc
      003CA0 74 80            [12] 2613 	mov	a,#0x80
      003CA2 C0 E0            [24] 2614 	push	acc
      003CA4 12 4B AD         [24] 2615 	lcall	_printf
      003CA7 15 81            [12] 2616 	dec	sp
      003CA9 15 81            [12] 2617 	dec	sp
      003CAB 15 81            [12] 2618 	dec	sp
                                   2619 ;	syntax.c:382: temp_value = get_number("\n\r| Enter buffer number (0-102): ");
      003CAD 90 5D 38         [24] 2620 	mov	dptr,#___str_42
      003CB0 75 F0 80         [24] 2621 	mov	b,#0x80
      003CB3 12 33 CD         [24] 2622 	lcall	_get_number
      003CB6 AE 82            [24] 2623 	mov	r6,dpl
      003CB8 AF 83            [24] 2624 	mov	r7,dph
                                   2625 ;	syntax.c:384: if(temp_value <= 0) 
      003CBA C3               [12] 2626 	clr	c
      003CBB E4               [12] 2627 	clr	a
      003CBC 9E               [12] 2628 	subb	a,r6
      003CBD 74 80            [12] 2629 	mov	a,#(0x00 ^ 0x80)
      003CBF 8F F0            [24] 2630 	mov	b,r7
      003CC1 63 F0 80         [24] 2631 	xrl	b,#0x80
      003CC4 95 F0            [12] 2632 	subb	a,b
      003CC6 40 19            [24] 2633 	jc	00127$
                                   2634 ;	syntax.c:386: printf("\n\r| ERROR: Cannot delete Buffer 0                    |");
      003CC8 74 5A            [12] 2635 	mov	a,#___str_43
      003CCA C0 E0            [24] 2636 	push	acc
      003CCC 74 5D            [12] 2637 	mov	a,#(___str_43 >> 8)
      003CCE C0 E0            [24] 2638 	push	acc
      003CD0 74 80            [12] 2639 	mov	a,#0x80
      003CD2 C0 E0            [24] 2640 	push	acc
      003CD4 12 4B AD         [24] 2641 	lcall	_printf
      003CD7 15 81            [12] 2642 	dec	sp
      003CD9 15 81            [12] 2643 	dec	sp
      003CDB 15 81            [12] 2644 	dec	sp
                                   2645 ;	syntax.c:387: return -1;
      003CDD 90 FF FF         [24] 2646 	mov	dptr,#0xffff
      003CE0 22               [24] 2647 	ret
      003CE1                       2648 00127$:
                                   2649 ;	syntax.c:389: if(temp_value < 0 || temp_value > 102) 
      003CE1 EF               [12] 2650 	mov	a,r7
      003CE2 20 E7 0F         [24] 2651 	jb	acc.7,00128$
      003CE5 C3               [12] 2652 	clr	c
      003CE6 74 66            [12] 2653 	mov	a,#0x66
      003CE8 9E               [12] 2654 	subb	a,r6
      003CE9 74 80            [12] 2655 	mov	a,#(0x00 ^ 0x80)
      003CEB 8F F0            [24] 2656 	mov	b,r7
      003CED 63 F0 80         [24] 2657 	xrl	b,#0x80
      003CF0 95 F0            [12] 2658 	subb	a,b
      003CF2 50 19            [24] 2659 	jnc	00129$
      003CF4                       2660 00128$:
                                   2661 ;	syntax.c:391: printf("\n\r| ERROR: Invalid delete request                  |");
      003CF4 74 91            [12] 2662 	mov	a,#___str_44
      003CF6 C0 E0            [24] 2663 	push	acc
      003CF8 74 5D            [12] 2664 	mov	a,#(___str_44 >> 8)
      003CFA C0 E0            [24] 2665 	push	acc
      003CFC 74 80            [12] 2666 	mov	a,#0x80
      003CFE C0 E0            [24] 2667 	push	acc
      003D00 12 4B AD         [24] 2668 	lcall	_printf
      003D03 15 81            [12] 2669 	dec	sp
      003D05 15 81            [12] 2670 	dec	sp
      003D07 15 81            [12] 2671 	dec	sp
                                   2672 ;	syntax.c:392: return -1;
      003D09 90 FF FF         [24] 2673 	mov	dptr,#0xffff
      003D0C 22               [24] 2674 	ret
      003D0D                       2675 00129$:
                                   2676 ;	syntax.c:396: array_for_nodes[temp_value].size = 0;
      003D0D 90 1C 8A         [24] 2677 	mov	dptr,#__mulint_PARM_2
      003D10 EE               [12] 2678 	mov	a,r6
      003D11 F0               [24] 2679 	movx	@dptr,a
      003D12 EF               [12] 2680 	mov	a,r7
      003D13 A3               [24] 2681 	inc	dptr
      003D14 F0               [24] 2682 	movx	@dptr,a
      003D15 90 00 06         [24] 2683 	mov	dptr,#0x0006
      003D18 C0 07            [24] 2684 	push	ar7
      003D1A C0 06            [24] 2685 	push	ar6
      003D1C 12 49 2C         [24] 2686 	lcall	__mulint
      003D1F AC 82            [24] 2687 	mov	r4,dpl
      003D21 AD 83            [24] 2688 	mov	r5,dph
      003D23 EC               [12] 2689 	mov	a,r4
      003D24 24 03            [12] 2690 	add	a,#_array_for_nodes
      003D26 FC               [12] 2691 	mov	r4,a
      003D27 ED               [12] 2692 	mov	a,r5
      003D28 34 04            [12] 2693 	addc	a,#(_array_for_nodes >> 8)
      003D2A FD               [12] 2694 	mov	r5,a
      003D2B 8C 82            [24] 2695 	mov	dpl,r4
      003D2D 8D 83            [24] 2696 	mov	dph,r5
      003D2F A3               [24] 2697 	inc	dptr
      003D30 A3               [24] 2698 	inc	dptr
      003D31 A3               [24] 2699 	inc	dptr
      003D32 A3               [24] 2700 	inc	dptr
      003D33 E4               [12] 2701 	clr	a
      003D34 F0               [24] 2702 	movx	@dptr,a
      003D35 A3               [24] 2703 	inc	dptr
      003D36 F0               [24] 2704 	movx	@dptr,a
                                   2705 ;	syntax.c:397: free(array_for_nodes[temp_value].data_pointer);
      003D37 8C 82            [24] 2706 	mov	dpl,r4
      003D39 8D 83            [24] 2707 	mov	dph,r5
      003D3B A3               [24] 2708 	inc	dptr
      003D3C E0               [24] 2709 	movx	a,@dptr
      003D3D FB               [12] 2710 	mov	r3,a
      003D3E A3               [24] 2711 	inc	dptr
      003D3F E0               [24] 2712 	movx	a,@dptr
      003D40 FC               [12] 2713 	mov	r4,a
      003D41 A3               [24] 2714 	inc	dptr
      003D42 E0               [24] 2715 	movx	a,@dptr
      003D43 FD               [12] 2716 	mov	r5,a
      003D44 8B 82            [24] 2717 	mov	dpl,r3
      003D46 8C 83            [24] 2718 	mov	dph,r4
      003D48 8D F0            [24] 2719 	mov	b,r5
      003D4A 12 45 79         [24] 2720 	lcall	_free
      003D4D D0 06            [24] 2721 	pop	ar6
      003D4F D0 07            [24] 2722 	pop	ar7
                                   2723 ;	syntax.c:398: printf("\n\r| SUCCESS: Buffer %-2d deleted                     |", temp_value);
      003D51 C0 06            [24] 2724 	push	ar6
      003D53 C0 07            [24] 2725 	push	ar7
      003D55 74 C6            [12] 2726 	mov	a,#___str_45
      003D57 C0 E0            [24] 2727 	push	acc
      003D59 74 5D            [12] 2728 	mov	a,#(___str_45 >> 8)
      003D5B C0 E0            [24] 2729 	push	acc
      003D5D 74 80            [12] 2730 	mov	a,#0x80
      003D5F C0 E0            [24] 2731 	push	acc
      003D61 12 4B AD         [24] 2732 	lcall	_printf
      003D64 E5 81            [12] 2733 	mov	a,sp
      003D66 24 FB            [12] 2734 	add	a,#0xfb
      003D68 F5 81            [12] 2735 	mov	sp,a
                                   2736 ;	syntax.c:400: printf("\n\r+--------------------------------------------------+\n\r");
      003D6A 74 61            [12] 2737 	mov	a,#___str_2
      003D6C C0 E0            [24] 2738 	push	acc
      003D6E 74 56            [12] 2739 	mov	a,#(___str_2 >> 8)
      003D70 C0 E0            [24] 2740 	push	acc
      003D72 74 80            [12] 2741 	mov	a,#0x80
      003D74 C0 E0            [24] 2742 	push	acc
      003D76 12 4B AD         [24] 2743 	lcall	_printf
      003D79 15 81            [12] 2744 	dec	sp
      003D7B 15 81            [12] 2745 	dec	sp
      003D7D 15 81            [12] 2746 	dec	sp
                                   2747 ;	syntax.c:401: break;
                                   2748 ;	syntax.c:403: case '=':               // Display Buffer 0
      003D7F 80 0F            [24] 2749 	sjmp	00133$
      003D81                       2750 00132$:
                                   2751 ;	syntax.c:404: DEBUGPORT(0x03);
      003D81 90 04 00         [24] 2752 	mov	dptr,#_dataout_PARM_2
      003D84 74 03            [12] 2753 	mov	a,#0x03
      003D86 F0               [24] 2754 	movx	@dptr,a
      003D87 90 FE FE         [24] 2755 	mov	dptr,#0xfefe
      003D8A 12 30 68         [24] 2756 	lcall	_dataout
                                   2757 ;	syntax.c:405: buffer0_dump();
      003D8D 12 3D 94         [24] 2758 	lcall	_buffer0_dump
                                   2759 ;	syntax.c:407: }
      003D90                       2760 00133$:
                                   2761 ;	syntax.c:408: return 0;
      003D90 90 00 00         [24] 2762 	mov	dptr,#0x0000
                                   2763 ;	syntax.c:409: }
      003D93 22               [24] 2764 	ret
                                   2765 ;------------------------------------------------------------
                                   2766 ;Allocation info for local variables in function 'buffer0_dump'
                                   2767 ;------------------------------------------------------------
                                   2768 ;sloc0                     Allocated with name '_buffer0_dump_sloc0_1_0'
                                   2769 ;sloc1                     Allocated with name '_buffer0_dump_sloc1_1_0'
                                   2770 ;sloc2                     Allocated with name '_buffer0_dump_sloc2_1_0'
                                   2771 ;rd_ptr                    Allocated with name '_buffer0_dump_rd_ptr_65537_127'
                                   2772 ;remaining_bytes           Allocated with name '_buffer0_dump_remaining_bytes_65537_127'
                                   2773 ;offset                    Allocated with name '_buffer0_dump_offset_131073_128'
                                   2774 ;i                         Allocated with name '_buffer0_dump_i_262145_130'
                                   2775 ;i                         Allocated with name '_buffer0_dump_i_262145_132'
                                   2776 ;------------------------------------------------------------
                                   2777 ;	syntax.c:417: void buffer0_dump(void) {
                                   2778 ;	-----------------------------------------
                                   2779 ;	 function buffer0_dump
                                   2780 ;	-----------------------------------------
      003D94                       2781 _buffer0_dump:
                                   2782 ;	syntax.c:418: printf("\n\r+---------------BUFFER 0 CONTENTS-----------------+");
      003D94 74 FD            [12] 2783 	mov	a,#___str_46
      003D96 C0 E0            [24] 2784 	push	acc
      003D98 74 5D            [12] 2785 	mov	a,#(___str_46 >> 8)
      003D9A C0 E0            [24] 2786 	push	acc
      003D9C 74 80            [12] 2787 	mov	a,#0x80
      003D9E C0 E0            [24] 2788 	push	acc
      003DA0 12 4B AD         [24] 2789 	lcall	_printf
      003DA3 15 81            [12] 2790 	dec	sp
      003DA5 15 81            [12] 2791 	dec	sp
      003DA7 15 81            [12] 2792 	dec	sp
                                   2793 ;	syntax.c:419: printf("\n\r| Address    | Data                               |");
      003DA9 74 33            [12] 2794 	mov	a,#___str_47
      003DAB C0 E0            [24] 2795 	push	acc
      003DAD 74 5E            [12] 2796 	mov	a,#(___str_47 >> 8)
      003DAF C0 E0            [24] 2797 	push	acc
      003DB1 74 80            [12] 2798 	mov	a,#0x80
      003DB3 C0 E0            [24] 2799 	push	acc
      003DB5 12 4B AD         [24] 2800 	lcall	_printf
      003DB8 15 81            [12] 2801 	dec	sp
      003DBA 15 81            [12] 2802 	dec	sp
      003DBC 15 81            [12] 2803 	dec	sp
                                   2804 ;	syntax.c:420: printf("\n\r|------------|---------------------------------------|");
      003DBE 74 69            [12] 2805 	mov	a,#___str_48
      003DC0 C0 E0            [24] 2806 	push	acc
      003DC2 74 5E            [12] 2807 	mov	a,#(___str_48 >> 8)
      003DC4 C0 E0            [24] 2808 	push	acc
      003DC6 74 80            [12] 2809 	mov	a,#0x80
      003DC8 C0 E0            [24] 2810 	push	acc
      003DCA 12 4B AD         [24] 2811 	lcall	_printf
      003DCD 15 81            [12] 2812 	dec	sp
      003DCF 15 81            [12] 2813 	dec	sp
      003DD1 15 81            [12] 2814 	dec	sp
                                   2815 ;	syntax.c:421: printf("\n\r");
      003DD3 74 A2            [12] 2816 	mov	a,#___str_49
      003DD5 C0 E0            [24] 2817 	push	acc
      003DD7 74 5E            [12] 2818 	mov	a,#(___str_49 >> 8)
      003DD9 C0 E0            [24] 2819 	push	acc
      003DDB 74 80            [12] 2820 	mov	a,#0x80
      003DDD C0 E0            [24] 2821 	push	acc
      003DDF 12 4B AD         [24] 2822 	lcall	_printf
      003DE2 15 81            [12] 2823 	dec	sp
      003DE4 15 81            [12] 2824 	dec	sp
      003DE6 15 81            [12] 2825 	dec	sp
                                   2826 ;	syntax.c:423: if(array_for_nodes[0].data_pointer == NULL) 
      003DE8 90 04 04         [24] 2827 	mov	dptr,#(_array_for_nodes + 0x0001)
      003DEB E0               [24] 2828 	movx	a,@dptr
      003DEC FD               [12] 2829 	mov	r5,a
      003DED A3               [24] 2830 	inc	dptr
      003DEE E0               [24] 2831 	movx	a,@dptr
      003DEF FE               [12] 2832 	mov	r6,a
      003DF0 A3               [24] 2833 	inc	dptr
      003DF1 E0               [24] 2834 	movx	a,@dptr
      003DF2 FF               [12] 2835 	mov	r7,a
      003DF3 ED               [12] 2836 	mov	a,r5
      003DF4 4E               [12] 2837 	orl	a,r6
      003DF5 70 16            [24] 2838 	jnz	00102$
                                   2839 ;	syntax.c:424: {printf("BUFFER 0 DOES NOT EXIST\n\r");
      003DF7 74 A5            [12] 2840 	mov	a,#___str_50
      003DF9 C0 E0            [24] 2841 	push	acc
      003DFB 74 5E            [12] 2842 	mov	a,#(___str_50 >> 8)
      003DFD C0 E0            [24] 2843 	push	acc
      003DFF 74 80            [12] 2844 	mov	a,#0x80
      003E01 C0 E0            [24] 2845 	push	acc
      003E03 12 4B AD         [24] 2846 	lcall	_printf
      003E06 15 81            [12] 2847 	dec	sp
      003E08 15 81            [12] 2848 	dec	sp
      003E0A 15 81            [12] 2849 	dec	sp
                                   2850 ;	syntax.c:425: return;
      003E0C 22               [24] 2851 	ret
      003E0D                       2852 00102$:
                                   2853 ;	syntax.c:428: uint16_t remaining_bytes = array_for_nodes[0].size;
      003E0D 90 04 07         [24] 2854 	mov	dptr,#(_array_for_nodes + 0x0004)
      003E10 E0               [24] 2855 	movx	a,@dptr
      003E11 FB               [12] 2856 	mov	r3,a
      003E12 A3               [24] 2857 	inc	dptr
      003E13 E0               [24] 2858 	movx	a,@dptr
      003E14 FC               [12] 2859 	mov	r4,a
                                   2860 ;	syntax.c:431: for (uint16_t offset = 0; offset < total_number_of_storage; offset += 16) {
      003E15 90 06 7F         [24] 2861 	mov	dptr,#_buffer0_dump_offset_131073_128
      003E18 E4               [12] 2862 	clr	a
      003E19 F0               [24] 2863 	movx	@dptr,a
      003E1A A3               [24] 2864 	inc	dptr
      003E1B F0               [24] 2865 	movx	@dptr,a
      003E1C                       2866 00114$:
      003E1C C0 05            [24] 2867 	push	ar5
      003E1E C0 06            [24] 2868 	push	ar6
      003E20 C0 07            [24] 2869 	push	ar7
      003E22 90 06 7F         [24] 2870 	mov	dptr,#_buffer0_dump_offset_131073_128
      003E25 E0               [24] 2871 	movx	a,@dptr
      003E26 F9               [12] 2872 	mov	r1,a
      003E27 A3               [24] 2873 	inc	dptr
      003E28 E0               [24] 2874 	movx	a,@dptr
      003E29 FA               [12] 2875 	mov	r2,a
      003E2A 90 1C D9         [24] 2876 	mov	dptr,#_total_number_of_storage
      003E2D E0               [24] 2877 	movx	a,@dptr
      003E2E F8               [12] 2878 	mov	r0,a
      003E2F 7F 00            [12] 2879 	mov	r7,#0x00
      003E31 C3               [12] 2880 	clr	c
      003E32 E9               [12] 2881 	mov	a,r1
      003E33 98               [12] 2882 	subb	a,r0
      003E34 EA               [12] 2883 	mov	a,r2
      003E35 9F               [12] 2884 	subb	a,r7
      003E36 D0 07            [24] 2885 	pop	ar7
      003E38 D0 06            [24] 2886 	pop	ar6
      003E3A D0 05            [24] 2887 	pop	ar5
      003E3C 40 03            [24] 2888 	jc	00154$
      003E3E 02 3F AC         [24] 2889 	ljmp	00105$
      003E41                       2890 00154$:
                                   2891 ;	syntax.c:433: printf("\n\r| %04X      |", (uint16_t)(uintptr_t)rd_ptr);
      003E41 C0 03            [24] 2892 	push	ar3
      003E43 C0 04            [24] 2893 	push	ar4
      003E45 8D 00            [24] 2894 	mov	ar0,r5
      003E47 8E 03            [24] 2895 	mov	ar3,r6
      003E49 8F 04            [24] 2896 	mov	ar4,r7
      003E4B C0 07            [24] 2897 	push	ar7
      003E4D C0 06            [24] 2898 	push	ar6
      003E4F C0 05            [24] 2899 	push	ar5
      003E51 C0 04            [24] 2900 	push	ar4
      003E53 C0 03            [24] 2901 	push	ar3
      003E55 C0 02            [24] 2902 	push	ar2
      003E57 C0 01            [24] 2903 	push	ar1
      003E59 C0 00            [24] 2904 	push	ar0
      003E5B C0 03            [24] 2905 	push	ar3
      003E5D 74 BF            [12] 2906 	mov	a,#___str_51
      003E5F C0 E0            [24] 2907 	push	acc
      003E61 74 5E            [12] 2908 	mov	a,#(___str_51 >> 8)
      003E63 C0 E0            [24] 2909 	push	acc
      003E65 74 80            [12] 2910 	mov	a,#0x80
      003E67 C0 E0            [24] 2911 	push	acc
      003E69 12 4B AD         [24] 2912 	lcall	_printf
      003E6C E5 81            [12] 2913 	mov	a,sp
      003E6E 24 FB            [12] 2914 	add	a,#0xfb
      003E70 F5 81            [12] 2915 	mov	sp,a
      003E72 D0 01            [24] 2916 	pop	ar1
      003E74 D0 02            [24] 2917 	pop	ar2
      003E76 D0 03            [24] 2918 	pop	ar3
      003E78 D0 04            [24] 2919 	pop	ar4
      003E7A D0 05            [24] 2920 	pop	ar5
      003E7C D0 06            [24] 2921 	pop	ar6
      003E7E D0 07            [24] 2922 	pop	ar7
                                   2923 ;	syntax.c:436: for (int i = 0; i < 16 && (offset + i) < remaining_bytes; i++) {
      003E80 89 13            [24] 2924 	mov	_buffer0_dump_sloc0_1_0,r1
      003E82 8A 14            [24] 2925 	mov	(_buffer0_dump_sloc0_1_0 + 1),r2
      003E84 8D 15            [24] 2926 	mov	_buffer0_dump_sloc1_1_0,r5
      003E86 8E 16            [24] 2927 	mov	(_buffer0_dump_sloc1_1_0 + 1),r6
      003E88 8F 17            [24] 2928 	mov	(_buffer0_dump_sloc1_1_0 + 2),r7
      003E8A E4               [12] 2929 	clr	a
      003E8B F5 18            [12] 2930 	mov	_buffer0_dump_sloc2_1_0,a
      003E8D F5 19            [12] 2931 	mov	(_buffer0_dump_sloc2_1_0 + 1),a
                                   2932 ;	syntax.c:449: printf("\n\r+--------------------------------------------------+\n\r");
      003E8F D0 04            [24] 2933 	pop	ar4
      003E91 D0 03            [24] 2934 	pop	ar3
                                   2935 ;	syntax.c:436: for (int i = 0; i < 16 && (offset + i) < remaining_bytes; i++) {
      003E93                       2936 00108$:
      003E93 C3               [12] 2937 	clr	c
      003E94 E5 18            [12] 2938 	mov	a,_buffer0_dump_sloc2_1_0
      003E96 94 10            [12] 2939 	subb	a,#0x10
      003E98 E5 19            [12] 2940 	mov	a,(_buffer0_dump_sloc2_1_0 + 1)
      003E9A 64 80            [12] 2941 	xrl	a,#0x80
      003E9C 94 80            [12] 2942 	subb	a,#0x80
      003E9E 50 70            [24] 2943 	jnc	00103$
      003EA0 C0 05            [24] 2944 	push	ar5
      003EA2 C0 06            [24] 2945 	push	ar6
      003EA4 C0 07            [24] 2946 	push	ar7
      003EA6 A9 13            [24] 2947 	mov	r1,_buffer0_dump_sloc0_1_0
      003EA8 AA 14            [24] 2948 	mov	r2,(_buffer0_dump_sloc0_1_0 + 1)
      003EAA A8 18            [24] 2949 	mov	r0,_buffer0_dump_sloc2_1_0
      003EAC AF 19            [24] 2950 	mov	r7,(_buffer0_dump_sloc2_1_0 + 1)
      003EAE E8               [12] 2951 	mov	a,r0
      003EAF 29               [12] 2952 	add	a,r1
      003EB0 F9               [12] 2953 	mov	r1,a
      003EB1 EF               [12] 2954 	mov	a,r7
      003EB2 3A               [12] 2955 	addc	a,r2
      003EB3 FA               [12] 2956 	mov	r2,a
      003EB4 C3               [12] 2957 	clr	c
      003EB5 E9               [12] 2958 	mov	a,r1
      003EB6 9B               [12] 2959 	subb	a,r3
      003EB7 EA               [12] 2960 	mov	a,r2
      003EB8 9C               [12] 2961 	subb	a,r4
      003EB9 D0 07            [24] 2962 	pop	ar7
      003EBB D0 06            [24] 2963 	pop	ar6
      003EBD D0 05            [24] 2964 	pop	ar5
      003EBF 50 4F            [24] 2965 	jnc	00103$
                                   2966 ;	syntax.c:437: printf(" %02X", rd_ptr[i]);
      003EC1 E5 18            [12] 2967 	mov	a,_buffer0_dump_sloc2_1_0
      003EC3 25 15            [12] 2968 	add	a,_buffer0_dump_sloc1_1_0
      003EC5 F8               [12] 2969 	mov	r0,a
      003EC6 E5 19            [12] 2970 	mov	a,(_buffer0_dump_sloc2_1_0 + 1)
      003EC8 35 16            [12] 2971 	addc	a,(_buffer0_dump_sloc1_1_0 + 1)
      003ECA F9               [12] 2972 	mov	r1,a
      003ECB AA 17            [24] 2973 	mov	r2,(_buffer0_dump_sloc1_1_0 + 2)
      003ECD 88 82            [24] 2974 	mov	dpl,r0
      003ECF 89 83            [24] 2975 	mov	dph,r1
      003ED1 8A F0            [24] 2976 	mov	b,r2
      003ED3 12 55 CF         [24] 2977 	lcall	__gptrget
      003ED6 F8               [12] 2978 	mov	r0,a
      003ED7 7A 00            [12] 2979 	mov	r2,#0x00
      003ED9 C0 07            [24] 2980 	push	ar7
      003EDB C0 06            [24] 2981 	push	ar6
      003EDD C0 05            [24] 2982 	push	ar5
      003EDF C0 04            [24] 2983 	push	ar4
      003EE1 C0 03            [24] 2984 	push	ar3
      003EE3 C0 00            [24] 2985 	push	ar0
      003EE5 C0 02            [24] 2986 	push	ar2
      003EE7 74 CF            [12] 2987 	mov	a,#___str_52
      003EE9 C0 E0            [24] 2988 	push	acc
      003EEB 74 5E            [12] 2989 	mov	a,#(___str_52 >> 8)
      003EED C0 E0            [24] 2990 	push	acc
      003EEF 74 80            [12] 2991 	mov	a,#0x80
      003EF1 C0 E0            [24] 2992 	push	acc
      003EF3 12 4B AD         [24] 2993 	lcall	_printf
      003EF6 E5 81            [12] 2994 	mov	a,sp
      003EF8 24 FB            [12] 2995 	add	a,#0xfb
      003EFA F5 81            [12] 2996 	mov	sp,a
      003EFC D0 03            [24] 2997 	pop	ar3
      003EFE D0 04            [24] 2998 	pop	ar4
      003F00 D0 05            [24] 2999 	pop	ar5
      003F02 D0 06            [24] 3000 	pop	ar6
      003F04 D0 07            [24] 3001 	pop	ar7
                                   3002 ;	syntax.c:436: for (int i = 0; i < 16 && (offset + i) < remaining_bytes; i++) {
      003F06 05 18            [12] 3003 	inc	_buffer0_dump_sloc2_1_0
      003F08 E4               [12] 3004 	clr	a
      003F09 B5 18 87         [24] 3005 	cjne	a,_buffer0_dump_sloc2_1_0,00108$
      003F0C 05 19            [12] 3006 	inc	(_buffer0_dump_sloc2_1_0 + 1)
      003F0E 80 83            [24] 3007 	sjmp	00108$
      003F10                       3008 00103$:
                                   3009 ;	syntax.c:441: for (int i = remaining_bytes - offset; i < 16; i++) {
      003F10 90 06 7F         [24] 3010 	mov	dptr,#_buffer0_dump_offset_131073_128
      003F13 E0               [24] 3011 	movx	a,@dptr
      003F14 F9               [12] 3012 	mov	r1,a
      003F15 A3               [24] 3013 	inc	dptr
      003F16 E0               [24] 3014 	movx	a,@dptr
      003F17 FA               [12] 3015 	mov	r2,a
      003F18 EB               [12] 3016 	mov	a,r3
      003F19 C3               [12] 3017 	clr	c
      003F1A 99               [12] 3018 	subb	a,r1
      003F1B F9               [12] 3019 	mov	r1,a
      003F1C EC               [12] 3020 	mov	a,r4
      003F1D 9A               [12] 3021 	subb	a,r2
      003F1E FA               [12] 3022 	mov	r2,a
      003F1F                       3023 00111$:
      003F1F C3               [12] 3024 	clr	c
      003F20 E9               [12] 3025 	mov	a,r1
      003F21 94 10            [12] 3026 	subb	a,#0x10
      003F23 EA               [12] 3027 	mov	a,r2
      003F24 64 80            [12] 3028 	xrl	a,#0x80
      003F26 94 80            [12] 3029 	subb	a,#0x80
      003F28 50 38            [24] 3030 	jnc	00104$
                                   3031 ;	syntax.c:442: printf("   ");
      003F2A C0 07            [24] 3032 	push	ar7
      003F2C C0 06            [24] 3033 	push	ar6
      003F2E C0 05            [24] 3034 	push	ar5
      003F30 C0 04            [24] 3035 	push	ar4
      003F32 C0 03            [24] 3036 	push	ar3
      003F34 C0 02            [24] 3037 	push	ar2
      003F36 C0 01            [24] 3038 	push	ar1
      003F38 74 D5            [12] 3039 	mov	a,#___str_53
      003F3A C0 E0            [24] 3040 	push	acc
      003F3C 74 5E            [12] 3041 	mov	a,#(___str_53 >> 8)
      003F3E C0 E0            [24] 3042 	push	acc
      003F40 74 80            [12] 3043 	mov	a,#0x80
      003F42 C0 E0            [24] 3044 	push	acc
      003F44 12 4B AD         [24] 3045 	lcall	_printf
      003F47 15 81            [12] 3046 	dec	sp
      003F49 15 81            [12] 3047 	dec	sp
      003F4B 15 81            [12] 3048 	dec	sp
      003F4D D0 01            [24] 3049 	pop	ar1
      003F4F D0 02            [24] 3050 	pop	ar2
      003F51 D0 03            [24] 3051 	pop	ar3
      003F53 D0 04            [24] 3052 	pop	ar4
      003F55 D0 05            [24] 3053 	pop	ar5
      003F57 D0 06            [24] 3054 	pop	ar6
      003F59 D0 07            [24] 3055 	pop	ar7
                                   3056 ;	syntax.c:441: for (int i = remaining_bytes - offset; i < 16; i++) {
      003F5B 09               [12] 3057 	inc	r1
      003F5C B9 00 C0         [24] 3058 	cjne	r1,#0x00,00111$
      003F5F 0A               [12] 3059 	inc	r2
      003F60 80 BD            [24] 3060 	sjmp	00111$
      003F62                       3061 00104$:
                                   3062 ;	syntax.c:445: printf(" |");
      003F62 C0 07            [24] 3063 	push	ar7
      003F64 C0 06            [24] 3064 	push	ar6
      003F66 C0 05            [24] 3065 	push	ar5
      003F68 C0 04            [24] 3066 	push	ar4
      003F6A C0 03            [24] 3067 	push	ar3
      003F6C 74 D9            [12] 3068 	mov	a,#___str_54
      003F6E C0 E0            [24] 3069 	push	acc
      003F70 74 5E            [12] 3070 	mov	a,#(___str_54 >> 8)
      003F72 C0 E0            [24] 3071 	push	acc
      003F74 74 80            [12] 3072 	mov	a,#0x80
      003F76 C0 E0            [24] 3073 	push	acc
      003F78 12 4B AD         [24] 3074 	lcall	_printf
      003F7B 15 81            [12] 3075 	dec	sp
      003F7D 15 81            [12] 3076 	dec	sp
      003F7F 15 81            [12] 3077 	dec	sp
      003F81 D0 03            [24] 3078 	pop	ar3
      003F83 D0 04            [24] 3079 	pop	ar4
      003F85 D0 05            [24] 3080 	pop	ar5
      003F87 D0 06            [24] 3081 	pop	ar6
      003F89 D0 07            [24] 3082 	pop	ar7
                                   3083 ;	syntax.c:446: rd_ptr += 16;
      003F8B 74 10            [12] 3084 	mov	a,#0x10
      003F8D 2D               [12] 3085 	add	a,r5
      003F8E FD               [12] 3086 	mov	r5,a
      003F8F E4               [12] 3087 	clr	a
      003F90 3E               [12] 3088 	addc	a,r6
      003F91 FE               [12] 3089 	mov	r6,a
                                   3090 ;	syntax.c:431: for (uint16_t offset = 0; offset < total_number_of_storage; offset += 16) {
      003F92 90 06 7F         [24] 3091 	mov	dptr,#_buffer0_dump_offset_131073_128
      003F95 E0               [24] 3092 	movx	a,@dptr
      003F96 F9               [12] 3093 	mov	r1,a
      003F97 A3               [24] 3094 	inc	dptr
      003F98 E0               [24] 3095 	movx	a,@dptr
      003F99 FA               [12] 3096 	mov	r2,a
      003F9A 74 10            [12] 3097 	mov	a,#0x10
      003F9C 29               [12] 3098 	add	a,r1
      003F9D F9               [12] 3099 	mov	r1,a
      003F9E E4               [12] 3100 	clr	a
      003F9F 3A               [12] 3101 	addc	a,r2
      003FA0 FA               [12] 3102 	mov	r2,a
      003FA1 90 06 7F         [24] 3103 	mov	dptr,#_buffer0_dump_offset_131073_128
      003FA4 E9               [12] 3104 	mov	a,r1
      003FA5 F0               [24] 3105 	movx	@dptr,a
      003FA6 EA               [12] 3106 	mov	a,r2
      003FA7 A3               [24] 3107 	inc	dptr
      003FA8 F0               [24] 3108 	movx	@dptr,a
      003FA9 02 3E 1C         [24] 3109 	ljmp	00114$
      003FAC                       3110 00105$:
                                   3111 ;	syntax.c:449: printf("\n\r+--------------------------------------------------+\n\r");
      003FAC 74 61            [12] 3112 	mov	a,#___str_2
      003FAE C0 E0            [24] 3113 	push	acc
      003FB0 74 56            [12] 3114 	mov	a,#(___str_2 >> 8)
      003FB2 C0 E0            [24] 3115 	push	acc
      003FB4 74 80            [12] 3116 	mov	a,#0x80
      003FB6 C0 E0            [24] 3117 	push	acc
      003FB8 12 4B AD         [24] 3118 	lcall	_printf
      003FBB 15 81            [12] 3119 	dec	sp
      003FBD 15 81            [12] 3120 	dec	sp
      003FBF 15 81            [12] 3121 	dec	sp
                                   3122 ;	syntax.c:450: }
      003FC1 22               [24] 3123 	ret
                                   3124 ;------------------------------------------------------------
                                   3125 ;Allocation info for local variables in function 'main'
                                   3126 ;------------------------------------------------------------
                                   3127 ;sloc0                     Allocated with name '_main_sloc0_1_0'
                                   3128 ;buffer_size               Allocated with name '_main_buffer_size_65537_136'
                                   3129 ;node1                     Allocated with name '_main_node1_65538_140'
                                   3130 ;node2                     Allocated with name '_main_node2_65539_141'
                                   3131 ;wr                        Allocated with name '_main_wr_65540_142'
                                   3132 ;ch                        Allocated with name '_main_ch_131076_143'
                                   3133 ;cha                       Allocated with name '_main_cha_131077_146'
                                   3134 ;temp_buffer_size          Allocated to registers 
                                   3135 ;index_for_write           Allocated to registers 
                                   3136 ;------------------------------------------------------------
                                   3137 ;	syntax.c:458: void main(void)
                                   3138 ;	-----------------------------------------
                                   3139 ;	 function main
                                   3140 ;	-----------------------------------------
      003FC2                       3141 _main:
                                   3142 ;	syntax.c:461: printf("\n\r+==================================================+");
      003FC2 74 DC            [12] 3143 	mov	a,#___str_55
      003FC4 C0 E0            [24] 3144 	push	acc
      003FC6 74 5E            [12] 3145 	mov	a,#(___str_55 >> 8)
      003FC8 C0 E0            [24] 3146 	push	acc
      003FCA 74 80            [12] 3147 	mov	a,#0x80
      003FCC C0 E0            [24] 3148 	push	acc
      003FCE 12 4B AD         [24] 3149 	lcall	_printf
      003FD1 15 81            [12] 3150 	dec	sp
      003FD3 15 81            [12] 3151 	dec	sp
      003FD5 15 81            [12] 3152 	dec	sp
                                   3153 ;	syntax.c:462: printf("\n\r|           BUFFER MANAGEMENT SYSTEM                |");
      003FD7 74 13            [12] 3154 	mov	a,#___str_56
      003FD9 C0 E0            [24] 3155 	push	acc
      003FDB 74 5F            [12] 3156 	mov	a,#(___str_56 >> 8)
      003FDD C0 E0            [24] 3157 	push	acc
      003FDF 74 80            [12] 3158 	mov	a,#0x80
      003FE1 C0 E0            [24] 3159 	push	acc
      003FE3 12 4B AD         [24] 3160 	lcall	_printf
      003FE6 15 81            [12] 3161 	dec	sp
      003FE8 15 81            [12] 3162 	dec	sp
      003FEA 15 81            [12] 3163 	dec	sp
                                   3164 ;	syntax.c:463: printf("\n\r+==================================================+");
      003FEC 74 DC            [12] 3165 	mov	a,#___str_55
      003FEE C0 E0            [24] 3166 	push	acc
      003FF0 74 5E            [12] 3167 	mov	a,#(___str_55 >> 8)
      003FF2 C0 E0            [24] 3168 	push	acc
      003FF4 74 80            [12] 3169 	mov	a,#0x80
      003FF6 C0 E0            [24] 3170 	push	acc
      003FF8 12 4B AD         [24] 3171 	lcall	_printf
      003FFB 15 81            [12] 3172 	dec	sp
      003FFD 15 81            [12] 3173 	dec	sp
      003FFF 15 81            [12] 3174 	dec	sp
                                   3175 ;	syntax.c:467: index_of_buffers = 0;
      004001 90 1C D7         [24] 3176 	mov	dptr,#_index_of_buffers
      004004 E4               [12] 3177 	clr	a
      004005 F0               [24] 3178 	movx	@dptr,a
                                   3179 ;	syntax.c:468: total_number_of_commands = 0;
      004006 90 1C D8         [24] 3180 	mov	dptr,#_total_number_of_commands
      004009 F0               [24] 3181 	movx	@dptr,a
                                   3182 ;	syntax.c:469: total_number_of_storage = 0;
      00400A 90 1C D9         [24] 3183 	mov	dptr,#_total_number_of_storage
      00400D F0               [24] 3184 	movx	@dptr,a
                                   3185 ;	syntax.c:470: recent_commands = 0;
      00400E 90 1C DA         [24] 3186 	mov	dptr,#_recent_commands
      004011 F0               [24] 3187 	movx	@dptr,a
                                   3188 ;	syntax.c:471: recent_storage = 0;
      004012 90 1C DB         [24] 3189 	mov	dptr,#_recent_storage
      004015 F0               [24] 3190 	movx	@dptr,a
                                   3191 ;	syntax.c:472: recived_bytes = 0;
      004016 90 1C DC         [24] 3192 	mov	dptr,#_recived_bytes
      004019 F0               [24] 3193 	movx	@dptr,a
                                   3194 ;	syntax.c:475: do{
      00401A                       3195 00108$:
                                   3196 ;	syntax.c:477: buffer_size = get_buf_value("\n\r| Enter initial buffer size (32-5120): ", upper_default, LOWER_DEFAULT);
      00401A 90 06 5D         [24] 3197 	mov	dptr,#_get_buf_value_PARM_2
      00401D 74 E0            [12] 3198 	mov	a,#0xe0
      00401F F0               [24] 3199 	movx	@dptr,a
      004020 74 15            [12] 3200 	mov	a,#0x15
      004022 A3               [24] 3201 	inc	dptr
      004023 F0               [24] 3202 	movx	@dptr,a
      004024 90 06 5F         [24] 3203 	mov	dptr,#_get_buf_value_PARM_3
      004027 74 20            [12] 3204 	mov	a,#0x20
      004029 F0               [24] 3205 	movx	@dptr,a
      00402A E4               [12] 3206 	clr	a
      00402B A3               [24] 3207 	inc	dptr
      00402C F0               [24] 3208 	movx	@dptr,a
      00402D 90 5F 4B         [24] 3209 	mov	dptr,#___str_57
      004030 75 F0 80         [24] 3210 	mov	b,#0x80
      004033 12 30 C3         [24] 3211 	lcall	_get_buf_value
      004036 AE 82            [24] 3212 	mov	r6,dpl
      004038 AF 83            [24] 3213 	mov	r7,dph
                                   3214 ;	syntax.c:479: if(buffer_size == -1) continue;
      00403A BE FF 06         [24] 3215 	cjne	r6,#0xff,00171$
      00403D BF FF 03         [24] 3216 	cjne	r7,#0xff,00171$
      004040 02 41 BC         [24] 3217 	ljmp	00109$
      004043                       3218 00171$:
                                   3219 ;	syntax.c:482: pointer1 = (__xdata uint8_t *) malloc(buffer_size);
      004043 8E 82            [24] 3220 	mov	dpl,r6
      004045 8F 83            [24] 3221 	mov	dph,r7
      004047 C0 07            [24] 3222 	push	ar7
      004049 C0 06            [24] 3223 	push	ar6
      00404B 12 47 C3         [24] 3224 	lcall	_malloc
      00404E AC 82            [24] 3225 	mov	r4,dpl
      004050 AD 83            [24] 3226 	mov	r5,dph
      004052 D0 06            [24] 3227 	pop	ar6
      004054 D0 07            [24] 3228 	pop	ar7
      004056 90 1C E0         [24] 3229 	mov	dptr,#_pointer1
      004059 EC               [12] 3230 	mov	a,r4
      00405A F0               [24] 3231 	movx	@dptr,a
      00405B ED               [12] 3232 	mov	a,r5
      00405C A3               [24] 3233 	inc	dptr
      00405D F0               [24] 3234 	movx	@dptr,a
                                   3235 ;	syntax.c:483: if (pointer1 == NULL){
      00405E EC               [12] 3236 	mov	a,r4
      00405F 4D               [12] 3237 	orl	a,r5
      004060 70 4A            [24] 3238 	jnz	00104$
                                   3239 ;	syntax.c:484: printf("\n\r| ERROR: Buffer 1 allocation failed                |");
      004062 C0 07            [24] 3240 	push	ar7
      004064 C0 06            [24] 3241 	push	ar6
      004066 74 75            [12] 3242 	mov	a,#___str_58
      004068 C0 E0            [24] 3243 	push	acc
      00406A 74 5F            [12] 3244 	mov	a,#(___str_58 >> 8)
      00406C C0 E0            [24] 3245 	push	acc
      00406E 74 80            [12] 3246 	mov	a,#0x80
      004070 C0 E0            [24] 3247 	push	acc
      004072 12 4B AD         [24] 3248 	lcall	_printf
      004075 15 81            [12] 3249 	dec	sp
      004077 15 81            [12] 3250 	dec	sp
      004079 15 81            [12] 3251 	dec	sp
                                   3252 ;	syntax.c:485: printf("\n\r| Try smaller size                                |");
      00407B 74 AC            [12] 3253 	mov	a,#___str_59
      00407D C0 E0            [24] 3254 	push	acc
      00407F 74 5F            [12] 3255 	mov	a,#(___str_59 >> 8)
      004081 C0 E0            [24] 3256 	push	acc
      004083 74 80            [12] 3257 	mov	a,#0x80
      004085 C0 E0            [24] 3258 	push	acc
      004087 12 4B AD         [24] 3259 	lcall	_printf
      00408A 15 81            [12] 3260 	dec	sp
      00408C 15 81            [12] 3261 	dec	sp
      00408E 15 81            [12] 3262 	dec	sp
                                   3263 ;	syntax.c:486: printf("\n\r+------------------------------------------------+\n\r");
      004090 74 E2            [12] 3264 	mov	a,#___str_60
      004092 C0 E0            [24] 3265 	push	acc
      004094 74 5F            [12] 3266 	mov	a,#(___str_60 >> 8)
      004096 C0 E0            [24] 3267 	push	acc
      004098 74 80            [12] 3268 	mov	a,#0x80
      00409A C0 E0            [24] 3269 	push	acc
      00409C 12 4B AD         [24] 3270 	lcall	_printf
      00409F 15 81            [12] 3271 	dec	sp
      0040A1 15 81            [12] 3272 	dec	sp
      0040A3 15 81            [12] 3273 	dec	sp
      0040A5 D0 06            [24] 3274 	pop	ar6
      0040A7 D0 07            [24] 3275 	pop	ar7
                                   3276 ;	syntax.c:487: continue;
      0040A9 02 41 BC         [24] 3277 	ljmp	00109$
      0040AC                       3278 00104$:
                                   3279 ;	syntax.c:491: pointer2 = (__xdata uint8_t *) malloc(buffer_size);
      0040AC 8E 82            [24] 3280 	mov	dpl,r6
      0040AE 8F 83            [24] 3281 	mov	dph,r7
      0040B0 C0 07            [24] 3282 	push	ar7
      0040B2 C0 06            [24] 3283 	push	ar6
      0040B4 12 47 C3         [24] 3284 	lcall	_malloc
      0040B7 AC 82            [24] 3285 	mov	r4,dpl
      0040B9 AD 83            [24] 3286 	mov	r5,dph
      0040BB D0 06            [24] 3287 	pop	ar6
      0040BD D0 07            [24] 3288 	pop	ar7
      0040BF 90 1C E2         [24] 3289 	mov	dptr,#_pointer2
      0040C2 EC               [12] 3290 	mov	a,r4
      0040C3 F0               [24] 3291 	movx	@dptr,a
      0040C4 ED               [12] 3292 	mov	a,r5
      0040C5 A3               [24] 3293 	inc	dptr
      0040C6 F0               [24] 3294 	movx	@dptr,a
                                   3295 ;	syntax.c:492: if (pointer2 == NULL){
      0040C7 EC               [12] 3296 	mov	a,r4
      0040C8 4D               [12] 3297 	orl	a,r5
      0040C9 70 5D            [24] 3298 	jnz	00106$
                                   3299 ;	syntax.c:493: free(pointer1);
      0040CB 90 1C E0         [24] 3300 	mov	dptr,#_pointer1
      0040CE E0               [24] 3301 	movx	a,@dptr
      0040CF FC               [12] 3302 	mov	r4,a
      0040D0 A3               [24] 3303 	inc	dptr
      0040D1 E0               [24] 3304 	movx	a,@dptr
      0040D2 FD               [12] 3305 	mov	r5,a
      0040D3 7B 00            [12] 3306 	mov	r3,#0x00
      0040D5 8C 82            [24] 3307 	mov	dpl,r4
      0040D7 8D 83            [24] 3308 	mov	dph,r5
      0040D9 8B F0            [24] 3309 	mov	b,r3
      0040DB C0 07            [24] 3310 	push	ar7
      0040DD C0 06            [24] 3311 	push	ar6
      0040DF 12 45 79         [24] 3312 	lcall	_free
                                   3313 ;	syntax.c:494: printf("\n\r| ERROR: Buffer 2 allocation failed                |");
      0040E2 74 19            [12] 3314 	mov	a,#___str_61
      0040E4 C0 E0            [24] 3315 	push	acc
      0040E6 74 60            [12] 3316 	mov	a,#(___str_61 >> 8)
      0040E8 C0 E0            [24] 3317 	push	acc
      0040EA 74 80            [12] 3318 	mov	a,#0x80
      0040EC C0 E0            [24] 3319 	push	acc
      0040EE 12 4B AD         [24] 3320 	lcall	_printf
      0040F1 15 81            [12] 3321 	dec	sp
      0040F3 15 81            [12] 3322 	dec	sp
      0040F5 15 81            [12] 3323 	dec	sp
                                   3324 ;	syntax.c:495: printf("\n\r| Try smaller size                                |");
      0040F7 74 AC            [12] 3325 	mov	a,#___str_59
      0040F9 C0 E0            [24] 3326 	push	acc
      0040FB 74 5F            [12] 3327 	mov	a,#(___str_59 >> 8)
      0040FD C0 E0            [24] 3328 	push	acc
      0040FF 74 80            [12] 3329 	mov	a,#0x80
      004101 C0 E0            [24] 3330 	push	acc
      004103 12 4B AD         [24] 3331 	lcall	_printf
      004106 15 81            [12] 3332 	dec	sp
      004108 15 81            [12] 3333 	dec	sp
      00410A 15 81            [12] 3334 	dec	sp
                                   3335 ;	syntax.c:496: printf("\n\r+------------------------------------------------+\n\r");
      00410C 74 E2            [12] 3336 	mov	a,#___str_60
      00410E C0 E0            [24] 3337 	push	acc
      004110 74 5F            [12] 3338 	mov	a,#(___str_60 >> 8)
      004112 C0 E0            [24] 3339 	push	acc
      004114 74 80            [12] 3340 	mov	a,#0x80
      004116 C0 E0            [24] 3341 	push	acc
      004118 12 4B AD         [24] 3342 	lcall	_printf
      00411B 15 81            [12] 3343 	dec	sp
      00411D 15 81            [12] 3344 	dec	sp
      00411F 15 81            [12] 3345 	dec	sp
      004121 D0 06            [24] 3346 	pop	ar6
      004123 D0 07            [24] 3347 	pop	ar7
                                   3348 ;	syntax.c:497: continue;
      004125 02 41 BC         [24] 3349 	ljmp	00109$
      004128                       3350 00106$:
                                   3351 ;	syntax.c:501: printf("\n\r+----------------BUFFER STATUS--------------------+");
      004128 C0 07            [24] 3352 	push	ar7
      00412A C0 06            [24] 3353 	push	ar6
      00412C 74 50            [12] 3354 	mov	a,#___str_62
      00412E C0 E0            [24] 3355 	push	acc
      004130 74 60            [12] 3356 	mov	a,#(___str_62 >> 8)
      004132 C0 E0            [24] 3357 	push	acc
      004134 74 80            [12] 3358 	mov	a,#0x80
      004136 C0 E0            [24] 3359 	push	acc
      004138 12 4B AD         [24] 3360 	lcall	_printf
      00413B 15 81            [12] 3361 	dec	sp
      00413D 15 81            [12] 3362 	dec	sp
      00413F 15 81            [12] 3363 	dec	sp
      004141 D0 06            [24] 3364 	pop	ar6
      004143 D0 07            [24] 3365 	pop	ar7
                                   3366 ;	syntax.c:502: printf("\n\r| Buffer 1 | Addr: %-10p | Size: %-6d   |", pointer1, buffer_size);
      004145 90 1C E0         [24] 3367 	mov	dptr,#_pointer1
      004148 E0               [24] 3368 	movx	a,@dptr
      004149 FC               [12] 3369 	mov	r4,a
      00414A A3               [24] 3370 	inc	dptr
      00414B E0               [24] 3371 	movx	a,@dptr
      00414C FD               [12] 3372 	mov	r5,a
      00414D 7B 00            [12] 3373 	mov	r3,#0x00
      00414F C0 07            [24] 3374 	push	ar7
      004151 C0 06            [24] 3375 	push	ar6
      004153 C0 06            [24] 3376 	push	ar6
      004155 C0 07            [24] 3377 	push	ar7
      004157 C0 04            [24] 3378 	push	ar4
      004159 C0 05            [24] 3379 	push	ar5
      00415B C0 03            [24] 3380 	push	ar3
      00415D 74 86            [12] 3381 	mov	a,#___str_63
      00415F C0 E0            [24] 3382 	push	acc
      004161 74 60            [12] 3383 	mov	a,#(___str_63 >> 8)
      004163 C0 E0            [24] 3384 	push	acc
      004165 74 80            [12] 3385 	mov	a,#0x80
      004167 C0 E0            [24] 3386 	push	acc
      004169 12 4B AD         [24] 3387 	lcall	_printf
      00416C E5 81            [12] 3388 	mov	a,sp
      00416E 24 F8            [12] 3389 	add	a,#0xf8
      004170 F5 81            [12] 3390 	mov	sp,a
      004172 D0 06            [24] 3391 	pop	ar6
      004174 D0 07            [24] 3392 	pop	ar7
                                   3393 ;	syntax.c:503: printf("\n\r| Buffer 2 | Addr: %-10p | Size: %-6d   |", pointer2, buffer_size);
      004176 90 1C E2         [24] 3394 	mov	dptr,#_pointer2
      004179 E0               [24] 3395 	movx	a,@dptr
      00417A FC               [12] 3396 	mov	r4,a
      00417B A3               [24] 3397 	inc	dptr
      00417C E0               [24] 3398 	movx	a,@dptr
      00417D FD               [12] 3399 	mov	r5,a
      00417E 7B 00            [12] 3400 	mov	r3,#0x00
      004180 C0 07            [24] 3401 	push	ar7
      004182 C0 06            [24] 3402 	push	ar6
      004184 C0 06            [24] 3403 	push	ar6
      004186 C0 07            [24] 3404 	push	ar7
      004188 C0 04            [24] 3405 	push	ar4
      00418A C0 05            [24] 3406 	push	ar5
      00418C C0 03            [24] 3407 	push	ar3
      00418E 74 B2            [12] 3408 	mov	a,#___str_64
      004190 C0 E0            [24] 3409 	push	acc
      004192 74 60            [12] 3410 	mov	a,#(___str_64 >> 8)
      004194 C0 E0            [24] 3411 	push	acc
      004196 74 80            [12] 3412 	mov	a,#0x80
      004198 C0 E0            [24] 3413 	push	acc
      00419A 12 4B AD         [24] 3414 	lcall	_printf
      00419D E5 81            [12] 3415 	mov	a,sp
      00419F 24 F8            [12] 3416 	add	a,#0xf8
      0041A1 F5 81            [12] 3417 	mov	sp,a
                                   3418 ;	syntax.c:504: printf("\n\r+------------------------------------------------+\n\r");
      0041A3 74 E2            [12] 3419 	mov	a,#___str_60
      0041A5 C0 E0            [24] 3420 	push	acc
      0041A7 74 5F            [12] 3421 	mov	a,#(___str_60 >> 8)
      0041A9 C0 E0            [24] 3422 	push	acc
      0041AB 74 80            [12] 3423 	mov	a,#0x80
      0041AD C0 E0            [24] 3424 	push	acc
      0041AF 12 4B AD         [24] 3425 	lcall	_printf
      0041B2 15 81            [12] 3426 	dec	sp
      0041B4 15 81            [12] 3427 	dec	sp
      0041B6 15 81            [12] 3428 	dec	sp
      0041B8 D0 06            [24] 3429 	pop	ar6
      0041BA D0 07            [24] 3430 	pop	ar7
      0041BC                       3431 00109$:
                                   3432 ;	syntax.c:506: }while(pointer2 == NULL || pointer1 == NULL);
      0041BC 90 1C E2         [24] 3433 	mov	dptr,#_pointer2
      0041BF E0               [24] 3434 	movx	a,@dptr
      0041C0 F5 F0            [12] 3435 	mov	b,a
      0041C2 A3               [24] 3436 	inc	dptr
      0041C3 E0               [24] 3437 	movx	a,@dptr
      0041C4 45 F0            [12] 3438 	orl	a,b
      0041C6 70 03            [24] 3439 	jnz	00174$
      0041C8 02 40 1A         [24] 3440 	ljmp	00108$
      0041CB                       3441 00174$:
      0041CB 90 1C E0         [24] 3442 	mov	dptr,#_pointer1
      0041CE E0               [24] 3443 	movx	a,@dptr
      0041CF F5 F0            [12] 3444 	mov	b,a
      0041D1 A3               [24] 3445 	inc	dptr
      0041D2 E0               [24] 3446 	movx	a,@dptr
      0041D3 45 F0            [12] 3447 	orl	a,b
      0041D5 70 03            [24] 3448 	jnz	00175$
      0041D7 02 40 1A         [24] 3449 	ljmp	00108$
      0041DA                       3450 00175$:
                                   3451 ;	syntax.c:509: index_of_buffers = 0;
      0041DA 90 1C D7         [24] 3452 	mov	dptr,#_index_of_buffers
      0041DD E4               [12] 3453 	clr	a
      0041DE F0               [24] 3454 	movx	@dptr,a
                                   3455 ;	syntax.c:512: node_t node1 = { index_of_buffers, pointer1, buffer_size};
      0041DF 90 06 81         [24] 3456 	mov	dptr,#_main_node1_65538_140
      0041E2 F0               [24] 3457 	movx	@dptr,a
      0041E3 90 1C E0         [24] 3458 	mov	dptr,#_pointer1
      0041E6 E0               [24] 3459 	movx	a,@dptr
      0041E7 FC               [12] 3460 	mov	r4,a
      0041E8 A3               [24] 3461 	inc	dptr
      0041E9 E0               [24] 3462 	movx	a,@dptr
      0041EA FD               [12] 3463 	mov	r5,a
      0041EB 7B 00            [12] 3464 	mov	r3,#0x00
      0041ED 90 06 82         [24] 3465 	mov	dptr,#(_main_node1_65538_140 + 0x0001)
      0041F0 EC               [12] 3466 	mov	a,r4
      0041F1 F0               [24] 3467 	movx	@dptr,a
      0041F2 ED               [12] 3468 	mov	a,r5
      0041F3 A3               [24] 3469 	inc	dptr
      0041F4 F0               [24] 3470 	movx	@dptr,a
      0041F5 EB               [12] 3471 	mov	a,r3
      0041F6 A3               [24] 3472 	inc	dptr
      0041F7 F0               [24] 3473 	movx	@dptr,a
      0041F8 90 06 85         [24] 3474 	mov	dptr,#(_main_node1_65538_140 + 0x0004)
      0041FB EE               [12] 3475 	mov	a,r6
      0041FC F0               [24] 3476 	movx	@dptr,a
      0041FD EF               [12] 3477 	mov	a,r7
      0041FE A3               [24] 3478 	inc	dptr
      0041FF F0               [24] 3479 	movx	@dptr,a
                                   3480 ;	syntax.c:513: array_for_nodes[index_of_buffers] = node1;
      004200 90 1C D7         [24] 3481 	mov	dptr,#_index_of_buffers
      004203 E0               [24] 3482 	movx	a,@dptr
      004204 75 F0 06         [24] 3483 	mov	b,#0x06
      004207 A4               [48] 3484 	mul	ab
      004208 24 03            [12] 3485 	add	a,#_array_for_nodes
      00420A FC               [12] 3486 	mov	r4,a
      00420B 74 04            [12] 3487 	mov	a,#(_array_for_nodes >> 8)
      00420D 35 F0            [12] 3488 	addc	a,b
      00420F FD               [12] 3489 	mov	r5,a
      004210 7B 00            [12] 3490 	mov	r3,#0x00
      004212 90 1C 76         [24] 3491 	mov	dptr,#___memcpy_PARM_2
      004215 74 81            [12] 3492 	mov	a,#_main_node1_65538_140
      004217 F0               [24] 3493 	movx	@dptr,a
      004218 74 06            [12] 3494 	mov	a,#(_main_node1_65538_140 >> 8)
      00421A A3               [24] 3495 	inc	dptr
      00421B F0               [24] 3496 	movx	@dptr,a
      00421C E4               [12] 3497 	clr	a
      00421D A3               [24] 3498 	inc	dptr
      00421E F0               [24] 3499 	movx	@dptr,a
      00421F 90 1C 79         [24] 3500 	mov	dptr,#___memcpy_PARM_3
      004222 74 06            [12] 3501 	mov	a,#0x06
      004224 F0               [24] 3502 	movx	@dptr,a
      004225 E4               [12] 3503 	clr	a
      004226 A3               [24] 3504 	inc	dptr
      004227 F0               [24] 3505 	movx	@dptr,a
      004228 8C 82            [24] 3506 	mov	dpl,r4
      00422A 8D 83            [24] 3507 	mov	dph,r5
      00422C 8B F0            [24] 3508 	mov	b,r3
      00422E C0 07            [24] 3509 	push	ar7
      004230 C0 06            [24] 3510 	push	ar6
      004232 12 46 D0         [24] 3511 	lcall	___memcpy
      004235 D0 06            [24] 3512 	pop	ar6
      004237 D0 07            [24] 3513 	pop	ar7
                                   3514 ;	syntax.c:514: index_of_buffers++;
      004239 90 1C D7         [24] 3515 	mov	dptr,#_index_of_buffers
      00423C E0               [24] 3516 	movx	a,@dptr
      00423D 24 01            [12] 3517 	add	a,#0x01
      00423F F0               [24] 3518 	movx	@dptr,a
                                   3519 ;	syntax.c:517: node_t node2 = { index_of_buffers, pointer2, buffer_size};
      004240 E0               [24] 3520 	movx	a,@dptr
      004241 90 06 87         [24] 3521 	mov	dptr,#_main_node2_65539_141
      004244 F0               [24] 3522 	movx	@dptr,a
      004245 90 1C E2         [24] 3523 	mov	dptr,#_pointer2
      004248 E0               [24] 3524 	movx	a,@dptr
      004249 FC               [12] 3525 	mov	r4,a
      00424A A3               [24] 3526 	inc	dptr
      00424B E0               [24] 3527 	movx	a,@dptr
      00424C FD               [12] 3528 	mov	r5,a
      00424D 7B 00            [12] 3529 	mov	r3,#0x00
      00424F 90 06 88         [24] 3530 	mov	dptr,#(_main_node2_65539_141 + 0x0001)
      004252 EC               [12] 3531 	mov	a,r4
      004253 F0               [24] 3532 	movx	@dptr,a
      004254 ED               [12] 3533 	mov	a,r5
      004255 A3               [24] 3534 	inc	dptr
      004256 F0               [24] 3535 	movx	@dptr,a
      004257 EB               [12] 3536 	mov	a,r3
      004258 A3               [24] 3537 	inc	dptr
      004259 F0               [24] 3538 	movx	@dptr,a
      00425A 90 06 8B         [24] 3539 	mov	dptr,#(_main_node2_65539_141 + 0x0004)
      00425D EE               [12] 3540 	mov	a,r6
      00425E F0               [24] 3541 	movx	@dptr,a
      00425F EF               [12] 3542 	mov	a,r7
      004260 A3               [24] 3543 	inc	dptr
      004261 F0               [24] 3544 	movx	@dptr,a
                                   3545 ;	syntax.c:518: array_for_nodes[index_of_buffers] = node2;
      004262 90 1C D7         [24] 3546 	mov	dptr,#_index_of_buffers
      004265 E0               [24] 3547 	movx	a,@dptr
      004266 75 F0 06         [24] 3548 	mov	b,#0x06
      004269 A4               [48] 3549 	mul	ab
      00426A 24 03            [12] 3550 	add	a,#_array_for_nodes
      00426C FE               [12] 3551 	mov	r6,a
      00426D 74 04            [12] 3552 	mov	a,#(_array_for_nodes >> 8)
      00426F 35 F0            [12] 3553 	addc	a,b
      004271 FF               [12] 3554 	mov	r7,a
      004272 7D 00            [12] 3555 	mov	r5,#0x00
      004274 90 1C 76         [24] 3556 	mov	dptr,#___memcpy_PARM_2
      004277 74 87            [12] 3557 	mov	a,#_main_node2_65539_141
      004279 F0               [24] 3558 	movx	@dptr,a
      00427A 74 06            [12] 3559 	mov	a,#(_main_node2_65539_141 >> 8)
      00427C A3               [24] 3560 	inc	dptr
      00427D F0               [24] 3561 	movx	@dptr,a
      00427E E4               [12] 3562 	clr	a
      00427F A3               [24] 3563 	inc	dptr
      004280 F0               [24] 3564 	movx	@dptr,a
      004281 90 1C 79         [24] 3565 	mov	dptr,#___memcpy_PARM_3
      004284 74 06            [12] 3566 	mov	a,#0x06
      004286 F0               [24] 3567 	movx	@dptr,a
      004287 E4               [12] 3568 	clr	a
      004288 A3               [24] 3569 	inc	dptr
      004289 F0               [24] 3570 	movx	@dptr,a
      00428A 8E 82            [24] 3571 	mov	dpl,r6
      00428C 8F 83            [24] 3572 	mov	dph,r7
      00428E 8D F0            [24] 3573 	mov	b,r5
      004290 12 46 D0         [24] 3574 	lcall	___memcpy
                                   3575 ;	syntax.c:519: index_of_buffers++;
      004293 90 1C D7         [24] 3576 	mov	dptr,#_index_of_buffers
      004296 E0               [24] 3577 	movx	a,@dptr
      004297 24 01            [12] 3578 	add	a,#0x01
      004299 F0               [24] 3579 	movx	@dptr,a
                                   3580 ;	syntax.c:522: printf("\n\r+------------------COMMANDS----------------------+");
      00429A 74 DE            [12] 3581 	mov	a,#___str_65
      00429C C0 E0            [24] 3582 	push	acc
      00429E 74 60            [12] 3583 	mov	a,#(___str_65 >> 8)
      0042A0 C0 E0            [24] 3584 	push	acc
      0042A2 74 80            [12] 3585 	mov	a,#0x80
      0042A4 C0 E0            [24] 3586 	push	acc
      0042A6 12 4B AD         [24] 3587 	lcall	_printf
      0042A9 15 81            [12] 3588 	dec	sp
      0042AB 15 81            [12] 3589 	dec	sp
      0042AD 15 81            [12] 3590 	dec	sp
                                   3591 ;	syntax.c:523: printf("\n\r| [A-Z] : Store character in Buffer 0           |");
      0042AF 74 13            [12] 3592 	mov	a,#___str_66
      0042B1 C0 E0            [24] 3593 	push	acc
      0042B3 74 61            [12] 3594 	mov	a,#(___str_66 >> 8)
      0042B5 C0 E0            [24] 3595 	push	acc
      0042B7 74 80            [12] 3596 	mov	a,#0x80
      0042B9 C0 E0            [24] 3597 	push	acc
      0042BB 12 4B AD         [24] 3598 	lcall	_printf
      0042BE 15 81            [12] 3599 	dec	sp
      0042C0 15 81            [12] 3600 	dec	sp
      0042C2 15 81            [12] 3601 	dec	sp
                                   3602 ;	syntax.c:524: printf("\n\r| +     : Create new buffer                     |");
      0042C4 74 47            [12] 3603 	mov	a,#___str_67
      0042C6 C0 E0            [24] 3604 	push	acc
      0042C8 74 61            [12] 3605 	mov	a,#(___str_67 >> 8)
      0042CA C0 E0            [24] 3606 	push	acc
      0042CC 74 80            [12] 3607 	mov	a,#0x80
      0042CE C0 E0            [24] 3608 	push	acc
      0042D0 12 4B AD         [24] 3609 	lcall	_printf
      0042D3 15 81            [12] 3610 	dec	sp
      0042D5 15 81            [12] 3611 	dec	sp
      0042D7 15 81            [12] 3612 	dec	sp
                                   3613 ;	syntax.c:525: printf("\n\r| -     : Delete buffer                         |");
      0042D9 74 7B            [12] 3614 	mov	a,#___str_68
      0042DB C0 E0            [24] 3615 	push	acc
      0042DD 74 61            [12] 3616 	mov	a,#(___str_68 >> 8)
      0042DF C0 E0            [24] 3617 	push	acc
      0042E1 74 80            [12] 3618 	mov	a,#0x80
      0042E3 C0 E0            [24] 3619 	push	acc
      0042E5 12 4B AD         [24] 3620 	lcall	_printf
      0042E8 15 81            [12] 3621 	dec	sp
      0042EA 15 81            [12] 3622 	dec	sp
      0042EC 15 81            [12] 3623 	dec	sp
                                   3624 ;	syntax.c:526: printf("\n\r| ?     : Show system status                    |");
      0042EE 74 AF            [12] 3625 	mov	a,#___str_69
      0042F0 C0 E0            [24] 3626 	push	acc
      0042F2 74 61            [12] 3627 	mov	a,#(___str_69 >> 8)
      0042F4 C0 E0            [24] 3628 	push	acc
      0042F6 74 80            [12] 3629 	mov	a,#0x80
      0042F8 C0 E0            [24] 3630 	push	acc
      0042FA 12 4B AD         [24] 3631 	lcall	_printf
      0042FD 15 81            [12] 3632 	dec	sp
      0042FF 15 81            [12] 3633 	dec	sp
      004301 15 81            [12] 3634 	dec	sp
                                   3635 ;	syntax.c:527: printf("\n\r| =     : Display Buffer 0 contents             |");
      004303 74 E3            [12] 3636 	mov	a,#___str_70
      004305 C0 E0            [24] 3637 	push	acc
      004307 74 61            [12] 3638 	mov	a,#(___str_70 >> 8)
      004309 C0 E0            [24] 3639 	push	acc
      00430B 74 80            [12] 3640 	mov	a,#0x80
      00430D C0 E0            [24] 3641 	push	acc
      00430F 12 4B AD         [24] 3642 	lcall	_printf
      004312 15 81            [12] 3643 	dec	sp
      004314 15 81            [12] 3644 	dec	sp
      004316 15 81            [12] 3645 	dec	sp
                                   3646 ;	syntax.c:528: printf("\n\r| @     : Reset system                          |");
      004318 74 17            [12] 3647 	mov	a,#___str_71
      00431A C0 E0            [24] 3648 	push	acc
      00431C 74 62            [12] 3649 	mov	a,#(___str_71 >> 8)
      00431E C0 E0            [24] 3650 	push	acc
      004320 74 80            [12] 3651 	mov	a,#0x80
      004322 C0 E0            [24] 3652 	push	acc
      004324 12 4B AD         [24] 3653 	lcall	_printf
      004327 15 81            [12] 3654 	dec	sp
      004329 15 81            [12] 3655 	dec	sp
      00432B 15 81            [12] 3656 	dec	sp
                                   3657 ;	syntax.c:529: printf("\n\r+--------------------------------------------------+");
      00432D 74 EF            [12] 3658 	mov	a,#___str_0
      00432F C0 E0            [24] 3659 	push	acc
      004331 74 55            [12] 3660 	mov	a,#(___str_0 >> 8)
      004333 C0 E0            [24] 3661 	push	acc
      004335 74 80            [12] 3662 	mov	a,#0x80
      004337 C0 E0            [24] 3663 	push	acc
      004339 12 4B AD         [24] 3664 	lcall	_printf
      00433C 15 81            [12] 3665 	dec	sp
      00433E 15 81            [12] 3666 	dec	sp
      004340 15 81            [12] 3667 	dec	sp
                                   3668 ;	syntax.c:530: printf("\n\r| Ready for input. Enter uppercase chars (A-Z):    |\n\r"); 
      004342 74 4B            [12] 3669 	mov	a,#___str_72
      004344 C0 E0            [24] 3670 	push	acc
      004346 74 62            [12] 3671 	mov	a,#(___str_72 >> 8)
      004348 C0 E0            [24] 3672 	push	acc
      00434A 74 80            [12] 3673 	mov	a,#0x80
      00434C C0 E0            [24] 3674 	push	acc
      00434E 12 4B AD         [24] 3675 	lcall	_printf
      004351 15 81            [12] 3676 	dec	sp
      004353 15 81            [12] 3677 	dec	sp
      004355 15 81            [12] 3678 	dec	sp
                                   3679 ;	syntax.c:531: printf("\n\r+--------------------------------------------------+\n\r");
      004357 74 61            [12] 3680 	mov	a,#___str_2
      004359 C0 E0            [24] 3681 	push	acc
      00435B 74 56            [12] 3682 	mov	a,#(___str_2 >> 8)
      00435D C0 E0            [24] 3683 	push	acc
      00435F 74 80            [12] 3684 	mov	a,#0x80
      004361 C0 E0            [24] 3685 	push	acc
      004363 12 4B AD         [24] 3686 	lcall	_printf
      004366 15 81            [12] 3687 	dec	sp
      004368 15 81            [12] 3688 	dec	sp
      00436A 15 81            [12] 3689 	dec	sp
                                   3690 ;	syntax.c:534: __idata int temp_buffer_size = array_for_nodes[0].size;
      00436C 90 04 07         [24] 3691 	mov	dptr,#(_array_for_nodes + 0x0004)
      00436F E0               [24] 3692 	movx	a,@dptr
      004370 FE               [12] 3693 	mov	r6,a
      004371 A3               [24] 3694 	inc	dptr
      004372 E0               [24] 3695 	movx	a,@dptr
      004373 FF               [12] 3696 	mov	r7,a
                                   3697 ;	syntax.c:536: uint8_t * wr = array_for_nodes[0].data_pointer;
      004374 90 04 04         [24] 3698 	mov	dptr,#(_array_for_nodes + 0x0001)
      004377 E0               [24] 3699 	movx	a,@dptr
      004378 FB               [12] 3700 	mov	r3,a
      004379 A3               [24] 3701 	inc	dptr
      00437A E0               [24] 3702 	movx	a,@dptr
      00437B FC               [12] 3703 	mov	r4,a
      00437C A3               [24] 3704 	inc	dptr
      00437D E0               [24] 3705 	movx	a,@dptr
      00437E FD               [12] 3706 	mov	r5,a
                                   3707 ;	syntax.c:539: do{
      00437F                       3708 00114$:
                                   3709 ;	syntax.c:540: int ch = getchar();
      00437F C0 07            [24] 3710 	push	ar7
      004381 C0 06            [24] 3711 	push	ar6
      004383 C0 05            [24] 3712 	push	ar5
      004385 C0 04            [24] 3713 	push	ar4
      004387 C0 03            [24] 3714 	push	ar3
      004389 12 30 AE         [24] 3715 	lcall	_getchar
                                   3716 ;	syntax.c:541: putchar(ch);
      00438C A9 82            [24] 3717 	mov	r1,dpl
      00438E AA 83            [24] 3718 	mov  r2,dph
      004390 C0 02            [24] 3719 	push	ar2
      004392 C0 01            [24] 3720 	push	ar1
      004394 12 30 91         [24] 3721 	lcall	_putchar
      004397 D0 01            [24] 3722 	pop	ar1
      004399 D0 02            [24] 3723 	pop	ar2
      00439B D0 03            [24] 3724 	pop	ar3
      00439D D0 04            [24] 3725 	pop	ar4
      00439F D0 05            [24] 3726 	pop	ar5
      0043A1 D0 06            [24] 3727 	pop	ar6
      0043A3 D0 07            [24] 3728 	pop	ar7
                                   3729 ;	syntax.c:544: if(ch < 65 || ch > 90) {
      0043A5 C3               [12] 3730 	clr	c
      0043A6 E9               [12] 3731 	mov	a,r1
      0043A7 94 41            [12] 3732 	subb	a,#0x41
      0043A9 EA               [12] 3733 	mov	a,r2
      0043AA 64 80            [12] 3734 	xrl	a,#0x80
      0043AC 94 80            [12] 3735 	subb	a,#0x80
      0043AE 40 0E            [24] 3736 	jc	00111$
      0043B0 74 5A            [12] 3737 	mov	a,#0x5a
      0043B2 99               [12] 3738 	subb	a,r1
      0043B3 74 80            [12] 3739 	mov	a,#(0x00 ^ 0x80)
      0043B5 8A F0            [24] 3740 	mov	b,r2
      0043B7 63 F0 80         [24] 3741 	xrl	b,#0x80
      0043BA 95 F0            [12] 3742 	subb	a,b
      0043BC 50 5F            [24] 3743 	jnc	00112$
      0043BE                       3744 00111$:
                                   3745 ;	syntax.c:545: total_number_of_commands+=1;
      0043BE 90 1C D8         [24] 3746 	mov	dptr,#_total_number_of_commands
      0043C1 E0               [24] 3747 	movx	a,@dptr
      0043C2 04               [12] 3748 	inc	a
      0043C3 F0               [24] 3749 	movx	@dptr,a
                                   3750 ;	syntax.c:546: recent_commands+=1;
      0043C4 90 1C DA         [24] 3751 	mov	dptr,#_recent_commands
      0043C7 E0               [24] 3752 	movx	a,@dptr
      0043C8 04               [12] 3753 	inc	a
      0043C9 F0               [24] 3754 	movx	@dptr,a
                                   3755 ;	syntax.c:547: printf("\n\r| Command received: %-31c |", ch);
      0043CA C0 07            [24] 3756 	push	ar7
      0043CC C0 06            [24] 3757 	push	ar6
      0043CE C0 05            [24] 3758 	push	ar5
      0043D0 C0 04            [24] 3759 	push	ar4
      0043D2 C0 03            [24] 3760 	push	ar3
      0043D4 C0 02            [24] 3761 	push	ar2
      0043D6 C0 01            [24] 3762 	push	ar1
      0043D8 C0 01            [24] 3763 	push	ar1
      0043DA C0 02            [24] 3764 	push	ar2
      0043DC 74 84            [12] 3765 	mov	a,#___str_73
      0043DE C0 E0            [24] 3766 	push	acc
      0043E0 74 62            [12] 3767 	mov	a,#(___str_73 >> 8)
      0043E2 C0 E0            [24] 3768 	push	acc
      0043E4 74 80            [12] 3769 	mov	a,#0x80
      0043E6 C0 E0            [24] 3770 	push	acc
      0043E8 12 4B AD         [24] 3771 	lcall	_printf
      0043EB E5 81            [12] 3772 	mov	a,sp
      0043ED 24 FB            [12] 3773 	add	a,#0xfb
      0043EF F5 81            [12] 3774 	mov	sp,a
                                   3775 ;	syntax.c:548: printf("\n\r+--------------------------------------------------+\n\r");
      0043F1 74 61            [12] 3776 	mov	a,#___str_2
      0043F3 C0 E0            [24] 3777 	push	acc
      0043F5 74 56            [12] 3778 	mov	a,#(___str_2 >> 8)
      0043F7 C0 E0            [24] 3779 	push	acc
      0043F9 74 80            [12] 3780 	mov	a,#0x80
      0043FB C0 E0            [24] 3781 	push	acc
      0043FD 12 4B AD         [24] 3782 	lcall	_printf
      004400 15 81            [12] 3783 	dec	sp
      004402 15 81            [12] 3784 	dec	sp
      004404 15 81            [12] 3785 	dec	sp
      004406 D0 01            [24] 3786 	pop	ar1
      004408 D0 02            [24] 3787 	pop	ar2
                                   3788 ;	syntax.c:549: get_command(ch);
      00440A 89 82            [24] 3789 	mov	dpl,r1
      00440C 8A 83            [24] 3790 	mov	dph,r2
      00440E 12 35 1E         [24] 3791 	lcall	_get_command
      004411 D0 03            [24] 3792 	pop	ar3
      004413 D0 04            [24] 3793 	pop	ar4
      004415 D0 05            [24] 3794 	pop	ar5
      004417 D0 06            [24] 3795 	pop	ar6
      004419 D0 07            [24] 3796 	pop	ar7
                                   3797 ;	syntax.c:550: continue;
      00441B 80 68            [24] 3798 	sjmp	00115$
      00441D                       3799 00112$:
                                   3800 ;	syntax.c:554: total_number_of_storage = total_number_of_storage + 1;
      00441D 90 1C D9         [24] 3801 	mov	dptr,#_total_number_of_storage
      004420 E0               [24] 3802 	movx	a,@dptr
      004421 04               [12] 3803 	inc	a
      004422 F0               [24] 3804 	movx	@dptr,a
                                   3805 ;	syntax.c:555: recent_storage = recent_storage + 1;
      004423 90 1C DB         [24] 3806 	mov	dptr,#_recent_storage
      004426 E0               [24] 3807 	movx	a,@dptr
      004427 04               [12] 3808 	inc	a
      004428 F0               [24] 3809 	movx	@dptr,a
                                   3810 ;	syntax.c:557: *wr = ch;
      004429 8B 82            [24] 3811 	mov	dpl,r3
      00442B 8C 83            [24] 3812 	mov	dph,r4
      00442D 8D F0            [24] 3813 	mov	b,r5
      00442F E9               [12] 3814 	mov	a,r1
      004430 12 47 6C         [24] 3815 	lcall	__gptrput
      004433 A3               [24] 3816 	inc	dptr
      004434 AB 82            [24] 3817 	mov	r3,dpl
      004436 AC 83            [24] 3818 	mov	r4,dph
                                   3819 ;	syntax.c:558: wr++;
                                   3820 ;	syntax.c:560: total_number_of_storage, recent_storage, wr);
      004438 90 1C DB         [24] 3821 	mov	dptr,#_recent_storage
      00443B E0               [24] 3822 	movx	a,@dptr
      00443C FA               [12] 3823 	mov	r2,a
      00443D 8A 1A            [24] 3824 	mov	_main_sloc0_1_0,r2
      00443F 75 1B 00         [24] 3825 	mov	(_main_sloc0_1_0 + 1),#0x00
      004442 90 1C D9         [24] 3826 	mov	dptr,#_total_number_of_storage
      004445 E0               [24] 3827 	movx	a,@dptr
      004446 F8               [12] 3828 	mov	r0,a
      004447 7A 00            [12] 3829 	mov	r2,#0x00
                                   3830 ;	syntax.c:559: printf("\n\r| Storage: Total=%-4d Recent=%-4d Addr=%-10p |\n\r", 
      004449 C0 07            [24] 3831 	push	ar7
      00444B C0 06            [24] 3832 	push	ar6
      00444D C0 05            [24] 3833 	push	ar5
      00444F C0 04            [24] 3834 	push	ar4
      004451 C0 03            [24] 3835 	push	ar3
      004453 C0 03            [24] 3836 	push	ar3
      004455 C0 04            [24] 3837 	push	ar4
      004457 C0 05            [24] 3838 	push	ar5
      004459 C0 1A            [24] 3839 	push	_main_sloc0_1_0
      00445B C0 1B            [24] 3840 	push	(_main_sloc0_1_0 + 1)
      00445D C0 00            [24] 3841 	push	ar0
      00445F C0 02            [24] 3842 	push	ar2
      004461 74 A2            [12] 3843 	mov	a,#___str_74
      004463 C0 E0            [24] 3844 	push	acc
      004465 74 62            [12] 3845 	mov	a,#(___str_74 >> 8)
      004467 C0 E0            [24] 3846 	push	acc
      004469 74 80            [12] 3847 	mov	a,#0x80
      00446B C0 E0            [24] 3848 	push	acc
      00446D 12 4B AD         [24] 3849 	lcall	_printf
      004470 E5 81            [12] 3850 	mov	a,sp
      004472 24 F6            [12] 3851 	add	a,#0xf6
      004474 F5 81            [12] 3852 	mov	sp,a
      004476 D0 03            [24] 3853 	pop	ar3
      004478 D0 04            [24] 3854 	pop	ar4
      00447A D0 05            [24] 3855 	pop	ar5
      00447C D0 06            [24] 3856 	pop	ar6
      00447E D0 07            [24] 3857 	pop	ar7
                                   3858 ;	syntax.c:561: temp_buffer_size -= 1;
      004480 1E               [12] 3859 	dec	r6
      004481 BE FF 01         [24] 3860 	cjne	r6,#0xff,00178$
      004484 1F               [12] 3861 	dec	r7
      004485                       3862 00178$:
                                   3863 ;	syntax.c:562: index_for_write += 1;
      004485                       3864 00115$:
                                   3865 ;	syntax.c:563: }while(temp_buffer_size>0);
      004485 C3               [12] 3866 	clr	c
      004486 E4               [12] 3867 	clr	a
      004487 9E               [12] 3868 	subb	a,r6
      004488 74 80            [12] 3869 	mov	a,#(0x00 ^ 0x80)
      00448A 8F F0            [24] 3870 	mov	b,r7
      00448C 63 F0 80         [24] 3871 	xrl	b,#0x80
      00448F 95 F0            [12] 3872 	subb	a,b
      004491 50 03            [24] 3873 	jnc	00179$
      004493 02 43 7F         [24] 3874 	ljmp	00114$
      004496                       3875 00179$:
                                   3876 ;	syntax.c:566: printf("\n\r+--------------------------------------------------+");
      004496 74 EF            [12] 3877 	mov	a,#___str_0
      004498 C0 E0            [24] 3878 	push	acc
      00449A 74 55            [12] 3879 	mov	a,#(___str_0 >> 8)
      00449C C0 E0            [24] 3880 	push	acc
      00449E 74 80            [12] 3881 	mov	a,#0x80
      0044A0 C0 E0            [24] 3882 	push	acc
      0044A2 12 4B AD         [24] 3883 	lcall	_printf
      0044A5 15 81            [12] 3884 	dec	sp
      0044A7 15 81            [12] 3885 	dec	sp
      0044A9 15 81            [12] 3886 	dec	sp
                                   3887 ;	syntax.c:567: printf("\n\r| NOTICE: Buffer 0 is full - Storage stopped        |");
      0044AB 74 D5            [12] 3888 	mov	a,#___str_75
      0044AD C0 E0            [24] 3889 	push	acc
      0044AF 74 62            [12] 3890 	mov	a,#(___str_75 >> 8)
      0044B1 C0 E0            [24] 3891 	push	acc
      0044B3 74 80            [12] 3892 	mov	a,#0x80
      0044B5 C0 E0            [24] 3893 	push	acc
      0044B7 12 4B AD         [24] 3894 	lcall	_printf
      0044BA 15 81            [12] 3895 	dec	sp
      0044BC 15 81            [12] 3896 	dec	sp
      0044BE 15 81            [12] 3897 	dec	sp
                                   3898 ;	syntax.c:568: printf("\n\r+--------------------------------------------------+\n\r");
      0044C0 74 61            [12] 3899 	mov	a,#___str_2
      0044C2 C0 E0            [24] 3900 	push	acc
      0044C4 74 56            [12] 3901 	mov	a,#(___str_2 >> 8)
      0044C6 C0 E0            [24] 3902 	push	acc
      0044C8 74 80            [12] 3903 	mov	a,#0x80
      0044CA C0 E0            [24] 3904 	push	acc
      0044CC 12 4B AD         [24] 3905 	lcall	_printf
      0044CF 15 81            [12] 3906 	dec	sp
      0044D1 15 81            [12] 3907 	dec	sp
      0044D3 15 81            [12] 3908 	dec	sp
                                   3909 ;	syntax.c:571: while(1)
      0044D5                       3910 00122$:
                                   3911 ;	syntax.c:573: printf("\n\r| Enter command (+, -, ?, =, @):                   |");
      0044D5 74 0D            [12] 3912 	mov	a,#___str_76
      0044D7 C0 E0            [24] 3913 	push	acc
      0044D9 74 63            [12] 3914 	mov	a,#(___str_76 >> 8)
      0044DB C0 E0            [24] 3915 	push	acc
      0044DD 74 80            [12] 3916 	mov	a,#0x80
      0044DF C0 E0            [24] 3917 	push	acc
      0044E1 12 4B AD         [24] 3918 	lcall	_printf
      0044E4 15 81            [12] 3919 	dec	sp
      0044E6 15 81            [12] 3920 	dec	sp
      0044E8 15 81            [12] 3921 	dec	sp
                                   3922 ;	syntax.c:574: printf("\n\r+--------------------------------------------------+\n\r");
      0044EA 74 61            [12] 3923 	mov	a,#___str_2
      0044EC C0 E0            [24] 3924 	push	acc
      0044EE 74 56            [12] 3925 	mov	a,#(___str_2 >> 8)
      0044F0 C0 E0            [24] 3926 	push	acc
      0044F2 74 80            [12] 3927 	mov	a,#0x80
      0044F4 C0 E0            [24] 3928 	push	acc
      0044F6 12 4B AD         [24] 3929 	lcall	_printf
      0044F9 15 81            [12] 3930 	dec	sp
      0044FB 15 81            [12] 3931 	dec	sp
      0044FD 15 81            [12] 3932 	dec	sp
                                   3933 ;	syntax.c:575: int cha = getchar();
      0044FF 12 30 AE         [24] 3934 	lcall	_getchar
      004502 AE 82            [24] 3935 	mov	r6,dpl
      004504 AF 83            [24] 3936 	mov	r7,dph
                                   3937 ;	syntax.c:576: if(cha < 65 || cha > 90) {
      004506 C3               [12] 3938 	clr	c
      004507 EE               [12] 3939 	mov	a,r6
      004508 94 41            [12] 3940 	subb	a,#0x41
      00450A EF               [12] 3941 	mov	a,r7
      00450B 64 80            [12] 3942 	xrl	a,#0x80
      00450D 94 80            [12] 3943 	subb	a,#0x80
      00450F 40 0E            [24] 3944 	jc	00117$
      004511 74 5A            [12] 3945 	mov	a,#0x5a
      004513 9E               [12] 3946 	subb	a,r6
      004514 74 80            [12] 3947 	mov	a,#(0x00 ^ 0x80)
      004516 8F F0            [24] 3948 	mov	b,r7
      004518 63 F0 80         [24] 3949 	xrl	b,#0x80
      00451B 95 F0            [12] 3950 	subb	a,b
      00451D 50 43            [24] 3951 	jnc	00118$
      00451F                       3952 00117$:
                                   3953 ;	syntax.c:577: DEBUGPORT(0xAA);
      00451F 90 04 00         [24] 3954 	mov	dptr,#_dataout_PARM_2
      004522 74 AA            [12] 3955 	mov	a,#0xaa
      004524 F0               [24] 3956 	movx	@dptr,a
      004525 90 FE FE         [24] 3957 	mov	dptr,#0xfefe
      004528 C0 07            [24] 3958 	push	ar7
      00452A C0 06            [24] 3959 	push	ar6
      00452C 12 30 68         [24] 3960 	lcall	_dataout
      00452F D0 06            [24] 3961 	pop	ar6
      004531 D0 07            [24] 3962 	pop	ar7
                                   3963 ;	syntax.c:578: total_number_of_commands+=1;
      004533 90 1C D8         [24] 3964 	mov	dptr,#_total_number_of_commands
      004536 E0               [24] 3965 	movx	a,@dptr
      004537 04               [12] 3966 	inc	a
      004538 F0               [24] 3967 	movx	@dptr,a
                                   3968 ;	syntax.c:579: recent_commands+=1;
      004539 90 1C DA         [24] 3969 	mov	dptr,#_recent_commands
      00453C E0               [24] 3970 	movx	a,@dptr
      00453D 04               [12] 3971 	inc	a
      00453E F0               [24] 3972 	movx	@dptr,a
                                   3973 ;	syntax.c:580: printf("\n\r| Command received: %-31c |", cha);
      00453F C0 07            [24] 3974 	push	ar7
      004541 C0 06            [24] 3975 	push	ar6
      004543 C0 06            [24] 3976 	push	ar6
      004545 C0 07            [24] 3977 	push	ar7
      004547 74 84            [12] 3978 	mov	a,#___str_73
      004549 C0 E0            [24] 3979 	push	acc
      00454B 74 62            [12] 3980 	mov	a,#(___str_73 >> 8)
      00454D C0 E0            [24] 3981 	push	acc
      00454F 74 80            [12] 3982 	mov	a,#0x80
      004551 C0 E0            [24] 3983 	push	acc
      004553 12 4B AD         [24] 3984 	lcall	_printf
      004556 E5 81            [12] 3985 	mov	a,sp
      004558 24 FB            [12] 3986 	add	a,#0xfb
      00455A F5 81            [12] 3987 	mov	sp,a
      00455C D0 06            [24] 3988 	pop	ar6
      00455E D0 07            [24] 3989 	pop	ar7
      004560 80 0D            [24] 3990 	sjmp	00119$
      004562                       3991 00118$:
                                   3992 ;	syntax.c:583: total_number_of_storage = total_number_of_storage + 1;
      004562 90 1C D9         [24] 3993 	mov	dptr,#_total_number_of_storage
      004565 E0               [24] 3994 	movx	a,@dptr
      004566 04               [12] 3995 	inc	a
      004567 F0               [24] 3996 	movx	@dptr,a
                                   3997 ;	syntax.c:584: recent_storage = recent_storage + 1;
      004568 90 1C DB         [24] 3998 	mov	dptr,#_recent_storage
      00456B E0               [24] 3999 	movx	a,@dptr
      00456C FD               [12] 4000 	mov	r5,a
      00456D 04               [12] 4001 	inc	a
      00456E F0               [24] 4002 	movx	@dptr,a
      00456F                       4003 00119$:
                                   4004 ;	syntax.c:586: get_command(cha);
      00456F 8E 82            [24] 4005 	mov	dpl,r6
      004571 8F 83            [24] 4006 	mov	dph,r7
      004573 12 35 1E         [24] 4007 	lcall	_get_command
                                   4008 ;	syntax.c:588: }
      004576 02 44 D5         [24] 4009 	ljmp	00122$
                                   4010 	.area CSEG    (CODE)
                                   4011 	.area CONST   (CODE)
                                   4012 	.area CONST   (CODE)
      0055EF                       4013 ___str_0:
      0055EF 0A                    4014 	.db 0x0a
      0055F0 0D                    4015 	.db 0x0d
      0055F1 2B 2D 2D 2D 2D 2D 2D  4016 	.ascii "+--------------------------------------------------+"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2B
      005625 00                    4017 	.db 0x00
                                   4018 	.area CSEG    (CODE)
                                   4019 	.area CONST   (CODE)
      005626                       4020 ___str_1:
      005626 0A                    4021 	.db 0x0a
      005627 0D                    4022 	.db 0x0d
      005628 7C 20 45 52 52 4F 52  4023 	.ascii "| ERROR: Invalid input - Please enter numbers only     |"
             3A 20 49 6E 76 61 6C
             69 64 20 69 6E 70 75
             74 20 2D 20 50 6C 65
             61 73 65 20 65 6E 74
             65 72 20 6E 75 6D 62
             65 72 73 20 6F 6E 6C
             79 20 20 20 20 20 7C
      005660 00                    4024 	.db 0x00
                                   4025 	.area CSEG    (CODE)
                                   4026 	.area CONST   (CODE)
      005661                       4027 ___str_2:
      005661 0A                    4028 	.db 0x0a
      005662 0D                    4029 	.db 0x0d
      005663 2B 2D 2D 2D 2D 2D 2D  4030 	.ascii "+--------------------------------------------------+"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2B
      005697 0A                    4031 	.db 0x0a
      005698 0D                    4032 	.db 0x0d
      005699 00                    4033 	.db 0x00
                                   4034 	.area CSEG    (CODE)
                                   4035 	.area CONST   (CODE)
      00569A                       4036 ___str_3:
      00569A 0A                    4037 	.db 0x0a
      00569B 0D                    4038 	.db 0x0d
      00569C 7C 20 45 52 52 4F 52  4039 	.ascii "| ERROR: Invalid buffer size                          |"
             3A 20 49 6E 76 61 6C
             69 64 20 62 75 66 66
             65 72 20 73 69 7A 65
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 7C
      0056D3 00                    4040 	.db 0x00
                                   4041 	.area CSEG    (CODE)
                                   4042 	.area CONST   (CODE)
      0056D4                       4043 ___str_4:
      0056D4 0A                    4044 	.db 0x0a
      0056D5 0D                    4045 	.db 0x0d
      0056D6 7C 20 2D 20 4D 75 73  4046 	.ascii "| - Must be between %d and %d                       |"
             74 20 62 65 20 62 65
             74 77 65 65 6E 20 25
             64 20 61 6E 64 20 25
             64 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 7C
      00570B 00                    4047 	.db 0x00
                                   4048 	.area CSEG    (CODE)
                                   4049 	.area CONST   (CODE)
      00570C                       4050 ___str_5:
      00570C 0A                    4051 	.db 0x0a
      00570D 0D                    4052 	.db 0x0d
      00570E 7C 20 2D 20 4D 75 73  4053 	.ascii "| - Must be multiple of 16                           |"
             74 20 62 65 20 6D 75
             6C 74 69 70 6C 65 20
             6F 66 20 31 36 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 7C
      005744 00                    4054 	.db 0x00
                                   4055 	.area CSEG    (CODE)
                                   4056 	.area CONST   (CODE)
      005745                       4057 ___str_6:
      005745 0A                    4058 	.db 0x0a
      005746 0D                    4059 	.db 0x0d
      005747 7C 20 49 6E 70 75 74  4060 	.ascii "| Input size: %-39d |"
             20 73 69 7A 65 3A 20
             25 2D 33 39 64 20 7C
      00575C 00                    4061 	.db 0x00
                                   4062 	.area CSEG    (CODE)
                                   4063 	.area CONST   (CODE)
      00575D                       4064 ___str_7:
      00575D 0A                    4065 	.db 0x0a
      00575E 0D                    4066 	.db 0x0d
      00575F 7C 20 42 55 46 46 45  4067 	.ascii "| BUFFER DEALLOCATION STATUS                      |"
             52 20 44 45 41 4C 4C
             4F 43 41 54 49 4F 4E
             20 53 54 41 54 55 53
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 7C
      005792 00                    4068 	.db 0x00
                                   4069 	.area CSEG    (CODE)
                                   4070 	.area CONST   (CODE)
      005793                       4071 ___str_8:
      005793 0A                    4072 	.db 0x0a
      005794 0D                    4073 	.db 0x0d
      005795 7C 2D 2D 2D 2D 2D 2D  4074 	.ascii "|------------------------------------------------|"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             7C
      0057C7 00                    4075 	.db 0x00
                                   4076 	.area CSEG    (CODE)
                                   4077 	.area CONST   (CODE)
      0057C8                       4078 ___str_9:
      0057C8 0A                    4079 	.db 0x0a
      0057C9 0D                    4080 	.db 0x0d
      0057CA 7C 20 42 75 66 66 65  4081 	.ascii "| Buffers to Free  | %-28d |"
             72 73 20 74 6F 20 46
             72 65 65 20 20 7C 20
             25 2D 32 38 64 20 7C
      0057E6 00                    4082 	.db 0x00
                                   4083 	.area CSEG    (CODE)
                                   4084 	.area CONST   (CODE)
      0057E7                       4085 ___str_10:
      0057E7 0A                    4086 	.db 0x0a
      0057E8 0D                    4087 	.db 0x0d
      0057E9 7C 20 41 6C 6C 20 62  4088 	.ascii "| All buffers successfully deallocated            |"
             75 66 66 65 72 73 20
             73 75 63 63 65 73 73
             66 75 6C 6C 79 20 64
             65 61 6C 6C 6F 63 61
             74 65 64 20 20 20 20
             20 20 20 20 20 20 20
             20 7C
      00581C 00                    4089 	.db 0x00
                                   4090 	.area CSEG    (CODE)
                                   4091 	.area CONST   (CODE)
      00581D                       4092 ___str_11:
      00581D 0A                    4093 	.db 0x0a
      00581E 0D                    4094 	.db 0x0d
      00581F 7C 20 57 41 52 4E 49  4095 	.ascii "| WARNING: Some buffers failed to deallocate      |"
             4E 47 3A 20 53 6F 6D
             65 20 62 75 66 66 65
             72 73 20 66 61 69 6C
             65 64 20 74 6F 20 64
             65 61 6C 6C 6F 63 61
             74 65 20 20 20 20 20
             20 7C
      005852 00                    4096 	.db 0x00
                                   4097 	.area CSEG    (CODE)
                                   4098 	.area CONST   (CODE)
      005853                       4099 ___str_12:
      005853 0A                    4100 	.db 0x0a
      005854 0D                    4101 	.db 0x0d
      005855 2B 2D 2D 2D 2D 2D 2D  4102 	.ascii "+------------------SYSTEM STATUS-------------------+"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 53 59
             53 54 45 4D 20 53 54
             41 54 55 53 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2B
      005889 00                    4103 	.db 0x00
                                   4104 	.area CSEG    (CODE)
                                   4105 	.area CONST   (CODE)
      00588A                       4106 ___str_13:
      00588A 0A                    4107 	.db 0x0a
      00588B 0D                    4108 	.db 0x0d
      00588C 7C 20 43 4F 4D 4D 41  4109 	.ascii "| COMMAND STATISTICS                              |"
             4E 44 20 53 54 41 54
             49 53 54 49 43 53 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 7C
      0058BF 00                    4110 	.db 0x00
                                   4111 	.area CSEG    (CODE)
                                   4112 	.area CONST   (CODE)
      0058C0                       4113 ___str_14:
      0058C0 0A                    4114 	.db 0x0a
      0058C1 0D                    4115 	.db 0x0d
      0058C2 7C 20 54 6F 74 61 6C  4116 	.ascii "| Total Commands   | %-28d |"
             20 43 6F 6D 6D 61 6E
             64 73 20 20 20 7C 20
             25 2D 32 38 64 20 7C
      0058DE 00                    4117 	.db 0x00
                                   4118 	.area CSEG    (CODE)
                                   4119 	.area CONST   (CODE)
      0058DF                       4120 ___str_15:
      0058DF 0A                    4121 	.db 0x0a
      0058E0 0D                    4122 	.db 0x0d
      0058E1 7C 20 52 65 63 65 6E  4123 	.ascii "| Recent Commands  | %-28d |"
             74 20 43 6F 6D 6D 61
             6E 64 73 20 20 7C 20
             25 2D 32 38 64 20 7C
      0058FD 00                    4124 	.db 0x00
                                   4125 	.area CSEG    (CODE)
                                   4126 	.area CONST   (CODE)
      0058FE                       4127 ___str_16:
      0058FE 0A                    4128 	.db 0x0a
      0058FF 0D                    4129 	.db 0x0d
      005900 7C 20 53 54 4F 52 41  4130 	.ascii "| STORAGE STATISTICS                             |"
             47 45 20 53 54 41 54
             49 53 54 49 43 53 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             7C
      005932 00                    4131 	.db 0x00
                                   4132 	.area CSEG    (CODE)
                                   4133 	.area CONST   (CODE)
      005933                       4134 ___str_17:
      005933 0A                    4135 	.db 0x0a
      005934 0D                    4136 	.db 0x0d
      005935 7C 20 54 6F 74 61 6C  4137 	.ascii "| Total Storage    | %-28d |"
             20 53 74 6F 72 61 67
             65 20 20 20 20 7C 20
             25 2D 32 38 64 20 7C
      005951 00                    4138 	.db 0x00
                                   4139 	.area CSEG    (CODE)
                                   4140 	.area CONST   (CODE)
      005952                       4141 ___str_18:
      005952 0A                    4142 	.db 0x0a
      005953 0D                    4143 	.db 0x0d
      005954 7C 20 52 65 63 65 6E  4144 	.ascii "| Recent Storage   | %-28d |"
             74 20 53 74 6F 72 61
             67 65 20 20 20 7C 20
             25 2D 32 38 64 20 7C
      005970 00                    4145 	.db 0x00
                                   4146 	.area CSEG    (CODE)
                                   4147 	.area CONST   (CODE)
      005971                       4148 ___str_19:
      005971 0A                    4149 	.db 0x0a
      005972 0D                    4150 	.db 0x0d
      005973 7C 20 54 4F 54 41 4C  4151 	.ascii "| TOTAL BUFFERS IN HEAP                           |"
             20 42 55 46 46 45 52
             53 20 49 4E 20 48 45
             41 50 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 7C
      0059A6 00                    4152 	.db 0x00
                                   4153 	.area CSEG    (CODE)
                                   4154 	.area CONST   (CODE)
      0059A7                       4155 ___str_20:
      0059A7 0A                    4156 	.db 0x0a
      0059A8 0D                    4157 	.db 0x0d
      0059A9 7C 20 54 6F 74 61 6C  4158 	.ascii "| Total Buffers    | %-28d |"
             20 42 75 66 66 65 72
             73 20 20 20 20 7C 20
             25 2D 32 38 64 20 7C
      0059C5 00                    4159 	.db 0x00
                                   4160 	.area CSEG    (CODE)
                                   4161 	.area CONST   (CODE)
      0059C6                       4162 ___str_21:
      0059C6 0A                    4163 	.db 0x0a
      0059C7 0D                    4164 	.db 0x0d
      0059C8 2B 2D 2D 2D 2D 2D 2D  4165 	.ascii "+------------------BUFFER INFO--------------------+"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 42 55
             46 46 45 52 20 49 4E
             46 4F 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2B
      0059FB 00                    4166 	.db 0x00
                                   4167 	.area CSEG    (CODE)
                                   4168 	.area CONST   (CODE)
      0059FC                       4169 ___str_22:
      0059FC 0A                    4170 	.db 0x0a
      0059FD 0D                    4171 	.db 0x0d
      0059FE 7C 20 49 44 20 7C 20  4172 	.ascii "| ID | Start Addr  | End Addr    | Size (bytes) |"
             53 74 61 72 74 20 41
             64 64 72 20 20 7C 20
             45 6E 64 20 41 64 64
             72 20 20 20 20 7C 20
             53 69 7A 65 20 28 62
             79 74 65 73 29 20 7C
      005A2F 00                    4173 	.db 0x00
                                   4174 	.area CSEG    (CODE)
                                   4175 	.area CONST   (CODE)
      005A30                       4176 ___str_23:
      005A30 0A                    4177 	.db 0x0a
      005A31 0D                    4178 	.db 0x0d
      005A32 7C 2D 2D 2D 2D 7C 2D  4179 	.ascii "|----|-------------|-------------|--------------|"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 7C 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 7C 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 7C
      005A63 00                    4180 	.db 0x00
                                   4181 	.area CSEG    (CODE)
                                   4182 	.area CONST   (CODE)
      005A64                       4183 ___str_24:
      005A64 0A                    4184 	.db 0x0a
      005A65 0D                    4185 	.db 0x0d
      005A66 7C 20 25 2D 32 64 20  4186 	.ascii "| %-2d | %-10p | %-10p | %-11d |"
             7C 20 25 2D 31 30 70
             20 7C 20 25 2D 31 30
             70 20 7C 20 25 2D 31
             31 64 20 7C
      005A86 00                    4187 	.db 0x00
                                   4188 	.area CSEG    (CODE)
                                   4189 	.area CONST   (CODE)
      005A87                       4190 ___str_25:
      005A87 0A                    4191 	.db 0x0a
      005A88 0D                    4192 	.db 0x0d
      005A89 7C 20 4D 45 4D 4F 52  4193 	.ascii "| MEMORY ALLOCATION STATUS BUFFER 0              |"
             59 20 41 4C 4C 4F 43
             41 54 49 4F 4E 20 53
             54 41 54 55 53 20 42
             55 46 46 45 52 20 30
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             7C
      005ABB 00                    4194 	.db 0x00
                                   4195 	.area CSEG    (CODE)
                                   4196 	.area CONST   (CODE)
      005ABC                       4197 ___str_26:
      005ABC 0A                    4198 	.db 0x0a
      005ABD 0D                    4199 	.db 0x0d
      005ABE 7C 20 54 6F 74 61 6C  4200 	.ascii "| Total Space      | %-28d |"
             20 53 70 61 63 65 20
             20 20 20 20 20 7C 20
             25 2D 32 38 64 20 7C
      005ADA 00                    4201 	.db 0x00
                                   4202 	.area CSEG    (CODE)
                                   4203 	.area CONST   (CODE)
      005ADB                       4204 ___str_27:
      005ADB 0A                    4205 	.db 0x0a
      005ADC 0D                    4206 	.db 0x0d
      005ADD 7C 20 4F 63 63 75 70  4207 	.ascii "| Occupied Space   | %-28d |"
             69 65 64 20 53 70 61
             63 65 20 20 20 7C 20
             25 2D 32 38 64 20 7C
      005AF9 00                    4208 	.db 0x00
                                   4209 	.area CSEG    (CODE)
                                   4210 	.area CONST   (CODE)
      005AFA                       4211 ___str_28:
      005AFA 0A                    4212 	.db 0x0a
      005AFB 0D                    4213 	.db 0x0d
      005AFC 7C 20 46 72 65 65 20  4214 	.ascii "| Free Space       | %-28d |"
             53 70 61 63 65 20 20
             20 20 20 20 20 7C 20
             25 2D 32 38 64 20 7C
      005B18 00                    4215 	.db 0x00
                                   4216 	.area CSEG    (CODE)
                                   4217 	.area CONST   (CODE)
      005B19                       4218 ___str_29:
      005B19 0A                    4219 	.db 0x0a
      005B1A 0D                    4220 	.db 0x0d
      005B1B 7C 20 42 55 46 46 45  4221 	.ascii "| BUFFER 0 CLEAR STATUS                           |"
             52 20 30 20 43 4C 45
             41 52 20 53 54 41 54
             55 53 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 7C
      005B4E 00                    4222 	.db 0x00
                                   4223 	.area CSEG    (CODE)
                                   4224 	.area CONST   (CODE)
      005B4F                       4225 ___str_30:
      005B4F 0A                    4226 	.db 0x0a
      005B50 0D                    4227 	.db 0x0d
      005B51 7C 20 42 75 66 66 65  4228 	.ascii "| Buffer 0 is not initialized                     |"
             72 20 30 20 69 73 20
             6E 6F 74 20 69 6E 69
             74 69 61 6C 69 7A 65
             64 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 7C
      005B84 00                    4229 	.db 0x00
                                   4230 	.area CSEG    (CODE)
                                   4231 	.area CONST   (CODE)
      005B85                       4232 ___str_31:
      005B85 0A                    4233 	.db 0x0a
      005B86 0D                    4234 	.db 0x0d
      005B87 7C 20 42 75 66 66 65  4235 	.ascii "| Buffer Size      | %-28d |"
             72 20 53 69 7A 65 20
             20 20 20 20 20 7C 20
             25 2D 32 38 64 20 7C
      005BA3 00                    4236 	.db 0x00
                                   4237 	.area CSEG    (CODE)
                                   4238 	.area CONST   (CODE)
      005BA4                       4239 ___str_32:
      005BA4 0A                    4240 	.db 0x0a
      005BA5 0D                    4241 	.db 0x0d
      005BA6 7C 20 53 74 61 74 75  4242 	.ascii "| Status          | %-28s |"
             73 20 20 20 20 20 20
             20 20 20 20 7C 20 25
             2D 32 38 73 20 7C
      005BC1 00                    4243 	.db 0x00
                                   4244 	.area CSEG    (CODE)
                                   4245 	.area CONST   (CODE)
      005BC2                       4246 ___str_33:
      005BC2 44 61 74 61 20 45 72  4247 	.ascii "Data Erased"
             61 73 65 64
      005BCD 00                    4248 	.db 0x00
                                   4249 	.area CSEG    (CODE)
                                   4250 	.area CONST   (CODE)
      005BCE                       4251 ___str_34:
      005BCE 0A                    4252 	.db 0x0a
      005BCF 0D                    4253 	.db 0x0d
      005BD0 2B 2D 2D 2D 2D 2D 2D  4254 	.ascii "+----------------BUFFER CREATION------------------+"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 42 55 46 46
             45 52 20 43 52 45 41
             54 49 4F 4E 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2B
      005C03 00                    4255 	.db 0x00
                                   4256 	.area CSEG    (CODE)
                                   4257 	.area CONST   (CODE)
      005C04                       4258 ___str_35:
      005C04 0A                    4259 	.db 0x0a
      005C05 0D                    4260 	.db 0x0d
      005C06 7C 20 45 6E 74 65 72  4261 	.ascii "| Enter buffer size (50-500): "
             20 62 75 66 66 65 72
             20 73 69 7A 65 20 28
             35 30 2D 35 30 30 29
             3A 20
      005C24 00                    4262 	.db 0x00
                                   4263 	.area CSEG    (CODE)
                                   4264 	.area CONST   (CODE)
      005C25                       4265 ___str_36:
      005C25 0A                    4266 	.db 0x0a
      005C26 0D                    4267 	.db 0x0d
      005C27 20 45 52 52 4F 52 20  4268 	.ascii " ERROR : Invalid request"
             3A 20 49 6E 76 61 6C
             69 64 20 72 65 71 75
             65 73 74
      005C3F 0A                    4269 	.db 0x0a
      005C40 0D                    4270 	.db 0x0d
      005C41 00                    4271 	.db 0x00
                                   4272 	.area CSEG    (CODE)
                                   4273 	.area CONST   (CODE)
      005C42                       4274 ___str_37:
      005C42 0A                    4275 	.db 0x0a
      005C43 0D                    4276 	.db 0x0d
      005C44 7C 20 52 65 71 75 65  4277 	.ascii "| Requested Size: %-32d |"
             73 74 65 64 20 53 69
             7A 65 3A 20 25 2D 33
             32 64 20 7C
      005C5D 00                    4278 	.db 0x00
                                   4279 	.area CSEG    (CODE)
                                   4280 	.area CONST   (CODE)
      005C5E                       4281 ___str_38:
      005C5E 0A                    4282 	.db 0x0a
      005C5F 0D                    4283 	.db 0x0d
      005C60 7C 20 45 52 52 4F 52  4284 	.ascii "| ERROR: Memory allocation failed                  |"
             3A 20 4D 65 6D 6F 72
             79 20 61 6C 6C 6F 63
             61 74 69 6F 6E 20 66
             61 69 6C 65 64 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 7C
      005C94 00                    4285 	.db 0x00
                                   4286 	.area CSEG    (CODE)
                                   4287 	.area CONST   (CODE)
      005C95                       4288 ___str_39:
      005C95 0A                    4289 	.db 0x0a
      005C96 0D                    4290 	.db 0x0d
      005C97 7C 20 54 72 79 20 73  4291 	.ascii "| Try smaller size with '+' command                |"
             6D 61 6C 6C 65 72 20
             73 69 7A 65 20 77 69
             74 68 20 27 2B 27 20
             63 6F 6D 6D 61 6E 64
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 7C
      005CCB 00                    4292 	.db 0x00
                                   4293 	.area CSEG    (CODE)
                                   4294 	.area CONST   (CODE)
      005CCC                       4295 ___str_40:
      005CCC 0A                    4296 	.db 0x0a
      005CCD 0D                    4297 	.db 0x0d
      005CCE 7C 20 53 55 43 43 45  4298 	.ascii "| SUCCESS: Buffer created successfully            |"
             53 53 3A 20 42 75 66
             66 65 72 20 63 72 65
             61 74 65 64 20 73 75
             63 63 65 73 73 66 75
             6C 6C 79 20 20 20 20
             20 20 20 20 20 20 20
             20 7C
      005D01 00                    4299 	.db 0x00
                                   4300 	.area CSEG    (CODE)
                                   4301 	.area CONST   (CODE)
      005D02                       4302 ___str_41:
      005D02 0A                    4303 	.db 0x0a
      005D03 0D                    4304 	.db 0x0d
      005D04 2B 2D 2D 2D 2D 2D 2D  4305 	.ascii "+----------------BUFFER DELETION------------------+"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 42 55 46 46
             45 52 20 44 45 4C 45
             54 49 4F 4E 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2B
      005D37 00                    4306 	.db 0x00
                                   4307 	.area CSEG    (CODE)
                                   4308 	.area CONST   (CODE)
      005D38                       4309 ___str_42:
      005D38 0A                    4310 	.db 0x0a
      005D39 0D                    4311 	.db 0x0d
      005D3A 7C 20 45 6E 74 65 72  4312 	.ascii "| Enter buffer number (0-102): "
             20 62 75 66 66 65 72
             20 6E 75 6D 62 65 72
             20 28 30 2D 31 30 32
             29 3A 20
      005D59 00                    4313 	.db 0x00
                                   4314 	.area CSEG    (CODE)
                                   4315 	.area CONST   (CODE)
      005D5A                       4316 ___str_43:
      005D5A 0A                    4317 	.db 0x0a
      005D5B 0D                    4318 	.db 0x0d
      005D5C 7C 20 45 52 52 4F 52  4319 	.ascii "| ERROR: Cannot delete Buffer 0                    |"
             3A 20 43 61 6E 6E 6F
             74 20 64 65 6C 65 74
             65 20 42 75 66 66 65
             72 20 30 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 7C
      005D90 00                    4320 	.db 0x00
                                   4321 	.area CSEG    (CODE)
                                   4322 	.area CONST   (CODE)
      005D91                       4323 ___str_44:
      005D91 0A                    4324 	.db 0x0a
      005D92 0D                    4325 	.db 0x0d
      005D93 7C 20 45 52 52 4F 52  4326 	.ascii "| ERROR: Invalid delete request                  |"
             3A 20 49 6E 76 61 6C
             69 64 20 64 65 6C 65
             74 65 20 72 65 71 75
             65 73 74 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             7C
      005DC5 00                    4327 	.db 0x00
                                   4328 	.area CSEG    (CODE)
                                   4329 	.area CONST   (CODE)
      005DC6                       4330 ___str_45:
      005DC6 0A                    4331 	.db 0x0a
      005DC7 0D                    4332 	.db 0x0d
      005DC8 7C 20 53 55 43 43 45  4333 	.ascii "| SUCCESS: Buffer %-2d deleted                     |"
             53 53 3A 20 42 75 66
             66 65 72 20 25 2D 32
             64 20 64 65 6C 65 74
             65 64 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 7C
      005DFC 00                    4334 	.db 0x00
                                   4335 	.area CSEG    (CODE)
                                   4336 	.area CONST   (CODE)
      005DFD                       4337 ___str_46:
      005DFD 0A                    4338 	.db 0x0a
      005DFE 0D                    4339 	.db 0x0d
      005DFF 2B 2D 2D 2D 2D 2D 2D  4340 	.ascii "+---------------BUFFER 0 CONTENTS-----------------+"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 42 55 46 46 45
             52 20 30 20 43 4F 4E
             54 45 4E 54 53 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2B
      005E32 00                    4341 	.db 0x00
                                   4342 	.area CSEG    (CODE)
                                   4343 	.area CONST   (CODE)
      005E33                       4344 ___str_47:
      005E33 0A                    4345 	.db 0x0a
      005E34 0D                    4346 	.db 0x0d
      005E35 7C 20 41 64 64 72 65  4347 	.ascii "| Address    | Data                               |"
             73 73 20 20 20 20 7C
             20 44 61 74 61 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 7C
      005E68 00                    4348 	.db 0x00
                                   4349 	.area CSEG    (CODE)
                                   4350 	.area CONST   (CODE)
      005E69                       4351 ___str_48:
      005E69 0A                    4352 	.db 0x0a
      005E6A 0D                    4353 	.db 0x0d
      005E6B 7C 2D 2D 2D 2D 2D 2D  4354 	.ascii "|------------|---------------------------------------|"
             2D 2D 2D 2D 2D 2D 7C
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 7C
      005EA1 00                    4355 	.db 0x00
                                   4356 	.area CSEG    (CODE)
                                   4357 	.area CONST   (CODE)
      005EA2                       4358 ___str_49:
      005EA2 0A                    4359 	.db 0x0a
      005EA3 0D                    4360 	.db 0x0d
      005EA4 00                    4361 	.db 0x00
                                   4362 	.area CSEG    (CODE)
                                   4363 	.area CONST   (CODE)
      005EA5                       4364 ___str_50:
      005EA5 42 55 46 46 45 52 20  4365 	.ascii "BUFFER 0 DOES NOT EXIST"
             30 20 44 4F 45 53 20
             4E 4F 54 20 45 58 49
             53 54
      005EBC 0A                    4366 	.db 0x0a
      005EBD 0D                    4367 	.db 0x0d
      005EBE 00                    4368 	.db 0x00
                                   4369 	.area CSEG    (CODE)
                                   4370 	.area CONST   (CODE)
      005EBF                       4371 ___str_51:
      005EBF 0A                    4372 	.db 0x0a
      005EC0 0D                    4373 	.db 0x0d
      005EC1 7C 20 25 30 34 58 20  4374 	.ascii "| %04X      |"
             20 20 20 20 20 7C
      005ECE 00                    4375 	.db 0x00
                                   4376 	.area CSEG    (CODE)
                                   4377 	.area CONST   (CODE)
      005ECF                       4378 ___str_52:
      005ECF 20 25 30 32 58        4379 	.ascii " %02X"
      005ED4 00                    4380 	.db 0x00
                                   4381 	.area CSEG    (CODE)
                                   4382 	.area CONST   (CODE)
      005ED5                       4383 ___str_53:
      005ED5 20 20 20              4384 	.ascii "   "
      005ED8 00                    4385 	.db 0x00
                                   4386 	.area CSEG    (CODE)
                                   4387 	.area CONST   (CODE)
      005ED9                       4388 ___str_54:
      005ED9 20 7C                 4389 	.ascii " |"
      005EDB 00                    4390 	.db 0x00
                                   4391 	.area CSEG    (CODE)
                                   4392 	.area CONST   (CODE)
      005EDC                       4393 ___str_55:
      005EDC 0A                    4394 	.db 0x0a
      005EDD 0D                    4395 	.db 0x0d
      005EDE 2B 3D 3D 3D 3D 3D 3D  4396 	.ascii "+==================================================+"
             3D 3D 3D 3D 3D 3D 3D
             3D 3D 3D 3D 3D 3D 3D
             3D 3D 3D 3D 3D 3D 3D
             3D 3D 3D 3D 3D 3D 3D
             3D 3D 3D 3D 3D 3D 3D
             3D 3D 3D 3D 3D 3D 3D
             3D 3D 2B
      005F12 00                    4397 	.db 0x00
                                   4398 	.area CSEG    (CODE)
                                   4399 	.area CONST   (CODE)
      005F13                       4400 ___str_56:
      005F13 0A                    4401 	.db 0x0a
      005F14 0D                    4402 	.db 0x0d
      005F15 7C 20 20 20 20 20 20  4403 	.ascii "|           BUFFER MANAGEMENT SYSTEM                |"
             20 20 20 20 20 42 55
             46 46 45 52 20 4D 41
             4E 41 47 45 4D 45 4E
             54 20 53 59 53 54 45
             4D 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 7C
      005F4A 00                    4404 	.db 0x00
                                   4405 	.area CSEG    (CODE)
                                   4406 	.area CONST   (CODE)
      005F4B                       4407 ___str_57:
      005F4B 0A                    4408 	.db 0x0a
      005F4C 0D                    4409 	.db 0x0d
      005F4D 7C 20 45 6E 74 65 72  4410 	.ascii "| Enter initial buffer size (32-5120): "
             20 69 6E 69 74 69 61
             6C 20 62 75 66 66 65
             72 20 73 69 7A 65 20
             28 33 32 2D 35 31 32
             30 29 3A 20
      005F74 00                    4411 	.db 0x00
                                   4412 	.area CSEG    (CODE)
                                   4413 	.area CONST   (CODE)
      005F75                       4414 ___str_58:
      005F75 0A                    4415 	.db 0x0a
      005F76 0D                    4416 	.db 0x0d
      005F77 7C 20 45 52 52 4F 52  4417 	.ascii "| ERROR: Buffer 1 allocation failed                |"
             3A 20 42 75 66 66 65
             72 20 31 20 61 6C 6C
             6F 63 61 74 69 6F 6E
             20 66 61 69 6C 65 64
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 7C
      005FAB 00                    4418 	.db 0x00
                                   4419 	.area CSEG    (CODE)
                                   4420 	.area CONST   (CODE)
      005FAC                       4421 ___str_59:
      005FAC 0A                    4422 	.db 0x0a
      005FAD 0D                    4423 	.db 0x0d
      005FAE 7C 20 54 72 79 20 73  4424 	.ascii "| Try smaller size                                |"
             6D 61 6C 6C 65 72 20
             73 69 7A 65 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 7C
      005FE1 00                    4425 	.db 0x00
                                   4426 	.area CSEG    (CODE)
                                   4427 	.area CONST   (CODE)
      005FE2                       4428 ___str_60:
      005FE2 0A                    4429 	.db 0x0a
      005FE3 0D                    4430 	.db 0x0d
      005FE4 2B 2D 2D 2D 2D 2D 2D  4431 	.ascii "+------------------------------------------------+"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2B
      006016 0A                    4432 	.db 0x0a
      006017 0D                    4433 	.db 0x0d
      006018 00                    4434 	.db 0x00
                                   4435 	.area CSEG    (CODE)
                                   4436 	.area CONST   (CODE)
      006019                       4437 ___str_61:
      006019 0A                    4438 	.db 0x0a
      00601A 0D                    4439 	.db 0x0d
      00601B 7C 20 45 52 52 4F 52  4440 	.ascii "| ERROR: Buffer 2 allocation failed                |"
             3A 20 42 75 66 66 65
             72 20 32 20 61 6C 6C
             6F 63 61 74 69 6F 6E
             20 66 61 69 6C 65 64
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 7C
      00604F 00                    4441 	.db 0x00
                                   4442 	.area CSEG    (CODE)
                                   4443 	.area CONST   (CODE)
      006050                       4444 ___str_62:
      006050 0A                    4445 	.db 0x0a
      006051 0D                    4446 	.db 0x0d
      006052 2B 2D 2D 2D 2D 2D 2D  4447 	.ascii "+----------------BUFFER STATUS--------------------+"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 42 55 46 46
             45 52 20 53 54 41 54
             55 53 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2B
      006085 00                    4448 	.db 0x00
                                   4449 	.area CSEG    (CODE)
                                   4450 	.area CONST   (CODE)
      006086                       4451 ___str_63:
      006086 0A                    4452 	.db 0x0a
      006087 0D                    4453 	.db 0x0d
      006088 7C 20 42 75 66 66 65  4454 	.ascii "| Buffer 1 | Addr: %-10p | Size: %-6d   |"
             72 20 31 20 7C 20 41
             64 64 72 3A 20 25 2D
             31 30 70 20 7C 20 53
             69 7A 65 3A 20 25 2D
             36 64 20 20 20 7C
      0060B1 00                    4455 	.db 0x00
                                   4456 	.area CSEG    (CODE)
                                   4457 	.area CONST   (CODE)
      0060B2                       4458 ___str_64:
      0060B2 0A                    4459 	.db 0x0a
      0060B3 0D                    4460 	.db 0x0d
      0060B4 7C 20 42 75 66 66 65  4461 	.ascii "| Buffer 2 | Addr: %-10p | Size: %-6d   |"
             72 20 32 20 7C 20 41
             64 64 72 3A 20 25 2D
             31 30 70 20 7C 20 53
             69 7A 65 3A 20 25 2D
             36 64 20 20 20 7C
      0060DD 00                    4462 	.db 0x00
                                   4463 	.area CSEG    (CODE)
                                   4464 	.area CONST   (CODE)
      0060DE                       4465 ___str_65:
      0060DE 0A                    4466 	.db 0x0a
      0060DF 0D                    4467 	.db 0x0d
      0060E0 2B 2D 2D 2D 2D 2D 2D  4468 	.ascii "+------------------COMMANDS----------------------+"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 43 4F
             4D 4D 41 4E 44 53 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2B
      006112 00                    4469 	.db 0x00
                                   4470 	.area CSEG    (CODE)
                                   4471 	.area CONST   (CODE)
      006113                       4472 ___str_66:
      006113 0A                    4473 	.db 0x0a
      006114 0D                    4474 	.db 0x0d
      006115 7C 20 5B 41 2D 5A 5D  4475 	.ascii "| [A-Z] : Store character in Buffer 0           |"
             20 3A 20 53 74 6F 72
             65 20 63 68 61 72 61
             63 74 65 72 20 69 6E
             20 42 75 66 66 65 72
             20 30 20 20 20 20 20
             20 20 20 20 20 20 7C
      006146 00                    4476 	.db 0x00
                                   4477 	.area CSEG    (CODE)
                                   4478 	.area CONST   (CODE)
      006147                       4479 ___str_67:
      006147 0A                    4480 	.db 0x0a
      006148 0D                    4481 	.db 0x0d
      006149 7C 20 2B 20 20 20 20  4482 	.ascii "| +     : Create new buffer                     |"
             20 3A 20 43 72 65 61
             74 65 20 6E 65 77 20
             62 75 66 66 65 72 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 7C
      00617A 00                    4483 	.db 0x00
                                   4484 	.area CSEG    (CODE)
                                   4485 	.area CONST   (CODE)
      00617B                       4486 ___str_68:
      00617B 0A                    4487 	.db 0x0a
      00617C 0D                    4488 	.db 0x0d
      00617D 7C 20 2D 20 20 20 20  4489 	.ascii "| -     : Delete buffer                         |"
             20 3A 20 44 65 6C 65
             74 65 20 62 75 66 66
             65 72 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 7C
      0061AE 00                    4490 	.db 0x00
                                   4491 	.area CSEG    (CODE)
                                   4492 	.area CONST   (CODE)
      0061AF                       4493 ___str_69:
      0061AF 0A                    4494 	.db 0x0a
      0061B0 0D                    4495 	.db 0x0d
      0061B1 7C 20 3F 20 20 20 20  4496 	.ascii "| ?     : Show system status                    |"
             20 3A 20 53 68 6F 77
             20 73 79 73 74 65 6D
             20 73 74 61 74 75 73
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 7C
      0061E2 00                    4497 	.db 0x00
                                   4498 	.area CSEG    (CODE)
                                   4499 	.area CONST   (CODE)
      0061E3                       4500 ___str_70:
      0061E3 0A                    4501 	.db 0x0a
      0061E4 0D                    4502 	.db 0x0d
      0061E5 7C 20 3D 20 20 20 20  4503 	.ascii "| =     : Display Buffer 0 contents             |"
             20 3A 20 44 69 73 70
             6C 61 79 20 42 75 66
             66 65 72 20 30 20 63
             6F 6E 74 65 6E 74 73
             20 20 20 20 20 20 20
             20 20 20 20 20 20 7C
      006216 00                    4504 	.db 0x00
                                   4505 	.area CSEG    (CODE)
                                   4506 	.area CONST   (CODE)
      006217                       4507 ___str_71:
      006217 0A                    4508 	.db 0x0a
      006218 0D                    4509 	.db 0x0d
      006219 7C 20 40 20 20 20 20  4510 	.ascii "| @     : Reset system                          |"
             20 3A 20 52 65 73 65
             74 20 73 79 73 74 65
             6D 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 7C
      00624A 00                    4511 	.db 0x00
                                   4512 	.area CSEG    (CODE)
                                   4513 	.area CONST   (CODE)
      00624B                       4514 ___str_72:
      00624B 0A                    4515 	.db 0x0a
      00624C 0D                    4516 	.db 0x0d
      00624D 7C 20 52 65 61 64 79  4517 	.ascii "| Ready for input. Enter uppercase chars (A-Z):    |"
             20 66 6F 72 20 69 6E
             70 75 74 2E 20 45 6E
             74 65 72 20 75 70 70
             65 72 63 61 73 65 20
             63 68 61 72 73 20 28
             41 2D 5A 29 3A 20 20
             20 20 7C
      006281 0A                    4518 	.db 0x0a
      006282 0D                    4519 	.db 0x0d
      006283 00                    4520 	.db 0x00
                                   4521 	.area CSEG    (CODE)
                                   4522 	.area CONST   (CODE)
      006284                       4523 ___str_73:
      006284 0A                    4524 	.db 0x0a
      006285 0D                    4525 	.db 0x0d
      006286 7C 20 43 6F 6D 6D 61  4526 	.ascii "| Command received: %-31c |"
             6E 64 20 72 65 63 65
             69 76 65 64 3A 20 25
             2D 33 31 63 20 7C
      0062A1 00                    4527 	.db 0x00
                                   4528 	.area CSEG    (CODE)
                                   4529 	.area CONST   (CODE)
      0062A2                       4530 ___str_74:
      0062A2 0A                    4531 	.db 0x0a
      0062A3 0D                    4532 	.db 0x0d
      0062A4 7C 20 53 74 6F 72 61  4533 	.ascii "| Storage: Total=%-4d Recent=%-4d Addr=%-10p |"
             67 65 3A 20 54 6F 74
             61 6C 3D 25 2D 34 64
             20 52 65 63 65 6E 74
             3D 25 2D 34 64 20 41
             64 64 72 3D 25 2D 31
             30 70 20 7C
      0062D2 0A                    4534 	.db 0x0a
      0062D3 0D                    4535 	.db 0x0d
      0062D4 00                    4536 	.db 0x00
                                   4537 	.area CSEG    (CODE)
                                   4538 	.area CONST   (CODE)
      0062D5                       4539 ___str_75:
      0062D5 0A                    4540 	.db 0x0a
      0062D6 0D                    4541 	.db 0x0d
      0062D7 7C 20 4E 4F 54 49 43  4542 	.ascii "| NOTICE: Buffer 0 is full - Storage stopped        |"
             45 3A 20 42 75 66 66
             65 72 20 30 20 69 73
             20 66 75 6C 6C 20 2D
             20 53 74 6F 72 61 67
             65 20 73 74 6F 70 70
             65 64 20 20 20 20 20
             20 20 20 7C
      00630C 00                    4543 	.db 0x00
                                   4544 	.area CSEG    (CODE)
                                   4545 	.area CONST   (CODE)
      00630D                       4546 ___str_76:
      00630D 0A                    4547 	.db 0x0a
      00630E 0D                    4548 	.db 0x0d
      00630F 7C 20 45 6E 74 65 72  4549 	.ascii "| Enter command (+, -, ?, =, @):                   |"
             20 63 6F 6D 6D 61 6E
             64 20 28 2B 2C 20 2D
             2C 20 3F 2C 20 3D 2C
             20 40 29 3A 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 7C
      006343 00                    4550 	.db 0x00
                                   4551 	.area CSEG    (CODE)
                                   4552 	.area XINIT   (CODE)
      006351                       4553 __xinit__index_of_buffers:
      006351 00                    4554 	.db #0x00	; 0
      006352                       4555 __xinit__total_number_of_commands:
      006352 00                    4556 	.db #0x00	; 0
      006353                       4557 __xinit__total_number_of_storage:
      006353 00                    4558 	.db #0x00	; 0
      006354                       4559 __xinit__recent_commands:
      006354 00                    4560 	.db #0x00	; 0
      006355                       4561 __xinit__recent_storage:
      006355 00                    4562 	.db #0x00	; 0
      006356                       4563 __xinit__recived_bytes:
      006356 00                    4564 	.db #0x00	; 0
      006357                       4565 __xinit__wr:
      006357 00 00 00              4566 	.byte #0x00,#0x00,#0x00
      00635A                       4567 __xinit__pointer1:
      00635A 00 00                 4568 	.byte #0x00,#0x00
      00635C                       4569 __xinit__pointer2:
      00635C 00 00                 4570 	.byte #0x00,#0x00
                                   4571 	.area CABS    (ABS,CODE)
