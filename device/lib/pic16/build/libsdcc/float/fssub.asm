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
	global ___fssub

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern ___fsadd
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

udata_fssub_0	udata
___fssub_fl1_1_1	res	4

udata_fssub_1	udata
___fssub_fl2_1_1	res	4

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($6) :
; ;ic:2: 	proc ___fssub [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
S_fssub____fssub	code
___fssub:
;	.line	32; fssub.c	float __fssub (float a1, float a2) _FS_REENTRANT
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
; ;ic:3: iTemp0 [k2 lr3:6 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ ___fssub_a1_1_1}[r0x00 r0x01 r0x02 r0x03 ] = recv ___fssub [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
; ;ic:4: iTemp1 [k4 lr4:8 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ ___fssub_a2_1_1}[r0x04 r0x05 r0x06 r0x07 ] = recv ___fssub [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
	MOVLW	0x08
	MOVFF	PLUSW2, r0x06
	MOVLW	0x09
	MOVFF	PLUSW2, r0x07
; ;ic:5: 	iTemp2 [k7 lr5:6 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat] = &[___fssub_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:6: 	*(iTemp2 [k7 lr5:6 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat]) := iTemp0 [k2 lr3:6 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ ___fssub_a1_1_1}[r0x00 r0x01 r0x02 r0x03 ]
;	.line	36; fssub.c	fl1.f = a1;
	MOVF	r0x00, W
	BANKSEL	___fssub_fl1_1_1
	MOVWF	___fssub_fl1_1_1, B
	MOVF	r0x01, W
; removed redundant BANKSEL
	MOVWF	(___fssub_fl1_1_1 + 1), B
	MOVF	r0x02, W
; removed redundant BANKSEL
	MOVWF	(___fssub_fl1_1_1 + 2), B
	MOVF	r0x03, W
; removed redundant BANKSEL
	MOVWF	(___fssub_fl1_1_1 + 3), B
; ;ic:7: 	iTemp4 [k11 lr7:8 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat] = &[___fssub_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:8: 	*(iTemp4 [k11 lr7:8 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat]) := iTemp1 [k4 lr4:8 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ ___fssub_a2_1_1}[r0x04 r0x05 r0x06 r0x07 ]
;	.line	37; fssub.c	fl2.f = a2;
	MOVF	r0x04, W
	BANKSEL	___fssub_fl2_1_1
	MOVWF	___fssub_fl2_1_1, B
	MOVF	r0x05, W
; removed redundant BANKSEL
	MOVWF	(___fssub_fl2_1_1 + 1), B
	MOVF	r0x06, W
; removed redundant BANKSEL
	MOVWF	(___fssub_fl2_1_1 + 2), B
	MOVF	r0x07, W
; removed redundant BANKSEL
	MOVWF	(___fssub_fl2_1_1 + 3), B
; ;ic:9: 	iTemp6 [k14 lr9:10 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat] = &[___fssub_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:10: 	iTemp8 [k17 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}{ sir@ ___fssub_fl2_1_1} = @[iTemp6 [k14 lr9:10 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat]]
; ;ic:11: 	if iTemp8 [k17 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}{ sir@ ___fssub_fl2_1_1} != 0 goto _iffalse_0($2)
; removed redundant BANKSEL
;	.line	40; fssub.c	if (!fl2.l)
	MOVF	___fssub_fl2_1_1, W, B
; removed redundant BANKSEL
	IORWF	(___fssub_fl2_1_1 + 1), W, B
; removed redundant BANKSEL
	IORWF	(___fssub_fl2_1_1 + 2), W, B
; removed redundant BANKSEL
	IORWF	(___fssub_fl2_1_1 + 3), W, B
	BNZ	_00106_DS_
; ;ic:12: 	iTemp9 [k18 lr12:13 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat] = &[___fssub_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:13: 	iTemp11 [k21 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-float}{ sir@ ___fssub_fl1_1_1} = @[iTemp9 [k18 lr12:13 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat]]
; ;ic:14: 	ret iTemp11 [k21 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-float}{ sir@ ___fssub_fl1_1_1}
;	.line	41; fssub.c	return (fl1.f);
	MOVFF	(___fssub_fl1_1_1 + 3), FSR0L
	MOVFF	(___fssub_fl1_1_1 + 2), PRODH
	MOVFF	(___fssub_fl1_1_1 + 1), PRODL
	BANKSEL	___fssub_fl1_1_1
	MOVF	___fssub_fl1_1_1, W, B
	BRA	_00109_DS_
; ;ic:15:  _iffalse_0($2) :
; ;ic:16: 	iTemp12 [k22 lr16:17 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat] = &[___fssub_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:17: 	iTemp14 [k25 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}{ sir@ ___fssub_fl1_1_1} = @[iTemp12 [k22 lr16:17 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat]]
; ;ic:18: 	if iTemp14 [k25 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}{ sir@ ___fssub_fl1_1_1} != 0 goto _iffalse_1($4)
_00106_DS_:
	BANKSEL	___fssub_fl1_1_1
;	.line	42; fssub.c	if (!fl1.l)
	MOVF	___fssub_fl1_1_1, W, B
; removed redundant BANKSEL
	IORWF	(___fssub_fl1_1_1 + 1), W, B
; removed redundant BANKSEL
	IORWF	(___fssub_fl1_1_1 + 2), W, B
; removed redundant BANKSEL
	IORWF	(___fssub_fl1_1_1 + 3), W, B
	BNZ	_00108_DS_
; ;ic:19: 	iTemp15 [k26 lr19:20 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat] = &[___fssub_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:20: 	iTemp17 [k29 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-float}{ sir@ ___fssub_fl2_1_1} = @[iTemp15 [k26 lr19:20 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat]]
; ;ic:21: 	iTemp18 [k30 lr21:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-float}[r0x00 r0x01 r0x02 r0x03 ] = - iTemp17 [k29 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-float}{ sir@ ___fssub_fl2_1_1}
;	.line	43; fssub.c	return (-fl2.f);
	MOVFF	___fssub_fl2_1_1, r0x00
	MOVFF	(___fssub_fl2_1_1 + 1), r0x01
	MOVFF	(___fssub_fl2_1_1 + 2), r0x02
	MOVFF	(___fssub_fl2_1_1 + 3), r0x03
	BTG	r0x03, 7
; ;ic:22: 	ret iTemp18 [k30 lr21:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-float}[r0x00 r0x01 r0x02 r0x03 ]
	MOVFF	r0x03, FSR0L
	MOVFF	r0x02, PRODH
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
	BRA	_00109_DS_
; ;ic:23:  _iffalse_1($4) :
; ;ic:24: 	iTemp19 [k31 lr24:28 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat] = &[___fssub_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:25: 	iTemp21 [k34 lr25:26 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat] = &[___fssub_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:26: 	iTemp23 [k37 lr26:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}{ sir@ ___fssub_fl2_1_1} = @[iTemp21 [k34 lr25:26 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat]]
; ;ic:27: 	iTemp25 [k39 lr27:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] = iTemp23 [k37 lr26:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}{ sir@ ___fssub_fl2_1_1} ^ 0x80000000 {literal-unsigned-long-int}
_00108_DS_:
	BANKSEL	___fssub_fl2_1_1
;	.line	46; fssub.c	fl2.l ^= SIGNBIT;
	MOVF	___fssub_fl2_1_1, W, B
	MOVWF	r0x00
; removed redundant BANKSEL
	MOVF	(___fssub_fl2_1_1 + 1), W, B
	MOVWF	r0x01
; removed redundant BANKSEL
	MOVF	(___fssub_fl2_1_1 + 2), W, B
	MOVWF	r0x02
	MOVLW	0x80
; removed redundant BANKSEL
	XORWF	(___fssub_fl2_1_1 + 3), W, B
	MOVWF	r0x03
; ;ic:28: 	*(iTemp19 [k31 lr24:28 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat]) := iTemp25 [k39 lr27:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ]
	MOVF	r0x00, W
; removed redundant BANKSEL
	MOVWF	___fssub_fl2_1_1, B
	MOVF	r0x01, W
; removed redundant BANKSEL
	MOVWF	(___fssub_fl2_1_1 + 1), B
	MOVF	r0x02, W
; removed redundant BANKSEL
	MOVWF	(___fssub_fl2_1_1 + 2), B
; #	MOVF	r0x03, W
; #	MOVWF	(___fssub_fl2_1_1 + 3), B
; #;;ic:29: 	iTemp27 [k41 lr29:30 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat] = &[___fssub_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; #;;ic:30: 	iTemp29 [k44 lr30:34 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-float}{ sir@ ___fssub_fl1_1_1} = @[iTemp27 [k41 lr29:30 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat]]
; #;;ic:31: 	iTemp30 [k45 lr31:32 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat] = &[___fssub_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; #;;ic:32: 	iTemp32 [k48 lr32:34 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-float}{ sir@ ___fssub_fl2_1_1} = @[iTemp30 [k45 lr31:32 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat]]
; #;;ic:33: 	send iTemp29 [k44 lr30:34 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-float}{ sir@ ___fssub_fl1_1_1}{argreg = 1}
; #;;ic:34: 	send iTemp32 [k48 lr32:34 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-float}{ sir@ ___fssub_fl2_1_1}{argreg = 2}
; #;;ic:35: 	iTemp33 [k49 lr35:36 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x00 r0x01 r0x02 r0x03 ] = call ___fsadd [k50 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
; #	MOVF	(___fssub_fl2_1_1 + 3), W, B
;	.line	47; fssub.c	return fl1.f + fl2.f; 
	MOVF	r0x03, W
; removed redundant BANKSEL
	MOVWF	(___fssub_fl2_1_1 + 3), B
	MOVWF	POSTDEC1
; removed redundant BANKSEL
	MOVF	(___fssub_fl2_1_1 + 2), W, B
	MOVWF	POSTDEC1
; removed redundant BANKSEL
	MOVF	(___fssub_fl2_1_1 + 1), W, B
	MOVWF	POSTDEC1
; removed redundant BANKSEL
	MOVF	___fssub_fl2_1_1, W, B
	MOVWF	POSTDEC1
	BANKSEL	(___fssub_fl1_1_1 + 3)
	MOVF	(___fssub_fl1_1_1 + 3), W, B
	MOVWF	POSTDEC1
; removed redundant BANKSEL
	MOVF	(___fssub_fl1_1_1 + 2), W, B
	MOVWF	POSTDEC1
; removed redundant BANKSEL
	MOVF	(___fssub_fl1_1_1 + 1), W, B
	MOVWF	POSTDEC1
; removed redundant BANKSEL
	MOVF	___fssub_fl1_1_1, W, B
	MOVWF	POSTDEC1
	CALL	___fsadd
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:36: 	ret iTemp33 [k49 lr35:36 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x00 r0x01 r0x02 r0x03 ]
	MOVFF	r0x03, FSR0L
	MOVFF	r0x02, PRODH
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
; ;ic:37:  _return($5) :
; ;ic:38: 	eproc ___fssub [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
_00109_DS_:
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
; code size:	  340 (0x0154) bytes ( 0.26%)
;           	  170 (0x00aa) words
; udata size:	    8 (0x0008) bytes ( 0.62%)
; access size:	    8 (0x0008) bytes


	end
