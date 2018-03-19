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
	global _tancotf

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern _errno
	extern _fabsf
	extern ___fsgt
	extern ___fsmul
	extern ___fsadd
	extern ___fs2sint
	extern ___sint2fs
	extern ___fssub
	extern ___fslt
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
r0x17	res	1

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($16) :
; ;ic:2: 	proc _tancotf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float, const-int) }
S_tancotf__tancotf	code
_tancotf:
;	.line	46; tancotf.c	float tancotf(const float x, const int iscotan)
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
	MOVFF	r0x17, POSTDEC1
; ;ic:3: iTemp0 [k2 lr3:38 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _tancotf_x_1_1}[r0x00 r0x01 r0x02 r0x03 ] = recv _tancotf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float, const-int) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
; ;ic:4: iTemp1 [k4 lr4:105 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-int}{ sir@ _tancotf_iscotan_1_1}[r0x04 r0x05 ] = recv _tancotf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float, const-int) }
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
; ;ic:5: 	send iTemp0 [k2 lr3:38 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _tancotf_x_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 1}
; ;ic:6: 	iTemp2 [k7 lr6:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x06 r0x07 r0x08 r0x09 ] = call _fabsf [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float) }
;	.line	51; tancotf.c	if (fabsf(x) > YMAX)
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
; ;ic:7: 	send iTemp2 [k7 lr6:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x06 r0x07 r0x08 r0x09 ]{argreg = 1}
; ;ic:8: 	send 6433 {literal-float}{argreg = 2}
; ;ic:9: 	iTemp3 [k8 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x06 ] = call ___fsgt [k54 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
	MOVLW	0x45
	MOVWF	POSTDEC1
	MOVLW	0xc9
	MOVWF	POSTDEC1
	MOVLW	0x08
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
	MOVWF	r0x06
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:10: 	if iTemp3 [k8 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x06 ] == 0 goto _iffalse_0($2)
	MOVF	r0x06, W
	BZ	_00106_DS_
; ;ic:11: 	_errno [k9 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{int} := 0x22 {literal-int}
;	.line	53; tancotf.c	errno = ERANGE;
	MOVLW	0x22
	BANKSEL	_errno
	MOVWF	_errno, B
; removed redundant BANKSEL
	CLRF	(_errno + 1), B
; ;ic:12: 	ret 0 {literal-float}
;	.line	54; tancotf.c	return 0.0;
	CLRF	FSR0L
	CLRF	PRODH
	CLRF	PRODL
	CLRF	WREG
	GOTO	_00119_DS_
; ;ic:13:  _iffalse_0($2) :
; ;ic:14: 	send 0.63662 {literal-float}{argreg = 1}
; ;ic:15: 	send iTemp0 [k2 lr3:38 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _tancotf_x_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 2}
; ;ic:16: 	iTemp6 [k13 lr16:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x06 r0x07 r0x08 r0x09 ] = call ___fsmul [k55 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
_00106_DS_:
;	.line	58; tancotf.c	n=(x*TWO_O_PI+(x>0.0?0.5:-0.5)); /*works for +-x*/
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
	MOVLW	0x22
	MOVWF	POSTDEC1
	MOVLW	0xf9
	MOVWF	POSTDEC1
	MOVLW	0x83
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x06
	MOVFF	PRODL, r0x07
	MOVFF	PRODH, r0x08
	MOVFF	FSR0L, r0x09
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:17: 	send iTemp0 [k2 lr3:38 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _tancotf_x_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 1}
; ;ic:18: 	send 0 {literal-float}{argreg = 2}
; ;ic:19: 	iTemp7 [k14 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0a ] = call ___fsgt [k54 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
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
	CALL	___fsgt
	MOVWF	r0x0a
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:20: 	if iTemp7 [k14 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0a ] == 0 goto iTempLbl0($17)
	MOVF	r0x0a, W
	BZ	_00121_DS_
; ;ic:21: 	iTemp8 [k15 lr21:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0a r0x0b r0x0c r0x0d ] := 0.5 {literal-float}
	CLRF	r0x0a
	CLRF	r0x0b
	CLRF	r0x0c
	MOVLW	0x3f
	MOVWF	r0x0d
; ;ic:22: 	 goto iTempLbl1($18)
	BRA	_00122_DS_
; ;ic:23:  iTempLbl0($17) :
; ;ic:24: 	iTemp8 [k15 lr21:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0a r0x0b r0x0c r0x0d ] := -0.5 {literal-float}
_00121_DS_:
	CLRF	r0x0a
	CLRF	r0x0b
	CLRF	r0x0c
	MOVLW	0xbf
	MOVWF	r0x0d
; ;ic:25:  iTempLbl1($18) :
; ;ic:26: 	send iTemp6 [k13 lr16:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x06 r0x07 r0x08 r0x09 ]{argreg = 1}
; ;ic:27: 	send iTemp8 [k15 lr21:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0a r0x0b r0x0c r0x0d ]{argreg = 2}
; ;ic:28: 	iTemp9 [k16 lr28:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x06 r0x07 r0x08 r0x09 ] = call ___fsadd [k56 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
_00122_DS_:
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
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
	CALL	___fsadd
	MOVWF	r0x06
	MOVFF	PRODL, r0x07
	MOVFF	PRODH, r0x08
	MOVFF	FSR0L, r0x09
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:29: 	send iTemp9 [k16 lr28:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x06 r0x07 r0x08 r0x09 ]{argreg = 1}
; ;ic:30: 	iTemp5 [k11 lr30:90 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ _tancotf_n_1_1}[r0x06 r0x07 ] = call ___fs2sint [k57 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( float) }
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	CALL	___fs2sint
	MOVWF	r0x06
	MOVFF	PRODL, r0x07
	MOVLW	0x04
	ADDWF	FSR1L, F
; ;ic:31: 	send iTemp5 [k11 lr30:90 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ _tancotf_n_1_1}[r0x06 r0x07 ]{argreg = 1}
; ;ic:32: 	iTemp11 [k18 lr32:50 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tancotf_xn_1_1}[r0x08 r0x09 r0x0a r0x0b ] = call ___sint2fs [k58 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( int) }
;	.line	59; tancotf.c	xn=n;
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	CALL	___sint2fs
	MOVWF	r0x08
	MOVFF	PRODL, r0x09
	MOVFF	PRODH, r0x0a
	MOVFF	FSR0L, r0x0b
	MOVLW	0x02
	ADDWF	FSR1L, F
; ;ic:33: 	send iTemp0 [k2 lr3:38 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _tancotf_x_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 1}
; ;ic:34: 	iTemp14 [k23 lr34:35 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x0c r0x0d ] = call ___fs2sint [k57 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( float) }
;	.line	61; tancotf.c	xnum=(int)x;
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	___fs2sint
	MOVWF	r0x0c
	MOVFF	PRODL, r0x0d
	MOVLW	0x04
	ADDWF	FSR1L, F
; ;ic:35: 	send iTemp14 [k23 lr34:35 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x0c r0x0d ]{argreg = 1}
; ;ic:36: 	iTemp13 [k21 lr36:112 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tancotf_xnum_1_1}[r0x0c r0x0d r0x0e r0x0f ] = call ___sint2fs [k58 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( int) }
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	CALL	___sint2fs
	MOVWF	r0x0c
	MOVFF	PRODL, r0x0d
	MOVFF	PRODH, r0x0e
	MOVFF	FSR0L, r0x0f
	MOVLW	0x02
	ADDWF	FSR1L, F
; ;ic:37: 	send iTemp0 [k2 lr3:38 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _tancotf_x_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 1}
; ;ic:38: 	send iTemp13 [k21 lr36:112 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tancotf_xnum_1_1}[r0x0c r0x0d r0x0e r0x0f ]{argreg = 2}
; ;ic:39: 	iTemp16 [k25 lr39:112 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tancotf_xden_1_1}[r0x00 r0x01 r0x02 r0x03 ] = call ___fssub [k59 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
;	.line	62; tancotf.c	xden=x-xnum;
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
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
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:40: 	send 1.57031 {literal-float}{argreg = 1}
; ;ic:41: 	send iTemp11 [k18 lr32:50 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tancotf_xn_1_1}[r0x08 r0x09 r0x0a r0x0b ]{argreg = 2}
; ;ic:42: 	iTemp19 [k30 lr42:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x10 r0x11 r0x12 r0x13 ] = call ___fsmul [k55 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
;	.line	63; tancotf.c	f=((xnum-xn*C1)+xden)-xn*C2;
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	MOVLW	0x3f
	MOVWF	POSTDEC1
	MOVLW	0xc9
	MOVWF	POSTDEC1
	MOVLW	0x00
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x10
	MOVFF	PRODL, r0x11
	MOVFF	PRODH, r0x12
	MOVFF	FSR0L, r0x13
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:43: 	send iTemp13 [k21 lr36:112 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tancotf_xnum_1_1}[r0x0c r0x0d r0x0e r0x0f ]{argreg = 1}
; ;ic:44: 	send iTemp19 [k30 lr42:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x10 r0x11 r0x12 r0x13 ]{argreg = 2}
; ;ic:45: 	iTemp20 [k31 lr45:47 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x10 r0x11 r0x12 r0x13 ] = call ___fssub [k59 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
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
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	CALL	___fssub
	MOVWF	r0x10
	MOVFF	PRODL, r0x11
	MOVFF	PRODH, r0x12
	MOVFF	FSR0L, r0x13
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:46: 	send iTemp20 [k31 lr45:47 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x10 r0x11 r0x12 r0x13 ]{argreg = 1}
; ;ic:47: 	send iTemp16 [k25 lr39:112 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tancotf_xden_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 2}
; ;ic:48: 	iTemp21 [k32 lr48:53 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x10 r0x11 r0x12 r0x13 ] = call ___fsadd [k56 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	MOVF	r0x13, W
	MOVWF	POSTDEC1
	MOVF	r0x12, W
	MOVWF	POSTDEC1
	MOVF	r0x11, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	CALL	___fsadd
	MOVWF	r0x10
	MOVFF	PRODL, r0x11
	MOVFF	PRODH, r0x12
	MOVFF	FSR0L, r0x13
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:49: 	send 0.000483827 {literal-float}{argreg = 1}
; ;ic:50: 	send iTemp11 [k18 lr32:50 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tancotf_xn_1_1}[r0x08 r0x09 r0x0a r0x0b ]{argreg = 2}
; ;ic:51: 	iTemp22 [k33 lr51:53 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x08 r0x09 r0x0a r0x0b ] = call ___fsmul [k55 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	MOVLW	0x39
	MOVWF	POSTDEC1
	MOVLW	0xfd
	MOVWF	POSTDEC1
	MOVLW	0xaa
	MOVWF	POSTDEC1
	MOVLW	0x22
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x08
	MOVFF	PRODL, r0x09
	MOVFF	PRODH, r0x0a
	MOVFF	FSR0L, r0x0b
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:52: 	send iTemp21 [k32 lr48:53 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x10 r0x11 r0x12 r0x13 ]{argreg = 1}
; ;ic:53: 	send iTemp22 [k33 lr51:53 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x08 r0x09 r0x0a r0x0b ]{argreg = 2}
; ;ic:54: 	iTemp18 [k28 lr54:75 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tancotf_f_1_1}[r0x08 r0x09 r0x0a r0x0b ] = call ___fssub [k59 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	MOVF	r0x13, W
	MOVWF	POSTDEC1
	MOVF	r0x12, W
	MOVWF	POSTDEC1
	MOVF	r0x11, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	CALL	___fssub
	MOVWF	r0x08
	MOVFF	PRODL, r0x09
	MOVFF	PRODH, r0x0a
	MOVFF	FSR0L, r0x0b
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:55: 	send iTemp18 [k28 lr54:75 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tancotf_f_1_1}[r0x08 r0x09 r0x0a r0x0b ]{argreg = 1}
; ;ic:56: 	iTemp24 [k35 lr56:58 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x10 r0x11 r0x12 r0x13 ] = call _fabsf [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float) }
;	.line	65; tancotf.c	if (fabsf(f) < EPS)
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	CALL	_fabsf
	MOVWF	r0x10
	MOVFF	PRODL, r0x11
	MOVFF	PRODH, r0x12
	MOVFF	FSR0L, r0x13
	MOVLW	0x04
	ADDWF	FSR1L, F
; ;ic:57: 	send iTemp24 [k35 lr56:58 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x10 r0x11 r0x12 r0x13 ]{argreg = 1}
; ;ic:58: 	send 0.000244141 {literal-float}{argreg = 2}
; ;ic:59: 	iTemp25 [k36 lr59:60 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x10 ] = call ___fslt [k60 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
	MOVLW	0x39
	MOVWF	POSTDEC1
	MOVLW	0x80
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVF	r0x13, W
	MOVWF	POSTDEC1
	MOVF	r0x12, W
	MOVWF	POSTDEC1
	MOVF	r0x11, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	CALL	___fslt
	MOVWF	r0x10
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:60: 	if iTemp25 [k36 lr59:60 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x10 ] == 0 goto _iffalse_1($4)
	MOVF	r0x10, W
	BZ	_00108_DS_
; ;ic:61: 	iTemp13 [k21 lr36:112 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tancotf_xnum_1_1}[r0x0c r0x0d r0x0e r0x0f ] := iTemp18 [k28 lr54:75 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tancotf_f_1_1}[r0x08 r0x09 r0x0a r0x0b ]
;	.line	67; tancotf.c	xnum = f;
	MOVFF	r0x08, r0x0c
	MOVFF	r0x09, r0x0d
	MOVFF	r0x0a, r0x0e
	MOVFF	r0x0b, r0x0f
; ;ic:62: 	iTemp16 [k25 lr39:112 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tancotf_xden_1_1}[r0x00 r0x01 r0x02 r0x03 ] := 1 {literal-float}
;	.line	68; tancotf.c	xden = 1.0;
	CLRF	r0x00
	CLRF	r0x01
	MOVLW	0x80
	MOVWF	r0x02
	MOVLW	0x3f
	MOVWF	r0x03
; ;ic:63: 	 goto _ifend_1($5)
	BRA	_00109_DS_
; ;ic:64:  _iffalse_1($4) :
; ;ic:65: 	send iTemp18 [k28 lr54:75 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tancotf_f_1_1}[r0x08 r0x09 r0x0a r0x0b ]{argreg = 1}
; ;ic:66: 	send iTemp18 [k28 lr54:75 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tancotf_f_1_1}[r0x08 r0x09 r0x0a r0x0b ]{argreg = 2}
; ;ic:67: 	iTemp26 [k37 lr67:84 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tancotf_g_1_1}[r0x10 r0x11 r0x12 r0x13 ] = call ___fsmul [k55 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
_00108_DS_:
;	.line	72; tancotf.c	g = f*f;
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x10
	MOVFF	PRODL, r0x11
	MOVFF	PRODH, r0x12
	MOVFF	FSR0L, r0x13
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:68: 	send -0.0958018 {literal-float}{argreg = 1}
; ;ic:69: 	send iTemp26 [k37 lr67:84 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tancotf_g_1_1}[r0x10 r0x11 r0x12 r0x13 ]{argreg = 2}
; ;ic:70: 	iTemp28 [k40 lr70:72 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x14 r0x15 r0x16 r0x17 ] = call ___fsmul [k55 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
;	.line	73; tancotf.c	xnum = P(f,g);
	MOVF	r0x13, W
	MOVWF	POSTDEC1
	MOVF	r0x12, W
	MOVWF	POSTDEC1
	MOVF	r0x11, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVLW	0xbd
	MOVWF	POSTDEC1
	MOVLW	0xc4
	MOVWF	POSTDEC1
	MOVLW	0x33
	MOVWF	POSTDEC1
	MOVLW	0xb8
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x14
	MOVFF	PRODL, r0x15
	MOVFF	PRODH, r0x16
	MOVFF	FSR0L, r0x17
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:71: 	send iTemp28 [k40 lr70:72 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x14 r0x15 r0x16 r0x17 ]{argreg = 1}
; ;ic:72: 	send iTemp18 [k28 lr54:75 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tancotf_f_1_1}[r0x08 r0x09 r0x0a r0x0b ]{argreg = 2}
; ;ic:73: 	iTemp29 [k41 lr73:75 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x14 r0x15 r0x16 r0x17 ] = call ___fsmul [k55 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	MOVF	r0x17, W
	MOVWF	POSTDEC1
	MOVF	r0x16, W
	MOVWF	POSTDEC1
	MOVF	r0x15, W
	MOVWF	POSTDEC1
	MOVF	r0x14, W
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x14
	MOVFF	PRODL, r0x15
	MOVFF	PRODH, r0x16
	MOVFF	FSR0L, r0x17
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:74: 	send iTemp29 [k41 lr73:75 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x14 r0x15 r0x16 r0x17 ]{argreg = 1}
; ;ic:75: 	send iTemp18 [k28 lr54:75 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tancotf_f_1_1}[r0x08 r0x09 r0x0a r0x0b ]{argreg = 2}
; ;ic:76: 	iTemp13 [k21 lr36:112 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tancotf_xnum_1_1}[r0x0c r0x0d r0x0e r0x0f ] = call ___fsadd [k56 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	MOVF	r0x17, W
	MOVWF	POSTDEC1
	MOVF	r0x16, W
	MOVWF	POSTDEC1
	MOVF	r0x15, W
	MOVWF	POSTDEC1
	MOVF	r0x14, W
	MOVWF	POSTDEC1
	CALL	___fsadd
	MOVWF	r0x0c
	MOVFF	PRODL, r0x0d
	MOVFF	PRODH, r0x0e
	MOVFF	FSR0L, r0x0f
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:77: 	send 0.00971686 {literal-float}{argreg = 1}
; ;ic:78: 	send iTemp26 [k37 lr67:84 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tancotf_g_1_1}[r0x10 r0x11 r0x12 r0x13 ]{argreg = 2}
; ;ic:79: 	iTemp31 [k43 lr79:81 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x08 r0x09 r0x0a r0x0b ] = call ___fsmul [k55 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
;	.line	74; tancotf.c	xden = Q(g);
	MOVF	r0x13, W
	MOVWF	POSTDEC1
	MOVF	r0x12, W
	MOVWF	POSTDEC1
	MOVF	r0x11, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVLW	0x3c
	MOVWF	POSTDEC1
	MOVLW	0x1f
	MOVWF	POSTDEC1
	MOVLW	0x33
	MOVWF	POSTDEC1
	MOVLW	0x75
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x08
	MOVFF	PRODL, r0x09
	MOVFF	PRODH, r0x0a
	MOVFF	FSR0L, r0x0b
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:80: 	send iTemp31 [k43 lr79:81 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x08 r0x09 r0x0a r0x0b ]{argreg = 1}
; ;ic:81: 	send -0.429136 {literal-float}{argreg = 2}
; ;ic:82: 	iTemp32 [k44 lr82:84 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x08 r0x09 r0x0a r0x0b ] = call ___fsadd [k56 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVLW	0xbe
	MOVWF	POSTDEC1
	MOVLW	0xdb
	MOVWF	POSTDEC1
	MOVLW	0xb7
	MOVWF	POSTDEC1
	MOVLW	0xaf
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
; ;ic:83: 	send iTemp32 [k44 lr82:84 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x08 r0x09 r0x0a r0x0b ]{argreg = 1}
; ;ic:84: 	send iTemp26 [k37 lr67:84 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tancotf_g_1_1}[r0x10 r0x11 r0x12 r0x13 ]{argreg = 2}
; ;ic:85: 	iTemp33 [k45 lr85:87 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x08 r0x09 r0x0a r0x0b ] = call ___fsmul [k55 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x13, W
	MOVWF	POSTDEC1
	MOVF	r0x12, W
	MOVWF	POSTDEC1
	MOVF	r0x11, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x08
	MOVFF	PRODL, r0x09
	MOVFF	PRODH, r0x0a
	MOVFF	FSR0L, r0x0b
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:86: 	send iTemp33 [k45 lr85:87 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x08 r0x09 r0x0a r0x0b ]{argreg = 1}
; ;ic:87: 	send 1 {literal-float}{argreg = 2}
; ;ic:88: 	iTemp16 [k25 lr39:112 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tancotf_xden_1_1}[r0x00 r0x01 r0x02 r0x03 ] = call ___fsadd [k56 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVLW	0x3f
	MOVWF	POSTDEC1
	MOVLW	0x80
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	CALL	___fsadd
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:89:  _ifend_1($5) :
; ;ic:90: 	iTemp35 [k47 lr90:91 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int} = iTemp5 [k11 lr30:90 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ _tancotf_n_1_1}[r0x06 r0x07 ] & 0x1 {literal-int}
_00109_DS_:
;	.line	77; tancotf.c	if(n&1)
	BTFSS	r0x06, 0
	BRA	_00117_DS_
; ;ic:91: 	if iTemp35 [k47 lr90:91 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int} == 0 goto _iffalse_4($13)
; ;ic:92: 	if iTemp1 [k4 lr4:105 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-int}{ sir@ _tancotf_iscotan_1_1}[r0x04 r0x05 ] == 0 goto _iffalse_2($7)
;	.line	80; tancotf.c	if(iscotan) return (-xnum/xden);
	MOVF	r0x04, W
	IORWF	r0x05, W
	BZ	_00111_DS_
; ;ic:93: 	iTemp36 [k48 lr93:95 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x06 r0x07 r0x08 r0x09 ] = - iTemp13 [k21 lr36:112 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tancotf_xnum_1_1}[r0x0c r0x0d r0x0e r0x0f ]
	MOVFF	r0x0c, r0x06
	MOVFF	r0x0d, r0x07
	MOVFF	r0x0e, r0x08
	MOVFF	r0x0f, r0x09
	BTG	r0x09, 7
; ;ic:94: 	send iTemp36 [k48 lr93:95 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x06 r0x07 r0x08 r0x09 ]{argreg = 1}
; ;ic:95: 	send iTemp16 [k25 lr39:112 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tancotf_xden_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 2}
; ;ic:96: 	iTemp37 [k49 lr96:97 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x06 r0x07 r0x08 r0x09 ] = call ___fsdiv [k61 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
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
	CALL	___fsdiv
	MOVWF	r0x06
	MOVFF	PRODL, r0x07
	MOVFF	PRODH, r0x08
	MOVFF	FSR0L, r0x09
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:97: 	ret iTemp37 [k49 lr96:97 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x06 r0x07 r0x08 r0x09 ]
	MOVFF	r0x09, FSR0L
	MOVFF	r0x08, PRODH
	MOVFF	r0x07, PRODL
	MOVF	r0x06, W
	BRA	_00119_DS_
; ;ic:98:  _iffalse_2($7) :
; ;ic:99: 	iTemp38 [k50 lr99:101 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x06 r0x07 r0x08 r0x09 ] = - iTemp16 [k25 lr39:112 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tancotf_xden_1_1}[r0x00 r0x01 r0x02 r0x03 ]
_00111_DS_:
;	.line	81; tancotf.c	else return (-xden/xnum);
	MOVFF	r0x00, r0x06
	MOVFF	r0x01, r0x07
	MOVFF	r0x02, r0x08
	MOVFF	r0x03, r0x09
	BTG	r0x09, 7
; ;ic:100: 	send iTemp38 [k50 lr99:101 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x06 r0x07 r0x08 r0x09 ]{argreg = 1}
; ;ic:101: 	send iTemp13 [k21 lr36:112 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tancotf_xnum_1_1}[r0x0c r0x0d r0x0e r0x0f ]{argreg = 2}
; ;ic:102: 	iTemp39 [k51 lr102:103 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x06 r0x07 r0x08 r0x09 ] = call ___fsdiv [k61 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	CALL	___fsdiv
	MOVWF	r0x06
	MOVFF	PRODL, r0x07
	MOVFF	PRODH, r0x08
	MOVFF	FSR0L, r0x09
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:103: 	ret iTemp39 [k51 lr102:103 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x06 r0x07 r0x08 r0x09 ]
	MOVFF	r0x09, FSR0L
	MOVFF	r0x08, PRODH
	MOVFF	r0x07, PRODL
	MOVF	r0x06, W
	BRA	_00119_DS_
; ;ic:104:  _iffalse_4($13) :
; ;ic:105: 	if iTemp1 [k4 lr4:105 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-int}{ sir@ _tancotf_iscotan_1_1}[r0x04 r0x05 ] == 0 goto _iffalse_3($10)
_00117_DS_:
;	.line	85; tancotf.c	if(iscotan) return (xden/xnum);
	MOVF	r0x04, W
	IORWF	r0x05, W
	BZ	_00114_DS_
; ;ic:106: 	send iTemp16 [k25 lr39:112 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tancotf_xden_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 1}
; ;ic:107: 	send iTemp13 [k21 lr36:112 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tancotf_xnum_1_1}[r0x0c r0x0d r0x0e r0x0f ]{argreg = 2}
; ;ic:108: 	iTemp40 [k52 lr108:109 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x04 r0x05 r0x06 r0x07 ] = call ___fsdiv [k61 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	___fsdiv
	MOVWF	r0x04
	MOVFF	PRODL, r0x05
	MOVFF	PRODH, r0x06
	MOVFF	FSR0L, r0x07
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:109: 	ret iTemp40 [k52 lr108:109 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x04 r0x05 r0x06 r0x07 ]
	MOVFF	r0x07, FSR0L
	MOVFF	r0x06, PRODH
	MOVFF	r0x05, PRODL
	MOVF	r0x04, W
	BRA	_00119_DS_
; ;ic:110:  _iffalse_3($10) :
; ;ic:111: 	send iTemp13 [k21 lr36:112 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tancotf_xnum_1_1}[r0x0c r0x0d r0x0e r0x0f ]{argreg = 1}
; ;ic:112: 	send iTemp16 [k25 lr39:112 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tancotf_xden_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 2}
; ;ic:113: 	iTemp41 [k53 lr113:114 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x00 r0x01 r0x02 r0x03 ] = call ___fsdiv [k61 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
_00114_DS_:
;	.line	86; tancotf.c	else return (xnum/xden);
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	CALL	___fsdiv
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:114: 	ret iTemp41 [k53 lr113:114 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x00 r0x01 r0x02 r0x03 ]
	MOVFF	r0x03, FSR0L
	MOVFF	r0x02, PRODH
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
; ;ic:115:  _return($15) :
; ;ic:116: 	eproc _tancotf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float, const-int) }
_00119_DS_:
	MOVFF	PREINC1, r0x17
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
; code size:	 1822 (0x071e) bytes ( 1.39%)
;           	  911 (0x038f) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	   24 (0x0018) bytes


	end
