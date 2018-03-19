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
	global _sincoshf

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern _errno
	extern _expf
	extern ___fslt
	extern ___fsgt
	extern ___fssub
	extern ___fsmul
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
r0x13	res	1
r0x14	res	1
r0x15	res	1
r0x16	res	1

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($22) :
; ;ic:2: 	proc _sincoshf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float, const-int) }
S_sincoshf__sincoshf	code
_sincoshf:
;	.line	49; sincoshf.c	float sincoshf(const float x, const int iscosh)
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
	MOVFF	r0x13, POSTDEC1
	MOVFF	r0x14, POSTDEC1
	MOVFF	r0x15, POSTDEC1
	MOVFF	r0x16, POSTDEC1
; ;ic:3: iTemp0 [k2 lr3:95 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _sincoshf_x_1_1}[r0x00 r0x01 r0x02 r0x03 ] = recv _sincoshf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float, const-int) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
; ;ic:4: iTemp1 [k4 lr4:52 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-int}{ sir@ _sincoshf_iscosh_1_1}[r0x04 r0x05 ] = recv _sincoshf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float, const-int) }
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
; ;ic:5: 	send iTemp0 [k2 lr3:95 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _sincoshf_x_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 1}
; ;ic:6: 	send 0 {literal-float}{argreg = 2}
; ;ic:7: 	iTemp2 [k6 lr7:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x06 ] = call ___fslt [k42 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
;	.line	54; sincoshf.c	if (x<0.0) { y=-x; sign=1; }
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
	MOVWF	r0x06
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:8: 	if iTemp2 [k6 lr7:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x06 ] == 0 goto _iffalse_0($2)
	MOVF	r0x06, W
	BZ	_00106_DS_
; ;ic:9: 	iTemp3 [k7 lr9:67 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincoshf_y_1_1}[r0x06 r0x07 r0x08 r0x09 ] = - iTemp0 [k2 lr3:95 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _sincoshf_x_1_1}[r0x00 r0x01 r0x02 r0x03 ]
	MOVFF	r0x00, r0x06
	MOVFF	r0x01, r0x07
	MOVFF	r0x02, r0x08
	MOVFF	r0x03, r0x09
	BTG	r0x09, 7
; ;ic:10: 	iTemp5 [k10 lr10:62 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _sincoshf_sign_1_1}[r0x0a ] := 0x1 {literal-char}
	MOVLW	0x01
	MOVWF	r0x0a
; ;ic:11: 	 goto _ifend_0($3)
	BRA	_00107_DS_
; ;ic:12:  _iffalse_0($2) :
; ;ic:13: 	iTemp3 [k7 lr9:67 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincoshf_y_1_1}[r0x06 r0x07 r0x08 r0x09 ] := iTemp0 [k2 lr3:95 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _sincoshf_x_1_1}[r0x00 r0x01 r0x02 r0x03 ]
_00106_DS_:
;	.line	55; sincoshf.c	else { y=x;  sign=0; }
	MOVFF	r0x00, r0x06
	MOVFF	r0x01, r0x07
	MOVFF	r0x02, r0x08
	MOVFF	r0x03, r0x09
; ;ic:14: 	iTemp5 [k10 lr10:62 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _sincoshf_sign_1_1}[r0x0a ] := 0x0 {literal-char}
	CLRF	r0x0a
; ;ic:15:  _ifend_0($3) :
; ;ic:16: 	send iTemp3 [k7 lr9:67 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincoshf_y_1_1}[r0x06 r0x07 r0x08 r0x09 ]{argreg = 1}
; ;ic:17: 	send 1 {literal-float}{argreg = 2}
; ;ic:18: 	iTemp6 [k12 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0b ] = call ___fsgt [k43 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
_00107_DS_:
;	.line	57; sincoshf.c	if ((y>1.0) || iscosh)
	MOVLW	0x3f
	MOVWF	POSTDEC1
	MOVLW	0x80
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
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
; ;ic:19: 	if iTemp6 [k12 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0b ] != 0 goto _iftrue_6($17)
	MOVF	r0x0b, W
	BNZ	_00121_DS_
; ;ic:20: 	if iTemp1 [k4 lr4:52 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-int}{ sir@ _sincoshf_iscosh_1_1}[r0x04 r0x05 ] == 0 goto _iffalse_6($18)
	MOVF	r0x04, W
	IORWF	r0x05, W
	BTFSC	STATUS, 2
	BRA	_00122_DS_
; ;ic:21:  _iftrue_6($17) :
; ;ic:22: 	send iTemp3 [k7 lr9:67 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincoshf_y_1_1}[r0x06 r0x07 r0x08 r0x09 ]{argreg = 1}
; ;ic:23: 	send 9 {literal-float}{argreg = 2}
; ;ic:24: 	iTemp7 [k13 lr24:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0b ] = call ___fsgt [k43 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
_00121_DS_:
;	.line	59; sincoshf.c	if(y>YBAR)
	MOVLW	0x41
	MOVWF	POSTDEC1
	MOVLW	0x10
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
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
; ;ic:25: 	if iTemp7 [k13 lr24:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0b ] == 0 goto _iffalse_3($10)
	MOVF	r0x0b, W
	BTFSC	STATUS, 2
	BRA	_00114_DS_
; ;ic:26: 	send iTemp3 [k7 lr9:67 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincoshf_y_1_1}[r0x06 r0x07 r0x08 r0x09 ]{argreg = 1}
; ;ic:27: 	send 0.693161 {literal-float}{argreg = 2}
; ;ic:28: 	iTemp8 [k14 lr28:56 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincoshf_w_1_1}[r0x0b r0x0c r0x0d r0x0e ] = call ___fssub [k44 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
;	.line	61; sincoshf.c	w=y-K1;
	MOVLW	0x3f
	MOVWF	POSTDEC1
	MOVLW	0x31
	MOVWF	POSTDEC1
	MOVLW	0x73
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
	CALL	___fssub
	MOVWF	r0x0b
	MOVFF	PRODL, r0x0c
	MOVFF	PRODH, r0x0d
	MOVFF	FSR0L, r0x0e
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:29: 	send iTemp8 [k14 lr28:56 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincoshf_w_1_1}[r0x0b r0x0c r0x0d r0x0e ]{argreg = 1}
; ;ic:30: 	send 44.9354 {literal-float}{argreg = 2}
; ;ic:31: 	iTemp10 [k17 lr31:32 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0f ] = call ___fsgt [k43 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
;	.line	62; sincoshf.c	if (w>WMAX)
	MOVLW	0x42
	MOVWF	POSTDEC1
	MOVLW	0x33
	MOVWF	POSTDEC1
	MOVLW	0xbd
	MOVWF	POSTDEC1
	MOVLW	0xcf
	MOVWF	POSTDEC1
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	CALL	___fsgt
	MOVWF	r0x0f
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:32: 	if iTemp10 [k17 lr31:32 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0f ] == 0 goto _iffalse_1($5)
	MOVF	r0x0f, W
	BZ	_00109_DS_
; ;ic:33: 	_errno [k18 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{int} := 0x22 {literal-int}
;	.line	64; sincoshf.c	errno=ERANGE;
	MOVLW	0x22
	BANKSEL	_errno
	MOVWF	_errno, B
; removed redundant BANKSEL
	CLRF	(_errno + 1), B
; ;ic:34: 	iTemp12 [k20 lr34:98 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincoshf_z_1_1}[r0x0f r0x10 r0x11 r0x12 ] := 3.40282e+38 {literal-float}
;	.line	65; sincoshf.c	z=XMAX;
	SETF	r0x0f
	SETF	r0x10
	MOVLW	0x7f
	MOVWF	r0x11
	MOVWF	r0x12
; ;ic:35: 	 goto _ifend_3($11)
	BRA	_00115_DS_
; ;ic:36:  _iffalse_1($5) :
; ;ic:37: 	send iTemp8 [k14 lr28:56 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincoshf_w_1_1}[r0x0b r0x0c r0x0d r0x0e ]{argreg = 1}
; ;ic:38: 	iTemp12 [k20 lr34:98 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincoshf_z_1_1}[r0x0f r0x10 r0x11 r0x12 ] = call _expf [k22 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float) }
_00109_DS_:
;	.line	69; sincoshf.c	z=expf(w);
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	CALL	_expf
	MOVWF	r0x0f
	MOVFF	PRODL, r0x10
	MOVFF	PRODH, r0x11
	MOVFF	FSR0L, r0x12
	MOVLW	0x04
	ADDWF	FSR1L, F
; ;ic:39: 	send 1.38303e-05 {literal-float}{argreg = 1}
; ;ic:40: 	send iTemp12 [k20 lr34:98 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincoshf_z_1_1}[r0x0f r0x10 r0x11 r0x12 ]{argreg = 2}
; ;ic:41: 	iTemp14 [k24 lr41:43 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x13 r0x14 r0x15 r0x16 ] = call ___fsmul [k45 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
;	.line	70; sincoshf.c	z+=K3*z;
	MOVF	r0x12, W
	MOVWF	POSTDEC1
	MOVF	r0x11, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	MOVLW	0x37
	MOVWF	POSTDEC1
	MOVLW	0x68
	MOVWF	POSTDEC1
	MOVLW	0x08
	MOVWF	POSTDEC1
	MOVLW	0x97
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x13
	MOVFF	PRODL, r0x14
	MOVFF	PRODH, r0x15
	MOVFF	FSR0L, r0x16
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:42: 	send iTemp12 [k20 lr34:98 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincoshf_z_1_1}[r0x0f r0x10 r0x11 r0x12 ]{argreg = 1}
; ;ic:43: 	send iTemp14 [k24 lr41:43 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x13 r0x14 r0x15 r0x16 ]{argreg = 2}
; ;ic:44: 	iTemp12 [k20 lr34:98 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincoshf_z_1_1}[r0x0f r0x10 r0x11 r0x12 ] = call ___fsadd [k46 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x16, W
	MOVWF	POSTDEC1
	MOVF	r0x15, W
	MOVWF	POSTDEC1
	MOVF	r0x14, W
	MOVWF	POSTDEC1
	MOVF	r0x13, W
	MOVWF	POSTDEC1
	MOVF	r0x12, W
	MOVWF	POSTDEC1
	MOVF	r0x11, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	CALL	___fsadd
	MOVWF	r0x0f
	MOVFF	PRODL, r0x10
	MOVFF	PRODH, r0x11
	MOVFF	FSR0L, r0x12
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:45: 	 goto _ifend_3($11)
	BRA	_00115_DS_
; ;ic:46:  _iffalse_3($10) :
; ;ic:47: 	send iTemp3 [k7 lr9:67 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincoshf_y_1_1}[r0x06 r0x07 r0x08 r0x09 ]{argreg = 1}
; ;ic:48: 	iTemp12 [k20 lr34:98 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincoshf_z_1_1}[r0x0f r0x10 r0x11 r0x12 ] = call _expf [k22 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float) }
_00114_DS_:
;	.line	75; sincoshf.c	z=expf(y);
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	CALL	_expf
	MOVWF	r0x0f
	MOVFF	PRODL, r0x10
	MOVFF	PRODH, r0x11
	MOVFF	FSR0L, r0x12
	MOVLW	0x04
	ADDWF	FSR1L, F
; ;ic:49: 	send 1 {literal-float}{argreg = 1}
; ;ic:50: 	send iTemp12 [k20 lr34:98 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincoshf_z_1_1}[r0x0f r0x10 r0x11 r0x12 ]{argreg = 2}
; ;ic:51: 	iTemp8 [k14 lr28:56 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincoshf_w_1_1}[r0x0b r0x0c r0x0d r0x0e ] = call ___fsdiv [k47 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
;	.line	76; sincoshf.c	w=1.0/z;
	MOVF	r0x12, W
	MOVWF	POSTDEC1
	MOVF	r0x11, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	MOVLW	0x3f
	MOVWF	POSTDEC1
	MOVLW	0x80
	MOVWF	POSTDEC1
	MOVLW	0x00
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CALL	___fsdiv
	MOVWF	r0x0b
	MOVFF	PRODL, r0x0c
	MOVFF	PRODH, r0x0d
	MOVFF	FSR0L, r0x0e
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:52: 	if iTemp1 [k4 lr4:52 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-int}{ sir@ _sincoshf_iscosh_1_1}[r0x04 r0x05 ] != 0 goto _iffalse_2($8)
;	.line	77; sincoshf.c	if(!iscosh) w=-w;
	MOVF	r0x04, W
; #	IORWF	r0x05, W
; #	BTFSS	STATUS, 2
; #	GOTO	_00112_DS_
; #;;ic:53: 	iTemp8 [k14 lr28:56 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincoshf_w_1_1}[r0x0b r0x0c r0x0d r0x0e ] = - iTemp8 [k14 lr28:56 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincoshf_w_1_1}[r0x0b r0x0c r0x0d r0x0e ]
; #	BTG	r0x0e, 7
; #;;ic:54:  _iffalse_2($8) :
; #;;ic:55: 	send iTemp12 [k20 lr34:98 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincoshf_z_1_1}[r0x0f r0x10 r0x11 r0x12 ]{argreg = 1}
; #;;ic:56: 	send iTemp8 [k14 lr28:56 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincoshf_w_1_1}[r0x0b r0x0c r0x0d r0x0e ]{argreg = 2}
; #;;ic:57: 	iTemp19 [k29 lr57:59 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x04 r0x05 r0x0b r0x0c ] = call ___fsadd [k46 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
; #	MOVF	r0x0e, W
;	.line	78; sincoshf.c	z=(z+w)*0.5;
	IORWF	r0x05, W
	BTFSC	STATUS, 2
	BTG	r0x0e, 7
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x12, W
	MOVWF	POSTDEC1
	MOVF	r0x11, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	CALL	___fsadd
	MOVWF	r0x04
	MOVFF	PRODL, r0x05
	MOVFF	PRODH, r0x0b
	MOVFF	FSR0L, r0x0c
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:58: 	send 0.5 {literal-float}{argreg = 1}
; ;ic:59: 	send iTemp19 [k29 lr57:59 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x04 r0x05 r0x0b r0x0c ]{argreg = 2}
; ;ic:60: 	iTemp12 [k20 lr34:98 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincoshf_z_1_1}[r0x0f r0x10 r0x11 r0x12 ] = call ___fsmul [k45 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVLW	0x3f
	MOVWF	POSTDEC1
	MOVLW	0x00
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x0f
	MOVFF	PRODL, r0x10
	MOVFF	PRODH, r0x11
	MOVFF	FSR0L, r0x12
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:61:  _ifend_3($11) :
; ;ic:62: 	if iTemp5 [k10 lr10:62 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _sincoshf_sign_1_1}[r0x0a ] == 0 goto _ifend_6($19)
_00115_DS_:
;	.line	80; sincoshf.c	if(sign) z=-z;
	MOVF	r0x0a, W
	BTFSC	STATUS, 2
	BRA	_00123_DS_
; ;ic:63: 	iTemp12 [k20 lr34:98 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincoshf_z_1_1}[r0x0f r0x10 r0x11 r0x12 ] = - iTemp12 [k20 lr34:98 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincoshf_z_1_1}[r0x0f r0x10 r0x11 r0x12 ]
	BTG	r0x12, 7
; ;ic:64: 	 goto _ifend_6($19)
	BRA	_00123_DS_
; ;ic:65:  _iffalse_6($18) :
; ;ic:66: 	send iTemp3 [k7 lr9:67 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincoshf_y_1_1}[r0x06 r0x07 r0x08 r0x09 ]{argreg = 1}
; ;ic:67: 	send 0.000244141 {literal-float}{argreg = 2}
; ;ic:68: 	iTemp22 [k32 lr68:69 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x04 ] = call ___fslt [k42 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
_00122_DS_:
;	.line	84; sincoshf.c	if (y<EPS)
	MOVLW	0x39
	MOVWF	POSTDEC1
	MOVLW	0x80
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	CALL	___fslt
	MOVWF	r0x04
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:69: 	if iTemp22 [k32 lr68:69 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x04 ] == 0 goto _iffalse_5($15)
	MOVF	r0x04, W
	BZ	_00119_DS_
; ;ic:70: 	iTemp12 [k20 lr34:98 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincoshf_z_1_1}[r0x0f r0x10 r0x11 r0x12 ] := iTemp0 [k2 lr3:95 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _sincoshf_x_1_1}[r0x00 r0x01 r0x02 r0x03 ]
;	.line	85; sincoshf.c	z=x;
	MOVFF	r0x00, r0x0f
	MOVFF	r0x01, r0x10
	MOVFF	r0x02, r0x11
	MOVFF	r0x03, r0x12
; ;ic:71: 	 goto _ifend_6($19)
	BRA	_00123_DS_
; ;ic:72:  _iffalse_5($15) :
; ;ic:73: 	send iTemp0 [k2 lr3:95 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _sincoshf_x_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 1}
; ;ic:74: 	send iTemp0 [k2 lr3:95 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _sincoshf_x_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 2}
; ;ic:75: 	iTemp12 [k20 lr34:98 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincoshf_z_1_1}[r0x0f r0x10 r0x11 r0x12 ] = call ___fsmul [k45 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
_00119_DS_:
;	.line	88; sincoshf.c	z=x*x;
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x0f
	MOVFF	PRODL, r0x10
	MOVFF	PRODH, r0x11
	MOVFF	FSR0L, r0x12
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:76: 	send iTemp0 [k2 lr3:95 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _sincoshf_x_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 1}
; ;ic:77: 	send iTemp12 [k20 lr34:98 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincoshf_z_1_1}[r0x0f r0x10 r0x11 r0x12 ]{argreg = 2}
; ;ic:78: 	iTemp24 [k34 lr78:86 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x04 r0x05 r0x06 r0x07 ] = call ___fsmul [k45 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
;	.line	89; sincoshf.c	z=x+x*z*P(z)/Q(z);
	MOVF	r0x12, W
	MOVWF	POSTDEC1
	MOVF	r0x11, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x04
	MOVFF	PRODL, r0x05
	MOVFF	PRODH, r0x06
	MOVFF	FSR0L, r0x07
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:79: 	send -0.190334 {literal-float}{argreg = 1}
; ;ic:80: 	send iTemp12 [k20 lr34:98 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincoshf_z_1_1}[r0x0f r0x10 r0x11 r0x12 ]{argreg = 2}
; ;ic:81: 	iTemp25 [k35 lr81:83 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x08 r0x09 r0x0a r0x0b ] = call ___fsmul [k45 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x12, W
	MOVWF	POSTDEC1
	MOVF	r0x11, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	MOVLW	0xbe
	MOVWF	POSTDEC1
	MOVLW	0x42
	MOVWF	POSTDEC1
	MOVLW	0xe6
	MOVWF	POSTDEC1
	MOVLW	0xea
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x08
	MOVFF	PRODL, r0x09
	MOVFF	PRODH, r0x0a
	MOVFF	FSR0L, r0x0b
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:82: 	send iTemp25 [k35 lr81:83 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x08 r0x09 r0x0a r0x0b ]{argreg = 1}
; ;ic:83: 	send -7.13793 {literal-float}{argreg = 2}
; ;ic:84: 	iTemp26 [k36 lr84:86 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x08 r0x09 r0x0a r0x0b ] = call ___fsadd [k46 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVLW	0xc0
	MOVWF	POSTDEC1
	MOVLW	0xe4
	MOVWF	POSTDEC1
	MOVLW	0x69
	MOVWF	POSTDEC1
	MOVLW	0xf0
	MOVWF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	CALL	___fsadd
	MOVWF	r0x08
	MOVFF	PRODL, r0x09
	MOVFF	PRODH, r0x0a
	MOVFF	FSR0L, r0x0b
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:85: 	send iTemp24 [k34 lr78:86 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 1}
; ;ic:86: 	send iTemp26 [k36 lr84:86 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x08 r0x09 r0x0a r0x0b ]{argreg = 2}
; ;ic:87: 	iTemp27 [k37 lr87:92 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x04 r0x05 r0x06 r0x07 ] = call ___fsmul [k45 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
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
	MOVWF	r0x04
	MOVFF	PRODL, r0x05
	MOVFF	PRODH, r0x06
	MOVFF	FSR0L, r0x07
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:88: 	send iTemp12 [k20 lr34:98 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincoshf_z_1_1}[r0x0f r0x10 r0x11 r0x12 ]{argreg = 1}
; ;ic:89: 	send -42.8277 {literal-float}{argreg = 2}
; ;ic:90: 	iTemp29 [k39 lr90:92 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x08 r0x09 r0x0a r0x0b ] = call ___fsadd [k46 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVLW	0xc2
	MOVWF	POSTDEC1
	MOVLW	0x2b
	MOVWF	POSTDEC1
	MOVLW	0x4f
	MOVWF	POSTDEC1
	MOVLW	0x93
	MOVWF	POSTDEC1
	MOVF	r0x12, W
	MOVWF	POSTDEC1
	MOVF	r0x11, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	CALL	___fsadd
	MOVWF	r0x08
	MOVFF	PRODL, r0x09
	MOVFF	PRODH, r0x0a
	MOVFF	FSR0L, r0x0b
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:91: 	send iTemp27 [k37 lr87:92 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 1}
; ;ic:92: 	send iTemp29 [k39 lr90:92 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x08 r0x09 r0x0a r0x0b ]{argreg = 2}
; ;ic:93: 	iTemp30 [k40 lr93:95 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x04 r0x05 r0x06 r0x07 ] = call ___fsdiv [k47 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
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
	MOVWF	r0x04
	MOVFF	PRODL, r0x05
	MOVFF	PRODH, r0x06
	MOVFF	FSR0L, r0x07
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:94: 	send iTemp0 [k2 lr3:95 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _sincoshf_x_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 1}
; ;ic:95: 	send iTemp30 [k40 lr93:95 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 2}
; ;ic:96: 	iTemp12 [k20 lr34:98 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincoshf_z_1_1}[r0x0f r0x10 r0x11 r0x12 ] = call ___fsadd [k46 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	___fsadd
	MOVWF	r0x0f
	MOVFF	PRODL, r0x10
	MOVFF	PRODH, r0x11
	MOVFF	FSR0L, r0x12
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:97:  _ifend_6($19) :
; ;ic:98: 	ret iTemp12 [k20 lr34:98 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincoshf_z_1_1}[r0x0f r0x10 r0x11 r0x12 ]
_00123_DS_:
;	.line	92; sincoshf.c	return z;
	MOVFF	r0x12, FSR0L
	MOVFF	r0x11, PRODH
	MOVFF	r0x10, PRODL
	MOVF	r0x0f, W
; ;ic:99:  _return($21) :
; ;ic:100: 	eproc _sincoshf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float, const-int) }
	MOVFF	PREINC1, r0x16
	MOVFF	PREINC1, r0x15
	MOVFF	PREINC1, r0x14
	MOVFF	PREINC1, r0x13
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
; code size:	 1392 (0x0570) bytes ( 1.06%)
;           	  696 (0x02b8) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	   23 (0x0017) bytes


	end
