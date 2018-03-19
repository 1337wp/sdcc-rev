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
	global _sincosf

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern _errno
	extern _fabsf
	extern ___fsadd
	extern ___fslt
	extern ___fsgt
	extern ___fsmul
	extern ___fs2sint
	extern ___sint2fs
	extern ___fssub
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

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($16) :
; ;ic:2: 	proc _sincosf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, int) }
S_sincosf__sincosf	code
_sincosf:
;	.line	43; sincosf.c	float sincosf(float x, int iscos)
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
; ;ic:3: iTemp0 [k2 lr3:51 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincosf_x_1_1}[r0x00 r0x01 r0x02 r0x03 ] = recv _sincosf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, int) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
; ;ic:4: iTemp1 [k4 lr4:46 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ _sincosf_iscos_1_1}[r0x04 r0x05 ] = recv _sincosf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, int) }
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
; ;ic:5: 	if iTemp1 [k4 lr4:46 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ _sincosf_iscos_1_1}[r0x04 r0x05 ] == 0 goto _iffalse_1($5)
;	.line	49; sincosf.c	if(iscos)
	MOVF	r0x04, W
	IORWF	r0x05, W
	BZ	_00109_DS_
; ;ic:6: 	send iTemp0 [k2 lr3:51 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincosf_x_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 1}
; ;ic:7: 	iTemp3 [k9 lr7:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x06 r0x07 r0x08 r0x09 ] = call _fabsf [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float) }
;	.line	51; sincosf.c	y=fabsf(x)+HALF_PI;
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_fabsf
	MOVWF	r0x06
	MOVFF	PRODL, r0x07
	MOVFF	PRODH, r0x08
	MOVFF	FSR0L, r0x09
	MOVLW	0x04
	ADDWF	FSR1L, F
