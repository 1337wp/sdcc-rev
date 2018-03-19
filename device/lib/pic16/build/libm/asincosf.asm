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
	global _asincosf

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern _errno
	extern _sqrtf
	extern _fabsf
	extern _ldexpf
	extern ___fslt
	extern ___fsgt
	extern ___fssub
	extern ___fsadd
	extern ___fsmul
	extern ___fsdiv
	extern __mulint
;--------------------------------------------------------
;	Equates to used internal registers
;--------------------------------------------------------
STATUS	equ	0xfd8
WREG	equ	0xfe8
FSR0L	equ	0xfe9
FSR0H	equ	0xfea
FSR1L	equ	0xfe1
FSR2L	equ	0xfd9
INDF0	equ	0xfef
POSTINC0	equ	0xfee
POSTDEC1	equ	0xfe5
PREINC1	equ	0xfe4
PLUSW2	equ	0xfdb
PRODL	equ	0xff3
PRODH	equ	0xff4


	idata
_asincosf_a_1_1	db	0x00, 0x00, 0x00, 0x00, 0xdb, 0x0f, 0x49, 0x3f
_asincosf_b_1_1	db	0xdb, 0x0f, 0xc9, 0x3f, 0xdb, 0x0f, 0x49, 0x3f


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
r0x18	res	1
r0x19	res	1
r0x1a	res	1
r0x1b	res	1

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($18) :
; ;ic:2: 	proc _asincosf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float, const-int) }
S_asincosf__asincosf	code
_asincosf:
;	.line	47; asincosf.c	float asincosf(const float x, const int isacos)
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
	MOVFF	r0x18, POSTDEC1
	MOVFF	r0x19, POSTDEC1
	MOVFF	r0x1a, POSTDEC1
	MOVFF	r0x1b, POSTDEC1
; ;ic:3: iTemp0 [k2 lr3:119 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _asincosf_x_1_1}[r0x00 r0x01 r0x02 r0x03 ] = recv _asincosf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float, const-int) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
; ;ic:4: iTemp1 [k4 lr4:73 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-int}{ sir@ _asincosf_isacos_1_1}[r0x04 r0x05 ] = recv _asincosf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float, const-int) }
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
; ;ic:5: 	send iTemp0 [k2 lr3:119 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _asincosf_x_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 1}
; ;ic:6: 	iTemp2 [k6 lr6:70 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _asincosf_y_1_1}[r0x06 r0x07 r0x08 r0x09 ] = call _fabsf [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float) }
;	.line	55; asincosf.c	y=fabsf(x);
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
; ;ic:7: 	iTemp4 [k10 lr7:108 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ _asincosf_i_1_1}[r0x0a r0x0b ] := iTemp1 [k4 lr4:73 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-int}{ sir@ _asincosf_isacos_1_1}[r0x04 r0x05 ]
;	.line	56; asincosf.c	i=isacos;
	MOVFF	r0x04, r0x0a
	MOVFF	r0x05, r0x0b
