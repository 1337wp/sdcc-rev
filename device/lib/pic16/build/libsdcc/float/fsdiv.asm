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
	global ___fsdiv
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

udata_fsdiv_0	udata
___fsdiv_exp_1_1	res	2

udata_fsdiv_1	udata
___fsdiv_fl1_1_1	res	4

udata_fsdiv_2	udata
___fsdiv_fl2_1_1	res	4

udata_fsdiv_3	udata
___fsdiv_mant1_1_1	res	4

udata_fsdiv_4	udata
___fsdiv_mant2_1_1	res	4

udata_fsdiv_5	udata
___fsdiv_mask_1_1	res	4

udata_fsdiv_6	udata
___fsdiv_result_1_1	res	4

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($19) :
; ;ic:2: 	proc ___fsdiv [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
S_fsdiv____fsdiv	code
___fsdiv:
;	.line	32; fsdiv.c	float __fsdiv (float a1, float a2) _FS_REENTRANT
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
; ;ic:3: iTemp0 [k2 lr3:6 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ ___fsdiv_a1_1_1}[r0x00 r0x01 r0x02 r0x03 ] = recv ___fsdiv [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
; ;ic:4: iTemp1 [k4 lr4:8 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ ___fsdiv_a2_1_1}[r0x04 r0x05 r0x06 r0x07 ] = recv ___fsdiv [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
	MOVLW	0x08
	MOVFF	PLUSW2, r0x06
	MOVLW	0x09
	MOVFF	PLUSW2, r0x07
; ;ic:5: 	iTemp2 [k7 lr5:6 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat] = &[___fsdiv_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:6: 	*(iTemp2 [k7 lr5:6 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat]) := iTemp0 [k2 lr3:6 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ ___fsdiv_a1_1_1}[r0x00 r0x01 r0x02 r0x03 ]
;	.line	41; fsdiv.c	fl1.f = a1;
	MOVF	r0x00, W
	BANKSEL	___fsdiv_fl1_1_1
	MOVWF	___fsdiv_fl1_1_1, B
	MOVF	r0x01, W
; removed redundant BANKSEL
	MOVWF	(___fsdiv_fl1_1_1 + 1), B
	MOVF	r0x02, W
; removed redundant BANKSEL
	MOVWF	(___fsdiv_fl1_1_1 + 2), B
	MOVF	r0x03, W
; removed redundant BANKSEL
	MOVWF	(___fsdiv_fl1_1_1 + 3), B
; ;ic:7: 	iTemp4 [k11 lr7:8 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat] = &[___fsdiv_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:8: 	*(iTemp4 [k11 lr7:8 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat]) := iTemp1 [k4 lr4:8 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ ___fsdiv_a2_1_1}[r0x04 r0x05 r0x06 r0x07 ]
;	.line	42; fsdiv.c	fl2.f = a2;
	MOVF	r0x04, W
	BANKSEL	___fsdiv_fl2_1_1
	MOVWF	___fsdiv_fl2_1_1, B
	MOVF	r0x05, W
; removed redundant BANKSEL
	MOVWF	(___fsdiv_fl2_1_1 + 1), B
	MOVF	r0x06, W
; removed redundant BANKSEL
	MOVWF	(___fsdiv_fl2_1_1 + 2), B
	MOVF	r0x07, W
; removed redundant BANKSEL
	MOVWF	(___fsdiv_fl2_1_1 + 3), B
; ;ic:9: 	iTemp6 [k15 lr9:10 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat] = &[___fsdiv_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:10: 	iTemp9 [k19 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fsdiv_fl1_1_1} = @[iTemp6 [k15 lr9:10 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat]]
; ;ic:11: 	iTemp10 [k20 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] = iTemp9 [k19 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fsdiv_fl1_1_1} >> 0x17 {literal-unsigned-char}
	BANKSEL	(___fsdiv_fl1_1_1 + 2)
;	.line	45; fsdiv.c	exp = EXP (fl1.l) ;
	RLCF	(___fsdiv_fl1_1_1 + 2), W, B
; removed redundant BANKSEL
	RLCF	(___fsdiv_fl1_1_1 + 3), W, B
	MOVWF	r0x00
	CLRF	r0x01
	RLCF	r0x01, F
	CLRF	r0x02
	CLRF	r0x03
; ;ic:12: 	iTemp11 [k21 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] = iTemp10 [k20 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] & 0xff {literal-unsigned-long-int}
	CLRF	r0x01
	CLRF	r0x02
	CLRF	r0x03
; ;ic:13: 	___fsdiv_exp_1_1 [k14 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-int} = (volatile-int)iTemp11 [k21 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ]
	MOVF	r0x00, W
	BANKSEL	___fsdiv_exp_1_1
	MOVWF	___fsdiv_exp_1_1, B
	MOVF	r0x01, W
; removed redundant BANKSEL
	MOVWF	(___fsdiv_exp_1_1 + 1), B
; ;ic:14: 	iTemp13 [k23 lr14:15 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat] = &[___fsdiv_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:15: 	iTemp16 [k27 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fsdiv_fl2_1_1} = @[iTemp13 [k23 lr14:15 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat]]
; ;ic:16: 	iTemp17 [k28 lr16:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] = iTemp16 [k27 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fsdiv_fl2_1_1} >> 0x17 {literal-unsigned-char}
	BANKSEL	(___fsdiv_fl2_1_1 + 2)
;	.line	46; fsdiv.c	exp -= EXP (fl2.l);
	RLCF	(___fsdiv_fl2_1_1 + 2), W, B
; removed redundant BANKSEL
	RLCF	(___fsdiv_fl2_1_1 + 3), W, B
; ;ic:17: 	iTemp18 [k29 lr17:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] = iTemp17 [k28 lr16:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] & 0xff {literal-unsigned-long-int}
; ;ic:18: 	iTemp19 [k30 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x04 r0x05 r0x06 r0x07 ] = (unsigned-long-int)___fsdiv_exp_1_1 [k14 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-int}
	MOVFF	___fsdiv_exp_1_1, r0x04
	MOVFF	(___fsdiv_exp_1_1 + 1), r0x05
; ;ic:19: 	iTemp20 [k31 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] = iTemp19 [k30 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x04 r0x05 r0x06 r0x07 ] - iTemp18 [k29 lr17:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ]
	SUBWF	r0x04, W
	MOVWF	r0x00
	MOVF	r0x01, W
	SUBWFB	r0x05, W
	MOVWF	r0x01
; ;ic:20: 	___fsdiv_exp_1_1 [k14 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-int} = (volatile-int)iTemp20 [k31 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ]
	MOVF	r0x00, W
	BANKSEL	___fsdiv_exp_1_1
	MOVWF	___fsdiv_exp_1_1, B
	MOVF	r0x01, W
; removed redundant BANKSEL
	MOVWF	(___fsdiv_exp_1_1 + 1), B
; ;ic:21: 	___fsdiv_exp_1_1 [k14 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-int} = ___fsdiv_exp_1_1 [k14 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-int} + 0x7e {literal-int}
;	.line	47; fsdiv.c	exp += EXCESS;
	MOVLW	0x7e
; removed redundant BANKSEL
	ADDWF	___fsdiv_exp_1_1, F, B
	BNC	_10105_DS_
; removed redundant BANKSEL
	INCF	(___fsdiv_exp_1_1 + 1), F, B
_10105_DS_:
; ;ic:22: 	iTemp24 [k36 lr22:23 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat] = &[___fsdiv_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:23: 	iTemp27 [k40 lr23:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fsdiv_fl1_1_1} = @[iTemp24 [k36 lr22:23 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat]]
; ;ic:24: 	iTemp28 [k41 lr24:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] = iTemp27 [k40 lr23:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fsdiv_fl1_1_1} >> 0x1f {literal-unsigned-char}
	BANKSEL	(___fsdiv_fl1_1_1 + 3)
;	.line	50; fsdiv.c	sign = SIGN (fl1.l) ^ SIGN (fl2.l);
	RLNCF	(___fsdiv_fl1_1_1 + 3), W, B
	ANDLW	0x01
	MOVWF	r0x00
; ;ic:25: 	iTemp29 [k42 lr25:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] = iTemp28 [k41 lr24:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] & 0x1 {literal-unsigned-long-int}
	MOVLW	0x01
	ANDWF	r0x00, F
; ;ic:26: 	iTemp30 [k43 lr26:27 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat] = &[___fsdiv_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:27: 	iTemp33 [k47 lr27:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fsdiv_fl2_1_1} = @[iTemp30 [k43 lr26:27 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat]]
; ;ic:28: 	iTemp34 [k48 lr28:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x04 r0x05 r0x06 r0x07 ] = iTemp33 [k47 lr27:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fsdiv_fl2_1_1} >> 0x1f {literal-unsigned-char}
	BANKSEL	(___fsdiv_fl2_1_1 + 3)
	RLNCF	(___fsdiv_fl2_1_1 + 3), W, B
	ANDLW	0x01
	MOVWF	r0x04
; ;ic:29: 	iTemp35 [k49 lr29:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x04 r0x05 r0x06 r0x07 ] = iTemp34 [k48 lr28:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x04 r0x05 r0x06 r0x07 ] & 0x1 {literal-unsigned-long-int}
	MOVLW	0x01
	ANDWF	r0x04, F
; ;ic:30: 	iTemp36 [k50 lr30:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] = iTemp29 [k42 lr25:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] ^ iTemp35 [k49 lr29:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x04 r0x05 r0x06 r0x07 ]
	MOVF	r0x04, W
	XORWF	r0x00, F
; ;ic:31: 	iTemp23 [k34 lr31:97 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ ___fsdiv_sign_1_1}[r0x00 ] = (char)iTemp36 [k50 lr30:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ]
; ;ic:32: 	iTemp38 [k52 lr32:33 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat] = &[___fsdiv_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:33: 	iTemp40 [k55 lr33:34 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}{ sir@ ___fsdiv_fl2_1_1} = @[iTemp38 [k52 lr32:33 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat]]
; ;ic:34: 	if iTemp40 [k55 lr33:34 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}{ sir@ ___fsdiv_fl2_1_1} != 0 goto _iffalse_0($2)
; removed redundant BANKSEL
;	.line	53; fsdiv.c	if (!fl2.l)
	MOVF	___fsdiv_fl2_1_1, W, B
; removed redundant BANKSEL
	IORWF	(___fsdiv_fl2_1_1 + 1), W, B
; removed redundant BANKSEL
	IORWF	(___fsdiv_fl2_1_1 + 2), W, B
; removed redundant BANKSEL
	IORWF	(___fsdiv_fl2_1_1 + 3), W, B
	BNZ	_00106_DS_
; ;ic:35: 	iTemp41 [k56 lr35:36 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat] = &[___fsdiv_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:36: 	*(iTemp41 [k56 lr35:36 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat]) := 0x7fc00000 {literal-long-int}
; removed redundant BANKSEL
;	.line	55; fsdiv.c	fl2.l = 0x7FC00000;
	CLRF	___fsdiv_fl2_1_1, B
; removed redundant BANKSEL
	CLRF	(___fsdiv_fl2_1_1 + 1), B
	MOVLW	0xc0
; removed redundant BANKSEL
	MOVWF	(___fsdiv_fl2_1_1 + 2), B
	MOVLW	0x7f
; removed redundant BANKSEL
	MOVWF	(___fsdiv_fl2_1_1 + 3), B
; ;ic:37: 	iTemp43 [k59 lr37:38 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat] = &[___fsdiv_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:38: 	iTemp45 [k62 lr38:39 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-float}{ sir@ ___fsdiv_fl2_1_1} = @[iTemp43 [k59 lr37:38 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat]]
; ;ic:39: 	ret iTemp45 [k62 lr38:39 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-float}{ sir@ ___fsdiv_fl2_1_1}
;	.line	56; fsdiv.c	return (fl2.f);
	MOVFF	(___fsdiv_fl2_1_1 + 3), FSR0L
	MOVFF	(___fsdiv_fl2_1_1 + 2), PRODH
	MOVFF	(___fsdiv_fl2_1_1 + 1), PRODL
; removed redundant BANKSEL
	MOVF	___fsdiv_fl2_1_1, W, B
	BRA	_00122_DS_
; ;ic:40:  _iffalse_0($2) :
; ;ic:41: 	iTemp46 [k63 lr41:42 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat] = &[___fsdiv_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:42: 	iTemp48 [k66 lr42:43 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}{ sir@ ___fsdiv_fl1_1_1} = @[iTemp46 [k63 lr41:42 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat]]
; ;ic:43: 	if iTemp48 [k66 lr42:43 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}{ sir@ ___fsdiv_fl1_1_1} != 0 goto _iffalse_1($4)
_00106_DS_:
	BANKSEL	___fsdiv_fl1_1_1
;	.line	60; fsdiv.c	if (!fl1.l)
	MOVF	___fsdiv_fl1_1_1, W, B
; removed redundant BANKSEL
	IORWF	(___fsdiv_fl1_1_1 + 1), W, B
; removed redundant BANKSEL
	IORWF	(___fsdiv_fl1_1_1 + 2), W, B
; removed redundant BANKSEL
	IORWF	(___fsdiv_fl1_1_1 + 3), W, B
	BNZ	_00108_DS_
; ;ic:44: 	ret 0 {literal-float}
;	.line	61; fsdiv.c	return (0);
	CLRF	FSR0L
	CLRF	PRODH
	CLRF	PRODL
	CLRF	WREG
	BRA	_00122_DS_
; ;ic:45:  _iffalse_1($4) :
; ;ic:46: 	iTemp49 [k68 lr46:47 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat] = &[___fsdiv_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:47: 	iTemp51 [k71 lr47:48 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}{ sir@ ___fsdiv_fl1_1_1} = @[iTemp49 [k68 lr46:47 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat]]
; ;ic:48: 	iTemp53 [k73 lr48:49 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x01 r0x02 r0x03 r0x04 ] = iTemp51 [k71 lr47:48 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}{ sir@ ___fsdiv_fl1_1_1} & 0x7fffff {literal-unsigned-long-int}
_00108_DS_:
	BANKSEL	___fsdiv_fl1_1_1
;	.line	64; fsdiv.c	mant1 = MANT (fl1.l);
	MOVF	___fsdiv_fl1_1_1, W, B
	MOVWF	r0x01
; removed redundant BANKSEL
	MOVF	(___fsdiv_fl1_1_1 + 1), W, B
	MOVWF	r0x02
	MOVLW	0x7f
; removed redundant BANKSEL
	ANDWF	(___fsdiv_fl1_1_1 + 2), W, B
	MOVWF	r0x03
; ;ic:49: 	___fsdiv_mant1_1_1 [k67 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int} = iTemp53 [k73 lr48:49 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x01 r0x02 r0x03 r0x04 ] | 0x800000 {literal-unsigned-long-int}
	MOVF	r0x01, W
	BANKSEL	___fsdiv_mant1_1_1
	MOVWF	___fsdiv_mant1_1_1, B
	MOVF	r0x02, W
; removed redundant BANKSEL
	MOVWF	(___fsdiv_mant1_1_1 + 1), B
	MOVLW	0x80
	IORWF	r0x03, W
; removed redundant BANKSEL
	MOVWF	(___fsdiv_mant1_1_1 + 2), B
; removed redundant BANKSEL
	CLRF	(___fsdiv_mant1_1_1 + 3), B
; ;ic:50: 	iTemp56 [k77 lr50:51 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat] = &[___fsdiv_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:51: 	iTemp58 [k80 lr51:52 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}{ sir@ ___fsdiv_fl2_1_1} = @[iTemp56 [k77 lr50:51 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat]]
; ;ic:52: 	iTemp60 [k82 lr52:53 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x01 r0x02 r0x03 r0x04 ] = iTemp58 [k80 lr51:52 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}{ sir@ ___fsdiv_fl2_1_1} & 0x7fffff {literal-unsigned-long-int}
	BANKSEL	___fsdiv_fl2_1_1
;	.line	65; fsdiv.c	mant2 = MANT (fl2.l);
	MOVF	___fsdiv_fl2_1_1, W, B
	MOVWF	r0x01
; removed redundant BANKSEL
	MOVF	(___fsdiv_fl2_1_1 + 1), W, B
	MOVWF	r0x02
	MOVLW	0x7f
; removed redundant BANKSEL
	ANDWF	(___fsdiv_fl2_1_1 + 2), W, B
	MOVWF	r0x03
; ;ic:53: 	___fsdiv_mant2_1_1 [k76 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int} = iTemp60 [k82 lr52:53 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x01 r0x02 r0x03 r0x04 ] | 0x800000 {literal-unsigned-long-int}
	MOVF	r0x01, W
	BANKSEL	___fsdiv_mant2_1_1
	MOVWF	___fsdiv_mant2_1_1, B
	MOVF	r0x02, W
; removed redundant BANKSEL
	MOVWF	(___fsdiv_mant2_1_1 + 1), B
	MOVLW	0x80
	IORWF	r0x03, W
; removed redundant BANKSEL
	MOVWF	(___fsdiv_mant2_1_1 + 2), B
; removed redundant BANKSEL
	CLRF	(___fsdiv_mant2_1_1 + 3), B
; ;ic:54: 	iTemp63 [k85 lr54:55 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = ___fsdiv_mant1_1_1 [k67 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int} < ___fsdiv_mant2_1_1 [k76 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}
	BANKSEL	(___fsdiv_mant1_1_1 + 3)
;	.line	68; fsdiv.c	if (mant1 < mant2)
	MOVF	(___fsdiv_mant1_1_1 + 3), W, B
	ADDLW	0x80
	MOVWF	PRODL
	BANKSEL	(___fsdiv_mant2_1_1 + 3)
	MOVF	(___fsdiv_mant2_1_1 + 3), W, B
	ADDLW	0x80
	SUBWF	PRODL, W
	BNZ	_00147_DS_
; removed redundant BANKSEL
	MOVF	(___fsdiv_mant2_1_1 + 2), W, B
	BANKSEL	(___fsdiv_mant1_1_1 + 2)
	SUBWF	(___fsdiv_mant1_1_1 + 2), W, B
	BNZ	_00147_DS_
	BANKSEL	(___fsdiv_mant2_1_1 + 1)
	MOVF	(___fsdiv_mant2_1_1 + 1), W, B
	BANKSEL	(___fsdiv_mant1_1_1 + 1)
	SUBWF	(___fsdiv_mant1_1_1 + 1), W, B
	BNZ	_00147_DS_
	BANKSEL	___fsdiv_mant2_1_1
	MOVF	___fsdiv_mant2_1_1, W, B
	BANKSEL	___fsdiv_mant1_1_1
	SUBWF	___fsdiv_mant1_1_1, W, B
_00147_DS_:
	BC	_00110_DS_
; ;ic:55: 	if iTemp63 [k85 lr54:55 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_2($6)
; ;ic:56: 	___fsdiv_mant1_1_1 [k67 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int} = ___fsdiv_mant1_1_1 [k67 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int} << 0x1 {literal-unsigned-char}
	BANKSEL	___fsdiv_mant1_1_1
;	.line	70; fsdiv.c	mant1 <<= 1;
	MOVF	___fsdiv_mant1_1_1, W, B
	ADDWF	___fsdiv_mant1_1_1, F, B
; removed redundant BANKSEL
	RLCF	(___fsdiv_mant1_1_1 + 1), F, B
; removed redundant BANKSEL
	RLCF	(___fsdiv_mant1_1_1 + 2), F, B
; removed redundant BANKSEL
	RLCF	(___fsdiv_mant1_1_1 + 3), F, B
; ;ic:57: 	___fsdiv_exp_1_1 [k14 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-int} = ___fsdiv_exp_1_1 [k14 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-int} - 0x1 {literal-unsigned-char}
;	.line	71; fsdiv.c	exp--;
	MOVLW	0xff
	BANKSEL	___fsdiv_exp_1_1
	ADDWF	___fsdiv_exp_1_1, F, B
	BC	_20106_DS_
; removed redundant BANKSEL
	DECF	(___fsdiv_exp_1_1 + 1), F, B
_20106_DS_:
; ;ic:58:  _iffalse_2($6) :
; ;ic:59: 	___fsdiv_mask_1_1 [k89 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int} := 0x1000000 {literal-volatile-unsigned-long-int}
_00110_DS_:
	BANKSEL	___fsdiv_mask_1_1
;	.line	75; fsdiv.c	mask = 0x1000000;
	CLRF	___fsdiv_mask_1_1, B
; removed redundant BANKSEL
	CLRF	(___fsdiv_mask_1_1 + 1), B
; removed redundant BANKSEL
	CLRF	(___fsdiv_mask_1_1 + 2), B
	MOVLW	0x01
; removed redundant BANKSEL
	MOVWF	(___fsdiv_mask_1_1 + 3), B
; ;ic:60: 	___fsdiv_result_1_1 [k90 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int} := 0x0 {literal-volatile-long-int}
	BANKSEL	___fsdiv_result_1_1
;	.line	76; fsdiv.c	result = 0;
	CLRF	___fsdiv_result_1_1, B
; removed redundant BANKSEL
	CLRF	(___fsdiv_result_1_1 + 1), B
; removed redundant BANKSEL
	CLRF	(___fsdiv_result_1_1 + 2), B
; removed redundant BANKSEL
	CLRF	(___fsdiv_result_1_1 + 3), B
; ;ic:62:  _whilecontinue_0($9) :
; ;ic:63: 	if ___fsdiv_mask_1_1 [k89 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int} == 0 goto _whilebreak_0($11)
_00113_DS_:
	BANKSEL	___fsdiv_mask_1_1
;	.line	77; fsdiv.c	while (mask)
	MOVF	___fsdiv_mask_1_1, W, B
; removed redundant BANKSEL
	IORWF	(___fsdiv_mask_1_1 + 1), W, B
; removed redundant BANKSEL
	IORWF	(___fsdiv_mask_1_1 + 2), W, B
; removed redundant BANKSEL
	IORWF	(___fsdiv_mask_1_1 + 3), W, B
	BTFSC	STATUS, 2
	BRA	_00115_DS_
; ;ic:64: 	iTemp67 [k91 lr64:65 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = ___fsdiv_mant1_1_1 [k67 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int} < ___fsdiv_mant2_1_1 [k76 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}
	BANKSEL	(___fsdiv_mant1_1_1 + 3)
;	.line	79; fsdiv.c	if (mant1 >= mant2)
	MOVF	(___fsdiv_mant1_1_1 + 3), W, B
	ADDLW	0x80
	MOVWF	PRODL
	BANKSEL	(___fsdiv_mant2_1_1 + 3)
	MOVF	(___fsdiv_mant2_1_1 + 3), W, B
	ADDLW	0x80
	SUBWF	PRODL, W
	BNZ	_00148_DS_
; removed redundant BANKSEL
	MOVF	(___fsdiv_mant2_1_1 + 2), W, B
	BANKSEL	(___fsdiv_mant1_1_1 + 2)
	SUBWF	(___fsdiv_mant1_1_1 + 2), W, B
	BNZ	_00148_DS_
	BANKSEL	(___fsdiv_mant2_1_1 + 1)
	MOVF	(___fsdiv_mant2_1_1 + 1), W, B
	BANKSEL	(___fsdiv_mant1_1_1 + 1)
	SUBWF	(___fsdiv_mant1_1_1 + 1), W, B
	BNZ	_00148_DS_
	BANKSEL	___fsdiv_mant2_1_1
	MOVF	___fsdiv_mant2_1_1, W, B
	BANKSEL	___fsdiv_mant1_1_1
	SUBWF	___fsdiv_mant1_1_1, W, B
_00148_DS_:
	BNC	_00112_DS_
; ;ic:65: 	if iTemp67 [k91 lr64:65 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} != 0 goto _iffalse_3($8)
; ;ic:66: 	___fsdiv_result_1_1 [k90 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int} = ___fsdiv_result_1_1 [k90 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int} | ___fsdiv_mask_1_1 [k89 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}
	BANKSEL	___fsdiv_mask_1_1
;	.line	81; fsdiv.c	result |= mask;
	MOVF	___fsdiv_mask_1_1, W, B
	BANKSEL	___fsdiv_result_1_1
	IORWF	___fsdiv_result_1_1, F, B
	BANKSEL	(___fsdiv_mask_1_1 + 1)
	MOVF	(___fsdiv_mask_1_1 + 1), W, B
	BANKSEL	(___fsdiv_result_1_1 + 1)
	IORWF	(___fsdiv_result_1_1 + 1), F, B
	BANKSEL	(___fsdiv_mask_1_1 + 2)
	MOVF	(___fsdiv_mask_1_1 + 2), W, B
	BANKSEL	(___fsdiv_result_1_1 + 2)
	IORWF	(___fsdiv_result_1_1 + 2), F, B
	BANKSEL	(___fsdiv_mask_1_1 + 3)
	MOVF	(___fsdiv_mask_1_1 + 3), W, B
	BANKSEL	(___fsdiv_result_1_1 + 3)
	IORWF	(___fsdiv_result_1_1 + 3), F, B
; ;ic:67: 	___fsdiv_mant1_1_1 [k67 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int} = ___fsdiv_mant1_1_1 [k67 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int} - ___fsdiv_mant2_1_1 [k76 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}
	BANKSEL	___fsdiv_mant2_1_1
;	.line	82; fsdiv.c	mant1 -= mant2;
	MOVF	___fsdiv_mant2_1_1, W, B
	BANKSEL	___fsdiv_mant1_1_1
	SUBWF	___fsdiv_mant1_1_1, F, B
	BANKSEL	(___fsdiv_mant2_1_1 + 1)
	MOVF	(___fsdiv_mant2_1_1 + 1), W, B
	BANKSEL	(___fsdiv_mant1_1_1 + 1)
	SUBWFB	(___fsdiv_mant1_1_1 + 1), F, B
	BANKSEL	(___fsdiv_mant2_1_1 + 2)
	MOVF	(___fsdiv_mant2_1_1 + 2), W, B
	BANKSEL	(___fsdiv_mant1_1_1 + 2)
	SUBWFB	(___fsdiv_mant1_1_1 + 2), F, B
	BANKSEL	(___fsdiv_mant2_1_1 + 3)
	MOVF	(___fsdiv_mant2_1_1 + 3), W, B
	BANKSEL	(___fsdiv_mant1_1_1 + 3)
	SUBWFB	(___fsdiv_mant1_1_1 + 3), F, B
; ;ic:68:  _iffalse_3($8) :
; ;ic:69: 	___fsdiv_mant1_1_1 [k67 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int} = ___fsdiv_mant1_1_1 [k67 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int} << 0x1 {literal-unsigned-char}
_00112_DS_:
	BANKSEL	___fsdiv_mant1_1_1
;	.line	84; fsdiv.c	mant1 <<= 1;
	MOVF	___fsdiv_mant1_1_1, W, B
	ADDWF	___fsdiv_mant1_1_1, F, B
; removed redundant BANKSEL
	RLCF	(___fsdiv_mant1_1_1 + 1), F, B
; removed redundant BANKSEL
	RLCF	(___fsdiv_mant1_1_1 + 2), F, B
; removed redundant BANKSEL
	RLCF	(___fsdiv_mant1_1_1 + 3), F, B
; ;ic:70: 	___fsdiv_mask_1_1 [k89 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int} = ___fsdiv_mask_1_1 [k89 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int} >> 0x1 {literal-unsigned-char}
;	.line	85; fsdiv.c	mask >>= 1;
	BCF	STATUS, 0
	BANKSEL	(___fsdiv_mask_1_1 + 3)
	RRCF	(___fsdiv_mask_1_1 + 3), F, B
; removed redundant BANKSEL
	RRCF	(___fsdiv_mask_1_1 + 2), F, B
; removed redundant BANKSEL
	RRCF	(___fsdiv_mask_1_1 + 1), F, B
; removed redundant BANKSEL
	RRCF	___fsdiv_mask_1_1, F, B
; ;ic:71: 	 goto _whilecontinue_0($9)
	BRA	_00113_DS_
; ;ic:72:  _whilebreak_0($11) :
; ;ic:73: 	___fsdiv_result_1_1 [k90 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int} = ___fsdiv_result_1_1 [k90 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int} + 0x1 {literal-volatile-long-int}
_00115_DS_:
	BANKSEL	___fsdiv_result_1_1
;	.line	89; fsdiv.c	result += 1;
	INCF	___fsdiv_result_1_1, F, B
	BNC	_30107_DS_
; removed redundant BANKSEL
	INCF	(___fsdiv_result_1_1 + 1), F, B
_30107_DS_:
	BNC	_40108_DS_
	BANKSEL	(___fsdiv_result_1_1 + 2)
	INCF	(___fsdiv_result_1_1 + 2), F, B
_40108_DS_:
	BNC	_50109_DS_
	BANKSEL	(___fsdiv_result_1_1 + 3)
	INCF	(___fsdiv_result_1_1 + 3), F, B
_50109_DS_:
; ;ic:74: 	___fsdiv_exp_1_1 [k14 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-int} = ___fsdiv_exp_1_1 [k14 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-int} + 0x1 {literal-unsigned-char}
	BANKSEL	___fsdiv_exp_1_1
;	.line	92; fsdiv.c	exp++;
	INCF	___fsdiv_exp_1_1, F, B
	BNC	_60110_DS_
; removed redundant BANKSEL
	INCF	(___fsdiv_exp_1_1 + 1), F, B
_60110_DS_:
; ;ic:75: 	___fsdiv_result_1_1 [k90 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int} = ___fsdiv_result_1_1 [k90 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int} >> 0x1 {literal-unsigned-char}
	BANKSEL	(___fsdiv_result_1_1 + 3)
;	.line	93; fsdiv.c	result >>= 1;
	RLCF	(___fsdiv_result_1_1 + 3), W, B
	RRCF	(___fsdiv_result_1_1 + 3), F, B
; removed redundant BANKSEL
	RRCF	(___fsdiv_result_1_1 + 2), F, B
; removed redundant BANKSEL
	RRCF	(___fsdiv_result_1_1 + 1), F, B
; removed redundant BANKSEL
	RRCF	___fsdiv_result_1_1, F, B
; ;ic:76: 	___fsdiv_result_1_1 [k90 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int} = ___fsdiv_result_1_1 [k90 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int} & 0xff7fffff {literal-unsigned-long-int}
; removed redundant BANKSEL
;	.line	95; fsdiv.c	result &= ~HIDDEN;
	BCF	(___fsdiv_result_1_1 + 2), 7
; ;ic:77: 	iTemp81 [k105 lr77:78 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = ___fsdiv_exp_1_1 [k14 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-int} < 0x100 {literal-int}
	BANKSEL	(___fsdiv_exp_1_1 + 1)
;	.line	98; fsdiv.c	if (exp >= 0x100)
	MOVF	(___fsdiv_exp_1_1 + 1), W, B
	ADDLW	0x80
	ADDLW	0x7f
	BNZ	_00151_DS_
	MOVLW	0x00
; removed redundant BANKSEL
	SUBWF	___fsdiv_exp_1_1, W, B
_00151_DS_:
	BNC	_00120_DS_
; ;ic:78: 	if iTemp81 [k105 lr77:78 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} != 0 goto _iffalse_5($16)
; ;ic:79: 	iTemp83 [k108 lr79:87 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat] = &[___fsdiv_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:80: 	if iTemp23 [k34 lr31:97 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ ___fsdiv_sign_1_1}[r0x00 ] == 0 goto iTempLbl0($20)
;	.line	99; fsdiv.c	fl1.l = (sign ? SIGNBIT : 0) | 0x7F800000;
	MOVF	r0x00, W
	BZ	_00124_DS_
; ;ic:81: 	iTemp84 [k109 lr81:86 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x01 r0x02 r0x03 r0x04 ] := 0x80000000 {literal-unsigned-long-int}
	CLRF	r0x01
	CLRF	r0x02
	CLRF	r0x03
	MOVLW	0x80
	MOVWF	r0x04
; ;ic:82: 	 goto iTempLbl1($21)
	BRA	_00125_DS_
; ;ic:83:  iTempLbl0($20) :
; ;ic:84: 	iTemp84 [k109 lr81:86 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x01 r0x02 r0x03 r0x04 ] := 0x0 {literal-unsigned-long-int}
_00124_DS_:
	CLRF	r0x01
	CLRF	r0x02
	CLRF	r0x03
	CLRF	r0x04
; ;ic:85:  iTempLbl1($21) :
; ;ic:86: 	iTemp85 [k110 lr86:87 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x01 r0x02 r0x03 r0x04 ] = iTemp84 [k109 lr81:86 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x01 r0x02 r0x03 r0x04 ] | 0x7f800000 {literal-unsigned-long-int}
_00125_DS_:
	BSF	r0x03, 7
	MOVLW	0x7f
	IORWF	r0x04, F
; ;ic:87: 	*(iTemp83 [k108 lr79:87 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat]) := iTemp85 [k110 lr86:87 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x01 r0x02 r0x03 r0x04 ]
	MOVF	r0x01, W
	BANKSEL	___fsdiv_fl1_1_1
	MOVWF	___fsdiv_fl1_1_1, B
	MOVF	r0x02, W
; removed redundant BANKSEL
	MOVWF	(___fsdiv_fl1_1_1 + 1), B
	MOVF	r0x03, W
; removed redundant BANKSEL
	MOVWF	(___fsdiv_fl1_1_1 + 2), B
	MOVF	r0x04, W
; removed redundant BANKSEL
	MOVWF	(___fsdiv_fl1_1_1 + 3), B
; ;ic:88: 	 goto _ifend_5($17)
	BRA	_00121_DS_
; ;ic:89:  _iffalse_5($16) :
; ;ic:90: 	iTemp87 [k112 lr90:91 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = ___fsdiv_exp_1_1 [k14 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-int} < 0x0 {literal-volatile-int}
_00120_DS_:
;	.line	100; fsdiv.c	else if (exp < 0)
	BSF	STATUS, 0
	BANKSEL	(___fsdiv_exp_1_1 + 1)
	BTFSS	(___fsdiv_exp_1_1 + 1), 7, B
	BCF	STATUS, 0
	BNC	_00117_DS_
; ;ic:91: 	if iTemp87 [k112 lr90:91 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_4($13)
; ;ic:92: 	iTemp88 [k113 lr92:93 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat] = &[___fsdiv_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:93: 	*(iTemp88 [k113 lr92:93 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat]) := 0x0 {literal-volatile-long-int}
	BANKSEL	___fsdiv_fl1_1_1
;	.line	101; fsdiv.c	fl1.l = 0;
	CLRF	___fsdiv_fl1_1_1, B
; removed redundant BANKSEL
	CLRF	(___fsdiv_fl1_1_1 + 1), B
; removed redundant BANKSEL
	CLRF	(___fsdiv_fl1_1_1 + 2), B
; removed redundant BANKSEL
	CLRF	(___fsdiv_fl1_1_1 + 3), B
; ;ic:94: 	 goto _ifend_5($17)
	BRA	_00121_DS_
; ;ic:95:  _iffalse_4($13) :
; ;ic:96: 	iTemp91 [k118 lr96:108 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat] = &[___fsdiv_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:97: 	if iTemp23 [k34 lr31:97 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ ___fsdiv_sign_1_1}[r0x00 ] == 0 goto iTempLbl2($22)
_00117_DS_:
;	.line	103; fsdiv.c	fl1.l = PACK (sign ? SIGNBIT : 0 , exp, result);
	MOVF	r0x00, W
	BZ	_00126_DS_
; ;ic:98: 	iTemp92 [k119 lr98:105 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] := 0x80000000 {literal-unsigned-long-int}
	CLRF	r0x00
	CLRF	r0x01
	CLRF	r0x02
	MOVLW	0x80
	MOVWF	r0x03
; ;ic:99: 	 goto iTempLbl3($23)
	BRA	_00127_DS_
; ;ic:100:  iTempLbl2($22) :
; ;ic:101: 	iTemp92 [k119 lr98:105 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] := 0x0 {literal-unsigned-long-int}
_00126_DS_:
	CLRF	r0x00
	CLRF	r0x01
	CLRF	r0x02
	CLRF	r0x03
; ;ic:102:  iTempLbl3($23) :
; ;ic:103: 	iTemp93 [k120 lr103:104 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x04 r0x05 r0x06 r0x07 ] = (unsigned-long-int)___fsdiv_exp_1_1 [k14 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-int}
_00127_DS_:
	MOVFF	___fsdiv_exp_1_1, r0x04
	MOVFF	(___fsdiv_exp_1_1 + 1), r0x05
	CLRF	WREG
; ;ic:104: 	iTemp94 [k121 lr104:105 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x08 r0x09 r0x0a r0x0b ] = iTemp93 [k120 lr103:104 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x04 r0x05 r0x06 r0x07 ] << 0x17 {literal-unsigned-char}
	RRCF	r0x05, W
	RRCF	r0x04, W
	MOVWF	r0x0b
	CLRF	r0x0a
	RRCF	r0x0a, F
	CLRF	r0x08
; ;ic:105: 	iTemp95 [k122 lr105:107 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] = iTemp92 [k119 lr98:105 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] | iTemp94 [k121 lr104:105 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x08 r0x09 r0x0a r0x0b ]
	MOVF	r0x08, W
	IORWF	r0x00, F
	IORWF	r0x01, F
	MOVF	r0x0a, W
	IORWF	r0x02, F
	MOVF	r0x0b, W
	IORWF	r0x03, F
; ;ic:106: 	iTemp96 [k123 lr106:107 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x04 r0x05 r0x06 r0x07 ] := ___fsdiv_result_1_1 [k90 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}
	MOVFF	___fsdiv_result_1_1, r0x04
	MOVFF	(___fsdiv_result_1_1 + 1), r0x05
	MOVFF	(___fsdiv_result_1_1 + 2), r0x06
	MOVFF	(___fsdiv_result_1_1 + 3), r0x07
; ;ic:107: 	iTemp97 [k124 lr107:108 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] = iTemp95 [k122 lr105:107 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] | iTemp96 [k123 lr106:107 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x04 r0x05 r0x06 r0x07 ]
	MOVF	r0x04, W
	IORWF	r0x00, F
	MOVF	r0x05, W
	IORWF	r0x01, F
	MOVF	r0x06, W
	IORWF	r0x02, F
	MOVF	r0x07, W
	IORWF	r0x03, F
; ;ic:108: 	*(iTemp91 [k118 lr96:108 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat]) := iTemp97 [k124 lr107:108 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ]
	MOVF	r0x00, W
	BANKSEL	___fsdiv_fl1_1_1
	MOVWF	___fsdiv_fl1_1_1, B
	MOVF	r0x01, W
; removed redundant BANKSEL
	MOVWF	(___fsdiv_fl1_1_1 + 1), B
	MOVF	r0x02, W
; removed redundant BANKSEL
	MOVWF	(___fsdiv_fl1_1_1 + 2), B
	MOVF	r0x03, W
; removed redundant BANKSEL
	MOVWF	(___fsdiv_fl1_1_1 + 3), B
; ;ic:109:  _ifend_5($17) :
; ;ic:110: 	iTemp99 [k126 lr110:111 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat] = &[___fsdiv_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:111: 	iTemp101 [k129 lr111:112 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-float}{ sir@ ___fsdiv_fl1_1_1} = @[iTemp99 [k126 lr110:111 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat]]
; ;ic:112: 	ret iTemp101 [k129 lr111:112 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-float}{ sir@ ___fsdiv_fl1_1_1}
_00121_DS_:
;	.line	104; fsdiv.c	return (fl1.f);
	MOVFF	(___fsdiv_fl1_1_1 + 3), FSR0L
	MOVFF	(___fsdiv_fl1_1_1 + 2), PRODH
	MOVFF	(___fsdiv_fl1_1_1 + 1), PRODL
	BANKSEL	___fsdiv_fl1_1_1
	MOVF	___fsdiv_fl1_1_1, W, B
; ;ic:113:  _return($18) :
; ;ic:114: 	eproc ___fsdiv [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
_00122_DS_:
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
; code size:	  912 (0x0390) bytes ( 0.70%)
;           	  456 (0x01c8) words
; udata size:	   26 (0x001a) bytes ( 2.03%)
; access size:	   11 (0x000b) bytes


	end