; ;ic:8: 	send iTemp3 [k9 lr7:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x06 r0x07 r0x08 r0x09 ]{argreg = 1}
; ;ic:9: 	send 1.5708 {literal-float}{argreg = 2}
; ;ic:10: 	iTemp2 [k6 lr10:58 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincosf_y_1_1}[r0x06 r0x07 r0x08 r0x09 ] = call ___fsadd [k58 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVLW	0x3f
	MOVWF	POSTDEC1
	MOVLW	0xc9
	MOVWF	POSTDEC1
	MOVLW	0x0f
	MOVWF	POSTDEC1
	MOVLW	0xdb
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	CALL	___fsadd
	MOVWF	r0x06
	MOVFF	PRODL, r0x07
	MOVFF	PRODH, r0x08
	MOVFF	FSR0L, r0x09
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:11: 	iTemp5 [k11 lr11:110 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _sincosf_sign_1_1}[r0x0a ] := 0x0 {literal-char}
;	.line	52; sincosf.c	sign=0;
	CLRF	r0x0a
; ;ic:12: 	 goto _ifend_1($6)
	BRA	_00110_DS_
; ;ic:13:  _iffalse_1($5) :
; ;ic:14: 	send iTemp0 [k2 lr3:51 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincosf_x_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 1}
; ;ic:15: 	send 0 {literal-float}{argreg = 2}
; ;ic:16: 	iTemp6 [k13 lr16:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0b ] = call ___fslt [k59 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
_00109_DS_:
;	.line	56; sincosf.c	if(x<0.0)
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
	MOVWF	r0x0b
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:17: 	if iTemp6 [k13 lr16:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0b ] == 0 goto _iffalse_0($2)
	MOVF	r0x0b, W
	BZ	_00106_DS_
; ;ic:18: 	iTemp2 [k6 lr10:58 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincosf_y_1_1}[r0x06 r0x07 r0x08 r0x09 ] = - iTemp0 [k2 lr3:51 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincosf_x_1_1}[r0x00 r0x01 r0x02 r0x03 ]
;	.line	57; sincosf.c	{ y=-x; sign=1; }
	MOVFF	r0x00, r0x06
	MOVFF	r0x01, r0x07
	MOVFF	r0x02, r0x08
	MOVFF	r0x03, r0x09
	BTG	r0x09, 7
; ;ic:19: 	iTemp5 [k11 lr11:110 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _sincosf_sign_1_1}[r0x0a ] := 0x1 {literal-char}
	MOVLW	0x01
	MOVWF	r0x0a
; ;ic:20: 	 goto _ifend_1($6)
	BRA	_00110_DS_
; ;ic:21:  _iffalse_0($2) :
; ;ic:22: 	iTemp2 [k6 lr10:58 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincosf_y_1_1}[r0x06 r0x07 r0x08 r0x09 ] := iTemp0 [k2 lr3:51 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincosf_x_1_1}[r0x00 r0x01 r0x02 r0x03 ]
_00106_DS_:
;	.line	59; sincosf.c	{ y=x; sign=0; }
	MOVFF	r0x00, r0x06
	MOVFF	r0x01, r0x07
	MOVFF	r0x02, r0x08
	MOVFF	r0x03, r0x09
; ;ic:23: 	iTemp5 [k11 lr11:110 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _sincosf_sign_1_1}[r0x0a ] := 0x0 {literal-char}
	CLRF	r0x0a
; ;ic:24:  _ifend_1($6) :
; ;ic:25: 	send iTemp2 [k6 lr10:58 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincosf_y_1_1}[r0x06 r0x07 r0x08 r0x09 ]{argreg = 1}
; ;ic:26: 	send 12867 {literal-float}{argreg = 2}
; ;ic:27: 	iTemp8 [k15 lr27:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0b ] = call ___fsgt [k60 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
_00110_DS_:
;	.line	62; sincosf.c	if(y>YMAX)
	MOVLW	0x46
	MOVWF	POSTDEC1
	MOVLW	0x49
	MOVWF	POSTDEC1
	MOVLW	0x0c
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	CALL	___fsgt
	MOVWF	r0x0b
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:28: 	if iTemp8 [k15 lr27:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0b ] == 0 goto _iffalse_2($8)
	MOVF	r0x0b, W
	BZ	_00112_DS_
; ;ic:29: 	_errno [k16 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{int} := 0x22 {literal-int}
;	.line	64; sincosf.c	errno=ERANGE;
	MOVLW	0x22
	BANKSEL	_errno
	MOVWF	_errno, B
; removed redundant BANKSEL
	CLRF	(_errno + 1), B
; ;ic:30: 	ret 0 {literal-float}
;	.line	65; sincosf.c	return 0.0;
	CLRF	FSR0L
	CLRF	PRODH
	CLRF	PRODL
	CLRF	WREG
	GOTO	_00119_DS_
; ;ic:31:  _iffalse_2($8) :
; ;ic:32: 	send 0.31831 {literal-float}{argreg = 1}
; ;ic:33: 	send iTemp2 [k6 lr10:58 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincosf_y_1_1}[r0x06 r0x07 r0x08 r0x09 ]{argreg = 2}
; ;ic:34: 	iTemp11 [k20 lr34:36 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0b r0x0c r0x0d r0x0e ] = call ___fsmul [k61 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
_00112_DS_:
;	.line	69; sincosf.c	N=((y*iPI)+0.5); /*y is positive*/
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVLW	0x3e
	MOVWF	POSTDEC1
	MOVLW	0xa2
	MOVWF	POSTDEC1
	MOVLW	0xf9
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
; ;ic:35: 	send iTemp11 [k20 lr34:36 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0b r0x0c r0x0d r0x0e ]{argreg = 1}
; ;ic:36: 	send 0.5 {literal-float}{argreg = 2}
; ;ic:37: 	iTemp12 [k21 lr37:38 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0b r0x0c r0x0d r0x0e ] = call ___fsadd [k58 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
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
; ;ic:38: 	send iTemp12 [k21 lr37:38 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0b r0x0c r0x0d r0x0e ]{argreg = 1}
; ;ic:39: 	iTemp10 [k18 lr39:44 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ _sincosf_N_1_1}[r0x0b r0x0c ] = call ___fs2sint [k62 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( float) }
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	CALL	___fs2sint
	MOVWF	r0x0b
	MOVFF	PRODL, r0x0c
	MOVLW	0x04
	ADDWF	FSR1L, F
; ;ic:40: 	iTemp14 [k23 lr40:41 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int} = iTemp10 [k18 lr39:44 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ _sincosf_N_1_1}[r0x0b r0x0c ] & 0x1 {literal-int}
;	.line	72; sincosf.c	if(N&1) sign=!sign;
	BTFSS	r0x0b, 0
	BRA	_00114_DS_
; ;ic:41: 	if iTemp14 [k23 lr40:41 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int} == 0 goto _iffalse_3($10)
; ;ic:42: 	iTemp5 [k11 lr11:110 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _sincosf_sign_1_1}[r0x0a ] = not iTemp5 [k11 lr11:110 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _sincosf_sign_1_1}[r0x0a ]
	MOVF	r0x0a, W
	BSF	STATUS, 0
	TSTFSZ	WREG
	BCF	STATUS, 0
	CLRF	r0x0a
	RLCF	r0x0a, F
; ;ic:43:  _iffalse_3($10) :
; ;ic:44: 	send iTemp10 [k18 lr39:44 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ _sincosf_N_1_1}[r0x0b r0x0c ]{argreg = 1}
; ;ic:45: 	iTemp17 [k26 lr45:70 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincosf_XN_1_1}[r0x0b r0x0c r0x0d r0x0e ] = call ___sint2fs [k63 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( int) }
_00114_DS_:
;	.line	74; sincosf.c	XN=N;
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	CALL	___sint2fs
	MOVWF	r0x0b
	MOVFF	PRODL, r0x0c
	MOVFF	PRODH, r0x0d
	MOVFF	FSR0L, r0x0e
	MOVLW	0x02
	ADDWF	FSR1L, F
; ;ic:46: 	if iTemp1 [k4 lr4:46 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ _sincosf_iscos_1_1}[r0x04 r0x05 ] == 0 goto _iffalse_4($12)
;	.line	76; sincosf.c	if(iscos) XN-=0.5;
	MOVF	r0x04, W
	IORWF	r0x05, W
	BZ	_00116_DS_
; ;ic:47: 	send iTemp17 [k26 lr45:70 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincosf_XN_1_1}[r0x0b r0x0c r0x0d r0x0e ]{argreg = 1}
; ;ic:48: 	send 0.5 {literal-float}{argreg = 2}
; ;ic:49: 	iTemp17 [k26 lr45:70 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincosf_XN_1_1}[r0x0b r0x0c r0x0d r0x0e ] = call ___fssub [k64 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
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
	CALL	___fssub
	MOVWF	r0x0b
	MOVFF	PRODL, r0x0c
	MOVFF	PRODH, r0x0d
	MOVFF	FSR0L, r0x0e
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:50:  _iffalse_4($12) :
; ;ic:51: 	send iTemp0 [k2 lr3:51 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincosf_x_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 1}
; ;ic:52: 	iTemp2 [k6 lr10:58 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincosf_y_1_1}[r0x06 r0x07 r0x08 r0x09 ] = call _fabsf [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float) }
_00116_DS_:
;	.line	78; sincosf.c	y=fabsf(x);
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_fabsf
	MOVWF	r0x06
	MOVFF	PRODL, r0x07
	MOVFF	PRODH, r0x08
	MOVFF	FSR0L, r0x09
	MOVLW	0x04
	ADDWF	FSR1L, F
; ;ic:53: 	send iTemp2 [k6 lr10:58 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincosf_y_1_1}[r0x06 r0x07 r0x08 r0x09 ]{argreg = 1}
; ;ic:54: 	iTemp22 [k33 lr54:55 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x00 r0x01 ] = call ___fs2sint [k62 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( float) }
;	.line	79; sincosf.c	r=(int)y;
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	CALL	___fs2sint
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVLW	0x04
	ADDWF	FSR1L, F
; ;ic:55: 	send iTemp22 [k33 lr54:55 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x00 r0x01 ]{argreg = 1}
; ;ic:56: 	iTemp21 [k31 lr56:104 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincosf_r_1_1}[r0x00 r0x01 r0x02 r0x03 ] = call ___sint2fs [k63 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( int) }
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	___sint2fs
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVLW	0x02
	ADDWF	FSR1L, F
; ;ic:57: 	send iTemp2 [k6 lr10:58 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincosf_y_1_1}[r0x06 r0x07 r0x08 r0x09 ]{argreg = 1}
; ;ic:58: 	send iTemp21 [k31 lr56:104 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincosf_r_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 2}
; ;ic:59: 	iTemp24 [k35 lr59:101 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincosf_g_1_1}[r0x04 r0x05 r0x06 r0x07 ] = call ___fssub [k64 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
;	.line	80; sincosf.c	g=y-r;
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	CALL	___fssub
	MOVWF	r0x04
	MOVFF	PRODL, r0x05
	MOVFF	PRODH, r0x06
	MOVFF	FSR0L, r0x07
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:60: 	send 3.14062 {literal-float}{argreg = 1}
; ;ic:61: 	send iTemp17 [k26 lr45:70 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincosf_XN_1_1}[r0x0b r0x0c r0x0d r0x0e ]{argreg = 2}
; ;ic:62: 	iTemp27 [k40 lr62:64 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x08 r0x09 r0x0f r0x10 ] = call ___fsmul [k61 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
;	.line	81; sincosf.c	f=((r-XN*C1)+g)-XN*C2;
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVLW	0x40
	MOVWF	POSTDEC1
	MOVLW	0x49
	MOVWF	POSTDEC1
	MOVLW	0x00
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x08
	MOVFF	PRODL, r0x09
	MOVFF	PRODH, r0x0f
	MOVFF	FSR0L, r0x10
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:63: 	send iTemp21 [k31 lr56:104 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincosf_r_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 1}
; ;ic:64: 	send iTemp27 [k40 lr62:64 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x08 r0x09 r0x0f r0x10 ]{argreg = 2}
; ;ic:65: 	iTemp28 [k41 lr65:67 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x08 r0x09 r0x0f r0x10 ] = call ___fssub [k64 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
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
	MOVWF	r0x08
	MOVFF	PRODL, r0x09
	MOVFF	PRODH, r0x0f
	MOVFF	FSR0L, r0x10
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:66: 	send iTemp28 [k41 lr65:67 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x08 r0x09 r0x0f r0x10 ]{argreg = 1}
; ;ic:67: 	send iTemp24 [k35 lr59:101 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincosf_g_1_1}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 2}
; ;ic:68: 	iTemp29 [k42 lr68:73 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x08 r0x09 r0x0f r0x10 ] = call ___fsadd [k58 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	CALL	___fsadd
	MOVWF	r0x08
	MOVFF	PRODL, r0x09
	MOVFF	PRODH, r0x0f
	MOVFF	FSR0L, r0x10
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:69: 	send 0.000967654 {literal-float}{argreg = 1}
; ;ic:70: 	send iTemp17 [k26 lr45:70 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincosf_XN_1_1}[r0x0b r0x0c r0x0d r0x0e ]{argreg = 2}
; ;ic:71: 	iTemp30 [k43 lr71:73 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0b r0x0c r0x0d r0x0e ] = call ___fsmul [k61 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVLW	0x3a
	MOVWF	POSTDEC1
	MOVLW	0x7d
	MOVWF	POSTDEC1
	MOVLW	0xaa
	MOVWF	POSTDEC1
	MOVLW	0x22
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x0b
	MOVFF	PRODL, r0x0c
	MOVFF	PRODH, r0x0d
	MOVFF	FSR0L, r0x0e
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:72: 	send iTemp29 [k42 lr68:73 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x08 r0x09 r0x0f r0x10 ]{argreg = 1}
; ;ic:73: 	send iTemp30 [k43 lr71:73 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0b r0x0c r0x0d r0x0e ]{argreg = 2}
; ;ic:74: 	iTemp26 [k38 lr74:114 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincosf_f_1_1}[r0x08 r0x09 r0x0b r0x0c ] = call ___fssub [k64 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	CALL	___fssub
	MOVWF	r0x08
	MOVFF	PRODL, r0x09
	MOVFF	PRODH, r0x0b
	MOVFF	FSR0L, r0x0c
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:75: 	send iTemp26 [k38 lr74:114 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincosf_f_1_1}[r0x08 r0x09 r0x0b r0x0c ]{argreg = 1}
; ;ic:76: 	send iTemp26 [k38 lr74:114 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincosf_f_1_1}[r0x08 r0x09 r0x0b r0x0c ]{argreg = 2}
; ;ic:77: 	iTemp24 [k35 lr59:101 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincosf_g_1_1}[r0x04 r0x05 r0x06 r0x07 ] = call ___fsmul [k61 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
;	.line	83; sincosf.c	g=f*f;
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x04
	MOVFF	PRODL, r0x05
	MOVFF	PRODH, r0x06
	MOVFF	FSR0L, r0x07
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:78: 	send iTemp24 [k35 lr59:101 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincosf_g_1_1}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 1}
; ;ic:79: 	send 5.96046e-08 {literal-float}{argreg = 2}
; ;ic:80: 	iTemp33 [k46 lr80:81 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0d ] = call ___fsgt [k60 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
;	.line	84; sincosf.c	if(g>EPS2) //Used to be if(fabsf(f)>EPS)
	MOVLW	0x33
	MOVWF	POSTDEC1
	MOVLW	0x7f
	MOVWF	POSTDEC1
	SETF	POSTDEC1
	MOVLW	0xf3
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
	MOVWF	r0x0d
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:81: 	if iTemp33 [k46 lr80:81 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0d ] == 0 goto _iffalse_5($14)
	MOVF	r0x0d, W
	BTFSC	STATUS, 2
	BRA	_00118_DS_
; ;ic:82: 	send 2.6019e-06 {literal-float}{argreg = 1}
; ;ic:83: 	send iTemp24 [k35 lr59:101 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincosf_g_1_1}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 2}
; ;ic:84: 	iTemp34 [k47 lr84:86 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0d r0x0e r0x0f r0x10 ] = call ___fsmul [k61 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
;	.line	86; sincosf.c	r=(((r4*g+r3)*g+r2)*g+r1)*g;
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVLW	0x36
	MOVWF	POSTDEC1
	MOVLW	0x2e
	MOVWF	POSTDEC1
	MOVLW	0x9c
	MOVWF	POSTDEC1
	MOVLW	0x5b
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x0d
	MOVFF	PRODL, r0x0e
	MOVFF	PRODH, r0x0f
	MOVFF	FSR0L, r0x10
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:85: 	send iTemp34 [k47 lr84:86 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0d r0x0e r0x0f r0x10 ]{argreg = 1}
; ;ic:86: 	send -0.000198074 {literal-float}{argreg = 2}
; ;ic:87: 	iTemp35 [k48 lr87:89 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0d r0x0e r0x0f r0x10 ] = call ___fsadd [k58 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVLW	0xb9
	MOVWF	POSTDEC1
	MOVLW	0x4f
	MOVWF	POSTDEC1
	MOVLW	0xb2
	MOVWF	POSTDEC1
	MOVLW	0x22
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	CALL	___fsadd
	MOVWF	r0x0d
	MOVFF	PRODL, r0x0e
	MOVFF	PRODH, r0x0f
	MOVFF	FSR0L, r0x10
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:88: 	send iTemp35 [k48 lr87:89 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0d r0x0e r0x0f r0x10 ]{argreg = 1}
; ;ic:89: 	send iTemp24 [k35 lr59:101 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincosf_g_1_1}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 2}
; ;ic:90: 	iTemp36 [k49 lr90:92 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0d r0x0e r0x0f r0x10 ] = call ___fsmul [k61 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x0d
	MOVFF	PRODL, r0x0e
	MOVFF	PRODH, r0x0f
	MOVFF	FSR0L, r0x10
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:91: 	send iTemp36 [k49 lr90:92 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0d r0x0e r0x0f r0x10 ]{argreg = 1}
; ;ic:92: 	send 0.00833303 {literal-float}{argreg = 2}
; ;ic:93: 	iTemp37 [k50 lr93:95 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0d r0x0e r0x0f r0x10 ] = call ___fsadd [k58 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVLW	0x3c
	MOVWF	POSTDEC1
	MOVLW	0x08
	MOVWF	POSTDEC1
	MOVLW	0x87
	MOVWF	POSTDEC1
	MOVLW	0x3e
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	CALL	___fsadd
	MOVWF	r0x0d
	MOVFF	PRODL, r0x0e
	MOVFF	PRODH, r0x0f
	MOVFF	FSR0L, r0x10
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:94: 	send iTemp37 [k50 lr93:95 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0d r0x0e r0x0f r0x10 ]{argreg = 1}
; ;ic:95: 	send iTemp24 [k35 lr59:101 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincosf_g_1_1}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 2}
; ;ic:96: 	iTemp38 [k51 lr96:98 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0d r0x0e r0x0f r0x10 ] = call ___fsmul [k61 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x0d
	MOVFF	PRODL, r0x0e
	MOVFF	PRODH, r0x0f
	MOVFF	FSR0L, r0x10
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:97: 	send iTemp38 [k51 lr96:98 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0d r0x0e r0x0f r0x10 ]{argreg = 1}
; ;ic:98: 	send -0.166667 {literal-float}{argreg = 2}
; ;ic:99: 	iTemp39 [k52 lr99:101 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0d r0x0e r0x0f r0x10 ] = call ___fsadd [k58 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVLW	0xbe
	MOVWF	POSTDEC1
	MOVLW	0x2a
	MOVWF	POSTDEC1
	MOVLW	0xaa
	MOVWF	POSTDEC1
	MOVLW	0xa4
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	CALL	___fsadd
	MOVWF	r0x0d
	MOVFF	PRODL, r0x0e
	MOVFF	PRODH, r0x0f
	MOVFF	FSR0L, r0x10
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:100: 	send iTemp39 [k52 lr99:101 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0d r0x0e r0x0f r0x10 ]{argreg = 1}
; ;ic:101: 	send iTemp24 [k35 lr59:101 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincosf_g_1_1}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 2}
; ;ic:102: 	iTemp21 [k31 lr56:104 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincosf_r_1_1}[r0x00 r0x01 r0x02 r0x03 ] = call ___fsmul [k61 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:103: 	send iTemp26 [k38 lr74:114 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincosf_f_1_1}[r0x08 r0x09 r0x0b r0x0c ]{argreg = 1}
; ;ic:104: 	send iTemp21 [k31 lr56:104 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincosf_r_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 2}
; ;ic:105: 	iTemp41 [k54 lr105:107 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x00 r0x01 r0x02 r0x03 ] = call ___fsmul [k61 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
;	.line	87; sincosf.c	f+=f*r;
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:106: 	send iTemp26 [k38 lr74:114 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincosf_f_1_1}[r0x08 r0x09 r0x0b r0x0c ]{argreg = 1}
; ;ic:107: 	send iTemp41 [k54 lr105:107 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 2}
; ;ic:108: 	iTemp26 [k38 lr74:114 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincosf_f_1_1}[r0x08 r0x09 r0x0b r0x0c ] = call ___fsadd [k58 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	CALL	___fsadd
	MOVWF	r0x08
	MOVFF	PRODL, r0x09
	MOVFF	PRODH, r0x0b
	MOVFF	FSR0L, r0x0c
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:109:  _iffalse_5($14) :
; ;ic:110: 	if iTemp5 [k11 lr11:110 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _sincosf_sign_1_1}[r0x0a ] == 0 goto iTempLbl0($17)
_00118_DS_:
;	.line	89; sincosf.c	return (sign?-f:f);
	MOVF	r0x0a, W
	BZ	_00121_DS_
; ;ic:111: 	iTemp43 [k56 lr111:116 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x00 r0x01 r0x02 r0x03 ] = - iTemp26 [k38 lr74:114 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincosf_f_1_1}[r0x08 r0x09 r0x0b r0x0c ]
	MOVFF	r0x08, r0x00
	MOVFF	r0x09, r0x01
	MOVFF	r0x0b, r0x02
	MOVFF	r0x0c, r0x03
	BTG	r0x03, 7
; ;ic:112: 	 goto iTempLbl1($18)
	BRA	_00122_DS_
; ;ic:113:  iTempLbl0($17) :
; ;ic:114: 	iTemp43 [k56 lr111:116 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x00 r0x01 r0x02 r0x03 ] := iTemp26 [k38 lr74:114 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincosf_f_1_1}[r0x08 r0x09 r0x0b r0x0c ]
_00121_DS_:
	MOVFF	r0x08, r0x00
	MOVFF	r0x09, r0x01
	MOVFF	r0x0b, r0x02
	MOVFF	r0x0c, r0x03
; ;ic:115:  iTempLbl1($18) :
; ;ic:116: 	ret iTemp43 [k56 lr111:116 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x00 r0x01 r0x02 r0x03 ]
_00122_DS_:
	MOVFF	r0x03, FSR0L
	MOVFF	r0x02, PRODH
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
; ;ic:117:  _return($15) :
; ;ic:118: 	eproc _sincosf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, int) }
_00119_DS_:
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
; code size:	 1724 (0x06bc) bytes ( 1.32%)
;           	  862 (0x035e) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	   17 (0x0011) bytes


	end
