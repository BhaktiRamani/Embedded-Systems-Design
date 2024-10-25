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
      00066B                        506 _sendUint32ToUART_value_65536_61:
      00066B                        507 	.ds 4
      00066F                        508 _print_prompt_string_65536_64:
      00066F                        509 	.ds 3
      000672                        510 _get_command_command_65536_67:
      000672                        511 	.ds 2
      000674                        512 _get_command_rd_ptr_131073_73:
      000674                        513 	.ds 3
      000677                        514 _get_command_temp_131073_73:
      000677                        515 	.ds 1
      000678                        516 _get_command_node_131074_78:
      000678                        517 	.ds 6
      00067E                        518 _buffer0_dump_rd_ptr_65536_80:
      00067E                        519 	.ds 3
      000681                        520 _buffer0_dump_temp_65536_80:
      000681                        521 	.ds 1
      000682                        522 _main_node1_65537_89:
      000682                        523 	.ds 6
      000688                        524 _main_node2_65538_90:
      000688                        525 	.ds 6
                                    526 ;--------------------------------------------------------
                                    527 ; absolute external ram data
                                    528 ;--------------------------------------------------------
                                    529 	.area XABS    (ABS,XDATA)
                                    530 ;--------------------------------------------------------
                                    531 ; external initialized ram data
                                    532 ;--------------------------------------------------------
                                    533 	.area XISEG   (XDATA)
      000F0B                        534 _index_of_buffers:
      000F0B                        535 	.ds 1
      000F0C                        536 _total_number_of_commands::
      000F0C                        537 	.ds 1
      000F0D                        538 _total_number_of_storage::
      000F0D                        539 	.ds 1
      000F0E                        540 _recent_commands::
      000F0E                        541 	.ds 1
      000F0F                        542 _recent_storage::
      000F0F                        543 	.ds 1
      000F10                        544 _recived_bytes::
      000F10                        545 	.ds 1
      000F11                        546 _pointer1::
      000F11                        547 	.ds 2
      000F13                        548 _pointer2::
      000F13                        549 	.ds 2
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
      003003 02 38 97         [24]  587 	ljmp	_main
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
      0030BD 90 0F 10         [24]  727 	mov	dptr,#_recived_bytes
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
      003101 12 32 CE         [24]  793 	lcall	_print_prompt
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
      003122 BD 0D 04         [24]  819 	cjne	r5,#0x0d,00145$
      003125 BE 00 01         [24]  820 	cjne	r6,#0x00,00145$
      003128 04               [12]  821 	inc	a
      003129                        822 00145$:
      003129 B4 01 00         [24]  823 	cjne	a,#0x01,00147$
      00312C                        824 00147$:
      00312C E4               [12]  825 	clr	a
      00312D 33               [12]  826 	rlc	a
      00312E FE               [12]  827 	mov	r6,a
      00312F 5F               [12]  828 	anl	a,r7
      003130 70 03            [24]  829 	jnz	00148$
      003132 02 31 E6         [24]  830 	ljmp	00109$
      003135                        831 00148$:
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
      00315D BE 0D 05         [24]  858 	cjne	r6,#0x0d,00151$
      003160 BF 00 02         [24]  859 	cjne	r7,#0x00,00151$
      003163 80 0D            [24]  860 	sjmp	00102$
      003165                        861 00151$:
                                    862 ;	syntax.c:103: print_prompt("\nEnter valid input\n");
      003165 90 4F 11         [24]  863 	mov	dptr,#___str_0
      003168 75 F0 80         [24]  864 	mov	b,#0x80
      00316B 12 32 CE         [24]  865 	lcall	_print_prompt
                                    866 ;	syntax.c:104: return -1;
      00316E 90 FF FF         [24]  867 	mov	dptr,#0xffff
      003171 22               [24]  868 	ret
      003172                        869 00102$:
                                    870 ;	syntax.c:107: if(data_from_serial == 0x0d){
      003172 BE 0D 05         [24]  871 	cjne	r6,#0x0d,00152$
      003175 BF 00 02         [24]  872 	cjne	r7,#0x00,00152$
      003178 80 6C            [24]  873 	sjmp	00109$
      00317A                        874 00152$:
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
      0031A9 12 42 4E         [24]  906 	lcall	__mulint
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
      0031C6 90 0E C9         [24]  926 	mov	dptr,#__divsint_PARM_2
      0031C9 74 0A            [12]  927 	mov	a,#0x0a
      0031CB F0               [24]  928 	movx	@dptr,a
      0031CC E4               [12]  929 	clr	a
      0031CD A3               [24]  930 	inc	dptr
      0031CE F0               [24]  931 	movx	@dptr,a
      0031CF 8C 82            [24]  932 	mov	dpl,r4
      0031D1 8D 83            [24]  933 	mov	dph,r5
      0031D3 12 43 82         [24]  934 	lcall	__divsint
      0031D6 E5 82            [12]  935 	mov	a,dpl
      0031D8 85 83 F0         [24]  936 	mov	b,dph
      0031DB 90 06 69         [24]  937 	mov	dptr,#_get_buf_value_index_65536_56
      0031DE F0               [24]  938 	movx	@dptr,a
      0031DF E5 F0            [12]  939 	mov	a,b
      0031E1 A3               [24]  940 	inc	dptr
      0031E2 F0               [24]  941 	movx	@dptr,a
      0031E3 02 31 04         [24]  942 	ljmp	00107$
      0031E6                        943 00109$:
                                    944 ;	syntax.c:117: if((buffer_size % 16) != 0 || (buffer_size < LOWER) || (buffer_size > UPPER)) {
      0031E6 90 06 67         [24]  945 	mov	dptr,#_get_buf_value_buffer_size_65536_56
      0031E9 E0               [24]  946 	movx	a,@dptr
      0031EA FE               [12]  947 	mov	r6,a
      0031EB A3               [24]  948 	inc	dptr
      0031EC E0               [24]  949 	movx	a,@dptr
      0031ED FF               [12]  950 	mov	r7,a
      0031EE 90 0E C0         [24]  951 	mov	dptr,#__modsint_PARM_2
      0031F1 74 10            [12]  952 	mov	a,#0x10
      0031F3 F0               [24]  953 	movx	@dptr,a
      0031F4 E4               [12]  954 	clr	a
      0031F5 A3               [24]  955 	inc	dptr
      0031F6 F0               [24]  956 	movx	@dptr,a
      0031F7 8E 82            [24]  957 	mov	dpl,r6
      0031F9 8F 83            [24]  958 	mov	dph,r7
      0031FB C0 07            [24]  959 	push	ar7
      0031FD C0 06            [24]  960 	push	ar6
      0031FF 12 42 6E         [24]  961 	lcall	__modsint
      003202 E5 82            [12]  962 	mov	a,dpl
      003204 85 83 F0         [24]  963 	mov	b,dph
      003207 D0 06            [24]  964 	pop	ar6
      003209 D0 07            [24]  965 	pop	ar7
      00320B 45 F0            [12]  966 	orl	a,b
      00320D 70 2E            [24]  967 	jnz	00110$
      00320F 90 06 60         [24]  968 	mov	dptr,#_get_buf_value_PARM_3
      003212 E0               [24]  969 	movx	a,@dptr
      003213 FC               [12]  970 	mov	r4,a
      003214 A3               [24]  971 	inc	dptr
      003215 E0               [24]  972 	movx	a,@dptr
      003216 FD               [12]  973 	mov	r5,a
      003217 C3               [12]  974 	clr	c
      003218 EE               [12]  975 	mov	a,r6
      003219 9C               [12]  976 	subb	a,r4
      00321A EF               [12]  977 	mov	a,r7
      00321B 64 80            [12]  978 	xrl	a,#0x80
      00321D 8D F0            [24]  979 	mov	b,r5
      00321F 63 F0 80         [24]  980 	xrl	b,#0x80
      003222 95 F0            [12]  981 	subb	a,b
      003224 40 17            [24]  982 	jc	00110$
      003226 90 06 5E         [24]  983 	mov	dptr,#_get_buf_value_PARM_2
      003229 E0               [24]  984 	movx	a,@dptr
      00322A FC               [12]  985 	mov	r4,a
      00322B A3               [24]  986 	inc	dptr
      00322C E0               [24]  987 	movx	a,@dptr
      00322D FD               [12]  988 	mov	r5,a
      00322E C3               [12]  989 	clr	c
      00322F EC               [12]  990 	mov	a,r4
      003230 9E               [12]  991 	subb	a,r6
      003231 ED               [12]  992 	mov	a,r5
      003232 64 80            [12]  993 	xrl	a,#0x80
      003234 8F F0            [24]  994 	mov	b,r7
      003236 63 F0 80         [24]  995 	xrl	b,#0x80
      003239 95 F0            [12]  996 	subb	a,b
      00323B 50 04            [24]  997 	jnc	00111$
      00323D                        998 00110$:
                                    999 ;	syntax.c:118: return -1;
      00323D 90 FF FF         [24] 1000 	mov	dptr,#0xffff
      003240 22               [24] 1001 	ret
      003241                       1002 00111$:
                                   1003 ;	syntax.c:122: return buffer_size;
      003241 8E 82            [24] 1004 	mov	dpl,r6
      003243 8F 83            [24] 1005 	mov	dph,r7
                                   1006 ;	syntax.c:124: }
      003245 22               [24] 1007 	ret
                                   1008 ;------------------------------------------------------------
                                   1009 ;Allocation info for local variables in function 'sendUint32ToUART'
                                   1010 ;------------------------------------------------------------
                                   1011 ;value                     Allocated with name '_sendUint32ToUART_value_65536_61'
                                   1012 ;byte                      Allocated with name '_sendUint32ToUART_byte_65536_62'
                                   1013 ;i                         Allocated with name '_sendUint32ToUART_i_65536_62'
                                   1014 ;byte                      Allocated with name '_sendUint32ToUART_byte_131072_63'
                                   1015 ;------------------------------------------------------------
                                   1016 ;	syntax.c:126: void sendUint32ToUART(uint32_t value) {
                                   1017 ;	-----------------------------------------
                                   1018 ;	 function sendUint32ToUART
                                   1019 ;	-----------------------------------------
      003246                       1020 _sendUint32ToUART:
      003246 AF 82            [24] 1021 	mov	r7,dpl
      003248 AE 83            [24] 1022 	mov	r6,dph
      00324A AD F0            [24] 1023 	mov	r5,b
      00324C FC               [12] 1024 	mov	r4,a
      00324D 90 06 6B         [24] 1025 	mov	dptr,#_sendUint32ToUART_value_65536_61
      003250 EF               [12] 1026 	mov	a,r7
      003251 F0               [24] 1027 	movx	@dptr,a
      003252 EE               [12] 1028 	mov	a,r6
      003253 A3               [24] 1029 	inc	dptr
      003254 F0               [24] 1030 	movx	@dptr,a
      003255 ED               [12] 1031 	mov	a,r5
      003256 A3               [24] 1032 	inc	dptr
      003257 F0               [24] 1033 	movx	@dptr,a
      003258 EC               [12] 1034 	mov	a,r4
      003259 A3               [24] 1035 	inc	dptr
      00325A F0               [24] 1036 	movx	@dptr,a
                                   1037 ;	syntax.c:129: while (value > 1) {
      00325B                       1038 00101$:
      00325B 90 06 6B         [24] 1039 	mov	dptr,#_sendUint32ToUART_value_65536_61
      00325E E0               [24] 1040 	movx	a,@dptr
      00325F FC               [12] 1041 	mov	r4,a
      003260 A3               [24] 1042 	inc	dptr
      003261 E0               [24] 1043 	movx	a,@dptr
      003262 FD               [12] 1044 	mov	r5,a
      003263 A3               [24] 1045 	inc	dptr
      003264 E0               [24] 1046 	movx	a,@dptr
      003265 FE               [12] 1047 	mov	r6,a
      003266 A3               [24] 1048 	inc	dptr
      003267 E0               [24] 1049 	movx	a,@dptr
      003268 FF               [12] 1050 	mov	r7,a
      003269 C3               [12] 1051 	clr	c
      00326A 74 01            [12] 1052 	mov	a,#0x01
      00326C 9C               [12] 1053 	subb	a,r4
      00326D E4               [12] 1054 	clr	a
      00326E 9D               [12] 1055 	subb	a,r5
      00326F E4               [12] 1056 	clr	a
      003270 9E               [12] 1057 	subb	a,r6
      003271 E4               [12] 1058 	clr	a
      003272 9F               [12] 1059 	subb	a,r7
      003273 50 58            [24] 1060 	jnc	00104$
                                   1061 ;	syntax.c:130: int byte = value % 10; // Extract one byte at a time
      003275 90 0E 97         [24] 1062 	mov	dptr,#__modulong_PARM_2
      003278 74 0A            [12] 1063 	mov	a,#0x0a
      00327A F0               [24] 1064 	movx	@dptr,a
      00327B E4               [12] 1065 	clr	a
      00327C A3               [24] 1066 	inc	dptr
      00327D F0               [24] 1067 	movx	@dptr,a
      00327E A3               [24] 1068 	inc	dptr
      00327F F0               [24] 1069 	movx	@dptr,a
      003280 A3               [24] 1070 	inc	dptr
      003281 F0               [24] 1071 	movx	@dptr,a
      003282 8C 82            [24] 1072 	mov	dpl,r4
      003284 8D 83            [24] 1073 	mov	dph,r5
      003286 8E F0            [24] 1074 	mov	b,r6
      003288 EF               [12] 1075 	mov	a,r7
      003289 C0 07            [24] 1076 	push	ar7
      00328B C0 06            [24] 1077 	push	ar6
      00328D C0 05            [24] 1078 	push	ar5
      00328F C0 04            [24] 1079 	push	ar4
      003291 12 3D E6         [24] 1080 	lcall	__modulong
                                   1081 ;	syntax.c:131: putchar(byte);
      003294 12 30 97         [24] 1082 	lcall	_putchar
      003297 D0 04            [24] 1083 	pop	ar4
      003299 D0 05            [24] 1084 	pop	ar5
      00329B D0 06            [24] 1085 	pop	ar6
      00329D D0 07            [24] 1086 	pop	ar7
                                   1087 ;	syntax.c:132: value = value / 10;
      00329F 90 0E A0         [24] 1088 	mov	dptr,#__divulong_PARM_2
      0032A2 74 0A            [12] 1089 	mov	a,#0x0a
      0032A4 F0               [24] 1090 	movx	@dptr,a
      0032A5 E4               [12] 1091 	clr	a
      0032A6 A3               [24] 1092 	inc	dptr
      0032A7 F0               [24] 1093 	movx	@dptr,a
      0032A8 A3               [24] 1094 	inc	dptr
      0032A9 F0               [24] 1095 	movx	@dptr,a
      0032AA A3               [24] 1096 	inc	dptr
      0032AB F0               [24] 1097 	movx	@dptr,a
      0032AC 8C 82            [24] 1098 	mov	dpl,r4
      0032AE 8D 83            [24] 1099 	mov	dph,r5
      0032B0 8E F0            [24] 1100 	mov	b,r6
      0032B2 EF               [12] 1101 	mov	a,r7
      0032B3 12 3F 26         [24] 1102 	lcall	__divulong
      0032B6 AC 82            [24] 1103 	mov	r4,dpl
      0032B8 AD 83            [24] 1104 	mov	r5,dph
      0032BA AE F0            [24] 1105 	mov	r6,b
      0032BC FF               [12] 1106 	mov	r7,a
      0032BD 90 06 6B         [24] 1107 	mov	dptr,#_sendUint32ToUART_value_65536_61
      0032C0 EC               [12] 1108 	mov	a,r4
      0032C1 F0               [24] 1109 	movx	@dptr,a
      0032C2 ED               [12] 1110 	mov	a,r5
      0032C3 A3               [24] 1111 	inc	dptr
      0032C4 F0               [24] 1112 	movx	@dptr,a
      0032C5 EE               [12] 1113 	mov	a,r6
      0032C6 A3               [24] 1114 	inc	dptr
      0032C7 F0               [24] 1115 	movx	@dptr,a
      0032C8 EF               [12] 1116 	mov	a,r7
      0032C9 A3               [24] 1117 	inc	dptr
      0032CA F0               [24] 1118 	movx	@dptr,a
      0032CB 80 8E            [24] 1119 	sjmp	00101$
      0032CD                       1120 00104$:
                                   1121 ;	syntax.c:134: }
      0032CD 22               [24] 1122 	ret
                                   1123 ;------------------------------------------------------------
                                   1124 ;Allocation info for local variables in function 'print_prompt'
                                   1125 ;------------------------------------------------------------
                                   1126 ;string                    Allocated with name '_print_prompt_string_65536_64'
                                   1127 ;------------------------------------------------------------
                                   1128 ;	syntax.c:138: void print_prompt(const char * string){
                                   1129 ;	-----------------------------------------
                                   1130 ;	 function print_prompt
                                   1131 ;	-----------------------------------------
      0032CE                       1132 _print_prompt:
      0032CE AF F0            [24] 1133 	mov	r7,b
      0032D0 AE 83            [24] 1134 	mov	r6,dph
      0032D2 E5 82            [12] 1135 	mov	a,dpl
      0032D4 90 06 6F         [24] 1136 	mov	dptr,#_print_prompt_string_65536_64
      0032D7 F0               [24] 1137 	movx	@dptr,a
      0032D8 EE               [12] 1138 	mov	a,r6
      0032D9 A3               [24] 1139 	inc	dptr
      0032DA F0               [24] 1140 	movx	@dptr,a
      0032DB EF               [12] 1141 	mov	a,r7
      0032DC A3               [24] 1142 	inc	dptr
      0032DD F0               [24] 1143 	movx	@dptr,a
                                   1144 ;	syntax.c:139: while(*string != '\0'){
      0032DE 90 06 6F         [24] 1145 	mov	dptr,#_print_prompt_string_65536_64
      0032E1 E0               [24] 1146 	movx	a,@dptr
      0032E2 FD               [12] 1147 	mov	r5,a
      0032E3 A3               [24] 1148 	inc	dptr
      0032E4 E0               [24] 1149 	movx	a,@dptr
      0032E5 FE               [12] 1150 	mov	r6,a
      0032E6 A3               [24] 1151 	inc	dptr
      0032E7 E0               [24] 1152 	movx	a,@dptr
      0032E8 FF               [12] 1153 	mov	r7,a
      0032E9                       1154 00101$:
      0032E9 8D 82            [24] 1155 	mov	dpl,r5
      0032EB 8E 83            [24] 1156 	mov	dph,r6
      0032ED 8F F0            [24] 1157 	mov	b,r7
      0032EF 12 4E F1         [24] 1158 	lcall	__gptrget
      0032F2 FC               [12] 1159 	mov	r4,a
      0032F3 60 27            [24] 1160 	jz	00108$
                                   1161 ;	syntax.c:140: putchar(*string);
      0032F5 7B 00            [12] 1162 	mov	r3,#0x00
      0032F7 8C 82            [24] 1163 	mov	dpl,r4
      0032F9 8B 83            [24] 1164 	mov	dph,r3
      0032FB C0 07            [24] 1165 	push	ar7
      0032FD C0 06            [24] 1166 	push	ar6
      0032FF C0 05            [24] 1167 	push	ar5
      003301 12 30 97         [24] 1168 	lcall	_putchar
      003304 D0 05            [24] 1169 	pop	ar5
      003306 D0 06            [24] 1170 	pop	ar6
      003308 D0 07            [24] 1171 	pop	ar7
                                   1172 ;	syntax.c:141: string++;
      00330A 0D               [12] 1173 	inc	r5
      00330B BD 00 01         [24] 1174 	cjne	r5,#0x00,00116$
      00330E 0E               [12] 1175 	inc	r6
      00330F                       1176 00116$:
      00330F 90 06 6F         [24] 1177 	mov	dptr,#_print_prompt_string_65536_64
      003312 ED               [12] 1178 	mov	a,r5
      003313 F0               [24] 1179 	movx	@dptr,a
      003314 EE               [12] 1180 	mov	a,r6
      003315 A3               [24] 1181 	inc	dptr
      003316 F0               [24] 1182 	movx	@dptr,a
      003317 EF               [12] 1183 	mov	a,r7
      003318 A3               [24] 1184 	inc	dptr
      003319 F0               [24] 1185 	movx	@dptr,a
      00331A 80 CD            [24] 1186 	sjmp	00101$
      00331C                       1187 00108$:
      00331C 90 06 6F         [24] 1188 	mov	dptr,#_print_prompt_string_65536_64
      00331F ED               [12] 1189 	mov	a,r5
      003320 F0               [24] 1190 	movx	@dptr,a
      003321 EE               [12] 1191 	mov	a,r6
      003322 A3               [24] 1192 	inc	dptr
      003323 F0               [24] 1193 	movx	@dptr,a
      003324 EF               [12] 1194 	mov	a,r7
      003325 A3               [24] 1195 	inc	dptr
      003326 F0               [24] 1196 	movx	@dptr,a
                                   1197 ;	syntax.c:143: }
      003327 22               [24] 1198 	ret
                                   1199 ;------------------------------------------------------------
                                   1200 ;Allocation info for local variables in function 'get_command'
                                   1201 ;------------------------------------------------------------
                                   1202 ;sloc0                     Allocated with name '_get_command_sloc0_1_0'
                                   1203 ;sloc1                     Allocated with name '_get_command_sloc1_1_0'
                                   1204 ;command                   Allocated with name '_get_command_command_65536_67'
                                   1205 ;temp_value                Allocated with name '_get_command_temp_value_65536_68'
                                   1206 ;pointer                   Allocated with name '_get_command_pointer_65536_68'
                                   1207 ;array_index_temp          Allocated with name '_get_command_array_index_temp_65536_68'
                                   1208 ;i                         Allocated with name '_get_command_i_196608_70'
                                   1209 ;rd_ptr                    Allocated with name '_get_command_rd_ptr_131073_73'
                                   1210 ;wr_ptr                    Allocated with name '_get_command_wr_ptr_131073_73'
                                   1211 ;temp                      Allocated with name '_get_command_temp_131073_73'
                                   1212 ;i                         Allocated with name '_get_command_i_262145_75'
                                   1213 ;node                      Allocated with name '_get_command_node_131074_78'
                                   1214 ;------------------------------------------------------------
                                   1215 ;	syntax.c:152: int get_command(int command){
                                   1216 ;	-----------------------------------------
                                   1217 ;	 function get_command
                                   1218 ;	-----------------------------------------
      003328                       1219 _get_command:
      003328 AF 83            [24] 1220 	mov	r7,dph
      00332A E5 82            [12] 1221 	mov	a,dpl
      00332C 90 06 72         [24] 1222 	mov	dptr,#_get_command_command_65536_67
      00332F F0               [24] 1223 	movx	@dptr,a
      003330 EF               [12] 1224 	mov	a,r7
      003331 A3               [24] 1225 	inc	dptr
      003332 F0               [24] 1226 	movx	@dptr,a
                                   1227 ;	syntax.c:160: switch(command){
      003333 90 06 72         [24] 1228 	mov	dptr,#_get_command_command_65536_67
      003336 E0               [24] 1229 	movx	a,@dptr
      003337 FE               [12] 1230 	mov	r6,a
      003338 A3               [24] 1231 	inc	dptr
      003339 E0               [24] 1232 	movx	a,@dptr
      00333A FF               [12] 1233 	mov	r7,a
      00333B BE 2B 06         [24] 1234 	cjne	r6,#0x2b,00187$
      00333E BF 00 03         [24] 1235 	cjne	r7,#0x00,00187$
      003341 02 36 23         [24] 1236 	ljmp	00110$
      003344                       1237 00187$:
      003344 BE 2D 06         [24] 1238 	cjne	r6,#0x2d,00188$
      003347 BF 00 03         [24] 1239 	cjne	r7,#0x00,00188$
      00334A 02 36 FC         [24] 1240 	ljmp	00113$
      00334D                       1241 00188$:
      00334D BE 3D 06         [24] 1242 	cjne	r6,#0x3d,00189$
      003350 BF 00 03         [24] 1243 	cjne	r7,#0x00,00189$
      003353 02 37 6A         [24] 1244 	ljmp	00118$
      003356                       1245 00189$:
      003356 BE 3F 05         [24] 1246 	cjne	r6,#0x3f,00190$
      003359 BF 00 02         [24] 1247 	cjne	r7,#0x00,00190$
      00335C 80 03            [24] 1248 	sjmp	00191$
      00335E                       1249 00190$:
      00335E 02 37 6D         [24] 1250 	ljmp	00120$
      003361                       1251 00191$:
                                   1252 ;	syntax.c:164: print_prompt("Total number of commands from the start: ");
      003361 90 4F 25         [24] 1253 	mov	dptr,#___str_1
      003364 75 F0 80         [24] 1254 	mov	b,#0x80
      003367 12 32 CE         [24] 1255 	lcall	_print_prompt
                                   1256 ;	syntax.c:165: printf("%d",total_number_of_commands);
      00336A 90 0F 0C         [24] 1257 	mov	dptr,#_total_number_of_commands
      00336D E0               [24] 1258 	movx	a,@dptr
      00336E FF               [12] 1259 	mov	r7,a
      00336F 7E 00            [12] 1260 	mov	r6,#0x00
      003371 C0 07            [24] 1261 	push	ar7
      003373 C0 06            [24] 1262 	push	ar6
      003375 74 4F            [12] 1263 	mov	a,#___str_2
      003377 C0 E0            [24] 1264 	push	acc
      003379 74 4F            [12] 1265 	mov	a,#(___str_2 >> 8)
      00337B C0 E0            [24] 1266 	push	acc
      00337D 74 80            [12] 1267 	mov	a,#0x80
      00337F C0 E0            [24] 1268 	push	acc
      003381 12 44 CF         [24] 1269 	lcall	_printf
      003384 E5 81            [12] 1270 	mov	a,sp
      003386 24 FB            [12] 1271 	add	a,#0xfb
      003388 F5 81            [12] 1272 	mov	sp,a
                                   1273 ;	syntax.c:166: print_prompt("\n\r");
      00338A 90 4F 52         [24] 1274 	mov	dptr,#___str_3
      00338D 75 F0 80         [24] 1275 	mov	b,#0x80
      003390 12 32 CE         [24] 1276 	lcall	_print_prompt
                                   1277 ;	syntax.c:167: print_prompt("Recent number of commands from the last ?: ");
      003393 90 4F 55         [24] 1278 	mov	dptr,#___str_4
      003396 75 F0 80         [24] 1279 	mov	b,#0x80
      003399 12 32 CE         [24] 1280 	lcall	_print_prompt
                                   1281 ;	syntax.c:168: printf("%d",recent_commands);
      00339C 90 0F 0E         [24] 1282 	mov	dptr,#_recent_commands
      00339F E0               [24] 1283 	movx	a,@dptr
      0033A0 FF               [12] 1284 	mov	r7,a
      0033A1 7E 00            [12] 1285 	mov	r6,#0x00
      0033A3 C0 07            [24] 1286 	push	ar7
      0033A5 C0 06            [24] 1287 	push	ar6
      0033A7 74 4F            [12] 1288 	mov	a,#___str_2
      0033A9 C0 E0            [24] 1289 	push	acc
      0033AB 74 4F            [12] 1290 	mov	a,#(___str_2 >> 8)
      0033AD C0 E0            [24] 1291 	push	acc
      0033AF 74 80            [12] 1292 	mov	a,#0x80
      0033B1 C0 E0            [24] 1293 	push	acc
      0033B3 12 44 CF         [24] 1294 	lcall	_printf
      0033B6 E5 81            [12] 1295 	mov	a,sp
      0033B8 24 FB            [12] 1296 	add	a,#0xfb
      0033BA F5 81            [12] 1297 	mov	sp,a
                                   1298 ;	syntax.c:169: print_prompt("\n\r");
      0033BC 90 4F 52         [24] 1299 	mov	dptr,#___str_3
      0033BF 75 F0 80         [24] 1300 	mov	b,#0x80
      0033C2 12 32 CE         [24] 1301 	lcall	_print_prompt
                                   1302 ;	syntax.c:170: print_prompt("\n\r");
      0033C5 90 4F 52         [24] 1303 	mov	dptr,#___str_3
      0033C8 75 F0 80         [24] 1304 	mov	b,#0x80
      0033CB 12 32 CE         [24] 1305 	lcall	_print_prompt
                                   1306 ;	syntax.c:172: print_prompt("Total number of storage chars from the start: ");
      0033CE 90 4F 81         [24] 1307 	mov	dptr,#___str_5
      0033D1 75 F0 80         [24] 1308 	mov	b,#0x80
      0033D4 12 32 CE         [24] 1309 	lcall	_print_prompt
                                   1310 ;	syntax.c:173: printf("%d",total_number_of_storage);
      0033D7 90 0F 0D         [24] 1311 	mov	dptr,#_total_number_of_storage
      0033DA E0               [24] 1312 	movx	a,@dptr
      0033DB FF               [12] 1313 	mov	r7,a
      0033DC 7E 00            [12] 1314 	mov	r6,#0x00
      0033DE C0 07            [24] 1315 	push	ar7
      0033E0 C0 06            [24] 1316 	push	ar6
      0033E2 74 4F            [12] 1317 	mov	a,#___str_2
      0033E4 C0 E0            [24] 1318 	push	acc
      0033E6 74 4F            [12] 1319 	mov	a,#(___str_2 >> 8)
      0033E8 C0 E0            [24] 1320 	push	acc
      0033EA 74 80            [12] 1321 	mov	a,#0x80
      0033EC C0 E0            [24] 1322 	push	acc
      0033EE 12 44 CF         [24] 1323 	lcall	_printf
      0033F1 E5 81            [12] 1324 	mov	a,sp
      0033F3 24 FB            [12] 1325 	add	a,#0xfb
      0033F5 F5 81            [12] 1326 	mov	sp,a
                                   1327 ;	syntax.c:174: print_prompt("\n\r");
      0033F7 90 4F 52         [24] 1328 	mov	dptr,#___str_3
      0033FA 75 F0 80         [24] 1329 	mov	b,#0x80
      0033FD 12 32 CE         [24] 1330 	lcall	_print_prompt
                                   1331 ;	syntax.c:175: print_prompt("Recent number of storage chars from the last ?: ");
      003400 90 4F B0         [24] 1332 	mov	dptr,#___str_6
      003403 75 F0 80         [24] 1333 	mov	b,#0x80
      003406 12 32 CE         [24] 1334 	lcall	_print_prompt
                                   1335 ;	syntax.c:176: printf("%d",recent_storage);
      003409 90 0F 0F         [24] 1336 	mov	dptr,#_recent_storage
      00340C E0               [24] 1337 	movx	a,@dptr
      00340D FF               [12] 1338 	mov	r7,a
      00340E 7E 00            [12] 1339 	mov	r6,#0x00
      003410 C0 07            [24] 1340 	push	ar7
      003412 C0 06            [24] 1341 	push	ar6
      003414 74 4F            [12] 1342 	mov	a,#___str_2
      003416 C0 E0            [24] 1343 	push	acc
      003418 74 4F            [12] 1344 	mov	a,#(___str_2 >> 8)
      00341A C0 E0            [24] 1345 	push	acc
      00341C 74 80            [12] 1346 	mov	a,#0x80
      00341E C0 E0            [24] 1347 	push	acc
      003420 12 44 CF         [24] 1348 	lcall	_printf
      003423 E5 81            [12] 1349 	mov	a,sp
      003425 24 FB            [12] 1350 	add	a,#0xfb
      003427 F5 81            [12] 1351 	mov	sp,a
                                   1352 ;	syntax.c:177: print_prompt("\n\r");
      003429 90 4F 52         [24] 1353 	mov	dptr,#___str_3
      00342C 75 F0 80         [24] 1354 	mov	b,#0x80
      00342F 12 32 CE         [24] 1355 	lcall	_print_prompt
                                   1356 ;	syntax.c:178: print_prompt("\n\r");
      003432 90 4F 52         [24] 1357 	mov	dptr,#___str_3
      003435 75 F0 80         [24] 1358 	mov	b,#0x80
      003438 12 32 CE         [24] 1359 	lcall	_print_prompt
                                   1360 ;	syntax.c:180: for(int i=0; i<99; i++){
      00343B 7E 00            [12] 1361 	mov	r6,#0x00
      00343D 7F 00            [12] 1362 	mov	r7,#0x00
      00343F                       1363 00122$:
      00343F C3               [12] 1364 	clr	c
      003440 EE               [12] 1365 	mov	a,r6
      003441 94 63            [12] 1366 	subb	a,#0x63
      003443 EF               [12] 1367 	mov	a,r7
      003444 64 80            [12] 1368 	xrl	a,#0x80
      003446 94 80            [12] 1369 	subb	a,#0x80
      003448 40 03            [24] 1370 	jc	00192$
      00344A 02 34 E5         [24] 1371 	ljmp	00105$
      00344D                       1372 00192$:
                                   1373 ;	syntax.c:181: if(array_for_nodes[i]){
      00344D 90 0E BE         [24] 1374 	mov	dptr,#__mulint_PARM_2
      003450 EE               [12] 1375 	mov	a,r6
      003451 F0               [24] 1376 	movx	@dptr,a
      003452 EF               [12] 1377 	mov	a,r7
      003453 A3               [24] 1378 	inc	dptr
      003454 F0               [24] 1379 	movx	@dptr,a
      003455 90 00 06         [24] 1380 	mov	dptr,#0x0006
      003458 C0 07            [24] 1381 	push	ar7
      00345A C0 06            [24] 1382 	push	ar6
      00345C 12 42 4E         [24] 1383 	lcall	__mulint
      00345F AC 82            [24] 1384 	mov	r4,dpl
      003461 AD 83            [24] 1385 	mov	r5,dph
      003463 D0 06            [24] 1386 	pop	ar6
      003465 D0 07            [24] 1387 	pop	ar7
      003467 EC               [12] 1388 	mov	a,r4
      003468 24 04            [12] 1389 	add	a,#_array_for_nodes
      00346A FC               [12] 1390 	mov	r4,a
      00346B ED               [12] 1391 	mov	a,r5
      00346C 34 04            [12] 1392 	addc	a,#(_array_for_nodes >> 8)
      00346E FD               [12] 1393 	mov	r5,a
      00346F 8C 82            [24] 1394 	mov	dpl,r4
      003471 8D 83            [24] 1395 	mov	dph,r5
      003473 E0               [24] 1396 	movx	a,@dptr
      003474 60 67            [24] 1397 	jz	00123$
                                   1398 ;	syntax.c:182: printf("Index: %d , starting address of Pointer: %p  Ending Address of the pointer %p size of array: %d\n\r",array_for_nodes[i].index,array_for_nodes[i].data_pointer,array_for_nodes[i].data_pointer+array_for_nodes[i].size, array_for_nodes[i].size);
      003476 C0 06            [24] 1399 	push	ar6
      003478 C0 07            [24] 1400 	push	ar7
      00347A 8C 82            [24] 1401 	mov	dpl,r4
      00347C 8D 83            [24] 1402 	mov	dph,r5
      00347E A3               [24] 1403 	inc	dptr
      00347F A3               [24] 1404 	inc	dptr
      003480 A3               [24] 1405 	inc	dptr
      003481 A3               [24] 1406 	inc	dptr
      003482 E0               [24] 1407 	movx	a,@dptr
      003483 F5 08            [12] 1408 	mov	_get_command_sloc0_1_0,a
      003485 A3               [24] 1409 	inc	dptr
      003486 E0               [24] 1410 	movx	a,@dptr
      003487 F5 09            [12] 1411 	mov	(_get_command_sloc0_1_0 + 1),a
      003489 8C 82            [24] 1412 	mov	dpl,r4
      00348B 8D 83            [24] 1413 	mov	dph,r5
      00348D A3               [24] 1414 	inc	dptr
      00348E E0               [24] 1415 	movx	a,@dptr
      00348F F8               [12] 1416 	mov	r0,a
      003490 A3               [24] 1417 	inc	dptr
      003491 E0               [24] 1418 	movx	a,@dptr
      003492 F9               [12] 1419 	mov	r1,a
      003493 A3               [24] 1420 	inc	dptr
      003494 E0               [24] 1421 	movx	a,@dptr
      003495 FF               [12] 1422 	mov	r7,a
      003496 E5 08            [12] 1423 	mov	a,_get_command_sloc0_1_0
      003498 28               [12] 1424 	add	a,r0
      003499 FA               [12] 1425 	mov	r2,a
      00349A E5 09            [12] 1426 	mov	a,(_get_command_sloc0_1_0 + 1)
      00349C 39               [12] 1427 	addc	a,r1
      00349D FB               [12] 1428 	mov	r3,a
      00349E 8F 06            [24] 1429 	mov	ar6,r7
      0034A0 8C 82            [24] 1430 	mov	dpl,r4
      0034A2 8D 83            [24] 1431 	mov	dph,r5
      0034A4 E0               [24] 1432 	movx	a,@dptr
      0034A5 FC               [12] 1433 	mov	r4,a
      0034A6 7D 00            [12] 1434 	mov	r5,#0x00
      0034A8 C0 07            [24] 1435 	push	ar7
      0034AA C0 06            [24] 1436 	push	ar6
      0034AC C0 08            [24] 1437 	push	_get_command_sloc0_1_0
      0034AE C0 09            [24] 1438 	push	(_get_command_sloc0_1_0 + 1)
      0034B0 C0 02            [24] 1439 	push	ar2
      0034B2 C0 03            [24] 1440 	push	ar3
      0034B4 C0 06            [24] 1441 	push	ar6
      0034B6 C0 00            [24] 1442 	push	ar0
      0034B8 C0 01            [24] 1443 	push	ar1
      0034BA C0 07            [24] 1444 	push	ar7
      0034BC C0 04            [24] 1445 	push	ar4
      0034BE C0 05            [24] 1446 	push	ar5
      0034C0 74 E1            [12] 1447 	mov	a,#___str_7
      0034C2 C0 E0            [24] 1448 	push	acc
      0034C4 74 4F            [12] 1449 	mov	a,#(___str_7 >> 8)
      0034C6 C0 E0            [24] 1450 	push	acc
      0034C8 74 80            [12] 1451 	mov	a,#0x80
      0034CA C0 E0            [24] 1452 	push	acc
      0034CC 12 44 CF         [24] 1453 	lcall	_printf
      0034CF E5 81            [12] 1454 	mov	a,sp
      0034D1 24 F3            [12] 1455 	add	a,#0xf3
      0034D3 F5 81            [12] 1456 	mov	sp,a
      0034D5 D0 06            [24] 1457 	pop	ar6
      0034D7 D0 07            [24] 1458 	pop	ar7
                                   1459 ;	syntax.c:244: return 0;
      0034D9 D0 07            [24] 1460 	pop	ar7
      0034DB D0 06            [24] 1461 	pop	ar6
                                   1462 ;	syntax.c:182: printf("Index: %d , starting address of Pointer: %p  Ending Address of the pointer %p size of array: %d\n\r",array_for_nodes[i].index,array_for_nodes[i].data_pointer,array_for_nodes[i].data_pointer+array_for_nodes[i].size, array_for_nodes[i].size);
      0034DD                       1463 00123$:
                                   1464 ;	syntax.c:180: for(int i=0; i<99; i++){
      0034DD 0E               [12] 1465 	inc	r6
      0034DE BE 00 01         [24] 1466 	cjne	r6,#0x00,00194$
      0034E1 0F               [12] 1467 	inc	r7
      0034E2                       1468 00194$:
      0034E2 02 34 3F         [24] 1469 	ljmp	00122$
      0034E5                       1470 00105$:
                                   1471 ;	syntax.c:189: uint8_t *rd_ptr = array_for_nodes[0].data_pointer;
      0034E5 90 04 05         [24] 1472 	mov	dptr,#(_array_for_nodes + 0x0001)
      0034E8 E0               [24] 1473 	movx	a,@dptr
      0034E9 F5 0A            [12] 1474 	mov	_get_command_sloc1_1_0,a
      0034EB A3               [24] 1475 	inc	dptr
      0034EC E0               [24] 1476 	movx	a,@dptr
      0034ED F5 0B            [12] 1477 	mov	(_get_command_sloc1_1_0 + 1),a
      0034EF A3               [24] 1478 	inc	dptr
      0034F0 E0               [24] 1479 	movx	a,@dptr
      0034F1 F5 0C            [12] 1480 	mov	(_get_command_sloc1_1_0 + 2),a
      0034F3 90 06 74         [24] 1481 	mov	dptr,#_get_command_rd_ptr_131073_73
      0034F6 E5 0A            [12] 1482 	mov	a,_get_command_sloc1_1_0
      0034F8 F0               [24] 1483 	movx	@dptr,a
      0034F9 E5 0B            [12] 1484 	mov	a,(_get_command_sloc1_1_0 + 1)
      0034FB A3               [24] 1485 	inc	dptr
      0034FC F0               [24] 1486 	movx	@dptr,a
      0034FD E5 0C            [12] 1487 	mov	a,(_get_command_sloc1_1_0 + 2)
      0034FF A3               [24] 1488 	inc	dptr
      003500 F0               [24] 1489 	movx	@dptr,a
                                   1490 ;	syntax.c:191: uint8_t temp = array_for_nodes[0].size*sizeof(uint8_t);
      003501 90 04 08         [24] 1491 	mov	dptr,#(_array_for_nodes + 0x0004)
      003504 E0               [24] 1492 	movx	a,@dptr
      003505 90 06 77         [24] 1493 	mov	dptr,#_get_command_temp_131073_73
      003508 F0               [24] 1494 	movx	@dptr,a
                                   1495 ;	syntax.c:192: printf("....... Dumping Buffer0 ......\r\n");
      003509 74 43            [12] 1496 	mov	a,#___str_8
      00350B C0 E0            [24] 1497 	push	acc
      00350D 74 50            [12] 1498 	mov	a,#(___str_8 >> 8)
      00350F C0 E0            [24] 1499 	push	acc
      003511 74 80            [12] 1500 	mov	a,#0x80
      003513 C0 E0            [24] 1501 	push	acc
      003515 12 44 CF         [24] 1502 	lcall	_printf
      003518 15 81            [12] 1503 	dec	sp
      00351A 15 81            [12] 1504 	dec	sp
      00351C 15 81            [12] 1505 	dec	sp
                                   1506 ;	syntax.c:193: while(temp){
      00351E                       1507 00107$:
      00351E 90 06 77         [24] 1508 	mov	dptr,#_get_command_temp_131073_73
      003521 E0               [24] 1509 	movx	a,@dptr
      003522 FC               [12] 1510 	mov	r4,a
      003523 E0               [24] 1511 	movx	a,@dptr
      003524 70 03            [24] 1512 	jnz	00195$
      003526 02 36 17         [24] 1513 	ljmp	00109$
      003529                       1514 00195$:
                                   1515 ;	syntax.c:194: printf("%p: ", rd_ptr);
      003529 C0 04            [24] 1516 	push	ar4
      00352B 90 06 74         [24] 1517 	mov	dptr,#_get_command_rd_ptr_131073_73
      00352E E0               [24] 1518 	movx	a,@dptr
      00352F C0 E0            [24] 1519 	push	acc
      003531 A3               [24] 1520 	inc	dptr
      003532 E0               [24] 1521 	movx	a,@dptr
      003533 C0 E0            [24] 1522 	push	acc
      003535 A3               [24] 1523 	inc	dptr
      003536 E0               [24] 1524 	movx	a,@dptr
      003537 C0 E0            [24] 1525 	push	acc
      003539 74 64            [12] 1526 	mov	a,#___str_9
      00353B C0 E0            [24] 1527 	push	acc
      00353D 74 50            [12] 1528 	mov	a,#(___str_9 >> 8)
      00353F C0 E0            [24] 1529 	push	acc
      003541 74 80            [12] 1530 	mov	a,#0x80
      003543 C0 E0            [24] 1531 	push	acc
      003545 12 44 CF         [24] 1532 	lcall	_printf
      003548 E5 81            [12] 1533 	mov	a,sp
      00354A 24 FA            [12] 1534 	add	a,#0xfa
      00354C F5 81            [12] 1535 	mov	sp,a
      00354E D0 04            [24] 1536 	pop	ar4
                                   1537 ;	syntax.c:195: for(int i=15; i>=0;i--){
      003550 90 06 74         [24] 1538 	mov	dptr,#_get_command_rd_ptr_131073_73
      003553 E0               [24] 1539 	movx	a,@dptr
      003554 F9               [12] 1540 	mov	r1,a
      003555 A3               [24] 1541 	inc	dptr
      003556 E0               [24] 1542 	movx	a,@dptr
      003557 FA               [12] 1543 	mov	r2,a
      003558 A3               [24] 1544 	inc	dptr
      003559 E0               [24] 1545 	movx	a,@dptr
      00355A FB               [12] 1546 	mov	r3,a
      00355B 75 08 0F         [24] 1547 	mov	_get_command_sloc0_1_0,#0x0f
      00355E 75 09 00         [24] 1548 	mov	(_get_command_sloc0_1_0 + 1),#0x00
      003561                       1549 00125$:
      003561 E5 09            [12] 1550 	mov	a,(_get_command_sloc0_1_0 + 1)
      003563 30 E7 03         [24] 1551 	jnb	acc.7,00196$
      003566 02 35 EF         [24] 1552 	ljmp	00144$
      003569                       1553 00196$:
                                   1554 ;	syntax.c:196: printf("%d ",(*rd_ptr & (0x00FF)));
      003569 89 82            [24] 1555 	mov	dpl,r1
      00356B 8A 83            [24] 1556 	mov	dph,r2
      00356D 8B F0            [24] 1557 	mov	b,r3
      00356F 12 4E F1         [24] 1558 	lcall	__gptrget
      003572 F8               [12] 1559 	mov	r0,a
      003573 7F 00            [12] 1560 	mov	r7,#0x00
      003575 C0 04            [24] 1561 	push	ar4
      003577 C0 03            [24] 1562 	push	ar3
      003579 C0 02            [24] 1563 	push	ar2
      00357B C0 01            [24] 1564 	push	ar1
      00357D C0 00            [24] 1565 	push	ar0
      00357F C0 07            [24] 1566 	push	ar7
      003581 74 69            [12] 1567 	mov	a,#___str_10
      003583 C0 E0            [24] 1568 	push	acc
      003585 74 50            [12] 1569 	mov	a,#(___str_10 >> 8)
      003587 C0 E0            [24] 1570 	push	acc
      003589 74 80            [12] 1571 	mov	a,#0x80
      00358B C0 E0            [24] 1572 	push	acc
      00358D 12 44 CF         [24] 1573 	lcall	_printf
      003590 E5 81            [12] 1574 	mov	a,sp
      003592 24 FB            [12] 1575 	add	a,#0xfb
      003594 F5 81            [12] 1576 	mov	sp,a
      003596 D0 01            [24] 1577 	pop	ar1
      003598 D0 02            [24] 1578 	pop	ar2
      00359A D0 03            [24] 1579 	pop	ar3
                                   1580 ;	syntax.c:197: printf("%d ",((*rd_ptr & (0xFF00))>>8U));
      00359C 89 82            [24] 1581 	mov	dpl,r1
      00359E 8A 83            [24] 1582 	mov	dph,r2
      0035A0 8B F0            [24] 1583 	mov	b,r3
      0035A2 12 4E F1         [24] 1584 	lcall	__gptrget
      0035A5 A3               [24] 1585 	inc	dptr
      0035A6 A9 82            [24] 1586 	mov	r1,dpl
      0035A8 AA 83            [24] 1587 	mov	r2,dph
      0035AA 7F 00            [12] 1588 	mov	r7,#0x00
      0035AC 7E 00            [12] 1589 	mov	r6,#0x00
      0035AE C0 03            [24] 1590 	push	ar3
      0035B0 C0 02            [24] 1591 	push	ar2
      0035B2 C0 01            [24] 1592 	push	ar1
      0035B4 C0 07            [24] 1593 	push	ar7
      0035B6 C0 06            [24] 1594 	push	ar6
      0035B8 74 69            [12] 1595 	mov	a,#___str_10
      0035BA C0 E0            [24] 1596 	push	acc
      0035BC 74 50            [12] 1597 	mov	a,#(___str_10 >> 8)
      0035BE C0 E0            [24] 1598 	push	acc
      0035C0 74 80            [12] 1599 	mov	a,#0x80
      0035C2 C0 E0            [24] 1600 	push	acc
      0035C4 12 44 CF         [24] 1601 	lcall	_printf
      0035C7 E5 81            [12] 1602 	mov	a,sp
      0035C9 24 FB            [12] 1603 	add	a,#0xfb
      0035CB F5 81            [12] 1604 	mov	sp,a
      0035CD D0 01            [24] 1605 	pop	ar1
      0035CF D0 02            [24] 1606 	pop	ar2
      0035D1 D0 03            [24] 1607 	pop	ar3
      0035D3 D0 04            [24] 1608 	pop	ar4
                                   1609 ;	syntax.c:198: *wr_ptr = 0;
      0035D5 85 0A 82         [24] 1610 	mov	dpl,_get_command_sloc1_1_0
      0035D8 85 0B 83         [24] 1611 	mov	dph,(_get_command_sloc1_1_0 + 1)
      0035DB 85 0C F0         [24] 1612 	mov	b,(_get_command_sloc1_1_0 + 2)
      0035DE E4               [12] 1613 	clr	a
      0035DF 12 40 8E         [24] 1614 	lcall	__gptrput
                                   1615 ;	syntax.c:199: rd_ptr++;
                                   1616 ;	syntax.c:200: temp--;
      0035E2 1C               [12] 1617 	dec	r4
                                   1618 ;	syntax.c:195: for(int i=15; i>=0;i--){
      0035E3 15 08            [12] 1619 	dec	_get_command_sloc0_1_0
      0035E5 74 FF            [12] 1620 	mov	a,#0xff
      0035E7 B5 08 02         [24] 1621 	cjne	a,_get_command_sloc0_1_0,00197$
      0035EA 15 09            [12] 1622 	dec	(_get_command_sloc0_1_0 + 1)
      0035EC                       1623 00197$:
      0035EC 02 35 61         [24] 1624 	ljmp	00125$
      0035EF                       1625 00144$:
      0035EF 90 06 74         [24] 1626 	mov	dptr,#_get_command_rd_ptr_131073_73
      0035F2 E9               [12] 1627 	mov	a,r1
      0035F3 F0               [24] 1628 	movx	@dptr,a
      0035F4 EA               [12] 1629 	mov	a,r2
      0035F5 A3               [24] 1630 	inc	dptr
      0035F6 F0               [24] 1631 	movx	@dptr,a
      0035F7 EB               [12] 1632 	mov	a,r3
      0035F8 A3               [24] 1633 	inc	dptr
      0035F9 F0               [24] 1634 	movx	@dptr,a
      0035FA 90 06 77         [24] 1635 	mov	dptr,#_get_command_temp_131073_73
      0035FD EC               [12] 1636 	mov	a,r4
      0035FE F0               [24] 1637 	movx	@dptr,a
                                   1638 ;	syntax.c:202: printf("\r\n");
      0035FF 74 6D            [12] 1639 	mov	a,#___str_11
      003601 C0 E0            [24] 1640 	push	acc
      003603 74 50            [12] 1641 	mov	a,#(___str_11 >> 8)
      003605 C0 E0            [24] 1642 	push	acc
      003607 74 80            [12] 1643 	mov	a,#0x80
      003609 C0 E0            [24] 1644 	push	acc
      00360B 12 44 CF         [24] 1645 	lcall	_printf
      00360E 15 81            [12] 1646 	dec	sp
      003610 15 81            [12] 1647 	dec	sp
      003612 15 81            [12] 1648 	dec	sp
      003614 02 35 1E         [24] 1649 	ljmp	00107$
      003617                       1650 00109$:
                                   1651 ;	syntax.c:206: recent_commands = 0;
      003617 90 0F 0E         [24] 1652 	mov	dptr,#_recent_commands
      00361A E4               [12] 1653 	clr	a
      00361B F0               [24] 1654 	movx	@dptr,a
                                   1655 ;	syntax.c:207: recent_storage = 0;
      00361C 90 0F 0F         [24] 1656 	mov	dptr,#_recent_storage
      00361F F0               [24] 1657 	movx	@dptr,a
                                   1658 ;	syntax.c:208: break;
      003620 02 37 6D         [24] 1659 	ljmp	00120$
                                   1660 ;	syntax.c:210: case '+':
      003623                       1661 00110$:
                                   1662 ;	syntax.c:211: temp_value = get_buf_value("\n\rEnter buffer size between 20 to 400: ", UPPER_SMALL_BUFFERS, LOWER_SMALL_BUFFERS);
      003623 90 06 5E         [24] 1663 	mov	dptr,#_get_buf_value_PARM_2
      003626 74 90            [12] 1664 	mov	a,#0x90
      003628 F0               [24] 1665 	movx	@dptr,a
      003629 74 01            [12] 1666 	mov	a,#0x01
      00362B A3               [24] 1667 	inc	dptr
      00362C F0               [24] 1668 	movx	@dptr,a
      00362D 90 06 60         [24] 1669 	mov	dptr,#_get_buf_value_PARM_3
      003630 74 14            [12] 1670 	mov	a,#0x14
      003632 F0               [24] 1671 	movx	@dptr,a
      003633 E4               [12] 1672 	clr	a
      003634 A3               [24] 1673 	inc	dptr
      003635 F0               [24] 1674 	movx	@dptr,a
      003636 90 50 70         [24] 1675 	mov	dptr,#___str_12
      003639 75 F0 80         [24] 1676 	mov	b,#0x80
      00363C 12 30 C9         [24] 1677 	lcall	_get_buf_value
      00363F AE 82            [24] 1678 	mov	r6,dpl
      003641 AF 83            [24] 1679 	mov	r7,dph
                                   1680 ;	syntax.c:212: print_prompt("Buffer size you entered is : ");
      003643 90 50 98         [24] 1681 	mov	dptr,#___str_13
      003646 75 F0 80         [24] 1682 	mov	b,#0x80
      003649 C0 07            [24] 1683 	push	ar7
      00364B C0 06            [24] 1684 	push	ar6
      00364D 12 32 CE         [24] 1685 	lcall	_print_prompt
      003650 D0 06            [24] 1686 	pop	ar6
      003652 D0 07            [24] 1687 	pop	ar7
                                   1688 ;	syntax.c:213: printf("%d \n\r", temp_value);
      003654 C0 07            [24] 1689 	push	ar7
      003656 C0 06            [24] 1690 	push	ar6
      003658 C0 06            [24] 1691 	push	ar6
      00365A C0 07            [24] 1692 	push	ar7
      00365C 74 B6            [12] 1693 	mov	a,#___str_14
      00365E C0 E0            [24] 1694 	push	acc
      003660 74 50            [12] 1695 	mov	a,#(___str_14 >> 8)
      003662 C0 E0            [24] 1696 	push	acc
      003664 74 80            [12] 1697 	mov	a,#0x80
      003666 C0 E0            [24] 1698 	push	acc
      003668 12 44 CF         [24] 1699 	lcall	_printf
      00366B E5 81            [12] 1700 	mov	a,sp
      00366D 24 FB            [12] 1701 	add	a,#0xfb
      00366F F5 81            [12] 1702 	mov	sp,a
      003671 D0 06            [24] 1703 	pop	ar6
      003673 D0 07            [24] 1704 	pop	ar7
                                   1705 ;	syntax.c:215: pointer = (__xdata uint8_t *) malloc(temp_value);
      003675 8E 82            [24] 1706 	mov	dpl,r6
      003677 8F 83            [24] 1707 	mov	dph,r7
      003679 C0 07            [24] 1708 	push	ar7
      00367B C0 06            [24] 1709 	push	ar6
      00367D 12 40 E5         [24] 1710 	lcall	_malloc
      003680 AC 82            [24] 1711 	mov	r4,dpl
      003682 AD 83            [24] 1712 	mov	r5,dph
      003684 D0 06            [24] 1713 	pop	ar6
      003686 D0 07            [24] 1714 	pop	ar7
                                   1715 ;	syntax.c:216: if (pointer == NULL){
      003688 EC               [12] 1716 	mov	a,r4
      003689 4D               [12] 1717 	orl	a,r5
      00368A 70 19            [24] 1718 	jnz	00112$
                                   1719 ;	syntax.c:217: print_prompt("\n\rFailed to get malloc try to enter smaller size by again entering +");
      00368C 90 50 BC         [24] 1720 	mov	dptr,#___str_15
      00368F 75 F0 80         [24] 1721 	mov	b,#0x80
      003692 C0 07            [24] 1722 	push	ar7
      003694 C0 06            [24] 1723 	push	ar6
      003696 C0 05            [24] 1724 	push	ar5
      003698 C0 04            [24] 1725 	push	ar4
      00369A 12 32 CE         [24] 1726 	lcall	_print_prompt
      00369D D0 04            [24] 1727 	pop	ar4
      00369F D0 05            [24] 1728 	pop	ar5
      0036A1 D0 06            [24] 1729 	pop	ar6
      0036A3 D0 07            [24] 1730 	pop	ar7
      0036A5                       1731 00112$:
                                   1732 ;	syntax.c:221: node_t node = {index_of_buffers, pointer, temp_value};
      0036A5 90 0F 0B         [24] 1733 	mov	dptr,#_index_of_buffers
      0036A8 E0               [24] 1734 	movx	a,@dptr
      0036A9 90 06 78         [24] 1735 	mov	dptr,#_get_command_node_131074_78
      0036AC F0               [24] 1736 	movx	@dptr,a
      0036AD 7B 00            [12] 1737 	mov	r3,#0x00
      0036AF 90 06 79         [24] 1738 	mov	dptr,#(_get_command_node_131074_78 + 0x0001)
      0036B2 EC               [12] 1739 	mov	a,r4
      0036B3 F0               [24] 1740 	movx	@dptr,a
      0036B4 ED               [12] 1741 	mov	a,r5
      0036B5 A3               [24] 1742 	inc	dptr
      0036B6 F0               [24] 1743 	movx	@dptr,a
      0036B7 EB               [12] 1744 	mov	a,r3
      0036B8 A3               [24] 1745 	inc	dptr
      0036B9 F0               [24] 1746 	movx	@dptr,a
      0036BA 90 06 7C         [24] 1747 	mov	dptr,#(_get_command_node_131074_78 + 0x0004)
      0036BD EE               [12] 1748 	mov	a,r6
      0036BE F0               [24] 1749 	movx	@dptr,a
      0036BF EF               [12] 1750 	mov	a,r7
      0036C0 A3               [24] 1751 	inc	dptr
      0036C1 F0               [24] 1752 	movx	@dptr,a
                                   1753 ;	syntax.c:222: array_for_nodes[index_of_buffers] = node;
      0036C2 90 0F 0B         [24] 1754 	mov	dptr,#_index_of_buffers
      0036C5 E0               [24] 1755 	movx	a,@dptr
      0036C6 75 F0 06         [24] 1756 	mov	b,#0x06
      0036C9 A4               [48] 1757 	mul	ab
      0036CA 24 04            [12] 1758 	add	a,#_array_for_nodes
      0036CC FE               [12] 1759 	mov	r6,a
      0036CD 74 04            [12] 1760 	mov	a,#(_array_for_nodes >> 8)
      0036CF 35 F0            [12] 1761 	addc	a,b
      0036D1 FF               [12] 1762 	mov	r7,a
      0036D2 7D 00            [12] 1763 	mov	r5,#0x00
      0036D4 90 0E AD         [24] 1764 	mov	dptr,#___memcpy_PARM_2
      0036D7 74 78            [12] 1765 	mov	a,#_get_command_node_131074_78
      0036D9 F0               [24] 1766 	movx	@dptr,a
      0036DA 74 06            [12] 1767 	mov	a,#(_get_command_node_131074_78 >> 8)
      0036DC A3               [24] 1768 	inc	dptr
      0036DD F0               [24] 1769 	movx	@dptr,a
      0036DE E4               [12] 1770 	clr	a
      0036DF A3               [24] 1771 	inc	dptr
      0036E0 F0               [24] 1772 	movx	@dptr,a
      0036E1 90 0E B0         [24] 1773 	mov	dptr,#___memcpy_PARM_3
      0036E4 74 06            [12] 1774 	mov	a,#0x06
      0036E6 F0               [24] 1775 	movx	@dptr,a
      0036E7 E4               [12] 1776 	clr	a
      0036E8 A3               [24] 1777 	inc	dptr
      0036E9 F0               [24] 1778 	movx	@dptr,a
      0036EA 8E 82            [24] 1779 	mov	dpl,r6
      0036EC 8F 83            [24] 1780 	mov	dph,r7
      0036EE 8D F0            [24] 1781 	mov	b,r5
      0036F0 12 40 1A         [24] 1782 	lcall	___memcpy
                                   1783 ;	syntax.c:223: index_of_buffers++;
      0036F3 90 0F 0B         [24] 1784 	mov	dptr,#_index_of_buffers
      0036F6 E0               [24] 1785 	movx	a,@dptr
      0036F7 24 01            [12] 1786 	add	a,#0x01
      0036F9 F0               [24] 1787 	movx	@dptr,a
                                   1788 ;	syntax.c:224: break;
                                   1789 ;	syntax.c:226: case '-':
      0036FA 80 71            [24] 1790 	sjmp	00120$
      0036FC                       1791 00113$:
                                   1792 ;	syntax.c:227: print_prompt("\n\rEnter Number to delete between 0 to 127 for buffer:");
      0036FC 90 51 01         [24] 1793 	mov	dptr,#___str_16
      0036FF 75 F0 80         [24] 1794 	mov	b,#0x80
      003702 12 32 CE         [24] 1795 	lcall	_print_prompt
                                   1796 ;	syntax.c:228: temp_value = getchar();
      003705 12 30 B4         [24] 1797 	lcall	_getchar
                                   1798 ;	syntax.c:229: putchar(temp_value);
      003708 AE 82            [24] 1799 	mov	r6,dpl
      00370A AF 83            [24] 1800 	mov  r7,dph
      00370C C0 07            [24] 1801 	push	ar7
      00370E C0 06            [24] 1802 	push	ar6
      003710 12 30 97         [24] 1803 	lcall	_putchar
      003713 D0 06            [24] 1804 	pop	ar6
      003715 D0 07            [24] 1805 	pop	ar7
                                   1806 ;	syntax.c:230: if(temp_value <= 0) break;
      003717 C3               [12] 1807 	clr	c
      003718 E4               [12] 1808 	clr	a
      003719 9E               [12] 1809 	subb	a,r6
      00371A 74 80            [12] 1810 	mov	a,#(0x00 ^ 0x80)
      00371C 8F F0            [24] 1811 	mov	b,r7
      00371E 63 F0 80         [24] 1812 	xrl	b,#0x80
      003721 95 F0            [12] 1813 	subb	a,b
      003723 50 48            [24] 1814 	jnc	00120$
                                   1815 ;	syntax.c:231: if(array_for_nodes[temp_value]){
      003725 90 0E BE         [24] 1816 	mov	dptr,#__mulint_PARM_2
      003728 EE               [12] 1817 	mov	a,r6
      003729 F0               [24] 1818 	movx	@dptr,a
      00372A EF               [12] 1819 	mov	a,r7
      00372B A3               [24] 1820 	inc	dptr
      00372C F0               [24] 1821 	movx	@dptr,a
      00372D 90 00 06         [24] 1822 	mov	dptr,#0x0006
      003730 12 42 4E         [24] 1823 	lcall	__mulint
      003733 AE 82            [24] 1824 	mov	r6,dpl
      003735 AF 83            [24] 1825 	mov	r7,dph
      003737 EE               [12] 1826 	mov	a,r6
      003738 24 04            [12] 1827 	add	a,#_array_for_nodes
      00373A FE               [12] 1828 	mov	r6,a
      00373B EF               [12] 1829 	mov	a,r7
      00373C 34 04            [12] 1830 	addc	a,#(_array_for_nodes >> 8)
      00373E FF               [12] 1831 	mov	r7,a
      00373F 8E 82            [24] 1832 	mov	dpl,r6
      003741 8F 83            [24] 1833 	mov	dph,r7
      003743 E0               [24] 1834 	movx	a,@dptr
      003744 60 27            [24] 1835 	jz	00120$
                                   1836 ;	syntax.c:232: array_for_nodes[temp_value].size = 0;
      003746 8E 82            [24] 1837 	mov	dpl,r6
      003748 8F 83            [24] 1838 	mov	dph,r7
      00374A A3               [24] 1839 	inc	dptr
      00374B A3               [24] 1840 	inc	dptr
      00374C A3               [24] 1841 	inc	dptr
      00374D A3               [24] 1842 	inc	dptr
      00374E E4               [12] 1843 	clr	a
      00374F F0               [24] 1844 	movx	@dptr,a
      003750 A3               [24] 1845 	inc	dptr
      003751 F0               [24] 1846 	movx	@dptr,a
                                   1847 ;	syntax.c:233: free(array_for_nodes[temp_value].data_pointer);
      003752 8E 82            [24] 1848 	mov	dpl,r6
      003754 8F 83            [24] 1849 	mov	dph,r7
      003756 A3               [24] 1850 	inc	dptr
      003757 E0               [24] 1851 	movx	a,@dptr
      003758 FD               [12] 1852 	mov	r5,a
      003759 A3               [24] 1853 	inc	dptr
      00375A E0               [24] 1854 	movx	a,@dptr
      00375B FE               [12] 1855 	mov	r6,a
      00375C A3               [24] 1856 	inc	dptr
      00375D E0               [24] 1857 	movx	a,@dptr
      00375E FF               [12] 1858 	mov	r7,a
      00375F 8D 82            [24] 1859 	mov	dpl,r5
      003761 8E 83            [24] 1860 	mov	dph,r6
      003763 8F F0            [24] 1861 	mov	b,r7
      003765 12 3C 8F         [24] 1862 	lcall	_free
                                   1863 ;	syntax.c:235: break;
                                   1864 ;	syntax.c:237: case '=':
      003768 80 03            [24] 1865 	sjmp	00120$
      00376A                       1866 00118$:
                                   1867 ;	syntax.c:238: buffer0_dump();
      00376A 12 37 71         [24] 1868 	lcall	_buffer0_dump
                                   1869 ;	syntax.c:242: }
      00376D                       1870 00120$:
                                   1871 ;	syntax.c:244: return 0;
      00376D 90 00 00         [24] 1872 	mov	dptr,#0x0000
                                   1873 ;	syntax.c:245: }
      003770 22               [24] 1874 	ret
                                   1875 ;------------------------------------------------------------
                                   1876 ;Allocation info for local variables in function 'buffer0_dump'
                                   1877 ;------------------------------------------------------------
                                   1878 ;rd_ptr                    Allocated with name '_buffer0_dump_rd_ptr_65536_80'
                                   1879 ;temp                      Allocated with name '_buffer0_dump_temp_65536_80'
                                   1880 ;i                         Allocated with name '_buffer0_dump_i_196608_82'
                                   1881 ;------------------------------------------------------------
                                   1882 ;	syntax.c:247: void buffer0_dump(){
                                   1883 ;	-----------------------------------------
                                   1884 ;	 function buffer0_dump
                                   1885 ;	-----------------------------------------
      003771                       1886 _buffer0_dump:
                                   1887 ;	syntax.c:248: uint8_t *rd_ptr = array_for_nodes[0].data_pointer;
      003771 90 04 05         [24] 1888 	mov	dptr,#(_array_for_nodes + 0x0001)
      003774 E0               [24] 1889 	movx	a,@dptr
      003775 FD               [12] 1890 	mov	r5,a
      003776 A3               [24] 1891 	inc	dptr
      003777 E0               [24] 1892 	movx	a,@dptr
      003778 FE               [12] 1893 	mov	r6,a
      003779 A3               [24] 1894 	inc	dptr
      00377A E0               [24] 1895 	movx	a,@dptr
      00377B FF               [12] 1896 	mov	r7,a
      00377C 90 06 7E         [24] 1897 	mov	dptr,#_buffer0_dump_rd_ptr_65536_80
      00377F ED               [12] 1898 	mov	a,r5
      003780 F0               [24] 1899 	movx	@dptr,a
      003781 EE               [12] 1900 	mov	a,r6
      003782 A3               [24] 1901 	inc	dptr
      003783 F0               [24] 1902 	movx	@dptr,a
      003784 EF               [12] 1903 	mov	a,r7
      003785 A3               [24] 1904 	inc	dptr
      003786 F0               [24] 1905 	movx	@dptr,a
                                   1906 ;	syntax.c:249: uint8_t temp = array_for_nodes[0].size*sizeof(uint8_t);
      003787 90 04 08         [24] 1907 	mov	dptr,#(_array_for_nodes + 0x0004)
      00378A E0               [24] 1908 	movx	a,@dptr
      00378B 90 06 81         [24] 1909 	mov	dptr,#_buffer0_dump_temp_65536_80
      00378E F0               [24] 1910 	movx	@dptr,a
                                   1911 ;	syntax.c:250: printf("....... Dumping Buffer0 ......\r\n");
      00378F 74 43            [12] 1912 	mov	a,#___str_8
      003791 C0 E0            [24] 1913 	push	acc
      003793 74 50            [12] 1914 	mov	a,#(___str_8 >> 8)
      003795 C0 E0            [24] 1915 	push	acc
      003797 74 80            [12] 1916 	mov	a,#0x80
      003799 C0 E0            [24] 1917 	push	acc
      00379B 12 44 CF         [24] 1918 	lcall	_printf
      00379E 15 81            [12] 1919 	dec	sp
      0037A0 15 81            [12] 1920 	dec	sp
      0037A2 15 81            [12] 1921 	dec	sp
                                   1922 ;	syntax.c:251: while(temp){
      0037A4                       1923 00102$:
      0037A4 90 06 81         [24] 1924 	mov	dptr,#_buffer0_dump_temp_65536_80
      0037A7 E0               [24] 1925 	movx	a,@dptr
      0037A8 FF               [12] 1926 	mov	r7,a
      0037A9 E0               [24] 1927 	movx	a,@dptr
      0037AA 70 01            [24] 1928 	jnz	00127$
      0037AC 22               [24] 1929 	ret
      0037AD                       1930 00127$:
                                   1931 ;	syntax.c:252: printf("%p: ", rd_ptr);
      0037AD C0 07            [24] 1932 	push	ar7
      0037AF 90 06 7E         [24] 1933 	mov	dptr,#_buffer0_dump_rd_ptr_65536_80
      0037B2 E0               [24] 1934 	movx	a,@dptr
      0037B3 C0 E0            [24] 1935 	push	acc
      0037B5 A3               [24] 1936 	inc	dptr
      0037B6 E0               [24] 1937 	movx	a,@dptr
      0037B7 C0 E0            [24] 1938 	push	acc
      0037B9 A3               [24] 1939 	inc	dptr
      0037BA E0               [24] 1940 	movx	a,@dptr
      0037BB C0 E0            [24] 1941 	push	acc
      0037BD 74 64            [12] 1942 	mov	a,#___str_9
      0037BF C0 E0            [24] 1943 	push	acc
      0037C1 74 50            [12] 1944 	mov	a,#(___str_9 >> 8)
      0037C3 C0 E0            [24] 1945 	push	acc
      0037C5 74 80            [12] 1946 	mov	a,#0x80
      0037C7 C0 E0            [24] 1947 	push	acc
      0037C9 12 44 CF         [24] 1948 	lcall	_printf
      0037CC E5 81            [12] 1949 	mov	a,sp
      0037CE 24 FA            [12] 1950 	add	a,#0xfa
      0037D0 F5 81            [12] 1951 	mov	sp,a
      0037D2 D0 07            [24] 1952 	pop	ar7
                                   1953 ;	syntax.c:253: for(int i=15; i>=0;i--){
      0037D4 90 06 7E         [24] 1954 	mov	dptr,#_buffer0_dump_rd_ptr_65536_80
      0037D7 E0               [24] 1955 	movx	a,@dptr
      0037D8 FC               [12] 1956 	mov	r4,a
      0037D9 A3               [24] 1957 	inc	dptr
      0037DA E0               [24] 1958 	movx	a,@dptr
      0037DB FD               [12] 1959 	mov	r5,a
      0037DC A3               [24] 1960 	inc	dptr
      0037DD E0               [24] 1961 	movx	a,@dptr
      0037DE FE               [12] 1962 	mov	r6,a
      0037DF 7A 0F            [12] 1963 	mov	r2,#0x0f
      0037E1 7B 00            [12] 1964 	mov	r3,#0x00
      0037E3                       1965 00106$:
      0037E3 EB               [12] 1966 	mov	a,r3
      0037E4 30 E7 03         [24] 1967 	jnb	acc.7,00128$
      0037E7 02 38 6F         [24] 1968 	ljmp	00114$
      0037EA                       1969 00128$:
                                   1970 ;	syntax.c:254: printf("%d ",(*rd_ptr & (0x00FF)));
      0037EA 8C 82            [24] 1971 	mov	dpl,r4
      0037EC 8D 83            [24] 1972 	mov	dph,r5
      0037EE 8E F0            [24] 1973 	mov	b,r6
      0037F0 12 4E F1         [24] 1974 	lcall	__gptrget
      0037F3 F8               [12] 1975 	mov	r0,a
      0037F4 79 00            [12] 1976 	mov	r1,#0x00
      0037F6 C0 07            [24] 1977 	push	ar7
      0037F8 C0 06            [24] 1978 	push	ar6
      0037FA C0 05            [24] 1979 	push	ar5
      0037FC C0 04            [24] 1980 	push	ar4
      0037FE C0 03            [24] 1981 	push	ar3
      003800 C0 02            [24] 1982 	push	ar2
      003802 C0 00            [24] 1983 	push	ar0
      003804 C0 01            [24] 1984 	push	ar1
      003806 74 69            [12] 1985 	mov	a,#___str_10
      003808 C0 E0            [24] 1986 	push	acc
      00380A 74 50            [12] 1987 	mov	a,#(___str_10 >> 8)
      00380C C0 E0            [24] 1988 	push	acc
      00380E 74 80            [12] 1989 	mov	a,#0x80
      003810 C0 E0            [24] 1990 	push	acc
      003812 12 44 CF         [24] 1991 	lcall	_printf
      003815 E5 81            [12] 1992 	mov	a,sp
      003817 24 FB            [12] 1993 	add	a,#0xfb
      003819 F5 81            [12] 1994 	mov	sp,a
      00381B D0 02            [24] 1995 	pop	ar2
      00381D D0 03            [24] 1996 	pop	ar3
      00381F D0 04            [24] 1997 	pop	ar4
      003821 D0 05            [24] 1998 	pop	ar5
      003823 D0 06            [24] 1999 	pop	ar6
                                   2000 ;	syntax.c:255: printf("%d ",((*rd_ptr & (0xFF00))>>8U));
      003825 8C 82            [24] 2001 	mov	dpl,r4
      003827 8D 83            [24] 2002 	mov	dph,r5
      003829 8E F0            [24] 2003 	mov	b,r6
      00382B 12 4E F1         [24] 2004 	lcall	__gptrget
      00382E A3               [24] 2005 	inc	dptr
      00382F AC 82            [24] 2006 	mov	r4,dpl
      003831 AD 83            [24] 2007 	mov	r5,dph
      003833 78 00            [12] 2008 	mov	r0,#0x00
      003835 79 00            [12] 2009 	mov	r1,#0x00
      003837 C0 06            [24] 2010 	push	ar6
      003839 C0 05            [24] 2011 	push	ar5
      00383B C0 04            [24] 2012 	push	ar4
      00383D C0 03            [24] 2013 	push	ar3
      00383F C0 02            [24] 2014 	push	ar2
      003841 C0 00            [24] 2015 	push	ar0
      003843 C0 01            [24] 2016 	push	ar1
      003845 74 69            [12] 2017 	mov	a,#___str_10
      003847 C0 E0            [24] 2018 	push	acc
      003849 74 50            [12] 2019 	mov	a,#(___str_10 >> 8)
      00384B C0 E0            [24] 2020 	push	acc
      00384D 74 80            [12] 2021 	mov	a,#0x80
      00384F C0 E0            [24] 2022 	push	acc
      003851 12 44 CF         [24] 2023 	lcall	_printf
      003854 E5 81            [12] 2024 	mov	a,sp
      003856 24 FB            [12] 2025 	add	a,#0xfb
      003858 F5 81            [12] 2026 	mov	sp,a
      00385A D0 02            [24] 2027 	pop	ar2
      00385C D0 03            [24] 2028 	pop	ar3
      00385E D0 04            [24] 2029 	pop	ar4
      003860 D0 05            [24] 2030 	pop	ar5
      003862 D0 06            [24] 2031 	pop	ar6
      003864 D0 07            [24] 2032 	pop	ar7
                                   2033 ;	syntax.c:256: rd_ptr++;
                                   2034 ;	syntax.c:257: temp--;
      003866 1F               [12] 2035 	dec	r7
                                   2036 ;	syntax.c:253: for(int i=15; i>=0;i--){
      003867 1A               [12] 2037 	dec	r2
      003868 BA FF 01         [24] 2038 	cjne	r2,#0xff,00129$
      00386B 1B               [12] 2039 	dec	r3
      00386C                       2040 00129$:
      00386C 02 37 E3         [24] 2041 	ljmp	00106$
      00386F                       2042 00114$:
      00386F 90 06 7E         [24] 2043 	mov	dptr,#_buffer0_dump_rd_ptr_65536_80
      003872 EC               [12] 2044 	mov	a,r4
      003873 F0               [24] 2045 	movx	@dptr,a
      003874 ED               [12] 2046 	mov	a,r5
      003875 A3               [24] 2047 	inc	dptr
      003876 F0               [24] 2048 	movx	@dptr,a
      003877 EE               [12] 2049 	mov	a,r6
      003878 A3               [24] 2050 	inc	dptr
      003879 F0               [24] 2051 	movx	@dptr,a
      00387A 90 06 81         [24] 2052 	mov	dptr,#_buffer0_dump_temp_65536_80
      00387D EF               [12] 2053 	mov	a,r7
      00387E F0               [24] 2054 	movx	@dptr,a
                                   2055 ;	syntax.c:259: printf("\r\n");
      00387F 74 6D            [12] 2056 	mov	a,#___str_11
      003881 C0 E0            [24] 2057 	push	acc
      003883 74 50            [12] 2058 	mov	a,#(___str_11 >> 8)
      003885 C0 E0            [24] 2059 	push	acc
      003887 74 80            [12] 2060 	mov	a,#0x80
      003889 C0 E0            [24] 2061 	push	acc
      00388B 12 44 CF         [24] 2062 	lcall	_printf
      00388E 15 81            [12] 2063 	dec	sp
      003890 15 81            [12] 2064 	dec	sp
      003892 15 81            [12] 2065 	dec	sp
                                   2066 ;	syntax.c:261: }
      003894 02 37 A4         [24] 2067 	ljmp	00102$
                                   2068 ;------------------------------------------------------------
                                   2069 ;Allocation info for local variables in function 'main'
                                   2070 ;------------------------------------------------------------
                                   2071 ;sloc0                     Allocated with name '_main_sloc0_1_0'
                                   2072 ;buffer_size               Allocated with name '_main_buffer_size_65536_85'
                                   2073 ;node1                     Allocated with name '_main_node1_65537_89'
                                   2074 ;node2                     Allocated with name '_main_node2_65538_90'
                                   2075 ;wr                        Allocated with name '_main_wr_65539_91'
                                   2076 ;ch                        Allocated with name '_main_ch_131075_92'
                                   2077 ;cha                       Allocated with name '_main_cha_131076_95'
                                   2078 ;temp_buffer_size          Allocated to registers 
                                   2079 ;index_for_write           Allocated to registers 
                                   2080 ;------------------------------------------------------------
                                   2081 ;	syntax.c:264: void main(void)
                                   2082 ;	-----------------------------------------
                                   2083 ;	 function main
                                   2084 ;	-----------------------------------------
      003897                       2085 _main:
                                   2086 ;	syntax.c:270: do{
      003897                       2087 00108$:
                                   2088 ;	syntax.c:271: buffer_size  = get_buf_value("Enter buffer size between 32 and 4800 bytes (buffer size must be evenly divisible by 16): ", upper_default, LOWER_DEFAULT);
      003897 90 06 5E         [24] 2089 	mov	dptr,#_get_buf_value_PARM_2
      00389A 74 C0            [12] 2090 	mov	a,#0xc0
      00389C F0               [24] 2091 	movx	@dptr,a
      00389D 74 12            [12] 2092 	mov	a,#0x12
      00389F A3               [24] 2093 	inc	dptr
      0038A0 F0               [24] 2094 	movx	@dptr,a
      0038A1 90 06 60         [24] 2095 	mov	dptr,#_get_buf_value_PARM_3
      0038A4 74 20            [12] 2096 	mov	a,#0x20
      0038A6 F0               [24] 2097 	movx	@dptr,a
      0038A7 E4               [12] 2098 	clr	a
      0038A8 A3               [24] 2099 	inc	dptr
      0038A9 F0               [24] 2100 	movx	@dptr,a
      0038AA 90 51 37         [24] 2101 	mov	dptr,#___str_17
      0038AD 75 F0 80         [24] 2102 	mov	b,#0x80
      0038B0 12 30 C9         [24] 2103 	lcall	_get_buf_value
      0038B3 AE 82            [24] 2104 	mov	r6,dpl
      0038B5 AF 83            [24] 2105 	mov	r7,dph
                                   2106 ;	syntax.c:273: print_prompt("Buffer you entered is : 0x");
      0038B7 90 51 92         [24] 2107 	mov	dptr,#___str_18
      0038BA 75 F0 80         [24] 2108 	mov	b,#0x80
      0038BD C0 07            [24] 2109 	push	ar7
      0038BF C0 06            [24] 2110 	push	ar6
      0038C1 12 32 CE         [24] 2111 	lcall	_print_prompt
      0038C4 D0 06            [24] 2112 	pop	ar6
      0038C6 D0 07            [24] 2113 	pop	ar7
                                   2114 ;	syntax.c:274: printf("%d \n\r", buffer_size);
      0038C8 C0 07            [24] 2115 	push	ar7
      0038CA C0 06            [24] 2116 	push	ar6
      0038CC C0 06            [24] 2117 	push	ar6
      0038CE C0 07            [24] 2118 	push	ar7
      0038D0 74 B6            [12] 2119 	mov	a,#___str_14
      0038D2 C0 E0            [24] 2120 	push	acc
      0038D4 74 50            [12] 2121 	mov	a,#(___str_14 >> 8)
      0038D6 C0 E0            [24] 2122 	push	acc
      0038D8 74 80            [12] 2123 	mov	a,#0x80
      0038DA C0 E0            [24] 2124 	push	acc
      0038DC 12 44 CF         [24] 2125 	lcall	_printf
      0038DF E5 81            [12] 2126 	mov	a,sp
      0038E1 24 FB            [12] 2127 	add	a,#0xfb
      0038E3 F5 81            [12] 2128 	mov	sp,a
      0038E5 D0 06            [24] 2129 	pop	ar6
      0038E7 D0 07            [24] 2130 	pop	ar7
                                   2131 ;	syntax.c:276: if(buffer_size == -1) continue;
      0038E9 BE FF 06         [24] 2132 	cjne	r6,#0xff,00171$
      0038EC BF FF 03         [24] 2133 	cjne	r7,#0xff,00171$
      0038EF 02 39 9E         [24] 2134 	ljmp	00109$
      0038F2                       2135 00171$:
                                   2136 ;	syntax.c:278: pointer1 = (__xdata uint8_t *) malloc(buffer_size);
      0038F2 8E 82            [24] 2137 	mov	dpl,r6
      0038F4 8F 83            [24] 2138 	mov	dph,r7
      0038F6 C0 07            [24] 2139 	push	ar7
      0038F8 C0 06            [24] 2140 	push	ar6
      0038FA 12 40 E5         [24] 2141 	lcall	_malloc
      0038FD AC 82            [24] 2142 	mov	r4,dpl
      0038FF AD 83            [24] 2143 	mov	r5,dph
      003901 D0 06            [24] 2144 	pop	ar6
      003903 D0 07            [24] 2145 	pop	ar7
      003905 90 0F 11         [24] 2146 	mov	dptr,#_pointer1
      003908 EC               [12] 2147 	mov	a,r4
      003909 F0               [24] 2148 	movx	@dptr,a
      00390A ED               [12] 2149 	mov	a,r5
      00390B A3               [24] 2150 	inc	dptr
      00390C F0               [24] 2151 	movx	@dptr,a
                                   2152 ;	syntax.c:279: if (pointer1 == NULL){
      00390D EC               [12] 2153 	mov	a,r4
      00390E 4D               [12] 2154 	orl	a,r5
      00390F 70 13            [24] 2155 	jnz	00104$
                                   2156 ;	syntax.c:280: print_prompt("Failed to get malloc try to enter smaller size for buf 1\n\r");
      003911 90 51 AD         [24] 2157 	mov	dptr,#___str_19
      003914 75 F0 80         [24] 2158 	mov	b,#0x80
      003917 C0 07            [24] 2159 	push	ar7
      003919 C0 06            [24] 2160 	push	ar6
      00391B 12 32 CE         [24] 2161 	lcall	_print_prompt
      00391E D0 06            [24] 2162 	pop	ar6
      003920 D0 07            [24] 2163 	pop	ar7
                                   2164 ;	syntax.c:281: continue;
      003922 80 7A            [24] 2165 	sjmp	00109$
      003924                       2166 00104$:
                                   2167 ;	syntax.c:286: pointer2 = (__xdata uint8_t *) malloc(buffer_size);
      003924 8E 82            [24] 2168 	mov	dpl,r6
      003926 8F 83            [24] 2169 	mov	dph,r7
      003928 C0 07            [24] 2170 	push	ar7
      00392A C0 06            [24] 2171 	push	ar6
      00392C 12 40 E5         [24] 2172 	lcall	_malloc
      00392F AC 82            [24] 2173 	mov	r4,dpl
      003931 AD 83            [24] 2174 	mov	r5,dph
      003933 D0 06            [24] 2175 	pop	ar6
      003935 D0 07            [24] 2176 	pop	ar7
      003937 90 0F 13         [24] 2177 	mov	dptr,#_pointer2
      00393A EC               [12] 2178 	mov	a,r4
      00393B F0               [24] 2179 	movx	@dptr,a
      00393C ED               [12] 2180 	mov	a,r5
      00393D A3               [24] 2181 	inc	dptr
      00393E F0               [24] 2182 	movx	@dptr,a
                                   2183 ;	syntax.c:287: if (pointer2 == NULL){
      00393F EC               [12] 2184 	mov	a,r4
      003940 4D               [12] 2185 	orl	a,r5
      003941 70 26            [24] 2186 	jnz	00106$
                                   2187 ;	syntax.c:288: free(pointer1);
      003943 90 0F 11         [24] 2188 	mov	dptr,#_pointer1
      003946 E0               [24] 2189 	movx	a,@dptr
      003947 FA               [12] 2190 	mov	r2,a
      003948 A3               [24] 2191 	inc	dptr
      003949 E0               [24] 2192 	movx	a,@dptr
      00394A F9               [12] 2193 	mov	r1,a
      00394B 7B 00            [12] 2194 	mov	r3,#0x00
      00394D 8A 82            [24] 2195 	mov	dpl,r2
      00394F 89 83            [24] 2196 	mov	dph,r1
      003951 8B F0            [24] 2197 	mov	b,r3
      003953 C0 07            [24] 2198 	push	ar7
      003955 C0 06            [24] 2199 	push	ar6
      003957 12 3C 8F         [24] 2200 	lcall	_free
                                   2201 ;	syntax.c:290: print_prompt("Failed to get malloc try to enter smaller size for buf 2\n\r");
      00395A 90 51 E8         [24] 2202 	mov	dptr,#___str_20
      00395D 75 F0 80         [24] 2203 	mov	b,#0x80
      003960 12 32 CE         [24] 2204 	lcall	_print_prompt
      003963 D0 06            [24] 2205 	pop	ar6
      003965 D0 07            [24] 2206 	pop	ar7
                                   2207 ;	syntax.c:291: continue;
      003967 80 35            [24] 2208 	sjmp	00109$
      003969                       2209 00106$:
                                   2210 ;	syntax.c:295: printf("pointer_value : %p %p\n\r", pointer1, pointer2);
      003969 7B 00            [12] 2211 	mov	r3,#0x00
      00396B 90 0F 11         [24] 2212 	mov	dptr,#_pointer1
      00396E E0               [24] 2213 	movx	a,@dptr
      00396F F9               [12] 2214 	mov	r1,a
      003970 A3               [24] 2215 	inc	dptr
      003971 E0               [24] 2216 	movx	a,@dptr
      003972 F8               [12] 2217 	mov	r0,a
      003973 7A 00            [12] 2218 	mov	r2,#0x00
      003975 C0 07            [24] 2219 	push	ar7
      003977 C0 06            [24] 2220 	push	ar6
      003979 C0 04            [24] 2221 	push	ar4
      00397B C0 05            [24] 2222 	push	ar5
      00397D C0 03            [24] 2223 	push	ar3
      00397F C0 01            [24] 2224 	push	ar1
      003981 C0 00            [24] 2225 	push	ar0
      003983 C0 02            [24] 2226 	push	ar2
      003985 74 23            [12] 2227 	mov	a,#___str_21
      003987 C0 E0            [24] 2228 	push	acc
      003989 74 52            [12] 2229 	mov	a,#(___str_21 >> 8)
      00398B C0 E0            [24] 2230 	push	acc
      00398D 74 80            [12] 2231 	mov	a,#0x80
      00398F C0 E0            [24] 2232 	push	acc
      003991 12 44 CF         [24] 2233 	lcall	_printf
      003994 E5 81            [12] 2234 	mov	a,sp
      003996 24 F7            [12] 2235 	add	a,#0xf7
      003998 F5 81            [12] 2236 	mov	sp,a
      00399A D0 06            [24] 2237 	pop	ar6
      00399C D0 07            [24] 2238 	pop	ar7
      00399E                       2239 00109$:
                                   2240 ;	syntax.c:296: }while( pointer2 == NULL || pointer1 == NULL);
      00399E 90 0F 13         [24] 2241 	mov	dptr,#_pointer2
      0039A1 E0               [24] 2242 	movx	a,@dptr
      0039A2 F5 F0            [12] 2243 	mov	b,a
      0039A4 A3               [24] 2244 	inc	dptr
      0039A5 E0               [24] 2245 	movx	a,@dptr
      0039A6 45 F0            [12] 2246 	orl	a,b
      0039A8 70 03            [24] 2247 	jnz	00174$
      0039AA 02 38 97         [24] 2248 	ljmp	00108$
      0039AD                       2249 00174$:
      0039AD 90 0F 11         [24] 2250 	mov	dptr,#_pointer1
      0039B0 E0               [24] 2251 	movx	a,@dptr
      0039B1 F5 F0            [12] 2252 	mov	b,a
      0039B3 A3               [24] 2253 	inc	dptr
      0039B4 E0               [24] 2254 	movx	a,@dptr
      0039B5 45 F0            [12] 2255 	orl	a,b
      0039B7 70 03            [24] 2256 	jnz	00175$
      0039B9 02 38 97         [24] 2257 	ljmp	00108$
      0039BC                       2258 00175$:
                                   2259 ;	syntax.c:298: index_of_buffers = 0;
      0039BC 90 0F 0B         [24] 2260 	mov	dptr,#_index_of_buffers
      0039BF E4               [12] 2261 	clr	a
      0039C0 F0               [24] 2262 	movx	@dptr,a
                                   2263 ;	syntax.c:300: node_t node1 = { index_of_buffers, pointer1, buffer_size};
      0039C1 90 06 82         [24] 2264 	mov	dptr,#_main_node1_65537_89
      0039C4 F0               [24] 2265 	movx	@dptr,a
      0039C5 90 0F 11         [24] 2266 	mov	dptr,#_pointer1
      0039C8 E0               [24] 2267 	movx	a,@dptr
      0039C9 FC               [12] 2268 	mov	r4,a
      0039CA A3               [24] 2269 	inc	dptr
      0039CB E0               [24] 2270 	movx	a,@dptr
      0039CC FD               [12] 2271 	mov	r5,a
      0039CD 7B 00            [12] 2272 	mov	r3,#0x00
      0039CF 90 06 83         [24] 2273 	mov	dptr,#(_main_node1_65537_89 + 0x0001)
      0039D2 EC               [12] 2274 	mov	a,r4
      0039D3 F0               [24] 2275 	movx	@dptr,a
      0039D4 ED               [12] 2276 	mov	a,r5
      0039D5 A3               [24] 2277 	inc	dptr
      0039D6 F0               [24] 2278 	movx	@dptr,a
      0039D7 EB               [12] 2279 	mov	a,r3
      0039D8 A3               [24] 2280 	inc	dptr
      0039D9 F0               [24] 2281 	movx	@dptr,a
      0039DA 90 06 86         [24] 2282 	mov	dptr,#(_main_node1_65537_89 + 0x0004)
      0039DD EE               [12] 2283 	mov	a,r6
      0039DE F0               [24] 2284 	movx	@dptr,a
      0039DF EF               [12] 2285 	mov	a,r7
      0039E0 A3               [24] 2286 	inc	dptr
      0039E1 F0               [24] 2287 	movx	@dptr,a
                                   2288 ;	syntax.c:301: array_for_nodes[index_of_buffers] = node1;
      0039E2 90 0F 0B         [24] 2289 	mov	dptr,#_index_of_buffers
      0039E5 E0               [24] 2290 	movx	a,@dptr
      0039E6 75 F0 06         [24] 2291 	mov	b,#0x06
      0039E9 A4               [48] 2292 	mul	ab
      0039EA 24 04            [12] 2293 	add	a,#_array_for_nodes
      0039EC FC               [12] 2294 	mov	r4,a
      0039ED 74 04            [12] 2295 	mov	a,#(_array_for_nodes >> 8)
      0039EF 35 F0            [12] 2296 	addc	a,b
      0039F1 FD               [12] 2297 	mov	r5,a
      0039F2 7B 00            [12] 2298 	mov	r3,#0x00
      0039F4 90 0E AD         [24] 2299 	mov	dptr,#___memcpy_PARM_2
      0039F7 74 82            [12] 2300 	mov	a,#_main_node1_65537_89
      0039F9 F0               [24] 2301 	movx	@dptr,a
      0039FA 74 06            [12] 2302 	mov	a,#(_main_node1_65537_89 >> 8)
      0039FC A3               [24] 2303 	inc	dptr
      0039FD F0               [24] 2304 	movx	@dptr,a
      0039FE E4               [12] 2305 	clr	a
      0039FF A3               [24] 2306 	inc	dptr
      003A00 F0               [24] 2307 	movx	@dptr,a
      003A01 90 0E B0         [24] 2308 	mov	dptr,#___memcpy_PARM_3
      003A04 74 06            [12] 2309 	mov	a,#0x06
      003A06 F0               [24] 2310 	movx	@dptr,a
      003A07 E4               [12] 2311 	clr	a
      003A08 A3               [24] 2312 	inc	dptr
      003A09 F0               [24] 2313 	movx	@dptr,a
      003A0A 8C 82            [24] 2314 	mov	dpl,r4
      003A0C 8D 83            [24] 2315 	mov	dph,r5
      003A0E 8B F0            [24] 2316 	mov	b,r3
      003A10 C0 07            [24] 2317 	push	ar7
      003A12 C0 06            [24] 2318 	push	ar6
      003A14 12 40 1A         [24] 2319 	lcall	___memcpy
                                   2320 ;	syntax.c:302: printf("pointer location %p, size %d\n\r", array_for_nodes[index_of_buffers].data_pointer, array_for_nodes[index_of_buffers].size);
      003A17 90 0F 0B         [24] 2321 	mov	dptr,#_index_of_buffers
      003A1A E0               [24] 2322 	movx	a,@dptr
      003A1B 75 F0 06         [24] 2323 	mov	b,#0x06
      003A1E A4               [48] 2324 	mul	ab
      003A1F 24 04            [12] 2325 	add	a,#_array_for_nodes
      003A21 FC               [12] 2326 	mov	r4,a
      003A22 74 04            [12] 2327 	mov	a,#(_array_for_nodes >> 8)
      003A24 35 F0            [12] 2328 	addc	a,b
      003A26 FD               [12] 2329 	mov	r5,a
      003A27 8C 82            [24] 2330 	mov	dpl,r4
      003A29 8D 83            [24] 2331 	mov	dph,r5
      003A2B A3               [24] 2332 	inc	dptr
      003A2C A3               [24] 2333 	inc	dptr
      003A2D A3               [24] 2334 	inc	dptr
      003A2E A3               [24] 2335 	inc	dptr
      003A2F E0               [24] 2336 	movx	a,@dptr
      003A30 FA               [12] 2337 	mov	r2,a
      003A31 A3               [24] 2338 	inc	dptr
      003A32 E0               [24] 2339 	movx	a,@dptr
      003A33 FB               [12] 2340 	mov	r3,a
      003A34 8C 82            [24] 2341 	mov	dpl,r4
      003A36 8D 83            [24] 2342 	mov	dph,r5
      003A38 A3               [24] 2343 	inc	dptr
      003A39 E0               [24] 2344 	movx	a,@dptr
      003A3A F9               [12] 2345 	mov	r1,a
      003A3B A3               [24] 2346 	inc	dptr
      003A3C E0               [24] 2347 	movx	a,@dptr
      003A3D FC               [12] 2348 	mov	r4,a
      003A3E A3               [24] 2349 	inc	dptr
      003A3F E0               [24] 2350 	movx	a,@dptr
      003A40 FD               [12] 2351 	mov	r5,a
      003A41 C0 02            [24] 2352 	push	ar2
      003A43 C0 03            [24] 2353 	push	ar3
      003A45 C0 01            [24] 2354 	push	ar1
      003A47 C0 04            [24] 2355 	push	ar4
      003A49 C0 05            [24] 2356 	push	ar5
      003A4B 74 3B            [12] 2357 	mov	a,#___str_22
      003A4D C0 E0            [24] 2358 	push	acc
      003A4F 74 52            [12] 2359 	mov	a,#(___str_22 >> 8)
      003A51 C0 E0            [24] 2360 	push	acc
      003A53 74 80            [12] 2361 	mov	a,#0x80
      003A55 C0 E0            [24] 2362 	push	acc
      003A57 12 44 CF         [24] 2363 	lcall	_printf
      003A5A E5 81            [12] 2364 	mov	a,sp
      003A5C 24 F8            [12] 2365 	add	a,#0xf8
      003A5E F5 81            [12] 2366 	mov	sp,a
      003A60 D0 06            [24] 2367 	pop	ar6
      003A62 D0 07            [24] 2368 	pop	ar7
                                   2369 ;	syntax.c:303: index_of_buffers++;
      003A64 90 0F 0B         [24] 2370 	mov	dptr,#_index_of_buffers
      003A67 E0               [24] 2371 	movx	a,@dptr
      003A68 24 01            [12] 2372 	add	a,#0x01
      003A6A F0               [24] 2373 	movx	@dptr,a
                                   2374 ;	syntax.c:305: node_t node2 = { index_of_buffers, pointer2, buffer_size};
      003A6B E0               [24] 2375 	movx	a,@dptr
      003A6C 90 06 88         [24] 2376 	mov	dptr,#_main_node2_65538_90
      003A6F F0               [24] 2377 	movx	@dptr,a
      003A70 90 0F 13         [24] 2378 	mov	dptr,#_pointer2
      003A73 E0               [24] 2379 	movx	a,@dptr
      003A74 FC               [12] 2380 	mov	r4,a
      003A75 A3               [24] 2381 	inc	dptr
      003A76 E0               [24] 2382 	movx	a,@dptr
      003A77 FD               [12] 2383 	mov	r5,a
      003A78 7B 00            [12] 2384 	mov	r3,#0x00
      003A7A 90 06 89         [24] 2385 	mov	dptr,#(_main_node2_65538_90 + 0x0001)
      003A7D EC               [12] 2386 	mov	a,r4
      003A7E F0               [24] 2387 	movx	@dptr,a
      003A7F ED               [12] 2388 	mov	a,r5
      003A80 A3               [24] 2389 	inc	dptr
      003A81 F0               [24] 2390 	movx	@dptr,a
      003A82 EB               [12] 2391 	mov	a,r3
      003A83 A3               [24] 2392 	inc	dptr
      003A84 F0               [24] 2393 	movx	@dptr,a
      003A85 90 06 8C         [24] 2394 	mov	dptr,#(_main_node2_65538_90 + 0x0004)
      003A88 EE               [12] 2395 	mov	a,r6
      003A89 F0               [24] 2396 	movx	@dptr,a
      003A8A EF               [12] 2397 	mov	a,r7
      003A8B A3               [24] 2398 	inc	dptr
      003A8C F0               [24] 2399 	movx	@dptr,a
                                   2400 ;	syntax.c:306: array_for_nodes[index_of_buffers] = node2;
      003A8D 90 0F 0B         [24] 2401 	mov	dptr,#_index_of_buffers
      003A90 E0               [24] 2402 	movx	a,@dptr
      003A91 75 F0 06         [24] 2403 	mov	b,#0x06
      003A94 A4               [48] 2404 	mul	ab
      003A95 24 04            [12] 2405 	add	a,#_array_for_nodes
      003A97 FE               [12] 2406 	mov	r6,a
      003A98 74 04            [12] 2407 	mov	a,#(_array_for_nodes >> 8)
      003A9A 35 F0            [12] 2408 	addc	a,b
      003A9C FF               [12] 2409 	mov	r7,a
      003A9D 7D 00            [12] 2410 	mov	r5,#0x00
      003A9F 90 0E AD         [24] 2411 	mov	dptr,#___memcpy_PARM_2
      003AA2 74 88            [12] 2412 	mov	a,#_main_node2_65538_90
      003AA4 F0               [24] 2413 	movx	@dptr,a
      003AA5 74 06            [12] 2414 	mov	a,#(_main_node2_65538_90 >> 8)
      003AA7 A3               [24] 2415 	inc	dptr
      003AA8 F0               [24] 2416 	movx	@dptr,a
      003AA9 E4               [12] 2417 	clr	a
      003AAA A3               [24] 2418 	inc	dptr
      003AAB F0               [24] 2419 	movx	@dptr,a
      003AAC 90 0E B0         [24] 2420 	mov	dptr,#___memcpy_PARM_3
      003AAF 74 06            [12] 2421 	mov	a,#0x06
      003AB1 F0               [24] 2422 	movx	@dptr,a
      003AB2 E4               [12] 2423 	clr	a
      003AB3 A3               [24] 2424 	inc	dptr
      003AB4 F0               [24] 2425 	movx	@dptr,a
      003AB5 8E 82            [24] 2426 	mov	dpl,r6
      003AB7 8F 83            [24] 2427 	mov	dph,r7
      003AB9 8D F0            [24] 2428 	mov	b,r5
      003ABB 12 40 1A         [24] 2429 	lcall	___memcpy
                                   2430 ;	syntax.c:307: printf("pointer location %p, size %d\n\r", array_for_nodes[index_of_buffers].data_pointer, array_for_nodes[index_of_buffers].size);
      003ABE 90 0F 0B         [24] 2431 	mov	dptr,#_index_of_buffers
      003AC1 E0               [24] 2432 	movx	a,@dptr
      003AC2 75 F0 06         [24] 2433 	mov	b,#0x06
      003AC5 A4               [48] 2434 	mul	ab
      003AC6 24 04            [12] 2435 	add	a,#_array_for_nodes
      003AC8 FE               [12] 2436 	mov	r6,a
      003AC9 74 04            [12] 2437 	mov	a,#(_array_for_nodes >> 8)
      003ACB 35 F0            [12] 2438 	addc	a,b
      003ACD FF               [12] 2439 	mov	r7,a
      003ACE 8E 82            [24] 2440 	mov	dpl,r6
      003AD0 8F 83            [24] 2441 	mov	dph,r7
      003AD2 A3               [24] 2442 	inc	dptr
      003AD3 A3               [24] 2443 	inc	dptr
      003AD4 A3               [24] 2444 	inc	dptr
      003AD5 A3               [24] 2445 	inc	dptr
      003AD6 E0               [24] 2446 	movx	a,@dptr
      003AD7 FC               [12] 2447 	mov	r4,a
      003AD8 A3               [24] 2448 	inc	dptr
      003AD9 E0               [24] 2449 	movx	a,@dptr
      003ADA FD               [12] 2450 	mov	r5,a
      003ADB 8E 82            [24] 2451 	mov	dpl,r6
      003ADD 8F 83            [24] 2452 	mov	dph,r7
      003ADF A3               [24] 2453 	inc	dptr
      003AE0 E0               [24] 2454 	movx	a,@dptr
      003AE1 FB               [12] 2455 	mov	r3,a
      003AE2 A3               [24] 2456 	inc	dptr
      003AE3 E0               [24] 2457 	movx	a,@dptr
      003AE4 FE               [12] 2458 	mov	r6,a
      003AE5 A3               [24] 2459 	inc	dptr
      003AE6 E0               [24] 2460 	movx	a,@dptr
      003AE7 FF               [12] 2461 	mov	r7,a
      003AE8 C0 04            [24] 2462 	push	ar4
      003AEA C0 05            [24] 2463 	push	ar5
      003AEC C0 03            [24] 2464 	push	ar3
      003AEE C0 06            [24] 2465 	push	ar6
      003AF0 C0 07            [24] 2466 	push	ar7
      003AF2 74 3B            [12] 2467 	mov	a,#___str_22
      003AF4 C0 E0            [24] 2468 	push	acc
      003AF6 74 52            [12] 2469 	mov	a,#(___str_22 >> 8)
      003AF8 C0 E0            [24] 2470 	push	acc
      003AFA 74 80            [12] 2471 	mov	a,#0x80
      003AFC C0 E0            [24] 2472 	push	acc
      003AFE 12 44 CF         [24] 2473 	lcall	_printf
      003B01 E5 81            [12] 2474 	mov	a,sp
      003B03 24 F8            [12] 2475 	add	a,#0xf8
      003B05 F5 81            [12] 2476 	mov	sp,a
                                   2477 ;	syntax.c:308: index_of_buffers++;
      003B07 90 0F 0B         [24] 2478 	mov	dptr,#_index_of_buffers
      003B0A E0               [24] 2479 	movx	a,@dptr
      003B0B 24 01            [12] 2480 	add	a,#0x01
      003B0D F0               [24] 2481 	movx	@dptr,a
                                   2482 ;	syntax.c:310: print_prompt("Enter Uppercase char to save in buffer 0: \n\r");
      003B0E 90 52 5A         [24] 2483 	mov	dptr,#___str_23
      003B11 75 F0 80         [24] 2484 	mov	b,#0x80
      003B14 12 32 CE         [24] 2485 	lcall	_print_prompt
                                   2486 ;	syntax.c:312: __idata int temp_buffer_size = array_for_nodes[0].size;
      003B17 90 04 08         [24] 2487 	mov	dptr,#(_array_for_nodes + 0x0004)
      003B1A E0               [24] 2488 	movx	a,@dptr
      003B1B FE               [12] 2489 	mov	r6,a
      003B1C A3               [24] 2490 	inc	dptr
      003B1D E0               [24] 2491 	movx	a,@dptr
      003B1E FF               [12] 2492 	mov	r7,a
                                   2493 ;	syntax.c:315: uint8_t * wr = array_for_nodes[0].data_pointer;
      003B1F 90 04 05         [24] 2494 	mov	dptr,#(_array_for_nodes + 0x0001)
      003B22 E0               [24] 2495 	movx	a,@dptr
      003B23 FB               [12] 2496 	mov	r3,a
      003B24 A3               [24] 2497 	inc	dptr
      003B25 E0               [24] 2498 	movx	a,@dptr
      003B26 FC               [12] 2499 	mov	r4,a
      003B27 A3               [24] 2500 	inc	dptr
      003B28 E0               [24] 2501 	movx	a,@dptr
      003B29 FD               [12] 2502 	mov	r5,a
                                   2503 ;	syntax.c:317: do{
      003B2A                       2504 00114$:
                                   2505 ;	syntax.c:318: int ch = getchar();
      003B2A C0 07            [24] 2506 	push	ar7
      003B2C C0 06            [24] 2507 	push	ar6
      003B2E C0 05            [24] 2508 	push	ar5
      003B30 C0 04            [24] 2509 	push	ar4
      003B32 C0 03            [24] 2510 	push	ar3
      003B34 12 30 B4         [24] 2511 	lcall	_getchar
                                   2512 ;	syntax.c:319: putchar(ch);
      003B37 A9 82            [24] 2513 	mov	r1,dpl
      003B39 AA 83            [24] 2514 	mov  r2,dph
      003B3B C0 02            [24] 2515 	push	ar2
      003B3D C0 01            [24] 2516 	push	ar1
      003B3F 12 30 97         [24] 2517 	lcall	_putchar
      003B42 D0 01            [24] 2518 	pop	ar1
      003B44 D0 02            [24] 2519 	pop	ar2
      003B46 D0 03            [24] 2520 	pop	ar3
      003B48 D0 04            [24] 2521 	pop	ar4
      003B4A D0 05            [24] 2522 	pop	ar5
      003B4C D0 06            [24] 2523 	pop	ar6
      003B4E D0 07            [24] 2524 	pop	ar7
                                   2525 ;	syntax.c:320: if(ch < 65 || ch > 90) {
      003B50 C3               [12] 2526 	clr	c
      003B51 E9               [12] 2527 	mov	a,r1
      003B52 94 41            [12] 2528 	subb	a,#0x41
      003B54 EA               [12] 2529 	mov	a,r2
      003B55 64 80            [12] 2530 	xrl	a,#0x80
      003B57 94 80            [12] 2531 	subb	a,#0x80
      003B59 40 0E            [24] 2532 	jc	00111$
      003B5B 74 5A            [12] 2533 	mov	a,#0x5a
      003B5D 99               [12] 2534 	subb	a,r1
      003B5E 74 80            [12] 2535 	mov	a,#(0x00 ^ 0x80)
      003B60 8A F0            [24] 2536 	mov	b,r2
      003B62 63 F0 80         [24] 2537 	xrl	b,#0x80
      003B65 95 F0            [12] 2538 	subb	a,b
      003B67 50 3A            [24] 2539 	jnc	00112$
      003B69                       2540 00111$:
                                   2541 ;	syntax.c:321: total_number_of_commands+=1;
      003B69 90 0F 0C         [24] 2542 	mov	dptr,#_total_number_of_commands
      003B6C E0               [24] 2543 	movx	a,@dptr
      003B6D 04               [12] 2544 	inc	a
      003B6E F0               [24] 2545 	movx	@dptr,a
                                   2546 ;	syntax.c:322: recent_commands+=1;
      003B6F 90 0F 0E         [24] 2547 	mov	dptr,#_recent_commands
      003B72 E0               [24] 2548 	movx	a,@dptr
      003B73 04               [12] 2549 	inc	a
      003B74 F0               [24] 2550 	movx	@dptr,a
                                   2551 ;	syntax.c:323: print_prompt("Command recived ! \n\r");
      003B75 90 52 87         [24] 2552 	mov	dptr,#___str_24
      003B78 75 F0 80         [24] 2553 	mov	b,#0x80
      003B7B C0 07            [24] 2554 	push	ar7
      003B7D C0 06            [24] 2555 	push	ar6
      003B7F C0 05            [24] 2556 	push	ar5
      003B81 C0 04            [24] 2557 	push	ar4
      003B83 C0 03            [24] 2558 	push	ar3
      003B85 C0 02            [24] 2559 	push	ar2
      003B87 C0 01            [24] 2560 	push	ar1
      003B89 12 32 CE         [24] 2561 	lcall	_print_prompt
      003B8C D0 01            [24] 2562 	pop	ar1
      003B8E D0 02            [24] 2563 	pop	ar2
                                   2564 ;	syntax.c:324: get_command(ch);
      003B90 89 82            [24] 2565 	mov	dpl,r1
      003B92 8A 83            [24] 2566 	mov	dph,r2
      003B94 12 33 28         [24] 2567 	lcall	_get_command
      003B97 D0 03            [24] 2568 	pop	ar3
      003B99 D0 04            [24] 2569 	pop	ar4
      003B9B D0 05            [24] 2570 	pop	ar5
      003B9D D0 06            [24] 2571 	pop	ar6
      003B9F D0 07            [24] 2572 	pop	ar7
                                   2573 ;	syntax.c:325: continue;
      003BA1 80 68            [24] 2574 	sjmp	00115$
      003BA3                       2575 00112$:
                                   2576 ;	syntax.c:327: total_number_of_storage = total_number_of_storage + 1;
      003BA3 90 0F 0D         [24] 2577 	mov	dptr,#_total_number_of_storage
      003BA6 E0               [24] 2578 	movx	a,@dptr
      003BA7 04               [12] 2579 	inc	a
      003BA8 F0               [24] 2580 	movx	@dptr,a
                                   2581 ;	syntax.c:328: recent_storage = recent_storage + 1;
      003BA9 90 0F 0F         [24] 2582 	mov	dptr,#_recent_storage
      003BAC E0               [24] 2583 	movx	a,@dptr
      003BAD 04               [12] 2584 	inc	a
      003BAE F0               [24] 2585 	movx	@dptr,a
                                   2586 ;	syntax.c:330: *wr = ch;
      003BAF 8B 82            [24] 2587 	mov	dpl,r3
      003BB1 8C 83            [24] 2588 	mov	dph,r4
      003BB3 8D F0            [24] 2589 	mov	b,r5
      003BB5 E9               [12] 2590 	mov	a,r1
      003BB6 12 40 8E         [24] 2591 	lcall	__gptrput
      003BB9 A3               [24] 2592 	inc	dptr
      003BBA AB 82            [24] 2593 	mov	r3,dpl
      003BBC AC 83            [24] 2594 	mov	r4,dph
                                   2595 ;	syntax.c:331: wr++;
                                   2596 ;	syntax.c:332: printf("total storage %d recent storage %d pointer %p \n\r", total_number_of_storage, recent_storage, wr);
      003BBE 90 0F 0F         [24] 2597 	mov	dptr,#_recent_storage
      003BC1 E0               [24] 2598 	movx	a,@dptr
      003BC2 FA               [12] 2599 	mov	r2,a
      003BC3 8A 0D            [24] 2600 	mov	_main_sloc0_1_0,r2
      003BC5 75 0E 00         [24] 2601 	mov	(_main_sloc0_1_0 + 1),#0x00
      003BC8 90 0F 0D         [24] 2602 	mov	dptr,#_total_number_of_storage
      003BCB E0               [24] 2603 	movx	a,@dptr
      003BCC F8               [12] 2604 	mov	r0,a
      003BCD 7A 00            [12] 2605 	mov	r2,#0x00
      003BCF C0 07            [24] 2606 	push	ar7
      003BD1 C0 06            [24] 2607 	push	ar6
      003BD3 C0 05            [24] 2608 	push	ar5
      003BD5 C0 04            [24] 2609 	push	ar4
      003BD7 C0 03            [24] 2610 	push	ar3
      003BD9 C0 03            [24] 2611 	push	ar3
      003BDB C0 04            [24] 2612 	push	ar4
      003BDD C0 05            [24] 2613 	push	ar5
      003BDF C0 0D            [24] 2614 	push	_main_sloc0_1_0
      003BE1 C0 0E            [24] 2615 	push	(_main_sloc0_1_0 + 1)
      003BE3 C0 00            [24] 2616 	push	ar0
      003BE5 C0 02            [24] 2617 	push	ar2
      003BE7 74 9C            [12] 2618 	mov	a,#___str_25
      003BE9 C0 E0            [24] 2619 	push	acc
      003BEB 74 52            [12] 2620 	mov	a,#(___str_25 >> 8)
      003BED C0 E0            [24] 2621 	push	acc
      003BEF 74 80            [12] 2622 	mov	a,#0x80
      003BF1 C0 E0            [24] 2623 	push	acc
      003BF3 12 44 CF         [24] 2624 	lcall	_printf
      003BF6 E5 81            [12] 2625 	mov	a,sp
      003BF8 24 F6            [12] 2626 	add	a,#0xf6
      003BFA F5 81            [12] 2627 	mov	sp,a
      003BFC D0 03            [24] 2628 	pop	ar3
      003BFE D0 04            [24] 2629 	pop	ar4
      003C00 D0 05            [24] 2630 	pop	ar5
      003C02 D0 06            [24] 2631 	pop	ar6
      003C04 D0 07            [24] 2632 	pop	ar7
                                   2633 ;	syntax.c:333: temp_buffer_size -= 1;
      003C06 1E               [12] 2634 	dec	r6
      003C07 BE FF 01         [24] 2635 	cjne	r6,#0xff,00178$
      003C0A 1F               [12] 2636 	dec	r7
      003C0B                       2637 00178$:
                                   2638 ;	syntax.c:334: index_for_write += 1;
      003C0B                       2639 00115$:
                                   2640 ;	syntax.c:335: }while(temp_buffer_size>0);
      003C0B C3               [12] 2641 	clr	c
      003C0C E4               [12] 2642 	clr	a
      003C0D 9E               [12] 2643 	subb	a,r6
      003C0E 74 80            [12] 2644 	mov	a,#(0x00 ^ 0x80)
      003C10 8F F0            [24] 2645 	mov	b,r7
      003C12 63 F0 80         [24] 2646 	xrl	b,#0x80
      003C15 95 F0            [12] 2647 	subb	a,b
      003C17 50 03            [24] 2648 	jnc	00179$
      003C19 02 3B 2A         [24] 2649 	ljmp	00114$
      003C1C                       2650 00179$:
                                   2651 ;	syntax.c:336: printf("buffer0 got full nothing to write !");
      003C1C 74 CD            [12] 2652 	mov	a,#___str_26
      003C1E C0 E0            [24] 2653 	push	acc
      003C20 74 52            [12] 2654 	mov	a,#(___str_26 >> 8)
      003C22 C0 E0            [24] 2655 	push	acc
      003C24 74 80            [12] 2656 	mov	a,#0x80
      003C26 C0 E0            [24] 2657 	push	acc
      003C28 12 44 CF         [24] 2658 	lcall	_printf
      003C2B 15 81            [12] 2659 	dec	sp
      003C2D 15 81            [12] 2660 	dec	sp
      003C2F 15 81            [12] 2661 	dec	sp
                                   2662 ;	syntax.c:341: while(1)
      003C31                       2663 00122$:
                                   2664 ;	syntax.c:343: print_prompt("Please enter An command (+) (-) (?) (=) (@): \n");
      003C31 90 52 F1         [24] 2665 	mov	dptr,#___str_27
      003C34 75 F0 80         [24] 2666 	mov	b,#0x80
      003C37 12 32 CE         [24] 2667 	lcall	_print_prompt
                                   2668 ;	syntax.c:344: int cha = getchar();
      003C3A 12 30 B4         [24] 2669 	lcall	_getchar
      003C3D AE 82            [24] 2670 	mov	r6,dpl
      003C3F AF 83            [24] 2671 	mov	r7,dph
                                   2672 ;	syntax.c:345: if(cha < 65 || cha > 90) {
      003C41 C3               [12] 2673 	clr	c
      003C42 EE               [12] 2674 	mov	a,r6
      003C43 94 41            [12] 2675 	subb	a,#0x41
      003C45 EF               [12] 2676 	mov	a,r7
      003C46 64 80            [12] 2677 	xrl	a,#0x80
      003C48 94 80            [12] 2678 	subb	a,#0x80
      003C4A 40 0E            [24] 2679 	jc	00117$
      003C4C 74 5A            [12] 2680 	mov	a,#0x5a
      003C4E 9E               [12] 2681 	subb	a,r6
      003C4F 74 80            [12] 2682 	mov	a,#(0x00 ^ 0x80)
      003C51 8F F0            [24] 2683 	mov	b,r7
      003C53 63 F0 80         [24] 2684 	xrl	b,#0x80
      003C56 95 F0            [12] 2685 	subb	a,b
      003C58 50 1F            [24] 2686 	jnc	00118$
      003C5A                       2687 00117$:
                                   2688 ;	syntax.c:346: total_number_of_commands+=1;
      003C5A 90 0F 0C         [24] 2689 	mov	dptr,#_total_number_of_commands
      003C5D E0               [24] 2690 	movx	a,@dptr
      003C5E 04               [12] 2691 	inc	a
      003C5F F0               [24] 2692 	movx	@dptr,a
                                   2693 ;	syntax.c:347: recent_commands+=1;
      003C60 90 0F 0E         [24] 2694 	mov	dptr,#_recent_commands
      003C63 E0               [24] 2695 	movx	a,@dptr
      003C64 04               [12] 2696 	inc	a
      003C65 F0               [24] 2697 	movx	@dptr,a
                                   2698 ;	syntax.c:348: print_prompt("Command recived ! \n\r");
      003C66 90 52 87         [24] 2699 	mov	dptr,#___str_24
      003C69 75 F0 80         [24] 2700 	mov	b,#0x80
      003C6C C0 07            [24] 2701 	push	ar7
      003C6E C0 06            [24] 2702 	push	ar6
      003C70 12 32 CE         [24] 2703 	lcall	_print_prompt
      003C73 D0 06            [24] 2704 	pop	ar6
      003C75 D0 07            [24] 2705 	pop	ar7
      003C77 80 0D            [24] 2706 	sjmp	00119$
      003C79                       2707 00118$:
                                   2708 ;	syntax.c:351: total_number_of_storage = total_number_of_storage + 1;
      003C79 90 0F 0D         [24] 2709 	mov	dptr,#_total_number_of_storage
      003C7C E0               [24] 2710 	movx	a,@dptr
      003C7D 04               [12] 2711 	inc	a
      003C7E F0               [24] 2712 	movx	@dptr,a
                                   2713 ;	syntax.c:352: recent_storage = recent_storage + 1;
      003C7F 90 0F 0F         [24] 2714 	mov	dptr,#_recent_storage
      003C82 E0               [24] 2715 	movx	a,@dptr
      003C83 FD               [12] 2716 	mov	r5,a
      003C84 04               [12] 2717 	inc	a
      003C85 F0               [24] 2718 	movx	@dptr,a
      003C86                       2719 00119$:
                                   2720 ;	syntax.c:355: get_command(cha);
      003C86 8E 82            [24] 2721 	mov	dpl,r6
      003C88 8F 83            [24] 2722 	mov	dph,r7
      003C8A 12 33 28         [24] 2723 	lcall	_get_command
                                   2724 ;	syntax.c:362: }
      003C8D 80 A2            [24] 2725 	sjmp	00122$
                                   2726 	.area CSEG    (CODE)
                                   2727 	.area CONST   (CODE)
                                   2728 	.area CONST   (CODE)
      004F11                       2729 ___str_0:
      004F11 0A                    2730 	.db 0x0a
      004F12 45 6E 74 65 72 20 76  2731 	.ascii "Enter valid input"
             61 6C 69 64 20 69 6E
             70 75 74
      004F23 0A                    2732 	.db 0x0a
      004F24 00                    2733 	.db 0x00
                                   2734 	.area CSEG    (CODE)
                                   2735 	.area CONST   (CODE)
      004F25                       2736 ___str_1:
      004F25 54 6F 74 61 6C 20 6E  2737 	.ascii "Total number of commands from the start: "
             75 6D 62 65 72 20 6F
             66 20 63 6F 6D 6D 61
             6E 64 73 20 66 72 6F
             6D 20 74 68 65 20 73
             74 61 72 74 3A 20
      004F4E 00                    2738 	.db 0x00
                                   2739 	.area CSEG    (CODE)
                                   2740 	.area CONST   (CODE)
      004F4F                       2741 ___str_2:
      004F4F 25 64                 2742 	.ascii "%d"
      004F51 00                    2743 	.db 0x00
                                   2744 	.area CSEG    (CODE)
                                   2745 	.area CONST   (CODE)
      004F52                       2746 ___str_3:
      004F52 0A                    2747 	.db 0x0a
      004F53 0D                    2748 	.db 0x0d
      004F54 00                    2749 	.db 0x00
                                   2750 	.area CSEG    (CODE)
                                   2751 	.area CONST   (CODE)
      004F55                       2752 ___str_4:
      004F55 52 65 63 65 6E 74 20  2753 	.ascii "Recent number of commands from the last ?: "
             6E 75 6D 62 65 72 20
             6F 66 20 63 6F 6D 6D
             61 6E 64 73 20 66 72
             6F 6D 20 74 68 65 20
             6C 61 73 74 20 3F 3A
             20
      004F80 00                    2754 	.db 0x00
                                   2755 	.area CSEG    (CODE)
                                   2756 	.area CONST   (CODE)
      004F81                       2757 ___str_5:
      004F81 54 6F 74 61 6C 20 6E  2758 	.ascii "Total number of storage chars from the start: "
             75 6D 62 65 72 20 6F
             66 20 73 74 6F 72 61
             67 65 20 63 68 61 72
             73 20 66 72 6F 6D 20
             74 68 65 20 73 74 61
             72 74 3A 20
      004FAF 00                    2759 	.db 0x00
                                   2760 	.area CSEG    (CODE)
                                   2761 	.area CONST   (CODE)
      004FB0                       2762 ___str_6:
      004FB0 52 65 63 65 6E 74 20  2763 	.ascii "Recent number of storage chars from the last ?: "
             6E 75 6D 62 65 72 20
             6F 66 20 73 74 6F 72
             61 67 65 20 63 68 61
             72 73 20 66 72 6F 6D
             20 74 68 65 20 6C 61
             73 74 20 3F 3A 20
      004FE0 00                    2764 	.db 0x00
                                   2765 	.area CSEG    (CODE)
                                   2766 	.area CONST   (CODE)
      004FE1                       2767 ___str_7:
      004FE1 49 6E 64 65 78 3A 20  2768 	.ascii "Index: %d , starting address of Pointer: %p  Ending Address "
             25 64 20 2C 20 73 74
             61 72 74 69 6E 67 20
             61 64 64 72 65 73 73
             20 6F 66 20 50 6F 69
             6E 74 65 72 3A 20 25
             70 20 20 45 6E 64 69
             6E 67 20 41 64 64 72
             65 73 73 20
      00501D 6F 66 20 74 68 65 20  2769 	.ascii "of the pointer %p size of array: %d"
             70 6F 69 6E 74 65 72
             20 25 70 20 73 69 7A
             65 20 6F 66 20 61 72
             72 61 79 3A 20 25 64
      005040 0A                    2770 	.db 0x0a
      005041 0D                    2771 	.db 0x0d
      005042 00                    2772 	.db 0x00
                                   2773 	.area CSEG    (CODE)
                                   2774 	.area CONST   (CODE)
      005043                       2775 ___str_8:
      005043 2E 2E 2E 2E 2E 2E 2E  2776 	.ascii "....... Dumping Buffer0 ......"
             20 44 75 6D 70 69 6E
             67 20 42 75 66 66 65
             72 30 20 2E 2E 2E 2E
             2E 2E
      005061 0D                    2777 	.db 0x0d
      005062 0A                    2778 	.db 0x0a
      005063 00                    2779 	.db 0x00
                                   2780 	.area CSEG    (CODE)
                                   2781 	.area CONST   (CODE)
      005064                       2782 ___str_9:
      005064 25 70 3A 20           2783 	.ascii "%p: "
      005068 00                    2784 	.db 0x00
                                   2785 	.area CSEG    (CODE)
                                   2786 	.area CONST   (CODE)
      005069                       2787 ___str_10:
      005069 25 64 20              2788 	.ascii "%d "
      00506C 00                    2789 	.db 0x00
                                   2790 	.area CSEG    (CODE)
                                   2791 	.area CONST   (CODE)
      00506D                       2792 ___str_11:
      00506D 0D                    2793 	.db 0x0d
      00506E 0A                    2794 	.db 0x0a
      00506F 00                    2795 	.db 0x00
                                   2796 	.area CSEG    (CODE)
                                   2797 	.area CONST   (CODE)
      005070                       2798 ___str_12:
      005070 0A                    2799 	.db 0x0a
      005071 0D                    2800 	.db 0x0d
      005072 45 6E 74 65 72 20 62  2801 	.ascii "Enter buffer size between 20 to 400: "
             75 66 66 65 72 20 73
             69 7A 65 20 62 65 74
             77 65 65 6E 20 32 30
             20 74 6F 20 34 30 30
             3A 20
      005097 00                    2802 	.db 0x00
                                   2803 	.area CSEG    (CODE)
                                   2804 	.area CONST   (CODE)
      005098                       2805 ___str_13:
      005098 42 75 66 66 65 72 20  2806 	.ascii "Buffer size you entered is : "
             73 69 7A 65 20 79 6F
             75 20 65 6E 74 65 72
             65 64 20 69 73 20 3A
             20
      0050B5 00                    2807 	.db 0x00
                                   2808 	.area CSEG    (CODE)
                                   2809 	.area CONST   (CODE)
      0050B6                       2810 ___str_14:
      0050B6 25 64 20              2811 	.ascii "%d "
      0050B9 0A                    2812 	.db 0x0a
      0050BA 0D                    2813 	.db 0x0d
      0050BB 00                    2814 	.db 0x00
                                   2815 	.area CSEG    (CODE)
                                   2816 	.area CONST   (CODE)
      0050BC                       2817 ___str_15:
      0050BC 0A                    2818 	.db 0x0a
      0050BD 0D                    2819 	.db 0x0d
      0050BE 46 61 69 6C 65 64 20  2820 	.ascii "Failed to get malloc try to enter smaller size by again ente"
             74 6F 20 67 65 74 20
             6D 61 6C 6C 6F 63 20
             74 72 79 20 74 6F 20
             65 6E 74 65 72 20 73
             6D 61 6C 6C 65 72 20
             73 69 7A 65 20 62 79
             20 61 67 61 69 6E 20
             65 6E 74 65
      0050FA 72 69 6E 67 20 2B     2821 	.ascii "ring +"
      005100 00                    2822 	.db 0x00
                                   2823 	.area CSEG    (CODE)
                                   2824 	.area CONST   (CODE)
      005101                       2825 ___str_16:
      005101 0A                    2826 	.db 0x0a
      005102 0D                    2827 	.db 0x0d
      005103 45 6E 74 65 72 20 4E  2828 	.ascii "Enter Number to delete between 0 to 127 for buffer:"
             75 6D 62 65 72 20 74
             6F 20 64 65 6C 65 74
             65 20 62 65 74 77 65
             65 6E 20 30 20 74 6F
             20 31 32 37 20 66 6F
             72 20 62 75 66 66 65
             72 3A
      005136 00                    2829 	.db 0x00
                                   2830 	.area CSEG    (CODE)
                                   2831 	.area CONST   (CODE)
      005137                       2832 ___str_17:
      005137 45 6E 74 65 72 20 62  2833 	.ascii "Enter buffer size between 32 and 4800 bytes (buffer size mus"
             75 66 66 65 72 20 73
             69 7A 65 20 62 65 74
             77 65 65 6E 20 33 32
             20 61 6E 64 20 34 38
             30 30 20 62 79 74 65
             73 20 28 62 75 66 66
             65 72 20 73 69 7A 65
             20 6D 75 73
      005173 74 20 62 65 20 65 76  2834 	.ascii "t be evenly divisible by 16): "
             65 6E 6C 79 20 64 69
             76 69 73 69 62 6C 65
             20 62 79 20 31 36 29
             3A 20
      005191 00                    2835 	.db 0x00
                                   2836 	.area CSEG    (CODE)
                                   2837 	.area CONST   (CODE)
      005192                       2838 ___str_18:
      005192 42 75 66 66 65 72 20  2839 	.ascii "Buffer you entered is : 0x"
             79 6F 75 20 65 6E 74
             65 72 65 64 20 69 73
             20 3A 20 30 78
      0051AC 00                    2840 	.db 0x00
                                   2841 	.area CSEG    (CODE)
                                   2842 	.area CONST   (CODE)
      0051AD                       2843 ___str_19:
      0051AD 46 61 69 6C 65 64 20  2844 	.ascii "Failed to get malloc try to enter smaller size for buf 1"
             74 6F 20 67 65 74 20
             6D 61 6C 6C 6F 63 20
             74 72 79 20 74 6F 20
             65 6E 74 65 72 20 73
             6D 61 6C 6C 65 72 20
             73 69 7A 65 20 66 6F
             72 20 62 75 66 20 31
      0051E5 0A                    2845 	.db 0x0a
      0051E6 0D                    2846 	.db 0x0d
      0051E7 00                    2847 	.db 0x00
                                   2848 	.area CSEG    (CODE)
                                   2849 	.area CONST   (CODE)
      0051E8                       2850 ___str_20:
      0051E8 46 61 69 6C 65 64 20  2851 	.ascii "Failed to get malloc try to enter smaller size for buf 2"
             74 6F 20 67 65 74 20
             6D 61 6C 6C 6F 63 20
             74 72 79 20 74 6F 20
             65 6E 74 65 72 20 73
             6D 61 6C 6C 65 72 20
             73 69 7A 65 20 66 6F
             72 20 62 75 66 20 32
      005220 0A                    2852 	.db 0x0a
      005221 0D                    2853 	.db 0x0d
      005222 00                    2854 	.db 0x00
                                   2855 	.area CSEG    (CODE)
                                   2856 	.area CONST   (CODE)
      005223                       2857 ___str_21:
      005223 70 6F 69 6E 74 65 72  2858 	.ascii "pointer_value : %p %p"
             5F 76 61 6C 75 65 20
             3A 20 25 70 20 25 70
      005238 0A                    2859 	.db 0x0a
      005239 0D                    2860 	.db 0x0d
      00523A 00                    2861 	.db 0x00
                                   2862 	.area CSEG    (CODE)
                                   2863 	.area CONST   (CODE)
      00523B                       2864 ___str_22:
      00523B 70 6F 69 6E 74 65 72  2865 	.ascii "pointer location %p, size %d"
             20 6C 6F 63 61 74 69
             6F 6E 20 25 70 2C 20
             73 69 7A 65 20 25 64
      005257 0A                    2866 	.db 0x0a
      005258 0D                    2867 	.db 0x0d
      005259 00                    2868 	.db 0x00
                                   2869 	.area CSEG    (CODE)
                                   2870 	.area CONST   (CODE)
      00525A                       2871 ___str_23:
      00525A 45 6E 74 65 72 20 55  2872 	.ascii "Enter Uppercase char to save in buffer 0: "
             70 70 65 72 63 61 73
             65 20 63 68 61 72 20
             74 6F 20 73 61 76 65
             20 69 6E 20 62 75 66
             66 65 72 20 30 3A 20
      005284 0A                    2873 	.db 0x0a
      005285 0D                    2874 	.db 0x0d
      005286 00                    2875 	.db 0x00
                                   2876 	.area CSEG    (CODE)
                                   2877 	.area CONST   (CODE)
      005287                       2878 ___str_24:
      005287 43 6F 6D 6D 61 6E 64  2879 	.ascii "Command recived ! "
             20 72 65 63 69 76 65
             64 20 21 20
      005299 0A                    2880 	.db 0x0a
      00529A 0D                    2881 	.db 0x0d
      00529B 00                    2882 	.db 0x00
                                   2883 	.area CSEG    (CODE)
                                   2884 	.area CONST   (CODE)
      00529C                       2885 ___str_25:
      00529C 74 6F 74 61 6C 20 73  2886 	.ascii "total storage %d recent storage %d pointer %p "
             74 6F 72 61 67 65 20
             25 64 20 72 65 63 65
             6E 74 20 73 74 6F 72
             61 67 65 20 25 64 20
             70 6F 69 6E 74 65 72
             20 25 70 20
      0052CA 0A                    2887 	.db 0x0a
      0052CB 0D                    2888 	.db 0x0d
      0052CC 00                    2889 	.db 0x00
                                   2890 	.area CSEG    (CODE)
                                   2891 	.area CONST   (CODE)
      0052CD                       2892 ___str_26:
      0052CD 62 75 66 66 65 72 30  2893 	.ascii "buffer0 got full nothing to write !"
             20 67 6F 74 20 66 75
             6C 6C 20 6E 6F 74 68
             69 6E 67 20 74 6F 20
             77 72 69 74 65 20 21
      0052F0 00                    2894 	.db 0x00
                                   2895 	.area CSEG    (CODE)
                                   2896 	.area CONST   (CODE)
      0052F1                       2897 ___str_27:
      0052F1 50 6C 65 61 73 65 20  2898 	.ascii "Please enter An command (+) (-) (?) (=) (@): "
             65 6E 74 65 72 20 41
             6E 20 63 6F 6D 6D 61
             6E 64 20 28 2B 29 20
             28 2D 29 20 28 3F 29
             20 28 3D 29 20 28 40
             29 3A 20
      00531E 0A                    2899 	.db 0x0a
      00531F 00                    2900 	.db 0x00
                                   2901 	.area CSEG    (CODE)
                                   2902 	.area XINIT   (CODE)
      00532D                       2903 __xinit__index_of_buffers:
      00532D 00                    2904 	.db #0x00	; 0
      00532E                       2905 __xinit__total_number_of_commands:
      00532E 00                    2906 	.db #0x00	; 0
      00532F                       2907 __xinit__total_number_of_storage:
      00532F 00                    2908 	.db #0x00	; 0
      005330                       2909 __xinit__recent_commands:
      005330 00                    2910 	.db #0x00	; 0
      005331                       2911 __xinit__recent_storage:
      005331 00                    2912 	.db #0x00	; 0
      005332                       2913 __xinit__recived_bytes:
      005332 00                    2914 	.db #0x00	; 0
      005333                       2915 __xinit__pointer1:
      005333 00 00                 2916 	.byte #0x00,#0x00
      005335                       2917 __xinit__pointer2:
      005335 00 00                 2918 	.byte #0x00,#0x00
                                   2919 	.area CABS    (ABS,CODE)
