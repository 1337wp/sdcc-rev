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
	global _atanf

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern _errno
	extern _fabsf
	extern ___fsgt
	extern ___fsdiv
	extern ___fsmul
	extern ___fssub
	extern ___fsadd
	extern ___fslt
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
_atanf_a_1_1	db	0x00, 0x00, 0x00, 0x00, 0x92, 0x0a, 0x06, 0x3f, 0xdb, 0x0f, 0xc9, 0x3f
	db	0x92, 0x0a, 0x86, 0x3f


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

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($13) :
; ;ic:2: 	proc _atanf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float) }
S_atanf__atanf	code
_atanf:
;	.line	49; atanf.c	float atanf(const float x) _MATH_REENTRANT
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
; ;ic:3: iTemp0 [k2 lr3:85 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _atanf_x_1_1}[r0x00 r0x01 r0x02 r0x03 ] = recv _atanf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
; ;ic:4: 	iTemp1 [k4 lr4:77 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ _atanf_n_1_1}[r0x04 r0x05 ] := 0x0 {literal-int}
;	.line	52; atanf.c	int n=0;
	CLRF	r0x04
	CLRF	r0x05
; ;ic:5: 	send iTemp0 [k2 lr3:85 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _atanf_x_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 1}
; ;ic:6: 	iTemp2 [k6 lr6:68 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atanf_f_1_1}[r0x06 r0x07 r0x08 r0x09 ] = call _fabsf [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float) }
;	.line	55; atanf.c	f=fabsf(x);
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
; ;ic:7: 	send iTemp2 [k6 lr6:68 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atanf_f_1_1}[r0x06 r0x07 r0x08 r0x09 ]{argreg = 1}
; ;ic:8: 	send 1 {literal-float}{argreg = 2}
; ;ic:9: 	iTemp4 [k10 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0a ] = call ___fsgt [k45 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
;	.line	56; atanf.c	if(f>1.0)
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
	MOVWF	r0x0a
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:10: 	if iTemp4 [k10 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0a ] == 0 goto _iffalse_0($2)
	MOVF	r0x0a, W
	BZ	_00106_DS_
; ;ic:11: 	send 1 {literal-float}{argreg = 1}
; ;ic:12: 	send iTemp2 [k6 lr6:68 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atanf_f_1_1}[r0x06 r0x07 r0x08 r0x09 ]{argreg = 2}
; ;ic:13: 	iTemp2 [k6 lr6:68 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atanf_f_1_1}[r0x06 r0x07 r0x08 r0x09 ] = call ___fsdiv [k46 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
;	.line	58; atanf.c	f=1.0/f;
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
	CALL	___fsdiv
	MOVWF	r0x06
	MOVFF	PRODL, r0x07
	MOVFF	PRODH, r0x08
	MOVFF	FSR0L, r0x09
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:14: 	iTemp1 [k4 lr4:77 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ _atanf_n_1_1}[r0x04 r0x05 ] := 0x2 {literal-int}
;	.line	59; atanf.c	n=2;
	MOVLW	0x02
	MOVWF	r0x04
	CLRF	r0x05
; ;ic:15:  _iffalse_0($2) :
; ;ic:16: 	send iTemp2 [k6 lr6:68 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atanf_f_1_1}[r0x06 r0x07 r0x08 r0x09 ]{argreg = 1}
; ;ic:17: 	send 0.267949 {literal-float}{argreg = 2}
; ;ic:18: 	iTemp6 [k12 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0a ] = call ___fsgt [k45 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
_00106_DS_:
;	.line	61; atanf.c	if(f>K1)
	MOVLW	0x3e
	MOVWF	POSTDEC1
	MOVLW	0x89
	MOVWF	POSTDEC1
	MOVLW	0x30
	MOVWF	POSTDEC1
	MOVLW	0xa3
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	CALL	___fsgt
	MOVWF	r0x0a
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:19: 	if iTemp6 [k12 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0a ] == 0 goto _iffalse_1($4)
	MOVF	r0x0a, W
	BTFSC	STATUS, 2
	BRA	_00108_DS_
; ;ic:20: 	send 0.732051 {literal-float}{argreg = 1}
; ;ic:21: 	send iTemp2 [k6 lr6:68 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atanf_f_1_1}[r0x06 r0x07 r0x08 r0x09 ]{argreg = 2}
; ;ic:22: 	iTemp7 [k13 lr22:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0a r0x0b r0x0c r0x0d ] = call ___fsmul [k47 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
;	.line	63; atanf.c	f=((K2*f-1.0)+f)/(K3+f);
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
	MOVLW	0x3b
	MOVWF	POSTDEC1
	MOVLW	0x67
	MOVWF	POSTDEC1
	MOVLW	0xaf
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x0a
	MOVFF	PRODL, r0x0b
	MOVFF	PRODH, r0x0c
	MOVFF	FSR0L, r0x0d
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:23: 	send iTemp7 [k13 lr22:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0a r0x0b r0x0c r0x0d ]{argreg = 1}
; ;ic:24: 	send 1 {literal-float}{argreg = 2}
; ;ic:25: 	iTemp8 [k14 lr25:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0a r0x0b r0x0c r0x0d ] = call ___fssub [k48 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVLW	0x3f
	MOVWF	POSTDEC1
	MOVLW	0x80
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	CALL	___fssub
	MOVWF	r0x0a
	MOVFF	PRODL, r0x0b
	MOVFF	PRODH, r0x0c
	MOVFF	FSR0L, r0x0d
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:26: 	send iTemp8 [k14 lr25:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0a r0x0b r0x0c r0x0d ]{argreg = 1}
; ;ic:27: 	send iTemp2 [k6 lr6:68 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atanf_f_1_1}[r0x06 r0x07 r0x08 r0x09 ]{argreg = 2}
; ;ic:28: 	iTemp9 [k15 lr28:33 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0a r0x0b r0x0c r0x0d ] = call ___fsadd [k49 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	CALL	___fsadd
	MOVWF	r0x0a
	MOVFF	PRODL, r0x0b
	MOVFF	PRODH, r0x0c
	MOVFF	FSR0L, r0x0d
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:29: 	send iTemp2 [k6 lr6:68 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atanf_f_1_1}[r0x06 r0x07 r0x08 r0x09 ]{argreg = 1}
; ;ic:30: 	send 1.73205 {literal-float}{argreg = 2}
; ;ic:31: 	iTemp10 [k16 lr31:33 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0e r0x0f r0x10 r0x11 ] = call ___fsadd [k49 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVLW	0x3f
	MOVWF	POSTDEC1
	MOVLW	0xdd
	MOVWF	POSTDEC1
	MOVLW	0xb3
	MOVWF	POSTDEC1
	MOVLW	0xd7
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
	MOVWF	r0x0e
	MOVFF	PRODL, r0x0f
	MOVFF	PRODH, r0x10
	MOVFF	FSR0L, r0x11
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:32: 	send iTemp9 [k15 lr28:33 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0a r0x0b r0x0c r0x0d ]{argreg = 1}
; ;ic:33: 	send iTemp10 [k16 lr31:33 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0e r0x0f r0x10 r0x11 ]{argreg = 2}
; ;ic:34: 	iTemp2 [k6 lr6:68 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atanf_f_1_1}[r0x06 r0x07 r0x08 r0x09 ] = call ___fsdiv [k46 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
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
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	CALL	___fsdiv
	MOVWF	r0x06
	MOVFF	PRODL, r0x07
	MOVFF	PRODH, r0x08
	MOVFF	FSR0L, r0x09
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:35: 	iTemp1 [k4 lr4:77 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ _atanf_n_1_1}[r0x04 r0x05 ] = iTemp1 [k4 lr4:77 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ _atanf_n_1_1}[r0x04 r0x05 ] + 0x1 {literal-unsigned-char}
;	.line	67; atanf.c	n++;
	INCF	r0x04, F
	BTFSC	STATUS, 0
	INCF	r0x05, F
; ;ic:36:  _iffalse_1($4) :
; ;ic:37: 	send iTemp2 [k6 lr6:68 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atanf_f_1_1}[r0x06 r0x07 r0x08 r0x09 ]{argreg = 1}
; ;ic:38: 	iTemp14 [k20 lr38:40 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0a r0x0b r0x0c r0x0d ] = call _fabsf [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float) }
_00108_DS_:
;	.line	69; atanf.c	if(fabsf(f)<EPS) r=f;
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	CALL	_fabsf
	MOVWF	r0x0a
	MOVFF	PRODL, r0x0b
	MOVFF	PRODH, r0x0c
	MOVFF	FSR0L, r0x0d
	MOVLW	0x04
	ADDWF	FSR1L, F
; ;ic:39: 	send iTemp14 [k20 lr38:40 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0a r0x0b r0x0c r0x0d ]{argreg = 1}
; ;ic:40: 	send 0.000244141 {literal-float}{argreg = 2}
; ;ic:41: 	iTemp15 [k21 lr41:42 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0a ] = call ___fslt [k50 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
	MOVLW	0x39
	MOVWF	POSTDEC1
	MOVLW	0x80
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	CALL	___fslt
	MOVWF	r0x0a
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:42: 	if iTemp15 [k21 lr41:42 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0a ] == 0 goto _iffalse_2($6)
	MOVF	r0x0a, W
	BZ	_00110_DS_
; ;ic:43: 	iTemp16 [k22 lr43:90 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atanf_r_1_1}[r0x0a r0x0b r0x0c r0x0d ] := iTemp2 [k6 lr6:68 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atanf_f_1_1}[r0x06 r0x07 r0x08 r0x09 ]
	MOVFF	r0x06, r0x0a
	MOVFF	r0x07, r0x0b
	MOVFF	r0x08, r0x0c
	MOVFF	r0x09, r0x0d
; ;ic:44: 	 goto _ifend_2($7)
	BRA	_00111_DS_
; ;ic:45:  _iffalse_2($6) :
; ;ic:46: 	send iTemp2 [k6 lr6:68 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atanf_f_1_1}[r0x06 r0x07 r0x08 r0x09 ]{argreg = 1}
; ;ic:47: 	send iTemp2 [k6 lr6:68 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atanf_f_1_1}[r0x06 r0x07 r0x08 r0x09 ]{argreg = 2}
; ;ic:48: 	iTemp17 [k24 lr48:62 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atanf_g_1_1}[r0x0e r0x0f r0x10 r0x11 ] = call ___fsmul [k47 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
_00110_DS_:
;	.line	72; atanf.c	g=f*f;
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
	MOVWF	r0x0e
	MOVFF	PRODL, r0x0f
	MOVFF	PRODH, r0x10
	MOVFF	FSR0L, r0x11
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:49: 	send -0.0509096 {literal-float}{argreg = 1}
; ;ic:50: 	send iTemp17 [k24 lr48:62 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atanf_g_1_1}[r0x0e r0x0f r0x10 r0x11 ]{argreg = 2}
; ;ic:51: 	iTemp19 [k27 lr51:53 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x12 r0x13 r0x14 r0x15 ] = call ___fsmul [k47 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
;	.line	73; atanf.c	r=f+P(g,f)/Q(g);
	MOVF	r0x11, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVLW	0xbd
	MOVWF	POSTDEC1
	MOVLW	0x50
	MOVWF	POSTDEC1
	MOVLW	0x86
	MOVWF	POSTDEC1
	MOVLW	0x91
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x12
	MOVFF	PRODL, r0x13
	MOVFF	PRODH, r0x14
	MOVFF	FSR0L, r0x15
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:52: 	send iTemp19 [k27 lr51:53 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x12 r0x13 r0x14 r0x15 ]{argreg = 1}
; ;ic:53: 	send -0.470833 {literal-float}{argreg = 2}
; ;ic:54: 	iTemp20 [k28 lr54:56 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x12 r0x13 r0x14 r0x15 ] = call ___fsadd [k49 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVLW	0xbe
	MOVWF	POSTDEC1
	MOVLW	0xf1
	MOVWF	POSTDEC1
	MOVLW	0x10
	MOVWF	POSTDEC1
	MOVLW	0xf6
	MOVWF	POSTDEC1
	MOVF	r0x15, W
	MOVWF	POSTDEC1
	MOVF	r0x14, W
	MOVWF	POSTDEC1
	MOVF	r0x13, W
	MOVWF	POSTDEC1
	MOVF	r0x12, W
	MOVWF	POSTDEC1
	CALL	___fsadd
	MOVWF	r0x12
	MOVFF	PRODL, r0x13
	MOVFF	PRODH, r0x14
	MOVFF	FSR0L, r0x15
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:55: 	send iTemp20 [k28 lr54:56 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x12 r0x13 r0x14 r0x15 ]{argreg = 1}
; ;ic:56: 	send iTemp17 [k24 lr48:62 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atanf_g_1_1}[r0x0e r0x0f r0x10 r0x11 ]{argreg = 2}
; ;ic:57: 	iTemp21 [k29 lr57:59 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x12 r0x13 r0x14 r0x15 ] = call ___fsmul [k47 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x11, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVF	r0x15, W
	MOVWF	POSTDEC1
	MOVF	r0x14, W
	MOVWF	POSTDEC1
	MOVF	r0x13, W
	MOVWF	POSTDEC1
	MOVF	r0x12, W
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x12
	MOVFF	PRODL, r0x13
	MOVFF	PRODH, r0x14
	MOVFF	FSR0L, r0x15
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:58: 	send iTemp21 [k29 lr57:59 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x12 r0x13 r0x14 r0x15 ]{argreg = 1}
; ;ic:59: 	send iTemp2 [k6 lr6:68 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atanf_f_1_1}[r0x06 r0x07 r0x08 r0x09 ]{argreg = 2}
; ;ic:60: 	iTemp22 [k30 lr60:65 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x12 r0x13 r0x14 r0x15 ] = call ___fsmul [k47 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x15, W
	MOVWF	POSTDEC1
	MOVF	r0x14, W
	MOVWF	POSTDEC1
	MOVF	r0x13, W
	MOVWF	POSTDEC1
	MOVF	r0x12, W
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x12
	MOVFF	PRODL, r0x13
	MOVFF	PRODH, r0x14
	MOVFF	FSR0L, r0x15
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:61: 	send iTemp17 [k24 lr48:62 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atanf_g_1_1}[r0x0e r0x0f r0x10 r0x11 ]{argreg = 1}
; ;ic:62: 	send 1.4125 {literal-float}{argreg = 2}
; ;ic:63: 	iTemp24 [k32 lr63:65 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0e r0x0f r0x10 r0x11 ] = call ___fsadd [k49 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVLW	0x3f
	MOVWF	POSTDEC1
	MOVLW	0xb4
	MOVWF	POSTDEC1
	MOVLW	0xcc
	MOVWF	POSTDEC1
	MOVLW	0xd3
	MOVWF	POSTDEC1
	MOVF	r0x11, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	CALL	___fsadd
	MOVWF	r0x0e
	MOVFF	PRODL, r0x0f
	MOVFF	PRODH, r0x10
	MOVFF	FSR0L, r0x11
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:64: 	send iTemp22 [k30 lr60:65 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x12 r0x13 r0x14 r0x15 ]{argreg = 1}
; ;ic:65: 	send iTemp24 [k32 lr63:65 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0e r0x0f r0x10 r0x11 ]{argreg = 2}
; ;ic:66: 	iTemp25 [k33 lr66:68 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0e r0x0f r0x10 r0x11 ] = call ___fsdiv [k46 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x11, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVF	r0x15, W
	MOVWF	POSTDEC1
	MOVF	r0x14, W
	MOVWF	POSTDEC1
	MOVF	r0x13, W
	MOVWF	POSTDEC1
	MOVF	r0x12, W
	MOVWF	POSTDEC1
	CALL	___fsdiv
	MOVWF	r0x0e
	MOVFF	PRODL, r0x0f
	MOVFF	PRODH, r0x10
	MOVFF	FSR0L, r0x11
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:67: 	send iTemp2 [k6 lr6:68 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atanf_f_1_1}[r0x06 r0x07 r0x08 r0x09 ]{argreg = 1}
; ;ic:68: 	send iTemp25 [k33 lr66:68 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0e r0x0f r0x10 r0x11 ]{argreg = 2}
; ;ic:69: 	iTemp16 [k22 lr43:90 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atanf_r_1_1}[r0x0a r0x0b r0x0c r0x0d ] = call ___fsadd [k49 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x11, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	MOVF	r0x0e, W
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
	MOVWF	r0x0a
	MOVFF	PRODL, r0x0b
	MOVFF	PRODH, r0x0c
	MOVFF	FSR0L, r0x0d
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:70:  _ifend_2($7) :
; ;ic:71: 	iTemp27 [k35 lr71:72 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp1 [k4 lr4:77 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ _atanf_n_1_1}[r0x04 r0x05 ] > 0x1 {literal-int}
_00111_DS_:
;	.line	75; atanf.c	if(n>1) r=-r;
	MOVF	r0x05, W
	ADDLW	0x80
	ADDLW	0x80
	BNZ	_00123_DS_
	MOVLW	0x02
	SUBWF	r0x04, W
_00123_DS_:
	BNC	_00113_DS_
; ;ic:72: 	if iTemp27 [k35 lr71:72 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_3($9)
; ;ic:73: 	iTemp16 [k22 lr43:90 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atanf_r_1_1}[r0x0a r0x0b r0x0c r0x0d ] = - iTemp16 [k22 lr43:90 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atanf_r_1_1}[r0x0a r0x0b r0x0c r0x0d ]
	BTG	r0x0d, 7
; ;ic:74:  _iffalse_3($9) :
; ;ic:75: 	iTemp29 [k38 lr75:79 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{const-float data-near* }[remat] = &[_atanf_a_1_1 [k37 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-float data-[4] }]
; ;ic:76: 	send 0x4 {literal-int}{argreg = 1}
; ;ic:77: 	send iTemp1 [k4 lr4:77 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ _atanf_n_1_1}[r0x04 r0x05 ]{argreg = 2}
; ;ic:78: 	iTemp30 [k39 lr78:79 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x04 r0x05 ] = call __mulint [k51 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( int, int) }
_00113_DS_:
;	.line	76; atanf.c	r+=a[n];
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x04
	MOVWF	POSTDEC1
	CALL	__mulint
	MOVWF	r0x04
	MOVFF	PRODL, r0x05
	MOVLW	0x04
	ADDWF	FSR1L, F
; ;ic:79: 	iTemp31 [k40 lr79:80 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{const-float data-near* }[r0x04 r0x05 ] = iTemp29 [k38 lr75:79 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{const-float data-near* }[remat] + iTemp30 [k39 lr78:79 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x04 r0x05 ]
	MOVLW	LOW(_atanf_a_1_1)
	ADDWF	r0x04, F
	MOVLW	HIGH(_atanf_a_1_1)
	ADDWFC	r0x05, F
; ;ic:80: 	iTemp32 [k41 lr80:82 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{data-const-float}[r0x04 r0x05 r0x06 r0x07 ] = @[iTemp31 [k40 lr79:80 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{const-float data-near* }[r0x04 r0x05 ]]
	MOVFF	r0x04, FSR0L
	MOVFF	r0x05, FSR0H
	MOVFF	POSTINC0, r0x04
	MOVFF	POSTINC0, r0x05
	MOVFF	POSTINC0, r0x06
	MOVFF	INDF0, r0x07
; ;ic:81: 	send iTemp16 [k22 lr43:90 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atanf_r_1_1}[r0x0a r0x0b r0x0c r0x0d ]{argreg = 1}
; ;ic:82: 	send iTemp32 [k41 lr80:82 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{data-const-float}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 2}
; ;ic:83: 	iTemp16 [k22 lr43:90 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atanf_r_1_1}[r0x0a r0x0b r0x0c r0x0d ] = call ___fsadd [k49 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	CALL	___fsadd
	MOVWF	r0x0a
	MOVFF	PRODL, r0x0b
	MOVFF	PRODH, r0x0c
	MOVFF	FSR0L, r0x0d
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:84: 	send iTemp0 [k2 lr3:85 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _atanf_x_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 1}
; ;ic:85: 	send 0 {literal-float}{argreg = 2}
; ;ic:86: 	iTemp34 [k43 lr86:87 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x00 ] = call ___fslt [k50 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
;	.line	77; atanf.c	if(x<0.0) r=-r;
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
; ;ic:87: 	if iTemp34 [k43 lr86:87 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x00 ] == 0 goto _iffalse_4($11)
; #	MOVF	r0x00, W
; #	BTFSC	STATUS, 2
; #	GOTO	_00115_DS_
; #;;ic:88: 	iTemp16 [k22 lr43:90 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atanf_r_1_1}[r0x0a r0x0b r0x0c r0x0d ] = - iTemp16 [k22 lr43:90 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atanf_r_1_1}[r0x0a r0x0b r0x0c r0x0d ]
; #	BTG	r0x0d, 7
; #;;ic:89:  _iffalse_4($11) :
; #;;ic:90: 	ret iTemp16 [k22 lr43:90 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atanf_r_1_1}[r0x0a r0x0b r0x0c r0x0d ]
; #	MOVFF	r0x0d, FSR0L
;	.line	78; atanf.c	return r;
	MOVF	r0x00, W
	BTFSS	STATUS, 2
	BTG	r0x0d, 7
	MOVFF	r0x0d, FSR0L
	MOVFF	r0x0c, PRODH
	MOVFF	r0x0b, PRODL
	MOVF	r0x0a, W
; ;ic:91:  _return($12) :
; ;ic:92: 	eproc _atanf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float) }
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
; code size:	 1390 (0x056e) bytes ( 1.06%)
;           	  695 (0x02b7) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	   22 (0x0016) bytes


	end
