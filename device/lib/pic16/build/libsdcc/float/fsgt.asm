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
	global ___fsgt
;--------------------------------------------------------
;	Equates to used internal registers
;--------------------------------------------------------
STATUS	equ	0xfd8
WREG	equ	0xfe8
FSR1L	equ	0xfe1
FSR2L	equ	0xfd9
POSTDEC1	equ	0xfe5
PREINC1	equ	0xfe4
PLUSW2	equ	0xfdb
PRODL	equ	0xff3


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

udata_fsgt_0	udata
___fsgt_fl1_1_1	res	4

udata_fsgt_1	udata
___fsgt_fl2_1_1	res	4

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($9) :
; ;ic:2: 	proc ___fsgt [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
S_fsgt____fsgt	code
___fsgt:
;	.line	32; fsgt.c	char __fsgt (float a1, float a2) _FS_REENTRANT
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
; ;ic:3: iTemp0 [k2 lr3:6 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ ___fsgt_a1_1_1}[r0x00 r0x01 r0x02 r0x03 ] = recv ___fsgt [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
; ;ic:4: iTemp1 [k4 lr4:8 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ ___fsgt_a2_1_1}[r0x04 r0x05 r0x06 r0x07 ] = recv ___fsgt [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
	MOVLW	0x08
	MOVFF	PLUSW2, r0x06
	MOVLW	0x09
	MOVFF	PLUSW2, r0x07
; ;ic:5: 	iTemp2 [k7 lr5:6 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat] = &[___fsgt_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:6: 	*(iTemp2 [k7 lr5:6 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat]) := iTemp0 [k2 lr3:6 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ ___fsgt_a1_1_1}[r0x00 r0x01 r0x02 r0x03 ]
;	.line	36; fsgt.c	fl1.f = a1;
	MOVF	r0x00, W
	BANKSEL	___fsgt_fl1_1_1
	MOVWF	___fsgt_fl1_1_1, B
	MOVF	r0x01, W
; removed redundant BANKSEL
	MOVWF	(___fsgt_fl1_1_1 + 1), B
	MOVF	r0x02, W
; removed redundant BANKSEL
	MOVWF	(___fsgt_fl1_1_1 + 2), B
	MOVF	r0x03, W
; removed redundant BANKSEL
	MOVWF	(___fsgt_fl1_1_1 + 3), B
; ;ic:7: 	iTemp4 [k11 lr7:8 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat] = &[___fsgt_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:8: 	*(iTemp4 [k11 lr7:8 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat]) := iTemp1 [k4 lr4:8 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ ___fsgt_a2_1_1}[r0x04 r0x05 r0x06 r0x07 ]
;	.line	37; fsgt.c	fl2.f = a2;
	MOVF	r0x04, W
	BANKSEL	___fsgt_fl2_1_1
	MOVWF	___fsgt_fl2_1_1, B
	MOVF	r0x05, W
; removed redundant BANKSEL
	MOVWF	(___fsgt_fl2_1_1 + 1), B
	MOVF	r0x06, W
; removed redundant BANKSEL
	MOVWF	(___fsgt_fl2_1_1 + 2), B
	MOVF	r0x07, W
; removed redundant BANKSEL
	MOVWF	(___fsgt_fl2_1_1 + 3), B
; ;ic:9: 	iTemp6 [k14 lr9:10 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat] = &[___fsgt_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:10: 	iTemp8 [k17 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}{ sir@ ___fsgt_fl1_1_1} = @[iTemp6 [k14 lr9:10 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat]]
; ;ic:11: 	iTemp9 [k18 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp8 [k17 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}{ sir@ ___fsgt_fl1_1_1} < 0x0 {literal-volatile-long-int}
;	.line	39; fsgt.c	if (fl1.l<0 && fl2.l<0) {
	BSF	STATUS, 0
	BANKSEL	(___fsgt_fl1_1_1 + 3)
	BTFSS	(___fsgt_fl1_1_1 + 3), 7, B
	BCF	STATUS, 0
	BNC	_00108_DS_
; ;ic:12: 	if iTemp9 [k18 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_1($4)
; ;ic:13: 	iTemp10 [k19 lr13:14 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat] = &[___fsgt_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:14: 	iTemp12 [k22 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}{ sir@ ___fsgt_fl2_1_1} = @[iTemp10 [k19 lr13:14 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat]]
; ;ic:15: 	iTemp13 [k23 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp12 [k22 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}{ sir@ ___fsgt_fl2_1_1} < 0x0 {literal-volatile-long-int}
	BSF	STATUS, 0
	BANKSEL	(___fsgt_fl2_1_1 + 3)
	BTFSS	(___fsgt_fl2_1_1 + 3), 7, B
	BCF	STATUS, 0
	BNC	_00108_DS_
; ;ic:16: 	if iTemp13 [k23 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_1($4)
; ;ic:17: 	iTemp14 [k24 lr17:18 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat] = &[___fsgt_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:18: 	iTemp16 [k27 lr18:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}{ sir@ ___fsgt_fl2_1_1} = @[iTemp14 [k24 lr17:18 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat]]
; ;ic:19: 	iTemp17 [k28 lr19:20 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat] = &[___fsgt_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:20: 	iTemp19 [k31 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}{ sir@ ___fsgt_fl1_1_1} = @[iTemp17 [k28 lr19:20 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat]]
; ;ic:21: 	iTemp20 [k32 lr21:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp16 [k27 lr18:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}{ sir@ ___fsgt_fl2_1_1} > iTemp19 [k31 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}{ sir@ ___fsgt_fl1_1_1}
	BANKSEL	(___fsgt_fl1_1_1 + 3)
;	.line	40; fsgt.c	if (fl2.l > fl1.l)
	MOVF	(___fsgt_fl1_1_1 + 3), W, B
	ADDLW	0x80
	MOVWF	PRODL
	BANKSEL	(___fsgt_fl2_1_1 + 3)
	MOVF	(___fsgt_fl2_1_1 + 3), W, B
	ADDLW	0x80
	SUBWF	PRODL, W
	BNZ	_00118_DS_
; removed redundant BANKSEL
	MOVF	(___fsgt_fl2_1_1 + 2), W, B
	BANKSEL	(___fsgt_fl1_1_1 + 2)
	SUBWF	(___fsgt_fl1_1_1 + 2), W, B
	BNZ	_00118_DS_
	BANKSEL	(___fsgt_fl2_1_1 + 1)
	MOVF	(___fsgt_fl2_1_1 + 1), W, B
	BANKSEL	(___fsgt_fl1_1_1 + 1)
	SUBWF	(___fsgt_fl1_1_1 + 1), W, B
	BNZ	_00118_DS_
	BANKSEL	___fsgt_fl2_1_1
	MOVF	___fsgt_fl2_1_1, W, B
	BANKSEL	___fsgt_fl1_1_1
	SUBWF	___fsgt_fl1_1_1, W, B
_00118_DS_:
	BC	_00106_DS_
; ;ic:22: 	if iTemp20 [k32 lr21:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_0($2)
; ;ic:23: 	ret 0x1 {literal-char}
;	.line	41; fsgt.c	return (1);
	MOVLW	0x01
	BRA	_00112_DS_
; ;ic:24:  _iffalse_0($2) :
; ;ic:25: 	ret 0x0 {literal-char}
_00106_DS_:
;	.line	42; fsgt.c	return (0);
	CLRF	WREG
	BRA	_00112_DS_
; ;ic:26:  _iffalse_1($4) :
; ;ic:27: 	iTemp21 [k33 lr27:28 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat] = &[___fsgt_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:28: 	iTemp23 [k36 lr28:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}{ sir@ ___fsgt_fl1_1_1} = @[iTemp21 [k33 lr27:28 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat]]
; ;ic:29: 	iTemp24 [k37 lr29:30 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat] = &[___fsgt_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:30: 	iTemp26 [k40 lr30:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}{ sir@ ___fsgt_fl2_1_1} = @[iTemp24 [k37 lr29:30 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat]]
; ;ic:31: 	iTemp27 [k41 lr31:32 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp23 [k36 lr28:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}{ sir@ ___fsgt_fl1_1_1} > iTemp26 [k40 lr30:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}{ sir@ ___fsgt_fl2_1_1}
_00108_DS_:
	BANKSEL	(___fsgt_fl2_1_1 + 3)
;	.line	45; fsgt.c	if (fl1.l > fl2.l)
	MOVF	(___fsgt_fl2_1_1 + 3), W, B
	ADDLW	0x80
	MOVWF	PRODL
	BANKSEL	(___fsgt_fl1_1_1 + 3)
	MOVF	(___fsgt_fl1_1_1 + 3), W, B
	ADDLW	0x80
	SUBWF	PRODL, W
	BNZ	_00119_DS_
; removed redundant BANKSEL
	MOVF	(___fsgt_fl1_1_1 + 2), W, B
	BANKSEL	(___fsgt_fl2_1_1 + 2)
	SUBWF	(___fsgt_fl2_1_1 + 2), W, B
	BNZ	_00119_DS_
	BANKSEL	(___fsgt_fl1_1_1 + 1)
	MOVF	(___fsgt_fl1_1_1 + 1), W, B
	BANKSEL	(___fsgt_fl2_1_1 + 1)
	SUBWF	(___fsgt_fl2_1_1 + 1), W, B
	BNZ	_00119_DS_
	BANKSEL	___fsgt_fl1_1_1
	MOVF	___fsgt_fl1_1_1, W, B
	BANKSEL	___fsgt_fl2_1_1
	SUBWF	___fsgt_fl2_1_1, W, B
_00119_DS_:
	BC	_00111_DS_
; ;ic:32: 	if iTemp27 [k41 lr31:32 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_2($7)
; ;ic:33: 	ret 0x1 {literal-char}
;	.line	46; fsgt.c	return (1);
	MOVLW	0x01
	BRA	_00112_DS_
; ;ic:34:  _iffalse_2($7) :
; ;ic:35: 	ret 0x0 {literal-char}
_00111_DS_:
;	.line	47; fsgt.c	return (0);
	CLRF	WREG
; ;ic:36:  _return($8) :
; ;ic:37: 	eproc ___fsgt [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
_00112_DS_:
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
; code size:	  288 (0x0120) bytes ( 0.22%)
;           	  144 (0x0090) words
; udata size:	    8 (0x0008) bytes ( 0.62%)
; access size:	    8 (0x0008) bytes


	end
