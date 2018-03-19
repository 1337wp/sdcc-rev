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
	global ___fsadd
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

udata_fsadd_0	udata
___fsadd_sign_1_1	res	4

udata_fsadd_1	udata
___fsadd_fl1_1_1	res	4

udata_fsadd_2	udata
___fsadd_fl2_1_1	res	4

udata_fsadd_3	udata
___fsadd_exp1_1_1	res	2

udata_fsadd_4	udata
___fsadd_exp2_1_1	res	2

udata_fsadd_5	udata
___fsadd_mant1_1_1	res	4

udata_fsadd_6	udata
___fsadd_mant2_1_1	res	4

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($30) :
; ;ic:2: 	proc ___fsadd [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
S_fsadd____fsadd	code
___fsadd:
;	.line	30; fsadd.c	float __fsadd (float a1, float a2) _FS_REENTRANT
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
; ;ic:3: iTemp0 [k2 lr3:7 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ ___fsadd_a1_1_1}[r0x00 r0x01 r0x02 r0x03 ] = recv ___fsadd [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
; ;ic:4: iTemp1 [k4 lr4:9 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ ___fsadd_a2_1_1}[r0x04 r0x05 r0x06 r0x07 ] = recv ___fsadd [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
	MOVLW	0x08
	MOVFF	PLUSW2, r0x06
	MOVLW	0x09
	MOVFF	PLUSW2, r0x07
; ;ic:5: 	___fsadd_sign_1_1 [k6 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int} := 0x0 {literal-volatile-unsigned-long-int}
	BANKSEL	___fsadd_sign_1_1
;	.line	35; fsadd.c	volatile unsigned long sign = 0;
	CLRF	___fsadd_sign_1_1, B
; removed redundant BANKSEL
	CLRF	(___fsadd_sign_1_1 + 1), B
; removed redundant BANKSEL
	CLRF	(___fsadd_sign_1_1 + 2), B
; removed redundant BANKSEL
	CLRF	(___fsadd_sign_1_1 + 3), B
; ;ic:6: 	iTemp2 [k8 lr6:7 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat] = &[___fsadd_fl1_1_1 [k7 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:7: 	*(iTemp2 [k8 lr6:7 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat]) := iTemp0 [k2 lr3:7 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ ___fsadd_a1_1_1}[r0x00 r0x01 r0x02 r0x03 ]
;	.line	37; fsadd.c	fl1.f = a1;
	MOVF	r0x00, W
	BANKSEL	___fsadd_fl1_1_1
	MOVWF	___fsadd_fl1_1_1, B
	MOVF	r0x01, W
; removed redundant BANKSEL
	MOVWF	(___fsadd_fl1_1_1 + 1), B
	MOVF	r0x02, W
; removed redundant BANKSEL
	MOVWF	(___fsadd_fl1_1_1 + 2), B
	MOVF	r0x03, W
; removed redundant BANKSEL
	MOVWF	(___fsadd_fl1_1_1 + 3), B
; ;ic:8: 	iTemp4 [k12 lr8:9 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat] = &[___fsadd_fl2_1_1 [k11 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:9: 	*(iTemp4 [k12 lr8:9 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat]) := iTemp1 [k4 lr4:9 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ ___fsadd_a2_1_1}[r0x04 r0x05 r0x06 r0x07 ]
;	.line	38; fsadd.c	fl2.f = a2;
	MOVF	r0x04, W
	BANKSEL	___fsadd_fl2_1_1
	MOVWF	___fsadd_fl2_1_1, B
	MOVF	r0x05, W
; removed redundant BANKSEL
	MOVWF	(___fsadd_fl2_1_1 + 1), B
	MOVF	r0x06, W
; removed redundant BANKSEL
	MOVWF	(___fsadd_fl2_1_1 + 2), B
	MOVF	r0x07, W
; removed redundant BANKSEL
	MOVWF	(___fsadd_fl2_1_1 + 3), B
; ;ic:10: 	iTemp6 [k15 lr10:11 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[___fsadd_fl1_1_1 [k7 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:11: 	iTemp8 [k18 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ ___fsadd_fl1_1_1} = @[iTemp6 [k15 lr10:11 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]]
; ;ic:12: 	if iTemp8 [k18 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ ___fsadd_fl1_1_1} != 0 goto _iffalse_0($2)
	BANKSEL	___fsadd_fl1_1_1
;	.line	41; fsadd.c	if (!fl1.l)
	MOVF	___fsadd_fl1_1_1, W, B
; removed redundant BANKSEL
	IORWF	(___fsadd_fl1_1_1 + 1), W, B
; removed redundant BANKSEL
	IORWF	(___fsadd_fl1_1_1 + 2), W, B
; removed redundant BANKSEL
	IORWF	(___fsadd_fl1_1_1 + 3), W, B
	BNZ	_00106_DS_
; ;ic:13: 	iTemp9 [k19 lr13:14 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat] = &[___fsadd_fl2_1_1 [k11 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:14: 	iTemp11 [k22 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-float}{ sir@ ___fsadd_fl2_1_1} = @[iTemp9 [k19 lr13:14 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat]]
; ;ic:15: 	ret iTemp11 [k22 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-float}{ sir@ ___fsadd_fl2_1_1}
;	.line	42; fsadd.c	return (fl2.f);
	MOVFF	(___fsadd_fl2_1_1 + 3), FSR0L
	MOVFF	(___fsadd_fl2_1_1 + 2), PRODH
	MOVFF	(___fsadd_fl2_1_1 + 1), PRODL
	BANKSEL	___fsadd_fl2_1_1
	MOVF	___fsadd_fl2_1_1, W, B
	BRA	_00133_DS_
; ;ic:16:  _iffalse_0($2) :
; ;ic:17: 	iTemp12 [k23 lr17:18 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[___fsadd_fl2_1_1 [k11 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:18: 	iTemp14 [k26 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ ___fsadd_fl2_1_1} = @[iTemp12 [k23 lr17:18 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]]
; ;ic:19: 	if iTemp14 [k26 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ ___fsadd_fl2_1_1} != 0 goto _iffalse_1($4)
_00106_DS_:
	BANKSEL	___fsadd_fl2_1_1
;	.line	43; fsadd.c	if (!fl2.l)
	MOVF	___fsadd_fl2_1_1, W, B
; removed redundant BANKSEL
	IORWF	(___fsadd_fl2_1_1 + 1), W, B
; removed redundant BANKSEL
	IORWF	(___fsadd_fl2_1_1 + 2), W, B
; removed redundant BANKSEL
	IORWF	(___fsadd_fl2_1_1 + 3), W, B
	BNZ	_00108_DS_
; ;ic:20: 	iTemp15 [k27 lr20:21 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat] = &[___fsadd_fl1_1_1 [k7 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:21: 	iTemp17 [k30 lr21:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-float}{ sir@ ___fsadd_fl1_1_1} = @[iTemp15 [k27 lr20:21 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat]]
; ;ic:22: 	ret iTemp17 [k30 lr21:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-float}{ sir@ ___fsadd_fl1_1_1}
;	.line	44; fsadd.c	return (fl1.f);
	MOVFF	(___fsadd_fl1_1_1 + 3), FSR0L
	MOVFF	(___fsadd_fl1_1_1 + 2), PRODH
	MOVFF	(___fsadd_fl1_1_1 + 1), PRODL
	BANKSEL	___fsadd_fl1_1_1
	MOVF	___fsadd_fl1_1_1, W, B
	BRA	_00133_DS_
; ;ic:23:  _iffalse_1($4) :
; ;ic:24: 	iTemp18 [k32 lr24:25 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[___fsadd_fl1_1_1 [k7 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:25: 	iTemp20 [k35 lr25:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ ___fsadd_fl1_1_1} = @[iTemp18 [k32 lr24:25 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]]
; ;ic:26: 	iTemp21 [k36 lr26:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] = iTemp20 [k35 lr25:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ ___fsadd_fl1_1_1} >> 0x17 {literal-unsigned-char}
_00108_DS_:
	BANKSEL	(___fsadd_fl1_1_1 + 2)
;	.line	46; fsadd.c	exp1 = EXP (fl1.l);
	RLCF	(___fsadd_fl1_1_1 + 2), W, B
; removed redundant BANKSEL
	RLCF	(___fsadd_fl1_1_1 + 3), W, B
	MOVWF	r0x00
	CLRF	r0x01
	RLCF	r0x01, F
	CLRF	r0x02
	CLRF	r0x03
; ;ic:27: 	iTemp22 [k37 lr27:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] = iTemp21 [k36 lr26:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] & 0xff {literal-unsigned-long-int}
	CLRF	r0x01
	CLRF	r0x02
	CLRF	r0x03
; ;ic:28: 	___fsadd_exp1_1_1 [k31 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-int} = (volatile-int)iTemp22 [k37 lr27:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ]
	MOVF	r0x00, W
	BANKSEL	___fsadd_exp1_1_1
	MOVWF	___fsadd_exp1_1_1, B
	MOVF	r0x01, W
; removed redundant BANKSEL
	MOVWF	(___fsadd_exp1_1_1 + 1), B
; ;ic:29: 	iTemp24 [k40 lr29:30 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[___fsadd_fl2_1_1 [k11 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:30: 	iTemp26 [k43 lr30:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ ___fsadd_fl2_1_1} = @[iTemp24 [k40 lr29:30 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]]
; ;ic:31: 	iTemp27 [k44 lr31:32 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] = iTemp26 [k43 lr30:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ ___fsadd_fl2_1_1} >> 0x17 {literal-unsigned-char}
	BANKSEL	(___fsadd_fl2_1_1 + 2)
;	.line	47; fsadd.c	exp2 = EXP (fl2.l);
	RLCF	(___fsadd_fl2_1_1 + 2), W, B
; removed redundant BANKSEL
	RLCF	(___fsadd_fl2_1_1 + 3), W, B
; ;ic:32: 	iTemp28 [k45 lr32:33 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] = iTemp27 [k44 lr31:32 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] & 0xff {literal-unsigned-long-int}
; ;ic:33: 	___fsadd_exp2_1_1 [k39 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-int} = (volatile-int)iTemp28 [k45 lr32:33 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ]
	BANKSEL	___fsadd_exp2_1_1
	MOVWF	___fsadd_exp2_1_1, B
; removed redundant BANKSEL
	CLRF	(___fsadd_exp2_1_1 + 1), B
; ;ic:34: 	iTemp30 [k47 lr34:35 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x00 r0x01 ] = ___fsadd_exp2_1_1 [k39 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-int} + 0x19 {literal-int}
; removed redundant BANKSEL
;	.line	49; fsadd.c	if (exp1 > exp2 + 25)
	MOVF	___fsadd_exp2_1_1, W, B
	ADDLW	0x19
	MOVWF	r0x00
	MOVLW	0x00
; removed redundant BANKSEL
	ADDWFC	(___fsadd_exp2_1_1 + 1), W, B
; #	MOVWF	r0x01
; #;;ic:35: 	iTemp31 [k48 lr35:36 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = ___fsadd_exp1_1_1 [k31 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-int} > iTemp30 [k47 lr34:35 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x00 r0x01 ]
; #	MOVF	r0x01, W
	ADDLW	0x80
	MOVWF	PRODL
	BANKSEL	(___fsadd_exp1_1_1 + 1)
	MOVF	(___fsadd_exp1_1_1 + 1), W, B
	ADDLW	0x80
	SUBWF	PRODL, W
	BNZ	_00151_DS_
; removed redundant BANKSEL
	MOVF	___fsadd_exp1_1_1, W, B
	SUBWF	r0x00, W
_00151_DS_:
	BC	_00110_DS_
; ;ic:36: 	if iTemp31 [k48 lr35:36 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_2($6)
; ;ic:37: 	iTemp32 [k49 lr37:38 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat] = &[___fsadd_fl1_1_1 [k7 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:38: 	iTemp34 [k52 lr38:39 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-float}{ sir@ ___fsadd_fl1_1_1} = @[iTemp32 [k49 lr37:38 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat]]
; ;ic:39: 	ret iTemp34 [k52 lr38:39 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-float}{ sir@ ___fsadd_fl1_1_1}
;	.line	50; fsadd.c	return (fl1.f);
	MOVFF	(___fsadd_fl1_1_1 + 3), FSR0L
	MOVFF	(___fsadd_fl1_1_1 + 2), PRODH
	MOVFF	(___fsadd_fl1_1_1 + 1), PRODL
	BANKSEL	___fsadd_fl1_1_1
	MOVF	___fsadd_fl1_1_1, W, B
	BRA	_00133_DS_
; ;ic:40:  _iffalse_2($6) :
; ;ic:41: 	iTemp35 [k53 lr41:42 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x00 r0x01 ] = ___fsadd_exp1_1_1 [k31 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-int} + 0x19 {literal-int}
_00110_DS_:
	BANKSEL	___fsadd_exp1_1_1
;	.line	51; fsadd.c	if (exp2 > exp1 + 25)
	MOVF	___fsadd_exp1_1_1, W, B
	ADDLW	0x19
	MOVWF	r0x00
	MOVLW	0x00
; removed redundant BANKSEL
	ADDWFC	(___fsadd_exp1_1_1 + 1), W, B
; #	MOVWF	r0x01
; #;;ic:42: 	iTemp36 [k54 lr42:43 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = ___fsadd_exp2_1_1 [k39 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-int} > iTemp35 [k53 lr41:42 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x00 r0x01 ]
; #	MOVF	r0x01, W
	ADDLW	0x80
	MOVWF	PRODL
	BANKSEL	(___fsadd_exp2_1_1 + 1)
	MOVF	(___fsadd_exp2_1_1 + 1), W, B
	ADDLW	0x80
	SUBWF	PRODL, W
	BNZ	_00152_DS_
; removed redundant BANKSEL
	MOVF	___fsadd_exp2_1_1, W, B
	SUBWF	r0x00, W
_00152_DS_:
	BC	_00112_DS_
; ;ic:43: 	if iTemp36 [k54 lr42:43 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_3($8)
; ;ic:44: 	iTemp37 [k55 lr44:45 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat] = &[___fsadd_fl2_1_1 [k11 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:45: 	iTemp39 [k58 lr45:46 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-float}{ sir@ ___fsadd_fl2_1_1} = @[iTemp37 [k55 lr44:45 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat]]
; ;ic:46: 	ret iTemp39 [k58 lr45:46 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-float}{ sir@ ___fsadd_fl2_1_1}
;	.line	52; fsadd.c	return (fl2.f);
	MOVFF	(___fsadd_fl2_1_1 + 3), FSR0L
	MOVFF	(___fsadd_fl2_1_1 + 2), PRODH
	MOVFF	(___fsadd_fl2_1_1 + 1), PRODL
	BANKSEL	___fsadd_fl2_1_1
	MOVF	___fsadd_fl2_1_1, W, B
	BRA	_00133_DS_
; ;ic:47:  _iffalse_3($8) :
; ;ic:48: 	iTemp40 [k60 lr48:49 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[___fsadd_fl1_1_1 [k7 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:49: 	iTemp42 [k63 lr49:50 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ ___fsadd_fl1_1_1} = @[iTemp40 [k60 lr48:49 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]]
; ;ic:50: 	iTemp43 [k64 lr50:51 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] = iTemp42 [k63 lr49:50 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ ___fsadd_fl1_1_1} & 0x7fffff {literal-unsigned-long-int}
_00112_DS_:
	BANKSEL	___fsadd_fl1_1_1
;	.line	54; fsadd.c	mant1 = MANT (fl1.l);
	MOVF	___fsadd_fl1_1_1, W, B
	MOVWF	r0x00
; removed redundant BANKSEL
	MOVF	(___fsadd_fl1_1_1 + 1), W, B
	MOVWF	r0x01
	MOVLW	0x7f
; removed redundant BANKSEL
	ANDWF	(___fsadd_fl1_1_1 + 2), W, B
	MOVWF	r0x02
; ;ic:51: 	___fsadd_mant1_1_1 [k59 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int} = iTemp43 [k64 lr50:51 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] | 0x800000 {literal-unsigned-long-int}
	MOVF	r0x00, W
	BANKSEL	___fsadd_mant1_1_1
	MOVWF	___fsadd_mant1_1_1, B
	MOVF	r0x01, W
; removed redundant BANKSEL
	MOVWF	(___fsadd_mant1_1_1 + 1), B
	MOVLW	0x80
	IORWF	r0x02, W
; removed redundant BANKSEL
	MOVWF	(___fsadd_mant1_1_1 + 2), B
; removed redundant BANKSEL
	CLRF	(___fsadd_mant1_1_1 + 3), B
; ;ic:52: 	iTemp46 [k68 lr52:53 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[___fsadd_fl2_1_1 [k11 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:53: 	iTemp48 [k71 lr53:54 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ ___fsadd_fl2_1_1} = @[iTemp46 [k68 lr52:53 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]]
; ;ic:54: 	iTemp49 [k72 lr54:55 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] = iTemp48 [k71 lr53:54 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ ___fsadd_fl2_1_1} & 0x7fffff {literal-unsigned-long-int}
	BANKSEL	___fsadd_fl2_1_1
;	.line	55; fsadd.c	mant2 = MANT (fl2.l);
	MOVF	___fsadd_fl2_1_1, W, B
	MOVWF	r0x00
; removed redundant BANKSEL
	MOVF	(___fsadd_fl2_1_1 + 1), W, B
	MOVWF	r0x01
	MOVLW	0x7f
; removed redundant BANKSEL
	ANDWF	(___fsadd_fl2_1_1 + 2), W, B
	MOVWF	r0x02
; ;ic:55: 	___fsadd_mant2_1_1 [k67 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int} = iTemp49 [k72 lr54:55 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] | 0x800000 {literal-unsigned-long-int}
	MOVF	r0x00, W
	BANKSEL	___fsadd_mant2_1_1
	MOVWF	___fsadd_mant2_1_1, B
	MOVF	r0x01, W
; removed redundant BANKSEL
	MOVWF	(___fsadd_mant2_1_1 + 1), B
	MOVLW	0x80
	IORWF	r0x02, W
; removed redundant BANKSEL
	MOVWF	(___fsadd_mant2_1_1 + 2), B
; removed redundant BANKSEL
	CLRF	(___fsadd_mant2_1_1 + 3), B
; ;ic:56: 	iTemp52 [k75 lr56:57 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[___fsadd_fl1_1_1 [k7 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:57: 	iTemp54 [k78 lr57:58 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ ___fsadd_fl1_1_1} = @[iTemp52 [k75 lr56:57 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]]
; ;ic:58: 	iTemp55 [k79 lr58:59 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] = iTemp54 [k78 lr57:58 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ ___fsadd_fl1_1_1} >> 0x1f {literal-unsigned-char}
	BANKSEL	(___fsadd_fl1_1_1 + 3)
;	.line	57; fsadd.c	if (SIGN (fl1.l))
	RLNCF	(___fsadd_fl1_1_1 + 3), W, B
	ANDLW	0x01
	MOVWF	r0x00
; ;ic:59: 	iTemp56 [k80 lr59:60 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int} = iTemp55 [k79 lr58:59 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] & 0x1 {literal-unsigned-long-int}
	BTFSS	r0x00, 0
	BRA	_00114_DS_
; ;ic:60: 	if iTemp56 [k80 lr59:60 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int} == 0 goto _iffalse_4($10)
; ;ic:61: 	___fsadd_mant1_1_1 [k59 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int} = - ___fsadd_mant1_1_1 [k59 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}
	BANKSEL	(___fsadd_mant1_1_1 + 3)
;	.line	58; fsadd.c	mant1 = -mant1;
	COMF	(___fsadd_mant1_1_1 + 3), F, B
; removed redundant BANKSEL
	COMF	(___fsadd_mant1_1_1 + 2), F, B
; removed redundant BANKSEL
	COMF	(___fsadd_mant1_1_1 + 1), F, B
; removed redundant BANKSEL
	NEGF	___fsadd_mant1_1_1, B
	BNZ	_00114_DS_
; removed redundant BANKSEL
	INCF	(___fsadd_mant1_1_1 + 1), F, B
	BNZ	_00114_DS_
; removed redundant BANKSEL
	INCF	(___fsadd_mant1_1_1 + 2), F, B
	BNZ	_10105_DS_
; removed redundant BANKSEL
	INCF	(___fsadd_mant1_1_1 + 3), F, B
_10105_DS_:
; ;ic:62:  _iffalse_4($10) :
; ;ic:63: 	iTemp58 [k82 lr63:64 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[___fsadd_fl2_1_1 [k11 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:64: 	iTemp60 [k85 lr64:65 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ ___fsadd_fl2_1_1} = @[iTemp58 [k82 lr63:64 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]]
; ;ic:65: 	iTemp61 [k86 lr65:66 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] = iTemp60 [k85 lr64:65 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ ___fsadd_fl2_1_1} >> 0x1f {literal-unsigned-char}
_00114_DS_:
	BANKSEL	(___fsadd_fl2_1_1 + 3)
;	.line	59; fsadd.c	if (SIGN (fl2.l))
	RLNCF	(___fsadd_fl2_1_1 + 3), W, B
	ANDLW	0x01
	MOVWF	r0x00
; ;ic:66: 	iTemp62 [k87 lr66:67 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int} = iTemp61 [k86 lr65:66 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] & 0x1 {literal-unsigned-long-int}
	BTFSS	r0x00, 0
	BRA	_00116_DS_
; ;ic:67: 	if iTemp62 [k87 lr66:67 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int} == 0 goto _iffalse_5($12)
; ;ic:68: 	___fsadd_mant2_1_1 [k67 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int} = - ___fsadd_mant2_1_1 [k67 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}
	BANKSEL	(___fsadd_mant2_1_1 + 3)
;	.line	60; fsadd.c	mant2 = -mant2;
	COMF	(___fsadd_mant2_1_1 + 3), F, B
; removed redundant BANKSEL
	COMF	(___fsadd_mant2_1_1 + 2), F, B
; removed redundant BANKSEL
	COMF	(___fsadd_mant2_1_1 + 1), F, B
; removed redundant BANKSEL
	NEGF	___fsadd_mant2_1_1, B
	BNZ	_00116_DS_
; removed redundant BANKSEL
	INCF	(___fsadd_mant2_1_1 + 1), F, B
	BNZ	_00116_DS_
; removed redundant BANKSEL
	INCF	(___fsadd_mant2_1_1 + 2), F, B
	BNZ	_20106_DS_
; removed redundant BANKSEL
	INCF	(___fsadd_mant2_1_1 + 3), F, B
_20106_DS_:
; ;ic:69:  _iffalse_5($12) :
; ;ic:70: 	iTemp64 [k89 lr70:71 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = ___fsadd_exp1_1_1 [k31 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-int} > ___fsadd_exp2_1_1 [k39 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-int}
_00116_DS_:
	BANKSEL	(___fsadd_exp2_1_1 + 1)
;	.line	62; fsadd.c	if (exp1 > exp2)
	MOVF	(___fsadd_exp2_1_1 + 1), W, B
	ADDLW	0x80
	MOVWF	PRODL
	BANKSEL	(___fsadd_exp1_1_1 + 1)
	MOVF	(___fsadd_exp1_1_1 + 1), W, B
	ADDLW	0x80
	SUBWF	PRODL, W
	BNZ	_00161_DS_
; removed redundant BANKSEL
	MOVF	___fsadd_exp1_1_1, W, B
	BANKSEL	___fsadd_exp2_1_1
	SUBWF	___fsadd_exp2_1_1, W, B
_00161_DS_:
	BC	_00118_DS_
; ;ic:71: 	if iTemp64 [k89 lr70:71 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_6($14)
; ;ic:72: 	iTemp65 [k90 lr72:73 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-int}[r0x00 r0x01 ] = ___fsadd_exp1_1_1 [k31 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-int} - ___fsadd_exp2_1_1 [k39 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-int}
	BANKSEL	___fsadd_exp2_1_1
;	.line	64; fsadd.c	mant2 >>= exp1 - exp2;
	MOVF	___fsadd_exp2_1_1, W, B
	BANKSEL	___fsadd_exp1_1_1
	SUBWF	___fsadd_exp1_1_1, W, B
	MOVWF	r0x00
	BANKSEL	(___fsadd_exp2_1_1 + 1)
	MOVF	(___fsadd_exp2_1_1 + 1), W, B
	BANKSEL	(___fsadd_exp1_1_1 + 1)
	SUBWFB	(___fsadd_exp1_1_1 + 1), W, B
; ;ic:73: 	___fsadd_mant2_1_1 [k67 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int} = ___fsadd_mant2_1_1 [k67 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int} >> iTemp65 [k90 lr72:73 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-int}[r0x00 r0x01 ]
	MOVF	r0x00, W
	BZ	_00162_DS_
	BN	_00165_DS_
	NEGF	WREG
	BCF	STATUS, 0
_00163_DS_:
	BANKSEL	(___fsadd_mant2_1_1 + 3)
	BTFSC	(___fsadd_mant2_1_1 + 3), 7, B
	BSF	STATUS, 0
; removed redundant BANKSEL
	RRCF	(___fsadd_mant2_1_1 + 3), F, B
; removed redundant BANKSEL
	RRCF	(___fsadd_mant2_1_1 + 2), F, B
; removed redundant BANKSEL
	RRCF	(___fsadd_mant2_1_1 + 1), F, B
; removed redundant BANKSEL
	RRCF	___fsadd_mant2_1_1, F, B
	ADDLW	0x01
	BNC	_00163_DS_
	BRA	_00119_DS_
_00165_DS_:
	BCF	STATUS, 0
_00164_DS_:
	BANKSEL	___fsadd_mant2_1_1
	RLCF	___fsadd_mant2_1_1, F, B
; removed redundant BANKSEL
	RLCF	(___fsadd_mant2_1_1 + 1), F, B
; removed redundant BANKSEL
	RLCF	(___fsadd_mant2_1_1 + 2), F, B
; removed redundant BANKSEL
	RLCF	(___fsadd_mant2_1_1 + 3), F, B
	ADDLW	0x01
	BNC	_00164_DS_
; ;ic:74: 	 goto _ifend_6($15)
_00162_DS_:
	BRA	_00119_DS_
; ;ic:75:  _iffalse_6($14) :
; ;ic:76: 	iTemp67 [k92 lr76:77 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-int}[r0x00 r0x01 ] = ___fsadd_exp2_1_1 [k39 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-int} - ___fsadd_exp1_1_1 [k31 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-int}
_00118_DS_:
	BANKSEL	___fsadd_exp1_1_1
;	.line	68; fsadd.c	mant1 >>= exp2 - exp1;
	MOVF	___fsadd_exp1_1_1, W, B
	BANKSEL	___fsadd_exp2_1_1
	SUBWF	___fsadd_exp2_1_1, W, B
	MOVWF	r0x00
	BANKSEL	(___fsadd_exp1_1_1 + 1)
	MOVF	(___fsadd_exp1_1_1 + 1), W, B
	BANKSEL	(___fsadd_exp2_1_1 + 1)
	SUBWFB	(___fsadd_exp2_1_1 + 1), W, B
; ;ic:77: 	___fsadd_mant1_1_1 [k59 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int} = ___fsadd_mant1_1_1 [k59 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int} >> iTemp67 [k92 lr76:77 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-int}[r0x00 r0x01 ]
	MOVF	r0x00, W
	BZ	_00166_DS_
	BN	_00169_DS_
	NEGF	WREG
	BCF	STATUS, 0
_00167_DS_:
	BANKSEL	(___fsadd_mant1_1_1 + 3)
	BTFSC	(___fsadd_mant1_1_1 + 3), 7, B
	BSF	STATUS, 0
; removed redundant BANKSEL
	RRCF	(___fsadd_mant1_1_1 + 3), F, B
; removed redundant BANKSEL
	RRCF	(___fsadd_mant1_1_1 + 2), F, B
; removed redundant BANKSEL
	RRCF	(___fsadd_mant1_1_1 + 1), F, B
; removed redundant BANKSEL
	RRCF	___fsadd_mant1_1_1, F, B
	ADDLW	0x01
	BNC	_00167_DS_
	BRA	_00166_DS_
_00169_DS_:
	BCF	STATUS, 0
_00168_DS_:
	BANKSEL	___fsadd_mant1_1_1
	RLCF	___fsadd_mant1_1_1, F, B
; removed redundant BANKSEL
	RLCF	(___fsadd_mant1_1_1 + 1), F, B
; removed redundant BANKSEL
	RLCF	(___fsadd_mant1_1_1 + 2), F, B
; removed redundant BANKSEL
	RLCF	(___fsadd_mant1_1_1 + 3), F, B
	ADDLW	0x01
	BNC	_00168_DS_
; ;ic:78: 	___fsadd_exp1_1_1 [k31 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-int} := ___fsadd_exp2_1_1 [k39 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-int}
_00166_DS_:
;	.line	69; fsadd.c	exp1 = exp2;
	MOVFF	___fsadd_exp2_1_1, ___fsadd_exp1_1_1
	MOVFF	(___fsadd_exp2_1_1 + 1), (___fsadd_exp1_1_1 + 1)
; ;ic:79:  _ifend_6($15) :
; ;ic:80: 	___fsadd_mant1_1_1 [k59 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int} = ___fsadd_mant1_1_1 [k59 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int} + ___fsadd_mant2_1_1 [k67 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}
_00119_DS_:
	BANKSEL	___fsadd_mant2_1_1
;	.line	71; fsadd.c	mant1 += mant2;
	MOVF	___fsadd_mant2_1_1, W, B
	BANKSEL	___fsadd_mant1_1_1
	ADDWF	___fsadd_mant1_1_1, F, B
	BANKSEL	(___fsadd_mant2_1_1 + 1)
	MOVF	(___fsadd_mant2_1_1 + 1), W, B
	BANKSEL	(___fsadd_mant1_1_1 + 1)
	ADDWFC	(___fsadd_mant1_1_1 + 1), F, B
	BANKSEL	(___fsadd_mant2_1_1 + 2)
	MOVF	(___fsadd_mant2_1_1 + 2), W, B
	BANKSEL	(___fsadd_mant1_1_1 + 2)
	ADDWFC	(___fsadd_mant1_1_1 + 2), F, B
	BANKSEL	(___fsadd_mant2_1_1 + 3)
	MOVF	(___fsadd_mant2_1_1 + 3), W, B
	BANKSEL	(___fsadd_mant1_1_1 + 3)
	ADDWFC	(___fsadd_mant1_1_1 + 3), F, B
; ;ic:81: 	iTemp70 [k95 lr81:82 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = ___fsadd_mant1_1_1 [k59 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int} < 0x0 {literal-volatile-long-int}
;	.line	73; fsadd.c	if (mant1 < 0)
	BSF	STATUS, 0
; removed redundant BANKSEL
	BTFSS	(___fsadd_mant1_1_1 + 3), 7, B
	BCF	STATUS, 0
	BNC	_00123_DS_
; ;ic:82: 	if iTemp70 [k95 lr81:82 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_8($19)
; ;ic:83: 	___fsadd_mant1_1_1 [k59 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int} = - ___fsadd_mant1_1_1 [k59 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}
; removed redundant BANKSEL
;	.line	75; fsadd.c	mant1 = -mant1;
	COMF	(___fsadd_mant1_1_1 + 3), F, B
; removed redundant BANKSEL
	COMF	(___fsadd_mant1_1_1 + 2), F, B
; removed redundant BANKSEL
	COMF	(___fsadd_mant1_1_1 + 1), F, B
; removed redundant BANKSEL
	NEGF	___fsadd_mant1_1_1, B
	BNZ	_00170_DS_
; removed redundant BANKSEL
	INCF	(___fsadd_mant1_1_1 + 1), F, B
	BNZ	_00170_DS_
; removed redundant BANKSEL
	INCF	(___fsadd_mant1_1_1 + 2), F, B
	BNZ	_30107_DS_
; removed redundant BANKSEL
	INCF	(___fsadd_mant1_1_1 + 3), F, B
_30107_DS_:
; ;ic:84: 	___fsadd_sign_1_1 [k6 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int} := 0x80000000 {literal-unsigned-long-int}
_00170_DS_:
	BANKSEL	___fsadd_sign_1_1
;	.line	76; fsadd.c	sign = SIGNBIT;
	CLRF	___fsadd_sign_1_1, B
; removed redundant BANKSEL
	CLRF	(___fsadd_sign_1_1 + 1), B
; removed redundant BANKSEL
	CLRF	(___fsadd_sign_1_1 + 2), B
	MOVLW	0x80
; removed redundant BANKSEL
	MOVWF	(___fsadd_sign_1_1 + 3), B
; ;ic:85: 	 goto _whilecontinue_0($21)
	BRA	_00125_DS_
; ;ic:86:  _iffalse_8($19) :
; ;ic:87: 	if ___fsadd_mant1_1_1 [k59 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int} != 0 goto _whilecontinue_0($21)
_00123_DS_:
	BANKSEL	___fsadd_mant1_1_1
;	.line	78; fsadd.c	else if (!mant1)
	MOVF	___fsadd_mant1_1_1, W, B
; removed redundant BANKSEL
	IORWF	(___fsadd_mant1_1_1 + 1), W, B
; removed redundant BANKSEL
	IORWF	(___fsadd_mant1_1_1 + 2), W, B
; removed redundant BANKSEL
	IORWF	(___fsadd_mant1_1_1 + 3), W, B
	BNZ	_00125_DS_
; ;ic:88: 	ret 0 {literal-float}
;	.line	79; fsadd.c	return (0);
	CLRF	FSR0L
	CLRF	PRODH
	CLRF	PRODL
	CLRF	WREG
	BRA	_00133_DS_
; ;ic:90:  _whilecontinue_0($21) :
; ;ic:91: 	iTemp72 [k97 lr91:92 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] := ___fsadd_mant1_1_1 [k59 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}
_00125_DS_:
;	.line	82; fsadd.c	while (mant1<HIDDEN) {
	MOVFF	___fsadd_mant1_1_1, r0x00
	MOVFF	(___fsadd_mant1_1_1 + 1), r0x01
	MOVFF	(___fsadd_mant1_1_1 + 2), r0x02
	MOVFF	(___fsadd_mant1_1_1 + 3), r0x03
; ;ic:92: 	iTemp73 [k98 lr92:93 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp72 [k97 lr91:92 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] < 0x800000 {literal-unsigned-long-int}
	MOVLW	0x00
	SUBWF	r0x03, W
	BNZ	_00171_DS_
	MOVLW	0x80
	SUBWF	r0x02, W
	BNZ	_00171_DS_
	MOVLW	0x00
	SUBWF	r0x01, W
	BNZ	_00171_DS_
	MOVLW	0x00
	SUBWF	r0x00, W
_00171_DS_:
	BC	_00130_DS_
; ;ic:93: 	if iTemp73 [k98 lr92:93 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _whilecontinue_1($26)
; ;ic:94: 	___fsadd_mant1_1_1 [k59 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int} = ___fsadd_mant1_1_1 [k59 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int} << 0x1 {literal-unsigned-char}
	BANKSEL	___fsadd_mant1_1_1
;	.line	83; fsadd.c	mant1 <<= 1;
	MOVF	___fsadd_mant1_1_1, W, B
	ADDWF	___fsadd_mant1_1_1, F, B
; removed redundant BANKSEL
	RLCF	(___fsadd_mant1_1_1 + 1), F, B
; removed redundant BANKSEL
	RLCF	(___fsadd_mant1_1_1 + 2), F, B
; removed redundant BANKSEL
	RLCF	(___fsadd_mant1_1_1 + 3), F, B
; ;ic:95: 	___fsadd_exp1_1_1 [k31 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-int} = ___fsadd_exp1_1_1 [k31 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-int} - 0x1 {literal-unsigned-char}
;	.line	84; fsadd.c	exp1--;
	MOVLW	0xff
	BANKSEL	___fsadd_exp1_1_1
	ADDWF	___fsadd_exp1_1_1, F, B
	BC	_40108_DS_
; removed redundant BANKSEL
	DECF	(___fsadd_exp1_1_1 + 1), F, B
_40108_DS_:
; ;ic:96: 	 goto _whilecontinue_0($21)
	BRA	_00125_DS_
; ;ic:98:  _whilecontinue_1($26) :
; ;ic:99: 	iTemp77 [k102 lr99:100 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] := ___fsadd_mant1_1_1 [k59 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}
_00130_DS_:
;	.line	88; fsadd.c	while (mant1 & 0xff000000) {
	MOVFF	___fsadd_mant1_1_1, r0x00
	MOVFF	(___fsadd_mant1_1_1 + 1), r0x01
	MOVFF	(___fsadd_mant1_1_1 + 2), r0x02
	MOVFF	(___fsadd_mant1_1_1 + 3), r0x03
; ;ic:100: 	iTemp78 [k103 lr100:101 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int} = iTemp77 [k102 lr99:100 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] & 0xff000000 {literal-unsigned-long-int}
	MOVF	r0x03, W
	BZ	_00132_DS_
; ;ic:101: 	if iTemp78 [k103 lr100:101 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int} == 0 goto _whilebreak_1($28)
; ;ic:102: 	iTemp79 [k104 lr102:103 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int} = ___fsadd_mant1_1_1 [k59 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int} & 0x1 {literal-volatile-long-int}
	BANKSEL	___fsadd_mant1_1_1
;	.line	89; fsadd.c	if (mant1&1)
	BTFSS	___fsadd_mant1_1_1, 0, B
	BRA	_00129_DS_
; ;ic:103: 	if iTemp79 [k104 lr102:103 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int} == 0 goto _iffalse_9($25)
; ;ic:104: 	___fsadd_mant1_1_1 [k59 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int} = ___fsadd_mant1_1_1 [k59 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int} + 0x2 {literal-volatile-long-int}
;	.line	90; fsadd.c	mant1 += 2;
	MOVLW	0x02
; removed redundant BANKSEL
	ADDWF	___fsadd_mant1_1_1, F, B
	MOVLW	0x00
; removed redundant BANKSEL
	ADDWFC	(___fsadd_mant1_1_1 + 1), F, B
; removed redundant BANKSEL
	ADDWFC	(___fsadd_mant1_1_1 + 2), F, B
; removed redundant BANKSEL
	ADDWFC	(___fsadd_mant1_1_1 + 3), F, B
; ;ic:105:  _iffalse_9($25) :
; ;ic:106: 	___fsadd_mant1_1_1 [k59 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int} = ___fsadd_mant1_1_1 [k59 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int} >> 0x1 {literal-unsigned-char}
_00129_DS_:
	BANKSEL	(___fsadd_mant1_1_1 + 3)
;	.line	91; fsadd.c	mant1 >>= 1 ;
	RLCF	(___fsadd_mant1_1_1 + 3), W, B
	RRCF	(___fsadd_mant1_1_1 + 3), F, B
; removed redundant BANKSEL
	RRCF	(___fsadd_mant1_1_1 + 2), F, B
; removed redundant BANKSEL
	RRCF	(___fsadd_mant1_1_1 + 1), F, B
; removed redundant BANKSEL
	RRCF	___fsadd_mant1_1_1, F, B
; ;ic:107: 	___fsadd_exp1_1_1 [k31 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-int} = ___fsadd_exp1_1_1 [k31 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-int} + 0x1 {literal-unsigned-char}
	BANKSEL	___fsadd_exp1_1_1
;	.line	92; fsadd.c	exp1++;
	INCF	___fsadd_exp1_1_1, F, B
	BNC	_50109_DS_
; removed redundant BANKSEL
	INCF	(___fsadd_exp1_1_1 + 1), F, B
_50109_DS_:
; ;ic:108: 	 goto _whilecontinue_1($26)
	BRA	_00130_DS_
; ;ic:109:  _whilebreak_1($28) :
; ;ic:110: 	___fsadd_mant1_1_1 [k59 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int} = ___fsadd_mant1_1_1 [k59 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int} & 0xff7fffff {literal-unsigned-long-int}
_00132_DS_:
	BANKSEL	(___fsadd_mant1_1_1 + 2)
;	.line	96; fsadd.c	mant1 &= ~HIDDEN;
	BCF	(___fsadd_mant1_1_1 + 2), 7
; ;ic:111: 	iTemp87 [k112 lr111:117 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[___fsadd_fl1_1_1 [k7 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:112: 	iTemp89 [k115 lr112:113 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] = (unsigned-long-int)___fsadd_exp1_1_1 [k31 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-int}
;	.line	99; fsadd.c	fl1.l = PACK (sign, (unsigned long) exp1, mant1);
	MOVFF	___fsadd_exp1_1_1, r0x00
	MOVFF	(___fsadd_exp1_1_1 + 1), r0x01
	CLRF	WREG
; ;ic:113: 	iTemp90 [k116 lr113:114 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x04 r0x05 r0x06 r0x07 ] = iTemp89 [k115 lr112:113 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] << 0x17 {literal-unsigned-char}
	RRCF	r0x01, W
	RRCF	r0x00, W
	MOVWF	r0x07
	CLRF	r0x06
	RRCF	r0x06, F
	CLRF	r0x04
	CLRF	r0x05
; ;ic:114: 	iTemp91 [k117 lr114:116 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] = ___fsadd_sign_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int} | iTemp90 [k116 lr113:114 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x04 r0x05 r0x06 r0x07 ]
	MOVF	r0x04, W
	BANKSEL	___fsadd_sign_1_1
	IORWF	___fsadd_sign_1_1, W, B
	MOVWF	r0x00
	MOVF	r0x05, W
; removed redundant BANKSEL
	IORWF	(___fsadd_sign_1_1 + 1), W, B
	MOVWF	r0x01
	MOVF	r0x06, W
; removed redundant BANKSEL
	IORWF	(___fsadd_sign_1_1 + 2), W, B
	MOVWF	r0x02
	MOVF	r0x07, W
; removed redundant BANKSEL
	IORWF	(___fsadd_sign_1_1 + 3), W, B
	MOVWF	r0x03
; ;ic:115: 	iTemp92 [k118 lr115:116 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x04 r0x05 r0x06 r0x07 ] := ___fsadd_mant1_1_1 [k59 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}
	MOVFF	___fsadd_mant1_1_1, r0x04
	MOVFF	(___fsadd_mant1_1_1 + 1), r0x05
	MOVFF	(___fsadd_mant1_1_1 + 2), r0x06
	MOVFF	(___fsadd_mant1_1_1 + 3), r0x07
; ;ic:116: 	iTemp93 [k119 lr116:117 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] = iTemp91 [k117 lr114:116 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] | iTemp92 [k118 lr115:116 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x04 r0x05 r0x06 r0x07 ]
	MOVF	r0x04, W
	IORWF	r0x00, F
	MOVF	r0x05, W
	IORWF	r0x01, F
	MOVF	r0x06, W
	IORWF	r0x02, F
	MOVF	r0x07, W
	IORWF	r0x03, F
; ;ic:117: 	*(iTemp87 [k112 lr111:117 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]) := iTemp93 [k119 lr116:117 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ]
	MOVF	r0x00, W
	BANKSEL	___fsadd_fl1_1_1
	MOVWF	___fsadd_fl1_1_1, B
	MOVF	r0x01, W
; removed redundant BANKSEL
	MOVWF	(___fsadd_fl1_1_1 + 1), B
	MOVF	r0x02, W
; removed redundant BANKSEL
	MOVWF	(___fsadd_fl1_1_1 + 2), B
	MOVF	r0x03, W
; removed redundant BANKSEL
	MOVWF	(___fsadd_fl1_1_1 + 3), B
; ;ic:118: 	iTemp94 [k120 lr118:119 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat] = &[___fsadd_fl1_1_1 [k7 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:119: 	iTemp96 [k123 lr119:120 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-float}{ sir@ ___fsadd_fl1_1_1} = @[iTemp94 [k120 lr118:119 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat]]
; ;ic:120: 	ret iTemp96 [k123 lr119:120 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-float}{ sir@ ___fsadd_fl1_1_1}
;	.line	101; fsadd.c	return (fl1.f);
	MOVFF	(___fsadd_fl1_1_1 + 3), FSR0L
	MOVFF	(___fsadd_fl1_1_1 + 2), PRODH
	MOVFF	(___fsadd_fl1_1_1 + 1), PRODL
; removed redundant BANKSEL
	MOVF	___fsadd_fl1_1_1, W, B
; ;ic:121:  _return($29) :
; ;ic:122: 	eproc ___fsadd [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
_00133_DS_:
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
; code size:	 1012 (0x03f4) bytes ( 0.77%)
;           	  506 (0x01fa) words
; udata size:	   24 (0x0018) bytes ( 1.88%)
; access size:	    8 (0x0008) bytes


	end