; ;ic:8: 	send iTemp2 [k6 lr6:70 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _asincosf_y_1_1}[r0x06 r0x07 r0x08 r0x09 ]{argreg = 1}
; ;ic:9: 	send 0.000244141 {literal-float}{argreg = 2}
; ;ic:10: 	iTemp5 [k12 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0c ] = call ___fslt [k75 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
;	.line	57; asincosf.c	if (y < EPS) r=y;
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
	MOVWF	r0x0c
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:11: 	if iTemp5 [k12 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0c ] == 0 goto _iffalse_2($7)
	MOVF	r0x0c, W
	BZ	_00111_DS_
; ;ic:12: 	iTemp6 [k13 lr12:124 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _asincosf_r_1_1}[r0x0c r0x0d r0x0e r0x0f ] := iTemp2 [k6 lr6:70 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _asincosf_y_1_1}[r0x06 r0x07 r0x08 r0x09 ]
	MOVFF	r0x06, r0x0c
	MOVFF	r0x07, r0x0d
	MOVFF	r0x08, r0x0e
	MOVFF	r0x09, r0x0f
; ;ic:13: 	 goto _ifend_2($8)
	BRA	_00112_DS_
; ;ic:14:  _iffalse_2($7) :
; ;ic:15: 	send iTemp2 [k6 lr6:70 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _asincosf_y_1_1}[r0x06 r0x07 r0x08 r0x09 ]{argreg = 1}
; ;ic:16: 	send 0.5 {literal-float}{argreg = 2}
; ;ic:17: 	iTemp7 [k15 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x10 ] = call ___fsgt [k76 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
_00111_DS_:
;	.line	60; asincosf.c	if (y > 0.5)
	MOVLW	0x3f
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
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
	MOVWF	r0x10
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:18: 	if iTemp7 [k15 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x10 ] == 0 goto _iffalse_1($4)
	MOVF	r0x10, W
	BTFSC	STATUS, 2
	BRA	_00108_DS_
; ;ic:19: 	iTemp4 [k10 lr7:108 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ _asincosf_i_1_1}[r0x0a r0x0b ] = 0x1 {literal-int} - iTemp1 [k4 lr4:73 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-int}{ sir@ _asincosf_isacos_1_1}[r0x04 r0x05 ]
;	.line	62; asincosf.c	i=1-i;
	MOVF	r0x04, W
	SUBLW	0x01
	MOVWF	r0x0a
	MOVLW	0x00
	SUBFWB	r0x05, W
	MOVWF	r0x0b
; ;ic:20: 	send iTemp2 [k6 lr6:70 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _asincosf_y_1_1}[r0x06 r0x07 r0x08 r0x09 ]{argreg = 1}
; ;ic:21: 	send 1 {literal-float}{argreg = 2}
; ;ic:22: 	iTemp9 [k17 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x10 ] = call ___fsgt [k76 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
;	.line	63; asincosf.c	if (y > 1.0)
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
	MOVWF	r0x10
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:23: 	if iTemp9 [k17 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x10 ] == 0 goto _iffalse_0($2)
	MOVF	r0x10, W
	BZ	_00106_DS_
; ;ic:24: 	_errno [k18 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{int} := 0x21 {literal-int}
;	.line	65; asincosf.c	errno=EDOM;
	MOVLW	0x21
	BANKSEL	_errno
	MOVWF	_errno, B
; removed redundant BANKSEL
	CLRF	(_errno + 1), B
; ;ic:25: 	ret 0 {literal-float}
;	.line	66; asincosf.c	return 0.0;
	CLRF	FSR0L
	CLRF	PRODH
	CLRF	PRODL
	CLRF	WREG
	GOTO	_00121_DS_
; ;ic:26:  _iffalse_0($2) :
; ;ic:27: 	send 1 {literal-float}{argreg = 1}
; ;ic:28: 	send iTemp2 [k6 lr6:70 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _asincosf_y_1_1}[r0x06 r0x07 r0x08 r0x09 ]{argreg = 2}
; ;ic:29: 	iTemp11 [k20 lr29:58 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _asincosf_g_1_1}[r0x10 r0x11 r0x12 r0x13 ] = call ___fssub [k77 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
_00106_DS_:
;	.line	68; asincosf.c	g=(0.5-y)+0.5;
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVLW	0x3f
	MOVWF	POSTDEC1
	MOVLW	0x80
	MOVWF	POSTDEC1
	MOVLW	0x00
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CALL	___fssub
	MOVWF	r0x10
	MOVFF	PRODL, r0x11
	MOVFF	PRODH, r0x12
	MOVFF	FSR0L, r0x13
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:30: 	send iTemp11 [k20 lr29:58 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _asincosf_g_1_1}[r0x10 r0x11 r0x12 r0x13 ]{argreg = 1}
; ;ic:31: 	send 0xffffffff {literal-const-int}{argreg = 2}
; ;ic:32: 	iTemp11 [k20 lr29:58 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _asincosf_g_1_1}[r0x10 r0x11 r0x12 r0x13 ] = call _ldexpf [k23 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float, const-int) }
;	.line	69; asincosf.c	g=ldexpf(g,-1);
	SETF	POSTDEC1
	SETF	POSTDEC1
	MOVF	r0x13, W
	MOVWF	POSTDEC1
	MOVF	r0x12, W
	MOVWF	POSTDEC1
	MOVF	r0x11, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	CALL	_ldexpf
	MOVWF	r0x10
	MOVFF	PRODL, r0x11
	MOVFF	PRODH, r0x12
	MOVFF	FSR0L, r0x13
	MOVLW	0x06
	ADDWF	FSR1L, F
; ;ic:33: 	send iTemp11 [k20 lr29:58 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _asincosf_g_1_1}[r0x10 r0x11 r0x12 r0x13 ]{argreg = 1}
; ;ic:34: 	iTemp2 [k6 lr6:70 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _asincosf_y_1_1}[r0x06 r0x07 r0x08 r0x09 ] = call _sqrtf [k25 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float) }
;	.line	70; asincosf.c	y=sqrtf(g);
	MOVF	r0x13, W
	MOVWF	POSTDEC1
	MOVF	r0x12, W
	MOVWF	POSTDEC1
	MOVF	r0x11, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	CALL	_sqrtf
	MOVWF	r0x06
	MOVFF	PRODL, r0x07
	MOVFF	PRODH, r0x08
	MOVFF	FSR0L, r0x09
	MOVLW	0x04
	ADDWF	FSR1L, F
; ;ic:35: 	send iTemp2 [k6 lr6:70 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _asincosf_y_1_1}[r0x06 r0x07 r0x08 r0x09 ]{argreg = 1}
; ;ic:36: 	send iTemp2 [k6 lr6:70 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _asincosf_y_1_1}[r0x06 r0x07 r0x08 r0x09 ]{argreg = 2}
; ;ic:37: 	iTemp15 [k27 lr37:38 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x14 r0x15 r0x16 r0x17 ] = call ___fsadd [k78 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
;	.line	71; asincosf.c	y=-(y+y);
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
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
	MOVWF	r0x14
	MOVFF	PRODL, r0x15
	MOVFF	PRODH, r0x16
	MOVFF	FSR0L, r0x17
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:38: 	iTemp2 [k6 lr6:70 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _asincosf_y_1_1}[r0x06 r0x07 r0x08 r0x09 ] = - iTemp15 [k27 lr37:38 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x14 r0x15 r0x16 r0x17 ]
	MOVFF	r0x14, r0x06
	MOVFF	r0x15, r0x07
	MOVFF	r0x16, r0x08
	MOVFF	r0x17, r0x09
	BTG	r0x09, 7
; ;ic:39: 	 goto _ifend_1($5)
	BRA	_00109_DS_
; ;ic:40:  _iffalse_1($4) :
; ;ic:41: 	send iTemp2 [k6 lr6:70 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _asincosf_y_1_1}[r0x06 r0x07 r0x08 r0x09 ]{argreg = 1}
; ;ic:42: 	send iTemp2 [k6 lr6:70 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _asincosf_y_1_1}[r0x06 r0x07 r0x08 r0x09 ]{argreg = 2}
; ;ic:43: 	iTemp11 [k20 lr29:58 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _asincosf_g_1_1}[r0x10 r0x11 r0x12 r0x13 ] = call ___fsmul [k79 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
_00108_DS_:
;	.line	75; asincosf.c	g=y*y;
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x10
	MOVFF	PRODL, r0x11
	MOVFF	PRODH, r0x12
	MOVFF	FSR0L, r0x13
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:44:  _ifend_1($5) :
; ;ic:45: 	send -0.504401 {literal-float}{argreg = 1}
; ;ic:46: 	send iTemp11 [k20 lr29:58 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _asincosf_g_1_1}[r0x10 r0x11 r0x12 r0x13 ]{argreg = 2}
; ;ic:47: 	iTemp18 [k30 lr47:49 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x14 r0x15 r0x16 r0x17 ] = call ___fsmul [k79 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
_00109_DS_:
;	.line	77; asincosf.c	r=y+y*((P(g)*g)/Q(g));
	MOVF	r0x13, W
	MOVWF	POSTDEC1
	MOVF	r0x12, W
	MOVWF	POSTDEC1
	MOVF	r0x11, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVLW	0xbf
	MOVWF	POSTDEC1
	MOVLW	0x01
	MOVWF	POSTDEC1
	MOVLW	0x20
	MOVWF	POSTDEC1
	MOVLW	0x65
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x14
	MOVFF	PRODL, r0x15
	MOVFF	PRODH, r0x16
	MOVFF	FSR0L, r0x17
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:48: 	send iTemp18 [k30 lr47:49 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x14 r0x15 r0x16 r0x17 ]{argreg = 1}
; ;ic:49: 	send 0.933936 {literal-float}{argreg = 2}
; ;ic:50: 	iTemp19 [k31 lr50:52 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x14 r0x15 r0x16 r0x17 ] = call ___fsadd [k78 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVLW	0x3f
	MOVWF	POSTDEC1
	MOVLW	0x6f
	MOVWF	POSTDEC1
	MOVLW	0x16
	MOVWF	POSTDEC1
	MOVLW	0x6b
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
	MOVWF	r0x14
	MOVFF	PRODL, r0x15
	MOVFF	PRODH, r0x16
	MOVFF	FSR0L, r0x17
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:51: 	send iTemp19 [k31 lr50:52 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x14 r0x15 r0x16 r0x17 ]{argreg = 1}
; ;ic:52: 	send iTemp11 [k20 lr29:58 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _asincosf_g_1_1}[r0x10 r0x11 r0x12 r0x13 ]{argreg = 2}
; ;ic:53: 	iTemp20 [k32 lr53:64 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x14 r0x15 r0x16 r0x17 ] = call ___fsmul [k79 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x13, W
	MOVWF	POSTDEC1
	MOVF	r0x12, W
	MOVWF	POSTDEC1
	MOVF	r0x11, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
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
; ;ic:54: 	send iTemp11 [k20 lr29:58 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _asincosf_g_1_1}[r0x10 r0x11 r0x12 r0x13 ]{argreg = 1}
; ;ic:55: 	send -5.54847 {literal-float}{argreg = 2}
; ;ic:56: 	iTemp22 [k34 lr56:58 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x18 r0x19 r0x1a r0x1b ] = call ___fsadd [k78 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVLW	0xc0
	MOVWF	POSTDEC1
	MOVLW	0xb1
	MOVWF	POSTDEC1
	MOVLW	0x8d
	MOVWF	POSTDEC1
	MOVLW	0x0b
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
	MOVWF	r0x18
	MOVFF	PRODL, r0x19
	MOVFF	PRODH, r0x1a
	MOVFF	FSR0L, r0x1b
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:57: 	send iTemp22 [k34 lr56:58 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x18 r0x19 r0x1a r0x1b ]{argreg = 1}
; ;ic:58: 	send iTemp11 [k20 lr29:58 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _asincosf_g_1_1}[r0x10 r0x11 r0x12 r0x13 ]{argreg = 2}
; ;ic:59: 	iTemp23 [k35 lr59:61 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x10 r0x11 r0x12 r0x13 ] = call ___fsmul [k79 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x13, W
	MOVWF	POSTDEC1
	MOVF	r0x12, W
	MOVWF	POSTDEC1
	MOVF	r0x11, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVF	r0x1b, W
	MOVWF	POSTDEC1
	MOVF	r0x1a, W
	MOVWF	POSTDEC1
	MOVF	r0x19, W
	MOVWF	POSTDEC1
	MOVF	r0x18, W
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x10
	MOVFF	PRODL, r0x11
	MOVFF	PRODH, r0x12
	MOVFF	FSR0L, r0x13
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:60: 	send iTemp23 [k35 lr59:61 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x10 r0x11 r0x12 r0x13 ]{argreg = 1}
; ;ic:61: 	send 5.60363 {literal-float}{argreg = 2}
; ;ic:62: 	iTemp24 [k36 lr62:64 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x10 r0x11 r0x12 r0x13 ] = call ___fsadd [k78 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVLW	0x40
	MOVWF	POSTDEC1
	MOVLW	0xb3
	MOVWF	POSTDEC1
	MOVLW	0x50
	MOVWF	POSTDEC1
	MOVLW	0xf0
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
; ;ic:63: 	send iTemp20 [k32 lr53:64 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x14 r0x15 r0x16 r0x17 ]{argreg = 1}
; ;ic:64: 	send iTemp24 [k36 lr62:64 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x10 r0x11 r0x12 r0x13 ]{argreg = 2}
; ;ic:65: 	iTemp25 [k37 lr65:67 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x10 r0x11 r0x12 r0x13 ] = call ___fsdiv [k80 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x13, W
	MOVWF	POSTDEC1
	MOVF	r0x12, W
	MOVWF	POSTDEC1
	MOVF	r0x11, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVF	r0x17, W
	MOVWF	POSTDEC1
	MOVF	r0x16, W
	MOVWF	POSTDEC1
	MOVF	r0x15, W
	MOVWF	POSTDEC1
	MOVF	r0x14, W
	MOVWF	POSTDEC1
	CALL	___fsdiv
	MOVWF	r0x10
	MOVFF	PRODL, r0x11
	MOVFF	PRODH, r0x12
	MOVFF	FSR0L, r0x13
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:66: 	send iTemp2 [k6 lr6:70 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _asincosf_y_1_1}[r0x06 r0x07 r0x08 r0x09 ]{argreg = 1}
; ;ic:67: 	send iTemp25 [k37 lr65:67 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x10 r0x11 r0x12 r0x13 ]{argreg = 2}
; ;ic:68: 	iTemp26 [k38 lr68:70 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x10 r0x11 r0x12 r0x13 ] = call ___fsmul [k79 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x13, W
	MOVWF	POSTDEC1
	MOVF	r0x12, W
	MOVWF	POSTDEC1
	MOVF	r0x11, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x10
	MOVFF	PRODL, r0x11
	MOVFF	PRODH, r0x12
	MOVFF	FSR0L, r0x13
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:69: 	send iTemp2 [k6 lr6:70 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _asincosf_y_1_1}[r0x06 r0x07 r0x08 r0x09 ]{argreg = 1}
; ;ic:70: 	send iTemp26 [k38 lr68:70 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x10 r0x11 r0x12 r0x13 ]{argreg = 2}
; ;ic:71: 	iTemp6 [k13 lr12:124 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _asincosf_r_1_1}[r0x0c r0x0d r0x0e r0x0f ] = call ___fsadd [k78 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x13, W
	MOVWF	POSTDEC1
	MOVF	r0x12, W
	MOVWF	POSTDEC1
	MOVF	r0x11, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
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
	MOVWF	r0x0c
	MOVFF	PRODL, r0x0d
	MOVFF	PRODH, r0x0e
	MOVFF	FSR0L, r0x0f
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:72:  _ifend_2($8) :
; ;ic:73: 	if iTemp1 [k4 lr4:73 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-int}{ sir@ _asincosf_isacos_1_1}[r0x04 r0x05 ] == 0 goto _iffalse_5($15)
_00112_DS_:
;	.line	79; asincosf.c	if (isacos)
	MOVF	r0x04, W
	IORWF	r0x05, W
	BTFSC	STATUS, 2
	BRA	_00119_DS_
; ;ic:74: 	send iTemp0 [k2 lr3:119 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _asincosf_x_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 1}
; ;ic:75: 	send 0 {literal-float}{argreg = 2}
; ;ic:76: 	iTemp28 [k40 lr76:77 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x04 ] = call ___fslt [k75 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
;	.line	81; asincosf.c	if (x < 0.0)
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
; ;ic:77: 	if iTemp28 [k40 lr76:77 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x04 ] == 0 goto _iffalse_3($10)
	MOVF	r0x04, W
	BTFSC	STATUS, 2
	BRA	_00114_DS_
; ;ic:78: 	iTemp29 [k42 lr78:82 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{const-float data-near* }[remat] = &[_asincosf_b_1_1 [k41 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-float data-[2] }]
; ;ic:79: 	send 0x4 {literal-int}{argreg = 1}
; ;ic:80: 	send iTemp4 [k10 lr7:108 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ _asincosf_i_1_1}[r0x0a r0x0b ]{argreg = 2}
; ;ic:81: 	iTemp30 [k43 lr81:82 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x04 r0x05 ] = call __mulint [k81 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( int, int) }
;	.line	82; asincosf.c	r=(b[i]+r)+b[i];
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x04
	MOVWF	POSTDEC1
	CALL	__mulint
	MOVWF	r0x04
	MOVFF	PRODL, r0x05
	MOVLW	0x04
	ADDWF	FSR1L, F
; ;ic:82: 	iTemp31 [k44 lr82:83 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{const-float data-near* }[r0x04 r0x05 ] = iTemp29 [k42 lr78:82 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{const-float data-near* }[remat] + iTemp30 [k43 lr81:82 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x04 r0x05 ]
	MOVLW	LOW(_asincosf_b_1_1)
	ADDWF	r0x04, F
	MOVLW	HIGH(_asincosf_b_1_1)
	ADDWFC	r0x05, F
; ;ic:83: 	iTemp32 [k45 lr83:88 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{data-const-float}[r0x04 r0x05 r0x06 r0x07 ] = @[iTemp31 [k44 lr82:83 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{const-float data-near* }[r0x04 r0x05 ]]
	MOVFF	r0x04, FSR0L
	MOVFF	r0x05, FSR0H
	MOVFF	POSTINC0, r0x04
	MOVFF	POSTINC0, r0x05
	MOVFF	POSTINC0, r0x06
	MOVFF	INDF0, r0x07
; ;ic:84: 	send iTemp32 [k45 lr83:88 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{data-const-float}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 1}
; ;ic:85: 	send iTemp6 [k13 lr12:124 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _asincosf_r_1_1}[r0x0c r0x0d r0x0e r0x0f ]{argreg = 2}
; ;ic:86: 	iTemp33 [k46 lr86:88 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x08 r0x09 r0x10 r0x11 ] = call ___fsadd [k78 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
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
	MOVWF	r0x08
	MOVFF	PRODL, r0x09
	MOVFF	PRODH, r0x10
	MOVFF	FSR0L, r0x11
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:87: 	send iTemp33 [k46 lr86:88 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x08 r0x09 r0x10 r0x11 ]{argreg = 1}
; ;ic:88: 	send iTemp32 [k45 lr83:88 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{data-const-float}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 2}
; ;ic:89: 	iTemp6 [k13 lr12:124 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _asincosf_r_1_1}[r0x0c r0x0d r0x0e r0x0f ] = call ___fsadd [k78 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVF	r0x11, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	CALL	___fsadd
	MOVWF	r0x0c
	MOVFF	PRODL, r0x0d
	MOVFF	PRODH, r0x0e
	MOVFF	FSR0L, r0x0f
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:90: 	 goto _ifend_5($16)
	BRA	_00120_DS_
; ;ic:91:  _iffalse_3($10) :
; ;ic:92: 	iTemp39 [k53 lr92:96 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{const-float data-near* }[remat] = &[_asincosf_a_1_1 [k52 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-float data-[2] }]
; ;ic:93: 	send 0x4 {literal-int}{argreg = 1}
; ;ic:94: 	send iTemp4 [k10 lr7:108 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ _asincosf_i_1_1}[r0x0a r0x0b ]{argreg = 2}
; ;ic:95: 	iTemp40 [k54 lr95:96 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x04 r0x05 ] = call __mulint [k81 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( int, int) }
_00114_DS_:
;	.line	84; asincosf.c	r=(a[i]-r)+a[i];
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x04
	MOVWF	POSTDEC1
	CALL	__mulint
	MOVWF	r0x04
	MOVFF	PRODL, r0x05
	MOVLW	0x04
	ADDWF	FSR1L, F
; ;ic:96: 	iTemp41 [k55 lr96:97 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{const-float data-near* }[r0x04 r0x05 ] = iTemp39 [k53 lr92:96 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{const-float data-near* }[remat] + iTemp40 [k54 lr95:96 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x04 r0x05 ]
	MOVLW	LOW(_asincosf_a_1_1)
	ADDWF	r0x04, F
	MOVLW	HIGH(_asincosf_a_1_1)
	ADDWFC	r0x05, F
; ;ic:97: 	iTemp42 [k56 lr97:102 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{data-const-float}[r0x04 r0x05 r0x06 r0x07 ] = @[iTemp41 [k55 lr96:97 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{const-float data-near* }[r0x04 r0x05 ]]
	MOVFF	r0x04, FSR0L
	MOVFF	r0x05, FSR0H
	MOVFF	POSTINC0, r0x04
	MOVFF	POSTINC0, r0x05
	MOVFF	POSTINC0, r0x06
	MOVFF	INDF0, r0x07
; ;ic:98: 	send iTemp42 [k56 lr97:102 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{data-const-float}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 1}
; ;ic:99: 	send iTemp6 [k13 lr12:124 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _asincosf_r_1_1}[r0x0c r0x0d r0x0e r0x0f ]{argreg = 2}
; ;ic:100: 	iTemp43 [k57 lr100:102 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x08 r0x09 r0x10 r0x11 ] = call ___fssub [k77 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
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
	MOVWF	r0x08
	MOVFF	PRODL, r0x09
	MOVFF	PRODH, r0x10
	MOVFF	FSR0L, r0x11
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:101: 	send iTemp43 [k57 lr100:102 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x08 r0x09 r0x10 r0x11 ]{argreg = 1}
; ;ic:102: 	send iTemp42 [k56 lr97:102 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{data-const-float}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 2}
; ;ic:103: 	iTemp6 [k13 lr12:124 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _asincosf_r_1_1}[r0x0c r0x0d r0x0e r0x0f ] = call ___fsadd [k78 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVF	r0x11, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	CALL	___fsadd
	MOVWF	r0x0c
	MOVFF	PRODL, r0x0d
	MOVFF	PRODH, r0x0e
	MOVFF	FSR0L, r0x0f
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:104: 	 goto _ifend_5($16)
	BRA	_00120_DS_
; ;ic:105:  _iffalse_5($15) :
; ;ic:106: 	iTemp49 [k63 lr106:110 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{const-float data-near* }[remat] = &[_asincosf_a_1_1 [k52 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-float data-[2] }]
; ;ic:107: 	send 0x4 {literal-int}{argreg = 1}
; ;ic:108: 	send iTemp4 [k10 lr7:108 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ _asincosf_i_1_1}[r0x0a r0x0b ]{argreg = 2}
; ;ic:109: 	iTemp50 [k64 lr109:110 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x04 r0x05 ] = call __mulint [k81 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( int, int) }
_00119_DS_:
;	.line	88; asincosf.c	r=(a[i]+r)+a[i];
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x04
	MOVWF	POSTDEC1
	CALL	__mulint
	MOVWF	r0x04
	MOVFF	PRODL, r0x05
	MOVLW	0x04
	ADDWF	FSR1L, F
; ;ic:110: 	iTemp51 [k65 lr110:111 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{const-float data-near* }[r0x04 r0x05 ] = iTemp49 [k63 lr106:110 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{const-float data-near* }[remat] + iTemp50 [k64 lr109:110 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x04 r0x05 ]
	MOVLW	LOW(_asincosf_a_1_1)
	ADDWF	r0x04, F
	MOVLW	HIGH(_asincosf_a_1_1)
	ADDWFC	r0x05, F
; ;ic:111: 	iTemp52 [k66 lr111:116 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{data-const-float}[r0x04 r0x05 r0x06 r0x07 ] = @[iTemp51 [k65 lr110:111 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{const-float data-near* }[r0x04 r0x05 ]]
	MOVFF	r0x04, FSR0L
	MOVFF	r0x05, FSR0H
	MOVFF	POSTINC0, r0x04
	MOVFF	POSTINC0, r0x05
	MOVFF	POSTINC0, r0x06
	MOVFF	INDF0, r0x07
; ;ic:112: 	send iTemp52 [k66 lr111:116 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{data-const-float}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 1}
; ;ic:113: 	send iTemp6 [k13 lr12:124 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _asincosf_r_1_1}[r0x0c r0x0d r0x0e r0x0f ]{argreg = 2}
; ;ic:114: 	iTemp53 [k67 lr114:116 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x08 r0x09 r0x0a r0x0b ] = call ___fsadd [k78 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
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
	MOVWF	r0x08
	MOVFF	PRODL, r0x09
	MOVFF	PRODH, r0x0a
	MOVFF	FSR0L, r0x0b
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:115: 	send iTemp53 [k67 lr114:116 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x08 r0x09 r0x0a r0x0b ]{argreg = 1}
; ;ic:116: 	send iTemp52 [k66 lr111:116 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{data-const-float}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 2}
; ;ic:117: 	iTemp6 [k13 lr12:124 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _asincosf_r_1_1}[r0x0c r0x0d r0x0e r0x0f ] = call ___fsadd [k78 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
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
	CALL	___fsadd
	MOVWF	r0x0c
	MOVFF	PRODL, r0x0d
	MOVFF	PRODH, r0x0e
	MOVFF	FSR0L, r0x0f
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:118: 	send iTemp0 [k2 lr3:119 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _asincosf_x_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 1}
; ;ic:119: 	send 0 {literal-float}{argreg = 2}
; ;ic:120: 	iTemp59 [k73 lr120:121 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x00 ] = call ___fslt [k75 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
;	.line	89; asincosf.c	if (x<0.0) r=-r;
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
	MOVWF	r0x00
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:121: 	if iTemp59 [k73 lr120:121 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x00 ] == 0 goto _ifend_5($16)
; #	MOVF	r0x00, W
; #	BTFSC	STATUS, 2
; #	GOTO	_00120_DS_
; #;;ic:122: 	iTemp6 [k13 lr12:124 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _asincosf_r_1_1}[r0x0c r0x0d r0x0e r0x0f ] = - iTemp6 [k13 lr12:124 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _asincosf_r_1_1}[r0x0c r0x0d r0x0e r0x0f ]
; #	BTG	r0x0f, 7
; #;;ic:123:  _ifend_5($16) :
; #;;ic:124: 	ret iTemp6 [k13 lr12:124 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _asincosf_r_1_1}[r0x0c r0x0d r0x0e r0x0f ]
; #	MOVFF	r0x0f, FSR0L
;	.line	91; asincosf.c	return r;
	MOVF	r0x00, W
	BTFSS	STATUS, 2
	BTG	r0x0f, 7
_00120_DS_:
	MOVFF	r0x0f, FSR0L
	MOVFF	r0x0e, PRODH
	MOVFF	r0x0d, PRODL
	MOVF	r0x0c, W
; ;ic:125:  _return($17) :
; ;ic:126: 	eproc _asincosf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float, const-int) }
_00121_DS_:
	MOVFF	PREINC1, r0x1b
	MOVFF	PREINC1, r0x1a
	MOVFF	PREINC1, r0x19
	MOVFF	PREINC1, r0x18
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
; code size:	 1852 (0x073c) bytes ( 1.41%)
;           	  926 (0x039e) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	   28 (0x001c) bytes


	end
