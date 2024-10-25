                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (MINGW32)
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
                                    473 	.area SSEG
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
                                    497 ; uninitialized external ram data
                                    498 ;--------------------------------------------------------
                                    499 	.area XSEG    (XDATA)
      000400                        500 _dataout_PARM_2:
      000400                        501 	.ds 1
      000401                        502 _dataout_address_10000_69:
      000401                        503 	.ds 2
      000403                        504 _array_for_nodes::
      000403                        505 	.ds 600
      00065B                        506 _putchar_chr_10000_79:
      00065B                        507 	.ds 2
      00065D                        508 _get_buf_value_PARM_2:
      00065D                        509 	.ds 2
      00065F                        510 _get_buf_value_PARM_3:
      00065F                        511 	.ds 2
      000661                        512 _get_buf_value_string_10000_84:
      000661                        513 	.ds 3
      000664                        514 _get_buf_value_buffer_size_10000_85:
      000664                        515 	.ds 2
      000666                        516 _get_buf_value_input_10000_85:
      000666                        517 	.ds 5
      00066B                        518 _get_buf_value_valid_input_10000_85:
      00066B                        519 	.ds 2
      00066D                        520 _print_prompt_string_10000_92:
      00066D                        521 	.ds 3
      000670                        522 _get_number_prompt_10000_95:
      000670                        523 	.ds 3
      000673                        524 _get_number_buffer_size_10000_96:
      000673                        525 	.ds 2
      000675                        526 _get_number_index_10000_96:
      000675                        527 	.ds 2
      000677                        528 _get_command_command_10000_99:
      000677                        529 	.ds 2
      000679                        530 _get_command_node_30003_120:
      000679                        531 	.ds 6
      00067F                        532 _buffer0_dump_offset_20001_128:
      00067F                        533 	.ds 2
      000681                        534 _main_node1_10002_140:
      000681                        535 	.ds 6
      000687                        536 _main_node2_10003_141:
      000687                        537 	.ds 6
                                    538 ;--------------------------------------------------------
                                    539 ; absolute external ram data
                                    540 ;--------------------------------------------------------
                                    541 	.area XABS    (ABS,XDATA)
                                    542 ;--------------------------------------------------------
                                    543 ; initialized external ram data
                                    544 ;--------------------------------------------------------
                                    545 	.area XISEG   (XDATA)
      001AF7                        546 _index_of_buffers:
      001AF7                        547 	.ds 1
      001AF8                        548 _total_number_of_commands::
      001AF8                        549 	.ds 1
      001AF9                        550 _total_number_of_storage::
      001AF9                        551 	.ds 1
      001AFA                        552 _recent_commands::
      001AFA                        553 	.ds 1
      001AFB                        554 _recent_storage::
      001AFB                        555 	.ds 1
      001AFC                        556 _recived_bytes::
      001AFC                        557 	.ds 1
      001AFD                        558 _wr::
      001AFD                        559 	.ds 3
      001B00                        560 _pointer1::
      001B00                        561 	.ds 2
      001B02                        562 _pointer2::
      001B02                        563 	.ds 2
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
      003003 02 3F 91         [24]  607 	ljmp	_main
                                    608 ;	return from main will return to caller
                                    609 ;--------------------------------------------------------
                                    610 ; code
                                    611 ;--------------------------------------------------------
                                    612 	.area CSEG    (CODE)
                                    613 ;------------------------------------------------------------
                                    614 ;Allocation info for local variables in function 'dataout'
                                    615 ;------------------------------------------------------------
                                    616 ;value                     Allocated with name '_dataout_PARM_2'
                                    617 ;address                   Allocated with name '_dataout_address_10000_69'
                                    618 ;debug_add                 Allocated with name '_dataout_debug_add_10000_70'
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
      00306C 90 04 01         [24]  635 	mov	dptr,#_dataout_address_10000_69
      00306F F0               [24]  636 	movx	@dptr,a
      003070 EF               [12]  637 	mov	a,r7
      003071 A3               [24]  638 	inc	dptr
      003072 F0               [24]  639 	movx	@dptr,a
                                    640 ;	syntax.c:29: __xdata unsigned char * debug_add = (__xdata unsigned char*)address;
      003073 90 04 01         [24]  641 	mov	dptr,#_dataout_address_10000_69
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
                                    677 ;chr                       Allocated with name '_putchar_chr_10000_79'
                                    678 ;------------------------------------------------------------
                                    679 ;	syntax.c:87: int putchar(int chr){
                                    680 ;	-----------------------------------------
                                    681 ;	 function putchar
                                    682 ;	-----------------------------------------
      003091                        683 _putchar:
      003091 AF 83            [24]  684 	mov	r7,dph
      003093 E5 82            [12]  685 	mov	a,dpl
      003095 90 06 5B         [24]  686 	mov	dptr,#_putchar_chr_10000_79
      003098 F0               [24]  687 	movx	@dptr,a
      003099 EF               [12]  688 	mov	a,r7
      00309A A3               [24]  689 	inc	dptr
      00309B F0               [24]  690 	movx	@dptr,a
                                    691 ;	syntax.c:88: SBUF = chr;                 // Load character to send
      00309C 90 06 5B         [24]  692 	mov	dptr,#_putchar_chr_10000_79
      00309F E0               [24]  693 	movx	a,@dptr
      0030A0 FE               [12]  694 	mov	r6,a
      0030A1 A3               [24]  695 	inc	dptr
      0030A2 E0               [24]  696 	movx	a,@dptr
      0030A3 8E 99            [24]  697 	mov	_SBUF,r6
                                    698 ;	syntax.c:89: while(!TI);                 // Wait for transmission complete
      0030A5                        699 00101$:
      0030A5 30 99 FD         [24]  700 	jnb	_TI,00101$
                                    701 ;	syntax.c:90: DEBUGPORT(55);              // Debug marker for transmission
      0030A8 90 04 00         [24]  702 	mov	dptr,#_dataout_PARM_2
      0030AB 74 37            [12]  703 	mov	a,#0x37
      0030AD F0               [24]  704 	movx	@dptr,a
      0030AE 90 FE FE         [24]  705 	mov	dptr,#0xfefe
      0030B1 12 30 68         [24]  706 	lcall	_dataout
                                    707 ;	syntax.c:91: TI = 0;                     // Clear transmission flag
                                    708 ;	assignBit
      0030B4 C2 99            [12]  709 	clr	_TI
                                    710 ;	syntax.c:92: return 1;
      0030B6 90 00 01         [24]  711 	mov	dptr,#0x0001
                                    712 ;	syntax.c:93: }
      0030B9 22               [24]  713 	ret
                                    714 ;------------------------------------------------------------
                                    715 ;Allocation info for local variables in function 'getchar'
                                    716 ;------------------------------------------------------------
                                    717 ;a                         Allocated with name '_getchar_a_10001_83'
                                    718 ;------------------------------------------------------------
                                    719 ;	syntax.c:101: int getchar(void){
                                    720 ;	-----------------------------------------
                                    721 ;	 function getchar
                                    722 ;	-----------------------------------------
      0030BA                        723 _getchar:
                                    724 ;	syntax.c:102: while(!RI);                 // Wait for character reception
      0030BA                        725 00101$:
      0030BA 30 98 FD         [24]  726 	jnb	_RI,00101$
                                    727 ;	syntax.c:103: int a = SBUF;               // Get received character
      0030BD AE 99            [24]  728 	mov	r6,_SBUF
      0030BF 7F 00            [12]  729 	mov	r7,#0x00
                                    730 ;	syntax.c:104: DEBUGPORT(10);              // Debug marker for reception
      0030C1 90 04 00         [24]  731 	mov	dptr,#_dataout_PARM_2
      0030C4 74 0A            [12]  732 	mov	a,#0x0a
      0030C6 F0               [24]  733 	movx	@dptr,a
      0030C7 90 FE FE         [24]  734 	mov	dptr,#0xfefe
      0030CA C0 07            [24]  735 	push	ar7
      0030CC C0 06            [24]  736 	push	ar6
      0030CE 12 30 68         [24]  737 	lcall	_dataout
      0030D1 D0 06            [24]  738 	pop	ar6
      0030D3 D0 07            [24]  739 	pop	ar7
                                    740 ;	syntax.c:105: RI = 0;                     // Clear reception flag
                                    741 ;	assignBit
      0030D5 C2 98            [12]  742 	clr	_RI
                                    743 ;	syntax.c:106: recived_bytes++;            // Update received byte count
      0030D7 90 1A FC         [24]  744 	mov	dptr,#_recived_bytes
      0030DA E0               [24]  745 	movx	a,@dptr
      0030DB 24 01            [12]  746 	add	a, #0x01
      0030DD F0               [24]  747 	movx	@dptr,a
                                    748 ;	syntax.c:107: return a;
      0030DE 8E 82            [24]  749 	mov	dpl, r6
      0030E0 8F 83            [24]  750 	mov	dph, r7
                                    751 ;	syntax.c:108: }
      0030E2 22               [24]  752 	ret
                                    753 ;------------------------------------------------------------
                                    754 ;Allocation info for local variables in function 'get_buf_value'
                                    755 ;------------------------------------------------------------
                                    756 ;sloc0                     Allocated with name '_get_buf_value_sloc0_1_0'
                                    757 ;sloc1                     Allocated with name '_get_buf_value_sloc1_1_0'
                                    758 ;UPPER                     Allocated with name '_get_buf_value_PARM_2'
                                    759 ;LOWER                     Allocated with name '_get_buf_value_PARM_3'
                                    760 ;string                    Allocated with name '_get_buf_value_string_10000_84'
                                    761 ;buffer_size               Allocated with name '_get_buf_value_buffer_size_10000_85'
                                    762 ;input                     Allocated with name '_get_buf_value_input_10000_85'
                                    763 ;valid_input               Allocated with name '_get_buf_value_valid_input_10000_85'
                                    764 ;digit_count               Allocated with name '_get_buf_value_digit_count_20001_87'
                                    765 ;i                         Allocated with name '_get_buf_value_i_20001_87'
                                    766 ;c                         Allocated with name '_get_buf_value_c_20001_87'
                                    767 ;------------------------------------------------------------
                                    768 ;	syntax.c:119: int get_buf_value(const char* string, int UPPER, int LOWER) {
                                    769 ;	-----------------------------------------
                                    770 ;	 function get_buf_value
                                    771 ;	-----------------------------------------
      0030E3                        772 _get_buf_value:
      0030E3 AF F0            [24]  773 	mov	r7,b
      0030E5 AE 83            [24]  774 	mov	r6,dph
      0030E7 E5 82            [12]  775 	mov	a,dpl
      0030E9 90 06 61         [24]  776 	mov	dptr,#_get_buf_value_string_10000_84
      0030EC F0               [24]  777 	movx	@dptr,a
      0030ED EE               [12]  778 	mov	a,r6
      0030EE A3               [24]  779 	inc	dptr
      0030EF F0               [24]  780 	movx	@dptr,a
      0030F0 EF               [12]  781 	mov	a,r7
      0030F1 A3               [24]  782 	inc	dptr
      0030F2 F0               [24]  783 	movx	@dptr,a
                                    784 ;	syntax.c:120: int buffer_size = 0;
      0030F3 90 06 64         [24]  785 	mov	dptr,#_get_buf_value_buffer_size_10000_85
      0030F6 E4               [12]  786 	clr	a
      0030F7 F0               [24]  787 	movx	@dptr,a
      0030F8 A3               [24]  788 	inc	dptr
      0030F9 F0               [24]  789 	movx	@dptr,a
                                    790 ;	syntax.c:122: int valid_input = 0;
      0030FA 90 06 6B         [24]  791 	mov	dptr,#_get_buf_value_valid_input_10000_85
      0030FD F0               [24]  792 	movx	@dptr,a
      0030FE A3               [24]  793 	inc	dptr
      0030FF F0               [24]  794 	movx	@dptr,a
                                    795 ;	syntax.c:124: while (!valid_input) {
      003100 90 06 5D         [24]  796 	mov	dptr,#_get_buf_value_PARM_2
      003103 E0               [24]  797 	movx	a,@dptr
      003104 FE               [12]  798 	mov	r6,a
      003105 A3               [24]  799 	inc	dptr
      003106 E0               [24]  800 	movx	a,@dptr
      003107 FF               [12]  801 	mov	r7,a
      003108 90 06 5F         [24]  802 	mov	dptr,#_get_buf_value_PARM_3
      00310B E0               [24]  803 	movx	a,@dptr
      00310C F5 09            [12]  804 	mov	_get_buf_value_sloc1_1_0,a
      00310E A3               [24]  805 	inc	dptr
      00310F E0               [24]  806 	movx	a,@dptr
      003110 F5 0A            [12]  807 	mov	(_get_buf_value_sloc1_1_0 + 1),a
      003112                        808 00117$:
      003112 90 06 6B         [24]  809 	mov	dptr,#_get_buf_value_valid_input_10000_85
      003115 E0               [24]  810 	movx	a,@dptr
      003116 F5 F0            [12]  811 	mov	b,a
      003118 A3               [24]  812 	inc	dptr
      003119 E0               [24]  813 	movx	a,@dptr
      00311A 45 F0            [12]  814 	orl	a,b
      00311C 60 03            [24]  815 	jz	00188$
      00311E 02 33 78         [24]  816 	ljmp	00119$
      003121                        817 00188$:
                                    818 ;	syntax.c:125: print_prompt("\n\r+--------------------------------------------------+");
      003121 90 55 A5         [24]  819 	mov	dptr,#___str_0
      003124 75 F0 80         [24]  820 	mov	b, #0x80
      003127 C0 07            [24]  821 	push	ar7
      003129 C0 06            [24]  822 	push	ar6
      00312B 12 33 84         [24]  823 	lcall	_print_prompt
                                    824 ;	syntax.c:126: print_prompt(string);
      00312E 90 06 61         [24]  825 	mov	dptr,#_get_buf_value_string_10000_84
      003131 E0               [24]  826 	movx	a,@dptr
      003132 F9               [12]  827 	mov	r1,a
      003133 A3               [24]  828 	inc	dptr
      003134 E0               [24]  829 	movx	a,@dptr
      003135 FA               [12]  830 	mov	r2,a
      003136 A3               [24]  831 	inc	dptr
      003137 E0               [24]  832 	movx	a,@dptr
      003138 FB               [12]  833 	mov	r3,a
      003139 89 82            [24]  834 	mov	dpl, r1
      00313B 8A 83            [24]  835 	mov	dph, r2
      00313D 8B F0            [24]  836 	mov	b, r3
      00313F 12 33 84         [24]  837 	lcall	_print_prompt
      003142 D0 06            [24]  838 	pop	ar6
      003144 D0 07            [24]  839 	pop	ar7
                                    840 ;	syntax.c:129: buffer_size = 0;
      003146 90 06 64         [24]  841 	mov	dptr,#_get_buf_value_buffer_size_10000_85
      003149 E4               [12]  842 	clr	a
      00314A F0               [24]  843 	movx	@dptr,a
      00314B A3               [24]  844 	inc	dptr
      00314C F0               [24]  845 	movx	@dptr,a
                                    846 ;	syntax.c:135: while ((c = getchar()) != 0x0d && digit_count < 4) {
      00314D FA               [12]  847 	mov	r2,a
      00314E FB               [12]  848 	mov	r3,a
      00314F F9               [12]  849 	mov	r1,a
      003150                        850 00108$:
      003150 C0 06            [24]  851 	push	ar6
      003152 C0 07            [24]  852 	push	ar7
      003154 C0 06            [24]  853 	push	ar6
      003156 C0 03            [24]  854 	push	ar3
      003158 C0 02            [24]  855 	push	ar2
      00315A C0 01            [24]  856 	push	ar1
      00315C 12 30 BA         [24]  857 	lcall	_getchar
      00315F A8 82            [24]  858 	mov	r0, dpl
      003161 D0 01            [24]  859 	pop	ar1
      003163 D0 02            [24]  860 	pop	ar2
      003165 D0 03            [24]  861 	pop	ar3
      003167 D0 06            [24]  862 	pop	ar6
      003169 88 08            [24]  863 	mov	_get_buf_value_sloc0_1_0,r0
      00316B 74 0D            [12]  864 	mov	a,#0x0d
      00316D B5 08 07         [24]  865 	cjne	a,_get_buf_value_sloc0_1_0,00189$
      003170 D0 07            [24]  866 	pop	ar7
      003172 D0 06            [24]  867 	pop	ar6
      003174 02 32 6E         [24]  868 	ljmp	00110$
      003177                        869 00189$:
      003177 D0 07            [24]  870 	pop	ar7
      003179 D0 06            [24]  871 	pop	ar6
      00317B B9 04 00         [24]  872 	cjne	r1,#0x04,00190$
      00317E                        873 00190$:
      00317E 40 03            [24]  874 	jc	00191$
      003180 02 32 6E         [24]  875 	ljmp	00110$
      003183                        876 00191$:
                                    877 ;	syntax.c:137: if (c < '0' || c > '9') {
      003183 74 D0            [12]  878 	mov	a,#0x100 - 0x30
      003185 25 08            [12]  879 	add	a,_get_buf_value_sloc0_1_0
      003187 50 06            [24]  880 	jnc	00104$
      003189 E5 08            [12]  881 	mov	a,_get_buf_value_sloc0_1_0
      00318B 24 C6            [12]  882 	add	a,#0xff - 0x39
      00318D 50 5E            [24]  883 	jnc	00105$
      00318F                        884 00104$:
                                    885 ;	syntax.c:138: printf("\n\r| ERROR: Invalid input - Please enter numbers only     |");
      00318F C0 07            [24]  886 	push	ar7
      003191 C0 06            [24]  887 	push	ar6
      003193 74 DC            [12]  888 	mov	a,#___str_1
      003195 C0 E0            [24]  889 	push	acc
      003197 74 55            [12]  890 	mov	a,#(___str_1 >> 8)
      003199 C0 E0            [24]  891 	push	acc
      00319B 74 80            [12]  892 	mov	a,#0x80
      00319D C0 E0            [24]  893 	push	acc
      00319F 12 4B 63         [24]  894 	lcall	_printf
      0031A2 15 81            [12]  895 	dec	sp
      0031A4 15 81            [12]  896 	dec	sp
      0031A6 15 81            [12]  897 	dec	sp
                                    898 ;	syntax.c:139: printf("\n\r+--------------------------------------------------+\n\r");
      0031A8 74 17            [12]  899 	mov	a,#___str_2
      0031AA C0 E0            [24]  900 	push	acc
      0031AC 74 56            [12]  901 	mov	a,#(___str_2 >> 8)
      0031AE C0 E0            [24]  902 	push	acc
      0031B0 74 80            [12]  903 	mov	a,#0x80
      0031B2 C0 E0            [24]  904 	push	acc
      0031B4 12 4B 63         [24]  905 	lcall	_printf
      0031B7 15 81            [12]  906 	dec	sp
      0031B9 15 81            [12]  907 	dec	sp
      0031BB 15 81            [12]  908 	dec	sp
      0031BD D0 06            [24]  909 	pop	ar6
      0031BF D0 07            [24]  910 	pop	ar7
                                    911 ;	syntax.c:141: while (getchar() != 0x0d);  // Clear input buffer
      0031C1                        912 00101$:
      0031C1 C0 06            [24]  913 	push	ar6
      0031C3 C0 07            [24]  914 	push	ar7
      0031C5 C0 06            [24]  915 	push	ar6
      0031C7 12 30 BA         [24]  916 	lcall	_getchar
      0031CA A8 82            [24]  917 	mov	r0, dpl
      0031CC AF 83            [24]  918 	mov	r7, dph
      0031CE D0 06            [24]  919 	pop	ar6
      0031D0 B8 0D 05         [24]  920 	cjne	r0,#0x0d,00194$
      0031D3 BF 00 02         [24]  921 	cjne	r7,#0x00,00194$
      0031D6 80 06            [24]  922 	sjmp	00195$
      0031D8                        923 00194$:
      0031D8 D0 07            [24]  924 	pop	ar7
      0031DA D0 06            [24]  925 	pop	ar6
      0031DC 80 E3            [24]  926 	sjmp	00101$
      0031DE                        927 00195$:
      0031DE D0 07            [24]  928 	pop	ar7
      0031E0 D0 06            [24]  929 	pop	ar6
                                    930 ;	syntax.c:142: buffer_size = -1;
      0031E2 90 06 64         [24]  931 	mov	dptr,#_get_buf_value_buffer_size_10000_85
      0031E5 74 FF            [12]  932 	mov	a,#0xff
      0031E7 F0               [24]  933 	movx	@dptr,a
      0031E8 A3               [24]  934 	inc	dptr
      0031E9 F0               [24]  935 	movx	@dptr,a
                                    936 ;	syntax.c:143: break;
      0031EA 02 32 6E         [24]  937 	ljmp	00110$
      0031ED                        938 00105$:
                                    939 ;	syntax.c:146: putchar(c);
      0031ED C0 06            [24]  940 	push	ar6
      0031EF C0 07            [24]  941 	push	ar7
      0031F1 A8 08            [24]  942 	mov	r0,_get_buf_value_sloc0_1_0
      0031F3 7F 00            [12]  943 	mov	r7,#0x00
      0031F5 88 82            [24]  944 	mov	dpl, r0
      0031F7 8F 83            [24]  945 	mov	dph, r7
      0031F9 C0 07            [24]  946 	push	ar7
      0031FB C0 06            [24]  947 	push	ar6
      0031FD C0 03            [24]  948 	push	ar3
      0031FF C0 02            [24]  949 	push	ar2
      003201 C0 01            [24]  950 	push	ar1
      003203 C0 00            [24]  951 	push	ar0
      003205 12 30 91         [24]  952 	lcall	_putchar
      003208 D0 00            [24]  953 	pop	ar0
      00320A D0 01            [24]  954 	pop	ar1
      00320C D0 02            [24]  955 	pop	ar2
      00320E D0 03            [24]  956 	pop	ar3
      003210 D0 06            [24]  957 	pop	ar6
      003212 D0 07            [24]  958 	pop	ar7
                                    959 ;	syntax.c:147: input[i++] = c;
      003214 EA               [12]  960 	mov	a,r2
      003215 24 66            [12]  961 	add	a, #_get_buf_value_input_10000_85
      003217 F5 82            [12]  962 	mov	dpl,a
      003219 EB               [12]  963 	mov	a,r3
      00321A 34 06            [12]  964 	addc	a, #(_get_buf_value_input_10000_85 >> 8)
      00321C F5 83            [12]  965 	mov	dph,a
      00321E 0A               [12]  966 	inc	r2
      00321F BA 00 01         [24]  967 	cjne	r2,#0x00,00196$
      003222 0B               [12]  968 	inc	r3
      003223                        969 00196$:
      003223 E5 08            [12]  970 	mov	a,_get_buf_value_sloc0_1_0
      003225 F0               [24]  971 	movx	@dptr,a
                                    972 ;	syntax.c:148: digit_count++;
      003226 09               [12]  973 	inc	r1
                                    974 ;	syntax.c:149: buffer_size = buffer_size * 10 + (c - '0');
      003227 90 06 64         [24]  975 	mov	dptr,#_get_buf_value_buffer_size_10000_85
      00322A E0               [24]  976 	movx	a,@dptr
      00322B FD               [12]  977 	mov	r5,a
      00322C A3               [24]  978 	inc	dptr
      00322D E0               [24]  979 	movx	a,@dptr
      00322E FE               [12]  980 	mov	r6,a
      00322F 90 1A AA         [24]  981 	mov	dptr,#__mulint_PARM_2
      003232 ED               [12]  982 	mov	a,r5
      003233 F0               [24]  983 	movx	@dptr,a
      003234 EE               [12]  984 	mov	a,r6
      003235 A3               [24]  985 	inc	dptr
      003236 F0               [24]  986 	movx	@dptr,a
      003237 90 00 0A         [24]  987 	mov	dptr,#0x000a
      00323A C0 07            [24]  988 	push	ar7
      00323C C0 03            [24]  989 	push	ar3
      00323E C0 02            [24]  990 	push	ar2
      003240 C0 01            [24]  991 	push	ar1
      003242 C0 00            [24]  992 	push	ar0
      003244 12 48 E3         [24]  993 	lcall	__mulint
      003247 AD 82            [24]  994 	mov	r5, dpl
      003249 AE 83            [24]  995 	mov	r6, dph
      00324B D0 00            [24]  996 	pop	ar0
      00324D D0 01            [24]  997 	pop	ar1
      00324F D0 02            [24]  998 	pop	ar2
      003251 D0 03            [24]  999 	pop	ar3
      003253 D0 07            [24] 1000 	pop	ar7
      003255 E8               [12] 1001 	mov	a,r0
      003256 24 D0            [12] 1002 	add	a,#0xd0
      003258 F8               [12] 1003 	mov	r0,a
      003259 EF               [12] 1004 	mov	a,r7
      00325A 34 FF            [12] 1005 	addc	a,#0xff
      00325C FF               [12] 1006 	mov	r7,a
      00325D 90 06 64         [24] 1007 	mov	dptr,#_get_buf_value_buffer_size_10000_85
      003260 E8               [12] 1008 	mov	a,r0
      003261 2D               [12] 1009 	add	a, r5
      003262 F0               [24] 1010 	movx	@dptr,a
      003263 EF               [12] 1011 	mov	a,r7
      003264 3E               [12] 1012 	addc	a, r6
      003265 A3               [24] 1013 	inc	dptr
      003266 F0               [24] 1014 	movx	@dptr,a
      003267 D0 07            [24] 1015 	pop	ar7
      003269 D0 06            [24] 1016 	pop	ar6
      00326B 02 31 50         [24] 1017 	ljmp	00108$
      00326E                       1018 00110$:
                                   1019 ;	syntax.c:153: if (buffer_size == -1) {
      00326E 90 06 64         [24] 1020 	mov	dptr,#_get_buf_value_buffer_size_10000_85
      003271 E0               [24] 1021 	movx	a,@dptr
      003272 FC               [12] 1022 	mov	r4,a
      003273 A3               [24] 1023 	inc	dptr
      003274 E0               [24] 1024 	movx	a,@dptr
      003275 FD               [12] 1025 	mov	r5,a
      003276 BC FF 06         [24] 1026 	cjne	r4,#0xff,00197$
      003279 BD FF 03         [24] 1027 	cjne	r5,#0xff,00197$
      00327C 02 31 12         [24] 1028 	ljmp	00117$
      00327F                       1029 00197$:
                                   1030 ;	syntax.c:158: if ((buffer_size % 16) != 0 || (buffer_size < LOWER) || (buffer_size > UPPER)) {
      00327F 90 1A AC         [24] 1031 	mov	dptr,#__modsint_PARM_2
      003282 74 10            [12] 1032 	mov	a,#0x10
      003284 F0               [24] 1033 	movx	@dptr,a
      003285 E4               [12] 1034 	clr	a
      003286 A3               [24] 1035 	inc	dptr
      003287 F0               [24] 1036 	movx	@dptr,a
      003288 8C 82            [24] 1037 	mov	dpl, r4
      00328A 8D 83            [24] 1038 	mov	dph, r5
      00328C C0 07            [24] 1039 	push	ar7
      00328E C0 06            [24] 1040 	push	ar6
      003290 C0 05            [24] 1041 	push	ar5
      003292 C0 04            [24] 1042 	push	ar4
      003294 12 49 03         [24] 1043 	lcall	__modsint
      003297 E5 82            [12] 1044 	mov	a, dpl
      003299 85 83 F0         [24] 1045 	mov	b, dph
      00329C D0 04            [24] 1046 	pop	ar4
      00329E D0 05            [24] 1047 	pop	ar5
      0032A0 D0 06            [24] 1048 	pop	ar6
      0032A2 D0 07            [24] 1049 	pop	ar7
      0032A4 45 F0            [12] 1050 	orl	a,b
      0032A6 70 1F            [24] 1051 	jnz	00113$
      0032A8 C3               [12] 1052 	clr	c
      0032A9 EC               [12] 1053 	mov	a,r4
      0032AA 95 09            [12] 1054 	subb	a,_get_buf_value_sloc1_1_0
      0032AC ED               [12] 1055 	mov	a,r5
      0032AD 64 80            [12] 1056 	xrl	a,#0x80
      0032AF 85 0A F0         [24] 1057 	mov	b,(_get_buf_value_sloc1_1_0 + 1)
      0032B2 63 F0 80         [24] 1058 	xrl	b,#0x80
      0032B5 95 F0            [12] 1059 	subb	a,b
      0032B7 40 0E            [24] 1060 	jc	00113$
      0032B9 EE               [12] 1061 	mov	a,r6
      0032BA 9C               [12] 1062 	subb	a,r4
      0032BB EF               [12] 1063 	mov	a,r7
      0032BC 64 80            [12] 1064 	xrl	a,#0x80
      0032BE 8D F0            [24] 1065 	mov	b,r5
      0032C0 63 F0 80         [24] 1066 	xrl	b,#0x80
      0032C3 95 F0            [12] 1067 	subb	a,b
      0032C5 50 6F            [24] 1068 	jnc	00114$
      0032C7                       1069 00113$:
                                   1070 ;	syntax.c:159: printf("\n\r| ERROR: Invalid buffer size                          |");
      0032C7 C0 07            [24] 1071 	push	ar7
      0032C9 C0 06            [24] 1072 	push	ar6
      0032CB 74 50            [12] 1073 	mov	a,#___str_3
      0032CD C0 E0            [24] 1074 	push	acc
      0032CF 74 56            [12] 1075 	mov	a,#(___str_3 >> 8)
      0032D1 C0 E0            [24] 1076 	push	acc
      0032D3 74 80            [12] 1077 	mov	a,#0x80
      0032D5 C0 E0            [24] 1078 	push	acc
      0032D7 12 4B 63         [24] 1079 	lcall	_printf
      0032DA 15 81            [12] 1080 	dec	sp
      0032DC 15 81            [12] 1081 	dec	sp
      0032DE 15 81            [12] 1082 	dec	sp
      0032E0 D0 06            [24] 1083 	pop	ar6
      0032E2 D0 07            [24] 1084 	pop	ar7
                                   1085 ;	syntax.c:160: printf("\n\r| - Must be between %d and %d                       |", LOWER, UPPER);
      0032E4 C0 07            [24] 1086 	push	ar7
      0032E6 C0 06            [24] 1087 	push	ar6
      0032E8 C0 06            [24] 1088 	push	ar6
      0032EA C0 07            [24] 1089 	push	ar7
      0032EC C0 09            [24] 1090 	push	_get_buf_value_sloc1_1_0
      0032EE C0 0A            [24] 1091 	push	(_get_buf_value_sloc1_1_0 + 1)
      0032F0 74 8A            [12] 1092 	mov	a,#___str_4
      0032F2 C0 E0            [24] 1093 	push	acc
      0032F4 74 56            [12] 1094 	mov	a,#(___str_4 >> 8)
      0032F6 C0 E0            [24] 1095 	push	acc
      0032F8 74 80            [12] 1096 	mov	a,#0x80
      0032FA C0 E0            [24] 1097 	push	acc
      0032FC 12 4B 63         [24] 1098 	lcall	_printf
      0032FF E5 81            [12] 1099 	mov	a,sp
      003301 24 F9            [12] 1100 	add	a,#0xf9
      003303 F5 81            [12] 1101 	mov	sp,a
                                   1102 ;	syntax.c:161: printf("\n\r| - Must be multiple of 16                           |");
      003305 74 C2            [12] 1103 	mov	a,#___str_5
      003307 C0 E0            [24] 1104 	push	acc
      003309 74 56            [12] 1105 	mov	a,#(___str_5 >> 8)
      00330B C0 E0            [24] 1106 	push	acc
      00330D 74 80            [12] 1107 	mov	a,#0x80
      00330F C0 E0            [24] 1108 	push	acc
      003311 12 4B 63         [24] 1109 	lcall	_printf
      003314 15 81            [12] 1110 	dec	sp
      003316 15 81            [12] 1111 	dec	sp
      003318 15 81            [12] 1112 	dec	sp
                                   1113 ;	syntax.c:162: printf("\n\r+--------------------------------------------------+\n\r");
      00331A 74 17            [12] 1114 	mov	a,#___str_2
      00331C C0 E0            [24] 1115 	push	acc
      00331E 74 56            [12] 1116 	mov	a,#(___str_2 >> 8)
      003320 C0 E0            [24] 1117 	push	acc
      003322 74 80            [12] 1118 	mov	a,#0x80
      003324 C0 E0            [24] 1119 	push	acc
      003326 12 4B 63         [24] 1120 	lcall	_printf
      003329 15 81            [12] 1121 	dec	sp
      00332B 15 81            [12] 1122 	dec	sp
      00332D 15 81            [12] 1123 	dec	sp
      00332F D0 06            [24] 1124 	pop	ar6
      003331 D0 07            [24] 1125 	pop	ar7
                                   1126 ;	syntax.c:163: continue;
      003333 02 31 12         [24] 1127 	ljmp	00117$
      003336                       1128 00114$:
                                   1129 ;	syntax.c:165: printf("\n\r| Input size: %-39d |", buffer_size);
      003336 C0 07            [24] 1130 	push	ar7
      003338 C0 06            [24] 1131 	push	ar6
      00333A C0 04            [24] 1132 	push	ar4
      00333C C0 05            [24] 1133 	push	ar5
      00333E 74 FB            [12] 1134 	mov	a,#___str_6
      003340 C0 E0            [24] 1135 	push	acc
      003342 74 56            [12] 1136 	mov	a,#(___str_6 >> 8)
      003344 C0 E0            [24] 1137 	push	acc
      003346 74 80            [12] 1138 	mov	a,#0x80
      003348 C0 E0            [24] 1139 	push	acc
      00334A 12 4B 63         [24] 1140 	lcall	_printf
      00334D E5 81            [12] 1141 	mov	a,sp
      00334F 24 FB            [12] 1142 	add	a,#0xfb
      003351 F5 81            [12] 1143 	mov	sp,a
                                   1144 ;	syntax.c:166: printf("\n\r+--------------------------------------------------+\n\r");
      003353 74 17            [12] 1145 	mov	a,#___str_2
      003355 C0 E0            [24] 1146 	push	acc
      003357 74 56            [12] 1147 	mov	a,#(___str_2 >> 8)
      003359 C0 E0            [24] 1148 	push	acc
      00335B 74 80            [12] 1149 	mov	a,#0x80
      00335D C0 E0            [24] 1150 	push	acc
      00335F 12 4B 63         [24] 1151 	lcall	_printf
      003362 15 81            [12] 1152 	dec	sp
      003364 15 81            [12] 1153 	dec	sp
      003366 15 81            [12] 1154 	dec	sp
      003368 D0 06            [24] 1155 	pop	ar6
      00336A D0 07            [24] 1156 	pop	ar7
                                   1157 ;	syntax.c:167: valid_input = 1;
      00336C 90 06 6B         [24] 1158 	mov	dptr,#_get_buf_value_valid_input_10000_85
      00336F 74 01            [12] 1159 	mov	a,#0x01
      003371 F0               [24] 1160 	movx	@dptr,a
      003372 E4               [12] 1161 	clr	a
      003373 A3               [24] 1162 	inc	dptr
      003374 F0               [24] 1163 	movx	@dptr,a
      003375 02 31 12         [24] 1164 	ljmp	00117$
      003378                       1165 00119$:
                                   1166 ;	syntax.c:170: return buffer_size;
      003378 90 06 64         [24] 1167 	mov	dptr,#_get_buf_value_buffer_size_10000_85
      00337B E0               [24] 1168 	movx	a,@dptr
      00337C FE               [12] 1169 	mov	r6,a
      00337D A3               [24] 1170 	inc	dptr
      00337E E0               [24] 1171 	movx	a,@dptr
                                   1172 ;	syntax.c:171: }
      00337F 8E 82            [24] 1173 	mov	dpl,r6
      003381 F5 83            [12] 1174 	mov	dph,a
      003383 22               [24] 1175 	ret
                                   1176 ;------------------------------------------------------------
                                   1177 ;Allocation info for local variables in function 'print_prompt'
                                   1178 ;------------------------------------------------------------
                                   1179 ;string                    Allocated with name '_print_prompt_string_10000_92'
                                   1180 ;------------------------------------------------------------
                                   1181 ;	syntax.c:179: void print_prompt(const char * string){
                                   1182 ;	-----------------------------------------
                                   1183 ;	 function print_prompt
                                   1184 ;	-----------------------------------------
      003384                       1185 _print_prompt:
      003384 AF F0            [24] 1186 	mov	r7,b
      003386 AE 83            [24] 1187 	mov	r6,dph
      003388 E5 82            [12] 1188 	mov	a,dpl
      00338A 90 06 6D         [24] 1189 	mov	dptr,#_print_prompt_string_10000_92
      00338D F0               [24] 1190 	movx	@dptr,a
      00338E EE               [12] 1191 	mov	a,r6
      00338F A3               [24] 1192 	inc	dptr
      003390 F0               [24] 1193 	movx	@dptr,a
      003391 EF               [12] 1194 	mov	a,r7
      003392 A3               [24] 1195 	inc	dptr
      003393 F0               [24] 1196 	movx	@dptr,a
                                   1197 ;	syntax.c:180: while(*string != '\0'){
      003394 90 06 6D         [24] 1198 	mov	dptr,#_print_prompt_string_10000_92
      003397 E0               [24] 1199 	movx	a,@dptr
      003398 FD               [12] 1200 	mov	r5,a
      003399 A3               [24] 1201 	inc	dptr
      00339A E0               [24] 1202 	movx	a,@dptr
      00339B FE               [12] 1203 	mov	r6,a
      00339C A3               [24] 1204 	inc	dptr
      00339D E0               [24] 1205 	movx	a,@dptr
      00339E FF               [12] 1206 	mov	r7,a
      00339F                       1207 00101$:
      00339F 8D 82            [24] 1208 	mov	dpl,r5
      0033A1 8E 83            [24] 1209 	mov	dph,r6
      0033A3 8F F0            [24] 1210 	mov	b,r7
      0033A5 12 55 85         [24] 1211 	lcall	__gptrget
      0033A8 FC               [12] 1212 	mov	r4,a
      0033A9 60 27            [24] 1213 	jz	00108$
                                   1214 ;	syntax.c:181: putchar(*string);
      0033AB 7B 00            [12] 1215 	mov	r3,#0x00
      0033AD 8C 82            [24] 1216 	mov	dpl, r4
      0033AF 8B 83            [24] 1217 	mov	dph, r3
      0033B1 C0 07            [24] 1218 	push	ar7
      0033B3 C0 06            [24] 1219 	push	ar6
      0033B5 C0 05            [24] 1220 	push	ar5
      0033B7 12 30 91         [24] 1221 	lcall	_putchar
      0033BA D0 05            [24] 1222 	pop	ar5
      0033BC D0 06            [24] 1223 	pop	ar6
      0033BE D0 07            [24] 1224 	pop	ar7
                                   1225 ;	syntax.c:182: string++;
      0033C0 0D               [12] 1226 	inc	r5
      0033C1 BD 00 01         [24] 1227 	cjne	r5,#0x00,00120$
      0033C4 0E               [12] 1228 	inc	r6
      0033C5                       1229 00120$:
      0033C5 90 06 6D         [24] 1230 	mov	dptr,#_print_prompt_string_10000_92
      0033C8 ED               [12] 1231 	mov	a,r5
      0033C9 F0               [24] 1232 	movx	@dptr,a
      0033CA EE               [12] 1233 	mov	a,r6
      0033CB A3               [24] 1234 	inc	dptr
      0033CC F0               [24] 1235 	movx	@dptr,a
      0033CD EF               [12] 1236 	mov	a,r7
      0033CE A3               [24] 1237 	inc	dptr
      0033CF F0               [24] 1238 	movx	@dptr,a
      0033D0 80 CD            [24] 1239 	sjmp	00101$
      0033D2                       1240 00108$:
      0033D2 90 06 6D         [24] 1241 	mov	dptr,#_print_prompt_string_10000_92
      0033D5 ED               [12] 1242 	mov	a,r5
      0033D6 F0               [24] 1243 	movx	@dptr,a
      0033D7 EE               [12] 1244 	mov	a,r6
      0033D8 A3               [24] 1245 	inc	dptr
      0033D9 F0               [24] 1246 	movx	@dptr,a
      0033DA EF               [12] 1247 	mov	a,r7
      0033DB A3               [24] 1248 	inc	dptr
      0033DC F0               [24] 1249 	movx	@dptr,a
                                   1250 ;	syntax.c:184: }
      0033DD 22               [24] 1251 	ret
                                   1252 ;------------------------------------------------------------
                                   1253 ;Allocation info for local variables in function 'get_number'
                                   1254 ;------------------------------------------------------------
                                   1255 ;prompt                    Allocated with name '_get_number_prompt_10000_95'
                                   1256 ;buffer_size               Allocated with name '_get_number_buffer_size_10000_96'
                                   1257 ;c                         Allocated with name '_get_number_c_10000_96'
                                   1258 ;index                     Allocated with name '_get_number_index_10000_96'
                                   1259 ;------------------------------------------------------------
                                   1260 ;	syntax.c:192: int get_number(const char* prompt)
                                   1261 ;	-----------------------------------------
                                   1262 ;	 function get_number
                                   1263 ;	-----------------------------------------
      0033DE                       1264 _get_number:
      0033DE AF F0            [24] 1265 	mov	r7,b
      0033E0 AE 83            [24] 1266 	mov	r6,dph
      0033E2 E5 82            [12] 1267 	mov	a,dpl
      0033E4 90 06 70         [24] 1268 	mov	dptr,#_get_number_prompt_10000_95
      0033E7 F0               [24] 1269 	movx	@dptr,a
      0033E8 EE               [12] 1270 	mov	a,r6
      0033E9 A3               [24] 1271 	inc	dptr
      0033EA F0               [24] 1272 	movx	@dptr,a
      0033EB EF               [12] 1273 	mov	a,r7
      0033EC A3               [24] 1274 	inc	dptr
      0033ED F0               [24] 1275 	movx	@dptr,a
                                   1276 ;	syntax.c:194: int buffer_size = 0;
      0033EE 90 06 73         [24] 1277 	mov	dptr,#_get_number_buffer_size_10000_96
      0033F1 E4               [12] 1278 	clr	a
      0033F2 F0               [24] 1279 	movx	@dptr,a
      0033F3 A3               [24] 1280 	inc	dptr
      0033F4 F0               [24] 1281 	movx	@dptr,a
                                   1282 ;	syntax.c:196: int index = 100;            // Start with highest place value for 3 digits
      0033F5 90 06 75         [24] 1283 	mov	dptr,#_get_number_index_10000_96
      0033F8 74 64            [12] 1284 	mov	a,#0x64
      0033FA F0               [24] 1285 	movx	@dptr,a
      0033FB E4               [12] 1286 	clr	a
      0033FC A3               [24] 1287 	inc	dptr
      0033FD F0               [24] 1288 	movx	@dptr,a
                                   1289 ;	syntax.c:198: print_prompt("\n\r+--------------------------------------------------+");
      0033FE 90 55 A5         [24] 1290 	mov	dptr,#___str_0
      003401 75 F0 80         [24] 1291 	mov	b, #0x80
      003404 12 33 84         [24] 1292 	lcall	_print_prompt
                                   1293 ;	syntax.c:199: print_prompt(prompt);
      003407 90 06 70         [24] 1294 	mov	dptr,#_get_number_prompt_10000_95
      00340A E0               [24] 1295 	movx	a,@dptr
      00340B FD               [12] 1296 	mov	r5,a
      00340C A3               [24] 1297 	inc	dptr
      00340D E0               [24] 1298 	movx	a,@dptr
      00340E FE               [12] 1299 	mov	r6,a
      00340F A3               [24] 1300 	inc	dptr
      003410 E0               [24] 1301 	movx	a,@dptr
      003411 FF               [12] 1302 	mov	r7,a
      003412 8D 82            [24] 1303 	mov	dpl, r5
      003414 8E 83            [24] 1304 	mov	dph, r6
      003416 8F F0            [24] 1305 	mov	b, r7
      003418 12 33 84         [24] 1306 	lcall	_print_prompt
                                   1307 ;	syntax.c:201: while (index >= 1 && (c = getchar()) != 0x0d) {
      00341B                       1308 00105$:
      00341B 90 06 75         [24] 1309 	mov	dptr,#_get_number_index_10000_96
      00341E E0               [24] 1310 	movx	a,@dptr
      00341F FE               [12] 1311 	mov	r6,a
      003420 A3               [24] 1312 	inc	dptr
      003421 E0               [24] 1313 	movx	a,@dptr
      003422 FF               [12] 1314 	mov	r7,a
      003423 C3               [12] 1315 	clr	c
      003424 EE               [12] 1316 	mov	a,r6
      003425 94 01            [12] 1317 	subb	a,#0x01
      003427 EF               [12] 1318 	mov	a,r7
      003428 64 80            [12] 1319 	xrl	a,#0x80
      00342A 94 80            [12] 1320 	subb	a,#0x80
      00342C 50 03            [24] 1321 	jnc	00134$
      00342E 02 34 EA         [24] 1322 	ljmp	00107$
      003431                       1323 00134$:
      003431 C0 07            [24] 1324 	push	ar7
      003433 C0 06            [24] 1325 	push	ar6
      003435 12 30 BA         [24] 1326 	lcall	_getchar
      003438 AC 82            [24] 1327 	mov	r4, dpl
      00343A D0 06            [24] 1328 	pop	ar6
      00343C D0 07            [24] 1329 	pop	ar7
      00343E BC 0D 03         [24] 1330 	cjne	r4,#0x0d,00135$
      003441 02 34 EA         [24] 1331 	ljmp	00107$
      003444                       1332 00135$:
                                   1333 ;	syntax.c:202: if (c < '0' || c > '9') {
      003444 BC 30 00         [24] 1334 	cjne	r4,#0x30,00136$
      003447                       1335 00136$:
      003447 40 05            [24] 1336 	jc	00101$
      003449 EC               [12] 1337 	mov	a,r4
      00344A 24 C6            [12] 1338 	add	a,#0xff - 0x39
      00344C 50 2E            [24] 1339 	jnc	00102$
      00344E                       1340 00101$:
                                   1341 ;	syntax.c:203: printf("\n\r| ERROR: Invalid input - Please enter numbers only     |");
      00344E 74 DC            [12] 1342 	mov	a,#___str_1
      003450 C0 E0            [24] 1343 	push	acc
      003452 74 55            [12] 1344 	mov	a,#(___str_1 >> 8)
      003454 C0 E0            [24] 1345 	push	acc
      003456 74 80            [12] 1346 	mov	a,#0x80
      003458 C0 E0            [24] 1347 	push	acc
      00345A 12 4B 63         [24] 1348 	lcall	_printf
      00345D 15 81            [12] 1349 	dec	sp
      00345F 15 81            [12] 1350 	dec	sp
      003461 15 81            [12] 1351 	dec	sp
                                   1352 ;	syntax.c:204: printf("\n\r+--------------------------------------------------+\n\r");
      003463 74 17            [12] 1353 	mov	a,#___str_2
      003465 C0 E0            [24] 1354 	push	acc
      003467 74 56            [12] 1355 	mov	a,#(___str_2 >> 8)
      003469 C0 E0            [24] 1356 	push	acc
      00346B 74 80            [12] 1357 	mov	a,#0x80
      00346D C0 E0            [24] 1358 	push	acc
      00346F 12 4B 63         [24] 1359 	lcall	_printf
      003472 15 81            [12] 1360 	dec	sp
      003474 15 81            [12] 1361 	dec	sp
      003476 15 81            [12] 1362 	dec	sp
                                   1363 ;	syntax.c:205: return -1;
      003478 90 FF FF         [24] 1364 	mov	dptr,#0xffff
      00347B 22               [24] 1365 	ret
      00347C                       1366 00102$:
                                   1367 ;	syntax.c:208: putchar(c);
      00347C 7D 00            [12] 1368 	mov	r5,#0x00
      00347E 8C 82            [24] 1369 	mov	dpl, r4
      003480 8D 83            [24] 1370 	mov	dph, r5
      003482 C0 07            [24] 1371 	push	ar7
      003484 C0 06            [24] 1372 	push	ar6
      003486 C0 05            [24] 1373 	push	ar5
      003488 C0 04            [24] 1374 	push	ar4
      00348A 12 30 91         [24] 1375 	lcall	_putchar
      00348D D0 04            [24] 1376 	pop	ar4
      00348F D0 05            [24] 1377 	pop	ar5
      003491 D0 06            [24] 1378 	pop	ar6
      003493 D0 07            [24] 1379 	pop	ar7
                                   1380 ;	syntax.c:209: buffer_size += (c - '0') * index;
      003495 EC               [12] 1381 	mov	a,r4
      003496 24 D0            [12] 1382 	add	a,#0xd0
      003498 FC               [12] 1383 	mov	r4,a
      003499 ED               [12] 1384 	mov	a,r5
      00349A 34 FF            [12] 1385 	addc	a,#0xff
      00349C FD               [12] 1386 	mov	r5,a
      00349D 90 1A AA         [24] 1387 	mov	dptr,#__mulint_PARM_2
      0034A0 EE               [12] 1388 	mov	a,r6
      0034A1 F0               [24] 1389 	movx	@dptr,a
      0034A2 EF               [12] 1390 	mov	a,r7
      0034A3 A3               [24] 1391 	inc	dptr
      0034A4 F0               [24] 1392 	movx	@dptr,a
      0034A5 8C 82            [24] 1393 	mov	dpl, r4
      0034A7 8D 83            [24] 1394 	mov	dph, r5
      0034A9 C0 07            [24] 1395 	push	ar7
      0034AB C0 06            [24] 1396 	push	ar6
      0034AD 12 48 E3         [24] 1397 	lcall	__mulint
      0034B0 AC 82            [24] 1398 	mov	r4, dpl
      0034B2 AD 83            [24] 1399 	mov	r5, dph
      0034B4 D0 06            [24] 1400 	pop	ar6
      0034B6 D0 07            [24] 1401 	pop	ar7
      0034B8 90 06 73         [24] 1402 	mov	dptr,#_get_number_buffer_size_10000_96
      0034BB E0               [24] 1403 	movx	a,@dptr
      0034BC FA               [12] 1404 	mov	r2,a
      0034BD A3               [24] 1405 	inc	dptr
      0034BE E0               [24] 1406 	movx	a,@dptr
      0034BF FB               [12] 1407 	mov	r3,a
      0034C0 90 06 73         [24] 1408 	mov	dptr,#_get_number_buffer_size_10000_96
      0034C3 EC               [12] 1409 	mov	a,r4
      0034C4 2A               [12] 1410 	add	a, r2
      0034C5 F0               [24] 1411 	movx	@dptr,a
      0034C6 ED               [12] 1412 	mov	a,r5
      0034C7 3B               [12] 1413 	addc	a, r3
      0034C8 A3               [24] 1414 	inc	dptr
      0034C9 F0               [24] 1415 	movx	@dptr,a
                                   1416 ;	syntax.c:210: index = index/10;
      0034CA 90 1A B5         [24] 1417 	mov	dptr,#__divsint_PARM_2
      0034CD 74 0A            [12] 1418 	mov	a,#0x0a
      0034CF F0               [24] 1419 	movx	@dptr,a
      0034D0 E4               [12] 1420 	clr	a
      0034D1 A3               [24] 1421 	inc	dptr
      0034D2 F0               [24] 1422 	movx	@dptr,a
      0034D3 8E 82            [24] 1423 	mov	dpl, r6
      0034D5 8F 83            [24] 1424 	mov	dph, r7
      0034D7 12 4A 16         [24] 1425 	lcall	__divsint
      0034DA E5 82            [12] 1426 	mov	a, dpl
      0034DC 85 83 F0         [24] 1427 	mov	b, dph
      0034DF 90 06 75         [24] 1428 	mov	dptr,#_get_number_index_10000_96
      0034E2 F0               [24] 1429 	movx	@dptr,a
      0034E3 E5 F0            [12] 1430 	mov	a,b
      0034E5 A3               [24] 1431 	inc	dptr
      0034E6 F0               [24] 1432 	movx	@dptr,a
      0034E7 02 34 1B         [24] 1433 	ljmp	00105$
      0034EA                       1434 00107$:
                                   1435 ;	syntax.c:213: printf("\n\r| Input size: %-39d |", buffer_size);
      0034EA 90 06 73         [24] 1436 	mov	dptr,#_get_number_buffer_size_10000_96
      0034ED E0               [24] 1437 	movx	a,@dptr
      0034EE FE               [12] 1438 	mov	r6,a
      0034EF A3               [24] 1439 	inc	dptr
      0034F0 E0               [24] 1440 	movx	a,@dptr
      0034F1 FF               [12] 1441 	mov	r7,a
      0034F2 C0 07            [24] 1442 	push	ar7
      0034F4 C0 06            [24] 1443 	push	ar6
      0034F6 C0 06            [24] 1444 	push	ar6
      0034F8 C0 07            [24] 1445 	push	ar7
      0034FA 74 FB            [12] 1446 	mov	a,#___str_6
      0034FC C0 E0            [24] 1447 	push	acc
      0034FE 74 56            [12] 1448 	mov	a,#(___str_6 >> 8)
      003500 C0 E0            [24] 1449 	push	acc
      003502 74 80            [12] 1450 	mov	a,#0x80
      003504 C0 E0            [24] 1451 	push	acc
      003506 12 4B 63         [24] 1452 	lcall	_printf
      003509 E5 81            [12] 1453 	mov	a,sp
      00350B 24 FB            [12] 1454 	add	a,#0xfb
      00350D F5 81            [12] 1455 	mov	sp,a
                                   1456 ;	syntax.c:214: printf("\n\r+--------------------------------------------------+\n\r");
      00350F 74 17            [12] 1457 	mov	a,#___str_2
      003511 C0 E0            [24] 1458 	push	acc
      003513 74 56            [12] 1459 	mov	a,#(___str_2 >> 8)
      003515 C0 E0            [24] 1460 	push	acc
      003517 74 80            [12] 1461 	mov	a,#0x80
      003519 C0 E0            [24] 1462 	push	acc
      00351B 12 4B 63         [24] 1463 	lcall	_printf
      00351E 15 81            [12] 1464 	dec	sp
      003520 15 81            [12] 1465 	dec	sp
      003522 15 81            [12] 1466 	dec	sp
      003524 D0 06            [24] 1467 	pop	ar6
      003526 D0 07            [24] 1468 	pop	ar7
                                   1469 ;	syntax.c:216: return buffer_size;
      003528 8E 82            [24] 1470 	mov	dpl, r6
      00352A 8F 83            [24] 1471 	mov	dph, r7
                                   1472 ;	syntax.c:217: }
      00352C 22               [24] 1473 	ret
                                   1474 ;------------------------------------------------------------
                                   1475 ;Allocation info for local variables in function 'get_command'
                                   1476 ;------------------------------------------------------------
                                   1477 ;sloc0                     Allocated with name '_get_command_sloc0_1_0'
                                   1478 ;sloc1                     Allocated with name '_get_command_sloc1_1_0'
                                   1479 ;sloc2                     Allocated with name '_get_command_sloc2_1_0'
                                   1480 ;command                   Allocated with name '_get_command_command_10000_99'
                                   1481 ;temp_value                Allocated with name '_get_command_temp_value_10000_100'
                                   1482 ;pointer                   Allocated with name '_get_command_pointer_10000_100'
                                   1483 ;array_index_temp          Allocated with name '_get_command_array_index_temp_10000_100'
                                   1484 ;total_buffers             Allocated with name '_get_command_total_buffers_20001_102'
                                   1485 ;buffers_freed             Allocated with name '_get_command_buffers_freed_20001_102'
                                   1486 ;failed_frees              Allocated with name '_get_command_failed_frees_20001_102'
                                   1487 ;i                         Allocated with name '_get_command_i_30001_103'
                                   1488 ;i                         Allocated with name '_get_command_i_30001_106'
                                   1489 ;i                         Allocated with name '_get_command_i_30001_111'
                                   1490 ;buffer_size               Allocated with name '_get_command_buffer_size_20002_115'
                                   1491 ;node                      Allocated with name '_get_command_node_30003_120'
                                   1492 ;------------------------------------------------------------
                                   1493 ;	syntax.c:226: int get_command(int command)
                                   1494 ;	-----------------------------------------
                                   1495 ;	 function get_command
                                   1496 ;	-----------------------------------------
      00352D                       1497 _get_command:
      00352D AF 83            [24] 1498 	mov	r7,dph
      00352F E5 82            [12] 1499 	mov	a,dpl
      003531 90 06 77         [24] 1500 	mov	dptr,#_get_command_command_10000_99
      003534 F0               [24] 1501 	movx	@dptr,a
      003535 EF               [12] 1502 	mov	a,r7
      003536 A3               [24] 1503 	inc	dptr
      003537 F0               [24] 1504 	movx	@dptr,a
                                   1505 ;	syntax.c:232: switch(command)
      003538 90 06 77         [24] 1506 	mov	dptr,#_get_command_command_10000_99
      00353B E0               [24] 1507 	movx	a,@dptr
      00353C FE               [12] 1508 	mov	r6,a
      00353D A3               [24] 1509 	inc	dptr
      00353E E0               [24] 1510 	movx	a,@dptr
      00353F FF               [12] 1511 	mov	r7,a
      003540 BE 2B 06         [24] 1512 	cjne	r6,#0x2b,00263$
      003543 BF 00 03         [24] 1513 	cjne	r7,#0x00,00263$
      003546 02 3B 0D         [24] 1514 	ljmp	00117$
      003549                       1515 00263$:
      003549 BE 2D 06         [24] 1516 	cjne	r6,#0x2d,00264$
      00354C BF 00 03         [24] 1517 	cjne	r7,#0x00,00264$
      00354F 02 3C 77         [24] 1518 	ljmp	00125$
      003552                       1519 00264$:
      003552 BE 3D 06         [24] 1520 	cjne	r6,#0x3d,00265$
      003555 BF 00 03         [24] 1521 	cjne	r7,#0x00,00265$
      003558 02 3D 5C         [24] 1522 	ljmp	00132$
      00355B                       1523 00265$:
      00355B BE 3F 06         [24] 1524 	cjne	r6,#0x3f,00266$
      00355E BF 00 03         [24] 1525 	cjne	r7,#0x00,00266$
      003561 02 36 C8         [24] 1526 	ljmp	00111$
      003564                       1527 00266$:
      003564 BE 40 05         [24] 1528 	cjne	r6,#0x40,00267$
      003567 BF 00 02         [24] 1529 	cjne	r7,#0x00,00267$
      00356A 80 03            [24] 1530 	sjmp	00268$
      00356C                       1531 00267$:
      00356C 02 3D 5F         [24] 1532 	ljmp	00133$
      00356F                       1533 00268$:
                                   1534 ;	syntax.c:239: printf("\n\r| BUFFER DEALLOCATION STATUS                      |");
      00356F 74 13            [12] 1535 	mov	a,#___str_7
      003571 C0 E0            [24] 1536 	push	acc
      003573 74 57            [12] 1537 	mov	a,#(___str_7 >> 8)
      003575 C0 E0            [24] 1538 	push	acc
      003577 74 80            [12] 1539 	mov	a,#0x80
      003579 C0 E0            [24] 1540 	push	acc
      00357B 12 4B 63         [24] 1541 	lcall	_printf
      00357E 15 81            [12] 1542 	dec	sp
      003580 15 81            [12] 1543 	dec	sp
      003582 15 81            [12] 1544 	dec	sp
                                   1545 ;	syntax.c:240: printf("\n\r|------------------------------------------------|");
      003584 74 49            [12] 1546 	mov	a,#___str_8
      003586 C0 E0            [24] 1547 	push	acc
      003588 74 57            [12] 1548 	mov	a,#(___str_8 >> 8)
      00358A C0 E0            [24] 1549 	push	acc
      00358C 74 80            [12] 1550 	mov	a,#0x80
      00358E C0 E0            [24] 1551 	push	acc
      003590 12 4B 63         [24] 1552 	lcall	_printf
      003593 15 81            [12] 1553 	dec	sp
      003595 15 81            [12] 1554 	dec	sp
      003597 15 81            [12] 1555 	dec	sp
                                   1556 ;	syntax.c:243: for(int i = 0; i < 100; i++) 
      003599 E4               [12] 1557 	clr	a
      00359A F5 0B            [12] 1558 	mov	_get_command_sloc0_1_0,a
      00359C F5 0C            [12] 1559 	mov	(_get_command_sloc0_1_0 + 1),a
      00359E FC               [12] 1560 	mov	r4,a
      00359F FD               [12] 1561 	mov	r5,a
      0035A0                       1562 00135$:
      0035A0 C3               [12] 1563 	clr	c
      0035A1 EC               [12] 1564 	mov	a,r4
      0035A2 94 64            [12] 1565 	subb	a,#0x64
      0035A4 ED               [12] 1566 	mov	a,r5
      0035A5 64 80            [12] 1567 	xrl	a,#0x80
      0035A7 94 80            [12] 1568 	subb	a,#0x80
      0035A9 50 41            [24] 1569 	jnc	00104$
                                   1570 ;	syntax.c:245: if(array_for_nodes[i].data_pointer != NULL)
      0035AB 90 1A AA         [24] 1571 	mov	dptr,#__mulint_PARM_2
      0035AE EC               [12] 1572 	mov	a,r4
      0035AF F0               [24] 1573 	movx	@dptr,a
      0035B0 ED               [12] 1574 	mov	a,r5
      0035B1 A3               [24] 1575 	inc	dptr
      0035B2 F0               [24] 1576 	movx	@dptr,a
      0035B3 90 00 06         [24] 1577 	mov	dptr,#0x0006
      0035B6 C0 05            [24] 1578 	push	ar5
      0035B8 C0 04            [24] 1579 	push	ar4
      0035BA 12 48 E3         [24] 1580 	lcall	__mulint
      0035BD AA 82            [24] 1581 	mov	r2, dpl
      0035BF AB 83            [24] 1582 	mov	r3, dph
      0035C1 D0 04            [24] 1583 	pop	ar4
      0035C3 D0 05            [24] 1584 	pop	ar5
      0035C5 EA               [12] 1585 	mov	a,r2
      0035C6 24 03            [12] 1586 	add	a, #_array_for_nodes
      0035C8 FA               [12] 1587 	mov	r2,a
      0035C9 EB               [12] 1588 	mov	a,r3
      0035CA 34 04            [12] 1589 	addc	a, #(_array_for_nodes >> 8)
      0035CC FB               [12] 1590 	mov	r3,a
      0035CD 8A 82            [24] 1591 	mov	dpl,r2
      0035CF 8B 83            [24] 1592 	mov	dph,r3
      0035D1 A3               [24] 1593 	inc	dptr
      0035D2 E0               [24] 1594 	movx	a,@dptr
      0035D3 FA               [12] 1595 	mov	r2,a
      0035D4 A3               [24] 1596 	inc	dptr
      0035D5 E0               [24] 1597 	movx	a,@dptr
      0035D6 FB               [12] 1598 	mov	r3,a
      0035D7 A3               [24] 1599 	inc	dptr
      0035D8 E0               [24] 1600 	movx	a,@dptr
      0035D9 EA               [12] 1601 	mov	a,r2
      0035DA 4B               [12] 1602 	orl	a,r3
      0035DB 60 08            [24] 1603 	jz	00136$
                                   1604 ;	syntax.c:247: total_buffers++;
      0035DD 05 0B            [12] 1605 	inc	_get_command_sloc0_1_0
      0035DF E4               [12] 1606 	clr	a
      0035E0 B5 0B 02         [24] 1607 	cjne	a,_get_command_sloc0_1_0,00271$
      0035E3 05 0C            [12] 1608 	inc	(_get_command_sloc0_1_0 + 1)
      0035E5                       1609 00271$:
      0035E5                       1610 00136$:
                                   1611 ;	syntax.c:243: for(int i = 0; i < 100; i++) 
      0035E5 0C               [12] 1612 	inc	r4
      0035E6 BC 00 B7         [24] 1613 	cjne	r4,#0x00,00135$
      0035E9 0D               [12] 1614 	inc	r5
      0035EA 80 B4            [24] 1615 	sjmp	00135$
      0035EC                       1616 00104$:
                                   1617 ;	syntax.c:251: printf("\n\r| Buffers to Free  | %-28d |", total_buffers);
      0035EC C0 0B            [24] 1618 	push	_get_command_sloc0_1_0
      0035EE C0 0C            [24] 1619 	push	(_get_command_sloc0_1_0 + 1)
      0035F0 74 7E            [12] 1620 	mov	a,#___str_9
      0035F2 C0 E0            [24] 1621 	push	acc
      0035F4 74 57            [12] 1622 	mov	a,#(___str_9 >> 8)
      0035F6 C0 E0            [24] 1623 	push	acc
      0035F8 74 80            [12] 1624 	mov	a,#0x80
      0035FA C0 E0            [24] 1625 	push	acc
      0035FC 12 4B 63         [24] 1626 	lcall	_printf
      0035FF E5 81            [12] 1627 	mov	a,sp
      003601 24 FB            [12] 1628 	add	a,#0xfb
      003603 F5 81            [12] 1629 	mov	sp,a
                                   1630 ;	syntax.c:254: for(int i = 0; i < 100; i++) 
      003605 7E 00            [12] 1631 	mov	r6,#0x00
      003607 7F 00            [12] 1632 	mov	r7,#0x00
      003609                       1633 00138$:
      003609 C3               [12] 1634 	clr	c
      00360A EE               [12] 1635 	mov	a,r6
      00360B 94 64            [12] 1636 	subb	a,#0x64
      00360D EF               [12] 1637 	mov	a,r7
      00360E 64 80            [12] 1638 	xrl	a,#0x80
      003610 94 80            [12] 1639 	subb	a,#0x80
      003612 50 75            [24] 1640 	jnc	00107$
                                   1641 ;	syntax.c:256: if(array_for_nodes[i].data_pointer != NULL) 
      003614 90 1A AA         [24] 1642 	mov	dptr,#__mulint_PARM_2
      003617 EE               [12] 1643 	mov	a,r6
      003618 F0               [24] 1644 	movx	@dptr,a
      003619 EF               [12] 1645 	mov	a,r7
      00361A A3               [24] 1646 	inc	dptr
      00361B F0               [24] 1647 	movx	@dptr,a
      00361C 90 00 06         [24] 1648 	mov	dptr,#0x0006
      00361F C0 07            [24] 1649 	push	ar7
      003621 C0 06            [24] 1650 	push	ar6
      003623 12 48 E3         [24] 1651 	lcall	__mulint
      003626 AC 82            [24] 1652 	mov	r4, dpl
      003628 AD 83            [24] 1653 	mov	r5, dph
      00362A D0 06            [24] 1654 	pop	ar6
      00362C D0 07            [24] 1655 	pop	ar7
      00362E EC               [12] 1656 	mov	a,r4
      00362F 24 03            [12] 1657 	add	a, #_array_for_nodes
      003631 FC               [12] 1658 	mov	r4,a
      003632 ED               [12] 1659 	mov	a,r5
      003633 34 04            [12] 1660 	addc	a, #(_array_for_nodes >> 8)
      003635 FD               [12] 1661 	mov	r5,a
      003636 0C               [12] 1662 	inc	r4
      003637 BC 00 01         [24] 1663 	cjne	r4,#0x00,00274$
      00363A 0D               [12] 1664 	inc	r5
      00363B                       1665 00274$:
      00363B 8C 82            [24] 1666 	mov	dpl,r4
      00363D 8D 83            [24] 1667 	mov	dph,r5
      00363F E0               [24] 1668 	movx	a,@dptr
      003640 F5 0D            [12] 1669 	mov	_get_command_sloc1_1_0,a
      003642 A3               [24] 1670 	inc	dptr
      003643 E0               [24] 1671 	movx	a,@dptr
      003644 F5 0E            [12] 1672 	mov	(_get_command_sloc1_1_0 + 1),a
      003646 A3               [24] 1673 	inc	dptr
      003647 E0               [24] 1674 	movx	a,@dptr
      003648 F5 0F            [12] 1675 	mov	(_get_command_sloc1_1_0 + 2),a
      00364A E5 0D            [12] 1676 	mov	a,_get_command_sloc1_1_0
      00364C 45 0E            [12] 1677 	orl	a,(_get_command_sloc1_1_0 + 1)
      00364E 60 31            [24] 1678 	jz	00139$
                                   1679 ;	syntax.c:258: free(array_for_nodes[i].data_pointer);
      003650 C0 06            [24] 1680 	push	ar6
      003652 C0 07            [24] 1681 	push	ar7
      003654 AA 0D            [24] 1682 	mov	r2,_get_command_sloc1_1_0
      003656 AB 0E            [24] 1683 	mov	r3,(_get_command_sloc1_1_0 + 1)
      003658 AF 0F            [24] 1684 	mov	r7,(_get_command_sloc1_1_0 + 2)
      00365A 8A 82            [24] 1685 	mov	dpl, r2
      00365C 8B 83            [24] 1686 	mov	dph, r3
      00365E 8F F0            [24] 1687 	mov	b, r7
      003660 C0 07            [24] 1688 	push	ar7
      003662 C0 06            [24] 1689 	push	ar6
      003664 C0 05            [24] 1690 	push	ar5
      003666 C0 04            [24] 1691 	push	ar4
      003668 12 45 30         [24] 1692 	lcall	_free
      00366B D0 04            [24] 1693 	pop	ar4
      00366D D0 05            [24] 1694 	pop	ar5
      00366F D0 06            [24] 1695 	pop	ar6
      003671 D0 07            [24] 1696 	pop	ar7
                                   1697 ;	syntax.c:259: array_for_nodes[i].data_pointer = NULL;
      003673 8C 82            [24] 1698 	mov	dpl,r4
      003675 8D 83            [24] 1699 	mov	dph,r5
      003677 E4               [12] 1700 	clr	a
      003678 F0               [24] 1701 	movx	@dptr,a
      003679 A3               [24] 1702 	inc	dptr
      00367A F0               [24] 1703 	movx	@dptr,a
      00367B A3               [24] 1704 	inc	dptr
      00367C F0               [24] 1705 	movx	@dptr,a
                                   1706 ;	syntax.c:353: return -1;
      00367D D0 07            [24] 1707 	pop	ar7
      00367F D0 06            [24] 1708 	pop	ar6
                                   1709 ;	syntax.c:259: array_for_nodes[i].data_pointer = NULL;
      003681                       1710 00139$:
                                   1711 ;	syntax.c:254: for(int i = 0; i < 100; i++) 
      003681 0E               [12] 1712 	inc	r6
      003682 BE 00 01         [24] 1713 	cjne	r6,#0x00,00276$
      003685 0F               [12] 1714 	inc	r7
      003686                       1715 00276$:
      003686 02 36 09         [24] 1716 	ljmp	00138$
      003689                       1717 00107$:
                                   1718 ;	syntax.c:263: printf("\n\r+--------------------------------------------------+\n\r");
      003689 74 17            [12] 1719 	mov	a,#___str_2
      00368B C0 E0            [24] 1720 	push	acc
      00368D 74 56            [12] 1721 	mov	a,#(___str_2 >> 8)
      00368F C0 E0            [24] 1722 	push	acc
      003691 74 80            [12] 1723 	mov	a,#0x80
      003693 C0 E0            [24] 1724 	push	acc
      003695 12 4B 63         [24] 1725 	lcall	_printf
      003698 15 81            [12] 1726 	dec	sp
      00369A 15 81            [12] 1727 	dec	sp
      00369C 15 81            [12] 1728 	dec	sp
                                   1729 ;	syntax.c:267: printf("\n\r| All buffers successfully deallocated            |");
      00369E 74 9D            [12] 1730 	mov	a,#___str_10
      0036A0 C0 E0            [24] 1731 	push	acc
      0036A2 74 57            [12] 1732 	mov	a,#(___str_10 >> 8)
      0036A4 C0 E0            [24] 1733 	push	acc
      0036A6 74 80            [12] 1734 	mov	a,#0x80
      0036A8 C0 E0            [24] 1735 	push	acc
      0036AA 12 4B 63         [24] 1736 	lcall	_printf
      0036AD 15 81            [12] 1737 	dec	sp
      0036AF 15 81            [12] 1738 	dec	sp
      0036B1 15 81            [12] 1739 	dec	sp
                                   1740 ;	syntax.c:271: printf("\n\r+--------------------------------------------------+\n\r");
      0036B3 74 17            [12] 1741 	mov	a,#___str_2
      0036B5 C0 E0            [24] 1742 	push	acc
      0036B7 74 56            [12] 1743 	mov	a,#(___str_2 >> 8)
      0036B9 C0 E0            [24] 1744 	push	acc
      0036BB 74 80            [12] 1745 	mov	a,#0x80
      0036BD C0 E0            [24] 1746 	push	acc
      0036BF 12 4B 63         [24] 1747 	lcall	_printf
      0036C2 15 81            [12] 1748 	dec	sp
      0036C4 15 81            [12] 1749 	dec	sp
      0036C6 15 81            [12] 1750 	dec	sp
                                   1751 ;	syntax.c:279: case '?':               // Show system status
      0036C8                       1752 00111$:
                                   1753 ;	syntax.c:280: printf("\n\r+------------------SYSTEM STATUS-------------------+");
      0036C8 74 09            [12] 1754 	mov	a,#___str_12
      0036CA C0 E0            [24] 1755 	push	acc
      0036CC 74 58            [12] 1756 	mov	a,#(___str_12 >> 8)
      0036CE C0 E0            [24] 1757 	push	acc
      0036D0 74 80            [12] 1758 	mov	a,#0x80
      0036D2 C0 E0            [24] 1759 	push	acc
      0036D4 12 4B 63         [24] 1760 	lcall	_printf
      0036D7 15 81            [12] 1761 	dec	sp
      0036D9 15 81            [12] 1762 	dec	sp
      0036DB 15 81            [12] 1763 	dec	sp
                                   1764 ;	syntax.c:281: printf("\n\r| COMMAND STATISTICS                              |");
      0036DD 74 40            [12] 1765 	mov	a,#___str_13
      0036DF C0 E0            [24] 1766 	push	acc
      0036E1 74 58            [12] 1767 	mov	a,#(___str_13 >> 8)
      0036E3 C0 E0            [24] 1768 	push	acc
      0036E5 74 80            [12] 1769 	mov	a,#0x80
      0036E7 C0 E0            [24] 1770 	push	acc
      0036E9 12 4B 63         [24] 1771 	lcall	_printf
      0036EC 15 81            [12] 1772 	dec	sp
      0036EE 15 81            [12] 1773 	dec	sp
      0036F0 15 81            [12] 1774 	dec	sp
                                   1775 ;	syntax.c:282: printf("\n\r|------------------------------------------------|");
      0036F2 74 49            [12] 1776 	mov	a,#___str_8
      0036F4 C0 E0            [24] 1777 	push	acc
      0036F6 74 57            [12] 1778 	mov	a,#(___str_8 >> 8)
      0036F8 C0 E0            [24] 1779 	push	acc
      0036FA 74 80            [12] 1780 	mov	a,#0x80
      0036FC C0 E0            [24] 1781 	push	acc
      0036FE 12 4B 63         [24] 1782 	lcall	_printf
      003701 15 81            [12] 1783 	dec	sp
      003703 15 81            [12] 1784 	dec	sp
      003705 15 81            [12] 1785 	dec	sp
                                   1786 ;	syntax.c:283: printf("\n\r| Total Commands   | %-28d |", total_number_of_commands);
      003707 90 1A F8         [24] 1787 	mov	dptr,#_total_number_of_commands
      00370A E0               [24] 1788 	movx	a,@dptr
      00370B FF               [12] 1789 	mov	r7,a
      00370C 7E 00            [12] 1790 	mov	r6,#0x00
      00370E C0 07            [24] 1791 	push	ar7
      003710 C0 06            [24] 1792 	push	ar6
      003712 74 76            [12] 1793 	mov	a,#___str_14
      003714 C0 E0            [24] 1794 	push	acc
      003716 74 58            [12] 1795 	mov	a,#(___str_14 >> 8)
      003718 C0 E0            [24] 1796 	push	acc
      00371A 74 80            [12] 1797 	mov	a,#0x80
      00371C C0 E0            [24] 1798 	push	acc
      00371E 12 4B 63         [24] 1799 	lcall	_printf
      003721 E5 81            [12] 1800 	mov	a,sp
      003723 24 FB            [12] 1801 	add	a,#0xfb
      003725 F5 81            [12] 1802 	mov	sp,a
                                   1803 ;	syntax.c:284: printf("\n\r| Recent Commands  | %-28d |", recent_commands);
      003727 90 1A FA         [24] 1804 	mov	dptr,#_recent_commands
      00372A E0               [24] 1805 	movx	a,@dptr
      00372B FF               [12] 1806 	mov	r7,a
      00372C 7E 00            [12] 1807 	mov	r6,#0x00
      00372E C0 07            [24] 1808 	push	ar7
      003730 C0 06            [24] 1809 	push	ar6
      003732 74 95            [12] 1810 	mov	a,#___str_15
      003734 C0 E0            [24] 1811 	push	acc
      003736 74 58            [12] 1812 	mov	a,#(___str_15 >> 8)
      003738 C0 E0            [24] 1813 	push	acc
      00373A 74 80            [12] 1814 	mov	a,#0x80
      00373C C0 E0            [24] 1815 	push	acc
      00373E 12 4B 63         [24] 1816 	lcall	_printf
      003741 E5 81            [12] 1817 	mov	a,sp
      003743 24 FB            [12] 1818 	add	a,#0xfb
      003745 F5 81            [12] 1819 	mov	sp,a
                                   1820 ;	syntax.c:285: printf("\n\r|------------------------------------------------|");
      003747 74 49            [12] 1821 	mov	a,#___str_8
      003749 C0 E0            [24] 1822 	push	acc
      00374B 74 57            [12] 1823 	mov	a,#(___str_8 >> 8)
      00374D C0 E0            [24] 1824 	push	acc
      00374F 74 80            [12] 1825 	mov	a,#0x80
      003751 C0 E0            [24] 1826 	push	acc
      003753 12 4B 63         [24] 1827 	lcall	_printf
      003756 15 81            [12] 1828 	dec	sp
      003758 15 81            [12] 1829 	dec	sp
      00375A 15 81            [12] 1830 	dec	sp
                                   1831 ;	syntax.c:286: printf("\n\r| STORAGE STATISTICS                             |");
      00375C 74 B4            [12] 1832 	mov	a,#___str_16
      00375E C0 E0            [24] 1833 	push	acc
      003760 74 58            [12] 1834 	mov	a,#(___str_16 >> 8)
      003762 C0 E0            [24] 1835 	push	acc
      003764 74 80            [12] 1836 	mov	a,#0x80
      003766 C0 E0            [24] 1837 	push	acc
      003768 12 4B 63         [24] 1838 	lcall	_printf
      00376B 15 81            [12] 1839 	dec	sp
      00376D 15 81            [12] 1840 	dec	sp
      00376F 15 81            [12] 1841 	dec	sp
                                   1842 ;	syntax.c:287: printf("\n\r|------------------------------------------------|");
      003771 74 49            [12] 1843 	mov	a,#___str_8
      003773 C0 E0            [24] 1844 	push	acc
      003775 74 57            [12] 1845 	mov	a,#(___str_8 >> 8)
      003777 C0 E0            [24] 1846 	push	acc
      003779 74 80            [12] 1847 	mov	a,#0x80
      00377B C0 E0            [24] 1848 	push	acc
      00377D 12 4B 63         [24] 1849 	lcall	_printf
      003780 15 81            [12] 1850 	dec	sp
      003782 15 81            [12] 1851 	dec	sp
      003784 15 81            [12] 1852 	dec	sp
                                   1853 ;	syntax.c:288: printf("\n\r| Total Storage    | %-28d |", total_number_of_storage);
      003786 90 1A F9         [24] 1854 	mov	dptr,#_total_number_of_storage
      003789 E0               [24] 1855 	movx	a,@dptr
      00378A FF               [12] 1856 	mov	r7,a
      00378B 7E 00            [12] 1857 	mov	r6,#0x00
      00378D C0 07            [24] 1858 	push	ar7
      00378F C0 06            [24] 1859 	push	ar6
      003791 74 E9            [12] 1860 	mov	a,#___str_17
      003793 C0 E0            [24] 1861 	push	acc
      003795 74 58            [12] 1862 	mov	a,#(___str_17 >> 8)
      003797 C0 E0            [24] 1863 	push	acc
      003799 74 80            [12] 1864 	mov	a,#0x80
      00379B C0 E0            [24] 1865 	push	acc
      00379D 12 4B 63         [24] 1866 	lcall	_printf
      0037A0 E5 81            [12] 1867 	mov	a,sp
      0037A2 24 FB            [12] 1868 	add	a,#0xfb
      0037A4 F5 81            [12] 1869 	mov	sp,a
                                   1870 ;	syntax.c:289: printf("\n\r| Recent Storage   | %-28d |", recent_storage);
      0037A6 90 1A FB         [24] 1871 	mov	dptr,#_recent_storage
      0037A9 E0               [24] 1872 	movx	a,@dptr
      0037AA FF               [12] 1873 	mov	r7,a
      0037AB 7E 00            [12] 1874 	mov	r6,#0x00
      0037AD C0 07            [24] 1875 	push	ar7
      0037AF C0 06            [24] 1876 	push	ar6
      0037B1 74 08            [12] 1877 	mov	a,#___str_18
      0037B3 C0 E0            [24] 1878 	push	acc
      0037B5 74 59            [12] 1879 	mov	a,#(___str_18 >> 8)
      0037B7 C0 E0            [24] 1880 	push	acc
      0037B9 74 80            [12] 1881 	mov	a,#0x80
      0037BB C0 E0            [24] 1882 	push	acc
      0037BD 12 4B 63         [24] 1883 	lcall	_printf
      0037C0 E5 81            [12] 1884 	mov	a,sp
      0037C2 24 FB            [12] 1885 	add	a,#0xfb
      0037C4 F5 81            [12] 1886 	mov	sp,a
                                   1887 ;	syntax.c:290: printf("\n\r+--------------------------------------------------+");
      0037C6 74 A5            [12] 1888 	mov	a,#___str_0
      0037C8 C0 E0            [24] 1889 	push	acc
      0037CA 74 55            [12] 1890 	mov	a,#(___str_0 >> 8)
      0037CC C0 E0            [24] 1891 	push	acc
      0037CE 74 80            [12] 1892 	mov	a,#0x80
      0037D0 C0 E0            [24] 1893 	push	acc
      0037D2 12 4B 63         [24] 1894 	lcall	_printf
      0037D5 15 81            [12] 1895 	dec	sp
      0037D7 15 81            [12] 1896 	dec	sp
      0037D9 15 81            [12] 1897 	dec	sp
                                   1898 ;	syntax.c:291: printf("\n\r| TOTAL BUFFERS IN HEAP                           |");
      0037DB 74 27            [12] 1899 	mov	a,#___str_19
      0037DD C0 E0            [24] 1900 	push	acc
      0037DF 74 59            [12] 1901 	mov	a,#(___str_19 >> 8)
      0037E1 C0 E0            [24] 1902 	push	acc
      0037E3 74 80            [12] 1903 	mov	a,#0x80
      0037E5 C0 E0            [24] 1904 	push	acc
      0037E7 12 4B 63         [24] 1905 	lcall	_printf
      0037EA 15 81            [12] 1906 	dec	sp
      0037EC 15 81            [12] 1907 	dec	sp
      0037EE 15 81            [12] 1908 	dec	sp
                                   1909 ;	syntax.c:292: printf("\n\r|------------------------------------------------|");
      0037F0 74 49            [12] 1910 	mov	a,#___str_8
      0037F2 C0 E0            [24] 1911 	push	acc
      0037F4 74 57            [12] 1912 	mov	a,#(___str_8 >> 8)
      0037F6 C0 E0            [24] 1913 	push	acc
      0037F8 74 80            [12] 1914 	mov	a,#0x80
      0037FA C0 E0            [24] 1915 	push	acc
      0037FC 12 4B 63         [24] 1916 	lcall	_printf
      0037FF 15 81            [12] 1917 	dec	sp
      003801 15 81            [12] 1918 	dec	sp
      003803 15 81            [12] 1919 	dec	sp
                                   1920 ;	syntax.c:293: printf("\n\r| Total Buffers    | %-28d |", index_of_buffers);
      003805 90 1A F7         [24] 1921 	mov	dptr,#_index_of_buffers
      003808 E0               [24] 1922 	movx	a,@dptr
      003809 FF               [12] 1923 	mov	r7,a
      00380A 7E 00            [12] 1924 	mov	r6,#0x00
      00380C C0 07            [24] 1925 	push	ar7
      00380E C0 06            [24] 1926 	push	ar6
      003810 74 5D            [12] 1927 	mov	a,#___str_20
      003812 C0 E0            [24] 1928 	push	acc
      003814 74 59            [12] 1929 	mov	a,#(___str_20 >> 8)
      003816 C0 E0            [24] 1930 	push	acc
      003818 74 80            [12] 1931 	mov	a,#0x80
      00381A C0 E0            [24] 1932 	push	acc
      00381C 12 4B 63         [24] 1933 	lcall	_printf
      00381F E5 81            [12] 1934 	mov	a,sp
      003821 24 FB            [12] 1935 	add	a,#0xfb
      003823 F5 81            [12] 1936 	mov	sp,a
                                   1937 ;	syntax.c:294: printf("\n\r+--------------------------------------------------+");
      003825 74 A5            [12] 1938 	mov	a,#___str_0
      003827 C0 E0            [24] 1939 	push	acc
      003829 74 55            [12] 1940 	mov	a,#(___str_0 >> 8)
      00382B C0 E0            [24] 1941 	push	acc
      00382D 74 80            [12] 1942 	mov	a,#0x80
      00382F C0 E0            [24] 1943 	push	acc
      003831 12 4B 63         [24] 1944 	lcall	_printf
      003834 15 81            [12] 1945 	dec	sp
      003836 15 81            [12] 1946 	dec	sp
      003838 15 81            [12] 1947 	dec	sp
                                   1948 ;	syntax.c:296: printf("\n\r+------------------BUFFER INFO--------------------+");
      00383A 74 7C            [12] 1949 	mov	a,#___str_21
      00383C C0 E0            [24] 1950 	push	acc
      00383E 74 59            [12] 1951 	mov	a,#(___str_21 >> 8)
      003840 C0 E0            [24] 1952 	push	acc
      003842 74 80            [12] 1953 	mov	a,#0x80
      003844 C0 E0            [24] 1954 	push	acc
      003846 12 4B 63         [24] 1955 	lcall	_printf
      003849 15 81            [12] 1956 	dec	sp
      00384B 15 81            [12] 1957 	dec	sp
      00384D 15 81            [12] 1958 	dec	sp
                                   1959 ;	syntax.c:297: printf("\n\r| ID | Start Addr  | End Addr    | Size (bytes) |");
      00384F 74 B2            [12] 1960 	mov	a,#___str_22
      003851 C0 E0            [24] 1961 	push	acc
      003853 74 59            [12] 1962 	mov	a,#(___str_22 >> 8)
      003855 C0 E0            [24] 1963 	push	acc
      003857 74 80            [12] 1964 	mov	a,#0x80
      003859 C0 E0            [24] 1965 	push	acc
      00385B 12 4B 63         [24] 1966 	lcall	_printf
      00385E 15 81            [12] 1967 	dec	sp
      003860 15 81            [12] 1968 	dec	sp
      003862 15 81            [12] 1969 	dec	sp
                                   1970 ;	syntax.c:298: printf("\n\r|----|-------------|-------------|--------------|");
      003864 74 E6            [12] 1971 	mov	a,#___str_23
      003866 C0 E0            [24] 1972 	push	acc
      003868 74 59            [12] 1973 	mov	a,#(___str_23 >> 8)
      00386A C0 E0            [24] 1974 	push	acc
      00386C 74 80            [12] 1975 	mov	a,#0x80
      00386E C0 E0            [24] 1976 	push	acc
      003870 12 4B 63         [24] 1977 	lcall	_printf
      003873 15 81            [12] 1978 	dec	sp
      003875 15 81            [12] 1979 	dec	sp
      003877 15 81            [12] 1980 	dec	sp
                                   1981 ;	syntax.c:300: for(int i=1; i<100; i++){
      003879 7E 01            [12] 1982 	mov	r6,#0x01
      00387B 7F 00            [12] 1983 	mov	r7,#0x00
      00387D                       1984 00141$:
      00387D C3               [12] 1985 	clr	c
      00387E EE               [12] 1986 	mov	a,r6
      00387F 94 64            [12] 1987 	subb	a,#0x64
      003881 EF               [12] 1988 	mov	a,r7
      003882 64 80            [12] 1989 	xrl	a,#0x80
      003884 94 80            [12] 1990 	subb	a,#0x80
      003886 40 03            [24] 1991 	jc	00277$
      003888 02 39 18         [24] 1992 	ljmp	00114$
      00388B                       1993 00277$:
                                   1994 ;	syntax.c:301: if(array_for_nodes[i]){
      00388B 90 1A AA         [24] 1995 	mov	dptr,#__mulint_PARM_2
      00388E EE               [12] 1996 	mov	a,r6
      00388F F0               [24] 1997 	movx	@dptr,a
      003890 EF               [12] 1998 	mov	a,r7
      003891 A3               [24] 1999 	inc	dptr
      003892 F0               [24] 2000 	movx	@dptr,a
      003893 90 00 06         [24] 2001 	mov	dptr,#0x0006
      003896 C0 07            [24] 2002 	push	ar7
      003898 C0 06            [24] 2003 	push	ar6
      00389A 12 48 E3         [24] 2004 	lcall	__mulint
      00389D AC 82            [24] 2005 	mov	r4, dpl
      00389F AD 83            [24] 2006 	mov	r5, dph
      0038A1 D0 06            [24] 2007 	pop	ar6
      0038A3 D0 07            [24] 2008 	pop	ar7
      0038A5 EC               [12] 2009 	mov	a,r4
      0038A6 24 03            [12] 2010 	add	a, #_array_for_nodes
      0038A8 FC               [12] 2011 	mov	r4,a
      0038A9 ED               [12] 2012 	mov	a,r5
      0038AA 34 04            [12] 2013 	addc	a, #(_array_for_nodes >> 8)
      0038AC FD               [12] 2014 	mov	r5,a
      0038AD 8C 82            [24] 2015 	mov	dpl,r4
      0038AF 8D 83            [24] 2016 	mov	dph,r5
      0038B1 E0               [24] 2017 	movx	a,@dptr
      0038B2 60 5C            [24] 2018 	jz	00142$
                                   2019 ;	syntax.c:305: array_for_nodes[i].size);
      0038B4 8C 82            [24] 2020 	mov	dpl,r4
      0038B6 8D 83            [24] 2021 	mov	dph,r5
      0038B8 A3               [24] 2022 	inc	dptr
      0038B9 A3               [24] 2023 	inc	dptr
      0038BA A3               [24] 2024 	inc	dptr
      0038BB A3               [24] 2025 	inc	dptr
      0038BC E0               [24] 2026 	movx	a,@dptr
      0038BD F5 0D            [12] 2027 	mov	_get_command_sloc1_1_0,a
      0038BF A3               [24] 2028 	inc	dptr
      0038C0 E0               [24] 2029 	movx	a,@dptr
      0038C1 F5 0E            [12] 2030 	mov	(_get_command_sloc1_1_0 + 1),a
                                   2031 ;	syntax.c:304: array_for_nodes[i].data_pointer+array_for_nodes[i].size,
      0038C3 8C 82            [24] 2032 	mov	dpl,r4
      0038C5 8D 83            [24] 2033 	mov	dph,r5
      0038C7 A3               [24] 2034 	inc	dptr
      0038C8 E0               [24] 2035 	movx	a,@dptr
      0038C9 F5 10            [12] 2036 	mov	_get_command_sloc2_1_0,a
      0038CB A3               [24] 2037 	inc	dptr
      0038CC E0               [24] 2038 	movx	a,@dptr
      0038CD F5 11            [12] 2039 	mov	(_get_command_sloc2_1_0 + 1),a
      0038CF A3               [24] 2040 	inc	dptr
      0038D0 E0               [24] 2041 	movx	a,@dptr
      0038D1 F5 12            [12] 2042 	mov	(_get_command_sloc2_1_0 + 2),a
      0038D3 E5 0D            [12] 2043 	mov	a,_get_command_sloc1_1_0
      0038D5 25 10            [12] 2044 	add	a, _get_command_sloc2_1_0
      0038D7 FA               [12] 2045 	mov	r2,a
      0038D8 E5 0E            [12] 2046 	mov	a,(_get_command_sloc1_1_0 + 1)
      0038DA 35 11            [12] 2047 	addc	a, (_get_command_sloc2_1_0 + 1)
      0038DC FC               [12] 2048 	mov	r4,a
      0038DD AD 12            [24] 2049 	mov	r5,(_get_command_sloc2_1_0 + 2)
                                   2050 ;	syntax.c:302: printf("\n\r| %-2d | %-10p | %-10p | %-11d |",
      0038DF C0 07            [24] 2051 	push	ar7
      0038E1 C0 06            [24] 2052 	push	ar6
      0038E3 C0 0D            [24] 2053 	push	_get_command_sloc1_1_0
      0038E5 C0 0E            [24] 2054 	push	(_get_command_sloc1_1_0 + 1)
      0038E7 C0 02            [24] 2055 	push	ar2
      0038E9 C0 04            [24] 2056 	push	ar4
      0038EB C0 05            [24] 2057 	push	ar5
      0038ED C0 10            [24] 2058 	push	_get_command_sloc2_1_0
      0038EF C0 11            [24] 2059 	push	(_get_command_sloc2_1_0 + 1)
      0038F1 C0 12            [24] 2060 	push	(_get_command_sloc2_1_0 + 2)
      0038F3 C0 06            [24] 2061 	push	ar6
      0038F5 C0 07            [24] 2062 	push	ar7
      0038F7 74 1A            [12] 2063 	mov	a,#___str_24
      0038F9 C0 E0            [24] 2064 	push	acc
      0038FB 74 5A            [12] 2065 	mov	a,#(___str_24 >> 8)
      0038FD C0 E0            [24] 2066 	push	acc
      0038FF 74 80            [12] 2067 	mov	a,#0x80
      003901 C0 E0            [24] 2068 	push	acc
      003903 12 4B 63         [24] 2069 	lcall	_printf
      003906 E5 81            [12] 2070 	mov	a,sp
      003908 24 F3            [12] 2071 	add	a,#0xf3
      00390A F5 81            [12] 2072 	mov	sp,a
      00390C D0 06            [24] 2073 	pop	ar6
      00390E D0 07            [24] 2074 	pop	ar7
      003910                       2075 00142$:
                                   2076 ;	syntax.c:300: for(int i=1; i<100; i++){
      003910 0E               [12] 2077 	inc	r6
      003911 BE 00 01         [24] 2078 	cjne	r6,#0x00,00279$
      003914 0F               [12] 2079 	inc	r7
      003915                       2080 00279$:
      003915 02 38 7D         [24] 2081 	ljmp	00141$
      003918                       2082 00114$:
                                   2083 ;	syntax.c:309: printf("\n\r|------------------------------------------------|");
      003918 74 49            [12] 2084 	mov	a,#___str_8
      00391A C0 E0            [24] 2085 	push	acc
      00391C 74 57            [12] 2086 	mov	a,#(___str_8 >> 8)
      00391E C0 E0            [24] 2087 	push	acc
      003920 74 80            [12] 2088 	mov	a,#0x80
      003922 C0 E0            [24] 2089 	push	acc
      003924 12 4B 63         [24] 2090 	lcall	_printf
      003927 15 81            [12] 2091 	dec	sp
      003929 15 81            [12] 2092 	dec	sp
      00392B 15 81            [12] 2093 	dec	sp
                                   2094 ;	syntax.c:311: printf("\n\r| MEMORY ALLOCATION STATUS BUFFER 0              |");
      00392D 74 3D            [12] 2095 	mov	a,#___str_25
      00392F C0 E0            [24] 2096 	push	acc
      003931 74 5A            [12] 2097 	mov	a,#(___str_25 >> 8)
      003933 C0 E0            [24] 2098 	push	acc
      003935 74 80            [12] 2099 	mov	a,#0x80
      003937 C0 E0            [24] 2100 	push	acc
      003939 12 4B 63         [24] 2101 	lcall	_printf
      00393C 15 81            [12] 2102 	dec	sp
      00393E 15 81            [12] 2103 	dec	sp
      003940 15 81            [12] 2104 	dec	sp
                                   2105 ;	syntax.c:312: printf("\n\r|------------------------------------------------|");
      003942 74 49            [12] 2106 	mov	a,#___str_8
      003944 C0 E0            [24] 2107 	push	acc
      003946 74 57            [12] 2108 	mov	a,#(___str_8 >> 8)
      003948 C0 E0            [24] 2109 	push	acc
      00394A 74 80            [12] 2110 	mov	a,#0x80
      00394C C0 E0            [24] 2111 	push	acc
      00394E 12 4B 63         [24] 2112 	lcall	_printf
      003951 15 81            [12] 2113 	dec	sp
      003953 15 81            [12] 2114 	dec	sp
      003955 15 81            [12] 2115 	dec	sp
                                   2116 ;	syntax.c:313: printf("\n\r| Total Space      | %-28d |", array_for_nodes[0].size);
      003957 90 04 07         [24] 2117 	mov	dptr,#(_array_for_nodes + 0x0004)
      00395A E0               [24] 2118 	movx	a,@dptr
      00395B FE               [12] 2119 	mov	r6,a
      00395C A3               [24] 2120 	inc	dptr
      00395D E0               [24] 2121 	movx	a,@dptr
      00395E FF               [12] 2122 	mov	r7,a
      00395F C0 06            [24] 2123 	push	ar6
      003961 C0 07            [24] 2124 	push	ar7
      003963 74 72            [12] 2125 	mov	a,#___str_26
      003965 C0 E0            [24] 2126 	push	acc
      003967 74 5A            [12] 2127 	mov	a,#(___str_26 >> 8)
      003969 C0 E0            [24] 2128 	push	acc
      00396B 74 80            [12] 2129 	mov	a,#0x80
      00396D C0 E0            [24] 2130 	push	acc
      00396F 12 4B 63         [24] 2131 	lcall	_printf
      003972 E5 81            [12] 2132 	mov	a,sp
      003974 24 FB            [12] 2133 	add	a,#0xfb
      003976 F5 81            [12] 2134 	mov	sp,a
                                   2135 ;	syntax.c:314: printf("\n\r| Occupied Space   | %-28d |", total_number_of_storage);
      003978 90 1A F9         [24] 2136 	mov	dptr,#_total_number_of_storage
      00397B E0               [24] 2137 	movx	a,@dptr
      00397C FF               [12] 2138 	mov	r7,a
      00397D 7E 00            [12] 2139 	mov	r6,#0x00
      00397F C0 07            [24] 2140 	push	ar7
      003981 C0 06            [24] 2141 	push	ar6
      003983 74 91            [12] 2142 	mov	a,#___str_27
      003985 C0 E0            [24] 2143 	push	acc
      003987 74 5A            [12] 2144 	mov	a,#(___str_27 >> 8)
      003989 C0 E0            [24] 2145 	push	acc
      00398B 74 80            [12] 2146 	mov	a,#0x80
      00398D C0 E0            [24] 2147 	push	acc
      00398F 12 4B 63         [24] 2148 	lcall	_printf
      003992 E5 81            [12] 2149 	mov	a,sp
      003994 24 FB            [12] 2150 	add	a,#0xfb
      003996 F5 81            [12] 2151 	mov	sp,a
                                   2152 ;	syntax.c:315: printf("\n\r| Free Space       | %-28d |", array_for_nodes[0].size - total_number_of_storage);
      003998 90 04 07         [24] 2153 	mov	dptr,#(_array_for_nodes + 0x0004)
      00399B E0               [24] 2154 	movx	a,@dptr
      00399C FE               [12] 2155 	mov	r6,a
      00399D A3               [24] 2156 	inc	dptr
      00399E E0               [24] 2157 	movx	a,@dptr
      00399F FF               [12] 2158 	mov	r7,a
      0039A0 90 1A F9         [24] 2159 	mov	dptr,#_total_number_of_storage
      0039A3 E0               [24] 2160 	movx	a,@dptr
      0039A4 FD               [12] 2161 	mov	r5,a
      0039A5 7C 00            [12] 2162 	mov	r4,#0x00
      0039A7 EE               [12] 2163 	mov	a,r6
      0039A8 C3               [12] 2164 	clr	c
      0039A9 9D               [12] 2165 	subb	a,r5
      0039AA FE               [12] 2166 	mov	r6,a
      0039AB EF               [12] 2167 	mov	a,r7
      0039AC 9C               [12] 2168 	subb	a,r4
      0039AD FF               [12] 2169 	mov	r7,a
      0039AE C0 06            [24] 2170 	push	ar6
      0039B0 C0 07            [24] 2171 	push	ar7
      0039B2 74 B0            [12] 2172 	mov	a,#___str_28
      0039B4 C0 E0            [24] 2173 	push	acc
      0039B6 74 5A            [12] 2174 	mov	a,#(___str_28 >> 8)
      0039B8 C0 E0            [24] 2175 	push	acc
      0039BA 74 80            [12] 2176 	mov	a,#0x80
      0039BC C0 E0            [24] 2177 	push	acc
      0039BE 12 4B 63         [24] 2178 	lcall	_printf
      0039C1 E5 81            [12] 2179 	mov	a,sp
      0039C3 24 FB            [12] 2180 	add	a,#0xfb
      0039C5 F5 81            [12] 2181 	mov	sp,a
                                   2182 ;	syntax.c:316: printf("\n\r+--------------------------------------------------+");
      0039C7 74 A5            [12] 2183 	mov	a,#___str_0
      0039C9 C0 E0            [24] 2184 	push	acc
      0039CB 74 55            [12] 2185 	mov	a,#(___str_0 >> 8)
      0039CD C0 E0            [24] 2186 	push	acc
      0039CF 74 80            [12] 2187 	mov	a,#0x80
      0039D1 C0 E0            [24] 2188 	push	acc
      0039D3 12 4B 63         [24] 2189 	lcall	_printf
      0039D6 15 81            [12] 2190 	dec	sp
      0039D8 15 81            [12] 2191 	dec	sp
      0039DA 15 81            [12] 2192 	dec	sp
                                   2193 ;	syntax.c:317: printf("\n\r+--------------------------------------------------+");
      0039DC 74 A5            [12] 2194 	mov	a,#___str_0
      0039DE C0 E0            [24] 2195 	push	acc
      0039E0 74 55            [12] 2196 	mov	a,#(___str_0 >> 8)
      0039E2 C0 E0            [24] 2197 	push	acc
      0039E4 74 80            [12] 2198 	mov	a,#0x80
      0039E6 C0 E0            [24] 2199 	push	acc
      0039E8 12 4B 63         [24] 2200 	lcall	_printf
      0039EB 15 81            [12] 2201 	dec	sp
      0039ED 15 81            [12] 2202 	dec	sp
      0039EF 15 81            [12] 2203 	dec	sp
                                   2204 ;	syntax.c:319: buffer0_dump();
      0039F1 12 3D 63         [24] 2205 	lcall	_buffer0_dump
                                   2206 ;	syntax.c:320: printf("\n\r| BUFFER 0 CLEAR STATUS                           |");
      0039F4 74 CF            [12] 2207 	mov	a,#___str_29
      0039F6 C0 E0            [24] 2208 	push	acc
      0039F8 74 5A            [12] 2209 	mov	a,#(___str_29 >> 8)
      0039FA C0 E0            [24] 2210 	push	acc
      0039FC 74 80            [12] 2211 	mov	a,#0x80
      0039FE C0 E0            [24] 2212 	push	acc
      003A00 12 4B 63         [24] 2213 	lcall	_printf
      003A03 15 81            [12] 2214 	dec	sp
      003A05 15 81            [12] 2215 	dec	sp
      003A07 15 81            [12] 2216 	dec	sp
                                   2217 ;	syntax.c:321: printf("\n\r|------------------------------------------------|");
      003A09 74 49            [12] 2218 	mov	a,#___str_8
      003A0B C0 E0            [24] 2219 	push	acc
      003A0D 74 57            [12] 2220 	mov	a,#(___str_8 >> 8)
      003A0F C0 E0            [24] 2221 	push	acc
      003A11 74 80            [12] 2222 	mov	a,#0x80
      003A13 C0 E0            [24] 2223 	push	acc
      003A15 12 4B 63         [24] 2224 	lcall	_printf
      003A18 15 81            [12] 2225 	dec	sp
      003A1A 15 81            [12] 2226 	dec	sp
      003A1C 15 81            [12] 2227 	dec	sp
                                   2228 ;	syntax.c:324: if(array_for_nodes[0].data_pointer == NULL) {
      003A1E 90 04 04         [24] 2229 	mov	dptr,#(_array_for_nodes + 0x0001)
      003A21 E0               [24] 2230 	movx	a,@dptr
      003A22 FD               [12] 2231 	mov	r5,a
      003A23 A3               [24] 2232 	inc	dptr
      003A24 E0               [24] 2233 	movx	a,@dptr
      003A25 FE               [12] 2234 	mov	r6,a
      003A26 A3               [24] 2235 	inc	dptr
      003A27 E0               [24] 2236 	movx	a,@dptr
      003A28 FF               [12] 2237 	mov	r7,a
      003A29 ED               [12] 2238 	mov	a,r5
      003A2A 4E               [12] 2239 	orl	a,r6
      003A2B 70 2B            [24] 2240 	jnz	00116$
                                   2241 ;	syntax.c:325: printf("\n\r| Buffer 0 is not initialized                     |");
      003A2D 74 05            [12] 2242 	mov	a,#___str_30
      003A2F C0 E0            [24] 2243 	push	acc
      003A31 74 5B            [12] 2244 	mov	a,#(___str_30 >> 8)
      003A33 C0 E0            [24] 2245 	push	acc
      003A35 74 80            [12] 2246 	mov	a,#0x80
      003A37 C0 E0            [24] 2247 	push	acc
      003A39 12 4B 63         [24] 2248 	lcall	_printf
      003A3C 15 81            [12] 2249 	dec	sp
      003A3E 15 81            [12] 2250 	dec	sp
      003A40 15 81            [12] 2251 	dec	sp
                                   2252 ;	syntax.c:326: printf("\n\r+--------------------------------------------------+\n\r");
      003A42 74 17            [12] 2253 	mov	a,#___str_2
      003A44 C0 E0            [24] 2254 	push	acc
      003A46 74 56            [12] 2255 	mov	a,#(___str_2 >> 8)
      003A48 C0 E0            [24] 2256 	push	acc
      003A4A 74 80            [12] 2257 	mov	a,#0x80
      003A4C C0 E0            [24] 2258 	push	acc
      003A4E 12 4B 63         [24] 2259 	lcall	_printf
      003A51 15 81            [12] 2260 	dec	sp
      003A53 15 81            [12] 2261 	dec	sp
      003A55 15 81            [12] 2262 	dec	sp
                                   2263 ;	syntax.c:327: return;
      003A57 22               [24] 2264 	ret
      003A58                       2265 00116$:
                                   2266 ;	syntax.c:330: uint16_t buffer_size = array_for_nodes[0].size;
      003A58 90 04 07         [24] 2267 	mov	dptr,#(_array_for_nodes + 0x0004)
      003A5B E0               [24] 2268 	movx	a,@dptr
      003A5C FB               [12] 2269 	mov	r3,a
      003A5D A3               [24] 2270 	inc	dptr
      003A5E E0               [24] 2271 	movx	a,@dptr
      003A5F FC               [12] 2272 	mov	r4,a
                                   2273 ;	syntax.c:333: memset(array_for_nodes[0].data_pointer, 0, buffer_size);
      003A60 8D 10            [24] 2274 	mov	_get_command_sloc2_1_0,r5
      003A62 8E 11            [24] 2275 	mov	(_get_command_sloc2_1_0 + 1),r6
      003A64 8F 12            [24] 2276 	mov	(_get_command_sloc2_1_0 + 2),r7
      003A66 8B 02            [24] 2277 	mov	ar2,r3
      003A68 8C 07            [24] 2278 	mov	ar7,r4
      003A6A 90 1A 9E         [24] 2279 	mov	dptr,#_memset_PARM_2
      003A6D E4               [12] 2280 	clr	a
      003A6E F0               [24] 2281 	movx	@dptr,a
      003A6F 90 1A 9F         [24] 2282 	mov	dptr,#_memset_PARM_3
      003A72 EA               [12] 2283 	mov	a,r2
      003A73 F0               [24] 2284 	movx	@dptr,a
      003A74 EF               [12] 2285 	mov	a,r7
      003A75 A3               [24] 2286 	inc	dptr
      003A76 F0               [24] 2287 	movx	@dptr,a
      003A77 85 10 82         [24] 2288 	mov	dpl, _get_command_sloc2_1_0
      003A7A 85 11 83         [24] 2289 	mov	dph, (_get_command_sloc2_1_0 + 1)
      003A7D 85 12 F0         [24] 2290 	mov	b, (_get_command_sloc2_1_0 + 2)
      003A80 C0 04            [24] 2291 	push	ar4
      003A82 C0 03            [24] 2292 	push	ar3
      003A84 12 46 FB         [24] 2293 	lcall	_memset
      003A87 D0 03            [24] 2294 	pop	ar3
      003A89 D0 04            [24] 2295 	pop	ar4
                                   2296 ;	syntax.c:334: array_for_nodes[0].index = 0;
      003A8B 90 04 03         [24] 2297 	mov	dptr,#_array_for_nodes
      003A8E E4               [12] 2298 	clr	a
      003A8F F0               [24] 2299 	movx	@dptr,a
                                   2300 ;	syntax.c:336: temp_buffer_size = buffer_size;    // Reset available space
      003A90 78 2E            [12] 2301 	mov	r0,#_temp_buffer_size
      003A92 A6 03            [24] 2302 	mov	@r0,ar3
      003A94 08               [12] 2303 	inc	r0
      003A95 A6 04            [24] 2304 	mov	@r0,ar4
                                   2305 ;	syntax.c:337: wr = array_for_nodes[0].data_pointer;  // Reset write pointer to start
      003A97 90 04 04         [24] 2306 	mov	dptr,#(_array_for_nodes + 0x0001)
      003A9A E0               [24] 2307 	movx	a,@dptr
      003A9B FD               [12] 2308 	mov	r5,a
      003A9C A3               [24] 2309 	inc	dptr
      003A9D E0               [24] 2310 	movx	a,@dptr
      003A9E FE               [12] 2311 	mov	r6,a
      003A9F A3               [24] 2312 	inc	dptr
      003AA0 E0               [24] 2313 	movx	a,@dptr
      003AA1 FF               [12] 2314 	mov	r7,a
      003AA2 90 1A FD         [24] 2315 	mov	dptr,#_wr
      003AA5 ED               [12] 2316 	mov	a,r5
      003AA6 F0               [24] 2317 	movx	@dptr,a
      003AA7 EE               [12] 2318 	mov	a,r6
      003AA8 A3               [24] 2319 	inc	dptr
      003AA9 F0               [24] 2320 	movx	@dptr,a
      003AAA EF               [12] 2321 	mov	a,r7
      003AAB A3               [24] 2322 	inc	dptr
      003AAC F0               [24] 2323 	movx	@dptr,a
                                   2324 ;	syntax.c:338: total_number_of_storage = 0;       // Reset storage counters
      003AAD 90 1A F9         [24] 2325 	mov	dptr,#_total_number_of_storage
      003AB0 E4               [12] 2326 	clr	a
      003AB1 F0               [24] 2327 	movx	@dptr,a
                                   2328 ;	syntax.c:340: printf("\n\r| Buffer Size      | %-28d |", buffer_size);
      003AB2 C0 03            [24] 2329 	push	ar3
      003AB4 C0 04            [24] 2330 	push	ar4
      003AB6 74 3B            [12] 2331 	mov	a,#___str_31
      003AB8 C0 E0            [24] 2332 	push	acc
      003ABA 74 5B            [12] 2333 	mov	a,#(___str_31 >> 8)
      003ABC C0 E0            [24] 2334 	push	acc
      003ABE 74 80            [12] 2335 	mov	a,#0x80
      003AC0 C0 E0            [24] 2336 	push	acc
      003AC2 12 4B 63         [24] 2337 	lcall	_printf
      003AC5 E5 81            [12] 2338 	mov	a,sp
      003AC7 24 FB            [12] 2339 	add	a,#0xfb
      003AC9 F5 81            [12] 2340 	mov	sp,a
                                   2341 ;	syntax.c:341: printf("\n\r| Status          | %-28s |", "Data Erased");
      003ACB 74 78            [12] 2342 	mov	a,#___str_33
      003ACD C0 E0            [24] 2343 	push	acc
      003ACF 74 5B            [12] 2344 	mov	a,#(___str_33 >> 8)
      003AD1 C0 E0            [24] 2345 	push	acc
      003AD3 74 80            [12] 2346 	mov	a,#0x80
      003AD5 C0 E0            [24] 2347 	push	acc
      003AD7 74 5A            [12] 2348 	mov	a,#___str_32
      003AD9 C0 E0            [24] 2349 	push	acc
      003ADB 74 5B            [12] 2350 	mov	a,#(___str_32 >> 8)
      003ADD C0 E0            [24] 2351 	push	acc
      003ADF 74 80            [12] 2352 	mov	a,#0x80
      003AE1 C0 E0            [24] 2353 	push	acc
      003AE3 12 4B 63         [24] 2354 	lcall	_printf
      003AE6 E5 81            [12] 2355 	mov	a,sp
      003AE8 24 FA            [12] 2356 	add	a,#0xfa
      003AEA F5 81            [12] 2357 	mov	sp,a
                                   2358 ;	syntax.c:342: printf("\n\r+--------------------------------------------------+\n\r");
      003AEC 74 17            [12] 2359 	mov	a,#___str_2
      003AEE C0 E0            [24] 2360 	push	acc
      003AF0 74 56            [12] 2361 	mov	a,#(___str_2 >> 8)
      003AF2 C0 E0            [24] 2362 	push	acc
      003AF4 74 80            [12] 2363 	mov	a,#0x80
      003AF6 C0 E0            [24] 2364 	push	acc
      003AF8 12 4B 63         [24] 2365 	lcall	_printf
      003AFB 15 81            [12] 2366 	dec	sp
      003AFD 15 81            [12] 2367 	dec	sp
      003AFF 15 81            [12] 2368 	dec	sp
                                   2369 ;	syntax.c:343: recent_commands = 0;
      003B01 90 1A FA         [24] 2370 	mov	dptr,#_recent_commands
      003B04 E4               [12] 2371 	clr	a
      003B05 F0               [24] 2372 	movx	@dptr,a
                                   2373 ;	syntax.c:344: recent_storage = 0;
      003B06 90 1A FB         [24] 2374 	mov	dptr,#_recent_storage
      003B09 F0               [24] 2375 	movx	@dptr,a
                                   2376 ;	syntax.c:345: break;
      003B0A 02 3D 5F         [24] 2377 	ljmp	00133$
                                   2378 ;	syntax.c:347: case '+':               // Create new buffer
      003B0D                       2379 00117$:
                                   2380 ;	syntax.c:348: printf("\n\r+----------------BUFFER CREATION------------------+");
      003B0D 74 84            [12] 2381 	mov	a,#___str_34
      003B0F C0 E0            [24] 2382 	push	acc
      003B11 74 5B            [12] 2383 	mov	a,#(___str_34 >> 8)
      003B13 C0 E0            [24] 2384 	push	acc
      003B15 74 80            [12] 2385 	mov	a,#0x80
      003B17 C0 E0            [24] 2386 	push	acc
      003B19 12 4B 63         [24] 2387 	lcall	_printf
      003B1C 15 81            [12] 2388 	dec	sp
      003B1E 15 81            [12] 2389 	dec	sp
      003B20 15 81            [12] 2390 	dec	sp
                                   2391 ;	syntax.c:349: temp_value = get_number("\n\r| Enter buffer size (50-500): ");
      003B22 90 5B BA         [24] 2392 	mov	dptr,#___str_35
      003B25 75 F0 80         [24] 2393 	mov	b, #0x80
      003B28 12 33 DE         [24] 2394 	lcall	_get_number
      003B2B AE 82            [24] 2395 	mov	r6, dpl
      003B2D AF 83            [24] 2396 	mov	r7, dph
                                   2397 ;	syntax.c:350: if(temp_value < 50 || temp_value > 500)
      003B2F C3               [12] 2398 	clr	c
      003B30 EE               [12] 2399 	mov	a,r6
      003B31 94 32            [12] 2400 	subb	a,#0x32
      003B33 EF               [12] 2401 	mov	a,r7
      003B34 64 80            [12] 2402 	xrl	a,#0x80
      003B36 94 80            [12] 2403 	subb	a,#0x80
      003B38 40 0E            [24] 2404 	jc	00121$
      003B3A 74 F4            [12] 2405 	mov	a,#0xf4
      003B3C 9E               [12] 2406 	subb	a,r6
      003B3D 74 81            [12] 2407 	mov	a,#(0x01 ^ 0x80)
      003B3F 8F F0            [24] 2408 	mov	b,r7
      003B41 63 F0 80         [24] 2409 	xrl	b,#0x80
      003B44 95 F0            [12] 2410 	subb	a,b
      003B46 50 19            [24] 2411 	jnc	00122$
      003B48                       2412 00121$:
                                   2413 ;	syntax.c:352: printf("\n\r ERROR : Invalid request\n\r"); 
      003B48 74 DB            [12] 2414 	mov	a,#___str_36
      003B4A C0 E0            [24] 2415 	push	acc
      003B4C 74 5B            [12] 2416 	mov	a,#(___str_36 >> 8)
      003B4E C0 E0            [24] 2417 	push	acc
      003B50 74 80            [12] 2418 	mov	a,#0x80
      003B52 C0 E0            [24] 2419 	push	acc
      003B54 12 4B 63         [24] 2420 	lcall	_printf
      003B57 15 81            [12] 2421 	dec	sp
      003B59 15 81            [12] 2422 	dec	sp
      003B5B 15 81            [12] 2423 	dec	sp
                                   2424 ;	syntax.c:353: return -1;
      003B5D 90 FF FF         [24] 2425 	mov	dptr,#0xffff
      003B60 22               [24] 2426 	ret
      003B61                       2427 00122$:
                                   2428 ;	syntax.c:357: printf("\n\r| Requested Size: %-32d |", temp_value);
      003B61 C0 07            [24] 2429 	push	ar7
      003B63 C0 06            [24] 2430 	push	ar6
      003B65 C0 06            [24] 2431 	push	ar6
      003B67 C0 07            [24] 2432 	push	ar7
      003B69 74 F8            [12] 2433 	mov	a,#___str_37
      003B6B C0 E0            [24] 2434 	push	acc
      003B6D 74 5B            [12] 2435 	mov	a,#(___str_37 >> 8)
      003B6F C0 E0            [24] 2436 	push	acc
      003B71 74 80            [12] 2437 	mov	a,#0x80
      003B73 C0 E0            [24] 2438 	push	acc
      003B75 12 4B 63         [24] 2439 	lcall	_printf
      003B78 E5 81            [12] 2440 	mov	a,sp
      003B7A 24 FB            [12] 2441 	add	a,#0xfb
      003B7C F5 81            [12] 2442 	mov	sp,a
      003B7E D0 06            [24] 2443 	pop	ar6
      003B80 D0 07            [24] 2444 	pop	ar7
                                   2445 ;	syntax.c:359: pointer = (__xdata uint8_t *) malloc(temp_value);
      003B82 8E 82            [24] 2446 	mov	dpl, r6
      003B84 8F 83            [24] 2447 	mov	dph, r7
      003B86 C0 07            [24] 2448 	push	ar7
      003B88 C0 06            [24] 2449 	push	ar6
      003B8A 12 47 7A         [24] 2450 	lcall	_malloc
      003B8D AC 82            [24] 2451 	mov	r4, dpl
      003B8F AD 83            [24] 2452 	mov	r5, dph
      003B91 D0 06            [24] 2453 	pop	ar6
      003B93 D0 07            [24] 2454 	pop	ar7
                                   2455 ;	syntax.c:360: if (pointer == NULL){
      003B95 EC               [12] 2456 	mov	a,r4
      003B96 4D               [12] 2457 	orl	a,r5
      003B97 70 3C            [24] 2458 	jnz	00119$
                                   2459 ;	syntax.c:361: printf("\n\r| ERROR: Memory allocation failed                  |");
      003B99 C0 07            [24] 2460 	push	ar7
      003B9B C0 06            [24] 2461 	push	ar6
      003B9D C0 05            [24] 2462 	push	ar5
      003B9F C0 04            [24] 2463 	push	ar4
      003BA1 74 14            [12] 2464 	mov	a,#___str_38
      003BA3 C0 E0            [24] 2465 	push	acc
      003BA5 74 5C            [12] 2466 	mov	a,#(___str_38 >> 8)
      003BA7 C0 E0            [24] 2467 	push	acc
      003BA9 74 80            [12] 2468 	mov	a,#0x80
      003BAB C0 E0            [24] 2469 	push	acc
      003BAD 12 4B 63         [24] 2470 	lcall	_printf
      003BB0 15 81            [12] 2471 	dec	sp
      003BB2 15 81            [12] 2472 	dec	sp
      003BB4 15 81            [12] 2473 	dec	sp
                                   2474 ;	syntax.c:362: printf("\n\r| Try smaller size with '+' command                |");
      003BB6 74 4B            [12] 2475 	mov	a,#___str_39
      003BB8 C0 E0            [24] 2476 	push	acc
      003BBA 74 5C            [12] 2477 	mov	a,#(___str_39 >> 8)
      003BBC C0 E0            [24] 2478 	push	acc
      003BBE 74 80            [12] 2479 	mov	a,#0x80
      003BC0 C0 E0            [24] 2480 	push	acc
      003BC2 12 4B 63         [24] 2481 	lcall	_printf
      003BC5 15 81            [12] 2482 	dec	sp
      003BC7 15 81            [12] 2483 	dec	sp
      003BC9 15 81            [12] 2484 	dec	sp
      003BCB D0 04            [24] 2485 	pop	ar4
      003BCD D0 05            [24] 2486 	pop	ar5
      003BCF D0 06            [24] 2487 	pop	ar6
      003BD1 D0 07            [24] 2488 	pop	ar7
      003BD3 80 25            [24] 2489 	sjmp	00120$
      003BD5                       2490 00119$:
                                   2491 ;	syntax.c:364: printf("\n\r| SUCCESS: Buffer created successfully            |");
      003BD5 C0 07            [24] 2492 	push	ar7
      003BD7 C0 06            [24] 2493 	push	ar6
      003BD9 C0 05            [24] 2494 	push	ar5
      003BDB C0 04            [24] 2495 	push	ar4
      003BDD 74 82            [12] 2496 	mov	a,#___str_40
      003BDF C0 E0            [24] 2497 	push	acc
      003BE1 74 5C            [12] 2498 	mov	a,#(___str_40 >> 8)
      003BE3 C0 E0            [24] 2499 	push	acc
      003BE5 74 80            [12] 2500 	mov	a,#0x80
      003BE7 C0 E0            [24] 2501 	push	acc
      003BE9 12 4B 63         [24] 2502 	lcall	_printf
      003BEC 15 81            [12] 2503 	dec	sp
      003BEE 15 81            [12] 2504 	dec	sp
      003BF0 15 81            [12] 2505 	dec	sp
      003BF2 D0 04            [24] 2506 	pop	ar4
      003BF4 D0 05            [24] 2507 	pop	ar5
      003BF6 D0 06            [24] 2508 	pop	ar6
      003BF8 D0 07            [24] 2509 	pop	ar7
      003BFA                       2510 00120$:
                                   2511 ;	syntax.c:366: printf("\n\r+--------------------------------------------------+\n\r");
      003BFA C0 07            [24] 2512 	push	ar7
      003BFC C0 06            [24] 2513 	push	ar6
      003BFE C0 05            [24] 2514 	push	ar5
      003C00 C0 04            [24] 2515 	push	ar4
      003C02 74 17            [12] 2516 	mov	a,#___str_2
      003C04 C0 E0            [24] 2517 	push	acc
      003C06 74 56            [12] 2518 	mov	a,#(___str_2 >> 8)
      003C08 C0 E0            [24] 2519 	push	acc
      003C0A 74 80            [12] 2520 	mov	a,#0x80
      003C0C C0 E0            [24] 2521 	push	acc
      003C0E 12 4B 63         [24] 2522 	lcall	_printf
      003C11 15 81            [12] 2523 	dec	sp
      003C13 15 81            [12] 2524 	dec	sp
      003C15 15 81            [12] 2525 	dec	sp
      003C17 D0 04            [24] 2526 	pop	ar4
      003C19 D0 05            [24] 2527 	pop	ar5
      003C1B D0 06            [24] 2528 	pop	ar6
      003C1D D0 07            [24] 2529 	pop	ar7
                                   2530 ;	syntax.c:368: node_t node = {index_of_buffers, pointer, temp_value};
      003C1F 90 1A F7         [24] 2531 	mov	dptr,#_index_of_buffers
      003C22 E0               [24] 2532 	movx	a,@dptr
      003C23 90 06 79         [24] 2533 	mov	dptr,#_get_command_node_30003_120
      003C26 F0               [24] 2534 	movx	@dptr,a
      003C27 7B 00            [12] 2535 	mov	r3,#0x00
      003C29 90 06 7A         [24] 2536 	mov	dptr,#(_get_command_node_30003_120 + 0x0001)
      003C2C EC               [12] 2537 	mov	a,r4
      003C2D F0               [24] 2538 	movx	@dptr,a
      003C2E ED               [12] 2539 	mov	a,r5
      003C2F A3               [24] 2540 	inc	dptr
      003C30 F0               [24] 2541 	movx	@dptr,a
      003C31 EB               [12] 2542 	mov	a,r3
      003C32 A3               [24] 2543 	inc	dptr
      003C33 F0               [24] 2544 	movx	@dptr,a
      003C34 90 06 7D         [24] 2545 	mov	dptr,#(_get_command_node_30003_120 + 0x0004)
      003C37 EE               [12] 2546 	mov	a,r6
      003C38 F0               [24] 2547 	movx	@dptr,a
      003C39 EF               [12] 2548 	mov	a,r7
      003C3A A3               [24] 2549 	inc	dptr
      003C3B F0               [24] 2550 	movx	@dptr,a
                                   2551 ;	syntax.c:369: array_for_nodes[index_of_buffers] = node;
      003C3C 90 1A F7         [24] 2552 	mov	dptr,#_index_of_buffers
      003C3F E0               [24] 2553 	movx	a,@dptr
      003C40 75 F0 06         [24] 2554 	mov	b,#0x06
      003C43 A4               [48] 2555 	mul	ab
      003C44 24 03            [12] 2556 	add	a, #_array_for_nodes
      003C46 FE               [12] 2557 	mov	r6,a
      003C47 74 04            [12] 2558 	mov	a,#(_array_for_nodes >> 8)
      003C49 35 F0            [12] 2559 	addc	a, b
      003C4B FF               [12] 2560 	mov	r7,a
      003C4C 7D 00            [12] 2561 	mov	r5,#0x00
      003C4E 90 1A 96         [24] 2562 	mov	dptr,#___memcpy_PARM_2
      003C51 74 79            [12] 2563 	mov	a,#_get_command_node_30003_120
      003C53 F0               [24] 2564 	movx	@dptr,a
      003C54 74 06            [12] 2565 	mov	a,#(_get_command_node_30003_120 >> 8)
      003C56 A3               [24] 2566 	inc	dptr
      003C57 F0               [24] 2567 	movx	@dptr,a
      003C58 E4               [12] 2568 	clr	a
      003C59 A3               [24] 2569 	inc	dptr
      003C5A F0               [24] 2570 	movx	@dptr,a
      003C5B 90 1A 99         [24] 2571 	mov	dptr,#___memcpy_PARM_3
      003C5E 74 06            [12] 2572 	mov	a,#0x06
      003C60 F0               [24] 2573 	movx	@dptr,a
      003C61 E4               [12] 2574 	clr	a
      003C62 A3               [24] 2575 	inc	dptr
      003C63 F0               [24] 2576 	movx	@dptr,a
      003C64 8E 82            [24] 2577 	mov	dpl, r6
      003C66 8F 83            [24] 2578 	mov	dph, r7
      003C68 8D F0            [24] 2579 	mov	b, r5
      003C6A 12 46 87         [24] 2580 	lcall	___memcpy
                                   2581 ;	syntax.c:370: index_of_buffers++;
      003C6D 90 1A F7         [24] 2582 	mov	dptr,#_index_of_buffers
      003C70 E0               [24] 2583 	movx	a,@dptr
      003C71 24 01            [12] 2584 	add	a, #0x01
      003C73 F0               [24] 2585 	movx	@dptr,a
                                   2586 ;	syntax.c:372: break;
      003C74 02 3D 5F         [24] 2587 	ljmp	00133$
                                   2588 ;	syntax.c:374: case '-':               // Delete buffer
      003C77                       2589 00125$:
                                   2590 ;	syntax.c:375: printf("\n\r+----------------BUFFER DELETION------------------+");
      003C77 74 B8            [12] 2591 	mov	a,#___str_41
      003C79 C0 E0            [24] 2592 	push	acc
      003C7B 74 5C            [12] 2593 	mov	a,#(___str_41 >> 8)
      003C7D C0 E0            [24] 2594 	push	acc
      003C7F 74 80            [12] 2595 	mov	a,#0x80
      003C81 C0 E0            [24] 2596 	push	acc
      003C83 12 4B 63         [24] 2597 	lcall	_printf
      003C86 15 81            [12] 2598 	dec	sp
      003C88 15 81            [12] 2599 	dec	sp
      003C8A 15 81            [12] 2600 	dec	sp
                                   2601 ;	syntax.c:376: temp_value = get_number("\n\r| Enter buffer number (0-102): ");
      003C8C 90 5C EE         [24] 2602 	mov	dptr,#___str_42
      003C8F 75 F0 80         [24] 2603 	mov	b, #0x80
      003C92 12 33 DE         [24] 2604 	lcall	_get_number
      003C95 AE 82            [24] 2605 	mov	r6, dpl
      003C97 AF 83            [24] 2606 	mov	r7, dph
                                   2607 ;	syntax.c:378: if(temp_value <= 0) 
      003C99 C3               [12] 2608 	clr	c
      003C9A E4               [12] 2609 	clr	a
      003C9B 9E               [12] 2610 	subb	a,r6
      003C9C 74 80            [12] 2611 	mov	a,#(0x00 ^ 0x80)
      003C9E 8F F0            [24] 2612 	mov	b,r7
      003CA0 63 F0 80         [24] 2613 	xrl	b,#0x80
      003CA3 95 F0            [12] 2614 	subb	a,b
      003CA5 40 19            [24] 2615 	jc	00127$
                                   2616 ;	syntax.c:380: printf("\n\r| ERROR: Cannot delete Buffer 0                    |");
      003CA7 74 10            [12] 2617 	mov	a,#___str_43
      003CA9 C0 E0            [24] 2618 	push	acc
      003CAB 74 5D            [12] 2619 	mov	a,#(___str_43 >> 8)
      003CAD C0 E0            [24] 2620 	push	acc
      003CAF 74 80            [12] 2621 	mov	a,#0x80
      003CB1 C0 E0            [24] 2622 	push	acc
      003CB3 12 4B 63         [24] 2623 	lcall	_printf
      003CB6 15 81            [12] 2624 	dec	sp
      003CB8 15 81            [12] 2625 	dec	sp
      003CBA 15 81            [12] 2626 	dec	sp
                                   2627 ;	syntax.c:381: return -1;
      003CBC 90 FF FF         [24] 2628 	mov	dptr,#0xffff
      003CBF 22               [24] 2629 	ret
      003CC0                       2630 00127$:
                                   2631 ;	syntax.c:383: if(temp_value < 0 || temp_value > 102) 
      003CC0 C3               [12] 2632 	clr	c
      003CC1 74 66            [12] 2633 	mov	a,#0x66
      003CC3 9E               [12] 2634 	subb	a,r6
      003CC4 74 80            [12] 2635 	mov	a,#(0x00 ^ 0x80)
      003CC6 8F F0            [24] 2636 	mov	b,r7
      003CC8 63 F0 80         [24] 2637 	xrl	b,#0x80
      003CCB 95 F0            [12] 2638 	subb	a,b
      003CCD 50 19            [24] 2639 	jnc	00129$
                                   2640 ;	syntax.c:385: printf("\n\r| ERROR: Invalid delete request                  |");
      003CCF 74 47            [12] 2641 	mov	a,#___str_44
      003CD1 C0 E0            [24] 2642 	push	acc
      003CD3 74 5D            [12] 2643 	mov	a,#(___str_44 >> 8)
      003CD5 C0 E0            [24] 2644 	push	acc
      003CD7 74 80            [12] 2645 	mov	a,#0x80
      003CD9 C0 E0            [24] 2646 	push	acc
      003CDB 12 4B 63         [24] 2647 	lcall	_printf
      003CDE 15 81            [12] 2648 	dec	sp
      003CE0 15 81            [12] 2649 	dec	sp
      003CE2 15 81            [12] 2650 	dec	sp
                                   2651 ;	syntax.c:386: return -1;
      003CE4 90 FF FF         [24] 2652 	mov	dptr,#0xffff
      003CE7 22               [24] 2653 	ret
      003CE8                       2654 00129$:
                                   2655 ;	syntax.c:390: array_for_nodes[temp_value].size = 0;
      003CE8 90 1A AA         [24] 2656 	mov	dptr,#__mulint_PARM_2
      003CEB EE               [12] 2657 	mov	a,r6
      003CEC F0               [24] 2658 	movx	@dptr,a
      003CED EF               [12] 2659 	mov	a,r7
      003CEE A3               [24] 2660 	inc	dptr
      003CEF F0               [24] 2661 	movx	@dptr,a
      003CF0 90 00 06         [24] 2662 	mov	dptr,#0x0006
      003CF3 C0 07            [24] 2663 	push	ar7
      003CF5 C0 06            [24] 2664 	push	ar6
      003CF7 12 48 E3         [24] 2665 	lcall	__mulint
      003CFA AC 82            [24] 2666 	mov	r4, dpl
      003CFC AD 83            [24] 2667 	mov	r5, dph
      003CFE EC               [12] 2668 	mov	a,r4
      003CFF 24 03            [12] 2669 	add	a, #_array_for_nodes
      003D01 FC               [12] 2670 	mov	r4,a
      003D02 ED               [12] 2671 	mov	a,r5
      003D03 34 04            [12] 2672 	addc	a, #(_array_for_nodes >> 8)
      003D05 FD               [12] 2673 	mov	r5,a
      003D06 8C 82            [24] 2674 	mov	dpl,r4
      003D08 8D 83            [24] 2675 	mov	dph,r5
      003D0A A3               [24] 2676 	inc	dptr
      003D0B A3               [24] 2677 	inc	dptr
      003D0C A3               [24] 2678 	inc	dptr
      003D0D A3               [24] 2679 	inc	dptr
      003D0E E4               [12] 2680 	clr	a
      003D0F F0               [24] 2681 	movx	@dptr,a
      003D10 A3               [24] 2682 	inc	dptr
      003D11 F0               [24] 2683 	movx	@dptr,a
                                   2684 ;	syntax.c:391: free(array_for_nodes[temp_value].data_pointer);
      003D12 8C 82            [24] 2685 	mov	dpl,r4
      003D14 8D 83            [24] 2686 	mov	dph,r5
      003D16 A3               [24] 2687 	inc	dptr
      003D17 E0               [24] 2688 	movx	a,@dptr
      003D18 FB               [12] 2689 	mov	r3,a
      003D19 A3               [24] 2690 	inc	dptr
      003D1A E0               [24] 2691 	movx	a,@dptr
      003D1B FC               [12] 2692 	mov	r4,a
      003D1C A3               [24] 2693 	inc	dptr
      003D1D E0               [24] 2694 	movx	a,@dptr
      003D1E FD               [12] 2695 	mov	r5,a
      003D1F 8B 82            [24] 2696 	mov	dpl, r3
      003D21 8C 83            [24] 2697 	mov	dph, r4
      003D23 8D F0            [24] 2698 	mov	b, r5
      003D25 12 45 30         [24] 2699 	lcall	_free
      003D28 D0 06            [24] 2700 	pop	ar6
      003D2A D0 07            [24] 2701 	pop	ar7
                                   2702 ;	syntax.c:392: printf("\n\r| SUCCESS: Buffer %-2d deleted                     |", temp_value);
      003D2C C0 06            [24] 2703 	push	ar6
      003D2E C0 07            [24] 2704 	push	ar7
      003D30 74 7C            [12] 2705 	mov	a,#___str_45
      003D32 C0 E0            [24] 2706 	push	acc
      003D34 74 5D            [12] 2707 	mov	a,#(___str_45 >> 8)
      003D36 C0 E0            [24] 2708 	push	acc
      003D38 74 80            [12] 2709 	mov	a,#0x80
      003D3A C0 E0            [24] 2710 	push	acc
      003D3C 12 4B 63         [24] 2711 	lcall	_printf
      003D3F E5 81            [12] 2712 	mov	a,sp
      003D41 24 FB            [12] 2713 	add	a,#0xfb
      003D43 F5 81            [12] 2714 	mov	sp,a
                                   2715 ;	syntax.c:394: printf("\n\r+--------------------------------------------------+\n\r");
      003D45 74 17            [12] 2716 	mov	a,#___str_2
      003D47 C0 E0            [24] 2717 	push	acc
      003D49 74 56            [12] 2718 	mov	a,#(___str_2 >> 8)
      003D4B C0 E0            [24] 2719 	push	acc
      003D4D 74 80            [12] 2720 	mov	a,#0x80
      003D4F C0 E0            [24] 2721 	push	acc
      003D51 12 4B 63         [24] 2722 	lcall	_printf
      003D54 15 81            [12] 2723 	dec	sp
      003D56 15 81            [12] 2724 	dec	sp
      003D58 15 81            [12] 2725 	dec	sp
                                   2726 ;	syntax.c:395: break;
                                   2727 ;	syntax.c:397: case '=':               // Display Buffer 0
      003D5A 80 03            [24] 2728 	sjmp	00133$
      003D5C                       2729 00132$:
                                   2730 ;	syntax.c:398: buffer0_dump();
      003D5C 12 3D 63         [24] 2731 	lcall	_buffer0_dump
                                   2732 ;	syntax.c:400: }
      003D5F                       2733 00133$:
                                   2734 ;	syntax.c:401: return 0;
      003D5F 90 00 00         [24] 2735 	mov	dptr,#0x0000
                                   2736 ;	syntax.c:402: }
      003D62 22               [24] 2737 	ret
                                   2738 ;------------------------------------------------------------
                                   2739 ;Allocation info for local variables in function 'buffer0_dump'
                                   2740 ;------------------------------------------------------------
                                   2741 ;sloc0                     Allocated with name '_buffer0_dump_sloc0_1_0'
                                   2742 ;sloc1                     Allocated with name '_buffer0_dump_sloc1_1_0'
                                   2743 ;sloc2                     Allocated with name '_buffer0_dump_sloc2_1_0'
                                   2744 ;rd_ptr                    Allocated with name '_buffer0_dump_rd_ptr_10001_127'
                                   2745 ;remaining_bytes           Allocated with name '_buffer0_dump_remaining_bytes_10001_127'
                                   2746 ;offset                    Allocated with name '_buffer0_dump_offset_20001_128'
                                   2747 ;i                         Allocated with name '_buffer0_dump_i_40001_130'
                                   2748 ;i                         Allocated with name '_buffer0_dump_i_40001_132'
                                   2749 ;------------------------------------------------------------
                                   2750 ;	syntax.c:410: void buffer0_dump(void) {
                                   2751 ;	-----------------------------------------
                                   2752 ;	 function buffer0_dump
                                   2753 ;	-----------------------------------------
      003D63                       2754 _buffer0_dump:
                                   2755 ;	syntax.c:411: printf("\n\r+---------------BUFFER 0 CONTENTS-----------------+");
      003D63 74 B3            [12] 2756 	mov	a,#___str_46
      003D65 C0 E0            [24] 2757 	push	acc
      003D67 74 5D            [12] 2758 	mov	a,#(___str_46 >> 8)
      003D69 C0 E0            [24] 2759 	push	acc
      003D6B 74 80            [12] 2760 	mov	a,#0x80
      003D6D C0 E0            [24] 2761 	push	acc
      003D6F 12 4B 63         [24] 2762 	lcall	_printf
      003D72 15 81            [12] 2763 	dec	sp
      003D74 15 81            [12] 2764 	dec	sp
      003D76 15 81            [12] 2765 	dec	sp
                                   2766 ;	syntax.c:412: printf("\n\r| Address    | Data                               |");
      003D78 74 E9            [12] 2767 	mov	a,#___str_47
      003D7A C0 E0            [24] 2768 	push	acc
      003D7C 74 5D            [12] 2769 	mov	a,#(___str_47 >> 8)
      003D7E C0 E0            [24] 2770 	push	acc
      003D80 74 80            [12] 2771 	mov	a,#0x80
      003D82 C0 E0            [24] 2772 	push	acc
      003D84 12 4B 63         [24] 2773 	lcall	_printf
      003D87 15 81            [12] 2774 	dec	sp
      003D89 15 81            [12] 2775 	dec	sp
      003D8B 15 81            [12] 2776 	dec	sp
                                   2777 ;	syntax.c:413: printf("\n\r|------------|---------------------------------------|");
      003D8D 74 1F            [12] 2778 	mov	a,#___str_48
      003D8F C0 E0            [24] 2779 	push	acc
      003D91 74 5E            [12] 2780 	mov	a,#(___str_48 >> 8)
      003D93 C0 E0            [24] 2781 	push	acc
      003D95 74 80            [12] 2782 	mov	a,#0x80
      003D97 C0 E0            [24] 2783 	push	acc
      003D99 12 4B 63         [24] 2784 	lcall	_printf
      003D9C 15 81            [12] 2785 	dec	sp
      003D9E 15 81            [12] 2786 	dec	sp
      003DA0 15 81            [12] 2787 	dec	sp
                                   2788 ;	syntax.c:414: printf("\n\r");
      003DA2 74 58            [12] 2789 	mov	a,#___str_49
      003DA4 C0 E0            [24] 2790 	push	acc
      003DA6 74 5E            [12] 2791 	mov	a,#(___str_49 >> 8)
      003DA8 C0 E0            [24] 2792 	push	acc
      003DAA 74 80            [12] 2793 	mov	a,#0x80
      003DAC C0 E0            [24] 2794 	push	acc
      003DAE 12 4B 63         [24] 2795 	lcall	_printf
      003DB1 15 81            [12] 2796 	dec	sp
      003DB3 15 81            [12] 2797 	dec	sp
      003DB5 15 81            [12] 2798 	dec	sp
                                   2799 ;	syntax.c:416: if(array_for_nodes[0].data_pointer == NULL) 
      003DB7 90 04 04         [24] 2800 	mov	dptr,#(_array_for_nodes + 0x0001)
      003DBA E0               [24] 2801 	movx	a,@dptr
      003DBB FD               [12] 2802 	mov	r5,a
      003DBC A3               [24] 2803 	inc	dptr
      003DBD E0               [24] 2804 	movx	a,@dptr
      003DBE FE               [12] 2805 	mov	r6,a
      003DBF A3               [24] 2806 	inc	dptr
      003DC0 E0               [24] 2807 	movx	a,@dptr
      003DC1 FF               [12] 2808 	mov	r7,a
      003DC2 ED               [12] 2809 	mov	a,r5
      003DC3 4E               [12] 2810 	orl	a,r6
      003DC4 70 16            [24] 2811 	jnz	00102$
                                   2812 ;	syntax.c:417: {printf("BUFFER 0 DOES NOT EXIST\n\r");
      003DC6 74 5B            [12] 2813 	mov	a,#___str_50
      003DC8 C0 E0            [24] 2814 	push	acc
      003DCA 74 5E            [12] 2815 	mov	a,#(___str_50 >> 8)
      003DCC C0 E0            [24] 2816 	push	acc
      003DCE 74 80            [12] 2817 	mov	a,#0x80
      003DD0 C0 E0            [24] 2818 	push	acc
      003DD2 12 4B 63         [24] 2819 	lcall	_printf
      003DD5 15 81            [12] 2820 	dec	sp
      003DD7 15 81            [12] 2821 	dec	sp
      003DD9 15 81            [12] 2822 	dec	sp
                                   2823 ;	syntax.c:418: return;
      003DDB 22               [24] 2824 	ret
      003DDC                       2825 00102$:
                                   2826 ;	syntax.c:421: uint16_t remaining_bytes = array_for_nodes[0].size;
      003DDC 90 04 07         [24] 2827 	mov	dptr,#(_array_for_nodes + 0x0004)
      003DDF E0               [24] 2828 	movx	a,@dptr
      003DE0 FB               [12] 2829 	mov	r3,a
      003DE1 A3               [24] 2830 	inc	dptr
      003DE2 E0               [24] 2831 	movx	a,@dptr
      003DE3 FC               [12] 2832 	mov	r4,a
                                   2833 ;	syntax.c:424: for (uint16_t offset = 0; offset < total_number_of_storage; offset += 16) {
      003DE4 90 06 7F         [24] 2834 	mov	dptr,#_buffer0_dump_offset_20001_128
      003DE7 E4               [12] 2835 	clr	a
      003DE8 F0               [24] 2836 	movx	@dptr,a
      003DE9 A3               [24] 2837 	inc	dptr
      003DEA F0               [24] 2838 	movx	@dptr,a
      003DEB                       2839 00114$:
      003DEB C0 05            [24] 2840 	push	ar5
      003DED C0 06            [24] 2841 	push	ar6
      003DEF C0 07            [24] 2842 	push	ar7
      003DF1 90 06 7F         [24] 2843 	mov	dptr,#_buffer0_dump_offset_20001_128
      003DF4 E0               [24] 2844 	movx	a,@dptr
      003DF5 F9               [12] 2845 	mov	r1,a
      003DF6 A3               [24] 2846 	inc	dptr
      003DF7 E0               [24] 2847 	movx	a,@dptr
      003DF8 FA               [12] 2848 	mov	r2,a
      003DF9 90 1A F9         [24] 2849 	mov	dptr,#_total_number_of_storage
      003DFC E0               [24] 2850 	movx	a,@dptr
      003DFD F8               [12] 2851 	mov	r0,a
      003DFE 7F 00            [12] 2852 	mov	r7,#0x00
      003E00 C3               [12] 2853 	clr	c
      003E01 E9               [12] 2854 	mov	a,r1
      003E02 98               [12] 2855 	subb	a,r0
      003E03 EA               [12] 2856 	mov	a,r2
      003E04 9F               [12] 2857 	subb	a,r7
      003E05 D0 07            [24] 2858 	pop	ar7
      003E07 D0 06            [24] 2859 	pop	ar6
      003E09 D0 05            [24] 2860 	pop	ar5
      003E0B 40 03            [24] 2861 	jc	00170$
      003E0D 02 3F 7B         [24] 2862 	ljmp	00105$
      003E10                       2863 00170$:
                                   2864 ;	syntax.c:426: printf("\n\r| %04X      |", (uint16_t)(uintptr_t)rd_ptr);
      003E10 C0 03            [24] 2865 	push	ar3
      003E12 C0 04            [24] 2866 	push	ar4
      003E14 8D 00            [24] 2867 	mov	ar0,r5
      003E16 8E 03            [24] 2868 	mov	ar3,r6
      003E18 8F 04            [24] 2869 	mov	ar4,r7
      003E1A C0 07            [24] 2870 	push	ar7
      003E1C C0 06            [24] 2871 	push	ar6
      003E1E C0 05            [24] 2872 	push	ar5
      003E20 C0 04            [24] 2873 	push	ar4
      003E22 C0 03            [24] 2874 	push	ar3
      003E24 C0 02            [24] 2875 	push	ar2
      003E26 C0 01            [24] 2876 	push	ar1
      003E28 C0 00            [24] 2877 	push	ar0
      003E2A C0 03            [24] 2878 	push	ar3
      003E2C 74 75            [12] 2879 	mov	a,#___str_51
      003E2E C0 E0            [24] 2880 	push	acc
      003E30 74 5E            [12] 2881 	mov	a,#(___str_51 >> 8)
      003E32 C0 E0            [24] 2882 	push	acc
      003E34 74 80            [12] 2883 	mov	a,#0x80
      003E36 C0 E0            [24] 2884 	push	acc
      003E38 12 4B 63         [24] 2885 	lcall	_printf
      003E3B E5 81            [12] 2886 	mov	a,sp
      003E3D 24 FB            [12] 2887 	add	a,#0xfb
      003E3F F5 81            [12] 2888 	mov	sp,a
      003E41 D0 01            [24] 2889 	pop	ar1
      003E43 D0 02            [24] 2890 	pop	ar2
      003E45 D0 03            [24] 2891 	pop	ar3
      003E47 D0 04            [24] 2892 	pop	ar4
      003E49 D0 05            [24] 2893 	pop	ar5
      003E4B D0 06            [24] 2894 	pop	ar6
      003E4D D0 07            [24] 2895 	pop	ar7
                                   2896 ;	syntax.c:429: for (int i = 0; i < 16 && (offset + i) < remaining_bytes; i++) {
      003E4F 89 13            [24] 2897 	mov	_buffer0_dump_sloc0_1_0,r1
      003E51 8A 14            [24] 2898 	mov	(_buffer0_dump_sloc0_1_0 + 1),r2
      003E53 8D 15            [24] 2899 	mov	_buffer0_dump_sloc1_1_0,r5
      003E55 8E 16            [24] 2900 	mov	(_buffer0_dump_sloc1_1_0 + 1),r6
      003E57 8F 17            [24] 2901 	mov	(_buffer0_dump_sloc1_1_0 + 2),r7
      003E59 E4               [12] 2902 	clr	a
      003E5A F5 18            [12] 2903 	mov	_buffer0_dump_sloc2_1_0,a
      003E5C F5 19            [12] 2904 	mov	(_buffer0_dump_sloc2_1_0 + 1),a
                                   2905 ;	syntax.c:442: printf("\n\r+--------------------------------------------------+\n\r");
      003E5E D0 04            [24] 2906 	pop	ar4
      003E60 D0 03            [24] 2907 	pop	ar3
                                   2908 ;	syntax.c:429: for (int i = 0; i < 16 && (offset + i) < remaining_bytes; i++) {
      003E62                       2909 00108$:
      003E62 C3               [12] 2910 	clr	c
      003E63 E5 18            [12] 2911 	mov	a,_buffer0_dump_sloc2_1_0
      003E65 94 10            [12] 2912 	subb	a,#0x10
      003E67 E5 19            [12] 2913 	mov	a,(_buffer0_dump_sloc2_1_0 + 1)
      003E69 64 80            [12] 2914 	xrl	a,#0x80
      003E6B 94 80            [12] 2915 	subb	a,#0x80
      003E6D 50 70            [24] 2916 	jnc	00103$
      003E6F C0 05            [24] 2917 	push	ar5
      003E71 C0 06            [24] 2918 	push	ar6
      003E73 C0 07            [24] 2919 	push	ar7
      003E75 A9 13            [24] 2920 	mov	r1,_buffer0_dump_sloc0_1_0
      003E77 AA 14            [24] 2921 	mov	r2,(_buffer0_dump_sloc0_1_0 + 1)
      003E79 A8 18            [24] 2922 	mov	r0,_buffer0_dump_sloc2_1_0
      003E7B AF 19            [24] 2923 	mov	r7,(_buffer0_dump_sloc2_1_0 + 1)
      003E7D E8               [12] 2924 	mov	a,r0
      003E7E 29               [12] 2925 	add	a, r1
      003E7F F9               [12] 2926 	mov	r1,a
      003E80 EF               [12] 2927 	mov	a,r7
      003E81 3A               [12] 2928 	addc	a, r2
      003E82 FA               [12] 2929 	mov	r2,a
      003E83 C3               [12] 2930 	clr	c
      003E84 E9               [12] 2931 	mov	a,r1
      003E85 9B               [12] 2932 	subb	a,r3
      003E86 EA               [12] 2933 	mov	a,r2
      003E87 9C               [12] 2934 	subb	a,r4
      003E88 D0 07            [24] 2935 	pop	ar7
      003E8A D0 06            [24] 2936 	pop	ar6
      003E8C D0 05            [24] 2937 	pop	ar5
      003E8E 50 4F            [24] 2938 	jnc	00103$
                                   2939 ;	syntax.c:430: printf(" %02X", rd_ptr[i]);
      003E90 E5 18            [12] 2940 	mov	a,_buffer0_dump_sloc2_1_0
      003E92 25 15            [12] 2941 	add	a, _buffer0_dump_sloc1_1_0
      003E94 F8               [12] 2942 	mov	r0,a
      003E95 E5 19            [12] 2943 	mov	a,(_buffer0_dump_sloc2_1_0 + 1)
      003E97 35 16            [12] 2944 	addc	a, (_buffer0_dump_sloc1_1_0 + 1)
      003E99 F9               [12] 2945 	mov	r1,a
      003E9A AA 17            [24] 2946 	mov	r2,(_buffer0_dump_sloc1_1_0 + 2)
      003E9C 88 82            [24] 2947 	mov	dpl,r0
      003E9E 89 83            [24] 2948 	mov	dph,r1
      003EA0 8A F0            [24] 2949 	mov	b,r2
      003EA2 12 55 85         [24] 2950 	lcall	__gptrget
      003EA5 F8               [12] 2951 	mov	r0,a
      003EA6 7A 00            [12] 2952 	mov	r2,#0x00
      003EA8 C0 07            [24] 2953 	push	ar7
      003EAA C0 06            [24] 2954 	push	ar6
      003EAC C0 05            [24] 2955 	push	ar5
      003EAE C0 04            [24] 2956 	push	ar4
      003EB0 C0 03            [24] 2957 	push	ar3
      003EB2 C0 00            [24] 2958 	push	ar0
      003EB4 C0 02            [24] 2959 	push	ar2
      003EB6 74 85            [12] 2960 	mov	a,#___str_52
      003EB8 C0 E0            [24] 2961 	push	acc
      003EBA 74 5E            [12] 2962 	mov	a,#(___str_52 >> 8)
      003EBC C0 E0            [24] 2963 	push	acc
      003EBE 74 80            [12] 2964 	mov	a,#0x80
      003EC0 C0 E0            [24] 2965 	push	acc
      003EC2 12 4B 63         [24] 2966 	lcall	_printf
      003EC5 E5 81            [12] 2967 	mov	a,sp
      003EC7 24 FB            [12] 2968 	add	a,#0xfb
      003EC9 F5 81            [12] 2969 	mov	sp,a
      003ECB D0 03            [24] 2970 	pop	ar3
      003ECD D0 04            [24] 2971 	pop	ar4
      003ECF D0 05            [24] 2972 	pop	ar5
      003ED1 D0 06            [24] 2973 	pop	ar6
      003ED3 D0 07            [24] 2974 	pop	ar7
                                   2975 ;	syntax.c:429: for (int i = 0; i < 16 && (offset + i) < remaining_bytes; i++) {
      003ED5 05 18            [12] 2976 	inc	_buffer0_dump_sloc2_1_0
      003ED7 E4               [12] 2977 	clr	a
      003ED8 B5 18 87         [24] 2978 	cjne	a,_buffer0_dump_sloc2_1_0,00108$
      003EDB 05 19            [12] 2979 	inc	(_buffer0_dump_sloc2_1_0 + 1)
      003EDD 80 83            [24] 2980 	sjmp	00108$
      003EDF                       2981 00103$:
                                   2982 ;	syntax.c:434: for (int i = remaining_bytes - offset; i < 16; i++) {
      003EDF 90 06 7F         [24] 2983 	mov	dptr,#_buffer0_dump_offset_20001_128
      003EE2 E0               [24] 2984 	movx	a,@dptr
      003EE3 F9               [12] 2985 	mov	r1,a
      003EE4 A3               [24] 2986 	inc	dptr
      003EE5 E0               [24] 2987 	movx	a,@dptr
      003EE6 FA               [12] 2988 	mov	r2,a
      003EE7 EB               [12] 2989 	mov	a,r3
      003EE8 C3               [12] 2990 	clr	c
      003EE9 99               [12] 2991 	subb	a,r1
      003EEA F9               [12] 2992 	mov	r1,a
      003EEB EC               [12] 2993 	mov	a,r4
      003EEC 9A               [12] 2994 	subb	a,r2
      003EED FA               [12] 2995 	mov	r2,a
      003EEE                       2996 00111$:
      003EEE C3               [12] 2997 	clr	c
      003EEF E9               [12] 2998 	mov	a,r1
      003EF0 94 10            [12] 2999 	subb	a,#0x10
      003EF2 EA               [12] 3000 	mov	a,r2
      003EF3 64 80            [12] 3001 	xrl	a,#0x80
      003EF5 94 80            [12] 3002 	subb	a,#0x80
      003EF7 50 38            [24] 3003 	jnc	00104$
                                   3004 ;	syntax.c:435: printf("   ");
      003EF9 C0 07            [24] 3005 	push	ar7
      003EFB C0 06            [24] 3006 	push	ar6
      003EFD C0 05            [24] 3007 	push	ar5
      003EFF C0 04            [24] 3008 	push	ar4
      003F01 C0 03            [24] 3009 	push	ar3
      003F03 C0 02            [24] 3010 	push	ar2
      003F05 C0 01            [24] 3011 	push	ar1
      003F07 74 8B            [12] 3012 	mov	a,#___str_53
      003F09 C0 E0            [24] 3013 	push	acc
      003F0B 74 5E            [12] 3014 	mov	a,#(___str_53 >> 8)
      003F0D C0 E0            [24] 3015 	push	acc
      003F0F 74 80            [12] 3016 	mov	a,#0x80
      003F11 C0 E0            [24] 3017 	push	acc
      003F13 12 4B 63         [24] 3018 	lcall	_printf
      003F16 15 81            [12] 3019 	dec	sp
      003F18 15 81            [12] 3020 	dec	sp
      003F1A 15 81            [12] 3021 	dec	sp
      003F1C D0 01            [24] 3022 	pop	ar1
      003F1E D0 02            [24] 3023 	pop	ar2
      003F20 D0 03            [24] 3024 	pop	ar3
      003F22 D0 04            [24] 3025 	pop	ar4
      003F24 D0 05            [24] 3026 	pop	ar5
      003F26 D0 06            [24] 3027 	pop	ar6
      003F28 D0 07            [24] 3028 	pop	ar7
                                   3029 ;	syntax.c:434: for (int i = remaining_bytes - offset; i < 16; i++) {
      003F2A 09               [12] 3030 	inc	r1
      003F2B B9 00 C0         [24] 3031 	cjne	r1,#0x00,00111$
      003F2E 0A               [12] 3032 	inc	r2
      003F2F 80 BD            [24] 3033 	sjmp	00111$
      003F31                       3034 00104$:
                                   3035 ;	syntax.c:438: printf(" |");
      003F31 C0 07            [24] 3036 	push	ar7
      003F33 C0 06            [24] 3037 	push	ar6
      003F35 C0 05            [24] 3038 	push	ar5
      003F37 C0 04            [24] 3039 	push	ar4
      003F39 C0 03            [24] 3040 	push	ar3
      003F3B 74 8F            [12] 3041 	mov	a,#___str_54
      003F3D C0 E0            [24] 3042 	push	acc
      003F3F 74 5E            [12] 3043 	mov	a,#(___str_54 >> 8)
      003F41 C0 E0            [24] 3044 	push	acc
      003F43 74 80            [12] 3045 	mov	a,#0x80
      003F45 C0 E0            [24] 3046 	push	acc
      003F47 12 4B 63         [24] 3047 	lcall	_printf
      003F4A 15 81            [12] 3048 	dec	sp
      003F4C 15 81            [12] 3049 	dec	sp
      003F4E 15 81            [12] 3050 	dec	sp
      003F50 D0 03            [24] 3051 	pop	ar3
      003F52 D0 04            [24] 3052 	pop	ar4
      003F54 D0 05            [24] 3053 	pop	ar5
      003F56 D0 06            [24] 3054 	pop	ar6
      003F58 D0 07            [24] 3055 	pop	ar7
                                   3056 ;	syntax.c:439: rd_ptr += 16;
      003F5A 74 10            [12] 3057 	mov	a,#0x10
      003F5C 2D               [12] 3058 	add	a, r5
      003F5D FD               [12] 3059 	mov	r5,a
      003F5E E4               [12] 3060 	clr	a
      003F5F 3E               [12] 3061 	addc	a, r6
      003F60 FE               [12] 3062 	mov	r6,a
                                   3063 ;	syntax.c:424: for (uint16_t offset = 0; offset < total_number_of_storage; offset += 16) {
      003F61 90 06 7F         [24] 3064 	mov	dptr,#_buffer0_dump_offset_20001_128
      003F64 E0               [24] 3065 	movx	a,@dptr
      003F65 F9               [12] 3066 	mov	r1,a
      003F66 A3               [24] 3067 	inc	dptr
      003F67 E0               [24] 3068 	movx	a,@dptr
      003F68 FA               [12] 3069 	mov	r2,a
      003F69 74 10            [12] 3070 	mov	a,#0x10
      003F6B 29               [12] 3071 	add	a, r1
      003F6C F9               [12] 3072 	mov	r1,a
      003F6D E4               [12] 3073 	clr	a
      003F6E 3A               [12] 3074 	addc	a, r2
      003F6F FA               [12] 3075 	mov	r2,a
      003F70 90 06 7F         [24] 3076 	mov	dptr,#_buffer0_dump_offset_20001_128
      003F73 E9               [12] 3077 	mov	a,r1
      003F74 F0               [24] 3078 	movx	@dptr,a
      003F75 EA               [12] 3079 	mov	a,r2
      003F76 A3               [24] 3080 	inc	dptr
      003F77 F0               [24] 3081 	movx	@dptr,a
      003F78 02 3D EB         [24] 3082 	ljmp	00114$
      003F7B                       3083 00105$:
                                   3084 ;	syntax.c:442: printf("\n\r+--------------------------------------------------+\n\r");
      003F7B 74 17            [12] 3085 	mov	a,#___str_2
      003F7D C0 E0            [24] 3086 	push	acc
      003F7F 74 56            [12] 3087 	mov	a,#(___str_2 >> 8)
      003F81 C0 E0            [24] 3088 	push	acc
      003F83 74 80            [12] 3089 	mov	a,#0x80
      003F85 C0 E0            [24] 3090 	push	acc
      003F87 12 4B 63         [24] 3091 	lcall	_printf
      003F8A 15 81            [12] 3092 	dec	sp
      003F8C 15 81            [12] 3093 	dec	sp
      003F8E 15 81            [12] 3094 	dec	sp
                                   3095 ;	syntax.c:443: }
      003F90 22               [24] 3096 	ret
                                   3097 ;------------------------------------------------------------
                                   3098 ;Allocation info for local variables in function 'main'
                                   3099 ;------------------------------------------------------------
                                   3100 ;sloc0                     Allocated with name '_main_sloc0_1_0'
                                   3101 ;buffer_size               Allocated with name '_main_buffer_size_10001_136'
                                   3102 ;node1                     Allocated with name '_main_node1_10002_140'
                                   3103 ;node2                     Allocated with name '_main_node2_10003_141'
                                   3104 ;wr                        Allocated with name '_main_wr_10004_142'
                                   3105 ;ch                        Allocated with name '_main_ch_20004_143'
                                   3106 ;cha                       Allocated with name '_main_cha_20005_146'
                                   3107 ;temp_buffer_size          Allocated to registers 
                                   3108 ;index_for_write           Allocated to registers 
                                   3109 ;------------------------------------------------------------
                                   3110 ;	syntax.c:451: void main(void)
                                   3111 ;	-----------------------------------------
                                   3112 ;	 function main
                                   3113 ;	-----------------------------------------
      003F91                       3114 _main:
                                   3115 ;	syntax.c:454: printf("\n\r+==================================================+");
      003F91 74 92            [12] 3116 	mov	a,#___str_55
      003F93 C0 E0            [24] 3117 	push	acc
      003F95 74 5E            [12] 3118 	mov	a,#(___str_55 >> 8)
      003F97 C0 E0            [24] 3119 	push	acc
      003F99 74 80            [12] 3120 	mov	a,#0x80
      003F9B C0 E0            [24] 3121 	push	acc
      003F9D 12 4B 63         [24] 3122 	lcall	_printf
      003FA0 15 81            [12] 3123 	dec	sp
      003FA2 15 81            [12] 3124 	dec	sp
      003FA4 15 81            [12] 3125 	dec	sp
                                   3126 ;	syntax.c:455: printf("\n\r|           BUFFER MANAGEMENT SYSTEM                |");
      003FA6 74 C9            [12] 3127 	mov	a,#___str_56
      003FA8 C0 E0            [24] 3128 	push	acc
      003FAA 74 5E            [12] 3129 	mov	a,#(___str_56 >> 8)
      003FAC C0 E0            [24] 3130 	push	acc
      003FAE 74 80            [12] 3131 	mov	a,#0x80
      003FB0 C0 E0            [24] 3132 	push	acc
      003FB2 12 4B 63         [24] 3133 	lcall	_printf
      003FB5 15 81            [12] 3134 	dec	sp
      003FB7 15 81            [12] 3135 	dec	sp
      003FB9 15 81            [12] 3136 	dec	sp
                                   3137 ;	syntax.c:456: printf("\n\r+==================================================+");
      003FBB 74 92            [12] 3138 	mov	a,#___str_55
      003FBD C0 E0            [24] 3139 	push	acc
      003FBF 74 5E            [12] 3140 	mov	a,#(___str_55 >> 8)
      003FC1 C0 E0            [24] 3141 	push	acc
      003FC3 74 80            [12] 3142 	mov	a,#0x80
      003FC5 C0 E0            [24] 3143 	push	acc
      003FC7 12 4B 63         [24] 3144 	lcall	_printf
      003FCA 15 81            [12] 3145 	dec	sp
      003FCC 15 81            [12] 3146 	dec	sp
      003FCE 15 81            [12] 3147 	dec	sp
                                   3148 ;	syntax.c:460: index_of_buffers = 0;
      003FD0 90 1A F7         [24] 3149 	mov	dptr,#_index_of_buffers
      003FD3 E4               [12] 3150 	clr	a
      003FD4 F0               [24] 3151 	movx	@dptr,a
                                   3152 ;	syntax.c:461: total_number_of_commands = 0;
      003FD5 90 1A F8         [24] 3153 	mov	dptr,#_total_number_of_commands
      003FD8 F0               [24] 3154 	movx	@dptr,a
                                   3155 ;	syntax.c:462: total_number_of_storage = 0;
      003FD9 90 1A F9         [24] 3156 	mov	dptr,#_total_number_of_storage
      003FDC F0               [24] 3157 	movx	@dptr,a
                                   3158 ;	syntax.c:463: recent_commands = 0;
      003FDD 90 1A FA         [24] 3159 	mov	dptr,#_recent_commands
      003FE0 F0               [24] 3160 	movx	@dptr,a
                                   3161 ;	syntax.c:464: recent_storage = 0;
      003FE1 90 1A FB         [24] 3162 	mov	dptr,#_recent_storage
      003FE4 F0               [24] 3163 	movx	@dptr,a
                                   3164 ;	syntax.c:465: recived_bytes = 0;
      003FE5 90 1A FC         [24] 3165 	mov	dptr,#_recived_bytes
      003FE8 F0               [24] 3166 	movx	@dptr,a
                                   3167 ;	syntax.c:468: do{
      003FE9                       3168 00108$:
                                   3169 ;	syntax.c:470: buffer_size = get_buf_value("\n\r| Enter initial buffer size (32-5120): ", upper_default, LOWER_DEFAULT);
      003FE9 90 06 5D         [24] 3170 	mov	dptr,#_get_buf_value_PARM_2
      003FEC E4               [12] 3171 	clr	a
      003FED F0               [24] 3172 	movx	@dptr,a
      003FEE 74 14            [12] 3173 	mov	a,#0x14
      003FF0 A3               [24] 3174 	inc	dptr
      003FF1 F0               [24] 3175 	movx	@dptr,a
      003FF2 90 06 5F         [24] 3176 	mov	dptr,#_get_buf_value_PARM_3
      003FF5 74 20            [12] 3177 	mov	a,#0x20
      003FF7 F0               [24] 3178 	movx	@dptr,a
      003FF8 E4               [12] 3179 	clr	a
      003FF9 A3               [24] 3180 	inc	dptr
      003FFA F0               [24] 3181 	movx	@dptr,a
      003FFB 90 5F 01         [24] 3182 	mov	dptr,#___str_57
      003FFE 75 F0 80         [24] 3183 	mov	b, #0x80
      004001 12 30 E3         [24] 3184 	lcall	_get_buf_value
      004004 AE 82            [24] 3185 	mov	r6, dpl
      004006 AF 83            [24] 3186 	mov	r7, dph
                                   3187 ;	syntax.c:472: if(buffer_size == -1) continue;
      004008 BE FF 06         [24] 3188 	cjne	r6,#0xff,00193$
      00400B BF FF 03         [24] 3189 	cjne	r7,#0xff,00193$
      00400E 02 41 8A         [24] 3190 	ljmp	00109$
      004011                       3191 00193$:
                                   3192 ;	syntax.c:475: pointer1 = (__xdata uint8_t *) malloc(buffer_size);
      004011 8E 82            [24] 3193 	mov	dpl, r6
      004013 8F 83            [24] 3194 	mov	dph, r7
      004015 C0 07            [24] 3195 	push	ar7
      004017 C0 06            [24] 3196 	push	ar6
      004019 12 47 7A         [24] 3197 	lcall	_malloc
      00401C AC 82            [24] 3198 	mov	r4, dpl
      00401E AD 83            [24] 3199 	mov	r5, dph
      004020 D0 06            [24] 3200 	pop	ar6
      004022 D0 07            [24] 3201 	pop	ar7
      004024 90 1B 00         [24] 3202 	mov	dptr,#_pointer1
      004027 EC               [12] 3203 	mov	a,r4
      004028 F0               [24] 3204 	movx	@dptr,a
      004029 ED               [12] 3205 	mov	a,r5
      00402A A3               [24] 3206 	inc	dptr
      00402B F0               [24] 3207 	movx	@dptr,a
                                   3208 ;	syntax.c:476: if (pointer1 == NULL){
      00402C EC               [12] 3209 	mov	a,r4
      00402D 4D               [12] 3210 	orl	a,r5
      00402E 70 4A            [24] 3211 	jnz	00104$
                                   3212 ;	syntax.c:477: printf("\n\r| ERROR: Buffer 1 allocation failed                |");
      004030 C0 07            [24] 3213 	push	ar7
      004032 C0 06            [24] 3214 	push	ar6
      004034 74 2B            [12] 3215 	mov	a,#___str_58
      004036 C0 E0            [24] 3216 	push	acc
      004038 74 5F            [12] 3217 	mov	a,#(___str_58 >> 8)
      00403A C0 E0            [24] 3218 	push	acc
      00403C 74 80            [12] 3219 	mov	a,#0x80
      00403E C0 E0            [24] 3220 	push	acc
      004040 12 4B 63         [24] 3221 	lcall	_printf
      004043 15 81            [12] 3222 	dec	sp
      004045 15 81            [12] 3223 	dec	sp
      004047 15 81            [12] 3224 	dec	sp
                                   3225 ;	syntax.c:478: printf("\n\r| Try smaller size                                |");
      004049 74 62            [12] 3226 	mov	a,#___str_59
      00404B C0 E0            [24] 3227 	push	acc
      00404D 74 5F            [12] 3228 	mov	a,#(___str_59 >> 8)
      00404F C0 E0            [24] 3229 	push	acc
      004051 74 80            [12] 3230 	mov	a,#0x80
      004053 C0 E0            [24] 3231 	push	acc
      004055 12 4B 63         [24] 3232 	lcall	_printf
      004058 15 81            [12] 3233 	dec	sp
      00405A 15 81            [12] 3234 	dec	sp
      00405C 15 81            [12] 3235 	dec	sp
                                   3236 ;	syntax.c:479: printf("\n\r+------------------------------------------------+\n\r");
      00405E 74 98            [12] 3237 	mov	a,#___str_60
      004060 C0 E0            [24] 3238 	push	acc
      004062 74 5F            [12] 3239 	mov	a,#(___str_60 >> 8)
      004064 C0 E0            [24] 3240 	push	acc
      004066 74 80            [12] 3241 	mov	a,#0x80
      004068 C0 E0            [24] 3242 	push	acc
      00406A 12 4B 63         [24] 3243 	lcall	_printf
      00406D 15 81            [12] 3244 	dec	sp
      00406F 15 81            [12] 3245 	dec	sp
      004071 15 81            [12] 3246 	dec	sp
      004073 D0 06            [24] 3247 	pop	ar6
      004075 D0 07            [24] 3248 	pop	ar7
                                   3249 ;	syntax.c:480: continue;
      004077 02 41 8A         [24] 3250 	ljmp	00109$
      00407A                       3251 00104$:
                                   3252 ;	syntax.c:484: pointer2 = (__xdata uint8_t *) malloc(buffer_size);
      00407A 8E 82            [24] 3253 	mov	dpl, r6
      00407C 8F 83            [24] 3254 	mov	dph, r7
      00407E C0 07            [24] 3255 	push	ar7
      004080 C0 06            [24] 3256 	push	ar6
      004082 12 47 7A         [24] 3257 	lcall	_malloc
      004085 AC 82            [24] 3258 	mov	r4, dpl
      004087 AD 83            [24] 3259 	mov	r5, dph
      004089 D0 06            [24] 3260 	pop	ar6
      00408B D0 07            [24] 3261 	pop	ar7
      00408D 90 1B 02         [24] 3262 	mov	dptr,#_pointer2
      004090 EC               [12] 3263 	mov	a,r4
      004091 F0               [24] 3264 	movx	@dptr,a
      004092 ED               [12] 3265 	mov	a,r5
      004093 A3               [24] 3266 	inc	dptr
      004094 F0               [24] 3267 	movx	@dptr,a
                                   3268 ;	syntax.c:485: if (pointer2 == NULL){
      004095 EC               [12] 3269 	mov	a,r4
      004096 4D               [12] 3270 	orl	a,r5
      004097 70 5D            [24] 3271 	jnz	00106$
                                   3272 ;	syntax.c:486: free(pointer1);
      004099 90 1B 00         [24] 3273 	mov	dptr,#_pointer1
      00409C E0               [24] 3274 	movx	a,@dptr
      00409D FC               [12] 3275 	mov	r4,a
      00409E A3               [24] 3276 	inc	dptr
      00409F E0               [24] 3277 	movx	a,@dptr
      0040A0 FD               [12] 3278 	mov	r5,a
      0040A1 7B 00            [12] 3279 	mov	r3,#0x00
      0040A3 8C 82            [24] 3280 	mov	dpl, r4
      0040A5 8D 83            [24] 3281 	mov	dph, r5
      0040A7 8B F0            [24] 3282 	mov	b, r3
      0040A9 C0 07            [24] 3283 	push	ar7
      0040AB C0 06            [24] 3284 	push	ar6
      0040AD 12 45 30         [24] 3285 	lcall	_free
                                   3286 ;	syntax.c:487: printf("\n\r| ERROR: Buffer 2 allocation failed                |");
      0040B0 74 CF            [12] 3287 	mov	a,#___str_61
      0040B2 C0 E0            [24] 3288 	push	acc
      0040B4 74 5F            [12] 3289 	mov	a,#(___str_61 >> 8)
      0040B6 C0 E0            [24] 3290 	push	acc
      0040B8 74 80            [12] 3291 	mov	a,#0x80
      0040BA C0 E0            [24] 3292 	push	acc
      0040BC 12 4B 63         [24] 3293 	lcall	_printf
      0040BF 15 81            [12] 3294 	dec	sp
      0040C1 15 81            [12] 3295 	dec	sp
      0040C3 15 81            [12] 3296 	dec	sp
                                   3297 ;	syntax.c:488: printf("\n\r| Try smaller size                                |");
      0040C5 74 62            [12] 3298 	mov	a,#___str_59
      0040C7 C0 E0            [24] 3299 	push	acc
      0040C9 74 5F            [12] 3300 	mov	a,#(___str_59 >> 8)
      0040CB C0 E0            [24] 3301 	push	acc
      0040CD 74 80            [12] 3302 	mov	a,#0x80
      0040CF C0 E0            [24] 3303 	push	acc
      0040D1 12 4B 63         [24] 3304 	lcall	_printf
      0040D4 15 81            [12] 3305 	dec	sp
      0040D6 15 81            [12] 3306 	dec	sp
      0040D8 15 81            [12] 3307 	dec	sp
                                   3308 ;	syntax.c:489: printf("\n\r+------------------------------------------------+\n\r");
      0040DA 74 98            [12] 3309 	mov	a,#___str_60
      0040DC C0 E0            [24] 3310 	push	acc
      0040DE 74 5F            [12] 3311 	mov	a,#(___str_60 >> 8)
      0040E0 C0 E0            [24] 3312 	push	acc
      0040E2 74 80            [12] 3313 	mov	a,#0x80
      0040E4 C0 E0            [24] 3314 	push	acc
      0040E6 12 4B 63         [24] 3315 	lcall	_printf
      0040E9 15 81            [12] 3316 	dec	sp
      0040EB 15 81            [12] 3317 	dec	sp
      0040ED 15 81            [12] 3318 	dec	sp
      0040EF D0 06            [24] 3319 	pop	ar6
      0040F1 D0 07            [24] 3320 	pop	ar7
                                   3321 ;	syntax.c:490: continue;
      0040F3 02 41 8A         [24] 3322 	ljmp	00109$
      0040F6                       3323 00106$:
                                   3324 ;	syntax.c:494: printf("\n\r+----------------BUFFER STATUS--------------------+");
      0040F6 C0 07            [24] 3325 	push	ar7
      0040F8 C0 06            [24] 3326 	push	ar6
      0040FA 74 06            [12] 3327 	mov	a,#___str_62
      0040FC C0 E0            [24] 3328 	push	acc
      0040FE 74 60            [12] 3329 	mov	a,#(___str_62 >> 8)
      004100 C0 E0            [24] 3330 	push	acc
      004102 74 80            [12] 3331 	mov	a,#0x80
      004104 C0 E0            [24] 3332 	push	acc
      004106 12 4B 63         [24] 3333 	lcall	_printf
      004109 15 81            [12] 3334 	dec	sp
      00410B 15 81            [12] 3335 	dec	sp
      00410D 15 81            [12] 3336 	dec	sp
      00410F D0 06            [24] 3337 	pop	ar6
      004111 D0 07            [24] 3338 	pop	ar7
                                   3339 ;	syntax.c:495: printf("\n\r| Buffer 1 | Addr: %-10p | Size: %-6d   |", pointer1, buffer_size);
      004113 90 1B 00         [24] 3340 	mov	dptr,#_pointer1
      004116 E0               [24] 3341 	movx	a,@dptr
      004117 FC               [12] 3342 	mov	r4,a
      004118 A3               [24] 3343 	inc	dptr
      004119 E0               [24] 3344 	movx	a,@dptr
      00411A FD               [12] 3345 	mov	r5,a
      00411B 7B 00            [12] 3346 	mov	r3,#0x00
      00411D C0 07            [24] 3347 	push	ar7
      00411F C0 06            [24] 3348 	push	ar6
      004121 C0 06            [24] 3349 	push	ar6
      004123 C0 07            [24] 3350 	push	ar7
      004125 C0 04            [24] 3351 	push	ar4
      004127 C0 05            [24] 3352 	push	ar5
      004129 C0 03            [24] 3353 	push	ar3
      00412B 74 3C            [12] 3354 	mov	a,#___str_63
      00412D C0 E0            [24] 3355 	push	acc
      00412F 74 60            [12] 3356 	mov	a,#(___str_63 >> 8)
      004131 C0 E0            [24] 3357 	push	acc
      004133 74 80            [12] 3358 	mov	a,#0x80
      004135 C0 E0            [24] 3359 	push	acc
      004137 12 4B 63         [24] 3360 	lcall	_printf
      00413A E5 81            [12] 3361 	mov	a,sp
      00413C 24 F8            [12] 3362 	add	a,#0xf8
      00413E F5 81            [12] 3363 	mov	sp,a
      004140 D0 06            [24] 3364 	pop	ar6
      004142 D0 07            [24] 3365 	pop	ar7
                                   3366 ;	syntax.c:496: printf("\n\r| Buffer 2 | Addr: %-10p | Size: %-6d   |", pointer2, buffer_size);
      004144 90 1B 02         [24] 3367 	mov	dptr,#_pointer2
      004147 E0               [24] 3368 	movx	a,@dptr
      004148 FC               [12] 3369 	mov	r4,a
      004149 A3               [24] 3370 	inc	dptr
      00414A E0               [24] 3371 	movx	a,@dptr
      00414B FD               [12] 3372 	mov	r5,a
      00414C 7B 00            [12] 3373 	mov	r3,#0x00
      00414E C0 07            [24] 3374 	push	ar7
      004150 C0 06            [24] 3375 	push	ar6
      004152 C0 06            [24] 3376 	push	ar6
      004154 C0 07            [24] 3377 	push	ar7
      004156 C0 04            [24] 3378 	push	ar4
      004158 C0 05            [24] 3379 	push	ar5
      00415A C0 03            [24] 3380 	push	ar3
      00415C 74 68            [12] 3381 	mov	a,#___str_64
      00415E C0 E0            [24] 3382 	push	acc
      004160 74 60            [12] 3383 	mov	a,#(___str_64 >> 8)
      004162 C0 E0            [24] 3384 	push	acc
      004164 74 80            [12] 3385 	mov	a,#0x80
      004166 C0 E0            [24] 3386 	push	acc
      004168 12 4B 63         [24] 3387 	lcall	_printf
      00416B E5 81            [12] 3388 	mov	a,sp
      00416D 24 F8            [12] 3389 	add	a,#0xf8
      00416F F5 81            [12] 3390 	mov	sp,a
                                   3391 ;	syntax.c:497: printf("\n\r+------------------------------------------------+\n\r");
      004171 74 98            [12] 3392 	mov	a,#___str_60
      004173 C0 E0            [24] 3393 	push	acc
      004175 74 5F            [12] 3394 	mov	a,#(___str_60 >> 8)
      004177 C0 E0            [24] 3395 	push	acc
      004179 74 80            [12] 3396 	mov	a,#0x80
      00417B C0 E0            [24] 3397 	push	acc
      00417D 12 4B 63         [24] 3398 	lcall	_printf
      004180 15 81            [12] 3399 	dec	sp
      004182 15 81            [12] 3400 	dec	sp
      004184 15 81            [12] 3401 	dec	sp
      004186 D0 06            [24] 3402 	pop	ar6
      004188 D0 07            [24] 3403 	pop	ar7
      00418A                       3404 00109$:
                                   3405 ;	syntax.c:499: }while(pointer2 == NULL || pointer1 == NULL);
      00418A 90 1B 02         [24] 3406 	mov	dptr,#_pointer2
      00418D E0               [24] 3407 	movx	a,@dptr
      00418E F5 F0            [12] 3408 	mov	b,a
      004190 A3               [24] 3409 	inc	dptr
      004191 E0               [24] 3410 	movx	a,@dptr
      004192 45 F0            [12] 3411 	orl	a,b
      004194 70 03            [24] 3412 	jnz	00196$
      004196 02 3F E9         [24] 3413 	ljmp	00108$
      004199                       3414 00196$:
      004199 90 1B 00         [24] 3415 	mov	dptr,#_pointer1
      00419C E0               [24] 3416 	movx	a,@dptr
      00419D F5 F0            [12] 3417 	mov	b,a
      00419F A3               [24] 3418 	inc	dptr
      0041A0 E0               [24] 3419 	movx	a,@dptr
      0041A1 45 F0            [12] 3420 	orl	a,b
      0041A3 70 03            [24] 3421 	jnz	00197$
      0041A5 02 3F E9         [24] 3422 	ljmp	00108$
      0041A8                       3423 00197$:
                                   3424 ;	syntax.c:502: index_of_buffers = 0;
      0041A8 90 1A F7         [24] 3425 	mov	dptr,#_index_of_buffers
      0041AB E4               [12] 3426 	clr	a
      0041AC F0               [24] 3427 	movx	@dptr,a
                                   3428 ;	syntax.c:505: node_t node1 = { index_of_buffers, pointer1, buffer_size};
      0041AD 90 06 81         [24] 3429 	mov	dptr,#_main_node1_10002_140
      0041B0 F0               [24] 3430 	movx	@dptr,a
      0041B1 90 1B 00         [24] 3431 	mov	dptr,#_pointer1
      0041B4 E0               [24] 3432 	movx	a,@dptr
      0041B5 FC               [12] 3433 	mov	r4,a
      0041B6 A3               [24] 3434 	inc	dptr
      0041B7 E0               [24] 3435 	movx	a,@dptr
      0041B8 FD               [12] 3436 	mov	r5,a
      0041B9 7B 00            [12] 3437 	mov	r3,#0x00
      0041BB 90 06 82         [24] 3438 	mov	dptr,#(_main_node1_10002_140 + 0x0001)
      0041BE EC               [12] 3439 	mov	a,r4
      0041BF F0               [24] 3440 	movx	@dptr,a
      0041C0 ED               [12] 3441 	mov	a,r5
      0041C1 A3               [24] 3442 	inc	dptr
      0041C2 F0               [24] 3443 	movx	@dptr,a
      0041C3 EB               [12] 3444 	mov	a,r3
      0041C4 A3               [24] 3445 	inc	dptr
      0041C5 F0               [24] 3446 	movx	@dptr,a
      0041C6 90 06 85         [24] 3447 	mov	dptr,#(_main_node1_10002_140 + 0x0004)
      0041C9 EE               [12] 3448 	mov	a,r6
      0041CA F0               [24] 3449 	movx	@dptr,a
      0041CB EF               [12] 3450 	mov	a,r7
      0041CC A3               [24] 3451 	inc	dptr
      0041CD F0               [24] 3452 	movx	@dptr,a
                                   3453 ;	syntax.c:506: array_for_nodes[index_of_buffers] = node1;
      0041CE 90 1A F7         [24] 3454 	mov	dptr,#_index_of_buffers
      0041D1 E0               [24] 3455 	movx	a,@dptr
      0041D2 75 F0 06         [24] 3456 	mov	b,#0x06
      0041D5 A4               [48] 3457 	mul	ab
      0041D6 24 03            [12] 3458 	add	a, #_array_for_nodes
      0041D8 FC               [12] 3459 	mov	r4,a
      0041D9 74 04            [12] 3460 	mov	a,#(_array_for_nodes >> 8)
      0041DB 35 F0            [12] 3461 	addc	a, b
      0041DD FD               [12] 3462 	mov	r5,a
      0041DE 90 1A 96         [24] 3463 	mov	dptr,#___memcpy_PARM_2
      0041E1 74 81            [12] 3464 	mov	a,#_main_node1_10002_140
      0041E3 F0               [24] 3465 	movx	@dptr,a
      0041E4 74 06            [12] 3466 	mov	a,#(_main_node1_10002_140 >> 8)
      0041E6 A3               [24] 3467 	inc	dptr
      0041E7 F0               [24] 3468 	movx	@dptr,a
      0041E8 E4               [12] 3469 	clr	a
      0041E9 A3               [24] 3470 	inc	dptr
      0041EA F0               [24] 3471 	movx	@dptr,a
      0041EB 90 1A 99         [24] 3472 	mov	dptr,#___memcpy_PARM_3
      0041EE 74 06            [12] 3473 	mov	a,#0x06
      0041F0 F0               [24] 3474 	movx	@dptr,a
      0041F1 E4               [12] 3475 	clr	a
      0041F2 A3               [24] 3476 	inc	dptr
      0041F3 F0               [24] 3477 	movx	@dptr,a
      0041F4 8C 82            [24] 3478 	mov	dpl, r4
      0041F6 8D 83            [24] 3479 	mov	dph, r5
      0041F8 8B F0            [24] 3480 	mov	b, r3
      0041FA C0 07            [24] 3481 	push	ar7
      0041FC C0 06            [24] 3482 	push	ar6
      0041FE 12 46 87         [24] 3483 	lcall	___memcpy
      004201 D0 06            [24] 3484 	pop	ar6
      004203 D0 07            [24] 3485 	pop	ar7
                                   3486 ;	syntax.c:507: index_of_buffers++;
      004205 90 1A F7         [24] 3487 	mov	dptr,#_index_of_buffers
      004208 E0               [24] 3488 	movx	a,@dptr
      004209 24 01            [12] 3489 	add	a, #0x01
      00420B F0               [24] 3490 	movx	@dptr,a
                                   3491 ;	syntax.c:510: node_t node2 = { index_of_buffers, pointer2, buffer_size};
      00420C E0               [24] 3492 	movx	a,@dptr
      00420D 90 06 87         [24] 3493 	mov	dptr,#_main_node2_10003_141
      004210 F0               [24] 3494 	movx	@dptr,a
      004211 90 1B 02         [24] 3495 	mov	dptr,#_pointer2
      004214 E0               [24] 3496 	movx	a,@dptr
      004215 FC               [12] 3497 	mov	r4,a
      004216 A3               [24] 3498 	inc	dptr
      004217 E0               [24] 3499 	movx	a,@dptr
      004218 FD               [12] 3500 	mov	r5,a
      004219 7B 00            [12] 3501 	mov	r3,#0x00
      00421B 90 06 88         [24] 3502 	mov	dptr,#(_main_node2_10003_141 + 0x0001)
      00421E EC               [12] 3503 	mov	a,r4
      00421F F0               [24] 3504 	movx	@dptr,a
      004220 ED               [12] 3505 	mov	a,r5
      004221 A3               [24] 3506 	inc	dptr
      004222 F0               [24] 3507 	movx	@dptr,a
      004223 EB               [12] 3508 	mov	a,r3
      004224 A3               [24] 3509 	inc	dptr
      004225 F0               [24] 3510 	movx	@dptr,a
      004226 90 06 8B         [24] 3511 	mov	dptr,#(_main_node2_10003_141 + 0x0004)
      004229 EE               [12] 3512 	mov	a,r6
      00422A F0               [24] 3513 	movx	@dptr,a
      00422B EF               [12] 3514 	mov	a,r7
      00422C A3               [24] 3515 	inc	dptr
      00422D F0               [24] 3516 	movx	@dptr,a
                                   3517 ;	syntax.c:511: array_for_nodes[index_of_buffers] = node2;
      00422E 90 1A F7         [24] 3518 	mov	dptr,#_index_of_buffers
      004231 E0               [24] 3519 	movx	a,@dptr
      004232 75 F0 06         [24] 3520 	mov	b,#0x06
      004235 A4               [48] 3521 	mul	ab
      004236 24 03            [12] 3522 	add	a, #_array_for_nodes
      004238 FE               [12] 3523 	mov	r6,a
      004239 74 04            [12] 3524 	mov	a,#(_array_for_nodes >> 8)
      00423B 35 F0            [12] 3525 	addc	a, b
      00423D FF               [12] 3526 	mov	r7,a
      00423E 7D 00            [12] 3527 	mov	r5,#0x00
      004240 90 1A 96         [24] 3528 	mov	dptr,#___memcpy_PARM_2
      004243 74 87            [12] 3529 	mov	a,#_main_node2_10003_141
      004245 F0               [24] 3530 	movx	@dptr,a
      004246 74 06            [12] 3531 	mov	a,#(_main_node2_10003_141 >> 8)
      004248 A3               [24] 3532 	inc	dptr
      004249 F0               [24] 3533 	movx	@dptr,a
      00424A E4               [12] 3534 	clr	a
      00424B A3               [24] 3535 	inc	dptr
      00424C F0               [24] 3536 	movx	@dptr,a
      00424D 90 1A 99         [24] 3537 	mov	dptr,#___memcpy_PARM_3
      004250 74 06            [12] 3538 	mov	a,#0x06
      004252 F0               [24] 3539 	movx	@dptr,a
      004253 E4               [12] 3540 	clr	a
      004254 A3               [24] 3541 	inc	dptr
      004255 F0               [24] 3542 	movx	@dptr,a
      004256 8E 82            [24] 3543 	mov	dpl, r6
      004258 8F 83            [24] 3544 	mov	dph, r7
      00425A 8D F0            [24] 3545 	mov	b, r5
      00425C 12 46 87         [24] 3546 	lcall	___memcpy
                                   3547 ;	syntax.c:512: index_of_buffers++;
      00425F 90 1A F7         [24] 3548 	mov	dptr,#_index_of_buffers
      004262 E0               [24] 3549 	movx	a,@dptr
      004263 24 01            [12] 3550 	add	a, #0x01
      004265 F0               [24] 3551 	movx	@dptr,a
                                   3552 ;	syntax.c:515: printf("\n\r+------------------COMMANDS----------------------+");
      004266 74 94            [12] 3553 	mov	a,#___str_65
      004268 C0 E0            [24] 3554 	push	acc
      00426A 74 60            [12] 3555 	mov	a,#(___str_65 >> 8)
      00426C C0 E0            [24] 3556 	push	acc
      00426E 74 80            [12] 3557 	mov	a,#0x80
      004270 C0 E0            [24] 3558 	push	acc
      004272 12 4B 63         [24] 3559 	lcall	_printf
      004275 15 81            [12] 3560 	dec	sp
      004277 15 81            [12] 3561 	dec	sp
      004279 15 81            [12] 3562 	dec	sp
                                   3563 ;	syntax.c:516: printf("\n\r| [A-Z] : Store character in Buffer 0           |");
      00427B 74 C9            [12] 3564 	mov	a,#___str_66
      00427D C0 E0            [24] 3565 	push	acc
      00427F 74 60            [12] 3566 	mov	a,#(___str_66 >> 8)
      004281 C0 E0            [24] 3567 	push	acc
      004283 74 80            [12] 3568 	mov	a,#0x80
      004285 C0 E0            [24] 3569 	push	acc
      004287 12 4B 63         [24] 3570 	lcall	_printf
      00428A 15 81            [12] 3571 	dec	sp
      00428C 15 81            [12] 3572 	dec	sp
      00428E 15 81            [12] 3573 	dec	sp
                                   3574 ;	syntax.c:517: printf("\n\r| +     : Create new buffer                     |");
      004290 74 FD            [12] 3575 	mov	a,#___str_67
      004292 C0 E0            [24] 3576 	push	acc
      004294 74 60            [12] 3577 	mov	a,#(___str_67 >> 8)
      004296 C0 E0            [24] 3578 	push	acc
      004298 74 80            [12] 3579 	mov	a,#0x80
      00429A C0 E0            [24] 3580 	push	acc
      00429C 12 4B 63         [24] 3581 	lcall	_printf
      00429F 15 81            [12] 3582 	dec	sp
      0042A1 15 81            [12] 3583 	dec	sp
      0042A3 15 81            [12] 3584 	dec	sp
                                   3585 ;	syntax.c:518: printf("\n\r| -     : Delete buffer                         |");
      0042A5 74 31            [12] 3586 	mov	a,#___str_68
      0042A7 C0 E0            [24] 3587 	push	acc
      0042A9 74 61            [12] 3588 	mov	a,#(___str_68 >> 8)
      0042AB C0 E0            [24] 3589 	push	acc
      0042AD 74 80            [12] 3590 	mov	a,#0x80
      0042AF C0 E0            [24] 3591 	push	acc
      0042B1 12 4B 63         [24] 3592 	lcall	_printf
      0042B4 15 81            [12] 3593 	dec	sp
      0042B6 15 81            [12] 3594 	dec	sp
      0042B8 15 81            [12] 3595 	dec	sp
                                   3596 ;	syntax.c:519: printf("\n\r| ?     : Show system status                    |");
      0042BA 74 65            [12] 3597 	mov	a,#___str_69
      0042BC C0 E0            [24] 3598 	push	acc
      0042BE 74 61            [12] 3599 	mov	a,#(___str_69 >> 8)
      0042C0 C0 E0            [24] 3600 	push	acc
      0042C2 74 80            [12] 3601 	mov	a,#0x80
      0042C4 C0 E0            [24] 3602 	push	acc
      0042C6 12 4B 63         [24] 3603 	lcall	_printf
      0042C9 15 81            [12] 3604 	dec	sp
      0042CB 15 81            [12] 3605 	dec	sp
      0042CD 15 81            [12] 3606 	dec	sp
                                   3607 ;	syntax.c:520: printf("\n\r| =     : Display Buffer 0 contents             |");
      0042CF 74 99            [12] 3608 	mov	a,#___str_70
      0042D1 C0 E0            [24] 3609 	push	acc
      0042D3 74 61            [12] 3610 	mov	a,#(___str_70 >> 8)
      0042D5 C0 E0            [24] 3611 	push	acc
      0042D7 74 80            [12] 3612 	mov	a,#0x80
      0042D9 C0 E0            [24] 3613 	push	acc
      0042DB 12 4B 63         [24] 3614 	lcall	_printf
      0042DE 15 81            [12] 3615 	dec	sp
      0042E0 15 81            [12] 3616 	dec	sp
      0042E2 15 81            [12] 3617 	dec	sp
                                   3618 ;	syntax.c:521: printf("\n\r| @     : Reset system                          |");
      0042E4 74 CD            [12] 3619 	mov	a,#___str_71
      0042E6 C0 E0            [24] 3620 	push	acc
      0042E8 74 61            [12] 3621 	mov	a,#(___str_71 >> 8)
      0042EA C0 E0            [24] 3622 	push	acc
      0042EC 74 80            [12] 3623 	mov	a,#0x80
      0042EE C0 E0            [24] 3624 	push	acc
      0042F0 12 4B 63         [24] 3625 	lcall	_printf
      0042F3 15 81            [12] 3626 	dec	sp
      0042F5 15 81            [12] 3627 	dec	sp
      0042F7 15 81            [12] 3628 	dec	sp
                                   3629 ;	syntax.c:522: printf("\n\r+--------------------------------------------------+");
      0042F9 74 A5            [12] 3630 	mov	a,#___str_0
      0042FB C0 E0            [24] 3631 	push	acc
      0042FD 74 55            [12] 3632 	mov	a,#(___str_0 >> 8)
      0042FF C0 E0            [24] 3633 	push	acc
      004301 74 80            [12] 3634 	mov	a,#0x80
      004303 C0 E0            [24] 3635 	push	acc
      004305 12 4B 63         [24] 3636 	lcall	_printf
      004308 15 81            [12] 3637 	dec	sp
      00430A 15 81            [12] 3638 	dec	sp
      00430C 15 81            [12] 3639 	dec	sp
                                   3640 ;	syntax.c:523: printf("\n\r| Ready for input. Enter uppercase chars (A-Z):    |\n\r"); 
      00430E 74 01            [12] 3641 	mov	a,#___str_72
      004310 C0 E0            [24] 3642 	push	acc
      004312 74 62            [12] 3643 	mov	a,#(___str_72 >> 8)
      004314 C0 E0            [24] 3644 	push	acc
      004316 74 80            [12] 3645 	mov	a,#0x80
      004318 C0 E0            [24] 3646 	push	acc
      00431A 12 4B 63         [24] 3647 	lcall	_printf
      00431D 15 81            [12] 3648 	dec	sp
      00431F 15 81            [12] 3649 	dec	sp
      004321 15 81            [12] 3650 	dec	sp
                                   3651 ;	syntax.c:524: printf("\n\r+--------------------------------------------------+\n\r");
      004323 74 17            [12] 3652 	mov	a,#___str_2
      004325 C0 E0            [24] 3653 	push	acc
      004327 74 56            [12] 3654 	mov	a,#(___str_2 >> 8)
      004329 C0 E0            [24] 3655 	push	acc
      00432B 74 80            [12] 3656 	mov	a,#0x80
      00432D C0 E0            [24] 3657 	push	acc
      00432F 12 4B 63         [24] 3658 	lcall	_printf
      004332 15 81            [12] 3659 	dec	sp
      004334 15 81            [12] 3660 	dec	sp
      004336 15 81            [12] 3661 	dec	sp
                                   3662 ;	syntax.c:527: __idata int temp_buffer_size = array_for_nodes[0].size;
      004338 90 04 07         [24] 3663 	mov	dptr,#(_array_for_nodes + 0x0004)
      00433B E0               [24] 3664 	movx	a,@dptr
      00433C FE               [12] 3665 	mov	r6,a
      00433D A3               [24] 3666 	inc	dptr
      00433E E0               [24] 3667 	movx	a,@dptr
      00433F FF               [12] 3668 	mov	r7,a
                                   3669 ;	syntax.c:529: uint8_t * wr = array_for_nodes[0].data_pointer;
      004340 90 04 04         [24] 3670 	mov	dptr,#(_array_for_nodes + 0x0001)
      004343 E0               [24] 3671 	movx	a,@dptr
      004344 FB               [12] 3672 	mov	r3,a
      004345 A3               [24] 3673 	inc	dptr
      004346 E0               [24] 3674 	movx	a,@dptr
      004347 FC               [12] 3675 	mov	r4,a
      004348 A3               [24] 3676 	inc	dptr
      004349 E0               [24] 3677 	movx	a,@dptr
      00434A FD               [12] 3678 	mov	r5,a
                                   3679 ;	syntax.c:532: do{
      00434B                       3680 00114$:
                                   3681 ;	syntax.c:533: int ch = getchar();
      00434B C0 07            [24] 3682 	push	ar7
      00434D C0 06            [24] 3683 	push	ar6
      00434F C0 05            [24] 3684 	push	ar5
      004351 C0 04            [24] 3685 	push	ar4
      004353 C0 03            [24] 3686 	push	ar3
      004355 12 30 BA         [24] 3687 	lcall	_getchar
                                   3688 ;	syntax.c:534: putchar(ch);
      004358 A9 82            [24] 3689 	mov	r1,dpl
      00435A AA 83            [24] 3690 	mov  r2,dph
      00435C C0 02            [24] 3691 	push	ar2
      00435E C0 01            [24] 3692 	push	ar1
      004360 12 30 91         [24] 3693 	lcall	_putchar
      004363 D0 01            [24] 3694 	pop	ar1
      004365 D0 02            [24] 3695 	pop	ar2
      004367 D0 03            [24] 3696 	pop	ar3
      004369 D0 04            [24] 3697 	pop	ar4
      00436B D0 05            [24] 3698 	pop	ar5
      00436D D0 06            [24] 3699 	pop	ar6
      00436F D0 07            [24] 3700 	pop	ar7
                                   3701 ;	syntax.c:537: if(ch < 65 || ch > 90) {
      004371 C3               [12] 3702 	clr	c
      004372 E9               [12] 3703 	mov	a,r1
      004373 94 41            [12] 3704 	subb	a,#0x41
      004375 EA               [12] 3705 	mov	a,r2
      004376 64 80            [12] 3706 	xrl	a,#0x80
      004378 94 80            [12] 3707 	subb	a,#0x80
      00437A 40 0E            [24] 3708 	jc	00111$
      00437C 74 5A            [12] 3709 	mov	a,#0x5a
      00437E 99               [12] 3710 	subb	a,r1
      00437F 74 80            [12] 3711 	mov	a,#(0x00 ^ 0x80)
      004381 8A F0            [24] 3712 	mov	b,r2
      004383 63 F0 80         [24] 3713 	xrl	b,#0x80
      004386 95 F0            [12] 3714 	subb	a,b
      004388 50 5F            [24] 3715 	jnc	00112$
      00438A                       3716 00111$:
                                   3717 ;	syntax.c:538: total_number_of_commands+=1;
      00438A 90 1A F8         [24] 3718 	mov	dptr,#_total_number_of_commands
      00438D E0               [24] 3719 	movx	a,@dptr
      00438E 04               [12] 3720 	inc	a
      00438F F0               [24] 3721 	movx	@dptr,a
                                   3722 ;	syntax.c:539: recent_commands+=1;
      004390 90 1A FA         [24] 3723 	mov	dptr,#_recent_commands
      004393 E0               [24] 3724 	movx	a,@dptr
      004394 04               [12] 3725 	inc	a
      004395 F0               [24] 3726 	movx	@dptr,a
                                   3727 ;	syntax.c:540: printf("\n\r| Command received: %-31c |", ch);
      004396 C0 07            [24] 3728 	push	ar7
      004398 C0 06            [24] 3729 	push	ar6
      00439A C0 05            [24] 3730 	push	ar5
      00439C C0 04            [24] 3731 	push	ar4
      00439E C0 03            [24] 3732 	push	ar3
      0043A0 C0 02            [24] 3733 	push	ar2
      0043A2 C0 01            [24] 3734 	push	ar1
      0043A4 C0 01            [24] 3735 	push	ar1
      0043A6 C0 02            [24] 3736 	push	ar2
      0043A8 74 3A            [12] 3737 	mov	a,#___str_73
      0043AA C0 E0            [24] 3738 	push	acc
      0043AC 74 62            [12] 3739 	mov	a,#(___str_73 >> 8)
      0043AE C0 E0            [24] 3740 	push	acc
      0043B0 74 80            [12] 3741 	mov	a,#0x80
      0043B2 C0 E0            [24] 3742 	push	acc
      0043B4 12 4B 63         [24] 3743 	lcall	_printf
      0043B7 E5 81            [12] 3744 	mov	a,sp
      0043B9 24 FB            [12] 3745 	add	a,#0xfb
      0043BB F5 81            [12] 3746 	mov	sp,a
                                   3747 ;	syntax.c:541: printf("\n\r+--------------------------------------------------+\n\r");
      0043BD 74 17            [12] 3748 	mov	a,#___str_2
      0043BF C0 E0            [24] 3749 	push	acc
      0043C1 74 56            [12] 3750 	mov	a,#(___str_2 >> 8)
      0043C3 C0 E0            [24] 3751 	push	acc
      0043C5 74 80            [12] 3752 	mov	a,#0x80
      0043C7 C0 E0            [24] 3753 	push	acc
      0043C9 12 4B 63         [24] 3754 	lcall	_printf
      0043CC 15 81            [12] 3755 	dec	sp
      0043CE 15 81            [12] 3756 	dec	sp
      0043D0 15 81            [12] 3757 	dec	sp
      0043D2 D0 01            [24] 3758 	pop	ar1
      0043D4 D0 02            [24] 3759 	pop	ar2
                                   3760 ;	syntax.c:542: get_command(ch);
      0043D6 89 82            [24] 3761 	mov	dpl, r1
      0043D8 8A 83            [24] 3762 	mov	dph, r2
      0043DA 12 35 2D         [24] 3763 	lcall	_get_command
      0043DD D0 03            [24] 3764 	pop	ar3
      0043DF D0 04            [24] 3765 	pop	ar4
      0043E1 D0 05            [24] 3766 	pop	ar5
      0043E3 D0 06            [24] 3767 	pop	ar6
      0043E5 D0 07            [24] 3768 	pop	ar7
                                   3769 ;	syntax.c:543: continue;
      0043E7 80 68            [24] 3770 	sjmp	00115$
      0043E9                       3771 00112$:
                                   3772 ;	syntax.c:547: total_number_of_storage = total_number_of_storage + 1;
      0043E9 90 1A F9         [24] 3773 	mov	dptr,#_total_number_of_storage
      0043EC E0               [24] 3774 	movx	a,@dptr
      0043ED 04               [12] 3775 	inc	a
      0043EE F0               [24] 3776 	movx	@dptr,a
                                   3777 ;	syntax.c:548: recent_storage = recent_storage + 1;
      0043EF 90 1A FB         [24] 3778 	mov	dptr,#_recent_storage
      0043F2 E0               [24] 3779 	movx	a,@dptr
      0043F3 04               [12] 3780 	inc	a
      0043F4 F0               [24] 3781 	movx	@dptr,a
                                   3782 ;	syntax.c:550: *wr = ch;
      0043F5 8B 82            [24] 3783 	mov	dpl,r3
      0043F7 8C 83            [24] 3784 	mov	dph,r4
      0043F9 8D F0            [24] 3785 	mov	b,r5
      0043FB E9               [12] 3786 	mov	a,r1
      0043FC 12 47 23         [24] 3787 	lcall	__gptrput
      0043FF A3               [24] 3788 	inc	dptr
      004400 AB 82            [24] 3789 	mov	r3,dpl
      004402 AC 83            [24] 3790 	mov	r4,dph
                                   3791 ;	syntax.c:551: wr++;
                                   3792 ;	syntax.c:553: total_number_of_storage, recent_storage, wr);
      004404 90 1A FB         [24] 3793 	mov	dptr,#_recent_storage
      004407 E0               [24] 3794 	movx	a,@dptr
      004408 FA               [12] 3795 	mov	r2,a
      004409 8A 1A            [24] 3796 	mov	_main_sloc0_1_0,r2
      00440B 75 1B 00         [24] 3797 	mov	(_main_sloc0_1_0 + 1),#0x00
      00440E 90 1A F9         [24] 3798 	mov	dptr,#_total_number_of_storage
      004411 E0               [24] 3799 	movx	a,@dptr
      004412 F8               [12] 3800 	mov	r0,a
      004413 7A 00            [12] 3801 	mov	r2,#0x00
                                   3802 ;	syntax.c:552: printf("\n\r| Storage: Total=%-4d Recent=%-4d Addr=%-10p |\n\r", 
      004415 C0 07            [24] 3803 	push	ar7
      004417 C0 06            [24] 3804 	push	ar6
      004419 C0 05            [24] 3805 	push	ar5
      00441B C0 04            [24] 3806 	push	ar4
      00441D C0 03            [24] 3807 	push	ar3
      00441F C0 03            [24] 3808 	push	ar3
      004421 C0 04            [24] 3809 	push	ar4
      004423 C0 05            [24] 3810 	push	ar5
      004425 C0 1A            [24] 3811 	push	_main_sloc0_1_0
      004427 C0 1B            [24] 3812 	push	(_main_sloc0_1_0 + 1)
      004429 C0 00            [24] 3813 	push	ar0
      00442B C0 02            [24] 3814 	push	ar2
      00442D 74 58            [12] 3815 	mov	a,#___str_74
      00442F C0 E0            [24] 3816 	push	acc
      004431 74 62            [12] 3817 	mov	a,#(___str_74 >> 8)
      004433 C0 E0            [24] 3818 	push	acc
      004435 74 80            [12] 3819 	mov	a,#0x80
      004437 C0 E0            [24] 3820 	push	acc
      004439 12 4B 63         [24] 3821 	lcall	_printf
      00443C E5 81            [12] 3822 	mov	a,sp
      00443E 24 F6            [12] 3823 	add	a,#0xf6
      004440 F5 81            [12] 3824 	mov	sp,a
      004442 D0 03            [24] 3825 	pop	ar3
      004444 D0 04            [24] 3826 	pop	ar4
      004446 D0 05            [24] 3827 	pop	ar5
      004448 D0 06            [24] 3828 	pop	ar6
      00444A D0 07            [24] 3829 	pop	ar7
                                   3830 ;	syntax.c:554: temp_buffer_size -= 1;
      00444C 1E               [12] 3831 	dec	r6
      00444D BE FF 01         [24] 3832 	cjne	r6,#0xff,00200$
      004450 1F               [12] 3833 	dec	r7
      004451                       3834 00200$:
                                   3835 ;	syntax.c:555: index_for_write += 1;
      004451                       3836 00115$:
                                   3837 ;	syntax.c:556: }while(temp_buffer_size>0);
      004451 C3               [12] 3838 	clr	c
      004452 E4               [12] 3839 	clr	a
      004453 9E               [12] 3840 	subb	a,r6
      004454 74 80            [12] 3841 	mov	a,#(0x00 ^ 0x80)
      004456 8F F0            [24] 3842 	mov	b,r7
      004458 63 F0 80         [24] 3843 	xrl	b,#0x80
      00445B 95 F0            [12] 3844 	subb	a,b
      00445D 50 03            [24] 3845 	jnc	00201$
      00445F 02 43 4B         [24] 3846 	ljmp	00114$
      004462                       3847 00201$:
                                   3848 ;	syntax.c:559: printf("\n\r+--------------------------------------------------+");
      004462 74 A5            [12] 3849 	mov	a,#___str_0
      004464 C0 E0            [24] 3850 	push	acc
      004466 74 55            [12] 3851 	mov	a,#(___str_0 >> 8)
      004468 C0 E0            [24] 3852 	push	acc
      00446A 74 80            [12] 3853 	mov	a,#0x80
      00446C C0 E0            [24] 3854 	push	acc
      00446E 12 4B 63         [24] 3855 	lcall	_printf
      004471 15 81            [12] 3856 	dec	sp
      004473 15 81            [12] 3857 	dec	sp
      004475 15 81            [12] 3858 	dec	sp
                                   3859 ;	syntax.c:560: printf("\n\r| NOTICE: Buffer 0 is full - Storage stopped        |");
      004477 74 8B            [12] 3860 	mov	a,#___str_75
      004479 C0 E0            [24] 3861 	push	acc
      00447B 74 62            [12] 3862 	mov	a,#(___str_75 >> 8)
      00447D C0 E0            [24] 3863 	push	acc
      00447F 74 80            [12] 3864 	mov	a,#0x80
      004481 C0 E0            [24] 3865 	push	acc
      004483 12 4B 63         [24] 3866 	lcall	_printf
      004486 15 81            [12] 3867 	dec	sp
      004488 15 81            [12] 3868 	dec	sp
      00448A 15 81            [12] 3869 	dec	sp
                                   3870 ;	syntax.c:561: printf("\n\r+--------------------------------------------------+\n\r");
      00448C 74 17            [12] 3871 	mov	a,#___str_2
      00448E C0 E0            [24] 3872 	push	acc
      004490 74 56            [12] 3873 	mov	a,#(___str_2 >> 8)
      004492 C0 E0            [24] 3874 	push	acc
      004494 74 80            [12] 3875 	mov	a,#0x80
      004496 C0 E0            [24] 3876 	push	acc
      004498 12 4B 63         [24] 3877 	lcall	_printf
      00449B 15 81            [12] 3878 	dec	sp
      00449D 15 81            [12] 3879 	dec	sp
      00449F 15 81            [12] 3880 	dec	sp
                                   3881 ;	syntax.c:564: while(1)
      0044A1                       3882 00122$:
                                   3883 ;	syntax.c:566: printf("\n\r| Enter command (+, -, ?, =, @):                   |");
      0044A1 74 C3            [12] 3884 	mov	a,#___str_76
      0044A3 C0 E0            [24] 3885 	push	acc
      0044A5 74 62            [12] 3886 	mov	a,#(___str_76 >> 8)
      0044A7 C0 E0            [24] 3887 	push	acc
      0044A9 74 80            [12] 3888 	mov	a,#0x80
      0044AB C0 E0            [24] 3889 	push	acc
      0044AD 12 4B 63         [24] 3890 	lcall	_printf
      0044B0 15 81            [12] 3891 	dec	sp
      0044B2 15 81            [12] 3892 	dec	sp
      0044B4 15 81            [12] 3893 	dec	sp
                                   3894 ;	syntax.c:567: printf("\n\r+--------------------------------------------------+\n\r");
      0044B6 74 17            [12] 3895 	mov	a,#___str_2
      0044B8 C0 E0            [24] 3896 	push	acc
      0044BA 74 56            [12] 3897 	mov	a,#(___str_2 >> 8)
      0044BC C0 E0            [24] 3898 	push	acc
      0044BE 74 80            [12] 3899 	mov	a,#0x80
      0044C0 C0 E0            [24] 3900 	push	acc
      0044C2 12 4B 63         [24] 3901 	lcall	_printf
      0044C5 15 81            [12] 3902 	dec	sp
      0044C7 15 81            [12] 3903 	dec	sp
      0044C9 15 81            [12] 3904 	dec	sp
                                   3905 ;	syntax.c:568: int cha = getchar();
      0044CB 12 30 BA         [24] 3906 	lcall	_getchar
      0044CE AE 82            [24] 3907 	mov	r6, dpl
      0044D0 AF 83            [24] 3908 	mov	r7, dph
                                   3909 ;	syntax.c:569: if(cha < 65 || cha > 90) {
      0044D2 C3               [12] 3910 	clr	c
      0044D3 EE               [12] 3911 	mov	a,r6
      0044D4 94 41            [12] 3912 	subb	a,#0x41
      0044D6 EF               [12] 3913 	mov	a,r7
      0044D7 64 80            [12] 3914 	xrl	a,#0x80
      0044D9 94 80            [12] 3915 	subb	a,#0x80
      0044DB 40 0E            [24] 3916 	jc	00117$
      0044DD 74 5A            [12] 3917 	mov	a,#0x5a
      0044DF 9E               [12] 3918 	subb	a,r6
      0044E0 74 80            [12] 3919 	mov	a,#(0x00 ^ 0x80)
      0044E2 8F F0            [24] 3920 	mov	b,r7
      0044E4 63 F0 80         [24] 3921 	xrl	b,#0x80
      0044E7 95 F0            [12] 3922 	subb	a,b
      0044E9 50 2F            [24] 3923 	jnc	00118$
      0044EB                       3924 00117$:
                                   3925 ;	syntax.c:570: total_number_of_commands+=1;
      0044EB 90 1A F8         [24] 3926 	mov	dptr,#_total_number_of_commands
      0044EE E0               [24] 3927 	movx	a,@dptr
      0044EF 04               [12] 3928 	inc	a
      0044F0 F0               [24] 3929 	movx	@dptr,a
                                   3930 ;	syntax.c:571: recent_commands+=1;
      0044F1 90 1A FA         [24] 3931 	mov	dptr,#_recent_commands
      0044F4 E0               [24] 3932 	movx	a,@dptr
      0044F5 04               [12] 3933 	inc	a
      0044F6 F0               [24] 3934 	movx	@dptr,a
                                   3935 ;	syntax.c:572: printf("\n\r| Command received: %-31c |", cha);
      0044F7 C0 07            [24] 3936 	push	ar7
      0044F9 C0 06            [24] 3937 	push	ar6
      0044FB C0 06            [24] 3938 	push	ar6
      0044FD C0 07            [24] 3939 	push	ar7
      0044FF 74 3A            [12] 3940 	mov	a,#___str_73
      004501 C0 E0            [24] 3941 	push	acc
      004503 74 62            [12] 3942 	mov	a,#(___str_73 >> 8)
      004505 C0 E0            [24] 3943 	push	acc
      004507 74 80            [12] 3944 	mov	a,#0x80
      004509 C0 E0            [24] 3945 	push	acc
      00450B 12 4B 63         [24] 3946 	lcall	_printf
      00450E E5 81            [12] 3947 	mov	a,sp
      004510 24 FB            [12] 3948 	add	a,#0xfb
      004512 F5 81            [12] 3949 	mov	sp,a
      004514 D0 06            [24] 3950 	pop	ar6
      004516 D0 07            [24] 3951 	pop	ar7
      004518 80 0C            [24] 3952 	sjmp	00119$
      00451A                       3953 00118$:
                                   3954 ;	syntax.c:575: total_number_of_storage = total_number_of_storage + 1;
      00451A 90 1A F9         [24] 3955 	mov	dptr,#_total_number_of_storage
      00451D E0               [24] 3956 	movx	a,@dptr
      00451E 04               [12] 3957 	inc	a
      00451F F0               [24] 3958 	movx	@dptr,a
                                   3959 ;	syntax.c:576: recent_storage = recent_storage + 1;
      004520 90 1A FB         [24] 3960 	mov	dptr,#_recent_storage
      004523 E0               [24] 3961 	movx	a,@dptr
      004524 04               [12] 3962 	inc	a
      004525 F0               [24] 3963 	movx	@dptr,a
      004526                       3964 00119$:
                                   3965 ;	syntax.c:578: get_command(cha);
      004526 8E 82            [24] 3966 	mov	dpl, r6
      004528 8F 83            [24] 3967 	mov	dph, r7
      00452A 12 35 2D         [24] 3968 	lcall	_get_command
                                   3969 ;	syntax.c:580: }
      00452D 02 44 A1         [24] 3970 	ljmp	00122$
                                   3971 	.area CSEG    (CODE)
                                   3972 	.area CONST   (CODE)
                                   3973 	.area CONST   (CODE)
      0055A5                       3974 ___str_0:
      0055A5 0A                    3975 	.db 0x0a
      0055A6 0D                    3976 	.db 0x0d
      0055A7 2B 2D 2D 2D 2D 2D 2D  3977 	.ascii "+--------------------------------------------------+"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2B
      0055DB 00                    3978 	.db 0x00
                                   3979 	.area CSEG    (CODE)
                                   3980 	.area CONST   (CODE)
      0055DC                       3981 ___str_1:
      0055DC 0A                    3982 	.db 0x0a
      0055DD 0D                    3983 	.db 0x0d
      0055DE 7C 20 45 52 52 4F 52  3984 	.ascii "| ERROR: Invalid input - Please enter numbers only     |"
             3A 20 49 6E 76 61 6C
             69 64 20 69 6E 70 75
             74 20 2D 20 50 6C 65
             61 73 65 20 65 6E 74
             65 72 20 6E 75 6D 62
             65 72 73 20 6F 6E 6C
             79 20 20 20 20 20 7C
      005616 00                    3985 	.db 0x00
                                   3986 	.area CSEG    (CODE)
                                   3987 	.area CONST   (CODE)
      005617                       3988 ___str_2:
      005617 0A                    3989 	.db 0x0a
      005618 0D                    3990 	.db 0x0d
      005619 2B 2D 2D 2D 2D 2D 2D  3991 	.ascii "+--------------------------------------------------+"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2B
      00564D 0A                    3992 	.db 0x0a
      00564E 0D                    3993 	.db 0x0d
      00564F 00                    3994 	.db 0x00
                                   3995 	.area CSEG    (CODE)
                                   3996 	.area CONST   (CODE)
      005650                       3997 ___str_3:
      005650 0A                    3998 	.db 0x0a
      005651 0D                    3999 	.db 0x0d
      005652 7C 20 45 52 52 4F 52  4000 	.ascii "| ERROR: Invalid buffer size                          |"
             3A 20 49 6E 76 61 6C
             69 64 20 62 75 66 66
             65 72 20 73 69 7A 65
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 7C
      005689 00                    4001 	.db 0x00
                                   4002 	.area CSEG    (CODE)
                                   4003 	.area CONST   (CODE)
      00568A                       4004 ___str_4:
      00568A 0A                    4005 	.db 0x0a
      00568B 0D                    4006 	.db 0x0d
      00568C 7C 20 2D 20 4D 75 73  4007 	.ascii "| - Must be between %d and %d                       |"
             74 20 62 65 20 62 65
             74 77 65 65 6E 20 25
             64 20 61 6E 64 20 25
             64 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 7C
      0056C1 00                    4008 	.db 0x00
                                   4009 	.area CSEG    (CODE)
                                   4010 	.area CONST   (CODE)
      0056C2                       4011 ___str_5:
      0056C2 0A                    4012 	.db 0x0a
      0056C3 0D                    4013 	.db 0x0d
      0056C4 7C 20 2D 20 4D 75 73  4014 	.ascii "| - Must be multiple of 16                           |"
             74 20 62 65 20 6D 75
             6C 74 69 70 6C 65 20
             6F 66 20 31 36 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 7C
      0056FA 00                    4015 	.db 0x00
                                   4016 	.area CSEG    (CODE)
                                   4017 	.area CONST   (CODE)
      0056FB                       4018 ___str_6:
      0056FB 0A                    4019 	.db 0x0a
      0056FC 0D                    4020 	.db 0x0d
      0056FD 7C 20 49 6E 70 75 74  4021 	.ascii "| Input size: %-39d |"
             20 73 69 7A 65 3A 20
             25 2D 33 39 64 20 7C
      005712 00                    4022 	.db 0x00
                                   4023 	.area CSEG    (CODE)
                                   4024 	.area CONST   (CODE)
      005713                       4025 ___str_7:
      005713 0A                    4026 	.db 0x0a
      005714 0D                    4027 	.db 0x0d
      005715 7C 20 42 55 46 46 45  4028 	.ascii "| BUFFER DEALLOCATION STATUS                      |"
             52 20 44 45 41 4C 4C
             4F 43 41 54 49 4F 4E
             20 53 54 41 54 55 53
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 7C
      005748 00                    4029 	.db 0x00
                                   4030 	.area CSEG    (CODE)
                                   4031 	.area CONST   (CODE)
      005749                       4032 ___str_8:
      005749 0A                    4033 	.db 0x0a
      00574A 0D                    4034 	.db 0x0d
      00574B 7C 2D 2D 2D 2D 2D 2D  4035 	.ascii "|------------------------------------------------|"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             7C
      00577D 00                    4036 	.db 0x00
                                   4037 	.area CSEG    (CODE)
                                   4038 	.area CONST   (CODE)
      00577E                       4039 ___str_9:
      00577E 0A                    4040 	.db 0x0a
      00577F 0D                    4041 	.db 0x0d
      005780 7C 20 42 75 66 66 65  4042 	.ascii "| Buffers to Free  | %-28d |"
             72 73 20 74 6F 20 46
             72 65 65 20 20 7C 20
             25 2D 32 38 64 20 7C
      00579C 00                    4043 	.db 0x00
                                   4044 	.area CSEG    (CODE)
                                   4045 	.area CONST   (CODE)
      00579D                       4046 ___str_10:
      00579D 0A                    4047 	.db 0x0a
      00579E 0D                    4048 	.db 0x0d
      00579F 7C 20 41 6C 6C 20 62  4049 	.ascii "| All buffers successfully deallocated            |"
             75 66 66 65 72 73 20
             73 75 63 63 65 73 73
             66 75 6C 6C 79 20 64
             65 61 6C 6C 6F 63 61
             74 65 64 20 20 20 20
             20 20 20 20 20 20 20
             20 7C
      0057D2 00                    4050 	.db 0x00
                                   4051 	.area CSEG    (CODE)
                                   4052 	.area CONST   (CODE)
      0057D3                       4053 ___str_11:
      0057D3 0A                    4054 	.db 0x0a
      0057D4 0D                    4055 	.db 0x0d
      0057D5 7C 20 57 41 52 4E 49  4056 	.ascii "| WARNING: Some buffers failed to deallocate      |"
             4E 47 3A 20 53 6F 6D
             65 20 62 75 66 66 65
             72 73 20 66 61 69 6C
             65 64 20 74 6F 20 64
             65 61 6C 6C 6F 63 61
             74 65 20 20 20 20 20
             20 7C
      005808 00                    4057 	.db 0x00
                                   4058 	.area CSEG    (CODE)
                                   4059 	.area CONST   (CODE)
      005809                       4060 ___str_12:
      005809 0A                    4061 	.db 0x0a
      00580A 0D                    4062 	.db 0x0d
      00580B 2B 2D 2D 2D 2D 2D 2D  4063 	.ascii "+------------------SYSTEM STATUS-------------------+"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 53 59
             53 54 45 4D 20 53 54
             41 54 55 53 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2B
      00583F 00                    4064 	.db 0x00
                                   4065 	.area CSEG    (CODE)
                                   4066 	.area CONST   (CODE)
      005840                       4067 ___str_13:
      005840 0A                    4068 	.db 0x0a
      005841 0D                    4069 	.db 0x0d
      005842 7C 20 43 4F 4D 4D 41  4070 	.ascii "| COMMAND STATISTICS                              |"
             4E 44 20 53 54 41 54
             49 53 54 49 43 53 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 7C
      005875 00                    4071 	.db 0x00
                                   4072 	.area CSEG    (CODE)
                                   4073 	.area CONST   (CODE)
      005876                       4074 ___str_14:
      005876 0A                    4075 	.db 0x0a
      005877 0D                    4076 	.db 0x0d
      005878 7C 20 54 6F 74 61 6C  4077 	.ascii "| Total Commands   | %-28d |"
             20 43 6F 6D 6D 61 6E
             64 73 20 20 20 7C 20
             25 2D 32 38 64 20 7C
      005894 00                    4078 	.db 0x00
                                   4079 	.area CSEG    (CODE)
                                   4080 	.area CONST   (CODE)
      005895                       4081 ___str_15:
      005895 0A                    4082 	.db 0x0a
      005896 0D                    4083 	.db 0x0d
      005897 7C 20 52 65 63 65 6E  4084 	.ascii "| Recent Commands  | %-28d |"
             74 20 43 6F 6D 6D 61
             6E 64 73 20 20 7C 20
             25 2D 32 38 64 20 7C
      0058B3 00                    4085 	.db 0x00
                                   4086 	.area CSEG    (CODE)
                                   4087 	.area CONST   (CODE)
      0058B4                       4088 ___str_16:
      0058B4 0A                    4089 	.db 0x0a
      0058B5 0D                    4090 	.db 0x0d
      0058B6 7C 20 53 54 4F 52 41  4091 	.ascii "| STORAGE STATISTICS                             |"
             47 45 20 53 54 41 54
             49 53 54 49 43 53 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             7C
      0058E8 00                    4092 	.db 0x00
                                   4093 	.area CSEG    (CODE)
                                   4094 	.area CONST   (CODE)
      0058E9                       4095 ___str_17:
      0058E9 0A                    4096 	.db 0x0a
      0058EA 0D                    4097 	.db 0x0d
      0058EB 7C 20 54 6F 74 61 6C  4098 	.ascii "| Total Storage    | %-28d |"
             20 53 74 6F 72 61 67
             65 20 20 20 20 7C 20
             25 2D 32 38 64 20 7C
      005907 00                    4099 	.db 0x00
                                   4100 	.area CSEG    (CODE)
                                   4101 	.area CONST   (CODE)
      005908                       4102 ___str_18:
      005908 0A                    4103 	.db 0x0a
      005909 0D                    4104 	.db 0x0d
      00590A 7C 20 52 65 63 65 6E  4105 	.ascii "| Recent Storage   | %-28d |"
             74 20 53 74 6F 72 61
             67 65 20 20 20 7C 20
             25 2D 32 38 64 20 7C
      005926 00                    4106 	.db 0x00
                                   4107 	.area CSEG    (CODE)
                                   4108 	.area CONST   (CODE)
      005927                       4109 ___str_19:
      005927 0A                    4110 	.db 0x0a
      005928 0D                    4111 	.db 0x0d
      005929 7C 20 54 4F 54 41 4C  4112 	.ascii "| TOTAL BUFFERS IN HEAP                           |"
             20 42 55 46 46 45 52
             53 20 49 4E 20 48 45
             41 50 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 7C
      00595C 00                    4113 	.db 0x00
                                   4114 	.area CSEG    (CODE)
                                   4115 	.area CONST   (CODE)
      00595D                       4116 ___str_20:
      00595D 0A                    4117 	.db 0x0a
      00595E 0D                    4118 	.db 0x0d
      00595F 7C 20 54 6F 74 61 6C  4119 	.ascii "| Total Buffers    | %-28d |"
             20 42 75 66 66 65 72
             73 20 20 20 20 7C 20
             25 2D 32 38 64 20 7C
      00597B 00                    4120 	.db 0x00
                                   4121 	.area CSEG    (CODE)
                                   4122 	.area CONST   (CODE)
      00597C                       4123 ___str_21:
      00597C 0A                    4124 	.db 0x0a
      00597D 0D                    4125 	.db 0x0d
      00597E 2B 2D 2D 2D 2D 2D 2D  4126 	.ascii "+------------------BUFFER INFO--------------------+"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 42 55
             46 46 45 52 20 49 4E
             46 4F 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2B
      0059B1 00                    4127 	.db 0x00
                                   4128 	.area CSEG    (CODE)
                                   4129 	.area CONST   (CODE)
      0059B2                       4130 ___str_22:
      0059B2 0A                    4131 	.db 0x0a
      0059B3 0D                    4132 	.db 0x0d
      0059B4 7C 20 49 44 20 7C 20  4133 	.ascii "| ID | Start Addr  | End Addr    | Size (bytes) |"
             53 74 61 72 74 20 41
             64 64 72 20 20 7C 20
             45 6E 64 20 41 64 64
             72 20 20 20 20 7C 20
             53 69 7A 65 20 28 62
             79 74 65 73 29 20 7C
      0059E5 00                    4134 	.db 0x00
                                   4135 	.area CSEG    (CODE)
                                   4136 	.area CONST   (CODE)
      0059E6                       4137 ___str_23:
      0059E6 0A                    4138 	.db 0x0a
      0059E7 0D                    4139 	.db 0x0d
      0059E8 7C 2D 2D 2D 2D 7C 2D  4140 	.ascii "|----|-------------|-------------|--------------|"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 7C 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 7C 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 7C
      005A19 00                    4141 	.db 0x00
                                   4142 	.area CSEG    (CODE)
                                   4143 	.area CONST   (CODE)
      005A1A                       4144 ___str_24:
      005A1A 0A                    4145 	.db 0x0a
      005A1B 0D                    4146 	.db 0x0d
      005A1C 7C 20 25 2D 32 64 20  4147 	.ascii "| %-2d | %-10p | %-10p | %-11d |"
             7C 20 25 2D 31 30 70
             20 7C 20 25 2D 31 30
             70 20 7C 20 25 2D 31
             31 64 20 7C
      005A3C 00                    4148 	.db 0x00
                                   4149 	.area CSEG    (CODE)
                                   4150 	.area CONST   (CODE)
      005A3D                       4151 ___str_25:
      005A3D 0A                    4152 	.db 0x0a
      005A3E 0D                    4153 	.db 0x0d
      005A3F 7C 20 4D 45 4D 4F 52  4154 	.ascii "| MEMORY ALLOCATION STATUS BUFFER 0              |"
             59 20 41 4C 4C 4F 43
             41 54 49 4F 4E 20 53
             54 41 54 55 53 20 42
             55 46 46 45 52 20 30
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             7C
      005A71 00                    4155 	.db 0x00
                                   4156 	.area CSEG    (CODE)
                                   4157 	.area CONST   (CODE)
      005A72                       4158 ___str_26:
      005A72 0A                    4159 	.db 0x0a
      005A73 0D                    4160 	.db 0x0d
      005A74 7C 20 54 6F 74 61 6C  4161 	.ascii "| Total Space      | %-28d |"
             20 53 70 61 63 65 20
             20 20 20 20 20 7C 20
             25 2D 32 38 64 20 7C
      005A90 00                    4162 	.db 0x00
                                   4163 	.area CSEG    (CODE)
                                   4164 	.area CONST   (CODE)
      005A91                       4165 ___str_27:
      005A91 0A                    4166 	.db 0x0a
      005A92 0D                    4167 	.db 0x0d
      005A93 7C 20 4F 63 63 75 70  4168 	.ascii "| Occupied Space   | %-28d |"
             69 65 64 20 53 70 61
             63 65 20 20 20 7C 20
             25 2D 32 38 64 20 7C
      005AAF 00                    4169 	.db 0x00
                                   4170 	.area CSEG    (CODE)
                                   4171 	.area CONST   (CODE)
      005AB0                       4172 ___str_28:
      005AB0 0A                    4173 	.db 0x0a
      005AB1 0D                    4174 	.db 0x0d
      005AB2 7C 20 46 72 65 65 20  4175 	.ascii "| Free Space       | %-28d |"
             53 70 61 63 65 20 20
             20 20 20 20 20 7C 20
             25 2D 32 38 64 20 7C
      005ACE 00                    4176 	.db 0x00
                                   4177 	.area CSEG    (CODE)
                                   4178 	.area CONST   (CODE)
      005ACF                       4179 ___str_29:
      005ACF 0A                    4180 	.db 0x0a
      005AD0 0D                    4181 	.db 0x0d
      005AD1 7C 20 42 55 46 46 45  4182 	.ascii "| BUFFER 0 CLEAR STATUS                           |"
             52 20 30 20 43 4C 45
             41 52 20 53 54 41 54
             55 53 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 7C
      005B04 00                    4183 	.db 0x00
                                   4184 	.area CSEG    (CODE)
                                   4185 	.area CONST   (CODE)
      005B05                       4186 ___str_30:
      005B05 0A                    4187 	.db 0x0a
      005B06 0D                    4188 	.db 0x0d
      005B07 7C 20 42 75 66 66 65  4189 	.ascii "| Buffer 0 is not initialized                     |"
             72 20 30 20 69 73 20
             6E 6F 74 20 69 6E 69
             74 69 61 6C 69 7A 65
             64 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 7C
      005B3A 00                    4190 	.db 0x00
                                   4191 	.area CSEG    (CODE)
                                   4192 	.area CONST   (CODE)
      005B3B                       4193 ___str_31:
      005B3B 0A                    4194 	.db 0x0a
      005B3C 0D                    4195 	.db 0x0d
      005B3D 7C 20 42 75 66 66 65  4196 	.ascii "| Buffer Size      | %-28d |"
             72 20 53 69 7A 65 20
             20 20 20 20 20 7C 20
             25 2D 32 38 64 20 7C
      005B59 00                    4197 	.db 0x00
                                   4198 	.area CSEG    (CODE)
                                   4199 	.area CONST   (CODE)
      005B5A                       4200 ___str_32:
      005B5A 0A                    4201 	.db 0x0a
      005B5B 0D                    4202 	.db 0x0d
      005B5C 7C 20 53 74 61 74 75  4203 	.ascii "| Status          | %-28s |"
             73 20 20 20 20 20 20
             20 20 20 20 7C 20 25
             2D 32 38 73 20 7C
      005B77 00                    4204 	.db 0x00
                                   4205 	.area CSEG    (CODE)
                                   4206 	.area CONST   (CODE)
      005B78                       4207 ___str_33:
      005B78 44 61 74 61 20 45 72  4208 	.ascii "Data Erased"
             61 73 65 64
      005B83 00                    4209 	.db 0x00
                                   4210 	.area CSEG    (CODE)
                                   4211 	.area CONST   (CODE)
      005B84                       4212 ___str_34:
      005B84 0A                    4213 	.db 0x0a
      005B85 0D                    4214 	.db 0x0d
      005B86 2B 2D 2D 2D 2D 2D 2D  4215 	.ascii "+----------------BUFFER CREATION------------------+"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 42 55 46 46
             45 52 20 43 52 45 41
             54 49 4F 4E 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2B
      005BB9 00                    4216 	.db 0x00
                                   4217 	.area CSEG    (CODE)
                                   4218 	.area CONST   (CODE)
      005BBA                       4219 ___str_35:
      005BBA 0A                    4220 	.db 0x0a
      005BBB 0D                    4221 	.db 0x0d
      005BBC 7C 20 45 6E 74 65 72  4222 	.ascii "| Enter buffer size (50-500): "
             20 62 75 66 66 65 72
             20 73 69 7A 65 20 28
             35 30 2D 35 30 30 29
             3A 20
      005BDA 00                    4223 	.db 0x00
                                   4224 	.area CSEG    (CODE)
                                   4225 	.area CONST   (CODE)
      005BDB                       4226 ___str_36:
      005BDB 0A                    4227 	.db 0x0a
      005BDC 0D                    4228 	.db 0x0d
      005BDD 20 45 52 52 4F 52 20  4229 	.ascii " ERROR : Invalid request"
             3A 20 49 6E 76 61 6C
             69 64 20 72 65 71 75
             65 73 74
      005BF5 0A                    4230 	.db 0x0a
      005BF6 0D                    4231 	.db 0x0d
      005BF7 00                    4232 	.db 0x00
                                   4233 	.area CSEG    (CODE)
                                   4234 	.area CONST   (CODE)
      005BF8                       4235 ___str_37:
      005BF8 0A                    4236 	.db 0x0a
      005BF9 0D                    4237 	.db 0x0d
      005BFA 7C 20 52 65 71 75 65  4238 	.ascii "| Requested Size: %-32d |"
             73 74 65 64 20 53 69
             7A 65 3A 20 25 2D 33
             32 64 20 7C
      005C13 00                    4239 	.db 0x00
                                   4240 	.area CSEG    (CODE)
                                   4241 	.area CONST   (CODE)
      005C14                       4242 ___str_38:
      005C14 0A                    4243 	.db 0x0a
      005C15 0D                    4244 	.db 0x0d
      005C16 7C 20 45 52 52 4F 52  4245 	.ascii "| ERROR: Memory allocation failed                  |"
             3A 20 4D 65 6D 6F 72
             79 20 61 6C 6C 6F 63
             61 74 69 6F 6E 20 66
             61 69 6C 65 64 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 7C
      005C4A 00                    4246 	.db 0x00
                                   4247 	.area CSEG    (CODE)
                                   4248 	.area CONST   (CODE)
      005C4B                       4249 ___str_39:
      005C4B 0A                    4250 	.db 0x0a
      005C4C 0D                    4251 	.db 0x0d
      005C4D 7C 20 54 72 79 20 73  4252 	.ascii "| Try smaller size with '+' command                |"
             6D 61 6C 6C 65 72 20
             73 69 7A 65 20 77 69
             74 68 20 27 2B 27 20
             63 6F 6D 6D 61 6E 64
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 7C
      005C81 00                    4253 	.db 0x00
                                   4254 	.area CSEG    (CODE)
                                   4255 	.area CONST   (CODE)
      005C82                       4256 ___str_40:
      005C82 0A                    4257 	.db 0x0a
      005C83 0D                    4258 	.db 0x0d
      005C84 7C 20 53 55 43 43 45  4259 	.ascii "| SUCCESS: Buffer created successfully            |"
             53 53 3A 20 42 75 66
             66 65 72 20 63 72 65
             61 74 65 64 20 73 75
             63 63 65 73 73 66 75
             6C 6C 79 20 20 20 20
             20 20 20 20 20 20 20
             20 7C
      005CB7 00                    4260 	.db 0x00
                                   4261 	.area CSEG    (CODE)
                                   4262 	.area CONST   (CODE)
      005CB8                       4263 ___str_41:
      005CB8 0A                    4264 	.db 0x0a
      005CB9 0D                    4265 	.db 0x0d
      005CBA 2B 2D 2D 2D 2D 2D 2D  4266 	.ascii "+----------------BUFFER DELETION------------------+"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 42 55 46 46
             45 52 20 44 45 4C 45
             54 49 4F 4E 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2B
      005CED 00                    4267 	.db 0x00
                                   4268 	.area CSEG    (CODE)
                                   4269 	.area CONST   (CODE)
      005CEE                       4270 ___str_42:
      005CEE 0A                    4271 	.db 0x0a
      005CEF 0D                    4272 	.db 0x0d
      005CF0 7C 20 45 6E 74 65 72  4273 	.ascii "| Enter buffer number (0-102): "
             20 62 75 66 66 65 72
             20 6E 75 6D 62 65 72
             20 28 30 2D 31 30 32
             29 3A 20
      005D0F 00                    4274 	.db 0x00
                                   4275 	.area CSEG    (CODE)
                                   4276 	.area CONST   (CODE)
      005D10                       4277 ___str_43:
      005D10 0A                    4278 	.db 0x0a
      005D11 0D                    4279 	.db 0x0d
      005D12 7C 20 45 52 52 4F 52  4280 	.ascii "| ERROR: Cannot delete Buffer 0                    |"
             3A 20 43 61 6E 6E 6F
             74 20 64 65 6C 65 74
             65 20 42 75 66 66 65
             72 20 30 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 7C
      005D46 00                    4281 	.db 0x00
                                   4282 	.area CSEG    (CODE)
                                   4283 	.area CONST   (CODE)
      005D47                       4284 ___str_44:
      005D47 0A                    4285 	.db 0x0a
      005D48 0D                    4286 	.db 0x0d
      005D49 7C 20 45 52 52 4F 52  4287 	.ascii "| ERROR: Invalid delete request                  |"
             3A 20 49 6E 76 61 6C
             69 64 20 64 65 6C 65
             74 65 20 72 65 71 75
             65 73 74 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             7C
      005D7B 00                    4288 	.db 0x00
                                   4289 	.area CSEG    (CODE)
                                   4290 	.area CONST   (CODE)
      005D7C                       4291 ___str_45:
      005D7C 0A                    4292 	.db 0x0a
      005D7D 0D                    4293 	.db 0x0d
      005D7E 7C 20 53 55 43 43 45  4294 	.ascii "| SUCCESS: Buffer %-2d deleted                     |"
             53 53 3A 20 42 75 66
             66 65 72 20 25 2D 32
             64 20 64 65 6C 65 74
             65 64 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 7C
      005DB2 00                    4295 	.db 0x00
                                   4296 	.area CSEG    (CODE)
                                   4297 	.area CONST   (CODE)
      005DB3                       4298 ___str_46:
      005DB3 0A                    4299 	.db 0x0a
      005DB4 0D                    4300 	.db 0x0d
      005DB5 2B 2D 2D 2D 2D 2D 2D  4301 	.ascii "+---------------BUFFER 0 CONTENTS-----------------+"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 42 55 46 46 45
             52 20 30 20 43 4F 4E
             54 45 4E 54 53 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2B
      005DE8 00                    4302 	.db 0x00
                                   4303 	.area CSEG    (CODE)
                                   4304 	.area CONST   (CODE)
      005DE9                       4305 ___str_47:
      005DE9 0A                    4306 	.db 0x0a
      005DEA 0D                    4307 	.db 0x0d
      005DEB 7C 20 41 64 64 72 65  4308 	.ascii "| Address    | Data                               |"
             73 73 20 20 20 20 7C
             20 44 61 74 61 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 7C
      005E1E 00                    4309 	.db 0x00
                                   4310 	.area CSEG    (CODE)
                                   4311 	.area CONST   (CODE)
      005E1F                       4312 ___str_48:
      005E1F 0A                    4313 	.db 0x0a
      005E20 0D                    4314 	.db 0x0d
      005E21 7C 2D 2D 2D 2D 2D 2D  4315 	.ascii "|------------|---------------------------------------|"
             2D 2D 2D 2D 2D 2D 7C
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 7C
      005E57 00                    4316 	.db 0x00
                                   4317 	.area CSEG    (CODE)
                                   4318 	.area CONST   (CODE)
      005E58                       4319 ___str_49:
      005E58 0A                    4320 	.db 0x0a
      005E59 0D                    4321 	.db 0x0d
      005E5A 00                    4322 	.db 0x00
                                   4323 	.area CSEG    (CODE)
                                   4324 	.area CONST   (CODE)
      005E5B                       4325 ___str_50:
      005E5B 42 55 46 46 45 52 20  4326 	.ascii "BUFFER 0 DOES NOT EXIST"
             30 20 44 4F 45 53 20
             4E 4F 54 20 45 58 49
             53 54
      005E72 0A                    4327 	.db 0x0a
      005E73 0D                    4328 	.db 0x0d
      005E74 00                    4329 	.db 0x00
                                   4330 	.area CSEG    (CODE)
                                   4331 	.area CONST   (CODE)
      005E75                       4332 ___str_51:
      005E75 0A                    4333 	.db 0x0a
      005E76 0D                    4334 	.db 0x0d
      005E77 7C 20 25 30 34 58 20  4335 	.ascii "| %04X      |"
             20 20 20 20 20 7C
      005E84 00                    4336 	.db 0x00
                                   4337 	.area CSEG    (CODE)
                                   4338 	.area CONST   (CODE)
      005E85                       4339 ___str_52:
      005E85 20 25 30 32 58        4340 	.ascii " %02X"
      005E8A 00                    4341 	.db 0x00
                                   4342 	.area CSEG    (CODE)
                                   4343 	.area CONST   (CODE)
      005E8B                       4344 ___str_53:
      005E8B 20 20 20              4345 	.ascii "   "
      005E8E 00                    4346 	.db 0x00
                                   4347 	.area CSEG    (CODE)
                                   4348 	.area CONST   (CODE)
      005E8F                       4349 ___str_54:
      005E8F 20 7C                 4350 	.ascii " |"
      005E91 00                    4351 	.db 0x00
                                   4352 	.area CSEG    (CODE)
                                   4353 	.area CONST   (CODE)
      005E92                       4354 ___str_55:
      005E92 0A                    4355 	.db 0x0a
      005E93 0D                    4356 	.db 0x0d
      005E94 2B 3D 3D 3D 3D 3D 3D  4357 	.ascii "+==================================================+"
             3D 3D 3D 3D 3D 3D 3D
             3D 3D 3D 3D 3D 3D 3D
             3D 3D 3D 3D 3D 3D 3D
             3D 3D 3D 3D 3D 3D 3D
             3D 3D 3D 3D 3D 3D 3D
             3D 3D 3D 3D 3D 3D 3D
             3D 3D 2B
      005EC8 00                    4358 	.db 0x00
                                   4359 	.area CSEG    (CODE)
                                   4360 	.area CONST   (CODE)
      005EC9                       4361 ___str_56:
      005EC9 0A                    4362 	.db 0x0a
      005ECA 0D                    4363 	.db 0x0d
      005ECB 7C 20 20 20 20 20 20  4364 	.ascii "|           BUFFER MANAGEMENT SYSTEM                |"
             20 20 20 20 20 42 55
             46 46 45 52 20 4D 41
             4E 41 47 45 4D 45 4E
             54 20 53 59 53 54 45
             4D 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 7C
      005F00 00                    4365 	.db 0x00
                                   4366 	.area CSEG    (CODE)
                                   4367 	.area CONST   (CODE)
      005F01                       4368 ___str_57:
      005F01 0A                    4369 	.db 0x0a
      005F02 0D                    4370 	.db 0x0d
      005F03 7C 20 45 6E 74 65 72  4371 	.ascii "| Enter initial buffer size (32-5120): "
             20 69 6E 69 74 69 61
             6C 20 62 75 66 66 65
             72 20 73 69 7A 65 20
             28 33 32 2D 35 31 32
             30 29 3A 20
      005F2A 00                    4372 	.db 0x00
                                   4373 	.area CSEG    (CODE)
                                   4374 	.area CONST   (CODE)
      005F2B                       4375 ___str_58:
      005F2B 0A                    4376 	.db 0x0a
      005F2C 0D                    4377 	.db 0x0d
      005F2D 7C 20 45 52 52 4F 52  4378 	.ascii "| ERROR: Buffer 1 allocation failed                |"
             3A 20 42 75 66 66 65
             72 20 31 20 61 6C 6C
             6F 63 61 74 69 6F 6E
             20 66 61 69 6C 65 64
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 7C
      005F61 00                    4379 	.db 0x00
                                   4380 	.area CSEG    (CODE)
                                   4381 	.area CONST   (CODE)
      005F62                       4382 ___str_59:
      005F62 0A                    4383 	.db 0x0a
      005F63 0D                    4384 	.db 0x0d
      005F64 7C 20 54 72 79 20 73  4385 	.ascii "| Try smaller size                                |"
             6D 61 6C 6C 65 72 20
             73 69 7A 65 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 7C
      005F97 00                    4386 	.db 0x00
                                   4387 	.area CSEG    (CODE)
                                   4388 	.area CONST   (CODE)
      005F98                       4389 ___str_60:
      005F98 0A                    4390 	.db 0x0a
      005F99 0D                    4391 	.db 0x0d
      005F9A 2B 2D 2D 2D 2D 2D 2D  4392 	.ascii "+------------------------------------------------+"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2B
      005FCC 0A                    4393 	.db 0x0a
      005FCD 0D                    4394 	.db 0x0d
      005FCE 00                    4395 	.db 0x00
                                   4396 	.area CSEG    (CODE)
                                   4397 	.area CONST   (CODE)
      005FCF                       4398 ___str_61:
      005FCF 0A                    4399 	.db 0x0a
      005FD0 0D                    4400 	.db 0x0d
      005FD1 7C 20 45 52 52 4F 52  4401 	.ascii "| ERROR: Buffer 2 allocation failed                |"
             3A 20 42 75 66 66 65
             72 20 32 20 61 6C 6C
             6F 63 61 74 69 6F 6E
             20 66 61 69 6C 65 64
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 7C
      006005 00                    4402 	.db 0x00
                                   4403 	.area CSEG    (CODE)
                                   4404 	.area CONST   (CODE)
      006006                       4405 ___str_62:
      006006 0A                    4406 	.db 0x0a
      006007 0D                    4407 	.db 0x0d
      006008 2B 2D 2D 2D 2D 2D 2D  4408 	.ascii "+----------------BUFFER STATUS--------------------+"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 42 55 46 46
             45 52 20 53 54 41 54
             55 53 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2B
      00603B 00                    4409 	.db 0x00
                                   4410 	.area CSEG    (CODE)
                                   4411 	.area CONST   (CODE)
      00603C                       4412 ___str_63:
      00603C 0A                    4413 	.db 0x0a
      00603D 0D                    4414 	.db 0x0d
      00603E 7C 20 42 75 66 66 65  4415 	.ascii "| Buffer 1 | Addr: %-10p | Size: %-6d   |"
             72 20 31 20 7C 20 41
             64 64 72 3A 20 25 2D
             31 30 70 20 7C 20 53
             69 7A 65 3A 20 25 2D
             36 64 20 20 20 7C
      006067 00                    4416 	.db 0x00
                                   4417 	.area CSEG    (CODE)
                                   4418 	.area CONST   (CODE)
      006068                       4419 ___str_64:
      006068 0A                    4420 	.db 0x0a
      006069 0D                    4421 	.db 0x0d
      00606A 7C 20 42 75 66 66 65  4422 	.ascii "| Buffer 2 | Addr: %-10p | Size: %-6d   |"
             72 20 32 20 7C 20 41
             64 64 72 3A 20 25 2D
             31 30 70 20 7C 20 53
             69 7A 65 3A 20 25 2D
             36 64 20 20 20 7C
      006093 00                    4423 	.db 0x00
                                   4424 	.area CSEG    (CODE)
                                   4425 	.area CONST   (CODE)
      006094                       4426 ___str_65:
      006094 0A                    4427 	.db 0x0a
      006095 0D                    4428 	.db 0x0d
      006096 2B 2D 2D 2D 2D 2D 2D  4429 	.ascii "+------------------COMMANDS----------------------+"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 43 4F
             4D 4D 41 4E 44 53 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2B
      0060C8 00                    4430 	.db 0x00
                                   4431 	.area CSEG    (CODE)
                                   4432 	.area CONST   (CODE)
      0060C9                       4433 ___str_66:
      0060C9 0A                    4434 	.db 0x0a
      0060CA 0D                    4435 	.db 0x0d
      0060CB 7C 20 5B 41 2D 5A 5D  4436 	.ascii "| [A-Z] : Store character in Buffer 0           |"
             20 3A 20 53 74 6F 72
             65 20 63 68 61 72 61
             63 74 65 72 20 69 6E
             20 42 75 66 66 65 72
             20 30 20 20 20 20 20
             20 20 20 20 20 20 7C
      0060FC 00                    4437 	.db 0x00
                                   4438 	.area CSEG    (CODE)
                                   4439 	.area CONST   (CODE)
      0060FD                       4440 ___str_67:
      0060FD 0A                    4441 	.db 0x0a
      0060FE 0D                    4442 	.db 0x0d
      0060FF 7C 20 2B 20 20 20 20  4443 	.ascii "| +     : Create new buffer                     |"
             20 3A 20 43 72 65 61
             74 65 20 6E 65 77 20
             62 75 66 66 65 72 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 7C
      006130 00                    4444 	.db 0x00
                                   4445 	.area CSEG    (CODE)
                                   4446 	.area CONST   (CODE)
      006131                       4447 ___str_68:
      006131 0A                    4448 	.db 0x0a
      006132 0D                    4449 	.db 0x0d
      006133 7C 20 2D 20 20 20 20  4450 	.ascii "| -     : Delete buffer                         |"
             20 3A 20 44 65 6C 65
             74 65 20 62 75 66 66
             65 72 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 7C
      006164 00                    4451 	.db 0x00
                                   4452 	.area CSEG    (CODE)
                                   4453 	.area CONST   (CODE)
      006165                       4454 ___str_69:
      006165 0A                    4455 	.db 0x0a
      006166 0D                    4456 	.db 0x0d
      006167 7C 20 3F 20 20 20 20  4457 	.ascii "| ?     : Show system status                    |"
             20 3A 20 53 68 6F 77
             20 73 79 73 74 65 6D
             20 73 74 61 74 75 73
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 7C
      006198 00                    4458 	.db 0x00
                                   4459 	.area CSEG    (CODE)
                                   4460 	.area CONST   (CODE)
      006199                       4461 ___str_70:
      006199 0A                    4462 	.db 0x0a
      00619A 0D                    4463 	.db 0x0d
      00619B 7C 20 3D 20 20 20 20  4464 	.ascii "| =     : Display Buffer 0 contents             |"
             20 3A 20 44 69 73 70
             6C 61 79 20 42 75 66
             66 65 72 20 30 20 63
             6F 6E 74 65 6E 74 73
             20 20 20 20 20 20 20
             20 20 20 20 20 20 7C
      0061CC 00                    4465 	.db 0x00
                                   4466 	.area CSEG    (CODE)
                                   4467 	.area CONST   (CODE)
      0061CD                       4468 ___str_71:
      0061CD 0A                    4469 	.db 0x0a
      0061CE 0D                    4470 	.db 0x0d
      0061CF 7C 20 40 20 20 20 20  4471 	.ascii "| @     : Reset system                          |"
             20 3A 20 52 65 73 65
             74 20 73 79 73 74 65
             6D 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 7C
      006200 00                    4472 	.db 0x00
                                   4473 	.area CSEG    (CODE)
                                   4474 	.area CONST   (CODE)
      006201                       4475 ___str_72:
      006201 0A                    4476 	.db 0x0a
      006202 0D                    4477 	.db 0x0d
      006203 7C 20 52 65 61 64 79  4478 	.ascii "| Ready for input. Enter uppercase chars (A-Z):    |"
             20 66 6F 72 20 69 6E
             70 75 74 2E 20 45 6E
             74 65 72 20 75 70 70
             65 72 63 61 73 65 20
             63 68 61 72 73 20 28
             41 2D 5A 29 3A 20 20
             20 20 7C
      006237 0A                    4479 	.db 0x0a
      006238 0D                    4480 	.db 0x0d
      006239 00                    4481 	.db 0x00
                                   4482 	.area CSEG    (CODE)
                                   4483 	.area CONST   (CODE)
      00623A                       4484 ___str_73:
      00623A 0A                    4485 	.db 0x0a
      00623B 0D                    4486 	.db 0x0d
      00623C 7C 20 43 6F 6D 6D 61  4487 	.ascii "| Command received: %-31c |"
             6E 64 20 72 65 63 65
             69 76 65 64 3A 20 25
             2D 33 31 63 20 7C
      006257 00                    4488 	.db 0x00
                                   4489 	.area CSEG    (CODE)
                                   4490 	.area CONST   (CODE)
      006258                       4491 ___str_74:
      006258 0A                    4492 	.db 0x0a
      006259 0D                    4493 	.db 0x0d
      00625A 7C 20 53 74 6F 72 61  4494 	.ascii "| Storage: Total=%-4d Recent=%-4d Addr=%-10p |"
             67 65 3A 20 54 6F 74
             61 6C 3D 25 2D 34 64
             20 52 65 63 65 6E 74
             3D 25 2D 34 64 20 41
             64 64 72 3D 25 2D 31
             30 70 20 7C
      006288 0A                    4495 	.db 0x0a
      006289 0D                    4496 	.db 0x0d
      00628A 00                    4497 	.db 0x00
                                   4498 	.area CSEG    (CODE)
                                   4499 	.area CONST   (CODE)
      00628B                       4500 ___str_75:
      00628B 0A                    4501 	.db 0x0a
      00628C 0D                    4502 	.db 0x0d
      00628D 7C 20 4E 4F 54 49 43  4503 	.ascii "| NOTICE: Buffer 0 is full - Storage stopped        |"
             45 3A 20 42 75 66 66
             65 72 20 30 20 69 73
             20 66 75 6C 6C 20 2D
             20 53 74 6F 72 61 67
             65 20 73 74 6F 70 70
             65 64 20 20 20 20 20
             20 20 20 7C
      0062C2 00                    4504 	.db 0x00
                                   4505 	.area CSEG    (CODE)
                                   4506 	.area CONST   (CODE)
      0062C3                       4507 ___str_76:
      0062C3 0A                    4508 	.db 0x0a
      0062C4 0D                    4509 	.db 0x0d
      0062C5 7C 20 45 6E 74 65 72  4510 	.ascii "| Enter command (+, -, ?, =, @):                   |"
             20 63 6F 6D 6D 61 6E
             64 20 28 2B 2C 20 2D
             2C 20 3F 2C 20 3D 2C
             20 40 29 3A 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 7C
      0062F9 00                    4511 	.db 0x00
                                   4512 	.area CSEG    (CODE)
                                   4513 	.area XINIT   (CODE)
      006307                       4514 __xinit__index_of_buffers:
      006307 00                    4515 	.db #0x00	; 0
      006308                       4516 __xinit__total_number_of_commands:
      006308 00                    4517 	.db #0x00	; 0
      006309                       4518 __xinit__total_number_of_storage:
      006309 00                    4519 	.db #0x00	; 0
      00630A                       4520 __xinit__recent_commands:
      00630A 00                    4521 	.db #0x00	; 0
      00630B                       4522 __xinit__recent_storage:
      00630B 00                    4523 	.db #0x00	; 0
      00630C                       4524 __xinit__recived_bytes:
      00630C 00                    4525 	.db #0x00	; 0
      00630D                       4526 __xinit__wr:
      00630D 00 00 00              4527 	.byte #0x00,#0x00,#0x00
      006310                       4528 __xinit__pointer1:
      006310 00 00                 4529 	.byte #0x00,#0x00
      006312                       4530 __xinit__pointer2:
      006312 00 00                 4531 	.byte #0x00,#0x00
                                   4532 	.area CABS    (ABS,CODE)
