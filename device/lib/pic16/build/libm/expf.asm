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
	global _expf

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern _errno
	extern _ldexpf
	extern ___fslt
	extern ___fsgt
	extern ___fsmul
	extern ___fs2sint
	extern ___sint2fs
	extern ___fssub
	extern ___fsadd
	extern ___fsdiv
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
r0x09	res	1
r0x0a	res	1
r0x0b	res	1
r0x0c	res	1
r0x0d	res	1
r0x0e	res	1
r0x0f	res	1
r0x10	res	1
r0x11	res	1
r0x12	res	1

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($19) :
; ;ic:2: 	proc _expf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float) }
S_expf__expf	code
_expf:
;	.line	46; expf.c	float expf(const float x)
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
	MOVFF	r0x09, POSTDEC1
	MOVFF	r0x0a, POSTDEC1
	MOVFF	r0x0b, POSTDEC1
	MOVFF	r0x0c, POSTDEC1
	MOVFF	r0x0d, POSTDEC1
	MOVFF	r0x0e, POSTDEC1
	MOVFF	r0x0f, POSTDEC1
	MOVFF	r0x10, POSTDEC1
	MOVFF	r0x11, POSTDEC1
	MOVFF	r0x12, POSTDEC1
; ;ic:3: iTemp0 [k2 lr3:12 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _expf_x_1_1}[r0x00 r0x01 r0x02 r0x03 ] = recv _expf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
; ;ic:4: 	send iTemp0 [k2 lr3:12 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _expf_x_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 1}
; ;ic:5: 	send 0 {literal-float}{argreg = 2}
; ;ic:6: 	iTemp1 [k4 lr6:7 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x04 ] = call ___fslt [k51 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
;	.line	52; expf.c	if(x>=0.0)
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	___fslt
	MOVWF	r0x04
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:7: 	if iTemp1 [k4 lr6:7 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x04 ] != 0 goto _iffalse_0($2)
	MOVF	r0x04, W
	BNZ	_00106_DS_
; ;ic:8: 	iTemp2 [k5 lr8:57 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _expf_y_1_1}[r0x04 r0x05 r0x06 r0x07 ] := iTemp0 [k2 lr3:12 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _expf_x_1_1}[r0x00 r0x01 r0x02 r0x03 ]
;	.line	53; expf.c	{ y=x;  sign=0; }
	MOVFF	r0x00, r0x04
	MOVFF	r0x01, r0x05
	MOVFF	r0x02, r0x06
	MOVFF	r0x03, r0x07
; ;ic:9: 	iTemp3 [k7 lr9:96 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _expf_sign_1_1}[r0x08 ] := 0x0 {literal-char}
	CLRF	r0x08
; ;ic:10: 	 goto _ifend_0($3)
	BRA	_00107_DS_
; ;ic:11:  _iffalse_0($2) :
; ;ic:12: 	iTemp2 [k5 lr8:57 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _expf_y_1_1}[r0x04 r0x05 r0x06 r0x07 ] = - iTemp0 [k2 lr3:12 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _expf_x_1_1}[r0x00 r0x01 r0x02 r0x03 ]
_00106_DS_:
;	.line	55; expf.c	{ y=-x; sign=1; }
	MOVFF	r0x00, r0x04
	MOVFF	r0x01, r0x05
	MOVFF	r0x02, r0x06
	MOVFF	r0x03, r0x07
	BTG	r0x07, 7
; ;ic:13: 	iTemp3 [k7 lr9:96 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _expf_sign_1_1}[r0x08 ] := 0x1 {literal-char}
	MOVLW	0x01
	MOVWF	r0x08
; ;ic:14:  _ifend_0($3) :
; ;ic:15: 	send iTemp2 [k5 lr8:57 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _expf_y_1_1}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 1}
; ;ic:16: 	send 1e-07 {literal-float}{argreg = 2}
; ;ic:17: 	iTemp5 [k10 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x00 ] = call ___fslt [k51 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
_00107_DS_:
;	.line	57; expf.c	if(y<EXPEPS) return 1.0;
	MOVLW	0x33
	MOVWF	POSTDEC1
	MOVLW	0xd6
	MOVWF	POSTDEC1
	MOVLW	0xbf
	MOVWF	POSTDEC1
	MOVLW	0x95
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	CALL	___fslt
	MOVWF	r0x00
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:18: 	if iTemp5 [k10 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x00 ] == 0 goto _iffalse_1($5)
	MOVF	r0x00, W
	BZ	_00109_DS_
; ;ic:19: 	ret 1 {literal-float}
	MOVLW	0x3f
	MOVWF	FSR0L
	MOVLW	0x80
	MOVWF	PRODH
	CLRF	PRODL
	CLRF	WREG
	GOTO	_00122_DS_
; ;ic:20:  _iffalse_1($5) :
; ;ic:21: 	send iTemp2 [k5 lr8:57 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _expf_y_1_1}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 1}
; ;ic:22: 	send 88.7228 {literal-float}{argreg = 2}
; ;ic:23: 	iTemp6 [k11 lr23:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x00 ] = call ___fsgt [k52 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
_00109_DS_:
;	.line	59; expf.c	if(y>BIGX)
	MOVLW	0x42
	MOVWF	POSTDEC1
	MOVLW	0xb1
	MOVWF	POSTDEC1
	MOVLW	0x72
	MOVWF	POSTDEC1
	MOVLW	0x18
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	CALL	___fsgt
	MOVWF	r0x00
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:24: 	if iTemp6 [k11 lr23:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x00 ] == 0 goto _iffalse_3($10)
	MOVF	r0x00, W
	BZ	_00114_DS_
; ;ic:25: 	if iTemp3 [k7 lr9:96 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _expf_sign_1_1}[r0x08 ] == 0 goto _iffalse_2($7)
;	.line	61; expf.c	if(sign)
	MOVF	r0x08, W
	BZ	_00111_DS_
; ;ic:26: 	_errno [k12 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{int} := 0x22 {literal-int}
;	.line	63; expf.c	errno=ERANGE;
	MOVLW	0x22
	BANKSEL	_errno
	MOVWF	_errno, B
; removed redundant BANKSEL
	CLRF	(_errno + 1), B
; ;ic:27: 	ret 3.40282e+38 {literal-float}
; #	MOVLW	0x7f
; #	MOVWF	FSR0L
; #	MOVLW	0x7f
;	.line	64; expf.c	return XMAX;
	MOVLW	0x7f
	MOVWF	FSR0L
	MOVWF	PRODH
	SETF	PRODL
	SETF	WREG
	GOTO	_00122_DS_
; ;ic:28:  _iffalse_2($7) :
; ;ic:29: 	ret 0 {literal-float}
_00111_DS_:
;	.line	68; expf.c	return 0.0;
	CLRF	FSR0L
	CLRF	PRODH
	CLRF	PRODL
	CLRF	WREG
	GOTO	_00122_DS_
; ;ic:30:  _iffalse_3($10) :
; ;ic:31: 	send 1.4427 {literal-float}{argreg = 1}
; ;ic:32: 	send iTemp2 [k5 lr8:57 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _expf_y_1_1}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 2}
; ;ic:33: 	iTemp8 [k14 lr33:102 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _expf_z_1_1}[r0x00 r0x01 r0x02 r0x03 ] = call ___fsmul [k53 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
_00114_DS_:
;	.line	72; expf.c	z=y*K1;
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVLW	0x3f
	MOVWF	POSTDEC1
	MOVLW	0xb8
	MOVWF	POSTDEC1
	MOVLW	0xaa
	MOVWF	POSTDEC1
	MOVLW	0x3b
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:34: 	send iTemp8 [k14 lr33:102 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _expf_z_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 1}
; ;ic:35: 	iTemp10 [k17 lr35:94 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ _expf_n_1_1}[r0x09 r0x0a ] = call ___fs2sint [k54 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( float) }
;	.line	73; expf.c	n=z;
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	___fs2sint
	MOVWF	r0x09
	MOVFF	PRODL, r0x0a
	MOVLW	0x04
	ADDWF	FSR1L, F
; ;ic:36: 	iTemp12 [k20 lr36:37 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp10 [k17 lr35:94 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ _expf_n_1_1}[r0x09 r0x0a ] < 0x0 {literal-int}
;	.line	75; expf.c	if(n<0) --n;
	BSF	STATUS, 0
	BTFSS	r0x0a, 7
	BCF	STATUS, 0
	BNC	_00116_DS_
; ;ic:37: 	if iTemp12 [k20 lr36:37 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_4($12)
; ;ic:38: 	iTemp10 [k17 lr35:94 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ _expf_n_1_1}[r0x09 r0x0a ] = iTemp10 [k17 lr35:94 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ _expf_n_1_1}[r0x09 r0x0a ] - 0x1 {literal-unsigned-char}
	MOVLW	0xff
	ADDWF	r0x09, F
	BTFSS	STATUS, 0
	DECF	r0x0a, F
; ;ic:39:  _iffalse_4($12) :
; ;ic:40: 	send iTemp10 [k17 lr35:94 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ _expf_n_1_1}[r0x09 r0x0a ]{argreg = 1}
; ;ic:41: 	iTemp14 [k22 lr41:43 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0b r0x0c r0x0d r0x0e ] = call ___sint2fs [k55 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( int) }
_00116_DS_:
;	.line	76; expf.c	if(z-n>=0.5) ++n;
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	CALL	___sint2fs
	MOVWF	r0x0b
	MOVFF	PRODL, r0x0c
	MOVFF	PRODH, r0x0d
	MOVFF	FSR0L, r0x0e
	MOVLW	0x02
	ADDWF	FSR1L, F
; ;ic:42: 	send iTemp8 [k14 lr33:102 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _expf_z_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 1}
; ;ic:43: 	send iTemp14 [k22 lr41:43 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0b r0x0c r0x0d r0x0e ]{argreg = 2}
; ;ic:44: 	iTemp15 [k23 lr44:46 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0b r0x0c r0x0d r0x0e ] = call ___fssub [k56 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	___fssub
	MOVWF	r0x0b
	MOVFF	PRODL, r0x0c
	MOVFF	PRODH, r0x0d
	MOVFF	FSR0L, r0x0e
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:45: 	send iTemp15 [k23 lr44:46 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0b r0x0c r0x0d r0x0e ]{argreg = 1}
; ;ic:46: 	send 0.5 {literal-float}{argreg = 2}
; ;ic:47: 	iTemp16 [k24 lr47:48 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0b ] = call ___fslt [k51 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
	MOVLW	0x3f
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	CALL	___fslt
	MOVWF	r0x0b
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:48: 	if iTemp16 [k24 lr47:48 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0b ] != 0 goto _iffalse_5($14)
	MOVF	r0x0b, W
	BNZ	_00118_DS_
; ;ic:49: 	iTemp10 [k17 lr35:94 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ _expf_n_1_1}[r0x09 r0x0a ] = iTemp10 [k17 lr35:94 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ _expf_n_1_1}[r0x09 r0x0a ] + 0x1 {literal-unsigned-char}
	INCF	r0x09, F
	BTFSC	STATUS, 0
	INCF	r0x0a, F
; ;ic:50:  _iffalse_5($14) :
; ;ic:51: 	send iTemp10 [k17 lr35:94 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ _expf_n_1_1}[r0x09 r0x0a ]{argreg = 1}
; ;ic:52: 	iTemp18 [k26 lr52:60 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _expf_xn_1_1}[r0x0b r0x0c r0x0d r0x0e ] = call ___sint2fs [k55 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( int) }
_00118_DS_:
;	.line	77; expf.c	xn=n;
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	CALL	___sint2fs
	MOVWF	r0x0b
	MOVFF	PRODL, r0x0c
	MOVFF	PRODH, r0x0d
	MOVFF	FSR0L, r0x0e
	MOVLW	0x02
	ADDWF	FSR1L, F
; ;ic:53: 	send 0.693359 {literal-float}{argreg = 1}
; ;ic:54: 	send iTemp18 [k26 lr52:60 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _expf_xn_1_1}[r0x0b r0x0c r0x0d r0x0e ]{argreg = 2}
; ;ic:55: 	iTemp21 [k31 lr55:57 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0f r0x10 r0x11 r0x12 ] = call ___fsmul [k53 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
;	.line	78; expf.c	g=((y-xn*C1))-xn*C2;
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVLW	0x3f
	MOVWF	POSTDEC1
	MOVLW	0x31
	MOVWF	POSTDEC1
	MOVLW	0x80
	MOVWF	POSTDEC1
	MOVLW	0x00
	CLRF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x0f
	MOVFF	PRODL, r0x10
	MOVFF	PRODH, r0x11
	MOVFF	FSR0L, r0x12
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:56: 	send iTemp2 [k5 lr8:57 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _expf_y_1_1}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 1}
; ;ic:57: 	send iTemp21 [k31 lr55:57 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0f r0x10 r0x11 r0x12 ]{argreg = 2}
; ;ic:58: 	iTemp22 [k32 lr58:63 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x04 r0x05 r0x06 r0x07 ] = call ___fssub [k56 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x12, W
	MOVWF	POSTDEC1
	MOVF	r0x11, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	CALL	___fssub
	MOVWF	r0x04
	MOVFF	PRODL, r0x05
	MOVFF	PRODH, r0x06
	MOVFF	FSR0L, r0x07
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:59: 	send -0.000212194 {literal-float}{argreg = 1}
; ;ic:60: 	send iTemp18 [k26 lr52:60 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _expf_xn_1_1}[r0x0b r0x0c r0x0d r0x0e ]{argreg = 2}
; ;ic:61: 	iTemp23 [k33 lr61:63 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0b r0x0c r0x0d r0x0e ] = call ___fsmul [k53 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVLW	0xb9
	MOVWF	POSTDEC1
	MOVLW	0x5e
	MOVWF	POSTDEC1
	MOVLW	0x80
	MOVWF	POSTDEC1
	MOVLW	0x83
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x0b
	MOVFF	PRODL, r0x0c
	MOVFF	PRODH, r0x0d
	MOVFF	FSR0L, r0x0e
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:62: 	send iTemp22 [k32 lr58:63 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 1}
; ;ic:63: 	send iTemp23 [k33 lr61:63 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0b r0x0c r0x0d r0x0e ]{argreg = 2}
; ;ic:64: 	iTemp20 [k29 lr64:75 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _expf_g_1_1}[r0x04 r0x05 r0x06 r0x07 ] = call ___fssub [k56 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	CALL	___fssub
	MOVWF	r0x04
	MOVFF	PRODL, r0x05
	MOVFF	PRODH, r0x06
	MOVFF	FSR0L, r0x07
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:65: 	send iTemp20 [k29 lr64:75 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _expf_g_1_1}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 1}
; ;ic:66: 	send iTemp20 [k29 lr64:75 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _expf_g_1_1}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 2}
; ;ic:67: 	iTemp8 [k14 lr33:102 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _expf_z_1_1}[r0x00 r0x01 r0x02 r0x03 ] = call ___fsmul [k53 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
;	.line	79; expf.c	z=g*g;
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:68: 	send 0.00416029 {literal-float}{argreg = 1}
; ;ic:69: 	send iTemp8 [k14 lr33:102 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _expf_z_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 2}
; ;ic:70: 	iTemp27 [k38 lr70:72 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0b r0x0c r0x0d r0x0e ] = call ___fsmul [k53 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
;	.line	80; expf.c	r=P(z)*g;
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	MOVLW	0x3b
	MOVWF	POSTDEC1
	MOVLW	0x88
	MOVWF	POSTDEC1
	MOVLW	0x53
	MOVWF	POSTDEC1
	MOVLW	0x08
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x0b
	MOVFF	PRODL, r0x0c
	MOVFF	PRODH, r0x0d
	MOVFF	FSR0L, r0x0e
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:71: 	send iTemp27 [k38 lr70:72 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0b r0x0c r0x0d r0x0e ]{argreg = 1}
; ;ic:72: 	send 0.25 {literal-float}{argreg = 2}
; ;ic:73: 	iTemp28 [k39 lr73:75 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0b r0x0c r0x0d r0x0e ] = call ___fsadd [k57 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVLW	0x3e
	MOVWF	POSTDEC1
	MOVLW	0x80
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	CALL	___fsadd
	MOVWF	r0x0b
	MOVFF	PRODL, r0x0c
	MOVFF	PRODH, r0x0d
	MOVFF	FSR0L, r0x0e
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:74: 	send iTemp28 [k39 lr73:75 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0b r0x0c r0x0d r0x0e ]{argreg = 1}
; ;ic:75: 	send iTemp20 [k29 lr64:75 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _expf_g_1_1}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 2}
; ;ic:76: 	iTemp26 [k36 lr76:94 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _expf_r_1_1}[r0x04 r0x05 r0x06 r0x07 ] = call ___fsmul [k53 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x04
	MOVFF	PRODL, r0x05
	MOVFF	PRODH, r0x06
	MOVFF	FSR0L, r0x07
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:77: 	send 0.0499872 {literal-float}{argreg = 1}
; ;ic:78: 	send iTemp8 [k14 lr33:102 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _expf_z_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 2}
; ;ic:79: 	iTemp30 [k41 lr79:81 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0b r0x0c r0x0d r0x0e ] = call ___fsmul [k53 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
;	.line	81; expf.c	r=0.5+(r/(Q(z)-r));
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	MOVLW	0x3d
	MOVWF	POSTDEC1
	MOVLW	0x4c
	MOVWF	POSTDEC1
	MOVLW	0xbf
	MOVWF	POSTDEC1
	MOVLW	0x5b
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x0b
	MOVFF	PRODL, r0x0c
	MOVFF	PRODH, r0x0d
	MOVFF	FSR0L, r0x0e
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:80: 	send iTemp30 [k41 lr79:81 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0b r0x0c r0x0d r0x0e ]{argreg = 1}
; ;ic:81: 	send 0.5 {literal-float}{argreg = 2}
; ;ic:82: 	iTemp31 [k42 lr82:84 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0b r0x0c r0x0d r0x0e ] = call ___fsadd [k57 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVLW	0x3f
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	CALL	___fsadd
	MOVWF	r0x0b
	MOVFF	PRODL, r0x0c
	MOVFF	PRODH, r0x0d
	MOVFF	FSR0L, r0x0e
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:83: 	send iTemp31 [k42 lr82:84 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0b r0x0c r0x0d r0x0e ]{argreg = 1}
; ;ic:84: 	send iTemp26 [k36 lr76:94 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _expf_r_1_1}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 2}
; ;ic:85: 	iTemp32 [k43 lr85:87 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0b r0x0c r0x0d r0x0e ] = call ___fssub [k56 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	CALL	___fssub
	MOVWF	r0x0b
	MOVFF	PRODL, r0x0c
	MOVFF	PRODH, r0x0d
	MOVFF	FSR0L, r0x0e
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:86: 	send iTemp26 [k36 lr76:94 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _expf_r_1_1}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 1}
; ;ic:87: 	send iTemp32 [k43 lr85:87 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0b r0x0c r0x0d r0x0e ]{argreg = 2}
; ;ic:88: 	iTemp33 [k44 lr88:90 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0b r0x0c r0x0d r0x0e ] = call ___fsdiv [k58 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	CALL	___fsdiv
	MOVWF	r0x0b
	MOVFF	PRODL, r0x0c
	MOVFF	PRODH, r0x0d
	MOVFF	FSR0L, r0x0e
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:89: 	send iTemp33 [k44 lr88:90 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0b r0x0c r0x0d r0x0e ]{argreg = 1}
; ;ic:90: 	send 0.5 {literal-float}{argreg = 2}
; ;ic:91: 	iTemp26 [k36 lr76:94 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _expf_r_1_1}[r0x04 r0x05 r0x06 r0x07 ] = call ___fsadd [k57 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVLW	0x3f
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	CALL	___fsadd
	MOVWF	r0x04
	MOVFF	PRODL, r0x05
	MOVFF	PRODH, r0x06
	MOVFF	FSR0L, r0x07
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:92: 	iTemp10 [k17 lr35:94 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ _expf_n_1_1}[r0x09 r0x0a ] = iTemp10 [k17 lr35:94 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ _expf_n_1_1}[r0x09 r0x0a ] + 0x1 {literal-unsigned-char}
;	.line	83; expf.c	n++;
	INCF	r0x09, F
	BTFSC	STATUS, 0
	INCF	r0x0a, F
; ;ic:93: 	send iTemp26 [k36 lr76:94 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _expf_r_1_1}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 1}
; ;ic:94: 	send iTemp10 [k17 lr35:94 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ _expf_n_1_1}[r0x09 r0x0a ]{argreg = 2}
; ;ic:95: 	iTemp8 [k14 lr33:102 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _expf_z_1_1}[r0x00 r0x01 r0x02 r0x03 ] = call _ldexpf [k48 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float, const-int) }
;	.line	84; expf.c	z=ldexpf(r, n);
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	CALL	_ldexpf
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVLW	0x06
	ADDWF	FSR1L, F
; ;ic:96: 	if iTemp3 [k7 lr9:96 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _expf_sign_1_1}[r0x08 ] == 0 goto _iffalse_6($16)
;	.line	85; expf.c	if(sign)
	MOVF	r0x08, W
	BZ	_00120_DS_
; ;ic:97: 	send 1 {literal-float}{argreg = 1}
; ;ic:98: 	send iTemp8 [k14 lr33:102 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _expf_z_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 2}
; ;ic:99: 	iTemp38 [k50 lr99:100 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x04 r0x05 r0x06 r0x07 ] = call ___fsdiv [k58 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
;	.line	86; expf.c	return 1.0/z;
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	MOVLW	0x3f
	MOVWF	POSTDEC1
	MOVLW	0x80
	MOVWF	POSTDEC1
	MOVLW	0x00
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CALL	___fsdiv
	MOVWF	r0x04
	MOVFF	PRODL, r0x05
	MOVFF	PRODH, r0x06
	MOVFF	FSR0L, r0x07
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:100: 	ret iTemp38 [k50 lr99:100 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x04 r0x05 r0x06 r0x07 ]
	MOVFF	r0x07, FSR0L
	MOVFF	r0x06, PRODH
	MOVFF	r0x05, PRODL
	MOVF	r0x04, W
	BRA	_00122_DS_
; ;ic:101:  _iffalse_6($16) :
; ;ic:102: 	ret iTemp8 [k14 lr33:102 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _expf_z_1_1}[r0x00 r0x01 r0x02 r0x03 ]
_00120_DS_:
;	.line	88; expf.c	return z;
	MOVFF	r0x03, FSR0L
	MOVFF	r0x02, PRODH
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
; ;ic:103:  _return($18) :
; ;ic:104: 	eproc _expf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float) }
_00122_DS_:
	MOVFF	PREINC1, r0x12
	MOVFF	PREINC1, r0x11
	MOVFF	PREINC1, r0x10
	MOVFF	PREINC1, r0x0f
	MOVFF	PREINC1, r0x0e
	MOVFF	PREINC1, r0x0d
	MOVFF	PREINC1, r0x0c
	MOVFF	PREINC1, r0x0b
	MOVFF	PREINC1, r0x0a
	MOVFF	PREINC1, r0x09
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
; code size:	 1500 (0x05dc) bytes ( 1.14%)
;           	  750 (0x02ee) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	   19 (0x0013) bytes


	end
