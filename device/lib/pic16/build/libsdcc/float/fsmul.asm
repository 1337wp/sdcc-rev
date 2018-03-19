;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:59 2018
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f452

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global ___fsmul

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern __mullong
;--------------------------------------------------------
;	Equates to used internal registers
;--------------------------------------------------------
STATUS	equ	0xfd8
WREG	equ	0xfe8
FSR0L	equ	0xfe9
FSR1L	equ	0xfe1
FSR2L	equ	0xfd9
POSTDEC1	equ	0xfe5
PREINC1	equ	0xfe4
PLUSW2	equ	0xfdb
PRODL	equ	0xff3
PRODH	equ	0xff4


; Internal registers
.registers	udata_ovr	0x0000
r0x00	res	1
r0x01	res	1
r0x02	res	1
r0x03	res	1
r0x04	res	1
r0x05	res	1
r0x06	res	1
r0x07	res	1
r0x08	res	1
r0x0a	res	1
r0x0b	res	1

udata_fsmul_0	udata
___fsmul_fl1_1_1	res	4

udata_fsmul_1	udata
___fsmul_fl2_1_1	res	4

udata_fsmul_2	udata
___fsmul_exp_1_1	res	2

udata_fsmul_3	udata
___fsmul_result_1_1	res	4

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($14) :
; ;ic:2: 	proc ___fsmul [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
S_fsmul____fsmul	code
___fsmul:
;	.line	32; fsmul.c	float __fsmul (float a1, float a2) _FS_REENTRANT
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
	MOVFF	r0x06, POSTDEC1
	MOVFF	r0x07, POSTDEC1
	MOVFF	r0x08, POSTDEC1
	MOVFF	r0x0a, POSTDEC1
	MOVFF	r0x0b, POSTDEC1
; ;ic:3: iTemp0 [k2 lr3:6 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ ___fsmul_a1_1_1}[r0x00 r0x01 r0x02 r0x03 ] = recv ___fsmul [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
; ;ic:4: iTemp1 [k4 lr4:8 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ ___fsmul_a2_1_1}[r0x04 r0x05 r0x06 r0x07 ] = recv ___fsmul [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
	MOVLW	0x08
	MOVFF	PLUSW2, r0x06
	MOVLW	0x09
	MOVFF	PLUSW2, r0x07
; ;ic:5: 	iTemp2 [k7 lr5:6 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat] = &[___fsmul_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:6: 	*(iTemp2 [k7 lr5:6 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat]) := iTemp0 [k2 lr3:6 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ ___fsmul_a1_1_1}[r0x00 r0x01 r0x02 r0x03 ]
;	.line	39; fsmul.c	fl1.f = a1;
	MOVF	r0x00, W
	BANKSEL	___fsmul_fl1_1_1
	MOVWF	___fsmul_fl1_1_1, B
	MOVF	r0x01, W
; removed redundant BANKSEL
	MOVWF	(___fsmul_fl1_1_1 + 1), B
	MOVF	r0x02, W
; removed redundant BANKSEL
	MOVWF	(___fsmul_fl1_1_1 + 2), B
	MOVF	r0x03, W
; removed redundant BANKSEL
	MOVWF	(___fsmul_fl1_1_1 + 3), B
; ;ic:7: 	iTemp4 [k11 lr7:8 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat] = &[___fsmul_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:8: 	*(iTemp4 [k11 lr7:8 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat]) := iTemp1 [k4 lr4:8 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ ___fsmul_a2_1_1}[r0x04 r0x05 r0x06 r0x07 ]
;	.line	40; fsmul.c	fl2.f = a2;
	MOVF	r0x04, W
	BANKSEL	___fsmul_fl2_1_1
	MOVWF	___fsmul_fl2_1_1, B
	MOVF	r0x05, W
; removed redundant BANKSEL
	MOVWF	(___fsmul_fl2_1_1 + 1), B
	MOVF	r0x06, W
; removed redundant BANKSEL
	MOVWF	(___fsmul_fl2_1_1 + 2), B
	MOVF	r0x07, W
; removed redundant BANKSEL
	MOVWF	(___fsmul_fl2_1_1 + 3), B
; ;ic:9: 	iTemp6 [k14 lr9:10 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[___fsmul_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:10: 	iTemp8 [k17 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ ___fsmul_fl1_1_1} = @[iTemp6 [k14 lr9:10 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]]
; ;ic:11: 	if iTemp8 [k17 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ ___fsmul_fl1_1_1} == 0 goto _iftrue_0($1)
	BANKSEL	___fsmul_fl1_1_1
;	.line	42; fsmul.c	if (!fl1.l || !fl2.l)
	MOVF	___fsmul_fl1_1_1, W, B
; removed redundant BANKSEL
	IORWF	(___fsmul_fl1_1_1 + 1), W, B
; removed redundant BANKSEL
	IORWF	(___fsmul_fl1_1_1 + 2), W, B
; removed redundant BANKSEL
	IORWF	(___fsmul_fl1_1_1 + 3), W, B
	BZ	_00105_DS_
; ;ic:12: 	iTemp9 [k18 lr12:13 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[___fsmul_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:13: 	iTemp11 [k21 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ ___fsmul_fl2_1_1} = @[iTemp9 [k18 lr12:13 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]]
; ;ic:14: 	if iTemp11 [k21 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ ___fsmul_fl2_1_1} != 0 goto _iffalse_0($2)
	BANKSEL	___fsmul_fl2_1_1
	MOVF	___fsmul_fl2_1_1, W, B
; removed redundant BANKSEL
	IORWF	(___fsmul_fl2_1_1 + 1), W, B
; removed redundant BANKSEL
	IORWF	(___fsmul_fl2_1_1 + 2), W, B
; removed redundant BANKSEL
	IORWF	(___fsmul_fl2_1_1 + 3), W, B
	BNZ	_00106_DS_
; ;ic:15:  _iftrue_0($1) :
; ;ic:16: 	ret 0 {literal-float}
_00105_DS_:
;	.line	43; fsmul.c	return (0);
	CLRF	FSR0L
	CLRF	PRODH
	CLRF	PRODL
	CLRF	WREG
	BRA	_00117_DS_
; ;ic:17:  _iffalse_0($2) :
; ;ic:18: 	iTemp13 [k24 lr18:19 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[___fsmul_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:19: 	iTemp15 [k27 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ ___fsmul_fl1_1_1} = @[iTemp13 [k24 lr18:19 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]]
; ;ic:20: 	iTemp16 [k28 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] = iTemp15 [k27 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ ___fsmul_fl1_1_1} >> 0x1f {literal-unsigned-char}
_00106_DS_:
	BANKSEL	(___fsmul_fl1_1_1 + 3)
;	.line	46; fsmul.c	sign = SIGN (fl1.l) ^ SIGN (fl2.l);
	RLNCF	(___fsmul_fl1_1_1 + 3), W, B
	ANDLW	0x01
	MOVWF	r0x00
	CLRF	r0x01
	CLRF	r0x02
	CLRF	r0x03
; ;ic:21: 	iTemp17 [k29 lr21:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] = iTemp16 [k28 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] & 0x1 {literal-unsigned-long-int}
	MOVLW	0x01
	ANDWF	r0x00, F
	CLRF	r0x01
	CLRF	r0x02
	CLRF	r0x03
; ;ic:22: 	iTemp18 [k30 lr22:23 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[___fsmul_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:23: 	iTemp20 [k33 lr23:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ ___fsmul_fl2_1_1} = @[iTemp18 [k30 lr22:23 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]]
; ;ic:24: 	iTemp21 [k34 lr24:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x04 r0x05 r0x06 r0x07 ] = iTemp20 [k33 lr23:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ ___fsmul_fl2_1_1} >> 0x1f {literal-unsigned-char}
	BANKSEL	(___fsmul_fl2_1_1 + 3)
	RLNCF	(___fsmul_fl2_1_1 + 3), W, B
	ANDLW	0x01
	MOVWF	r0x04
	CLRF	r0x05
	CLRF	r0x06
	CLRF	r0x07
; ;ic:25: 	iTemp22 [k35 lr25:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x04 r0x05 r0x06 r0x07 ] = iTemp21 [k34 lr24:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x04 r0x05 r0x06 r0x07 ] & 0x1 {literal-unsigned-long-int}
	MOVLW	0x01
	ANDWF	r0x04, F
	CLRF	r0x05
	CLRF	r0x06
	CLRF	r0x07
; ;ic:26: 	iTemp23 [k36 lr26:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] = iTemp17 [k29 lr21:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] ^ iTemp22 [k35 lr25:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x04 r0x05 r0x06 r0x07 ]
	MOVF	r0x04, W
	XORWF	r0x00, F
	MOVF	r0x05, W
	XORWF	r0x01, F
	MOVF	r0x06, W
	XORWF	r0x02, F
	MOVF	r0x07, W
	XORWF	r0x03, F
; ;ic:27: 	iTemp12 [k22 lr27:115 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ ___fsmul_sign_1_1}[r0x00 ] = (char)iTemp23 [k36 lr26:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ]
; ;ic:28: 	iTemp25 [k39 lr28:29 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[___fsmul_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:29: 	iTemp27 [k42 lr29:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ ___fsmul_fl1_1_1} = @[iTemp25 [k39 lr28:29 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]]
; ;ic:30: 	iTemp28 [k43 lr30:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x01 r0x02 r0x03 r0x04 ] = iTemp27 [k42 lr29:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ ___fsmul_fl1_1_1} >> 0x17 {literal-unsigned-char}
	BANKSEL	(___fsmul_fl1_1_1 + 2)
;	.line	47; fsmul.c	exp = EXP (fl1.l) - EXCESS;
	RLCF	(___fsmul_fl1_1_1 + 2), W, B
; removed redundant BANKSEL
	RLCF	(___fsmul_fl1_1_1 + 3), W, B
	MOVWF	r0x01
	CLRF	r0x03
	CLRF	r0x04
; ;ic:31: 	iTemp29 [k44 lr31:32 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x01 r0x02 r0x03 r0x04 ] = iTemp28 [k43 lr30:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x01 r0x02 r0x03 r0x04 ] & 0xff {literal-unsigned-long-int}
	CLRF	r0x02
; ;ic:32: 	iTemp30 [k45 lr32:33 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x01 r0x02 r0x03 r0x04 ] = iTemp29 [k44 lr31:32 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x01 r0x02 r0x03 r0x04 ] - 0x7e {literal-unsigned-long-int}
	MOVLW	0x82
	ADDWF	r0x01, F
	MOVLW	0xff
	ADDWFC	r0x02, F
	ADDWFC	r0x03, F
	ADDWFC	r0x04, F
; ;ic:33: 	___fsmul_exp_1_1 [k38 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-int} = (volatile-int)iTemp30 [k45 lr32:33 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x01 r0x02 r0x03 r0x04 ]
	MOVF	r0x01, W
	BANKSEL	___fsmul_exp_1_1
	MOVWF	___fsmul_exp_1_1, B
	MOVF	r0x02, W
; removed redundant BANKSEL
	MOVWF	(___fsmul_exp_1_1 + 1), B
; ;ic:34: 	iTemp32 [k47 lr34:35 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[___fsmul_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:35: 	iTemp34 [k50 lr35:36 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ ___fsmul_fl2_1_1} = @[iTemp32 [k47 lr34:35 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]]
; ;ic:36: 	iTemp35 [k51 lr36:37 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x01 r0x02 r0x03 r0x04 ] = iTemp34 [k50 lr35:36 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ ___fsmul_fl2_1_1} >> 0x17 {literal-unsigned-char}
	BANKSEL	(___fsmul_fl2_1_1 + 2)
;	.line	48; fsmul.c	exp += EXP (fl2.l);
	RLCF	(___fsmul_fl2_1_1 + 2), W, B
; removed redundant BANKSEL
	RLCF	(___fsmul_fl2_1_1 + 3), W, B
	MOVWF	r0x01
; ;ic:37: 	iTemp36 [k52 lr37:39 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x01 r0x02 r0x03 r0x04 ] = iTemp35 [k51 lr36:37 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x01 r0x02 r0x03 r0x04 ] & 0xff {literal-unsigned-long-int}
	CLRF	r0x02
; ;ic:38: 	iTemp37 [k53 lr38:39 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x05 r0x06 r0x07 r0x08 ] = (unsigned-long-int)___fsmul_exp_1_1 [k38 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-int}
	MOVFF	___fsmul_exp_1_1, r0x05
	MOVFF	(___fsmul_exp_1_1 + 1), r0x06
; ;ic:39: 	iTemp38 [k54 lr39:40 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x01 r0x02 r0x03 r0x04 ] = iTemp37 [k53 lr38:39 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x05 r0x06 r0x07 r0x08 ] + iTemp36 [k52 lr37:39 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x01 r0x02 r0x03 r0x04 ]
	MOVF	r0x05, W
	ADDWF	r0x01, F
	MOVF	r0x06, W
	ADDWFC	r0x02, F
; ;ic:40: 	___fsmul_exp_1_1 [k38 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-int} = (volatile-int)iTemp38 [k54 lr39:40 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x01 r0x02 r0x03 r0x04 ]
	MOVF	r0x01, W
	BANKSEL	___fsmul_exp_1_1
	MOVWF	___fsmul_exp_1_1, B
	MOVF	r0x02, W
; removed redundant BANKSEL
	MOVWF	(___fsmul_exp_1_1 + 1), B
; ;ic:41: 	iTemp40 [k56 lr41:46 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[___fsmul_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:42: 	iTemp42 [k59 lr42:43 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[___fsmul_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:43: 	iTemp44 [k62 lr43:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ ___fsmul_fl1_1_1} = @[iTemp42 [k59 lr42:43 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]]
; ;ic:44: 	iTemp45 [k63 lr44:45 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x01 r0x02 r0x03 r0x04 ] = iTemp44 [k62 lr43:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ ___fsmul_fl1_1_1} & 0x7fffff {literal-unsigned-long-int}
	BANKSEL	___fsmul_fl1_1_1
;	.line	50; fsmul.c	fl1.l = MANT (fl1.l);
	MOVF	___fsmul_fl1_1_1, W, B
	MOVWF	r0x01
; removed redundant BANKSEL
	MOVF	(___fsmul_fl1_1_1 + 1), W, B
	MOVWF	r0x02
	MOVLW	0x7f
; removed redundant BANKSEL
	ANDWF	(___fsmul_fl1_1_1 + 2), W, B
	MOVWF	r0x03
; ;ic:45: 	iTemp46 [k64 lr45:46 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x01 r0x02 r0x03 r0x04 ] = iTemp45 [k63 lr44:45 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x01 r0x02 r0x03 r0x04 ] | 0x800000 {literal-unsigned-long-int}
	BSF	r0x03, 7
; ;ic:46: 	*(iTemp40 [k56 lr41:46 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]) := iTemp46 [k64 lr45:46 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x01 r0x02 r0x03 r0x04 ]
	MOVF	r0x01, W
; removed redundant BANKSEL
	MOVWF	___fsmul_fl1_1_1, B
	MOVF	r0x02, W
; removed redundant BANKSEL
	MOVWF	(___fsmul_fl1_1_1 + 1), B
	MOVF	r0x03, W
; removed redundant BANKSEL
	MOVWF	(___fsmul_fl1_1_1 + 2), B
; removed redundant BANKSEL
	CLRF	(___fsmul_fl1_1_1 + 3), B
; ;ic:47: 	iTemp47 [k65 lr47:52 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[___fsmul_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:48: 	iTemp49 [k68 lr48:49 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[___fsmul_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:49: 	iTemp51 [k71 lr49:50 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ ___fsmul_fl2_1_1} = @[iTemp49 [k68 lr48:49 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]]
; ;ic:50: 	iTemp52 [k72 lr50:51 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x01 r0x02 r0x03 r0x04 ] = iTemp51 [k71 lr49:50 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ ___fsmul_fl2_1_1} & 0x7fffff {literal-unsigned-long-int}
	BANKSEL	___fsmul_fl2_1_1
;	.line	51; fsmul.c	fl2.l = MANT (fl2.l);
	MOVF	___fsmul_fl2_1_1, W, B
	MOVWF	r0x01
; removed redundant BANKSEL
	MOVF	(___fsmul_fl2_1_1 + 1), W, B
	MOVWF	r0x02
	MOVLW	0x7f
; removed redundant BANKSEL
	ANDWF	(___fsmul_fl2_1_1 + 2), W, B
	MOVWF	r0x03
; ;ic:51: 	iTemp53 [k73 lr51:52 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x01 r0x02 r0x03 r0x04 ] = iTemp52 [k72 lr50:51 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x01 r0x02 r0x03 r0x04 ] | 0x800000 {literal-unsigned-long-int}
	BSF	r0x03, 7
; ;ic:52: 	*(iTemp47 [k65 lr47:52 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]) := iTemp53 [k73 lr51:52 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x01 r0x02 r0x03 r0x04 ]
	MOVF	r0x01, W
; removed redundant BANKSEL
	MOVWF	___fsmul_fl2_1_1, B
	MOVF	r0x02, W
; removed redundant BANKSEL
	MOVWF	(___fsmul_fl2_1_1 + 1), B
	MOVF	r0x03, W
; removed redundant BANKSEL
	MOVWF	(___fsmul_fl2_1_1 + 2), B
; removed redundant BANKSEL
	CLRF	(___fsmul_fl2_1_1 + 3), B
; ;ic:53: 	iTemp54 [k75 lr53:54 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[___fsmul_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:54: 	iTemp56 [k78 lr54:55 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ ___fsmul_fl1_1_1} = @[iTemp54 [k75 lr53:54 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]]
; ;ic:55: 	iTemp57 [k79 lr55:60 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x01 r0x02 r0x03 r0x04 ] = iTemp56 [k78 lr54:55 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ ___fsmul_fl1_1_1} >> 0x8 {literal-unsigned-char}
	BANKSEL	(___fsmul_fl1_1_1 + 1)
;	.line	54; fsmul.c	result = (fl1.l >> 8) * (fl2.l >> 8);
	MOVF	(___fsmul_fl1_1_1 + 1), W, B
	MOVWF	r0x01
; removed redundant BANKSEL
	MOVF	(___fsmul_fl1_1_1 + 2), W, B
	MOVWF	r0x02
; removed redundant BANKSEL
	MOVF	(___fsmul_fl1_1_1 + 3), W, B
	MOVWF	r0x03
; ;ic:56: 	iTemp58 [k80 lr56:57 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[___fsmul_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:57: 	iTemp60 [k83 lr57:58 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ ___fsmul_fl2_1_1} = @[iTemp58 [k80 lr56:57 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]]
; ;ic:58: 	iTemp61 [k84 lr58:60 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x05 r0x06 r0x07 r0x08 ] = iTemp60 [k83 lr57:58 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ ___fsmul_fl2_1_1} >> 0x8 {literal-unsigned-char}
	BANKSEL	(___fsmul_fl2_1_1 + 1)
	MOVF	(___fsmul_fl2_1_1 + 1), W, B
	MOVWF	r0x05
; removed redundant BANKSEL
	MOVF	(___fsmul_fl2_1_1 + 2), W, B
	MOVWF	r0x06
; removed redundant BANKSEL
	MOVF	(___fsmul_fl2_1_1 + 3), W, B
; ;ic:59: 	send iTemp57 [k79 lr55:60 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x01 r0x02 r0x03 r0x04 ]{argreg = 1}
; ;ic:60: 	send iTemp61 [k84 lr58:60 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x05 r0x06 r0x07 r0x08 ]{argreg = 2}
; ;ic:61: 	___fsmul_result_1_1 [k74 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int} = call __mullong [k142 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int function    ( long-int, long-int) }
	CLRF	POSTDEC1
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	CALL	__mullong
	BANKSEL	___fsmul_result_1_1
	MOVWF	___fsmul_result_1_1, B
	MOVFF	PRODL, (___fsmul_result_1_1 + 1)
	MOVFF	PRODH, (___fsmul_result_1_1 + 2)
	MOVFF	FSR0L, (___fsmul_result_1_1 + 3)
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:62: 	iTemp63 [k86 lr62:63 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[___fsmul_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:63: 	iTemp65 [k89 lr63:64 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ ___fsmul_fl1_1_1} = @[iTemp63 [k86 lr62:63 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]]
; ;ic:64: 	iTemp66 [k90 lr64:69 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x01 r0x02 r0x03 r0x04 ] = iTemp65 [k89 lr63:64 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ ___fsmul_fl1_1_1} & 0xff {literal-unsigned-long-int}
	BANKSEL	___fsmul_fl1_1_1
;	.line	55; fsmul.c	result += ((fl1.l & (unsigned long) 0xFF) * (fl2.l >> 8)) >> 8;
	MOVF	___fsmul_fl1_1_1, W, B
	MOVWF	r0x01
; ;ic:65: 	iTemp67 [k91 lr65:66 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[___fsmul_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:66: 	iTemp69 [k94 lr66:67 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ ___fsmul_fl2_1_1} = @[iTemp67 [k91 lr65:66 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]]
; ;ic:67: 	iTemp70 [k95 lr67:69 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x05 r0x06 r0x07 r0x08 ] = iTemp69 [k94 lr66:67 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ ___fsmul_fl2_1_1} >> 0x8 {literal-unsigned-char}
	BANKSEL	(___fsmul_fl2_1_1 + 1)
	MOVF	(___fsmul_fl2_1_1 + 1), W, B
	MOVWF	r0x05
; removed redundant BANKSEL
	MOVF	(___fsmul_fl2_1_1 + 2), W, B
	MOVWF	r0x06
; removed redundant BANKSEL
	MOVF	(___fsmul_fl2_1_1 + 3), W, B
; ;ic:68: 	send iTemp66 [k90 lr64:69 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x01 r0x02 r0x03 r0x04 ]{argreg = 1}
; ;ic:69: 	send iTemp70 [k95 lr67:69 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x05 r0x06 r0x07 r0x08 ]{argreg = 2}
; ;ic:70: 	iTemp71 [k96 lr70:71 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x01 r0x02 r0x03 r0x04 ] = call __mullong [k142 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int function    ( long-int, long-int) }
	CLRF	POSTDEC1
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	CALL	__mullong
	MOVFF	PRODL, r0x02
	MOVFF	PRODH, r0x03
	MOVFF	FSR0L, r0x04
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:71: 	iTemp72 [k97 lr71:72 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x01 r0x02 r0x03 r0x04 ] = iTemp71 [k96 lr70:71 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x01 r0x02 r0x03 r0x04 ] >> 0x8 {literal-unsigned-char}
	MOVF	r0x02, W
	MOVWF	r0x01
	MOVF	r0x03, W
	MOVWF	r0x02
	MOVF	r0x04, W
	MOVWF	r0x03
	CLRF	r0x04
; ;ic:72: 	___fsmul_result_1_1 [k74 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int} = ___fsmul_result_1_1 [k74 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int} + iTemp72 [k97 lr71:72 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x01 r0x02 r0x03 r0x04 ]
	MOVF	r0x01, W
	BANKSEL	___fsmul_result_1_1
	ADDWF	___fsmul_result_1_1, F, B
	MOVF	r0x02, W
; removed redundant BANKSEL
	ADDWFC	(___fsmul_result_1_1 + 1), F, B
	MOVF	r0x03, W
; removed redundant BANKSEL
	ADDWFC	(___fsmul_result_1_1 + 2), F, B
	MOVF	r0x04, W
; removed redundant BANKSEL
	ADDWFC	(___fsmul_result_1_1 + 3), F, B
; ;ic:73: 	iTemp74 [k99 lr73:74 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[___fsmul_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:74: 	iTemp76 [k102 lr74:75 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ ___fsmul_fl2_1_1} = @[iTemp74 [k99 lr73:74 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]]
; ;ic:75: 	iTemp77 [k103 lr75:80 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x01 r0x02 r0x03 r0x04 ] = iTemp76 [k102 lr74:75 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ ___fsmul_fl2_1_1} & 0xff {literal-unsigned-long-int}
	BANKSEL	___fsmul_fl2_1_1
;	.line	56; fsmul.c	result += ((fl2.l & (unsigned long) 0xFF) * (fl1.l >> 8)) >> 8;
	MOVF	___fsmul_fl2_1_1, W, B
	MOVWF	r0x01
; ;ic:76: 	iTemp78 [k104 lr76:77 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[___fsmul_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:77: 	iTemp80 [k107 lr77:78 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ ___fsmul_fl1_1_1} = @[iTemp78 [k104 lr76:77 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]]
; ;ic:78: 	iTemp81 [k108 lr78:80 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x05 r0x06 r0x07 r0x08 ] = iTemp80 [k107 lr77:78 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ ___fsmul_fl1_1_1} >> 0x8 {literal-unsigned-char}
	BANKSEL	(___fsmul_fl1_1_1 + 1)
	MOVF	(___fsmul_fl1_1_1 + 1), W, B
	MOVWF	r0x05
; removed redundant BANKSEL
	MOVF	(___fsmul_fl1_1_1 + 2), W, B
	MOVWF	r0x06
; removed redundant BANKSEL
	MOVF	(___fsmul_fl1_1_1 + 3), W, B
; ;ic:79: 	send iTemp77 [k103 lr75:80 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x01 r0x02 r0x03 r0x04 ]{argreg = 1}
; ;ic:80: 	send iTemp81 [k108 lr78:80 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x05 r0x06 r0x07 r0x08 ]{argreg = 2}
; ;ic:81: 	iTemp82 [k109 lr81:82 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x01 r0x02 r0x03 r0x04 ] = call __mullong [k142 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int function    ( long-int, long-int) }
	CLRF	POSTDEC1
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	CALL	__mullong
	MOVFF	PRODL, r0x02
	MOVFF	PRODH, r0x03
	MOVFF	FSR0L, r0x04
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:82: 	iTemp83 [k110 lr82:83 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x01 r0x02 r0x03 r0x04 ] = iTemp82 [k109 lr81:82 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x01 r0x02 r0x03 r0x04 ] >> 0x8 {literal-unsigned-char}
	MOVF	r0x02, W
	MOVWF	r0x01
	MOVF	r0x03, W
	MOVWF	r0x02
	MOVF	r0x04, W
	MOVWF	r0x03
	CLRF	r0x04
; ;ic:83: 	___fsmul_result_1_1 [k74 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int} = ___fsmul_result_1_1 [k74 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int} + iTemp83 [k110 lr82:83 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x01 r0x02 r0x03 r0x04 ]
	MOVF	r0x01, W
	BANKSEL	___fsmul_result_1_1
	ADDWF	___fsmul_result_1_1, F, B
	MOVF	r0x02, W
; removed redundant BANKSEL
	ADDWFC	(___fsmul_result_1_1 + 1), F, B
	MOVF	r0x03, W
; removed redundant BANKSEL
	ADDWFC	(___fsmul_result_1_1 + 2), F, B
	MOVF	r0x04, W
; removed redundant BANKSEL
	ADDWFC	(___fsmul_result_1_1 + 3), F, B
; ;ic:84: 	iTemp85 [k112 lr84:85 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int} = ___fsmul_result_1_1 [k74 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int} & 0x80000000 {literal-unsigned-long-int}
;	.line	58; fsmul.c	if (result & SIGNBIT)
	BTFSS	(___fsmul_result_1_1 + 3), 7
	BRA	_00109_DS_
; ;ic:85: 	if iTemp85 [k112 lr84:85 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int} == 0 goto _iffalse_1($5)
; ;ic:86: 	___fsmul_result_1_1 [k74 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int} = ___fsmul_result_1_1 [k74 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int} + 0x80 {literal-volatile-unsigned-long-int}
;	.line	61; fsmul.c	result += 0x80;
	MOVLW	0x80
; removed redundant BANKSEL
	ADDWF	___fsmul_result_1_1, F, B
	MOVLW	0x00
; removed redundant BANKSEL
	ADDWFC	(___fsmul_result_1_1 + 1), F, B
; removed redundant BANKSEL
	ADDWFC	(___fsmul_result_1_1 + 2), F, B
; removed redundant BANKSEL
	ADDWFC	(___fsmul_result_1_1 + 3), F, B
; ;ic:87: 	___fsmul_result_1_1 [k74 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int} = ___fsmul_result_1_1 [k74 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int} >> 0x8 {literal-unsigned-char}
; removed redundant BANKSEL
;	.line	62; fsmul.c	result >>= 8;
	MOVF	(___fsmul_result_1_1 + 1), W, B
; removed redundant BANKSEL
	MOVWF	___fsmul_result_1_1, B
; removed redundant BANKSEL
	MOVF	(___fsmul_result_1_1 + 2), W, B
; removed redundant BANKSEL
	MOVWF	(___fsmul_result_1_1 + 1), B
; removed redundant BANKSEL
	MOVF	(___fsmul_result_1_1 + 3), W, B
; removed redundant BANKSEL
	MOVWF	(___fsmul_result_1_1 + 2), B
; removed redundant BANKSEL
	CLRF	(___fsmul_result_1_1 + 3), B
; ;ic:88: 	 goto _ifend_1($6)
	BRA	_00110_DS_
; ;ic:89:  _iffalse_1($5) :
; ;ic:90: 	___fsmul_result_1_1 [k74 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int} = ___fsmul_result_1_1 [k74 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int} + 0x40 {literal-volatile-unsigned-long-int}
_00109_DS_:
;	.line	67; fsmul.c	result += 0x40;
	MOVLW	0x40
	BANKSEL	___fsmul_result_1_1
	ADDWF	___fsmul_result_1_1, F, B
	MOVLW	0x00
; removed redundant BANKSEL
	ADDWFC	(___fsmul_result_1_1 + 1), F, B
; removed redundant BANKSEL
	ADDWFC	(___fsmul_result_1_1 + 2), F, B
; removed redundant BANKSEL
	ADDWFC	(___fsmul_result_1_1 + 3), F, B
; ;ic:91: 	___fsmul_result_1_1 [k74 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int} = ___fsmul_result_1_1 [k74 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int} >> 0x7 {literal-unsigned-char}
; removed redundant BANKSEL
;	.line	68; fsmul.c	result >>= 7;
	RLCF	___fsmul_result_1_1, W, B
; removed redundant BANKSEL
	RLCF	(___fsmul_result_1_1 + 1), W, B
; removed redundant BANKSEL
	MOVWF	___fsmul_result_1_1, B
; removed redundant BANKSEL
	CLRF	(___fsmul_result_1_1 + 1), B
	RLCF	(___fsmul_result_1_1 + 1), F, B
; removed redundant BANKSEL
	MOVF	(___fsmul_result_1_1 + 2), W, B
	RLNCF	WREG, W
	ANDLW	0xfe
; removed redundant BANKSEL
	IORWF	(___fsmul_result_1_1 + 1), F, B
; removed redundant BANKSEL
	RLCF	(___fsmul_result_1_1 + 2), W, B
; removed redundant BANKSEL
	RLCF	(___fsmul_result_1_1 + 3), W, B
; removed redundant BANKSEL
	MOVWF	(___fsmul_result_1_1 + 2), B
; removed redundant BANKSEL
	CLRF	(___fsmul_result_1_1 + 3), B
	RLCF	(___fsmul_result_1_1 + 3), F, B
; ;ic:92: 	___fsmul_exp_1_1 [k38 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-int} = ___fsmul_exp_1_1 [k38 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-int} - 0x1 {literal-unsigned-char}
;	.line	69; fsmul.c	exp--;
	MOVLW	0xff
	BANKSEL	___fsmul_exp_1_1
	ADDWF	___fsmul_exp_1_1, F, B
	BC	_10105_DS_
; removed redundant BANKSEL
	DECF	(___fsmul_exp_1_1 + 1), F, B
_10105_DS_:
; ;ic:93:  _ifend_1($6) :
; ;ic:94: 	___fsmul_result_1_1 [k74 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int} = ___fsmul_result_1_1 [k74 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int} & 0xff7fffff {literal-unsigned-long-int}
_00110_DS_:
	BANKSEL	(___fsmul_result_1_1 + 2)
;	.line	72; fsmul.c	result &= ~HIDDEN;
	BCF	(___fsmul_result_1_1 + 2), 7
; ;ic:95: 	iTemp93 [k120 lr95:96 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = ___fsmul_exp_1_1 [k38 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-int} < 0x100 {literal-int}
	BANKSEL	(___fsmul_exp_1_1 + 1)
;	.line	75; fsmul.c	if (exp >= 0x100)
	MOVF	(___fsmul_exp_1_1 + 1), W, B
	ADDLW	0x80
	ADDLW	0x7f
	BNZ	_00142_DS_
	MOVLW	0x00
; removed redundant BANKSEL
	SUBWF	___fsmul_exp_1_1, W, B
_00142_DS_:
	BNC	_00115_DS_
; ;ic:96: 	if iTemp93 [k120 lr95:96 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} != 0 goto _iffalse_3($11)
; ;ic:97: 	iTemp95 [k123 lr97:105 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[___fsmul_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:98: 	if iTemp12 [k22 lr27:115 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ ___fsmul_sign_1_1}[r0x00 ] == 0 goto iTempLbl0($15)
;	.line	76; fsmul.c	fl1.l = (sign ? SIGNBIT : 0) | 0x7F800000;
	MOVF	r0x00, W
	BZ	_00119_DS_
; ;ic:99: 	iTemp96 [k124 lr99:104 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x01 r0x02 r0x03 r0x04 ] := 0x80000000 {literal-unsigned-long-int}
	CLRF	r0x01
	CLRF	r0x02
	CLRF	r0x03
	MOVLW	0x80
	MOVWF	r0x04
; ;ic:100: 	 goto iTempLbl1($16)
	BRA	_00120_DS_
; ;ic:101:  iTempLbl0($15) :
; ;ic:102: 	iTemp96 [k124 lr99:104 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x01 r0x02 r0x03 r0x04 ] := 0x0 {literal-unsigned-long-int}
_00119_DS_:
	CLRF	r0x01
	CLRF	r0x02
	CLRF	r0x03
	CLRF	r0x04
; ;ic:103:  iTempLbl1($16) :
; ;ic:104: 	iTemp97 [k125 lr104:105 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x01 r0x02 r0x03 r0x04 ] = iTemp96 [k124 lr99:104 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x01 r0x02 r0x03 r0x04 ] | 0x7f800000 {literal-unsigned-long-int}
_00120_DS_:
	BSF	r0x03, 7
	MOVLW	0x7f
	IORWF	r0x04, F
; ;ic:105: 	*(iTemp95 [k123 lr97:105 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]) := iTemp97 [k125 lr104:105 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x01 r0x02 r0x03 r0x04 ]
	MOVF	r0x01, W
	BANKSEL	___fsmul_fl1_1_1
	MOVWF	___fsmul_fl1_1_1, B
	MOVF	r0x02, W
; removed redundant BANKSEL
	MOVWF	(___fsmul_fl1_1_1 + 1), B
	MOVF	r0x03, W
; removed redundant BANKSEL
	MOVWF	(___fsmul_fl1_1_1 + 2), B
	MOVF	r0x04, W
; removed redundant BANKSEL
	MOVWF	(___fsmul_fl1_1_1 + 3), B
; ;ic:106: 	 goto _ifend_3($12)
	BRA	_00116_DS_
; ;ic:107:  _iffalse_3($11) :
; ;ic:108: 	iTemp98 [k126 lr108:109 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = ___fsmul_exp_1_1 [k38 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-int} < 0x0 {literal-volatile-int}
_00115_DS_:
;	.line	77; fsmul.c	else if (exp < 0)
	BSF	STATUS, 0
	BANKSEL	(___fsmul_exp_1_1 + 1)
	BTFSS	(___fsmul_exp_1_1 + 1), 7, B
	BCF	STATUS, 0
	BNC	_00112_DS_
; ;ic:109: 	if iTemp98 [k126 lr108:109 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_2($8)
; ;ic:110: 	iTemp99 [k127 lr110:111 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[___fsmul_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:111: 	*(iTemp99 [k127 lr110:111 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]) := 0x0 {literal-volatile-unsigned-long-int}
	BANKSEL	___fsmul_fl1_1_1
;	.line	78; fsmul.c	fl1.l = 0;
	CLRF	___fsmul_fl1_1_1, B
; removed redundant BANKSEL
	CLRF	(___fsmul_fl1_1_1 + 1), B
; removed redundant BANKSEL
	CLRF	(___fsmul_fl1_1_1 + 2), B
; removed redundant BANKSEL
	CLRF	(___fsmul_fl1_1_1 + 3), B
; ;ic:112: 	 goto _ifend_3($12)
	BRA	_00116_DS_
; ;ic:113:  _iffalse_2($8) :
; ;ic:114: 	iTemp102 [k132 lr114:125 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[___fsmul_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:115: 	if iTemp12 [k22 lr27:115 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ ___fsmul_sign_1_1}[r0x00 ] == 0 goto iTempLbl2($17)
_00112_DS_:
;	.line	80; fsmul.c	fl1.l = PACK (sign ? SIGNBIT : 0 , exp, result);
	MOVF	r0x00, W
	BZ	_00121_DS_
; ;ic:116: 	iTemp103 [k133 lr116:123 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] := 0x80000000 {literal-unsigned-long-int}
	CLRF	r0x00
	CLRF	r0x01
	CLRF	r0x02
	MOVLW	0x80
	MOVWF	r0x03
; ;ic:117: 	 goto iTempLbl3($18)
	BRA	_00122_DS_
; ;ic:118:  iTempLbl2($17) :
; ;ic:119: 	iTemp103 [k133 lr116:123 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] := 0x0 {literal-unsigned-long-int}
_00121_DS_:
	CLRF	r0x00
	CLRF	r0x01
	CLRF	r0x02
	CLRF	r0x03
; ;ic:120:  iTempLbl3($18) :
; ;ic:121: 	iTemp104 [k134 lr121:122 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x04 r0x05 r0x06 r0x07 ] = (unsigned-long-int)___fsmul_exp_1_1 [k38 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-int}
_00122_DS_:
	MOVFF	___fsmul_exp_1_1, r0x04
	MOVFF	(___fsmul_exp_1_1 + 1), r0x05
	CLRF	WREG
; ;ic:122: 	iTemp105 [k135 lr122:123 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x08 r0x09 r0x0a r0x0b ] = iTemp104 [k134 lr121:122 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x04 r0x05 r0x06 r0x07 ] << 0x17 {literal-unsigned-char}
	RRCF	r0x05, W
	RRCF	r0x04, W
	MOVWF	r0x0b
	CLRF	r0x0a
	RRCF	r0x0a, F
	CLRF	r0x08
; ;ic:123: 	iTemp106 [k136 lr123:124 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] = iTemp103 [k133 lr116:123 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] | iTemp105 [k135 lr122:123 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x08 r0x09 r0x0a r0x0b ]
	MOVF	r0x08, W
	IORWF	r0x00, F
	IORWF	r0x01, F
	MOVF	r0x0a, W
	IORWF	r0x02, F
	MOVF	r0x0b, W
	IORWF	r0x03, F
; ;ic:124: 	iTemp107 [k137 lr124:125 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] = iTemp106 [k136 lr123:124 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] | ___fsmul_result_1_1 [k74 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}
	BANKSEL	___fsmul_result_1_1
	MOVF	___fsmul_result_1_1, W, B
	IORWF	r0x00, F
; removed redundant BANKSEL
	MOVF	(___fsmul_result_1_1 + 1), W, B
	IORWF	r0x01, F
; removed redundant BANKSEL
	MOVF	(___fsmul_result_1_1 + 2), W, B
	IORWF	r0x02, F
; removed redundant BANKSEL
	MOVF	(___fsmul_result_1_1 + 3), W, B
	IORWF	r0x03, F
; ;ic:125: 	*(iTemp102 [k132 lr114:125 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]) := iTemp107 [k137 lr124:125 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ]
	MOVF	r0x00, W
	BANKSEL	___fsmul_fl1_1_1
	MOVWF	___fsmul_fl1_1_1, B
	MOVF	r0x01, W
; removed redundant BANKSEL
	MOVWF	(___fsmul_fl1_1_1 + 1), B
	MOVF	r0x02, W
; removed redundant BANKSEL
	MOVWF	(___fsmul_fl1_1_1 + 2), B
	MOVF	r0x03, W
; removed redundant BANKSEL
	MOVWF	(___fsmul_fl1_1_1 + 3), B
; ;ic:126:  _ifend_3($12) :
; ;ic:127: 	iTemp108 [k138 lr127:128 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat] = &[___fsmul_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:128: 	iTemp110 [k141 lr128:129 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-float}{ sir@ ___fsmul_fl1_1_1} = @[iTemp108 [k138 lr127:128 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat]]
; ;ic:129: 	ret iTemp110 [k141 lr128:129 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-float}{ sir@ ___fsmul_fl1_1_1}
_00116_DS_:
;	.line	81; fsmul.c	return (fl1.f);
	MOVFF	(___fsmul_fl1_1_1 + 3), FSR0L
	MOVFF	(___fsmul_fl1_1_1 + 2), PRODH
	MOVFF	(___fsmul_fl1_1_1 + 1), PRODL
	BANKSEL	___fsmul_fl1_1_1
	MOVF	___fsmul_fl1_1_1, W, B
; ;ic:130:  _return($13) :
; ;ic:131: 	eproc ___fsmul [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
_00117_DS_:
	MOVFF	PREINC1, r0x0b
	MOVFF	PREINC1, r0x0a
	MOVFF	PREINC1, r0x08
	MOVFF	PREINC1, r0x07
	MOVFF	PREINC1, r0x06
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	



; Statistics:
; code size:	  968 (0x03c8) bytes ( 0.74%)
;           	  484 (0x01e4) words
; udata size:	   14 (0x000e) bytes ( 1.09%)
; access size:	   11 (0x000b) bytes


	end
