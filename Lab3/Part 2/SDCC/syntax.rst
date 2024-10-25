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
                                     13 	.globl _init_uart
                                     14 	.globl ___sdcc_external_startup
                                     15 	.globl _dataout
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
                                    217 	.globl _recived_bytes
                                    218 	.globl _recent_storage
                                    219 	.globl _recent_commands
                                    220 	.globl _total_number_of_storage
                                    221 	.globl _total_number_of_commands
                                    222 	.globl _get_buf_value_PARM_3
                                    223 	.globl _get_buf_value_PARM_2
                                    224 	.globl _array_for_nodes
                                    225 	.globl _dataout_PARM_2
                                    226 	.globl _putchar
                                    227 	.globl _getchar
                                    228 	.globl _get_buf_value
                                    229 	.globl _sendUint32ToUART
                                    230 	.globl _print_prompt
                                    231 	.globl _buffer0_dump
                                    232 ;--------------------------------------------------------
                                    233 ; special function registers
                                    234 ;--------------------------------------------------------
                                    235 	.area RSEG    (ABS,DATA)
      000000                        236 	.org 0x0000
                           000080   237 _P0	=	0x0080
                           000081   238 _SP	=	0x0081
                           000082   239 _DPL	=	0x0082
                           000083   240 _DPH	=	0x0083
                           000087   241 _PCON	=	0x0087
                           000088   242 _TCON	=	0x0088
                           000089   243 _TMOD	=	0x0089
                           00008A   244 _TL0	=	0x008a
                           00008B   245 _TL1	=	0x008b
                           00008C   246 _TH0	=	0x008c
                           00008D   247 _TH1	=	0x008d
                           000090   248 _P1	=	0x0090
                           000098   249 _SCON	=	0x0098
                           000099   250 _SBUF	=	0x0099
                           0000A0   251 _P2	=	0x00a0
                           0000A8   252 _IE	=	0x00a8
                           0000B0   253 _P3	=	0x00b0
                           0000B8   254 _IP	=	0x00b8
                           0000D0   255 _PSW	=	0x00d0
                           0000E0   256 _ACC	=	0x00e0
                           0000F0   257 _B	=	0x00f0
                           0000C8   258 _T2CON	=	0x00c8
                           0000CA   259 _RCAP2L	=	0x00ca
                           0000CB   260 _RCAP2H	=	0x00cb
                           0000CC   261 _TL2	=	0x00cc
                           0000CD   262 _TH2	=	0x00cd
                           00008E   263 _AUXR	=	0x008e
                           0000A2   264 _AUXR1	=	0x00a2
                           000097   265 _CKRL	=	0x0097
                           00008F   266 _CKCON0	=	0x008f
                           0000AF   267 _CKCON1	=	0x00af
                           0000FA   268 _CCAP0H	=	0x00fa
                           0000FB   269 _CCAP1H	=	0x00fb
                           0000FC   270 _CCAP2H	=	0x00fc
                           0000FD   271 _CCAP3H	=	0x00fd
                           0000FE   272 _CCAP4H	=	0x00fe
                           0000EA   273 _CCAP0L	=	0x00ea
                           0000EB   274 _CCAP1L	=	0x00eb
                           0000EC   275 _CCAP2L	=	0x00ec
                           0000ED   276 _CCAP3L	=	0x00ed
                           0000EE   277 _CCAP4L	=	0x00ee
                           0000DA   278 _CCAPM0	=	0x00da
                           0000DB   279 _CCAPM1	=	0x00db
                           0000DC   280 _CCAPM2	=	0x00dc
                           0000DD   281 _CCAPM3	=	0x00dd
                           0000DE   282 _CCAPM4	=	0x00de
                           0000D8   283 _CCON	=	0x00d8
                           0000F9   284 _CH	=	0x00f9
                           0000E9   285 _CL	=	0x00e9
                           0000D9   286 _CMOD	=	0x00d9
                           0000A8   287 _IEN0	=	0x00a8
                           0000B1   288 _IEN1	=	0x00b1
                           0000B8   289 _IPL0	=	0x00b8
                           0000B7   290 _IPH0	=	0x00b7
                           0000B2   291 _IPL1	=	0x00b2
                           0000B3   292 _IPH1	=	0x00b3
                           0000C0   293 _P4	=	0x00c0
                           0000E8   294 _P5	=	0x00e8
                           0000A6   295 _WDTRST	=	0x00a6
                           0000A7   296 _WDTPRG	=	0x00a7
                           0000A9   297 _SADDR	=	0x00a9
                           0000B9   298 _SADEN	=	0x00b9
                           0000C3   299 _SPCON	=	0x00c3
                           0000C4   300 _SPSTA	=	0x00c4
                           0000C5   301 _SPDAT	=	0x00c5
                           0000C9   302 _T2MOD	=	0x00c9
                           00009B   303 _BDRCON	=	0x009b
                           00009A   304 _BRL	=	0x009a
                           00009C   305 _KBLS	=	0x009c
                           00009D   306 _KBE	=	0x009d
                           00009E   307 _KBF	=	0x009e
                           0000D2   308 _EECON	=	0x00d2
                                    309 ;--------------------------------------------------------
                                    310 ; special function bits
                                    311 ;--------------------------------------------------------
                                    312 	.area RSEG    (ABS,DATA)
      000000                        313 	.org 0x0000
                           000080   314 _P0_0	=	0x0080
                           000081   315 _P0_1	=	0x0081
                           000082   316 _P0_2	=	0x0082
                           000083   317 _P0_3	=	0x0083
                           000084   318 _P0_4	=	0x0084
                           000085   319 _P0_5	=	0x0085
                           000086   320 _P0_6	=	0x0086
                           000087   321 _P0_7	=	0x0087
                           000088   322 _IT0	=	0x0088
                           000089   323 _IE0	=	0x0089
                           00008A   324 _IT1	=	0x008a
                           00008B   325 _IE1	=	0x008b
                           00008C   326 _TR0	=	0x008c
                           00008D   327 _TF0	=	0x008d
                           00008E   328 _TR1	=	0x008e
                           00008F   329 _TF1	=	0x008f
                           000090   330 _P1_0	=	0x0090
                           000091   331 _P1_1	=	0x0091
                           000092   332 _P1_2	=	0x0092
                           000093   333 _P1_3	=	0x0093
                           000094   334 _P1_4	=	0x0094
                           000095   335 _P1_5	=	0x0095
                           000096   336 _P1_6	=	0x0096
                           000097   337 _P1_7	=	0x0097
                           000098   338 _RI	=	0x0098
                           000099   339 _TI	=	0x0099
                           00009A   340 _RB8	=	0x009a
                           00009B   341 _TB8	=	0x009b
                           00009C   342 _REN	=	0x009c
                           00009D   343 _SM2	=	0x009d
                           00009E   344 _SM1	=	0x009e
                           00009F   345 _SM0	=	0x009f
                           0000A0   346 _P2_0	=	0x00a0
                           0000A1   347 _P2_1	=	0x00a1
                           0000A2   348 _P2_2	=	0x00a2
                           0000A3   349 _P2_3	=	0x00a3
                           0000A4   350 _P2_4	=	0x00a4
                           0000A5   351 _P2_5	=	0x00a5
                           0000A6   352 _P2_6	=	0x00a6
                           0000A7   353 _P2_7	=	0x00a7
                           0000A8   354 _EX0	=	0x00a8
                           0000A9   355 _ET0	=	0x00a9
                           0000AA   356 _EX1	=	0x00aa
                           0000AB   357 _ET1	=	0x00ab
                           0000AC   358 _ES	=	0x00ac
                           0000AF   359 _EA	=	0x00af
                           0000B0   360 _P3_0	=	0x00b0
                           0000B1   361 _P3_1	=	0x00b1
                           0000B2   362 _P3_2	=	0x00b2
                           0000B3   363 _P3_3	=	0x00b3
                           0000B4   364 _P3_4	=	0x00b4
                           0000B5   365 _P3_5	=	0x00b5
                           0000B6   366 _P3_6	=	0x00b6
                           0000B7   367 _P3_7	=	0x00b7
                           0000B0   368 _RXD	=	0x00b0
                           0000B1   369 _TXD	=	0x00b1
                           0000B2   370 _INT0	=	0x00b2
                           0000B3   371 _INT1	=	0x00b3
                           0000B4   372 _T0	=	0x00b4
                           0000B5   373 _T1	=	0x00b5
                           0000B6   374 _WR	=	0x00b6
                           0000B7   375 _RD	=	0x00b7
                           0000B8   376 _PX0	=	0x00b8
                           0000B9   377 _PT0	=	0x00b9
                           0000BA   378 _PX1	=	0x00ba
                           0000BB   379 _PT1	=	0x00bb
                           0000BC   380 _PS	=	0x00bc
                           0000D0   381 _P	=	0x00d0
                           0000D1   382 _F1	=	0x00d1
                           0000D2   383 _OV	=	0x00d2
                           0000D3   384 _RS0	=	0x00d3
                           0000D4   385 _RS1	=	0x00d4
                           0000D5   386 _F0	=	0x00d5
                           0000D6   387 _AC	=	0x00d6
                           0000D7   388 _CY	=	0x00d7
                           0000AD   389 _ET2	=	0x00ad
                           0000BD   390 _PT2	=	0x00bd
                           0000C8   391 _T2CON_0	=	0x00c8
                           0000C9   392 _T2CON_1	=	0x00c9
                           0000CA   393 _T2CON_2	=	0x00ca
                           0000CB   394 _T2CON_3	=	0x00cb
                           0000CC   395 _T2CON_4	=	0x00cc
                           0000CD   396 _T2CON_5	=	0x00cd
                           0000CE   397 _T2CON_6	=	0x00ce
                           0000CF   398 _T2CON_7	=	0x00cf
                           0000C8   399 _CP_RL2	=	0x00c8
                           0000C9   400 _C_T2	=	0x00c9
                           0000CA   401 _TR2	=	0x00ca
                           0000CB   402 _EXEN2	=	0x00cb
                           0000CC   403 _TCLK	=	0x00cc
                           0000CD   404 _RCLK	=	0x00cd
                           0000CE   405 _EXF2	=	0x00ce
                           0000CF   406 _TF2	=	0x00cf
                           0000DF   407 _CF	=	0x00df
                           0000DE   408 _CR	=	0x00de
                           0000DC   409 _CCF4	=	0x00dc
                           0000DB   410 _CCF3	=	0x00db
                           0000DA   411 _CCF2	=	0x00da
                           0000D9   412 _CCF1	=	0x00d9
                           0000D8   413 _CCF0	=	0x00d8
                           0000AE   414 _EC	=	0x00ae
                           0000BE   415 _PPCL	=	0x00be
                           0000BD   416 _PT2L	=	0x00bd
                           0000BC   417 _PSL	=	0x00bc
                           0000BB   418 _PT1L	=	0x00bb
                           0000BA   419 _PX1L	=	0x00ba
                           0000B9   420 _PT0L	=	0x00b9
                           0000B8   421 _PX0L	=	0x00b8
                           0000C0   422 _P4_0	=	0x00c0
                           0000C1   423 _P4_1	=	0x00c1
                           0000C2   424 _P4_2	=	0x00c2
                           0000C3   425 _P4_3	=	0x00c3
                           0000C4   426 _P4_4	=	0x00c4
                           0000C5   427 _P4_5	=	0x00c5
                           0000C6   428 _P4_6	=	0x00c6
                           0000C7   429 _P4_7	=	0x00c7
                           0000E8   430 _P5_0	=	0x00e8
                           0000E9   431 _P5_1	=	0x00e9
                           0000EA   432 _P5_2	=	0x00ea
                           0000EB   433 _P5_3	=	0x00eb
                           0000EC   434 _P5_4	=	0x00ec
                           0000ED   435 _P5_5	=	0x00ed
                           0000EE   436 _P5_6	=	0x00ee
                           0000EF   437 _P5_7	=	0x00ef
                                    438 ;--------------------------------------------------------
                                    439 ; overlayable register banks
                                    440 ;--------------------------------------------------------
                                    441 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        442 	.ds 8
                                    443 ;--------------------------------------------------------
                                    444 ; internal ram data
                                    445 ;--------------------------------------------------------
                                    446 	.area DSEG    (DATA)
      000008                        447 _get_command_sloc0_1_0:
      000008                        448 	.ds 2
      00000A                        449 _get_command_sloc1_1_0:
      00000A                        450 	.ds 3
      00000D                        451 _main_sloc0_1_0:
      00000D                        452 	.ds 2
                                    453 ;--------------------------------------------------------
                                    454 ; overlayable items in internal ram 
                                    455 ;--------------------------------------------------------
                                    456 ;--------------------------------------------------------
                                    457 ; Stack segment in internal ram 
                                    458 ;--------------------------------------------------------
                                    459 	.area	SSEG
      000021                        460 __start__stack:
      000021                        461 	.ds	1
                                    462 
                                    463 ;--------------------------------------------------------
                                    464 ; indirectly addressable internal ram data
                                    465 ;--------------------------------------------------------
                                    466 	.area ISEG    (DATA)
                                    467 ;--------------------------------------------------------
                                    468 ; absolute internal ram data
                                    469 ;--------------------------------------------------------
                                    470 	.area IABS    (ABS,DATA)
                                    471 	.area IABS    (ABS,DATA)
                                    472 ;--------------------------------------------------------
                                    473 ; bit data
                                    474 ;--------------------------------------------------------
                                    475 	.area BSEG    (BIT)
                                    476 ;--------------------------------------------------------
                                    477 ; paged external ram data
                                    478 ;--------------------------------------------------------
                                    479 	.area PSEG    (PAG,XDATA)
                                    480 ;--------------------------------------------------------
                                    481 ; external ram data
                                    482 ;--------------------------------------------------------
                                    483 	.area XSEG    (XDATA)
      000400                        484 _dataout_PARM_2:
      000400                        485 	.ds 1
      000401                        486 _dataout_val1_65536_41:
      000401                        487 	.ds 2
      000403                        488 _node_count:
      000403                        489 	.ds 1
      000404                        490 _array_for_nodes::
      000404                        491 	.ds 600
      00065C                        492 _putchar_chr_65536_51:
      00065C                        493 	.ds 2
      00065E                        494 _get_buf_value_PARM_2:
      00065E                        495 	.ds 2
      000660                        496 _get_buf_value_PARM_3:
      000660                        497 	.ds 2
      000662                        498 _get_buf_value_string_65536_55:
      000662                        499 	.ds 3
      000665                        500 _get_buf_value_data_from_serial_65536_56:
      000665                        501 	.ds 2
      000667                        502 _get_buf_value_buffer_size_65536_56:
      000667                        503 	.ds 2
      000669                        504 _get_buf_value_index_65536_56:
      000669                        505 	.ds 2
      00066B                        506 _sendUint32ToUART_value_65536_60:
      00066B                        507 	.ds 4
      00066F                        508 _print_prompt_string_65536_63:
      00066F                        509 	.ds 3
      000672                        510 _get_command_command_65536_66:
      000672                        511 	.ds 2
      000674                        512 _get_command_rd_ptr_131073_72:
      000674                        513 	.ds 3
      000677                        514 _get_command_temp_131073_72:
      000677                        515 	.ds 1
      000678                        516 _get_command_node_131074_77:
      000678                        517 	.ds 6
      00067E                        518 _buffer0_dump_rd_ptr_65536_79:
      00067E                        519 	.ds 3
      000681                        520 _buffer0_dump_temp_65536_79:
      000681                        521 	.ds 1
      000682                        522 _main_node1_65537_88:
      000682                        523 	.ds 6
      000688                        524 _main_node2_65538_89:
      000688                        525 	.ds 6
                                    526 ;--------------------------------------------------------
                                    527 ; absolute external ram data
                                    528 ;--------------------------------------------------------
                                    529 	.area XABS    (ABS,XDATA)
                                    530 ;--------------------------------------------------------
                                    531 ; external initialized ram data
                                    532 ;--------------------------------------------------------
                                    533 	.area XISEG   (XDATA)
      000F02                        534 _index_of_buffers:
      000F02                        535 	.ds 1
      000F03                        536 _total_number_of_commands::
      000F03                        537 	.ds 1
      000F04                        538 _total_number_of_storage::
      000F04                        539 	.ds 1
      000F05                        540 _recent_commands::
      000F05                        541 	.ds 1
      000F06                        542 _recent_storage::
      000F06                        543 	.ds 1
      000F07                        544 _recived_bytes::
      000F07                        545 	.ds 1
      000F08                        546 _pointer1::
      000F08                        547 	.ds 2
      000F0A                        548 _pointer2::
      000F0A                        549 	.ds 2
                                    550 	.area HOME    (CODE)
                                    551 	.area GSINIT0 (CODE)
                                    552 	.area GSINIT1 (CODE)
                                    553 	.area GSINIT2 (CODE)
                                    554 	.area GSINIT3 (CODE)
                                    555 	.area GSINIT4 (CODE)
                                    556 	.area GSINIT5 (CODE)
                                    557 	.area GSINIT  (CODE)
                                    558 	.area GSFINAL (CODE)
                                    559 	.area CSEG    (CODE)
                                    560 ;--------------------------------------------------------
                                    561 ; interrupt vector 
                                    562 ;--------------------------------------------------------
                                    563 	.area HOME    (CODE)
      003000                        564 __interrupt_vect:
      003000 02 30 06         [24]  565 	ljmp	__sdcc_gsinit_startup
                                    566 ;--------------------------------------------------------
                                    567 ; global & static initialisations
                                    568 ;--------------------------------------------------------
                                    569 	.area HOME    (CODE)
                                    570 	.area GSINIT  (CODE)
                                    571 	.area GSFINAL (CODE)
                                    572 	.area GSINIT  (CODE)
                                    573 	.globl __sdcc_gsinit_startup
                                    574 	.globl __sdcc_program_startup
                                    575 	.globl __start__stack
                                    576 	.globl __mcs51_genXINIT
                                    577 	.globl __mcs51_genXRAMCLEAR
                                    578 	.globl __mcs51_genRAMCLEAR
                                    579 	.area GSFINAL (CODE)
      00305F 02 30 03         [24]  580 	ljmp	__sdcc_program_startup
                                    581 ;--------------------------------------------------------
                                    582 ; Home
                                    583 ;--------------------------------------------------------
                                    584 	.area HOME    (CODE)
                                    585 	.area HOME    (CODE)
      003003                        586 __sdcc_program_startup:
      003003 02 38 65         [24]  587 	ljmp	_main
                                    588 ;	return from main will return to caller
                                    589 ;--------------------------------------------------------
                                    590 ; code
                                    591 ;--------------------------------------------------------
                                    592 	.area CSEG    (CODE)
                                    593 ;------------------------------------------------------------
                                    594 ;Allocation info for local variables in function 'dataout'
                                    595 ;------------------------------------------------------------
                                    596 ;x                         Allocated with name '_dataout_PARM_2'
                                    597 ;val1                      Allocated with name '_dataout_val1_65536_41'
                                    598 ;------------------------------------------------------------
                                    599 ;	syntax.c:15: void dataout(uint16_t val1, uint8_t x){
                                    600 ;	-----------------------------------------
                                    601 ;	 function dataout
                                    602 ;	-----------------------------------------
      003062                        603 _dataout:
                           000007   604 	ar7 = 0x07
                           000006   605 	ar6 = 0x06
                           000005   606 	ar5 = 0x05
                           000004   607 	ar4 = 0x04
                           000003   608 	ar3 = 0x03
                           000002   609 	ar2 = 0x02
                           000001   610 	ar1 = 0x01
                           000000   611 	ar0 = 0x00
      003062 AF 83            [24]  612 	mov	r7,dph
      003064 E5 82            [12]  613 	mov	a,dpl
      003066 90 04 01         [24]  614 	mov	dptr,#_dataout_val1_65536_41
      003069 F0               [24]  615 	movx	@dptr,a
      00306A EF               [12]  616 	mov	a,r7
      00306B A3               [24]  617 	inc	dptr
      00306C F0               [24]  618 	movx	@dptr,a
                                    619 ;	syntax.c:16: DPL = val1 & 0xFF;
      00306D 90 04 01         [24]  620 	mov	dptr,#_dataout_val1_65536_41
      003070 E0               [24]  621 	movx	a,@dptr
      003071 FE               [12]  622 	mov	r6,a
      003072 A3               [24]  623 	inc	dptr
      003073 E0               [24]  624 	movx	a,@dptr
      003074 FF               [12]  625 	mov	r7,a
      003075 8E 82            [24]  626 	mov	_DPL,r6
                                    627 ;	syntax.c:17: DPH = (val1 >> 8) & 0xFF;
      003077 8F 83            [24]  628 	mov	_DPH,r7
                                    629 ;	syntax.c:18: ACC = x;
      003079 90 04 00         [24]  630 	mov	dptr,#_dataout_PARM_2
      00307C E0               [24]  631 	movx	a,@dptr
      00307D F5 E0            [12]  632 	mov	_ACC,a
                                    633 ;	syntax.c:19: __asm__("movx @dptr, a");
      00307F F0               [24]  634 	movx	@dptr, a
                                    635 ;	syntax.c:20: }
      003080 22               [24]  636 	ret
                                    637 ;------------------------------------------------------------
                                    638 ;Allocation info for local variables in function '__sdcc_external_startup'
                                    639 ;------------------------------------------------------------
                                    640 ;	syntax.c:59: unsigned char __sdcc_external_startup(void){
                                    641 ;	-----------------------------------------
                                    642 ;	 function __sdcc_external_startup
                                    643 ;	-----------------------------------------
      003081                        644 ___sdcc_external_startup:
                                    645 ;	syntax.c:60: AUXR |= (XRS1 | XRS0);
      003081 43 8E 0C         [24]  646 	orl	_AUXR,#0x0c
                                    647 ;	syntax.c:61: AUXR &= ~(XRS2);
      003084 53 8E EF         [24]  648 	anl	_AUXR,#0xef
                                    649 ;	syntax.c:62: return 0;
      003087 75 82 00         [24]  650 	mov	dpl,#0x00
                                    651 ;	syntax.c:63: }
      00308A 22               [24]  652 	ret
                                    653 ;------------------------------------------------------------
                                    654 ;Allocation info for local variables in function 'init_uart'
                                    655 ;------------------------------------------------------------
                                    656 ;	syntax.c:65: void init_uart(){
                                    657 ;	-----------------------------------------
                                    658 ;	 function init_uart
                                    659 ;	-----------------------------------------
      00308B                        660 _init_uart:
                                    661 ;	syntax.c:66: SCON = 0x50;
      00308B 75 98 50         [24]  662 	mov	_SCON,#0x50
                                    663 ;	syntax.c:67: TMOD = 0x20;
      00308E 75 89 20         [24]  664 	mov	_TMOD,#0x20
                                    665 ;	syntax.c:68: TH1 = 0xFD;
      003091 75 8D FD         [24]  666 	mov	_TH1,#0xfd
                                    667 ;	syntax.c:69: TR1 = 1;
                                    668 ;	assignBit
      003094 D2 8E            [12]  669 	setb	_TR1
                                    670 ;	syntax.c:70: }
      003096 22               [24]  671 	ret
                                    672 ;------------------------------------------------------------
                                    673 ;Allocation info for local variables in function 'putchar'
                                    674 ;------------------------------------------------------------
                                    675 ;chr                       Allocated with name '_putchar_chr_65536_51'
                                    676 ;------------------------------------------------------------
                                    677 ;	syntax.c:72: int putchar(int chr){
                                    678 ;	-----------------------------------------
                                    679 ;	 function putchar
                                    680 ;	-----------------------------------------
      003097                        681 _putchar:
      003097 AF 83            [24]  682 	mov	r7,dph
      003099 E5 82            [12]  683 	mov	a,dpl
      00309B 90 06 5C         [24]  684 	mov	dptr,#_putchar_chr_65536_51
      00309E F0               [24]  685 	movx	@dptr,a
      00309F EF               [12]  686 	mov	a,r7
      0030A0 A3               [24]  687 	inc	dptr
      0030A1 F0               [24]  688 	movx	@dptr,a
                                    689 ;	syntax.c:73: SBUF = chr;
      0030A2 90 06 5C         [24]  690 	mov	dptr,#_putchar_chr_65536_51
      0030A5 E0               [24]  691 	movx	a,@dptr
      0030A6 FE               [12]  692 	mov	r6,a
      0030A7 A3               [24]  693 	inc	dptr
      0030A8 E0               [24]  694 	movx	a,@dptr
      0030A9 8E 99            [24]  695 	mov	_SBUF,r6
                                    696 ;	syntax.c:74: while(!TI);
      0030AB                        697 00101$:
                                    698 ;	syntax.c:75: TI = 0;
                                    699 ;	assignBit
      0030AB 10 99 02         [24]  700 	jbc	_TI,00114$
      0030AE 80 FB            [24]  701 	sjmp	00101$
      0030B0                        702 00114$:
                                    703 ;	syntax.c:76: return 1;
      0030B0 90 00 01         [24]  704 	mov	dptr,#0x0001
                                    705 ;	syntax.c:78: }
      0030B3 22               [24]  706 	ret
                                    707 ;------------------------------------------------------------
                                    708 ;Allocation info for local variables in function 'getchar'
                                    709 ;------------------------------------------------------------
                                    710 ;a                         Allocated with name '_getchar_a_65537_54'
                                    711 ;------------------------------------------------------------
                                    712 ;	syntax.c:80: int getchar(){
                                    713 ;	-----------------------------------------
                                    714 ;	 function getchar
                                    715 ;	-----------------------------------------
      0030B4                        716 _getchar:
                                    717 ;	syntax.c:82: while(!RI);
      0030B4                        718 00101$:
      0030B4 30 98 FD         [24]  719 	jnb	_RI,00101$
                                    720 ;	syntax.c:83: int a = SBUF;
      0030B7 AE 99            [24]  721 	mov	r6,_SBUF
      0030B9 7F 00            [12]  722 	mov	r7,#0x00
                                    723 ;	syntax.c:84: RI = 0;
                                    724 ;	assignBit
      0030BB C2 98            [12]  725 	clr	_RI
                                    726 ;	syntax.c:85: recived_bytes++;
      0030BD 90 0F 07         [24]  727 	mov	dptr,#_recived_bytes
      0030C0 E0               [24]  728 	movx	a,@dptr
      0030C1 24 01            [12]  729 	add	a,#0x01
      0030C3 F0               [24]  730 	movx	@dptr,a
                                    731 ;	syntax.c:86: return a;
      0030C4 8E 82            [24]  732 	mov	dpl,r6
      0030C6 8F 83            [24]  733 	mov	dph,r7
                                    734 ;	syntax.c:88: }
      0030C8 22               [24]  735 	ret
                                    736 ;------------------------------------------------------------
                                    737 ;Allocation info for local variables in function 'get_buf_value'
                                    738 ;------------------------------------------------------------
                                    739 ;UPPER                     Allocated with name '_get_buf_value_PARM_2'
                                    740 ;LOWER                     Allocated with name '_get_buf_value_PARM_3'
                                    741 ;string                    Allocated with name '_get_buf_value_string_65536_55'
                                    742 ;data_from_serial          Allocated with name '_get_buf_value_data_from_serial_65536_56'
                                    743 ;buffer_size               Allocated with name '_get_buf_value_buffer_size_65536_56'
                                    744 ;index                     Allocated with name '_get_buf_value_index_65536_56'
                                    745 ;------------------------------------------------------------
                                    746 ;	syntax.c:91: int get_buf_value(const char * string, int UPPER, int LOWER){
                                    747 ;	-----------------------------------------
                                    748 ;	 function get_buf_value
                                    749 ;	-----------------------------------------
      0030C9                        750 _get_buf_value:
      0030C9 AF F0            [24]  751 	mov	r7,b
      0030CB AE 83            [24]  752 	mov	r6,dph
      0030CD E5 82            [12]  753 	mov	a,dpl
      0030CF 90 06 62         [24]  754 	mov	dptr,#_get_buf_value_string_65536_55
      0030D2 F0               [24]  755 	movx	@dptr,a
      0030D3 EE               [12]  756 	mov	a,r6
      0030D4 A3               [24]  757 	inc	dptr
      0030D5 F0               [24]  758 	movx	@dptr,a
      0030D6 EF               [12]  759 	mov	a,r7
      0030D7 A3               [24]  760 	inc	dptr
      0030D8 F0               [24]  761 	movx	@dptr,a
                                    762 ;	syntax.c:92: int data_from_serial = 0;
      0030D9 90 06 65         [24]  763 	mov	dptr,#_get_buf_value_data_from_serial_65536_56
      0030DC E4               [12]  764 	clr	a
      0030DD F0               [24]  765 	movx	@dptr,a
      0030DE A3               [24]  766 	inc	dptr
      0030DF F0               [24]  767 	movx	@dptr,a
                                    768 ;	syntax.c:93: int buffer_size = 0;
      0030E0 90 06 67         [24]  769 	mov	dptr,#_get_buf_value_buffer_size_65536_56
      0030E3 F0               [24]  770 	movx	@dptr,a
      0030E4 A3               [24]  771 	inc	dptr
      0030E5 F0               [24]  772 	movx	@dptr,a
                                    773 ;	syntax.c:94: int index = 1000;
      0030E6 90 06 69         [24]  774 	mov	dptr,#_get_buf_value_index_65536_56
      0030E9 74 E8            [12]  775 	mov	a,#0xe8
      0030EB F0               [24]  776 	movx	@dptr,a
      0030EC 74 03            [12]  777 	mov	a,#0x03
      0030EE A3               [24]  778 	inc	dptr
      0030EF F0               [24]  779 	movx	@dptr,a
                                    780 ;	syntax.c:97: print_prompt(string);
      0030F0 90 06 62         [24]  781 	mov	dptr,#_get_buf_value_string_65536_55
      0030F3 E0               [24]  782 	movx	a,@dptr
      0030F4 FD               [12]  783 	mov	r5,a
      0030F5 A3               [24]  784 	inc	dptr
      0030F6 E0               [24]  785 	movx	a,@dptr
      0030F7 FE               [12]  786 	mov	r6,a
      0030F8 A3               [24]  787 	inc	dptr
      0030F9 E0               [24]  788 	movx	a,@dptr
      0030FA FF               [12]  789 	mov	r7,a
      0030FB 8D 82            [24]  790 	mov	dpl,r5
      0030FD 8E 83            [24]  791 	mov	dph,r6
      0030FF 8F F0            [24]  792 	mov	b,r7
      003101 12 32 9C         [24]  793 	lcall	_print_prompt
                                    794 ;	syntax.c:100: while(index >= 1 & data_from_serial != 0x0d){
      003104                        795 00107$:
      003104 90 06 69         [24]  796 	mov	dptr,#_get_buf_value_index_65536_56
      003107 E0               [24]  797 	movx	a,@dptr
      003108 FE               [12]  798 	mov	r6,a
      003109 A3               [24]  799 	inc	dptr
      00310A E0               [24]  800 	movx	a,@dptr
      00310B FF               [12]  801 	mov	r7,a
      00310C C3               [12]  802 	clr	c
      00310D EE               [12]  803 	mov	a,r6
      00310E 94 01            [12]  804 	subb	a,#0x01
      003110 EF               [12]  805 	mov	a,r7
      003111 64 80            [12]  806 	xrl	a,#0x80
      003113 94 80            [12]  807 	subb	a,#0x80
      003115 B3               [12]  808 	cpl	c
      003116 E4               [12]  809 	clr	a
      003117 33               [12]  810 	rlc	a
      003118 FF               [12]  811 	mov	r7,a
      003119 90 06 65         [24]  812 	mov	dptr,#_get_buf_value_data_from_serial_65536_56
      00311C E0               [24]  813 	movx	a,@dptr
      00311D FD               [12]  814 	mov	r5,a
      00311E A3               [24]  815 	inc	dptr
      00311F E0               [24]  816 	movx	a,@dptr
      003120 FE               [12]  817 	mov	r6,a
      003121 E4               [12]  818 	clr	a
      003122 BD 0D 04         [24]  819 	cjne	r5,#0x0d,00133$
      003125 BE 00 01         [24]  820 	cjne	r6,#0x00,00133$
      003128 04               [12]  821 	inc	a
      003129                        822 00133$:
      003129 B4 01 00         [24]  823 	cjne	a,#0x01,00135$
      00312C                        824 00135$:
      00312C E4               [12]  825 	clr	a
      00312D 33               [12]  826 	rlc	a
      00312E FE               [12]  827 	mov	r6,a
      00312F 5F               [12]  828 	anl	a,r7
      003130 70 03            [24]  829 	jnz	00136$
      003132 02 31 E6         [24]  830 	ljmp	00109$
      003135                        831 00136$:
                                    832 ;	syntax.c:101: data_from_serial = getchar();
      003135 12 30 B4         [24]  833 	lcall	_getchar
      003138 AE 82            [24]  834 	mov	r6,dpl
      00313A AF 83            [24]  835 	mov	r7,dph
      00313C 90 06 65         [24]  836 	mov	dptr,#_get_buf_value_data_from_serial_65536_56
      00313F EE               [12]  837 	mov	a,r6
      003140 F0               [24]  838 	movx	@dptr,a
      003141 EF               [12]  839 	mov	a,r7
      003142 A3               [24]  840 	inc	dptr
      003143 F0               [24]  841 	movx	@dptr,a
                                    842 ;	syntax.c:102: if((data_from_serial < '0' || data_from_serial > '9') && data_from_serial != 0x0d) {
      003144 C3               [12]  843 	clr	c
      003145 EE               [12]  844 	mov	a,r6
      003146 94 30            [12]  845 	subb	a,#0x30
      003148 EF               [12]  846 	mov	a,r7
      003149 64 80            [12]  847 	xrl	a,#0x80
      00314B 94 80            [12]  848 	subb	a,#0x80
      00314D 40 0E            [24]  849 	jc	00104$
      00314F 74 39            [12]  850 	mov	a,#0x39
      003151 9E               [12]  851 	subb	a,r6
      003152 74 80            [12]  852 	mov	a,#(0x00 ^ 0x80)
      003154 8F F0            [24]  853 	mov	b,r7
      003156 63 F0 80         [24]  854 	xrl	b,#0x80
      003159 95 F0            [12]  855 	subb	a,b
      00315B 50 15            [24]  856 	jnc	00102$
      00315D                        857 00104$:
      00315D BE 0D 05         [24]  858 	cjne	r6,#0x0d,00139$
      003160 BF 00 02         [24]  859 	cjne	r7,#0x00,00139$
      003163 80 0D            [24]  860 	sjmp	00102$
      003165                        861 00139$:
                                    862 ;	syntax.c:103: print_prompt("\nEnter valid input\n\r");
      003165 90 4D CB         [24]  863 	mov	dptr,#___str_0
      003168 75 F0 80         [24]  864 	mov	b,#0x80
      00316B 12 32 9C         [24]  865 	lcall	_print_prompt
                                    866 ;	syntax.c:104: return -1;
      00316E 90 FF FF         [24]  867 	mov	dptr,#0xffff
      003171 22               [24]  868 	ret
      003172                        869 00102$:
                                    870 ;	syntax.c:107: if(data_from_serial == 0x0d){
      003172 BE 0D 05         [24]  871 	cjne	r6,#0x0d,00140$
      003175 BF 00 02         [24]  872 	cjne	r7,#0x00,00140$
      003178 80 6C            [24]  873 	sjmp	00109$
      00317A                        874 00140$:
                                    875 ;	syntax.c:111: putchar(data_from_serial);
      00317A 8E 82            [24]  876 	mov	dpl,r6
      00317C 8F 83            [24]  877 	mov	dph,r7
      00317E C0 07            [24]  878 	push	ar7
      003180 C0 06            [24]  879 	push	ar6
      003182 12 30 97         [24]  880 	lcall	_putchar
      003185 D0 06            [24]  881 	pop	ar6
      003187 D0 07            [24]  882 	pop	ar7
                                    883 ;	syntax.c:112: buffer_size += (data_from_serial-48)*index;
      003189 EE               [12]  884 	mov	a,r6
      00318A 24 D0            [12]  885 	add	a,#0xd0
      00318C FE               [12]  886 	mov	r6,a
      00318D EF               [12]  887 	mov	a,r7
      00318E 34 FF            [12]  888 	addc	a,#0xff
      003190 FF               [12]  889 	mov	r7,a
      003191 90 06 69         [24]  890 	mov	dptr,#_get_buf_value_index_65536_56
      003194 E0               [24]  891 	movx	a,@dptr
      003195 FC               [12]  892 	mov	r4,a
      003196 A3               [24]  893 	inc	dptr
      003197 E0               [24]  894 	movx	a,@dptr
      003198 FD               [12]  895 	mov	r5,a
      003199 90 0E BE         [24]  896 	mov	dptr,#__mulint_PARM_2
      00319C EC               [12]  897 	mov	a,r4
      00319D F0               [24]  898 	movx	@dptr,a
      00319E ED               [12]  899 	mov	a,r5
      00319F A3               [24]  900 	inc	dptr
      0031A0 F0               [24]  901 	movx	@dptr,a
      0031A1 8E 82            [24]  902 	mov	dpl,r6
      0031A3 8F 83            [24]  903 	mov	dph,r7
      0031A5 C0 05            [24]  904 	push	ar5
      0031A7 C0 04            [24]  905 	push	ar4
      0031A9 12 42 1C         [24]  906 	lcall	__mulint
      0031AC AE 82            [24]  907 	mov	r6,dpl
      0031AE AF 83            [24]  908 	mov	r7,dph
      0031B0 D0 04            [24]  909 	pop	ar4
      0031B2 D0 05            [24]  910 	pop	ar5
      0031B4 90 06 67         [24]  911 	mov	dptr,#_get_buf_value_buffer_size_65536_56
      0031B7 E0               [24]  912 	movx	a,@dptr
      0031B8 FA               [12]  913 	mov	r2,a
      0031B9 A3               [24]  914 	inc	dptr
      0031BA E0               [24]  915 	movx	a,@dptr
      0031BB FB               [12]  916 	mov	r3,a
      0031BC 90 06 67         [24]  917 	mov	dptr,#_get_buf_value_buffer_size_65536_56
      0031BF EE               [12]  918 	mov	a,r6
      0031C0 2A               [12]  919 	add	a,r2
      0031C1 F0               [24]  920 	movx	@dptr,a
      0031C2 EF               [12]  921 	mov	a,r7
      0031C3 3B               [12]  922 	addc	a,r3
      0031C4 A3               [24]  923 	inc	dptr
      0031C5 F0               [24]  924 	movx	@dptr,a
                                    925 ;	syntax.c:113: index=index/10;
      0031C6 90 0E C0         [24]  926 	mov	dptr,#__divsint_PARM_2
      0031C9 74 0A            [12]  927 	mov	a,#0x0a
      0031CB F0               [24]  928 	movx	@dptr,a
      0031CC E4               [12]  929 	clr	a
      0031CD A3               [24]  930 	inc	dptr
      0031CE F0               [24]  931 	movx	@dptr,a
      0031CF 8C 82            [24]  932 	mov	dpl,r4
      0031D1 8D 83            [24]  933 	mov	dph,r5
      0031D3 12 42 3C         [24]  934 	lcall	__divsint
      0031D6 E5 82            [12]  935 	mov	a,dpl
      0031D8 85 83 F0         [24]  936 	mov	b,dph
      0031DB 90 06 69         [24]  937 	mov	dptr,#_get_buf_value_index_65536_56
      0031DE F0               [24]  938 	movx	@dptr,a
      0031DF E5 F0            [12]  939 	mov	a,b
      0031E1 A3               [24]  940 	inc	dptr
      0031E2 F0               [24]  941 	movx	@dptr,a
      0031E3 02 31 04         [24]  942 	ljmp	00107$
      0031E6                        943 00109$:
                                    944 ;	syntax.c:115: printf("SIZE ENTERED : %d\n\r", buffer_size);
      0031E6 90 06 67         [24]  945 	mov	dptr,#_get_buf_value_buffer_size_65536_56
      0031E9 E0               [24]  946 	movx	a,@dptr
      0031EA FE               [12]  947 	mov	r6,a
      0031EB A3               [24]  948 	inc	dptr
      0031EC E0               [24]  949 	movx	a,@dptr
      0031ED FF               [12]  950 	mov	r7,a
      0031EE C0 07            [24]  951 	push	ar7
      0031F0 C0 06            [24]  952 	push	ar6
      0031F2 C0 06            [24]  953 	push	ar6
      0031F4 C0 07            [24]  954 	push	ar7
      0031F6 74 E0            [12]  955 	mov	a,#___str_1
      0031F8 C0 E0            [24]  956 	push	acc
      0031FA 74 4D            [12]  957 	mov	a,#(___str_1 >> 8)
      0031FC C0 E0            [24]  958 	push	acc
      0031FE 74 80            [12]  959 	mov	a,#0x80
      003200 C0 E0            [24]  960 	push	acc
      003202 12 43 89         [24]  961 	lcall	_printf
      003205 E5 81            [12]  962 	mov	a,sp
      003207 24 FB            [12]  963 	add	a,#0xfb
      003209 F5 81            [12]  964 	mov	sp,a
      00320B D0 06            [24]  965 	pop	ar6
      00320D D0 07            [24]  966 	pop	ar7
                                    967 ;	syntax.c:122: return buffer_size;
      00320F 8E 82            [24]  968 	mov	dpl,r6
      003211 8F 83            [24]  969 	mov	dph,r7
                                    970 ;	syntax.c:124: }
      003213 22               [24]  971 	ret
                                    972 ;------------------------------------------------------------
                                    973 ;Allocation info for local variables in function 'sendUint32ToUART'
                                    974 ;------------------------------------------------------------
                                    975 ;value                     Allocated with name '_sendUint32ToUART_value_65536_60'
                                    976 ;byte                      Allocated with name '_sendUint32ToUART_byte_65536_61'
                                    977 ;i                         Allocated with name '_sendUint32ToUART_i_65536_61'
                                    978 ;byte                      Allocated with name '_sendUint32ToUART_byte_131072_62'
                                    979 ;------------------------------------------------------------
                                    980 ;	syntax.c:126: void sendUint32ToUART(uint32_t value) {
                                    981 ;	-----------------------------------------
                                    982 ;	 function sendUint32ToUART
                                    983 ;	-----------------------------------------
      003214                        984 _sendUint32ToUART:
      003214 AF 82            [24]  985 	mov	r7,dpl
      003216 AE 83            [24]  986 	mov	r6,dph
      003218 AD F0            [24]  987 	mov	r5,b
      00321A FC               [12]  988 	mov	r4,a
      00321B 90 06 6B         [24]  989 	mov	dptr,#_sendUint32ToUART_value_65536_60
      00321E EF               [12]  990 	mov	a,r7
      00321F F0               [24]  991 	movx	@dptr,a
      003220 EE               [12]  992 	mov	a,r6
      003221 A3               [24]  993 	inc	dptr
      003222 F0               [24]  994 	movx	@dptr,a
      003223 ED               [12]  995 	mov	a,r5
      003224 A3               [24]  996 	inc	dptr
      003225 F0               [24]  997 	movx	@dptr,a
      003226 EC               [12]  998 	mov	a,r4
      003227 A3               [24]  999 	inc	dptr
      003228 F0               [24] 1000 	movx	@dptr,a
                                   1001 ;	syntax.c:129: while (value > 1) {
      003229                       1002 00101$:
      003229 90 06 6B         [24] 1003 	mov	dptr,#_sendUint32ToUART_value_65536_60
      00322C E0               [24] 1004 	movx	a,@dptr
      00322D FC               [12] 1005 	mov	r4,a
      00322E A3               [24] 1006 	inc	dptr
      00322F E0               [24] 1007 	movx	a,@dptr
      003230 FD               [12] 1008 	mov	r5,a
      003231 A3               [24] 1009 	inc	dptr
      003232 E0               [24] 1010 	movx	a,@dptr
      003233 FE               [12] 1011 	mov	r6,a
      003234 A3               [24] 1012 	inc	dptr
      003235 E0               [24] 1013 	movx	a,@dptr
      003236 FF               [12] 1014 	mov	r7,a
      003237 C3               [12] 1015 	clr	c
      003238 74 01            [12] 1016 	mov	a,#0x01
      00323A 9C               [12] 1017 	subb	a,r4
      00323B E4               [12] 1018 	clr	a
      00323C 9D               [12] 1019 	subb	a,r5
      00323D E4               [12] 1020 	clr	a
      00323E 9E               [12] 1021 	subb	a,r6
      00323F E4               [12] 1022 	clr	a
      003240 9F               [12] 1023 	subb	a,r7
      003241 50 58            [24] 1024 	jnc	00104$
                                   1025 ;	syntax.c:130: int byte = value % 10; // Extract one byte at a time
      003243 90 0E 97         [24] 1026 	mov	dptr,#__modulong_PARM_2
      003246 74 0A            [12] 1027 	mov	a,#0x0a
      003248 F0               [24] 1028 	movx	@dptr,a
      003249 E4               [12] 1029 	clr	a
      00324A A3               [24] 1030 	inc	dptr
      00324B F0               [24] 1031 	movx	@dptr,a
      00324C A3               [24] 1032 	inc	dptr
      00324D F0               [24] 1033 	movx	@dptr,a
      00324E A3               [24] 1034 	inc	dptr
      00324F F0               [24] 1035 	movx	@dptr,a
      003250 8C 82            [24] 1036 	mov	dpl,r4
      003252 8D 83            [24] 1037 	mov	dph,r5
      003254 8E F0            [24] 1038 	mov	b,r6
      003256 EF               [12] 1039 	mov	a,r7
      003257 C0 07            [24] 1040 	push	ar7
      003259 C0 06            [24] 1041 	push	ar6
      00325B C0 05            [24] 1042 	push	ar5
      00325D C0 04            [24] 1043 	push	ar4
      00325F 12 3D B4         [24] 1044 	lcall	__modulong
                                   1045 ;	syntax.c:131: putchar(byte);
      003262 12 30 97         [24] 1046 	lcall	_putchar
      003265 D0 04            [24] 1047 	pop	ar4
      003267 D0 05            [24] 1048 	pop	ar5
      003269 D0 06            [24] 1049 	pop	ar6
      00326B D0 07            [24] 1050 	pop	ar7
                                   1051 ;	syntax.c:132: value = value / 10;
      00326D 90 0E A0         [24] 1052 	mov	dptr,#__divulong_PARM_2
      003270 74 0A            [12] 1053 	mov	a,#0x0a
      003272 F0               [24] 1054 	movx	@dptr,a
      003273 E4               [12] 1055 	clr	a
      003274 A3               [24] 1056 	inc	dptr
      003275 F0               [24] 1057 	movx	@dptr,a
      003276 A3               [24] 1058 	inc	dptr
      003277 F0               [24] 1059 	movx	@dptr,a
      003278 A3               [24] 1060 	inc	dptr
      003279 F0               [24] 1061 	movx	@dptr,a
      00327A 8C 82            [24] 1062 	mov	dpl,r4
      00327C 8D 83            [24] 1063 	mov	dph,r5
      00327E 8E F0            [24] 1064 	mov	b,r6
      003280 EF               [12] 1065 	mov	a,r7
      003281 12 3E F4         [24] 1066 	lcall	__divulong
      003284 AC 82            [24] 1067 	mov	r4,dpl
      003286 AD 83            [24] 1068 	mov	r5,dph
      003288 AE F0            [24] 1069 	mov	r6,b
      00328A FF               [12] 1070 	mov	r7,a
      00328B 90 06 6B         [24] 1071 	mov	dptr,#_sendUint32ToUART_value_65536_60
      00328E EC               [12] 1072 	mov	a,r4
      00328F F0               [24] 1073 	movx	@dptr,a
      003290 ED               [12] 1074 	mov	a,r5
      003291 A3               [24] 1075 	inc	dptr
      003292 F0               [24] 1076 	movx	@dptr,a
      003293 EE               [12] 1077 	mov	a,r6
      003294 A3               [24] 1078 	inc	dptr
      003295 F0               [24] 1079 	movx	@dptr,a
      003296 EF               [12] 1080 	mov	a,r7
      003297 A3               [24] 1081 	inc	dptr
      003298 F0               [24] 1082 	movx	@dptr,a
      003299 80 8E            [24] 1083 	sjmp	00101$
      00329B                       1084 00104$:
                                   1085 ;	syntax.c:134: }
      00329B 22               [24] 1086 	ret
                                   1087 ;------------------------------------------------------------
                                   1088 ;Allocation info for local variables in function 'print_prompt'
                                   1089 ;------------------------------------------------------------
                                   1090 ;string                    Allocated with name '_print_prompt_string_65536_63'
                                   1091 ;------------------------------------------------------------
                                   1092 ;	syntax.c:138: void print_prompt(const char * string){
                                   1093 ;	-----------------------------------------
                                   1094 ;	 function print_prompt
                                   1095 ;	-----------------------------------------
      00329C                       1096 _print_prompt:
      00329C AF F0            [24] 1097 	mov	r7,b
      00329E AE 83            [24] 1098 	mov	r6,dph
      0032A0 E5 82            [12] 1099 	mov	a,dpl
      0032A2 90 06 6F         [24] 1100 	mov	dptr,#_print_prompt_string_65536_63
      0032A5 F0               [24] 1101 	movx	@dptr,a
      0032A6 EE               [12] 1102 	mov	a,r6
      0032A7 A3               [24] 1103 	inc	dptr
      0032A8 F0               [24] 1104 	movx	@dptr,a
      0032A9 EF               [12] 1105 	mov	a,r7
      0032AA A3               [24] 1106 	inc	dptr
      0032AB F0               [24] 1107 	movx	@dptr,a
                                   1108 ;	syntax.c:139: while(*string != '\0'){
      0032AC 90 06 6F         [24] 1109 	mov	dptr,#_print_prompt_string_65536_63
      0032AF E0               [24] 1110 	movx	a,@dptr
      0032B0 FD               [12] 1111 	mov	r5,a
      0032B1 A3               [24] 1112 	inc	dptr
      0032B2 E0               [24] 1113 	movx	a,@dptr
      0032B3 FE               [12] 1114 	mov	r6,a
      0032B4 A3               [24] 1115 	inc	dptr
      0032B5 E0               [24] 1116 	movx	a,@dptr
      0032B6 FF               [12] 1117 	mov	r7,a
      0032B7                       1118 00101$:
      0032B7 8D 82            [24] 1119 	mov	dpl,r5
      0032B9 8E 83            [24] 1120 	mov	dph,r6
      0032BB 8F F0            [24] 1121 	mov	b,r7
      0032BD 12 4D AB         [24] 1122 	lcall	__gptrget
      0032C0 FC               [12] 1123 	mov	r4,a
      0032C1 60 27            [24] 1124 	jz	00108$
                                   1125 ;	syntax.c:140: putchar(*string);
      0032C3 7B 00            [12] 1126 	mov	r3,#0x00
      0032C5 8C 82            [24] 1127 	mov	dpl,r4
      0032C7 8B 83            [24] 1128 	mov	dph,r3
      0032C9 C0 07            [24] 1129 	push	ar7
      0032CB C0 06            [24] 1130 	push	ar6
      0032CD C0 05            [24] 1131 	push	ar5
      0032CF 12 30 97         [24] 1132 	lcall	_putchar
      0032D2 D0 05            [24] 1133 	pop	ar5
      0032D4 D0 06            [24] 1134 	pop	ar6
      0032D6 D0 07            [24] 1135 	pop	ar7
                                   1136 ;	syntax.c:141: string++;
      0032D8 0D               [12] 1137 	inc	r5
      0032D9 BD 00 01         [24] 1138 	cjne	r5,#0x00,00116$
      0032DC 0E               [12] 1139 	inc	r6
      0032DD                       1140 00116$:
      0032DD 90 06 6F         [24] 1141 	mov	dptr,#_print_prompt_string_65536_63
      0032E0 ED               [12] 1142 	mov	a,r5
      0032E1 F0               [24] 1143 	movx	@dptr,a
      0032E2 EE               [12] 1144 	mov	a,r6
      0032E3 A3               [24] 1145 	inc	dptr
      0032E4 F0               [24] 1146 	movx	@dptr,a
      0032E5 EF               [12] 1147 	mov	a,r7
      0032E6 A3               [24] 1148 	inc	dptr
      0032E7 F0               [24] 1149 	movx	@dptr,a
      0032E8 80 CD            [24] 1150 	sjmp	00101$
      0032EA                       1151 00108$:
      0032EA 90 06 6F         [24] 1152 	mov	dptr,#_print_prompt_string_65536_63
      0032ED ED               [12] 1153 	mov	a,r5
      0032EE F0               [24] 1154 	movx	@dptr,a
      0032EF EE               [12] 1155 	mov	a,r6
      0032F0 A3               [24] 1156 	inc	dptr
      0032F1 F0               [24] 1157 	movx	@dptr,a
      0032F2 EF               [12] 1158 	mov	a,r7
      0032F3 A3               [24] 1159 	inc	dptr
      0032F4 F0               [24] 1160 	movx	@dptr,a
                                   1161 ;	syntax.c:143: }
      0032F5 22               [24] 1162 	ret
                                   1163 ;------------------------------------------------------------
                                   1164 ;Allocation info for local variables in function 'get_command'
                                   1165 ;------------------------------------------------------------
                                   1166 ;sloc0                     Allocated with name '_get_command_sloc0_1_0'
                                   1167 ;sloc1                     Allocated with name '_get_command_sloc1_1_0'
                                   1168 ;command                   Allocated with name '_get_command_command_65536_66'
                                   1169 ;temp_value                Allocated with name '_get_command_temp_value_65536_67'
                                   1170 ;pointer                   Allocated with name '_get_command_pointer_65536_67'
                                   1171 ;array_index_temp          Allocated with name '_get_command_array_index_temp_65536_67'
                                   1172 ;i                         Allocated with name '_get_command_i_196608_69'
                                   1173 ;rd_ptr                    Allocated with name '_get_command_rd_ptr_131073_72'
                                   1174 ;wr_ptr                    Allocated with name '_get_command_wr_ptr_131073_72'
                                   1175 ;temp                      Allocated with name '_get_command_temp_131073_72'
                                   1176 ;i                         Allocated with name '_get_command_i_262145_74'
                                   1177 ;node                      Allocated with name '_get_command_node_131074_77'
                                   1178 ;------------------------------------------------------------
                                   1179 ;	syntax.c:152: int get_command(int command){
                                   1180 ;	-----------------------------------------
                                   1181 ;	 function get_command
                                   1182 ;	-----------------------------------------
      0032F6                       1183 _get_command:
      0032F6 AF 83            [24] 1184 	mov	r7,dph
      0032F8 E5 82            [12] 1185 	mov	a,dpl
      0032FA 90 06 72         [24] 1186 	mov	dptr,#_get_command_command_65536_66
      0032FD F0               [24] 1187 	movx	@dptr,a
      0032FE EF               [12] 1188 	mov	a,r7
      0032FF A3               [24] 1189 	inc	dptr
      003300 F0               [24] 1190 	movx	@dptr,a
                                   1191 ;	syntax.c:160: switch(command){
      003301 90 06 72         [24] 1192 	mov	dptr,#_get_command_command_65536_66
      003304 E0               [24] 1193 	movx	a,@dptr
      003305 FE               [12] 1194 	mov	r6,a
      003306 A3               [24] 1195 	inc	dptr
      003307 E0               [24] 1196 	movx	a,@dptr
      003308 FF               [12] 1197 	mov	r7,a
      003309 BE 2B 06         [24] 1198 	cjne	r6,#0x2b,00187$
      00330C BF 00 03         [24] 1199 	cjne	r7,#0x00,00187$
      00330F 02 35 F1         [24] 1200 	ljmp	00110$
      003312                       1201 00187$:
      003312 BE 2D 06         [24] 1202 	cjne	r6,#0x2d,00188$
      003315 BF 00 03         [24] 1203 	cjne	r7,#0x00,00188$
      003318 02 36 CA         [24] 1204 	ljmp	00113$
      00331B                       1205 00188$:
      00331B BE 3D 06         [24] 1206 	cjne	r6,#0x3d,00189$
      00331E BF 00 03         [24] 1207 	cjne	r7,#0x00,00189$
      003321 02 37 38         [24] 1208 	ljmp	00118$
      003324                       1209 00189$:
      003324 BE 3F 05         [24] 1210 	cjne	r6,#0x3f,00190$
      003327 BF 00 02         [24] 1211 	cjne	r7,#0x00,00190$
      00332A 80 03            [24] 1212 	sjmp	00191$
      00332C                       1213 00190$:
      00332C 02 37 3B         [24] 1214 	ljmp	00120$
      00332F                       1215 00191$:
                                   1216 ;	syntax.c:164: print_prompt("Total number of commands from the start: ");
      00332F 90 4D F4         [24] 1217 	mov	dptr,#___str_2
      003332 75 F0 80         [24] 1218 	mov	b,#0x80
      003335 12 32 9C         [24] 1219 	lcall	_print_prompt
                                   1220 ;	syntax.c:165: printf("%d",total_number_of_commands);
      003338 90 0F 03         [24] 1221 	mov	dptr,#_total_number_of_commands
      00333B E0               [24] 1222 	movx	a,@dptr
      00333C FF               [12] 1223 	mov	r7,a
      00333D 7E 00            [12] 1224 	mov	r6,#0x00
      00333F C0 07            [24] 1225 	push	ar7
      003341 C0 06            [24] 1226 	push	ar6
      003343 74 1E            [12] 1227 	mov	a,#___str_3
      003345 C0 E0            [24] 1228 	push	acc
      003347 74 4E            [12] 1229 	mov	a,#(___str_3 >> 8)
      003349 C0 E0            [24] 1230 	push	acc
      00334B 74 80            [12] 1231 	mov	a,#0x80
      00334D C0 E0            [24] 1232 	push	acc
      00334F 12 43 89         [24] 1233 	lcall	_printf
      003352 E5 81            [12] 1234 	mov	a,sp
      003354 24 FB            [12] 1235 	add	a,#0xfb
      003356 F5 81            [12] 1236 	mov	sp,a
                                   1237 ;	syntax.c:166: print_prompt("\n\r");
      003358 90 4E 21         [24] 1238 	mov	dptr,#___str_4
      00335B 75 F0 80         [24] 1239 	mov	b,#0x80
      00335E 12 32 9C         [24] 1240 	lcall	_print_prompt
                                   1241 ;	syntax.c:167: print_prompt("Recent number of commands from the last ?: ");
      003361 90 4E 24         [24] 1242 	mov	dptr,#___str_5
      003364 75 F0 80         [24] 1243 	mov	b,#0x80
      003367 12 32 9C         [24] 1244 	lcall	_print_prompt
                                   1245 ;	syntax.c:168: printf("%d",recent_commands);
      00336A 90 0F 05         [24] 1246 	mov	dptr,#_recent_commands
      00336D E0               [24] 1247 	movx	a,@dptr
      00336E FF               [12] 1248 	mov	r7,a
      00336F 7E 00            [12] 1249 	mov	r6,#0x00
      003371 C0 07            [24] 1250 	push	ar7
      003373 C0 06            [24] 1251 	push	ar6
      003375 74 1E            [12] 1252 	mov	a,#___str_3
      003377 C0 E0            [24] 1253 	push	acc
      003379 74 4E            [12] 1254 	mov	a,#(___str_3 >> 8)
      00337B C0 E0            [24] 1255 	push	acc
      00337D 74 80            [12] 1256 	mov	a,#0x80
      00337F C0 E0            [24] 1257 	push	acc
      003381 12 43 89         [24] 1258 	lcall	_printf
      003384 E5 81            [12] 1259 	mov	a,sp
      003386 24 FB            [12] 1260 	add	a,#0xfb
      003388 F5 81            [12] 1261 	mov	sp,a
                                   1262 ;	syntax.c:169: print_prompt("\n\r");
      00338A 90 4E 21         [24] 1263 	mov	dptr,#___str_4
      00338D 75 F0 80         [24] 1264 	mov	b,#0x80
      003390 12 32 9C         [24] 1265 	lcall	_print_prompt
                                   1266 ;	syntax.c:170: print_prompt("\n\r");
      003393 90 4E 21         [24] 1267 	mov	dptr,#___str_4
      003396 75 F0 80         [24] 1268 	mov	b,#0x80
      003399 12 32 9C         [24] 1269 	lcall	_print_prompt
                                   1270 ;	syntax.c:172: print_prompt("Total number of storage chars from the start: ");
      00339C 90 4E 50         [24] 1271 	mov	dptr,#___str_6
      00339F 75 F0 80         [24] 1272 	mov	b,#0x80
      0033A2 12 32 9C         [24] 1273 	lcall	_print_prompt
                                   1274 ;	syntax.c:173: printf("%d",total_number_of_storage);
      0033A5 90 0F 04         [24] 1275 	mov	dptr,#_total_number_of_storage
      0033A8 E0               [24] 1276 	movx	a,@dptr
      0033A9 FF               [12] 1277 	mov	r7,a
      0033AA 7E 00            [12] 1278 	mov	r6,#0x00
      0033AC C0 07            [24] 1279 	push	ar7
      0033AE C0 06            [24] 1280 	push	ar6
      0033B0 74 1E            [12] 1281 	mov	a,#___str_3
      0033B2 C0 E0            [24] 1282 	push	acc
      0033B4 74 4E            [12] 1283 	mov	a,#(___str_3 >> 8)
      0033B6 C0 E0            [24] 1284 	push	acc
      0033B8 74 80            [12] 1285 	mov	a,#0x80
      0033BA C0 E0            [24] 1286 	push	acc
      0033BC 12 43 89         [24] 1287 	lcall	_printf
      0033BF E5 81            [12] 1288 	mov	a,sp
      0033C1 24 FB            [12] 1289 	add	a,#0xfb
      0033C3 F5 81            [12] 1290 	mov	sp,a
                                   1291 ;	syntax.c:174: print_prompt("\n\r");
      0033C5 90 4E 21         [24] 1292 	mov	dptr,#___str_4
      0033C8 75 F0 80         [24] 1293 	mov	b,#0x80
      0033CB 12 32 9C         [24] 1294 	lcall	_print_prompt
                                   1295 ;	syntax.c:175: print_prompt("Recent number of storage chars from the last ?: ");
      0033CE 90 4E 7F         [24] 1296 	mov	dptr,#___str_7
      0033D1 75 F0 80         [24] 1297 	mov	b,#0x80
      0033D4 12 32 9C         [24] 1298 	lcall	_print_prompt
                                   1299 ;	syntax.c:176: printf("%d",recent_storage);
      0033D7 90 0F 06         [24] 1300 	mov	dptr,#_recent_storage
      0033DA E0               [24] 1301 	movx	a,@dptr
      0033DB FF               [12] 1302 	mov	r7,a
      0033DC 7E 00            [12] 1303 	mov	r6,#0x00
      0033DE C0 07            [24] 1304 	push	ar7
      0033E0 C0 06            [24] 1305 	push	ar6
      0033E2 74 1E            [12] 1306 	mov	a,#___str_3
      0033E4 C0 E0            [24] 1307 	push	acc
      0033E6 74 4E            [12] 1308 	mov	a,#(___str_3 >> 8)
      0033E8 C0 E0            [24] 1309 	push	acc
      0033EA 74 80            [12] 1310 	mov	a,#0x80
      0033EC C0 E0            [24] 1311 	push	acc
      0033EE 12 43 89         [24] 1312 	lcall	_printf
      0033F1 E5 81            [12] 1313 	mov	a,sp
      0033F3 24 FB            [12] 1314 	add	a,#0xfb
      0033F5 F5 81            [12] 1315 	mov	sp,a
                                   1316 ;	syntax.c:177: print_prompt("\n\r");
      0033F7 90 4E 21         [24] 1317 	mov	dptr,#___str_4
      0033FA 75 F0 80         [24] 1318 	mov	b,#0x80
      0033FD 12 32 9C         [24] 1319 	lcall	_print_prompt
                                   1320 ;	syntax.c:178: print_prompt("\n\r");
      003400 90 4E 21         [24] 1321 	mov	dptr,#___str_4
      003403 75 F0 80         [24] 1322 	mov	b,#0x80
      003406 12 32 9C         [24] 1323 	lcall	_print_prompt
                                   1324 ;	syntax.c:180: for(int i=0; i<99; i++){
      003409 7E 00            [12] 1325 	mov	r6,#0x00
      00340B 7F 00            [12] 1326 	mov	r7,#0x00
      00340D                       1327 00122$:
      00340D C3               [12] 1328 	clr	c
      00340E EE               [12] 1329 	mov	a,r6
      00340F 94 63            [12] 1330 	subb	a,#0x63
      003411 EF               [12] 1331 	mov	a,r7
      003412 64 80            [12] 1332 	xrl	a,#0x80
      003414 94 80            [12] 1333 	subb	a,#0x80
      003416 40 03            [24] 1334 	jc	00192$
      003418 02 34 B3         [24] 1335 	ljmp	00105$
      00341B                       1336 00192$:
                                   1337 ;	syntax.c:181: if(array_for_nodes[i]){
      00341B 90 0E BE         [24] 1338 	mov	dptr,#__mulint_PARM_2
      00341E EE               [12] 1339 	mov	a,r6
      00341F F0               [24] 1340 	movx	@dptr,a
      003420 EF               [12] 1341 	mov	a,r7
      003421 A3               [24] 1342 	inc	dptr
      003422 F0               [24] 1343 	movx	@dptr,a
      003423 90 00 06         [24] 1344 	mov	dptr,#0x0006
      003426 C0 07            [24] 1345 	push	ar7
      003428 C0 06            [24] 1346 	push	ar6
      00342A 12 42 1C         [24] 1347 	lcall	__mulint
      00342D AC 82            [24] 1348 	mov	r4,dpl
      00342F AD 83            [24] 1349 	mov	r5,dph
      003431 D0 06            [24] 1350 	pop	ar6
      003433 D0 07            [24] 1351 	pop	ar7
      003435 EC               [12] 1352 	mov	a,r4
      003436 24 04            [12] 1353 	add	a,#_array_for_nodes
      003438 FC               [12] 1354 	mov	r4,a
      003439 ED               [12] 1355 	mov	a,r5
      00343A 34 04            [12] 1356 	addc	a,#(_array_for_nodes >> 8)
      00343C FD               [12] 1357 	mov	r5,a
      00343D 8C 82            [24] 1358 	mov	dpl,r4
      00343F 8D 83            [24] 1359 	mov	dph,r5
      003441 E0               [24] 1360 	movx	a,@dptr
      003442 60 67            [24] 1361 	jz	00123$
                                   1362 ;	syntax.c:182: printf("Index: %d , starting address of Pointer: %p  Ending Address of the pointer %p size of array: %d\n\r",array_for_nodes[i].index,array_for_nodes[i].data_pointer,array_for_nodes[i].data_pointer+array_for_nodes[i].size, array_for_nodes[i].size);
      003444 C0 06            [24] 1363 	push	ar6
      003446 C0 07            [24] 1364 	push	ar7
      003448 8C 82            [24] 1365 	mov	dpl,r4
      00344A 8D 83            [24] 1366 	mov	dph,r5
      00344C A3               [24] 1367 	inc	dptr
      00344D A3               [24] 1368 	inc	dptr
      00344E A3               [24] 1369 	inc	dptr
      00344F A3               [24] 1370 	inc	dptr
      003450 E0               [24] 1371 	movx	a,@dptr
      003451 F5 08            [12] 1372 	mov	_get_command_sloc0_1_0,a
      003453 A3               [24] 1373 	inc	dptr
      003454 E0               [24] 1374 	movx	a,@dptr
      003455 F5 09            [12] 1375 	mov	(_get_command_sloc0_1_0 + 1),a
      003457 8C 82            [24] 1376 	mov	dpl,r4
      003459 8D 83            [24] 1377 	mov	dph,r5
      00345B A3               [24] 1378 	inc	dptr
      00345C E0               [24] 1379 	movx	a,@dptr
      00345D F8               [12] 1380 	mov	r0,a
      00345E A3               [24] 1381 	inc	dptr
      00345F E0               [24] 1382 	movx	a,@dptr
      003460 F9               [12] 1383 	mov	r1,a
      003461 A3               [24] 1384 	inc	dptr
      003462 E0               [24] 1385 	movx	a,@dptr
      003463 FF               [12] 1386 	mov	r7,a
      003464 E5 08            [12] 1387 	mov	a,_get_command_sloc0_1_0
      003466 28               [12] 1388 	add	a,r0
      003467 FA               [12] 1389 	mov	r2,a
      003468 E5 09            [12] 1390 	mov	a,(_get_command_sloc0_1_0 + 1)
      00346A 39               [12] 1391 	addc	a,r1
      00346B FB               [12] 1392 	mov	r3,a
      00346C 8F 06            [24] 1393 	mov	ar6,r7
      00346E 8C 82            [24] 1394 	mov	dpl,r4
      003470 8D 83            [24] 1395 	mov	dph,r5
      003472 E0               [24] 1396 	movx	a,@dptr
      003473 FC               [12] 1397 	mov	r4,a
      003474 7D 00            [12] 1398 	mov	r5,#0x00
      003476 C0 07            [24] 1399 	push	ar7
      003478 C0 06            [24] 1400 	push	ar6
      00347A C0 08            [24] 1401 	push	_get_command_sloc0_1_0
      00347C C0 09            [24] 1402 	push	(_get_command_sloc0_1_0 + 1)
      00347E C0 02            [24] 1403 	push	ar2
      003480 C0 03            [24] 1404 	push	ar3
      003482 C0 06            [24] 1405 	push	ar6
      003484 C0 00            [24] 1406 	push	ar0
      003486 C0 01            [24] 1407 	push	ar1
      003488 C0 07            [24] 1408 	push	ar7
      00348A C0 04            [24] 1409 	push	ar4
      00348C C0 05            [24] 1410 	push	ar5
      00348E 74 B0            [12] 1411 	mov	a,#___str_8
      003490 C0 E0            [24] 1412 	push	acc
      003492 74 4E            [12] 1413 	mov	a,#(___str_8 >> 8)
      003494 C0 E0            [24] 1414 	push	acc
      003496 74 80            [12] 1415 	mov	a,#0x80
      003498 C0 E0            [24] 1416 	push	acc
      00349A 12 43 89         [24] 1417 	lcall	_printf
      00349D E5 81            [12] 1418 	mov	a,sp
      00349F 24 F3            [12] 1419 	add	a,#0xf3
      0034A1 F5 81            [12] 1420 	mov	sp,a
      0034A3 D0 06            [24] 1421 	pop	ar6
      0034A5 D0 07            [24] 1422 	pop	ar7
                                   1423 ;	syntax.c:244: return 0;
      0034A7 D0 07            [24] 1424 	pop	ar7
      0034A9 D0 06            [24] 1425 	pop	ar6
                                   1426 ;	syntax.c:182: printf("Index: %d , starting address of Pointer: %p  Ending Address of the pointer %p size of array: %d\n\r",array_for_nodes[i].index,array_for_nodes[i].data_pointer,array_for_nodes[i].data_pointer+array_for_nodes[i].size, array_for_nodes[i].size);
      0034AB                       1427 00123$:
                                   1428 ;	syntax.c:180: for(int i=0; i<99; i++){
      0034AB 0E               [12] 1429 	inc	r6
      0034AC BE 00 01         [24] 1430 	cjne	r6,#0x00,00194$
      0034AF 0F               [12] 1431 	inc	r7
      0034B0                       1432 00194$:
      0034B0 02 34 0D         [24] 1433 	ljmp	00122$
      0034B3                       1434 00105$:
                                   1435 ;	syntax.c:189: uint8_t *rd_ptr = array_for_nodes[0].data_pointer;
      0034B3 90 04 05         [24] 1436 	mov	dptr,#(_array_for_nodes + 0x0001)
      0034B6 E0               [24] 1437 	movx	a,@dptr
      0034B7 F5 0A            [12] 1438 	mov	_get_command_sloc1_1_0,a
      0034B9 A3               [24] 1439 	inc	dptr
      0034BA E0               [24] 1440 	movx	a,@dptr
      0034BB F5 0B            [12] 1441 	mov	(_get_command_sloc1_1_0 + 1),a
      0034BD A3               [24] 1442 	inc	dptr
      0034BE E0               [24] 1443 	movx	a,@dptr
      0034BF F5 0C            [12] 1444 	mov	(_get_command_sloc1_1_0 + 2),a
      0034C1 90 06 74         [24] 1445 	mov	dptr,#_get_command_rd_ptr_131073_72
      0034C4 E5 0A            [12] 1446 	mov	a,_get_command_sloc1_1_0
      0034C6 F0               [24] 1447 	movx	@dptr,a
      0034C7 E5 0B            [12] 1448 	mov	a,(_get_command_sloc1_1_0 + 1)
      0034C9 A3               [24] 1449 	inc	dptr
      0034CA F0               [24] 1450 	movx	@dptr,a
      0034CB E5 0C            [12] 1451 	mov	a,(_get_command_sloc1_1_0 + 2)
      0034CD A3               [24] 1452 	inc	dptr
      0034CE F0               [24] 1453 	movx	@dptr,a
                                   1454 ;	syntax.c:191: uint8_t temp = array_for_nodes[0].size*sizeof(uint8_t);
      0034CF 90 04 08         [24] 1455 	mov	dptr,#(_array_for_nodes + 0x0004)
      0034D2 E0               [24] 1456 	movx	a,@dptr
      0034D3 90 06 77         [24] 1457 	mov	dptr,#_get_command_temp_131073_72
      0034D6 F0               [24] 1458 	movx	@dptr,a
                                   1459 ;	syntax.c:192: printf("....... Dumping Buffer0 ......\r\n");
      0034D7 74 12            [12] 1460 	mov	a,#___str_9
      0034D9 C0 E0            [24] 1461 	push	acc
      0034DB 74 4F            [12] 1462 	mov	a,#(___str_9 >> 8)
      0034DD C0 E0            [24] 1463 	push	acc
      0034DF 74 80            [12] 1464 	mov	a,#0x80
      0034E1 C0 E0            [24] 1465 	push	acc
      0034E3 12 43 89         [24] 1466 	lcall	_printf
      0034E6 15 81            [12] 1467 	dec	sp
      0034E8 15 81            [12] 1468 	dec	sp
      0034EA 15 81            [12] 1469 	dec	sp
                                   1470 ;	syntax.c:193: while(temp){
      0034EC                       1471 00107$:
      0034EC 90 06 77         [24] 1472 	mov	dptr,#_get_command_temp_131073_72
      0034EF E0               [24] 1473 	movx	a,@dptr
      0034F0 FC               [12] 1474 	mov	r4,a
      0034F1 E0               [24] 1475 	movx	a,@dptr
      0034F2 70 03            [24] 1476 	jnz	00195$
      0034F4 02 35 E5         [24] 1477 	ljmp	00109$
      0034F7                       1478 00195$:
                                   1479 ;	syntax.c:194: printf("%p: ", rd_ptr);
      0034F7 C0 04            [24] 1480 	push	ar4
      0034F9 90 06 74         [24] 1481 	mov	dptr,#_get_command_rd_ptr_131073_72
      0034FC E0               [24] 1482 	movx	a,@dptr
      0034FD C0 E0            [24] 1483 	push	acc
      0034FF A3               [24] 1484 	inc	dptr
      003500 E0               [24] 1485 	movx	a,@dptr
      003501 C0 E0            [24] 1486 	push	acc
      003503 A3               [24] 1487 	inc	dptr
      003504 E0               [24] 1488 	movx	a,@dptr
      003505 C0 E0            [24] 1489 	push	acc
      003507 74 33            [12] 1490 	mov	a,#___str_10
      003509 C0 E0            [24] 1491 	push	acc
      00350B 74 4F            [12] 1492 	mov	a,#(___str_10 >> 8)
      00350D C0 E0            [24] 1493 	push	acc
      00350F 74 80            [12] 1494 	mov	a,#0x80
      003511 C0 E0            [24] 1495 	push	acc
      003513 12 43 89         [24] 1496 	lcall	_printf
      003516 E5 81            [12] 1497 	mov	a,sp
      003518 24 FA            [12] 1498 	add	a,#0xfa
      00351A F5 81            [12] 1499 	mov	sp,a
      00351C D0 04            [24] 1500 	pop	ar4
                                   1501 ;	syntax.c:195: for(int i=15; i>=0;i--){
      00351E 90 06 74         [24] 1502 	mov	dptr,#_get_command_rd_ptr_131073_72
      003521 E0               [24] 1503 	movx	a,@dptr
      003522 F9               [12] 1504 	mov	r1,a
      003523 A3               [24] 1505 	inc	dptr
      003524 E0               [24] 1506 	movx	a,@dptr
      003525 FA               [12] 1507 	mov	r2,a
      003526 A3               [24] 1508 	inc	dptr
      003527 E0               [24] 1509 	movx	a,@dptr
      003528 FB               [12] 1510 	mov	r3,a
      003529 75 08 0F         [24] 1511 	mov	_get_command_sloc0_1_0,#0x0f
      00352C 75 09 00         [24] 1512 	mov	(_get_command_sloc0_1_0 + 1),#0x00
      00352F                       1513 00125$:
      00352F E5 09            [12] 1514 	mov	a,(_get_command_sloc0_1_0 + 1)
      003531 30 E7 03         [24] 1515 	jnb	acc.7,00196$
      003534 02 35 BD         [24] 1516 	ljmp	00144$
      003537                       1517 00196$:
                                   1518 ;	syntax.c:196: printf("%d ",(*rd_ptr & (0x00FF)));
      003537 89 82            [24] 1519 	mov	dpl,r1
      003539 8A 83            [24] 1520 	mov	dph,r2
      00353B 8B F0            [24] 1521 	mov	b,r3
      00353D 12 4D AB         [24] 1522 	lcall	__gptrget
      003540 F8               [12] 1523 	mov	r0,a
      003541 7F 00            [12] 1524 	mov	r7,#0x00
      003543 C0 04            [24] 1525 	push	ar4
      003545 C0 03            [24] 1526 	push	ar3
      003547 C0 02            [24] 1527 	push	ar2
      003549 C0 01            [24] 1528 	push	ar1
      00354B C0 00            [24] 1529 	push	ar0
      00354D C0 07            [24] 1530 	push	ar7
      00354F 74 38            [12] 1531 	mov	a,#___str_11
      003551 C0 E0            [24] 1532 	push	acc
      003553 74 4F            [12] 1533 	mov	a,#(___str_11 >> 8)
      003555 C0 E0            [24] 1534 	push	acc
      003557 74 80            [12] 1535 	mov	a,#0x80
      003559 C0 E0            [24] 1536 	push	acc
      00355B 12 43 89         [24] 1537 	lcall	_printf
      00355E E5 81            [12] 1538 	mov	a,sp
      003560 24 FB            [12] 1539 	add	a,#0xfb
      003562 F5 81            [12] 1540 	mov	sp,a
      003564 D0 01            [24] 1541 	pop	ar1
      003566 D0 02            [24] 1542 	pop	ar2
      003568 D0 03            [24] 1543 	pop	ar3
                                   1544 ;	syntax.c:197: printf("%d ",((*rd_ptr & (0xFF00))>>8U));
      00356A 89 82            [24] 1545 	mov	dpl,r1
      00356C 8A 83            [24] 1546 	mov	dph,r2
      00356E 8B F0            [24] 1547 	mov	b,r3
      003570 12 4D AB         [24] 1548 	lcall	__gptrget
      003573 A3               [24] 1549 	inc	dptr
      003574 A9 82            [24] 1550 	mov	r1,dpl
      003576 AA 83            [24] 1551 	mov	r2,dph
      003578 7F 00            [12] 1552 	mov	r7,#0x00
      00357A 7E 00            [12] 1553 	mov	r6,#0x00
      00357C C0 03            [24] 1554 	push	ar3
      00357E C0 02            [24] 1555 	push	ar2
      003580 C0 01            [24] 1556 	push	ar1
      003582 C0 07            [24] 1557 	push	ar7
      003584 C0 06            [24] 1558 	push	ar6
      003586 74 38            [12] 1559 	mov	a,#___str_11
      003588 C0 E0            [24] 1560 	push	acc
      00358A 74 4F            [12] 1561 	mov	a,#(___str_11 >> 8)
      00358C C0 E0            [24] 1562 	push	acc
      00358E 74 80            [12] 1563 	mov	a,#0x80
      003590 C0 E0            [24] 1564 	push	acc
      003592 12 43 89         [24] 1565 	lcall	_printf
      003595 E5 81            [12] 1566 	mov	a,sp
      003597 24 FB            [12] 1567 	add	a,#0xfb
      003599 F5 81            [12] 1568 	mov	sp,a
      00359B D0 01            [24] 1569 	pop	ar1
      00359D D0 02            [24] 1570 	pop	ar2
      00359F D0 03            [24] 1571 	pop	ar3
      0035A1 D0 04            [24] 1572 	pop	ar4
                                   1573 ;	syntax.c:198: *wr_ptr = 0;
      0035A3 85 0A 82         [24] 1574 	mov	dpl,_get_command_sloc1_1_0
      0035A6 85 0B 83         [24] 1575 	mov	dph,(_get_command_sloc1_1_0 + 1)
      0035A9 85 0C F0         [24] 1576 	mov	b,(_get_command_sloc1_1_0 + 2)
      0035AC E4               [12] 1577 	clr	a
      0035AD 12 40 5C         [24] 1578 	lcall	__gptrput
                                   1579 ;	syntax.c:199: rd_ptr++;
                                   1580 ;	syntax.c:200: temp--;
      0035B0 1C               [12] 1581 	dec	r4
                                   1582 ;	syntax.c:195: for(int i=15; i>=0;i--){
      0035B1 15 08            [12] 1583 	dec	_get_command_sloc0_1_0
      0035B3 74 FF            [12] 1584 	mov	a,#0xff
      0035B5 B5 08 02         [24] 1585 	cjne	a,_get_command_sloc0_1_0,00197$
      0035B8 15 09            [12] 1586 	dec	(_get_command_sloc0_1_0 + 1)
      0035BA                       1587 00197$:
      0035BA 02 35 2F         [24] 1588 	ljmp	00125$
      0035BD                       1589 00144$:
      0035BD 90 06 74         [24] 1590 	mov	dptr,#_get_command_rd_ptr_131073_72
      0035C0 E9               [12] 1591 	mov	a,r1
      0035C1 F0               [24] 1592 	movx	@dptr,a
      0035C2 EA               [12] 1593 	mov	a,r2
      0035C3 A3               [24] 1594 	inc	dptr
      0035C4 F0               [24] 1595 	movx	@dptr,a
      0035C5 EB               [12] 1596 	mov	a,r3
      0035C6 A3               [24] 1597 	inc	dptr
      0035C7 F0               [24] 1598 	movx	@dptr,a
      0035C8 90 06 77         [24] 1599 	mov	dptr,#_get_command_temp_131073_72
      0035CB EC               [12] 1600 	mov	a,r4
      0035CC F0               [24] 1601 	movx	@dptr,a
                                   1602 ;	syntax.c:202: printf("\r\n");
      0035CD 74 3C            [12] 1603 	mov	a,#___str_12
      0035CF C0 E0            [24] 1604 	push	acc
      0035D1 74 4F            [12] 1605 	mov	a,#(___str_12 >> 8)
      0035D3 C0 E0            [24] 1606 	push	acc
      0035D5 74 80            [12] 1607 	mov	a,#0x80
      0035D7 C0 E0            [24] 1608 	push	acc
      0035D9 12 43 89         [24] 1609 	lcall	_printf
      0035DC 15 81            [12] 1610 	dec	sp
      0035DE 15 81            [12] 1611 	dec	sp
      0035E0 15 81            [12] 1612 	dec	sp
      0035E2 02 34 EC         [24] 1613 	ljmp	00107$
      0035E5                       1614 00109$:
                                   1615 ;	syntax.c:206: recent_commands = 0;
      0035E5 90 0F 05         [24] 1616 	mov	dptr,#_recent_commands
      0035E8 E4               [12] 1617 	clr	a
      0035E9 F0               [24] 1618 	movx	@dptr,a
                                   1619 ;	syntax.c:207: recent_storage = 0;
      0035EA 90 0F 06         [24] 1620 	mov	dptr,#_recent_storage
      0035ED F0               [24] 1621 	movx	@dptr,a
                                   1622 ;	syntax.c:208: break;
      0035EE 02 37 3B         [24] 1623 	ljmp	00120$
                                   1624 ;	syntax.c:210: case '+':
      0035F1                       1625 00110$:
                                   1626 ;	syntax.c:211: temp_value = get_buf_value("\n\rEnter buffer size between 20 to 400: ", UPPER_SMALL_BUFFERS, LOWER_SMALL_BUFFERS);
      0035F1 90 06 5E         [24] 1627 	mov	dptr,#_get_buf_value_PARM_2
      0035F4 74 90            [12] 1628 	mov	a,#0x90
      0035F6 F0               [24] 1629 	movx	@dptr,a
      0035F7 74 01            [12] 1630 	mov	a,#0x01
      0035F9 A3               [24] 1631 	inc	dptr
      0035FA F0               [24] 1632 	movx	@dptr,a
      0035FB 90 06 60         [24] 1633 	mov	dptr,#_get_buf_value_PARM_3
      0035FE 74 14            [12] 1634 	mov	a,#0x14
      003600 F0               [24] 1635 	movx	@dptr,a
      003601 E4               [12] 1636 	clr	a
      003602 A3               [24] 1637 	inc	dptr
      003603 F0               [24] 1638 	movx	@dptr,a
      003604 90 4F 3F         [24] 1639 	mov	dptr,#___str_13
      003607 75 F0 80         [24] 1640 	mov	b,#0x80
      00360A 12 30 C9         [24] 1641 	lcall	_get_buf_value
      00360D AE 82            [24] 1642 	mov	r6,dpl
      00360F AF 83            [24] 1643 	mov	r7,dph
                                   1644 ;	syntax.c:212: print_prompt("Buffer size you entered is : ");
      003611 90 4F 67         [24] 1645 	mov	dptr,#___str_14
      003614 75 F0 80         [24] 1646 	mov	b,#0x80
      003617 C0 07            [24] 1647 	push	ar7
      003619 C0 06            [24] 1648 	push	ar6
      00361B 12 32 9C         [24] 1649 	lcall	_print_prompt
      00361E D0 06            [24] 1650 	pop	ar6
      003620 D0 07            [24] 1651 	pop	ar7
                                   1652 ;	syntax.c:213: printf("%d \n\r", temp_value);
      003622 C0 07            [24] 1653 	push	ar7
      003624 C0 06            [24] 1654 	push	ar6
      003626 C0 06            [24] 1655 	push	ar6
      003628 C0 07            [24] 1656 	push	ar7
      00362A 74 85            [12] 1657 	mov	a,#___str_15
      00362C C0 E0            [24] 1658 	push	acc
      00362E 74 4F            [12] 1659 	mov	a,#(___str_15 >> 8)
      003630 C0 E0            [24] 1660 	push	acc
      003632 74 80            [12] 1661 	mov	a,#0x80
      003634 C0 E0            [24] 1662 	push	acc
      003636 12 43 89         [24] 1663 	lcall	_printf
      003639 E5 81            [12] 1664 	mov	a,sp
      00363B 24 FB            [12] 1665 	add	a,#0xfb
      00363D F5 81            [12] 1666 	mov	sp,a
      00363F D0 06            [24] 1667 	pop	ar6
      003641 D0 07            [24] 1668 	pop	ar7
                                   1669 ;	syntax.c:215: pointer = (__xdata uint8_t *) malloc(temp_value);
      003643 8E 82            [24] 1670 	mov	dpl,r6
      003645 8F 83            [24] 1671 	mov	dph,r7
      003647 C0 07            [24] 1672 	push	ar7
      003649 C0 06            [24] 1673 	push	ar6
      00364B 12 40 B3         [24] 1674 	lcall	_malloc
      00364E AC 82            [24] 1675 	mov	r4,dpl
      003650 AD 83            [24] 1676 	mov	r5,dph
      003652 D0 06            [24] 1677 	pop	ar6
      003654 D0 07            [24] 1678 	pop	ar7
                                   1679 ;	syntax.c:216: if (pointer == NULL){
      003656 EC               [12] 1680 	mov	a,r4
      003657 4D               [12] 1681 	orl	a,r5
      003658 70 19            [24] 1682 	jnz	00112$
                                   1683 ;	syntax.c:217: print_prompt("\n\rFailed to get malloc try to enter smaller size by again entering +");
      00365A 90 4F 8B         [24] 1684 	mov	dptr,#___str_16
      00365D 75 F0 80         [24] 1685 	mov	b,#0x80
      003660 C0 07            [24] 1686 	push	ar7
      003662 C0 06            [24] 1687 	push	ar6
      003664 C0 05            [24] 1688 	push	ar5
      003666 C0 04            [24] 1689 	push	ar4
      003668 12 32 9C         [24] 1690 	lcall	_print_prompt
      00366B D0 04            [24] 1691 	pop	ar4
      00366D D0 05            [24] 1692 	pop	ar5
      00366F D0 06            [24] 1693 	pop	ar6
      003671 D0 07            [24] 1694 	pop	ar7
      003673                       1695 00112$:
                                   1696 ;	syntax.c:221: node_t node = {index_of_buffers, pointer, temp_value};
      003673 90 0F 02         [24] 1697 	mov	dptr,#_index_of_buffers
      003676 E0               [24] 1698 	movx	a,@dptr
      003677 90 06 78         [24] 1699 	mov	dptr,#_get_command_node_131074_77
      00367A F0               [24] 1700 	movx	@dptr,a
      00367B 7B 00            [12] 1701 	mov	r3,#0x00
      00367D 90 06 79         [24] 1702 	mov	dptr,#(_get_command_node_131074_77 + 0x0001)
      003680 EC               [12] 1703 	mov	a,r4
      003681 F0               [24] 1704 	movx	@dptr,a
      003682 ED               [12] 1705 	mov	a,r5
      003683 A3               [24] 1706 	inc	dptr
      003684 F0               [24] 1707 	movx	@dptr,a
      003685 EB               [12] 1708 	mov	a,r3
      003686 A3               [24] 1709 	inc	dptr
      003687 F0               [24] 1710 	movx	@dptr,a
      003688 90 06 7C         [24] 1711 	mov	dptr,#(_get_command_node_131074_77 + 0x0004)
      00368B EE               [12] 1712 	mov	a,r6
      00368C F0               [24] 1713 	movx	@dptr,a
      00368D EF               [12] 1714 	mov	a,r7
      00368E A3               [24] 1715 	inc	dptr
      00368F F0               [24] 1716 	movx	@dptr,a
                                   1717 ;	syntax.c:222: array_for_nodes[index_of_buffers] = node;
      003690 90 0F 02         [24] 1718 	mov	dptr,#_index_of_buffers
      003693 E0               [24] 1719 	movx	a,@dptr
      003694 75 F0 06         [24] 1720 	mov	b,#0x06
      003697 A4               [48] 1721 	mul	ab
      003698 24 04            [12] 1722 	add	a,#_array_for_nodes
      00369A FE               [12] 1723 	mov	r6,a
      00369B 74 04            [12] 1724 	mov	a,#(_array_for_nodes >> 8)
      00369D 35 F0            [12] 1725 	addc	a,b
      00369F FF               [12] 1726 	mov	r7,a
      0036A0 7D 00            [12] 1727 	mov	r5,#0x00
      0036A2 90 0E AD         [24] 1728 	mov	dptr,#___memcpy_PARM_2
      0036A5 74 78            [12] 1729 	mov	a,#_get_command_node_131074_77
      0036A7 F0               [24] 1730 	movx	@dptr,a
      0036A8 74 06            [12] 1731 	mov	a,#(_get_command_node_131074_77 >> 8)
      0036AA A3               [24] 1732 	inc	dptr
      0036AB F0               [24] 1733 	movx	@dptr,a
      0036AC E4               [12] 1734 	clr	a
      0036AD A3               [24] 1735 	inc	dptr
      0036AE F0               [24] 1736 	movx	@dptr,a
      0036AF 90 0E B0         [24] 1737 	mov	dptr,#___memcpy_PARM_3
      0036B2 74 06            [12] 1738 	mov	a,#0x06
      0036B4 F0               [24] 1739 	movx	@dptr,a
      0036B5 E4               [12] 1740 	clr	a
      0036B6 A3               [24] 1741 	inc	dptr
      0036B7 F0               [24] 1742 	movx	@dptr,a
      0036B8 8E 82            [24] 1743 	mov	dpl,r6
      0036BA 8F 83            [24] 1744 	mov	dph,r7
      0036BC 8D F0            [24] 1745 	mov	b,r5
      0036BE 12 3F E8         [24] 1746 	lcall	___memcpy
                                   1747 ;	syntax.c:223: index_of_buffers++;
      0036C1 90 0F 02         [24] 1748 	mov	dptr,#_index_of_buffers
      0036C4 E0               [24] 1749 	movx	a,@dptr
      0036C5 24 01            [12] 1750 	add	a,#0x01
      0036C7 F0               [24] 1751 	movx	@dptr,a
                                   1752 ;	syntax.c:224: break;
                                   1753 ;	syntax.c:226: case '-':
      0036C8 80 71            [24] 1754 	sjmp	00120$
      0036CA                       1755 00113$:
                                   1756 ;	syntax.c:227: print_prompt("\n\rEnter Number to delete between 0 to 127 for buffer:");
      0036CA 90 4F D0         [24] 1757 	mov	dptr,#___str_17
      0036CD 75 F0 80         [24] 1758 	mov	b,#0x80
      0036D0 12 32 9C         [24] 1759 	lcall	_print_prompt
                                   1760 ;	syntax.c:228: temp_value = getchar();
      0036D3 12 30 B4         [24] 1761 	lcall	_getchar
                                   1762 ;	syntax.c:229: putchar(temp_value);
      0036D6 AE 82            [24] 1763 	mov	r6,dpl
      0036D8 AF 83            [24] 1764 	mov  r7,dph
      0036DA C0 07            [24] 1765 	push	ar7
      0036DC C0 06            [24] 1766 	push	ar6
      0036DE 12 30 97         [24] 1767 	lcall	_putchar
      0036E1 D0 06            [24] 1768 	pop	ar6
      0036E3 D0 07            [24] 1769 	pop	ar7
                                   1770 ;	syntax.c:230: if(temp_value <= 0) break;
      0036E5 C3               [12] 1771 	clr	c
      0036E6 E4               [12] 1772 	clr	a
      0036E7 9E               [12] 1773 	subb	a,r6
      0036E8 74 80            [12] 1774 	mov	a,#(0x00 ^ 0x80)
      0036EA 8F F0            [24] 1775 	mov	b,r7
      0036EC 63 F0 80         [24] 1776 	xrl	b,#0x80
      0036EF 95 F0            [12] 1777 	subb	a,b
      0036F1 50 48            [24] 1778 	jnc	00120$
                                   1779 ;	syntax.c:231: if(array_for_nodes[temp_value]){
      0036F3 90 0E BE         [24] 1780 	mov	dptr,#__mulint_PARM_2
      0036F6 EE               [12] 1781 	mov	a,r6
      0036F7 F0               [24] 1782 	movx	@dptr,a
      0036F8 EF               [12] 1783 	mov	a,r7
      0036F9 A3               [24] 1784 	inc	dptr
      0036FA F0               [24] 1785 	movx	@dptr,a
      0036FB 90 00 06         [24] 1786 	mov	dptr,#0x0006
      0036FE 12 42 1C         [24] 1787 	lcall	__mulint
      003701 AE 82            [24] 1788 	mov	r6,dpl
      003703 AF 83            [24] 1789 	mov	r7,dph
      003705 EE               [12] 1790 	mov	a,r6
      003706 24 04            [12] 1791 	add	a,#_array_for_nodes
      003708 FE               [12] 1792 	mov	r6,a
      003709 EF               [12] 1793 	mov	a,r7
      00370A 34 04            [12] 1794 	addc	a,#(_array_for_nodes >> 8)
      00370C FF               [12] 1795 	mov	r7,a
      00370D 8E 82            [24] 1796 	mov	dpl,r6
      00370F 8F 83            [24] 1797 	mov	dph,r7
      003711 E0               [24] 1798 	movx	a,@dptr
      003712 60 27            [24] 1799 	jz	00120$
                                   1800 ;	syntax.c:232: array_for_nodes[temp_value].size = 0;
      003714 8E 82            [24] 1801 	mov	dpl,r6
      003716 8F 83            [24] 1802 	mov	dph,r7
      003718 A3               [24] 1803 	inc	dptr
      003719 A3               [24] 1804 	inc	dptr
      00371A A3               [24] 1805 	inc	dptr
      00371B A3               [24] 1806 	inc	dptr
      00371C E4               [12] 1807 	clr	a
      00371D F0               [24] 1808 	movx	@dptr,a
      00371E A3               [24] 1809 	inc	dptr
      00371F F0               [24] 1810 	movx	@dptr,a
                                   1811 ;	syntax.c:233: free(array_for_nodes[temp_value].data_pointer);
      003720 8E 82            [24] 1812 	mov	dpl,r6
      003722 8F 83            [24] 1813 	mov	dph,r7
      003724 A3               [24] 1814 	inc	dptr
      003725 E0               [24] 1815 	movx	a,@dptr
      003726 FD               [12] 1816 	mov	r5,a
      003727 A3               [24] 1817 	inc	dptr
      003728 E0               [24] 1818 	movx	a,@dptr
      003729 FE               [12] 1819 	mov	r6,a
      00372A A3               [24] 1820 	inc	dptr
      00372B E0               [24] 1821 	movx	a,@dptr
      00372C FF               [12] 1822 	mov	r7,a
      00372D 8D 82            [24] 1823 	mov	dpl,r5
      00372F 8E 83            [24] 1824 	mov	dph,r6
      003731 8F F0            [24] 1825 	mov	b,r7
      003733 12 3C 5D         [24] 1826 	lcall	_free
                                   1827 ;	syntax.c:235: break;
                                   1828 ;	syntax.c:237: case '=':
      003736 80 03            [24] 1829 	sjmp	00120$
      003738                       1830 00118$:
                                   1831 ;	syntax.c:238: buffer0_dump();
      003738 12 37 3F         [24] 1832 	lcall	_buffer0_dump
                                   1833 ;	syntax.c:242: }
      00373B                       1834 00120$:
                                   1835 ;	syntax.c:244: return 0;
      00373B 90 00 00         [24] 1836 	mov	dptr,#0x0000
                                   1837 ;	syntax.c:245: }
      00373E 22               [24] 1838 	ret
                                   1839 ;------------------------------------------------------------
                                   1840 ;Allocation info for local variables in function 'buffer0_dump'
                                   1841 ;------------------------------------------------------------
                                   1842 ;rd_ptr                    Allocated with name '_buffer0_dump_rd_ptr_65536_79'
                                   1843 ;temp                      Allocated with name '_buffer0_dump_temp_65536_79'
                                   1844 ;i                         Allocated with name '_buffer0_dump_i_196608_81'
                                   1845 ;------------------------------------------------------------
                                   1846 ;	syntax.c:247: void buffer0_dump(){
                                   1847 ;	-----------------------------------------
                                   1848 ;	 function buffer0_dump
                                   1849 ;	-----------------------------------------
      00373F                       1850 _buffer0_dump:
                                   1851 ;	syntax.c:248: uint8_t *rd_ptr = array_for_nodes[0].data_pointer;
      00373F 90 04 05         [24] 1852 	mov	dptr,#(_array_for_nodes + 0x0001)
      003742 E0               [24] 1853 	movx	a,@dptr
      003743 FD               [12] 1854 	mov	r5,a
      003744 A3               [24] 1855 	inc	dptr
      003745 E0               [24] 1856 	movx	a,@dptr
      003746 FE               [12] 1857 	mov	r6,a
      003747 A3               [24] 1858 	inc	dptr
      003748 E0               [24] 1859 	movx	a,@dptr
      003749 FF               [12] 1860 	mov	r7,a
      00374A 90 06 7E         [24] 1861 	mov	dptr,#_buffer0_dump_rd_ptr_65536_79
      00374D ED               [12] 1862 	mov	a,r5
      00374E F0               [24] 1863 	movx	@dptr,a
      00374F EE               [12] 1864 	mov	a,r6
      003750 A3               [24] 1865 	inc	dptr
      003751 F0               [24] 1866 	movx	@dptr,a
      003752 EF               [12] 1867 	mov	a,r7
      003753 A3               [24] 1868 	inc	dptr
      003754 F0               [24] 1869 	movx	@dptr,a
                                   1870 ;	syntax.c:249: uint8_t temp = array_for_nodes[0].size*sizeof(uint8_t);
      003755 90 04 08         [24] 1871 	mov	dptr,#(_array_for_nodes + 0x0004)
      003758 E0               [24] 1872 	movx	a,@dptr
      003759 90 06 81         [24] 1873 	mov	dptr,#_buffer0_dump_temp_65536_79
      00375C F0               [24] 1874 	movx	@dptr,a
                                   1875 ;	syntax.c:250: printf("....... Dumping Buffer0 ......\r\n");
      00375D 74 12            [12] 1876 	mov	a,#___str_9
      00375F C0 E0            [24] 1877 	push	acc
      003761 74 4F            [12] 1878 	mov	a,#(___str_9 >> 8)
      003763 C0 E0            [24] 1879 	push	acc
      003765 74 80            [12] 1880 	mov	a,#0x80
      003767 C0 E0            [24] 1881 	push	acc
      003769 12 43 89         [24] 1882 	lcall	_printf
      00376C 15 81            [12] 1883 	dec	sp
      00376E 15 81            [12] 1884 	dec	sp
      003770 15 81            [12] 1885 	dec	sp
                                   1886 ;	syntax.c:251: while(temp){
      003772                       1887 00102$:
      003772 90 06 81         [24] 1888 	mov	dptr,#_buffer0_dump_temp_65536_79
      003775 E0               [24] 1889 	movx	a,@dptr
      003776 FF               [12] 1890 	mov	r7,a
      003777 E0               [24] 1891 	movx	a,@dptr
      003778 70 01            [24] 1892 	jnz	00127$
      00377A 22               [24] 1893 	ret
      00377B                       1894 00127$:
                                   1895 ;	syntax.c:252: printf("%p: ", rd_ptr);
      00377B C0 07            [24] 1896 	push	ar7
      00377D 90 06 7E         [24] 1897 	mov	dptr,#_buffer0_dump_rd_ptr_65536_79
      003780 E0               [24] 1898 	movx	a,@dptr
      003781 C0 E0            [24] 1899 	push	acc
      003783 A3               [24] 1900 	inc	dptr
      003784 E0               [24] 1901 	movx	a,@dptr
      003785 C0 E0            [24] 1902 	push	acc
      003787 A3               [24] 1903 	inc	dptr
      003788 E0               [24] 1904 	movx	a,@dptr
      003789 C0 E0            [24] 1905 	push	acc
      00378B 74 33            [12] 1906 	mov	a,#___str_10
      00378D C0 E0            [24] 1907 	push	acc
      00378F 74 4F            [12] 1908 	mov	a,#(___str_10 >> 8)
      003791 C0 E0            [24] 1909 	push	acc
      003793 74 80            [12] 1910 	mov	a,#0x80
      003795 C0 E0            [24] 1911 	push	acc
      003797 12 43 89         [24] 1912 	lcall	_printf
      00379A E5 81            [12] 1913 	mov	a,sp
      00379C 24 FA            [12] 1914 	add	a,#0xfa
      00379E F5 81            [12] 1915 	mov	sp,a
      0037A0 D0 07            [24] 1916 	pop	ar7
                                   1917 ;	syntax.c:253: for(int i=15; i>=0;i--){
      0037A2 90 06 7E         [24] 1918 	mov	dptr,#_buffer0_dump_rd_ptr_65536_79
      0037A5 E0               [24] 1919 	movx	a,@dptr
      0037A6 FC               [12] 1920 	mov	r4,a
      0037A7 A3               [24] 1921 	inc	dptr
      0037A8 E0               [24] 1922 	movx	a,@dptr
      0037A9 FD               [12] 1923 	mov	r5,a
      0037AA A3               [24] 1924 	inc	dptr
      0037AB E0               [24] 1925 	movx	a,@dptr
      0037AC FE               [12] 1926 	mov	r6,a
      0037AD 7A 0F            [12] 1927 	mov	r2,#0x0f
      0037AF 7B 00            [12] 1928 	mov	r3,#0x00
      0037B1                       1929 00106$:
      0037B1 EB               [12] 1930 	mov	a,r3
      0037B2 30 E7 03         [24] 1931 	jnb	acc.7,00128$
      0037B5 02 38 3D         [24] 1932 	ljmp	00114$
      0037B8                       1933 00128$:
                                   1934 ;	syntax.c:254: printf("%d ",(*rd_ptr & (0x00FF)));
      0037B8 8C 82            [24] 1935 	mov	dpl,r4
      0037BA 8D 83            [24] 1936 	mov	dph,r5
      0037BC 8E F0            [24] 1937 	mov	b,r6
      0037BE 12 4D AB         [24] 1938 	lcall	__gptrget
      0037C1 F8               [12] 1939 	mov	r0,a
      0037C2 79 00            [12] 1940 	mov	r1,#0x00
      0037C4 C0 07            [24] 1941 	push	ar7
      0037C6 C0 06            [24] 1942 	push	ar6
      0037C8 C0 05            [24] 1943 	push	ar5
      0037CA C0 04            [24] 1944 	push	ar4
      0037CC C0 03            [24] 1945 	push	ar3
      0037CE C0 02            [24] 1946 	push	ar2
      0037D0 C0 00            [24] 1947 	push	ar0
      0037D2 C0 01            [24] 1948 	push	ar1
      0037D4 74 38            [12] 1949 	mov	a,#___str_11
      0037D6 C0 E0            [24] 1950 	push	acc
      0037D8 74 4F            [12] 1951 	mov	a,#(___str_11 >> 8)
      0037DA C0 E0            [24] 1952 	push	acc
      0037DC 74 80            [12] 1953 	mov	a,#0x80
      0037DE C0 E0            [24] 1954 	push	acc
      0037E0 12 43 89         [24] 1955 	lcall	_printf
      0037E3 E5 81            [12] 1956 	mov	a,sp
      0037E5 24 FB            [12] 1957 	add	a,#0xfb
      0037E7 F5 81            [12] 1958 	mov	sp,a
      0037E9 D0 02            [24] 1959 	pop	ar2
      0037EB D0 03            [24] 1960 	pop	ar3
      0037ED D0 04            [24] 1961 	pop	ar4
      0037EF D0 05            [24] 1962 	pop	ar5
      0037F1 D0 06            [24] 1963 	pop	ar6
                                   1964 ;	syntax.c:255: printf("%d ",((*rd_ptr & (0xFF00))>>8U));
      0037F3 8C 82            [24] 1965 	mov	dpl,r4
      0037F5 8D 83            [24] 1966 	mov	dph,r5
      0037F7 8E F0            [24] 1967 	mov	b,r6
      0037F9 12 4D AB         [24] 1968 	lcall	__gptrget
      0037FC A3               [24] 1969 	inc	dptr
      0037FD AC 82            [24] 1970 	mov	r4,dpl
      0037FF AD 83            [24] 1971 	mov	r5,dph
      003801 78 00            [12] 1972 	mov	r0,#0x00
      003803 79 00            [12] 1973 	mov	r1,#0x00
      003805 C0 06            [24] 1974 	push	ar6
      003807 C0 05            [24] 1975 	push	ar5
      003809 C0 04            [24] 1976 	push	ar4
      00380B C0 03            [24] 1977 	push	ar3
      00380D C0 02            [24] 1978 	push	ar2
      00380F C0 00            [24] 1979 	push	ar0
      003811 C0 01            [24] 1980 	push	ar1
      003813 74 38            [12] 1981 	mov	a,#___str_11
      003815 C0 E0            [24] 1982 	push	acc
      003817 74 4F            [12] 1983 	mov	a,#(___str_11 >> 8)
      003819 C0 E0            [24] 1984 	push	acc
      00381B 74 80            [12] 1985 	mov	a,#0x80
      00381D C0 E0            [24] 1986 	push	acc
      00381F 12 43 89         [24] 1987 	lcall	_printf
      003822 E5 81            [12] 1988 	mov	a,sp
      003824 24 FB            [12] 1989 	add	a,#0xfb
      003826 F5 81            [12] 1990 	mov	sp,a
      003828 D0 02            [24] 1991 	pop	ar2
      00382A D0 03            [24] 1992 	pop	ar3
      00382C D0 04            [24] 1993 	pop	ar4
      00382E D0 05            [24] 1994 	pop	ar5
      003830 D0 06            [24] 1995 	pop	ar6
      003832 D0 07            [24] 1996 	pop	ar7
                                   1997 ;	syntax.c:256: rd_ptr++;
                                   1998 ;	syntax.c:257: temp--;
      003834 1F               [12] 1999 	dec	r7
                                   2000 ;	syntax.c:253: for(int i=15; i>=0;i--){
      003835 1A               [12] 2001 	dec	r2
      003836 BA FF 01         [24] 2002 	cjne	r2,#0xff,00129$
      003839 1B               [12] 2003 	dec	r3
      00383A                       2004 00129$:
      00383A 02 37 B1         [24] 2005 	ljmp	00106$
      00383D                       2006 00114$:
      00383D 90 06 7E         [24] 2007 	mov	dptr,#_buffer0_dump_rd_ptr_65536_79
      003840 EC               [12] 2008 	mov	a,r4
      003841 F0               [24] 2009 	movx	@dptr,a
      003842 ED               [12] 2010 	mov	a,r5
      003843 A3               [24] 2011 	inc	dptr
      003844 F0               [24] 2012 	movx	@dptr,a
      003845 EE               [12] 2013 	mov	a,r6
      003846 A3               [24] 2014 	inc	dptr
      003847 F0               [24] 2015 	movx	@dptr,a
      003848 90 06 81         [24] 2016 	mov	dptr,#_buffer0_dump_temp_65536_79
      00384B EF               [12] 2017 	mov	a,r7
      00384C F0               [24] 2018 	movx	@dptr,a
                                   2019 ;	syntax.c:259: printf("\r\n");
      00384D 74 3C            [12] 2020 	mov	a,#___str_12
      00384F C0 E0            [24] 2021 	push	acc
      003851 74 4F            [12] 2022 	mov	a,#(___str_12 >> 8)
      003853 C0 E0            [24] 2023 	push	acc
      003855 74 80            [12] 2024 	mov	a,#0x80
      003857 C0 E0            [24] 2025 	push	acc
      003859 12 43 89         [24] 2026 	lcall	_printf
      00385C 15 81            [12] 2027 	dec	sp
      00385E 15 81            [12] 2028 	dec	sp
      003860 15 81            [12] 2029 	dec	sp
                                   2030 ;	syntax.c:261: }
      003862 02 37 72         [24] 2031 	ljmp	00102$
                                   2032 ;------------------------------------------------------------
                                   2033 ;Allocation info for local variables in function 'main'
                                   2034 ;------------------------------------------------------------
                                   2035 ;sloc0                     Allocated with name '_main_sloc0_1_0'
                                   2036 ;buffer_size               Allocated with name '_main_buffer_size_65536_84'
                                   2037 ;node1                     Allocated with name '_main_node1_65537_88'
                                   2038 ;node2                     Allocated with name '_main_node2_65538_89'
                                   2039 ;wr                        Allocated with name '_main_wr_65539_90'
                                   2040 ;ch                        Allocated with name '_main_ch_131075_91'
                                   2041 ;cha                       Allocated with name '_main_cha_131076_94'
                                   2042 ;temp_buffer_size          Allocated to registers 
                                   2043 ;index_for_write           Allocated to registers 
                                   2044 ;------------------------------------------------------------
                                   2045 ;	syntax.c:264: void main(void)
                                   2046 ;	-----------------------------------------
                                   2047 ;	 function main
                                   2048 ;	-----------------------------------------
      003865                       2049 _main:
                                   2050 ;	syntax.c:270: do{
      003865                       2051 00108$:
                                   2052 ;	syntax.c:271: buffer_size  = get_buf_value("Enter buffer size between 32 and 4800 bytes (buffer size must be evenly divisible by 16): ", upper_default, LOWER_DEFAULT);
      003865 90 06 5E         [24] 2053 	mov	dptr,#_get_buf_value_PARM_2
      003868 74 C0            [12] 2054 	mov	a,#0xc0
      00386A F0               [24] 2055 	movx	@dptr,a
      00386B 74 12            [12] 2056 	mov	a,#0x12
      00386D A3               [24] 2057 	inc	dptr
      00386E F0               [24] 2058 	movx	@dptr,a
      00386F 90 06 60         [24] 2059 	mov	dptr,#_get_buf_value_PARM_3
      003872 74 20            [12] 2060 	mov	a,#0x20
      003874 F0               [24] 2061 	movx	@dptr,a
      003875 E4               [12] 2062 	clr	a
      003876 A3               [24] 2063 	inc	dptr
      003877 F0               [24] 2064 	movx	@dptr,a
      003878 90 50 06         [24] 2065 	mov	dptr,#___str_18
      00387B 75 F0 80         [24] 2066 	mov	b,#0x80
      00387E 12 30 C9         [24] 2067 	lcall	_get_buf_value
      003881 AE 82            [24] 2068 	mov	r6,dpl
      003883 AF 83            [24] 2069 	mov	r7,dph
                                   2070 ;	syntax.c:273: print_prompt("Buffer you entered is : 0x");
      003885 90 50 61         [24] 2071 	mov	dptr,#___str_19
      003888 75 F0 80         [24] 2072 	mov	b,#0x80
      00388B C0 07            [24] 2073 	push	ar7
      00388D C0 06            [24] 2074 	push	ar6
      00388F 12 32 9C         [24] 2075 	lcall	_print_prompt
      003892 D0 06            [24] 2076 	pop	ar6
      003894 D0 07            [24] 2077 	pop	ar7
                                   2078 ;	syntax.c:274: printf("%d \n\r", buffer_size);
      003896 C0 07            [24] 2079 	push	ar7
      003898 C0 06            [24] 2080 	push	ar6
      00389A C0 06            [24] 2081 	push	ar6
      00389C C0 07            [24] 2082 	push	ar7
      00389E 74 85            [12] 2083 	mov	a,#___str_15
      0038A0 C0 E0            [24] 2084 	push	acc
      0038A2 74 4F            [12] 2085 	mov	a,#(___str_15 >> 8)
      0038A4 C0 E0            [24] 2086 	push	acc
      0038A6 74 80            [12] 2087 	mov	a,#0x80
      0038A8 C0 E0            [24] 2088 	push	acc
      0038AA 12 43 89         [24] 2089 	lcall	_printf
      0038AD E5 81            [12] 2090 	mov	a,sp
      0038AF 24 FB            [12] 2091 	add	a,#0xfb
      0038B1 F5 81            [12] 2092 	mov	sp,a
      0038B3 D0 06            [24] 2093 	pop	ar6
      0038B5 D0 07            [24] 2094 	pop	ar7
                                   2095 ;	syntax.c:276: if(buffer_size == -1) continue;
      0038B7 BE FF 06         [24] 2096 	cjne	r6,#0xff,00171$
      0038BA BF FF 03         [24] 2097 	cjne	r7,#0xff,00171$
      0038BD 02 39 6C         [24] 2098 	ljmp	00109$
      0038C0                       2099 00171$:
                                   2100 ;	syntax.c:278: pointer1 = (__xdata uint8_t *) malloc(buffer_size);
      0038C0 8E 82            [24] 2101 	mov	dpl,r6
      0038C2 8F 83            [24] 2102 	mov	dph,r7
      0038C4 C0 07            [24] 2103 	push	ar7
      0038C6 C0 06            [24] 2104 	push	ar6
      0038C8 12 40 B3         [24] 2105 	lcall	_malloc
      0038CB AC 82            [24] 2106 	mov	r4,dpl
      0038CD AD 83            [24] 2107 	mov	r5,dph
      0038CF D0 06            [24] 2108 	pop	ar6
      0038D1 D0 07            [24] 2109 	pop	ar7
      0038D3 90 0F 08         [24] 2110 	mov	dptr,#_pointer1
      0038D6 EC               [12] 2111 	mov	a,r4
      0038D7 F0               [24] 2112 	movx	@dptr,a
      0038D8 ED               [12] 2113 	mov	a,r5
      0038D9 A3               [24] 2114 	inc	dptr
      0038DA F0               [24] 2115 	movx	@dptr,a
                                   2116 ;	syntax.c:279: if (pointer1 == NULL){
      0038DB EC               [12] 2117 	mov	a,r4
      0038DC 4D               [12] 2118 	orl	a,r5
      0038DD 70 13            [24] 2119 	jnz	00104$
                                   2120 ;	syntax.c:280: print_prompt("Failed to get malloc try to enter smaller size for buf 1\n\r");
      0038DF 90 50 7C         [24] 2121 	mov	dptr,#___str_20
      0038E2 75 F0 80         [24] 2122 	mov	b,#0x80
      0038E5 C0 07            [24] 2123 	push	ar7
      0038E7 C0 06            [24] 2124 	push	ar6
      0038E9 12 32 9C         [24] 2125 	lcall	_print_prompt
      0038EC D0 06            [24] 2126 	pop	ar6
      0038EE D0 07            [24] 2127 	pop	ar7
                                   2128 ;	syntax.c:281: continue;
      0038F0 80 7A            [24] 2129 	sjmp	00109$
      0038F2                       2130 00104$:
                                   2131 ;	syntax.c:286: pointer2 = (__xdata uint8_t *) malloc(buffer_size);
      0038F2 8E 82            [24] 2132 	mov	dpl,r6
      0038F4 8F 83            [24] 2133 	mov	dph,r7
      0038F6 C0 07            [24] 2134 	push	ar7
      0038F8 C0 06            [24] 2135 	push	ar6
      0038FA 12 40 B3         [24] 2136 	lcall	_malloc
      0038FD AC 82            [24] 2137 	mov	r4,dpl
      0038FF AD 83            [24] 2138 	mov	r5,dph
      003901 D0 06            [24] 2139 	pop	ar6
      003903 D0 07            [24] 2140 	pop	ar7
      003905 90 0F 0A         [24] 2141 	mov	dptr,#_pointer2
      003908 EC               [12] 2142 	mov	a,r4
      003909 F0               [24] 2143 	movx	@dptr,a
      00390A ED               [12] 2144 	mov	a,r5
      00390B A3               [24] 2145 	inc	dptr
      00390C F0               [24] 2146 	movx	@dptr,a
                                   2147 ;	syntax.c:287: if (pointer2 == NULL){
      00390D EC               [12] 2148 	mov	a,r4
      00390E 4D               [12] 2149 	orl	a,r5
      00390F 70 26            [24] 2150 	jnz	00106$
                                   2151 ;	syntax.c:288: free(pointer1);
      003911 90 0F 08         [24] 2152 	mov	dptr,#_pointer1
      003914 E0               [24] 2153 	movx	a,@dptr
      003915 FA               [12] 2154 	mov	r2,a
      003916 A3               [24] 2155 	inc	dptr
      003917 E0               [24] 2156 	movx	a,@dptr
      003918 F9               [12] 2157 	mov	r1,a
      003919 7B 00            [12] 2158 	mov	r3,#0x00
      00391B 8A 82            [24] 2159 	mov	dpl,r2
      00391D 89 83            [24] 2160 	mov	dph,r1
      00391F 8B F0            [24] 2161 	mov	b,r3
      003921 C0 07            [24] 2162 	push	ar7
      003923 C0 06            [24] 2163 	push	ar6
      003925 12 3C 5D         [24] 2164 	lcall	_free
                                   2165 ;	syntax.c:290: print_prompt("Failed to get malloc try to enter smaller size for buf 2\n\r");
      003928 90 50 B7         [24] 2166 	mov	dptr,#___str_21
      00392B 75 F0 80         [24] 2167 	mov	b,#0x80
      00392E 12 32 9C         [24] 2168 	lcall	_print_prompt
      003931 D0 06            [24] 2169 	pop	ar6
      003933 D0 07            [24] 2170 	pop	ar7
                                   2171 ;	syntax.c:291: continue;
      003935 80 35            [24] 2172 	sjmp	00109$
      003937                       2173 00106$:
                                   2174 ;	syntax.c:295: printf("pointer_value : %p %p\n\r", pointer1, pointer2);
      003937 7B 00            [12] 2175 	mov	r3,#0x00
      003939 90 0F 08         [24] 2176 	mov	dptr,#_pointer1
      00393C E0               [24] 2177 	movx	a,@dptr
      00393D F9               [12] 2178 	mov	r1,a
      00393E A3               [24] 2179 	inc	dptr
      00393F E0               [24] 2180 	movx	a,@dptr
      003940 F8               [12] 2181 	mov	r0,a
      003941 7A 00            [12] 2182 	mov	r2,#0x00
      003943 C0 07            [24] 2183 	push	ar7
      003945 C0 06            [24] 2184 	push	ar6
      003947 C0 04            [24] 2185 	push	ar4
      003949 C0 05            [24] 2186 	push	ar5
      00394B C0 03            [24] 2187 	push	ar3
      00394D C0 01            [24] 2188 	push	ar1
      00394F C0 00            [24] 2189 	push	ar0
      003951 C0 02            [24] 2190 	push	ar2
      003953 74 F2            [12] 2191 	mov	a,#___str_22
      003955 C0 E0            [24] 2192 	push	acc
      003957 74 50            [12] 2193 	mov	a,#(___str_22 >> 8)
      003959 C0 E0            [24] 2194 	push	acc
      00395B 74 80            [12] 2195 	mov	a,#0x80
      00395D C0 E0            [24] 2196 	push	acc
      00395F 12 43 89         [24] 2197 	lcall	_printf
      003962 E5 81            [12] 2198 	mov	a,sp
      003964 24 F7            [12] 2199 	add	a,#0xf7
      003966 F5 81            [12] 2200 	mov	sp,a
      003968 D0 06            [24] 2201 	pop	ar6
      00396A D0 07            [24] 2202 	pop	ar7
      00396C                       2203 00109$:
                                   2204 ;	syntax.c:296: }while( pointer2 == NULL || pointer1 == NULL);
      00396C 90 0F 0A         [24] 2205 	mov	dptr,#_pointer2
      00396F E0               [24] 2206 	movx	a,@dptr
      003970 F5 F0            [12] 2207 	mov	b,a
      003972 A3               [24] 2208 	inc	dptr
      003973 E0               [24] 2209 	movx	a,@dptr
      003974 45 F0            [12] 2210 	orl	a,b
      003976 70 03            [24] 2211 	jnz	00174$
      003978 02 38 65         [24] 2212 	ljmp	00108$
      00397B                       2213 00174$:
      00397B 90 0F 08         [24] 2214 	mov	dptr,#_pointer1
      00397E E0               [24] 2215 	movx	a,@dptr
      00397F F5 F0            [12] 2216 	mov	b,a
      003981 A3               [24] 2217 	inc	dptr
      003982 E0               [24] 2218 	movx	a,@dptr
      003983 45 F0            [12] 2219 	orl	a,b
      003985 70 03            [24] 2220 	jnz	00175$
      003987 02 38 65         [24] 2221 	ljmp	00108$
      00398A                       2222 00175$:
                                   2223 ;	syntax.c:298: index_of_buffers = 0;
      00398A 90 0F 02         [24] 2224 	mov	dptr,#_index_of_buffers
      00398D E4               [12] 2225 	clr	a
      00398E F0               [24] 2226 	movx	@dptr,a
                                   2227 ;	syntax.c:300: node_t node1 = { index_of_buffers, pointer1, buffer_size};
      00398F 90 06 82         [24] 2228 	mov	dptr,#_main_node1_65537_88
      003992 F0               [24] 2229 	movx	@dptr,a
      003993 90 0F 08         [24] 2230 	mov	dptr,#_pointer1
      003996 E0               [24] 2231 	movx	a,@dptr
      003997 FC               [12] 2232 	mov	r4,a
      003998 A3               [24] 2233 	inc	dptr
      003999 E0               [24] 2234 	movx	a,@dptr
      00399A FD               [12] 2235 	mov	r5,a
      00399B 7B 00            [12] 2236 	mov	r3,#0x00
      00399D 90 06 83         [24] 2237 	mov	dptr,#(_main_node1_65537_88 + 0x0001)
      0039A0 EC               [12] 2238 	mov	a,r4
      0039A1 F0               [24] 2239 	movx	@dptr,a
      0039A2 ED               [12] 2240 	mov	a,r5
      0039A3 A3               [24] 2241 	inc	dptr
      0039A4 F0               [24] 2242 	movx	@dptr,a
      0039A5 EB               [12] 2243 	mov	a,r3
      0039A6 A3               [24] 2244 	inc	dptr
      0039A7 F0               [24] 2245 	movx	@dptr,a
      0039A8 90 06 86         [24] 2246 	mov	dptr,#(_main_node1_65537_88 + 0x0004)
      0039AB EE               [12] 2247 	mov	a,r6
      0039AC F0               [24] 2248 	movx	@dptr,a
      0039AD EF               [12] 2249 	mov	a,r7
      0039AE A3               [24] 2250 	inc	dptr
      0039AF F0               [24] 2251 	movx	@dptr,a
                                   2252 ;	syntax.c:301: array_for_nodes[index_of_buffers] = node1;
      0039B0 90 0F 02         [24] 2253 	mov	dptr,#_index_of_buffers
      0039B3 E0               [24] 2254 	movx	a,@dptr
      0039B4 75 F0 06         [24] 2255 	mov	b,#0x06
      0039B7 A4               [48] 2256 	mul	ab
      0039B8 24 04            [12] 2257 	add	a,#_array_for_nodes
      0039BA FC               [12] 2258 	mov	r4,a
      0039BB 74 04            [12] 2259 	mov	a,#(_array_for_nodes >> 8)
      0039BD 35 F0            [12] 2260 	addc	a,b
      0039BF FD               [12] 2261 	mov	r5,a
      0039C0 7B 00            [12] 2262 	mov	r3,#0x00
      0039C2 90 0E AD         [24] 2263 	mov	dptr,#___memcpy_PARM_2
      0039C5 74 82            [12] 2264 	mov	a,#_main_node1_65537_88
      0039C7 F0               [24] 2265 	movx	@dptr,a
      0039C8 74 06            [12] 2266 	mov	a,#(_main_node1_65537_88 >> 8)
      0039CA A3               [24] 2267 	inc	dptr
      0039CB F0               [24] 2268 	movx	@dptr,a
      0039CC E4               [12] 2269 	clr	a
      0039CD A3               [24] 2270 	inc	dptr
      0039CE F0               [24] 2271 	movx	@dptr,a
      0039CF 90 0E B0         [24] 2272 	mov	dptr,#___memcpy_PARM_3
      0039D2 74 06            [12] 2273 	mov	a,#0x06
      0039D4 F0               [24] 2274 	movx	@dptr,a
      0039D5 E4               [12] 2275 	clr	a
      0039D6 A3               [24] 2276 	inc	dptr
      0039D7 F0               [24] 2277 	movx	@dptr,a
      0039D8 8C 82            [24] 2278 	mov	dpl,r4
      0039DA 8D 83            [24] 2279 	mov	dph,r5
      0039DC 8B F0            [24] 2280 	mov	b,r3
      0039DE C0 07            [24] 2281 	push	ar7
      0039E0 C0 06            [24] 2282 	push	ar6
      0039E2 12 3F E8         [24] 2283 	lcall	___memcpy
                                   2284 ;	syntax.c:302: printf("pointer location %p, size %d\n\r", array_for_nodes[index_of_buffers].data_pointer, array_for_nodes[index_of_buffers].size);
      0039E5 90 0F 02         [24] 2285 	mov	dptr,#_index_of_buffers
      0039E8 E0               [24] 2286 	movx	a,@dptr
      0039E9 75 F0 06         [24] 2287 	mov	b,#0x06
      0039EC A4               [48] 2288 	mul	ab
      0039ED 24 04            [12] 2289 	add	a,#_array_for_nodes
      0039EF FC               [12] 2290 	mov	r4,a
      0039F0 74 04            [12] 2291 	mov	a,#(_array_for_nodes >> 8)
      0039F2 35 F0            [12] 2292 	addc	a,b
      0039F4 FD               [12] 2293 	mov	r5,a
      0039F5 8C 82            [24] 2294 	mov	dpl,r4
      0039F7 8D 83            [24] 2295 	mov	dph,r5
      0039F9 A3               [24] 2296 	inc	dptr
      0039FA A3               [24] 2297 	inc	dptr
      0039FB A3               [24] 2298 	inc	dptr
      0039FC A3               [24] 2299 	inc	dptr
      0039FD E0               [24] 2300 	movx	a,@dptr
      0039FE FA               [12] 2301 	mov	r2,a
      0039FF A3               [24] 2302 	inc	dptr
      003A00 E0               [24] 2303 	movx	a,@dptr
      003A01 FB               [12] 2304 	mov	r3,a
      003A02 8C 82            [24] 2305 	mov	dpl,r4
      003A04 8D 83            [24] 2306 	mov	dph,r5
      003A06 A3               [24] 2307 	inc	dptr
      003A07 E0               [24] 2308 	movx	a,@dptr
      003A08 F9               [12] 2309 	mov	r1,a
      003A09 A3               [24] 2310 	inc	dptr
      003A0A E0               [24] 2311 	movx	a,@dptr
      003A0B FC               [12] 2312 	mov	r4,a
      003A0C A3               [24] 2313 	inc	dptr
      003A0D E0               [24] 2314 	movx	a,@dptr
      003A0E FD               [12] 2315 	mov	r5,a
      003A0F C0 02            [24] 2316 	push	ar2
      003A11 C0 03            [24] 2317 	push	ar3
      003A13 C0 01            [24] 2318 	push	ar1
      003A15 C0 04            [24] 2319 	push	ar4
      003A17 C0 05            [24] 2320 	push	ar5
      003A19 74 0A            [12] 2321 	mov	a,#___str_23
      003A1B C0 E0            [24] 2322 	push	acc
      003A1D 74 51            [12] 2323 	mov	a,#(___str_23 >> 8)
      003A1F C0 E0            [24] 2324 	push	acc
      003A21 74 80            [12] 2325 	mov	a,#0x80
      003A23 C0 E0            [24] 2326 	push	acc
      003A25 12 43 89         [24] 2327 	lcall	_printf
      003A28 E5 81            [12] 2328 	mov	a,sp
      003A2A 24 F8            [12] 2329 	add	a,#0xf8
      003A2C F5 81            [12] 2330 	mov	sp,a
      003A2E D0 06            [24] 2331 	pop	ar6
      003A30 D0 07            [24] 2332 	pop	ar7
                                   2333 ;	syntax.c:303: index_of_buffers++;
      003A32 90 0F 02         [24] 2334 	mov	dptr,#_index_of_buffers
      003A35 E0               [24] 2335 	movx	a,@dptr
      003A36 24 01            [12] 2336 	add	a,#0x01
      003A38 F0               [24] 2337 	movx	@dptr,a
                                   2338 ;	syntax.c:305: node_t node2 = { index_of_buffers, pointer2, buffer_size};
      003A39 E0               [24] 2339 	movx	a,@dptr
      003A3A 90 06 88         [24] 2340 	mov	dptr,#_main_node2_65538_89
      003A3D F0               [24] 2341 	movx	@dptr,a
      003A3E 90 0F 0A         [24] 2342 	mov	dptr,#_pointer2
      003A41 E0               [24] 2343 	movx	a,@dptr
      003A42 FC               [12] 2344 	mov	r4,a
      003A43 A3               [24] 2345 	inc	dptr
      003A44 E0               [24] 2346 	movx	a,@dptr
      003A45 FD               [12] 2347 	mov	r5,a
      003A46 7B 00            [12] 2348 	mov	r3,#0x00
      003A48 90 06 89         [24] 2349 	mov	dptr,#(_main_node2_65538_89 + 0x0001)
      003A4B EC               [12] 2350 	mov	a,r4
      003A4C F0               [24] 2351 	movx	@dptr,a
      003A4D ED               [12] 2352 	mov	a,r5
      003A4E A3               [24] 2353 	inc	dptr
      003A4F F0               [24] 2354 	movx	@dptr,a
      003A50 EB               [12] 2355 	mov	a,r3
      003A51 A3               [24] 2356 	inc	dptr
      003A52 F0               [24] 2357 	movx	@dptr,a
      003A53 90 06 8C         [24] 2358 	mov	dptr,#(_main_node2_65538_89 + 0x0004)
      003A56 EE               [12] 2359 	mov	a,r6
      003A57 F0               [24] 2360 	movx	@dptr,a
      003A58 EF               [12] 2361 	mov	a,r7
      003A59 A3               [24] 2362 	inc	dptr
      003A5A F0               [24] 2363 	movx	@dptr,a
                                   2364 ;	syntax.c:306: array_for_nodes[index_of_buffers] = node2;
      003A5B 90 0F 02         [24] 2365 	mov	dptr,#_index_of_buffers
      003A5E E0               [24] 2366 	movx	a,@dptr
      003A5F 75 F0 06         [24] 2367 	mov	b,#0x06
      003A62 A4               [48] 2368 	mul	ab
      003A63 24 04            [12] 2369 	add	a,#_array_for_nodes
      003A65 FE               [12] 2370 	mov	r6,a
      003A66 74 04            [12] 2371 	mov	a,#(_array_for_nodes >> 8)
      003A68 35 F0            [12] 2372 	addc	a,b
      003A6A FF               [12] 2373 	mov	r7,a
      003A6B 7D 00            [12] 2374 	mov	r5,#0x00
      003A6D 90 0E AD         [24] 2375 	mov	dptr,#___memcpy_PARM_2
      003A70 74 88            [12] 2376 	mov	a,#_main_node2_65538_89
      003A72 F0               [24] 2377 	movx	@dptr,a
      003A73 74 06            [12] 2378 	mov	a,#(_main_node2_65538_89 >> 8)
      003A75 A3               [24] 2379 	inc	dptr
      003A76 F0               [24] 2380 	movx	@dptr,a
      003A77 E4               [12] 2381 	clr	a
      003A78 A3               [24] 2382 	inc	dptr
      003A79 F0               [24] 2383 	movx	@dptr,a
      003A7A 90 0E B0         [24] 2384 	mov	dptr,#___memcpy_PARM_3
      003A7D 74 06            [12] 2385 	mov	a,#0x06
      003A7F F0               [24] 2386 	movx	@dptr,a
      003A80 E4               [12] 2387 	clr	a
      003A81 A3               [24] 2388 	inc	dptr
      003A82 F0               [24] 2389 	movx	@dptr,a
      003A83 8E 82            [24] 2390 	mov	dpl,r6
      003A85 8F 83            [24] 2391 	mov	dph,r7
      003A87 8D F0            [24] 2392 	mov	b,r5
      003A89 12 3F E8         [24] 2393 	lcall	___memcpy
                                   2394 ;	syntax.c:307: printf("pointer location %p, size %d\n\r", array_for_nodes[index_of_buffers].data_pointer, array_for_nodes[index_of_buffers].size);
      003A8C 90 0F 02         [24] 2395 	mov	dptr,#_index_of_buffers
      003A8F E0               [24] 2396 	movx	a,@dptr
      003A90 75 F0 06         [24] 2397 	mov	b,#0x06
      003A93 A4               [48] 2398 	mul	ab
      003A94 24 04            [12] 2399 	add	a,#_array_for_nodes
      003A96 FE               [12] 2400 	mov	r6,a
      003A97 74 04            [12] 2401 	mov	a,#(_array_for_nodes >> 8)
      003A99 35 F0            [12] 2402 	addc	a,b
      003A9B FF               [12] 2403 	mov	r7,a
      003A9C 8E 82            [24] 2404 	mov	dpl,r6
      003A9E 8F 83            [24] 2405 	mov	dph,r7
      003AA0 A3               [24] 2406 	inc	dptr
      003AA1 A3               [24] 2407 	inc	dptr
      003AA2 A3               [24] 2408 	inc	dptr
      003AA3 A3               [24] 2409 	inc	dptr
      003AA4 E0               [24] 2410 	movx	a,@dptr
      003AA5 FC               [12] 2411 	mov	r4,a
      003AA6 A3               [24] 2412 	inc	dptr
      003AA7 E0               [24] 2413 	movx	a,@dptr
      003AA8 FD               [12] 2414 	mov	r5,a
      003AA9 8E 82            [24] 2415 	mov	dpl,r6
      003AAB 8F 83            [24] 2416 	mov	dph,r7
      003AAD A3               [24] 2417 	inc	dptr
      003AAE E0               [24] 2418 	movx	a,@dptr
      003AAF FB               [12] 2419 	mov	r3,a
      003AB0 A3               [24] 2420 	inc	dptr
      003AB1 E0               [24] 2421 	movx	a,@dptr
      003AB2 FE               [12] 2422 	mov	r6,a
      003AB3 A3               [24] 2423 	inc	dptr
      003AB4 E0               [24] 2424 	movx	a,@dptr
      003AB5 FF               [12] 2425 	mov	r7,a
      003AB6 C0 04            [24] 2426 	push	ar4
      003AB8 C0 05            [24] 2427 	push	ar5
      003ABA C0 03            [24] 2428 	push	ar3
      003ABC C0 06            [24] 2429 	push	ar6
      003ABE C0 07            [24] 2430 	push	ar7
      003AC0 74 0A            [12] 2431 	mov	a,#___str_23
      003AC2 C0 E0            [24] 2432 	push	acc
      003AC4 74 51            [12] 2433 	mov	a,#(___str_23 >> 8)
      003AC6 C0 E0            [24] 2434 	push	acc
      003AC8 74 80            [12] 2435 	mov	a,#0x80
      003ACA C0 E0            [24] 2436 	push	acc
      003ACC 12 43 89         [24] 2437 	lcall	_printf
      003ACF E5 81            [12] 2438 	mov	a,sp
      003AD1 24 F8            [12] 2439 	add	a,#0xf8
      003AD3 F5 81            [12] 2440 	mov	sp,a
                                   2441 ;	syntax.c:308: index_of_buffers++;
      003AD5 90 0F 02         [24] 2442 	mov	dptr,#_index_of_buffers
      003AD8 E0               [24] 2443 	movx	a,@dptr
      003AD9 24 01            [12] 2444 	add	a,#0x01
      003ADB F0               [24] 2445 	movx	@dptr,a
                                   2446 ;	syntax.c:310: print_prompt("Enter Uppercase char to save in buffer 0: \n\r");
      003ADC 90 51 29         [24] 2447 	mov	dptr,#___str_24
      003ADF 75 F0 80         [24] 2448 	mov	b,#0x80
      003AE2 12 32 9C         [24] 2449 	lcall	_print_prompt
                                   2450 ;	syntax.c:312: __idata int temp_buffer_size = array_for_nodes[0].size;
      003AE5 90 04 08         [24] 2451 	mov	dptr,#(_array_for_nodes + 0x0004)
      003AE8 E0               [24] 2452 	movx	a,@dptr
      003AE9 FE               [12] 2453 	mov	r6,a
      003AEA A3               [24] 2454 	inc	dptr
      003AEB E0               [24] 2455 	movx	a,@dptr
      003AEC FF               [12] 2456 	mov	r7,a
                                   2457 ;	syntax.c:315: uint8_t * wr = array_for_nodes[0].data_pointer;
      003AED 90 04 05         [24] 2458 	mov	dptr,#(_array_for_nodes + 0x0001)
      003AF0 E0               [24] 2459 	movx	a,@dptr
      003AF1 FB               [12] 2460 	mov	r3,a
      003AF2 A3               [24] 2461 	inc	dptr
      003AF3 E0               [24] 2462 	movx	a,@dptr
      003AF4 FC               [12] 2463 	mov	r4,a
      003AF5 A3               [24] 2464 	inc	dptr
      003AF6 E0               [24] 2465 	movx	a,@dptr
      003AF7 FD               [12] 2466 	mov	r5,a
                                   2467 ;	syntax.c:317: do{
      003AF8                       2468 00114$:
                                   2469 ;	syntax.c:318: int ch = getchar();
      003AF8 C0 07            [24] 2470 	push	ar7
      003AFA C0 06            [24] 2471 	push	ar6
      003AFC C0 05            [24] 2472 	push	ar5
      003AFE C0 04            [24] 2473 	push	ar4
      003B00 C0 03            [24] 2474 	push	ar3
      003B02 12 30 B4         [24] 2475 	lcall	_getchar
                                   2476 ;	syntax.c:319: putchar(ch);
      003B05 A9 82            [24] 2477 	mov	r1,dpl
      003B07 AA 83            [24] 2478 	mov  r2,dph
      003B09 C0 02            [24] 2479 	push	ar2
      003B0B C0 01            [24] 2480 	push	ar1
      003B0D 12 30 97         [24] 2481 	lcall	_putchar
      003B10 D0 01            [24] 2482 	pop	ar1
      003B12 D0 02            [24] 2483 	pop	ar2
      003B14 D0 03            [24] 2484 	pop	ar3
      003B16 D0 04            [24] 2485 	pop	ar4
      003B18 D0 05            [24] 2486 	pop	ar5
      003B1A D0 06            [24] 2487 	pop	ar6
      003B1C D0 07            [24] 2488 	pop	ar7
                                   2489 ;	syntax.c:320: if(ch < 65 || ch > 90) {
      003B1E C3               [12] 2490 	clr	c
      003B1F E9               [12] 2491 	mov	a,r1
      003B20 94 41            [12] 2492 	subb	a,#0x41
      003B22 EA               [12] 2493 	mov	a,r2
      003B23 64 80            [12] 2494 	xrl	a,#0x80
      003B25 94 80            [12] 2495 	subb	a,#0x80
      003B27 40 0E            [24] 2496 	jc	00111$
      003B29 74 5A            [12] 2497 	mov	a,#0x5a
      003B2B 99               [12] 2498 	subb	a,r1
      003B2C 74 80            [12] 2499 	mov	a,#(0x00 ^ 0x80)
      003B2E 8A F0            [24] 2500 	mov	b,r2
      003B30 63 F0 80         [24] 2501 	xrl	b,#0x80
      003B33 95 F0            [12] 2502 	subb	a,b
      003B35 50 3A            [24] 2503 	jnc	00112$
      003B37                       2504 00111$:
                                   2505 ;	syntax.c:321: total_number_of_commands+=1;
      003B37 90 0F 03         [24] 2506 	mov	dptr,#_total_number_of_commands
      003B3A E0               [24] 2507 	movx	a,@dptr
      003B3B 04               [12] 2508 	inc	a
      003B3C F0               [24] 2509 	movx	@dptr,a
                                   2510 ;	syntax.c:322: recent_commands+=1;
      003B3D 90 0F 05         [24] 2511 	mov	dptr,#_recent_commands
      003B40 E0               [24] 2512 	movx	a,@dptr
      003B41 04               [12] 2513 	inc	a
      003B42 F0               [24] 2514 	movx	@dptr,a
                                   2515 ;	syntax.c:323: print_prompt("Command recived ! \n\r");
      003B43 90 51 56         [24] 2516 	mov	dptr,#___str_25
      003B46 75 F0 80         [24] 2517 	mov	b,#0x80
      003B49 C0 07            [24] 2518 	push	ar7
      003B4B C0 06            [24] 2519 	push	ar6
      003B4D C0 05            [24] 2520 	push	ar5
      003B4F C0 04            [24] 2521 	push	ar4
      003B51 C0 03            [24] 2522 	push	ar3
      003B53 C0 02            [24] 2523 	push	ar2
      003B55 C0 01            [24] 2524 	push	ar1
      003B57 12 32 9C         [24] 2525 	lcall	_print_prompt
      003B5A D0 01            [24] 2526 	pop	ar1
      003B5C D0 02            [24] 2527 	pop	ar2
                                   2528 ;	syntax.c:324: get_command(ch);
      003B5E 89 82            [24] 2529 	mov	dpl,r1
      003B60 8A 83            [24] 2530 	mov	dph,r2
      003B62 12 32 F6         [24] 2531 	lcall	_get_command
      003B65 D0 03            [24] 2532 	pop	ar3
      003B67 D0 04            [24] 2533 	pop	ar4
      003B69 D0 05            [24] 2534 	pop	ar5
      003B6B D0 06            [24] 2535 	pop	ar6
      003B6D D0 07            [24] 2536 	pop	ar7
                                   2537 ;	syntax.c:325: continue;
      003B6F 80 68            [24] 2538 	sjmp	00115$
      003B71                       2539 00112$:
                                   2540 ;	syntax.c:327: total_number_of_storage = total_number_of_storage + 1;
      003B71 90 0F 04         [24] 2541 	mov	dptr,#_total_number_of_storage
      003B74 E0               [24] 2542 	movx	a,@dptr
      003B75 04               [12] 2543 	inc	a
      003B76 F0               [24] 2544 	movx	@dptr,a
                                   2545 ;	syntax.c:328: recent_storage = recent_storage + 1;
      003B77 90 0F 06         [24] 2546 	mov	dptr,#_recent_storage
      003B7A E0               [24] 2547 	movx	a,@dptr
      003B7B 04               [12] 2548 	inc	a
      003B7C F0               [24] 2549 	movx	@dptr,a
                                   2550 ;	syntax.c:330: *wr = ch;
      003B7D 8B 82            [24] 2551 	mov	dpl,r3
      003B7F 8C 83            [24] 2552 	mov	dph,r4
      003B81 8D F0            [24] 2553 	mov	b,r5
      003B83 E9               [12] 2554 	mov	a,r1
      003B84 12 40 5C         [24] 2555 	lcall	__gptrput
      003B87 A3               [24] 2556 	inc	dptr
      003B88 AB 82            [24] 2557 	mov	r3,dpl
      003B8A AC 83            [24] 2558 	mov	r4,dph
                                   2559 ;	syntax.c:331: wr++;
                                   2560 ;	syntax.c:332: printf("total storage %d recent storage %d pointer %p \n\r", total_number_of_storage, recent_storage, wr);
      003B8C 90 0F 06         [24] 2561 	mov	dptr,#_recent_storage
      003B8F E0               [24] 2562 	movx	a,@dptr
      003B90 FA               [12] 2563 	mov	r2,a
      003B91 8A 0D            [24] 2564 	mov	_main_sloc0_1_0,r2
      003B93 75 0E 00         [24] 2565 	mov	(_main_sloc0_1_0 + 1),#0x00
      003B96 90 0F 04         [24] 2566 	mov	dptr,#_total_number_of_storage
      003B99 E0               [24] 2567 	movx	a,@dptr
      003B9A F8               [12] 2568 	mov	r0,a
      003B9B 7A 00            [12] 2569 	mov	r2,#0x00
      003B9D C0 07            [24] 2570 	push	ar7
      003B9F C0 06            [24] 2571 	push	ar6
      003BA1 C0 05            [24] 2572 	push	ar5
      003BA3 C0 04            [24] 2573 	push	ar4
      003BA5 C0 03            [24] 2574 	push	ar3
      003BA7 C0 03            [24] 2575 	push	ar3
      003BA9 C0 04            [24] 2576 	push	ar4
      003BAB C0 05            [24] 2577 	push	ar5
      003BAD C0 0D            [24] 2578 	push	_main_sloc0_1_0
      003BAF C0 0E            [24] 2579 	push	(_main_sloc0_1_0 + 1)
      003BB1 C0 00            [24] 2580 	push	ar0
      003BB3 C0 02            [24] 2581 	push	ar2
      003BB5 74 6B            [12] 2582 	mov	a,#___str_26
      003BB7 C0 E0            [24] 2583 	push	acc
      003BB9 74 51            [12] 2584 	mov	a,#(___str_26 >> 8)
      003BBB C0 E0            [24] 2585 	push	acc
      003BBD 74 80            [12] 2586 	mov	a,#0x80
      003BBF C0 E0            [24] 2587 	push	acc
      003BC1 12 43 89         [24] 2588 	lcall	_printf
      003BC4 E5 81            [12] 2589 	mov	a,sp
      003BC6 24 F6            [12] 2590 	add	a,#0xf6
      003BC8 F5 81            [12] 2591 	mov	sp,a
      003BCA D0 03            [24] 2592 	pop	ar3
      003BCC D0 04            [24] 2593 	pop	ar4
      003BCE D0 05            [24] 2594 	pop	ar5
      003BD0 D0 06            [24] 2595 	pop	ar6
      003BD2 D0 07            [24] 2596 	pop	ar7
                                   2597 ;	syntax.c:333: temp_buffer_size -= 1;
      003BD4 1E               [12] 2598 	dec	r6
      003BD5 BE FF 01         [24] 2599 	cjne	r6,#0xff,00178$
      003BD8 1F               [12] 2600 	dec	r7
      003BD9                       2601 00178$:
                                   2602 ;	syntax.c:334: index_for_write += 1;
      003BD9                       2603 00115$:
                                   2604 ;	syntax.c:335: }while(temp_buffer_size>0);
      003BD9 C3               [12] 2605 	clr	c
      003BDA E4               [12] 2606 	clr	a
      003BDB 9E               [12] 2607 	subb	a,r6
      003BDC 74 80            [12] 2608 	mov	a,#(0x00 ^ 0x80)
      003BDE 8F F0            [24] 2609 	mov	b,r7
      003BE0 63 F0 80         [24] 2610 	xrl	b,#0x80
      003BE3 95 F0            [12] 2611 	subb	a,b
      003BE5 50 03            [24] 2612 	jnc	00179$
      003BE7 02 3A F8         [24] 2613 	ljmp	00114$
      003BEA                       2614 00179$:
                                   2615 ;	syntax.c:336: printf("buffer0 got full nothing to write !");
      003BEA 74 9C            [12] 2616 	mov	a,#___str_27
      003BEC C0 E0            [24] 2617 	push	acc
      003BEE 74 51            [12] 2618 	mov	a,#(___str_27 >> 8)
      003BF0 C0 E0            [24] 2619 	push	acc
      003BF2 74 80            [12] 2620 	mov	a,#0x80
      003BF4 C0 E0            [24] 2621 	push	acc
      003BF6 12 43 89         [24] 2622 	lcall	_printf
      003BF9 15 81            [12] 2623 	dec	sp
      003BFB 15 81            [12] 2624 	dec	sp
      003BFD 15 81            [12] 2625 	dec	sp
                                   2626 ;	syntax.c:341: while(1)
      003BFF                       2627 00122$:
                                   2628 ;	syntax.c:343: print_prompt("Please enter An command (+) (-) (?) (=) (@): \n");
      003BFF 90 51 C0         [24] 2629 	mov	dptr,#___str_28
      003C02 75 F0 80         [24] 2630 	mov	b,#0x80
      003C05 12 32 9C         [24] 2631 	lcall	_print_prompt
                                   2632 ;	syntax.c:344: int cha = getchar();
      003C08 12 30 B4         [24] 2633 	lcall	_getchar
      003C0B AE 82            [24] 2634 	mov	r6,dpl
      003C0D AF 83            [24] 2635 	mov	r7,dph
                                   2636 ;	syntax.c:345: if(cha < 65 || cha > 90) {
      003C0F C3               [12] 2637 	clr	c
      003C10 EE               [12] 2638 	mov	a,r6
      003C11 94 41            [12] 2639 	subb	a,#0x41
      003C13 EF               [12] 2640 	mov	a,r7
      003C14 64 80            [12] 2641 	xrl	a,#0x80
      003C16 94 80            [12] 2642 	subb	a,#0x80
      003C18 40 0E            [24] 2643 	jc	00117$
      003C1A 74 5A            [12] 2644 	mov	a,#0x5a
      003C1C 9E               [12] 2645 	subb	a,r6
      003C1D 74 80            [12] 2646 	mov	a,#(0x00 ^ 0x80)
      003C1F 8F F0            [24] 2647 	mov	b,r7
      003C21 63 F0 80         [24] 2648 	xrl	b,#0x80
      003C24 95 F0            [12] 2649 	subb	a,b
      003C26 50 1F            [24] 2650 	jnc	00118$
      003C28                       2651 00117$:
                                   2652 ;	syntax.c:346: total_number_of_commands+=1;
      003C28 90 0F 03         [24] 2653 	mov	dptr,#_total_number_of_commands
      003C2B E0               [24] 2654 	movx	a,@dptr
      003C2C 04               [12] 2655 	inc	a
      003C2D F0               [24] 2656 	movx	@dptr,a
                                   2657 ;	syntax.c:347: recent_commands+=1;
      003C2E 90 0F 05         [24] 2658 	mov	dptr,#_recent_commands
      003C31 E0               [24] 2659 	movx	a,@dptr
      003C32 04               [12] 2660 	inc	a
      003C33 F0               [24] 2661 	movx	@dptr,a
                                   2662 ;	syntax.c:348: print_prompt("Command recived ! \n\r");
      003C34 90 51 56         [24] 2663 	mov	dptr,#___str_25
      003C37 75 F0 80         [24] 2664 	mov	b,#0x80
      003C3A C0 07            [24] 2665 	push	ar7
      003C3C C0 06            [24] 2666 	push	ar6
      003C3E 12 32 9C         [24] 2667 	lcall	_print_prompt
      003C41 D0 06            [24] 2668 	pop	ar6
      003C43 D0 07            [24] 2669 	pop	ar7
      003C45 80 0D            [24] 2670 	sjmp	00119$
      003C47                       2671 00118$:
                                   2672 ;	syntax.c:351: total_number_of_storage = total_number_of_storage + 1;
      003C47 90 0F 04         [24] 2673 	mov	dptr,#_total_number_of_storage
      003C4A E0               [24] 2674 	movx	a,@dptr
      003C4B 04               [12] 2675 	inc	a
      003C4C F0               [24] 2676 	movx	@dptr,a
                                   2677 ;	syntax.c:352: recent_storage = recent_storage + 1;
      003C4D 90 0F 06         [24] 2678 	mov	dptr,#_recent_storage
      003C50 E0               [24] 2679 	movx	a,@dptr
      003C51 FD               [12] 2680 	mov	r5,a
      003C52 04               [12] 2681 	inc	a
      003C53 F0               [24] 2682 	movx	@dptr,a
      003C54                       2683 00119$:
                                   2684 ;	syntax.c:355: get_command(cha);
      003C54 8E 82            [24] 2685 	mov	dpl,r6
      003C56 8F 83            [24] 2686 	mov	dph,r7
      003C58 12 32 F6         [24] 2687 	lcall	_get_command
                                   2688 ;	syntax.c:362: }
      003C5B 80 A2            [24] 2689 	sjmp	00122$
                                   2690 	.area CSEG    (CODE)
                                   2691 	.area CONST   (CODE)
                                   2692 	.area CONST   (CODE)
      004DCB                       2693 ___str_0:
      004DCB 0A                    2694 	.db 0x0a
      004DCC 45 6E 74 65 72 20 76  2695 	.ascii "Enter valid input"
             61 6C 69 64 20 69 6E
             70 75 74
      004DDD 0A                    2696 	.db 0x0a
      004DDE 0D                    2697 	.db 0x0d
      004DDF 00                    2698 	.db 0x00
                                   2699 	.area CSEG    (CODE)
                                   2700 	.area CONST   (CODE)
      004DE0                       2701 ___str_1:
      004DE0 53 49 5A 45 20 45 4E  2702 	.ascii "SIZE ENTERED : %d"
             54 45 52 45 44 20 3A
             20 25 64
      004DF1 0A                    2703 	.db 0x0a
      004DF2 0D                    2704 	.db 0x0d
      004DF3 00                    2705 	.db 0x00
                                   2706 	.area CSEG    (CODE)
                                   2707 	.area CONST   (CODE)
      004DF4                       2708 ___str_2:
      004DF4 54 6F 74 61 6C 20 6E  2709 	.ascii "Total number of commands from the start: "
             75 6D 62 65 72 20 6F
             66 20 63 6F 6D 6D 61
             6E 64 73 20 66 72 6F
             6D 20 74 68 65 20 73
             74 61 72 74 3A 20
      004E1D 00                    2710 	.db 0x00
                                   2711 	.area CSEG    (CODE)
                                   2712 	.area CONST   (CODE)
      004E1E                       2713 ___str_3:
      004E1E 25 64                 2714 	.ascii "%d"
      004E20 00                    2715 	.db 0x00
                                   2716 	.area CSEG    (CODE)
                                   2717 	.area CONST   (CODE)
      004E21                       2718 ___str_4:
      004E21 0A                    2719 	.db 0x0a
      004E22 0D                    2720 	.db 0x0d
      004E23 00                    2721 	.db 0x00
                                   2722 	.area CSEG    (CODE)
                                   2723 	.area CONST   (CODE)
      004E24                       2724 ___str_5:
      004E24 52 65 63 65 6E 74 20  2725 	.ascii "Recent number of commands from the last ?: "
             6E 75 6D 62 65 72 20
             6F 66 20 63 6F 6D 6D
             61 6E 64 73 20 66 72
             6F 6D 20 74 68 65 20
             6C 61 73 74 20 3F 3A
             20
      004E4F 00                    2726 	.db 0x00
                                   2727 	.area CSEG    (CODE)
                                   2728 	.area CONST   (CODE)
      004E50                       2729 ___str_6:
      004E50 54 6F 74 61 6C 20 6E  2730 	.ascii "Total number of storage chars from the start: "
             75 6D 62 65 72 20 6F
             66 20 73 74 6F 72 61
             67 65 20 63 68 61 72
             73 20 66 72 6F 6D 20
             74 68 65 20 73 74 61
             72 74 3A 20
      004E7E 00                    2731 	.db 0x00
                                   2732 	.area CSEG    (CODE)
                                   2733 	.area CONST   (CODE)
      004E7F                       2734 ___str_7:
      004E7F 52 65 63 65 6E 74 20  2735 	.ascii "Recent number of storage chars from the last ?: "
             6E 75 6D 62 65 72 20
             6F 66 20 73 74 6F 72
             61 67 65 20 63 68 61
             72 73 20 66 72 6F 6D
             20 74 68 65 20 6C 61
             73 74 20 3F 3A 20
      004EAF 00                    2736 	.db 0x00
                                   2737 	.area CSEG    (CODE)
                                   2738 	.area CONST   (CODE)
      004EB0                       2739 ___str_8:
      004EB0 49 6E 64 65 78 3A 20  2740 	.ascii "Index: %d , starting address of Pointer: %p  Ending Address "
             25 64 20 2C 20 73 74
             61 72 74 69 6E 67 20
             61 64 64 72 65 73 73
             20 6F 66 20 50 6F 69
             6E 74 65 72 3A 20 25
             70 20 20 45 6E 64 69
             6E 67 20 41 64 64 72
             65 73 73 20
      004EEC 6F 66 20 74 68 65 20  2741 	.ascii "of the pointer %p size of array: %d"
             70 6F 69 6E 74 65 72
             20 25 70 20 73 69 7A
             65 20 6F 66 20 61 72
             72 61 79 3A 20 25 64
      004F0F 0A                    2742 	.db 0x0a
      004F10 0D                    2743 	.db 0x0d
      004F11 00                    2744 	.db 0x00
                                   2745 	.area CSEG    (CODE)
                                   2746 	.area CONST   (CODE)
      004F12                       2747 ___str_9:
      004F12 2E 2E 2E 2E 2E 2E 2E  2748 	.ascii "....... Dumping Buffer0 ......"
             20 44 75 6D 70 69 6E
             67 20 42 75 66 66 65
             72 30 20 2E 2E 2E 2E
             2E 2E
      004F30 0D                    2749 	.db 0x0d
      004F31 0A                    2750 	.db 0x0a
      004F32 00                    2751 	.db 0x00
                                   2752 	.area CSEG    (CODE)
                                   2753 	.area CONST   (CODE)
      004F33                       2754 ___str_10:
      004F33 25 70 3A 20           2755 	.ascii "%p: "
      004F37 00                    2756 	.db 0x00
                                   2757 	.area CSEG    (CODE)
                                   2758 	.area CONST   (CODE)
      004F38                       2759 ___str_11:
      004F38 25 64 20              2760 	.ascii "%d "
      004F3B 00                    2761 	.db 0x00
                                   2762 	.area CSEG    (CODE)
                                   2763 	.area CONST   (CODE)
      004F3C                       2764 ___str_12:
      004F3C 0D                    2765 	.db 0x0d
      004F3D 0A                    2766 	.db 0x0a
      004F3E 00                    2767 	.db 0x00
                                   2768 	.area CSEG    (CODE)
                                   2769 	.area CONST   (CODE)
      004F3F                       2770 ___str_13:
      004F3F 0A                    2771 	.db 0x0a
      004F40 0D                    2772 	.db 0x0d
      004F41 45 6E 74 65 72 20 62  2773 	.ascii "Enter buffer size between 20 to 400: "
             75 66 66 65 72 20 73
             69 7A 65 20 62 65 74
             77 65 65 6E 20 32 30
             20 74 6F 20 34 30 30
             3A 20
      004F66 00                    2774 	.db 0x00
                                   2775 	.area CSEG    (CODE)
                                   2776 	.area CONST   (CODE)
      004F67                       2777 ___str_14:
      004F67 42 75 66 66 65 72 20  2778 	.ascii "Buffer size you entered is : "
             73 69 7A 65 20 79 6F
             75 20 65 6E 74 65 72
             65 64 20 69 73 20 3A
             20
      004F84 00                    2779 	.db 0x00
                                   2780 	.area CSEG    (CODE)
                                   2781 	.area CONST   (CODE)
      004F85                       2782 ___str_15:
      004F85 25 64 20              2783 	.ascii "%d "
      004F88 0A                    2784 	.db 0x0a
      004F89 0D                    2785 	.db 0x0d
      004F8A 00                    2786 	.db 0x00
                                   2787 	.area CSEG    (CODE)
                                   2788 	.area CONST   (CODE)
      004F8B                       2789 ___str_16:
      004F8B 0A                    2790 	.db 0x0a
      004F8C 0D                    2791 	.db 0x0d
      004F8D 46 61 69 6C 65 64 20  2792 	.ascii "Failed to get malloc try to enter smaller size by again ente"
             74 6F 20 67 65 74 20
             6D 61 6C 6C 6F 63 20
             74 72 79 20 74 6F 20
             65 6E 74 65 72 20 73
             6D 61 6C 6C 65 72 20
             73 69 7A 65 20 62 79
             20 61 67 61 69 6E 20
             65 6E 74 65
      004FC9 72 69 6E 67 20 2B     2793 	.ascii "ring +"
      004FCF 00                    2794 	.db 0x00
                                   2795 	.area CSEG    (CODE)
                                   2796 	.area CONST   (CODE)
      004FD0                       2797 ___str_17:
      004FD0 0A                    2798 	.db 0x0a
      004FD1 0D                    2799 	.db 0x0d
      004FD2 45 6E 74 65 72 20 4E  2800 	.ascii "Enter Number to delete between 0 to 127 for buffer:"
             75 6D 62 65 72 20 74
             6F 20 64 65 6C 65 74
             65 20 62 65 74 77 65
             65 6E 20 30 20 74 6F
             20 31 32 37 20 66 6F
             72 20 62 75 66 66 65
             72 3A
      005005 00                    2801 	.db 0x00
                                   2802 	.area CSEG    (CODE)
                                   2803 	.area CONST   (CODE)
      005006                       2804 ___str_18:
      005006 45 6E 74 65 72 20 62  2805 	.ascii "Enter buffer size between 32 and 4800 bytes (buffer size mus"
             75 66 66 65 72 20 73
             69 7A 65 20 62 65 74
             77 65 65 6E 20 33 32
             20 61 6E 64 20 34 38
             30 30 20 62 79 74 65
             73 20 28 62 75 66 66
             65 72 20 73 69 7A 65
             20 6D 75 73
      005042 74 20 62 65 20 65 76  2806 	.ascii "t be evenly divisible by 16): "
             65 6E 6C 79 20 64 69
             76 69 73 69 62 6C 65
             20 62 79 20 31 36 29
             3A 20
      005060 00                    2807 	.db 0x00
                                   2808 	.area CSEG    (CODE)
                                   2809 	.area CONST   (CODE)
      005061                       2810 ___str_19:
      005061 42 75 66 66 65 72 20  2811 	.ascii "Buffer you entered is : 0x"
             79 6F 75 20 65 6E 74
             65 72 65 64 20 69 73
             20 3A 20 30 78
      00507B 00                    2812 	.db 0x00
                                   2813 	.area CSEG    (CODE)
                                   2814 	.area CONST   (CODE)
      00507C                       2815 ___str_20:
      00507C 46 61 69 6C 65 64 20  2816 	.ascii "Failed to get malloc try to enter smaller size for buf 1"
             74 6F 20 67 65 74 20
             6D 61 6C 6C 6F 63 20
             74 72 79 20 74 6F 20
             65 6E 74 65 72 20 73
             6D 61 6C 6C 65 72 20
             73 69 7A 65 20 66 6F
             72 20 62 75 66 20 31
      0050B4 0A                    2817 	.db 0x0a
      0050B5 0D                    2818 	.db 0x0d
      0050B6 00                    2819 	.db 0x00
                                   2820 	.area CSEG    (CODE)
                                   2821 	.area CONST   (CODE)
      0050B7                       2822 ___str_21:
      0050B7 46 61 69 6C 65 64 20  2823 	.ascii "Failed to get malloc try to enter smaller size for buf 2"
             74 6F 20 67 65 74 20
             6D 61 6C 6C 6F 63 20
             74 72 79 20 74 6F 20
             65 6E 74 65 72 20 73
             6D 61 6C 6C 65 72 20
             73 69 7A 65 20 66 6F
             72 20 62 75 66 20 32
      0050EF 0A                    2824 	.db 0x0a
      0050F0 0D                    2825 	.db 0x0d
      0050F1 00                    2826 	.db 0x00
                                   2827 	.area CSEG    (CODE)
                                   2828 	.area CONST   (CODE)
      0050F2                       2829 ___str_22:
      0050F2 70 6F 69 6E 74 65 72  2830 	.ascii "pointer_value : %p %p"
             5F 76 61 6C 75 65 20
             3A 20 25 70 20 25 70
      005107 0A                    2831 	.db 0x0a
      005108 0D                    2832 	.db 0x0d
      005109 00                    2833 	.db 0x00
                                   2834 	.area CSEG    (CODE)
                                   2835 	.area CONST   (CODE)
      00510A                       2836 ___str_23:
      00510A 70 6F 69 6E 74 65 72  2837 	.ascii "pointer location %p, size %d"
             20 6C 6F 63 61 74 69
             6F 6E 20 25 70 2C 20
             73 69 7A 65 20 25 64
      005126 0A                    2838 	.db 0x0a
      005127 0D                    2839 	.db 0x0d
      005128 00                    2840 	.db 0x00
                                   2841 	.area CSEG    (CODE)
                                   2842 	.area CONST   (CODE)
      005129                       2843 ___str_24:
      005129 45 6E 74 65 72 20 55  2844 	.ascii "Enter Uppercase char to save in buffer 0: "
             70 70 65 72 63 61 73
             65 20 63 68 61 72 20
             74 6F 20 73 61 76 65
             20 69 6E 20 62 75 66
             66 65 72 20 30 3A 20
      005153 0A                    2845 	.db 0x0a
      005154 0D                    2846 	.db 0x0d
      005155 00                    2847 	.db 0x00
                                   2848 	.area CSEG    (CODE)
                                   2849 	.area CONST   (CODE)
      005156                       2850 ___str_25:
      005156 43 6F 6D 6D 61 6E 64  2851 	.ascii "Command recived ! "
             20 72 65 63 69 76 65
             64 20 21 20
      005168 0A                    2852 	.db 0x0a
      005169 0D                    2853 	.db 0x0d
      00516A 00                    2854 	.db 0x00
                                   2855 	.area CSEG    (CODE)
                                   2856 	.area CONST   (CODE)
      00516B                       2857 ___str_26:
      00516B 74 6F 74 61 6C 20 73  2858 	.ascii "total storage %d recent storage %d pointer %p "
             74 6F 72 61 67 65 20
             25 64 20 72 65 63 65
             6E 74 20 73 74 6F 72
             61 67 65 20 25 64 20
             70 6F 69 6E 74 65 72
             20 25 70 20
      005199 0A                    2859 	.db 0x0a
      00519A 0D                    2860 	.db 0x0d
      00519B 00                    2861 	.db 0x00
                                   2862 	.area CSEG    (CODE)
                                   2863 	.area CONST   (CODE)
      00519C                       2864 ___str_27:
      00519C 62 75 66 66 65 72 30  2865 	.ascii "buffer0 got full nothing to write !"
             20 67 6F 74 20 66 75
             6C 6C 20 6E 6F 74 68
             69 6E 67 20 74 6F 20
             77 72 69 74 65 20 21
      0051BF 00                    2866 	.db 0x00
                                   2867 	.area CSEG    (CODE)
                                   2868 	.area CONST   (CODE)
      0051C0                       2869 ___str_28:
      0051C0 50 6C 65 61 73 65 20  2870 	.ascii "Please enter An command (+) (-) (?) (=) (@): "
             65 6E 74 65 72 20 41
             6E 20 63 6F 6D 6D 61
             6E 64 20 28 2B 29 20
             28 2D 29 20 28 3F 29
             20 28 3D 29 20 28 40
             29 3A 20
      0051ED 0A                    2871 	.db 0x0a
      0051EE 00                    2872 	.db 0x00
                                   2873 	.area CSEG    (CODE)
                                   2874 	.area XINIT   (CODE)
      0051FC                       2875 __xinit__index_of_buffers:
      0051FC 00                    2876 	.db #0x00	; 0
      0051FD                       2877 __xinit__total_number_of_commands:
      0051FD 00                    2878 	.db #0x00	; 0
      0051FE                       2879 __xinit__total_number_of_storage:
      0051FE 00                    2880 	.db #0x00	; 0
      0051FF                       2881 __xinit__recent_commands:
      0051FF 00                    2882 	.db #0x00	; 0
      005200                       2883 __xinit__recent_storage:
      005200 00                    2884 	.db #0x00	; 0
      005201                       2885 __xinit__recived_bytes:
      005201 00                    2886 	.db #0x00	; 0
      005202                       2887 __xinit__pointer1:
      005202 00 00                 2888 	.byte #0x00,#0x00
      005204                       2889 __xinit__pointer2:
      005204 00 00                 2890 	.byte #0x00,#0x00
                                   2891 	.area CABS    (ABS,CODE)
