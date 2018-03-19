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
	global _sqrtf

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern _errno
	extern _frexpf
	extern _ldexpf
	extern ___fseq
	extern ___fslt
	extern ___fsmul
	extern ___fsadd
	extern ___fsdiv
	extern __divsint
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

udata_sqrtf_0	udata
_sqrtf_n_1_1	res	2

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($12) :
; ;ic:2: 	proc _sqrtf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float) }
S_sqrtf__sqrtf	code
_sqrtf:
;	.line	31; sqrtf.c	float sqrtf(const float x) _MATH_REENTRANT
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
; ;ic:3: iTemp0 [k2 lr3:23 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _sqrtf_x_1_1}[r0x00 r0x01 r0x02 r0x03 ] = recv _sqrtf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
; ;ic:4: 	if iTemp0 [k2 lr3:23 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _sqrtf_x_1_1}[r0x00 r0x01 r0x02 r0x03 ] != 0 goto _iffalse_2($7)
;	.line	36; sqrtf.c	if (x==0.0) return x;
	MOVF	r0x00, W
	IORWF	r0x01, W
	IORWF	r0x02, W
	IORWF	r0x03, W
	BNZ	_00111_DS_
; ;ic:5: 	ret iTemp0 [k2 lr3:23 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _sqrtf_x_1_1}[r0x00 r0x01 r0x02 r0x03 ]
	MOVFF	r0x03, FSR0L
	MOVFF	r0x02, PRODH
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
	BRA	_00115_DS_
