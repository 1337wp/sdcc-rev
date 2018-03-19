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
	global _logf

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern _errno
	extern _frexpf
	extern ___fsgt
	extern ___fssub
	extern ___fsmul
	extern ___fsadd
	extern ___fsdiv
	extern ___sint2fs
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

udata_logf_0	udata
_logf_n_1_1	res	2

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($7) :
; ;ic:2: 	proc _logf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float) }
S_logf__logf	code
_logf:
;	.line	41; logf.c	float logf(const float x) _MATH_REENTRANT
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
; ;ic:3: iTemp0 [k2 lr3:14 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _logf_x_1_1}[r0x00 r0x01 r0x02 r0x03 ] = recv _logf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
; ;ic:4: 	send iTemp0 [k2 lr3:14 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _logf_x_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 1}
; ;ic:5: 	send 0 {literal-float}{argreg = 2}
; ;ic:6: 	iTemp1 [k4 lr6:7 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x04 ] = call ___fsgt [k47 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
;	.line	51; logf.c	if (x<=0.0)
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
	MOVWF	r0x04
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:7: 	if iTemp1 [k4 lr6:7 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x04 ] != 0 goto _iffalse_0($2)
	MOVF	r0x04, W
	BNZ	_00106_DS_
; ;ic:8: 	_errno [k5 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{int} := 0x21 {literal-int}
;	.line	53; logf.c	errno=EDOM;
	MOVLW	0x21
	BANKSEL	_errno
	MOVWF	_errno, B
; removed redundant BANKSEL
	CLRF	(_errno + 1), B
; ;ic:9: 	ret 0 {literal-float}
;	.line	54; logf.c	return 0.0;
	CLRF	FSR0L
	CLRF	PRODH
	CLRF	PRODL
	CLRF	WREG
	GOTO	_00110_DS_
; ;ic:10:  _iffalse_0($2) :
; ;ic:11: 	iTemp4 [k11 lr11:12 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{int near* }[remat] = &[_logf_n_1_1 [k10 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{int}]
; ;ic:12: 	iTemp5 [k12 lr12:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int generic* }[r0x04 r0x05 r0x06 ] = (int generic* )iTemp4 [k11 lr11:12 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{int near* }[remat]
_00106_DS_:
;	.line	56; logf.c	f=frexpf(x, &n);
	MOVLW	HIGH(_logf_n_1_1)
	MOVWF	r0x05
	MOVLW	LOW(_logf_n_1_1)
	MOVWF	r0x04
	MOVLW	0x80
; #	MOVWF	r0x06
; #;;ic:13: 	send iTemp0 [k2 lr3:14 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _logf_x_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 1}
; #;;ic:14: 	send iTemp5 [k12 lr12:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int generic* }[r0x04 r0x05 r0x06 ]{argreg = 2}
; #;;ic:15: 	iTemp3 [k7 lr15:27 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _logf_f_1_1}[r0x00 r0x01 r0x02 r0x03 ] = call _frexpf [k9 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float, int generic* ) }
; #	MOVF	r0x06, W
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
	CALL	_frexpf
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVLW	0x07
	ADDWF	FSR1L, F
; ;ic:16: 	send iTemp3 [k7 lr15:27 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _logf_f_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 1}
; ;ic:17: 	send 0.5 {literal-float}{argreg = 2}
; ;ic:18: 	iTemp7 [k14 lr18:44 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _logf_znum_1_1}[r0x04 r0x05 r0x06 r0x07 ] = call ___fssub [k48 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
;	.line	57; logf.c	znum=f-0.5;
	MOVLW	0x3f
	MOVWF	POSTDEC1
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
	CALL	___fssub
	MOVWF	r0x04
	MOVFF	PRODL, r0x05
	MOVFF	PRODH, r0x06
	MOVFF	FSR0L, r0x07
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:19: 	send iTemp3 [k7 lr15:27 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _logf_f_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 1}
; ;ic:20: 	send 0.707107 {literal-float}{argreg = 2}
; ;ic:21: 	iTemp9 [k17 lr21:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x08 ] = call ___fsgt [k47 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
;	.line	58; logf.c	if (f>C0)
	MOVLW	0x3f
	MOVWF	POSTDEC1
	MOVLW	0x35
	MOVWF	POSTDEC1
	MOVLW	0x04
	MOVWF	POSTDEC1
	MOVLW	0xf3
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	___fsgt
	MOVWF	r0x08
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:22: 	if iTemp9 [k17 lr21:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x08 ] == 0 goto _iffalse_1($4)
	MOVF	r0x08, W
	BTFSC	STATUS, 2
	BRA	_00108_DS_
; ;ic:23: 	send iTemp7 [k14 lr18:44 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _logf_znum_1_1}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 1}
; ;ic:24: 	send 0.5 {literal-float}{argreg = 2}
; ;ic:25: 	iTemp7 [k14 lr18:44 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _logf_znum_1_1}[r0x04 r0x05 r0x06 r0x07 ] = call ___fssub [k48 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
;	.line	60; logf.c	znum-=0.5;
	MOVLW	0x3f
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
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
; ;ic:26: 	send 0.5 {literal-float}{argreg = 1}
; ;ic:27: 	send iTemp3 [k7 lr15:27 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _logf_f_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 2}
; ;ic:28: 	iTemp12 [k21 lr28:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x00 r0x01 r0x02 r0x03 ] = call ___fsmul [k49 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
;	.line	61; logf.c	zden=(f*0.5)+0.5;
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
	MOVLW	0x00
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:29: 	send iTemp12 [k21 lr28:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 1}
; ;ic:30: 	send 0.5 {literal-float}{argreg = 2}
; ;ic:31: 	iTemp11 [k19 lr31:44 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}[r0x00 r0x01 r0x02 r0x03 ] = call ___fsadd [k50 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVLW	0x3f
	MOVWF	POSTDEC1
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
	CALL	___fsadd
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:32: 	 goto _ifend_1($5)
	BRA	_00109_DS_
; ;ic:33:  _iffalse_1($4) :
; ;ic:34: 	iTemp14 [k23 lr34:35 so:0]{ ia0 a2p0 re0 rm0 nos1 ru0 dp0}{int}[r0x08 r0x09 ] := _logf_n_1_1 [k10 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{int}
_00108_DS_:
;	.line	65; logf.c	n--;
	MOVFF	_logf_n_1_1, r0x08
	MOVFF	(_logf_n_1_1 + 1), r0x09
; ;ic:35: 	_logf_n_1_1 [k10 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{int} = iTemp14 [k23 lr34:35 so:0]{ ia0 a2p0 re0 rm0 nos1 ru0 dp0}{int}[r0x08 r0x09 ] - 0x1 {literal-unsigned-char}
	MOVF	r0x08, W
	ADDLW	0xff
	BANKSEL	_logf_n_1_1
	MOVWF	_logf_n_1_1, B
	MOVLW	0xff
	ADDWFC	r0x09, W
; removed redundant BANKSEL
	MOVWF	(_logf_n_1_1 + 1), B
; ;ic:36: 	send 0.5 {literal-float}{argreg = 1}
; ;ic:37: 	send iTemp7 [k14 lr18:44 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _logf_znum_1_1}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 2}
; ;ic:38: 	iTemp16 [k25 lr38:40 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x08 r0x09 r0x0a r0x0b ] = call ___fsmul [k49 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
;	.line	66; logf.c	zden=znum*0.5+0.5;
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
	MOVLW	0x00
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x08
	MOVFF	PRODL, r0x09
	MOVFF	PRODH, r0x0a
	MOVFF	FSR0L, r0x0b
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:39: 	send iTemp16 [k25 lr38:40 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x08 r0x09 r0x0a r0x0b ]{argreg = 1}
; ;ic:40: 	send 0.5 {literal-float}{argreg = 2}
; ;ic:41: 	iTemp11 [k19 lr31:44 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}[r0x00 r0x01 r0x02 r0x03 ] = call ___fsadd [k50 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVLW	0x3f
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
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
; ;ic:42:  _ifend_1($5) :
; ;ic:43: 	send iTemp7 [k14 lr18:44 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _logf_znum_1_1}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 1}
; ;ic:44: 	send iTemp11 [k19 lr31:44 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 2}
; ;ic:45: 	iTemp18 [k27 lr45:62 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _logf_z_1_1}[r0x00 r0x01 r0x02 r0x03 ] = call ___fsdiv [k51 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
_00109_DS_:
;	.line	68; logf.c	z=znum/zden;
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
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
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:46: 	send iTemp18 [k27 lr45:62 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _logf_z_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 1}
; ;ic:47: 	send iTemp18 [k27 lr45:62 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _logf_z_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 2}
; ;ic:48: 	iTemp20 [k30 lr48:53 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _logf_w_1_1}[r0x04 r0x05 r0x06 r0x07 ] = call ___fsmul [k49 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
;	.line	69; logf.c	w=z*z;
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
	MOVWF	r0x04
	MOVFF	PRODL, r0x05
	MOVFF	PRODH, r0x06
	MOVFF	FSR0L, r0x07
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:49: 	send -0.552707 {literal-float}{argreg = 1}
; ;ic:50: 	send iTemp20 [k30 lr48:53 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _logf_w_1_1}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 2}
; ;ic:51: 	iTemp23 [k35 lr51:56 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x08 r0x09 r0x0a r0x0b ] = call ___fsmul [k49 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
;	.line	71; logf.c	Rz=z+z*(w*A(w)/B(w));
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVLW	0xbf
	MOVWF	POSTDEC1
	MOVLW	0x0d
	MOVWF	POSTDEC1
	MOVLW	0x7e
	MOVWF	POSTDEC1
	MOVLW	0x3d
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x08
	MOVFF	PRODL, r0x09
	MOVFF	PRODH, r0x0a
	MOVFF	FSR0L, r0x0b
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:52: 	send iTemp20 [k30 lr48:53 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _logf_w_1_1}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 1}
; ;ic:53: 	send -6.63272 {literal-float}{argreg = 2}
; ;ic:54: 	iTemp24 [k36 lr54:56 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x04 r0x05 r0x06 r0x07 ] = call ___fsadd [k50 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVLW	0xc0
	MOVWF	POSTDEC1
	MOVLW	0xd4
	MOVWF	POSTDEC1
	MOVLW	0x3f
	MOVWF	POSTDEC1
	MOVLW	0x3a
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	CALL	___fsadd
	MOVWF	r0x04
	MOVFF	PRODL, r0x05
	MOVFF	PRODH, r0x06
	MOVFF	FSR0L, r0x07
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:55: 	send iTemp23 [k35 lr51:56 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x08 r0x09 r0x0a r0x0b ]{argreg = 1}
; ;ic:56: 	send iTemp24 [k36 lr54:56 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 2}
; ;ic:57: 	iTemp25 [k37 lr57:59 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x04 r0x05 r0x06 r0x07 ] = call ___fsdiv [k51 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	CALL	___fsdiv
	MOVWF	r0x04
	MOVFF	PRODL, r0x05
	MOVFF	PRODH, r0x06
	MOVFF	FSR0L, r0x07
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:58: 	send iTemp18 [k27 lr45:62 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _logf_z_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 1}
; ;ic:59: 	send iTemp25 [k37 lr57:59 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 2}
; ;ic:60: 	iTemp26 [k38 lr60:62 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x04 r0x05 r0x06 r0x07 ] = call ___fsmul [k49 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
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
	CALL	___fsmul
	MOVWF	r0x04
	MOVFF	PRODL, r0x05
	MOVFF	PRODH, r0x06
	MOVFF	FSR0L, r0x07
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:61: 	send iTemp18 [k27 lr45:62 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _logf_z_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 1}
; ;ic:62: 	send iTemp26 [k38 lr60:62 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 2}
; ;ic:63: 	iTemp22 [k33 lr63:70 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _logf_Rz_1_1}[r0x00 r0x01 r0x02 r0x03 ] = call ___fsadd [k50 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
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
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:64: 	send _logf_n_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}{argreg = 1}
; ;ic:65: 	iTemp28 [k40 lr65:73 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _logf_xn_1_1}[r0x04 r0x05 r0x06 r0x07 ] = call ___sint2fs [k52 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( int) }
	BANKSEL	(_logf_n_1_1 + 1)
;	.line	72; logf.c	xn=n;
	MOVF	(_logf_n_1_1 + 1), W, B
	MOVWF	POSTDEC1
; removed redundant BANKSEL
	MOVF	_logf_n_1_1, W, B
	MOVWF	POSTDEC1
	CALL	___sint2fs
	MOVWF	r0x04
	MOVFF	PRODL, r0x05
	MOVFF	PRODH, r0x06
	MOVFF	FSR0L, r0x07
	MOVLW	0x02
	ADDWF	FSR1L, F
; ;ic:66: 	send -0.000212194 {literal-float}{argreg = 1}
; ;ic:67: 	send iTemp28 [k40 lr65:73 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _logf_xn_1_1}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 2}
; ;ic:68: 	iTemp30 [k43 lr68:70 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x08 r0x09 r0x0a r0x0b ] = call ___fsmul [k49 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
;	.line	73; logf.c	return ((xn*C2+Rz)+xn*C1);
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
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
	MOVWF	r0x08
	MOVFF	PRODL, r0x09
	MOVFF	PRODH, r0x0a
	MOVFF	FSR0L, r0x0b
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:69: 	send iTemp30 [k43 lr68:70 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x08 r0x09 r0x0a r0x0b ]{argreg = 1}
; ;ic:70: 	send iTemp22 [k33 lr63:70 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _logf_Rz_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 2}
; ;ic:71: 	iTemp31 [k44 lr71:76 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x00 r0x01 r0x02 r0x03 ] = call ___fsadd [k50 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
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
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:72: 	send 0.693359 {literal-float}{argreg = 1}
; ;ic:73: 	send iTemp28 [k40 lr65:73 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _logf_xn_1_1}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 2}
; ;ic:74: 	iTemp32 [k45 lr74:76 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x04 r0x05 r0x06 r0x07 ] = call ___fsmul [k49 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
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
	MOVLW	0x31
	MOVWF	POSTDEC1
	MOVLW	0x80
	MOVWF	POSTDEC1
	MOVLW	0x00
	CLRF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x04
	MOVFF	PRODL, r0x05
	MOVFF	PRODH, r0x06
	MOVFF	FSR0L, r0x07
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:75: 	send iTemp31 [k44 lr71:76 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 1}
; ;ic:76: 	send iTemp32 [k45 lr74:76 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 2}
; ;ic:77: 	iTemp33 [k46 lr77:78 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x00 r0x01 r0x02 r0x03 ] = call ___fsadd [k50 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
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
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:78: 	ret iTemp33 [k46 lr77:78 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x00 r0x01 r0x02 r0x03 ]
	MOVFF	r0x03, FSR0L
	MOVFF	r0x02, PRODH
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
; ;ic:79:  _return($6) :
; ;ic:80: 	eproc _logf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float) }
_00110_DS_:
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
; code size:	 1254 (0x04e6) bytes ( 0.96%)
;           	  627 (0x0273) words
; udata size:	    2 (0x0002) bytes ( 0.16%)
; access size:	   12 (0x000c) bytes


	end