; ;ic:6:  _iffalse_2($7) :
; ;ic:7: 	send iTemp0 [k2 lr3:23 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _sqrtf_x_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 1}
; ;ic:8: 	send 1 {literal-float}{argreg = 2}
; ;ic:9: 	iTemp1 [k4 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x04 ] = call ___fseq [k30 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
_00111_DS_:
;	.line	37; sqrtf.c	else if (x==1.0) return 1.0;
	MOVLW	0x3f
	MOVWF	POSTDEC1
	MOVLW	0x80
	MOVWF	POSTDEC1
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
	CALL	___fseq
	MOVWF	r0x04
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:10: 	if iTemp1 [k4 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x04 ] == 0 goto _iffalse_1($4)
	MOVF	r0x04, W
	BZ	_00108_DS_
; ;ic:11: 	ret 1 {literal-float}
	MOVLW	0x3f
	MOVWF	FSR0L
	MOVLW	0x80
	MOVWF	PRODH
	CLRF	PRODL
	CLRF	WREG
	BRA	_00115_DS_
; ;ic:12:  _iffalse_1($4) :
; ;ic:13: 	send iTemp0 [k2 lr3:23 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _sqrtf_x_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 1}
; ;ic:14: 	send 0 {literal-float}{argreg = 2}
; ;ic:15: 	iTemp2 [k5 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x04 ] = call ___fslt [k31 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
_00108_DS_:
;	.line	38; sqrtf.c	else if (x<0.0)
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
; ;ic:16: 	if iTemp2 [k5 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x04 ] == 0 goto _ifend_2($8)
	MOVF	r0x04, W
	BZ	_00112_DS_
; ;ic:17: 	_errno [k6 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{int} := 0x21 {literal-int}
;	.line	40; sqrtf.c	errno=EDOM;
	MOVLW	0x21
	BANKSEL	_errno
	MOVWF	_errno, B
; removed redundant BANKSEL
	CLRF	(_errno + 1), B
; ;ic:18: 	ret 0 {literal-float}
;	.line	41; sqrtf.c	return 0.0;
	CLRF	FSR0L
	CLRF	PRODH
	CLRF	PRODL
	CLRF	WREG
	BRA	_00115_DS_
; ;ic:19:  _ifend_2($8) :
; ;ic:20: 	iTemp5 [k12 lr20:21 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{int near* }[remat] = &[_sqrtf_n_1_1 [k11 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{int}]
; ;ic:21: 	iTemp6 [k13 lr21:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int generic* }[r0x04 r0x05 r0x06 ] = (int generic* )iTemp5 [k12 lr20:21 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{int near* }[remat]
_00112_DS_:
;	.line	43; sqrtf.c	f=frexpf(x, &n);
	MOVLW	HIGH(_sqrtf_n_1_1)
	MOVWF	r0x05
	MOVLW	LOW(_sqrtf_n_1_1)
	MOVWF	r0x04
	MOVLW	0x80
; #	MOVWF	r0x06
; #;;ic:22: 	send iTemp0 [k2 lr3:23 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _sqrtf_x_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 1}
; #;;ic:23: 	send iTemp6 [k13 lr21:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int generic* }[r0x04 r0x05 r0x06 ]{argreg = 2}
; #;;ic:24: 	iTemp4 [k8 lr24:41 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sqrtf_f_1_1}[r0x00 r0x01 r0x02 r0x03 ] = call _frexpf [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float, int generic* ) }
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
; ;ic:25: 	send 0.59016 {literal-float}{argreg = 1}
; ;ic:26: 	send iTemp4 [k8 lr24:41 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sqrtf_f_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 2}
; ;ic:27: 	iTemp9 [k17 lr27:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x04 r0x05 r0x06 r0x07 ] = call ___fsmul [k32 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
;	.line	44; sqrtf.c	y=0.41731+0.59016*f; /*Educated guess*/
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
	MOVLW	0x17
	MOVWF	POSTDEC1
	MOVLW	0x14
	MOVWF	POSTDEC1
	MOVLW	0xba
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x04
	MOVFF	PRODL, r0x05
	MOVFF	PRODH, r0x06
	MOVFF	FSR0L, r0x07
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:28: 	send iTemp9 [k17 lr27:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 1}
; ;ic:29: 	send 0.41731 {literal-float}{argreg = 2}
; ;ic:30: 	iTemp8 [k15 lr30:57 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sqrtf_y_1_1}[r0x04 r0x05 r0x06 r0x07 ] = call ___fsadd [k33 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVLW	0x3e
	MOVWF	POSTDEC1
	MOVLW	0xd5
	MOVWF	POSTDEC1
	MOVLW	0xa9
	MOVWF	POSTDEC1
	MOVLW	0xa8
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
; ;ic:31: 	send iTemp4 [k8 lr24:41 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sqrtf_f_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 1}
; ;ic:32: 	send iTemp8 [k15 lr30:57 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sqrtf_y_1_1}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 2}
; ;ic:33: 	iTemp11 [k19 lr33:35 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x08 r0x09 r0x0a r0x0b ] = call ___fsdiv [k34 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
;	.line	46; sqrtf.c	y+=f/y;
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
	CALL	___fsdiv
	MOVWF	r0x08
	MOVFF	PRODL, r0x09
	MOVFF	PRODH, r0x0a
	MOVFF	FSR0L, r0x0b
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:34: 	send iTemp8 [k15 lr30:57 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sqrtf_y_1_1}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 1}
; ;ic:35: 	send iTemp11 [k19 lr33:35 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x08 r0x09 r0x0a r0x0b ]{argreg = 2}
; ;ic:36: 	iTemp8 [k15 lr30:57 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sqrtf_y_1_1}[r0x04 r0x05 r0x06 r0x07 ] = call ___fsadd [k33 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
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
	CALL	___fsadd
	MOVWF	r0x04
	MOVFF	PRODL, r0x05
	MOVFF	PRODH, r0x06
	MOVFF	FSR0L, r0x07
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:37: 	send iTemp8 [k15 lr30:57 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sqrtf_y_1_1}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 1}
; ;ic:38: 	send 0xfffffffe {literal-const-int}{argreg = 2}
; ;ic:39: 	iTemp13 [k22 lr39:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x08 r0x09 r0x0a r0x0b ] = call _ldexpf [k21 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float, const-int) }
;	.line	47; sqrtf.c	y=ldexpf(y, -2) + f/y; /*Faster version of 0.25 * y + f/y*/
	SETF	POSTDEC1
	MOVLW	0xfe
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
	MOVWF	r0x08
	MOVFF	PRODL, r0x09
	MOVFF	PRODH, r0x0a
	MOVFF	FSR0L, r0x0b
	MOVLW	0x06
	ADDWF	FSR1L, F
; ;ic:40: 	send iTemp4 [k8 lr24:41 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sqrtf_f_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 1}
; ;ic:41: 	send iTemp8 [k15 lr30:57 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sqrtf_y_1_1}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 2}
; ;ic:42: 	iTemp14 [k23 lr42:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x00 r0x01 r0x02 r0x03 ] = call ___fsdiv [k34 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
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
	CALL	___fsdiv
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:43: 	send iTemp13 [k22 lr39:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x08 r0x09 r0x0a r0x0b ]{argreg = 1}
; ;ic:44: 	send iTemp14 [k23 lr42:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 2}
; ;ic:45: 	iTemp8 [k15 lr30:57 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sqrtf_y_1_1}[r0x04 r0x05 r0x06 r0x07 ] = call ___fsadd [k33 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
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
	MOVWF	r0x04
	MOVFF	PRODL, r0x05
	MOVFF	PRODH, r0x06
	MOVFF	FSR0L, r0x07
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:46: 	iTemp16 [k25 lr46:47 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int} = _sqrtf_n_1_1 [k11 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int} & 0x1 {literal-int}
	BANKSEL	_sqrtf_n_1_1
;	.line	49; sqrtf.c	if (n&1)
	BTFSS	_sqrtf_n_1_1, 0, B
	BRA	_00114_DS_
; ;ic:47: 	if iTemp16 [k25 lr46:47 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int} == 0 goto _iffalse_3($10)
; ;ic:48: 	send 0.707107 {literal-float}{argreg = 1}
; ;ic:49: 	send iTemp8 [k15 lr30:57 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sqrtf_y_1_1}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 2}
; ;ic:50: 	iTemp8 [k15 lr30:57 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sqrtf_y_1_1}[r0x04 r0x05 r0x06 r0x07 ] = call ___fsmul [k32 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
;	.line	51; sqrtf.c	y*=0.7071067812;
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
	MOVLW	0x35
	MOVWF	POSTDEC1
	MOVLW	0x04
	MOVWF	POSTDEC1
	MOVLW	0xf3
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x04
	MOVFF	PRODL, r0x05
	MOVFF	PRODH, r0x06
	MOVFF	FSR0L, r0x07
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:51: 	_sqrtf_n_1_1 [k11 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{int} = _sqrtf_n_1_1 [k11 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{int} + 0x1 {literal-unsigned-char}
	BANKSEL	_sqrtf_n_1_1
;	.line	52; sqrtf.c	++n;
	INCF	_sqrtf_n_1_1, F, B
	BNC	_10105_DS_
; removed redundant BANKSEL
	INCF	(_sqrtf_n_1_1 + 1), F, B
_10105_DS_:
; ;ic:52:  _iffalse_3($10) :
; ;ic:53: 	send _sqrtf_n_1_1 [k11 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}{argreg = 1}
; ;ic:54: 	send 0x2 {literal-int}{argreg = 2}
; ;ic:55: 	iTemp19 [k28 lr55:57 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x00 r0x01 ] = call __divsint [k35 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( int, int) }
_00114_DS_:
;	.line	54; sqrtf.c	return ldexpf(y, n/2);
	CLRF	POSTDEC1
	MOVLW	0x02
	MOVWF	POSTDEC1
	BANKSEL	(_sqrtf_n_1_1 + 1)
	MOVF	(_sqrtf_n_1_1 + 1), W, B
	MOVWF	POSTDEC1
; removed redundant BANKSEL
	MOVF	_sqrtf_n_1_1, W, B
	MOVWF	POSTDEC1
	CALL	__divsint
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVLW	0x04
	ADDWF	FSR1L, F
; ;ic:56: 	send iTemp8 [k15 lr30:57 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sqrtf_y_1_1}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 1}
; ;ic:57: 	send iTemp19 [k28 lr55:57 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x00 r0x01 ]{argreg = 2}
; ;ic:58: 	iTemp20 [k29 lr58:59 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x00 r0x01 r0x02 r0x03 ] = call _ldexpf [k21 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float, const-int) }
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
	CALL	_ldexpf
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVLW	0x06
	ADDWF	FSR1L, F
; ;ic:59: 	ret iTemp20 [k29 lr58:59 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x00 r0x01 r0x02 r0x03 ]
	MOVFF	r0x03, FSR0L
	MOVFF	r0x02, PRODH
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
; ;ic:60:  _return($11) :
; ;ic:61: 	eproc _sqrtf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float) }
_00115_DS_:
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
; code size:	  856 (0x0358) bytes ( 0.65%)
;           	  428 (0x01ac) words
; udata size:	    2 (0x0002) bytes ( 0.16%)
; access size:	   12 (0x000c) bytes


	end
