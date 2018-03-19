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
	global _tanhf

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern _errno
	extern _expf
	extern _fabsf
	extern ___fsgt
	extern ___fsadd
	extern ___fsdiv
	extern ___fssub
	extern ___fslt
	extern ___fsmul
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

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($13) :
; ;ic:2: 	proc _tanhf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float) }
S_tanhf__tanhf	code
_tanhf:
;	.line	44; tanhf.c	float tanhf(const float x) _MATH_REENTRANT
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
; ;ic:3: iTemp0 [k2 lr3:69 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _tanhf_x_1_1}[r0x00 r0x01 r0x02 r0x03 ] = recv _tanhf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
; ;ic:4: 	send iTemp0 [k2 lr3:69 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _tanhf_x_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 1}
; ;ic:5: 	iTemp1 [k4 lr5:65 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tanhf_f_1_1}[r0x04 r0x05 r0x06 r0x07 ] = call _fabsf [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float) }
;	.line	48; tanhf.c	f=fabsf(x);
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_fabsf
	MOVWF	r0x04
	MOVFF	PRODL, r0x05
	MOVFF	PRODH, r0x06
	MOVFF	FSR0L, r0x07
	MOVLW	0x04
	ADDWF	FSR1L, F
; ;ic:6: 	send iTemp1 [k4 lr5:65 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tanhf_f_1_1}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 1}
; ;ic:7: 	send 9.01091 {literal-float}{argreg = 2}
; ;ic:8: 	iTemp3 [k8 lr8:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x08 ] = call ___fsgt [k33 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
;	.line	49; tanhf.c	if(f>SBIG) r=1.0;
	MOVLW	0x41
	MOVWF	POSTDEC1
	MOVLW	0x10
	MOVWF	POSTDEC1
	MOVLW	0x2c
	MOVWF	POSTDEC1
	MOVLW	0xb0
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
	MOVWF	r0x08
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:9: 	if iTemp3 [k8 lr8:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x08 ] == 0 goto _iffalse_2($8)
	MOVF	r0x08, W
	BZ	_00112_DS_
; ;ic:10: 	iTemp4 [k9 lr10:74 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tanhf_r_1_1}[r0x08 r0x09 r0x0a r0x0b ] := 1 {literal-float}
	CLRF	r0x08
	CLRF	r0x09
	MOVLW	0x80
	MOVWF	r0x0a
	MOVLW	0x3f
	MOVWF	r0x0b
; ;ic:11: 	 goto _ifend_2($9)
	BRA	_00113_DS_
; ;ic:12:  _iffalse_2($8) :
; ;ic:13: 	send iTemp1 [k4 lr5:65 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tanhf_f_1_1}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 1}
; ;ic:14: 	send 0.549306 {literal-float}{argreg = 2}
; ;ic:15: 	iTemp5 [k11 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0c ] = call ___fsgt [k33 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
_00112_DS_:
;	.line	50; tanhf.c	else if(f>K1)
	MOVLW	0x3f
	MOVWF	POSTDEC1
	MOVLW	0x0c
	MOVWF	POSTDEC1
	MOVLW	0x9f
	MOVWF	POSTDEC1
	MOVLW	0x54
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
	MOVWF	r0x0c
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:16: 	if iTemp5 [k11 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0c ] == 0 goto _iffalse_1($5)
	MOVF	r0x0c, W
	BTFSC	STATUS, 2
	BRA	_00109_DS_
; ;ic:17: 	send iTemp1 [k4 lr5:65 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tanhf_f_1_1}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 1}
; ;ic:18: 	send iTemp1 [k4 lr5:65 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tanhf_f_1_1}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 2}
; ;ic:19: 	iTemp6 [k13 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0c r0x0d r0x0e r0x0f ] = call ___fsadd [k34 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
;	.line	52; tanhf.c	r=0.5-1.0/(expf(f+f)+1.0);
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
	CALL	___fsadd
	MOVWF	r0x0c
	MOVFF	PRODL, r0x0d
	MOVFF	PRODH, r0x0e
	MOVFF	FSR0L, r0x0f
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:20: 	send iTemp6 [k13 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0c r0x0d r0x0e r0x0f ]{argreg = 1}
; ;ic:21: 	iTemp7 [k14 lr21:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0c r0x0d r0x0e r0x0f ] = call _expf [k12 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float) }
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	CALL	_expf
	MOVWF	r0x0c
	MOVFF	PRODL, r0x0d
	MOVFF	PRODH, r0x0e
	MOVFF	FSR0L, r0x0f
	MOVLW	0x04
	ADDWF	FSR1L, F
; ;ic:22: 	send iTemp7 [k14 lr21:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0c r0x0d r0x0e r0x0f ]{argreg = 1}
; ;ic:23: 	send 1 {literal-float}{argreg = 2}
; ;ic:24: 	iTemp8 [k15 lr24:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0c r0x0d r0x0e r0x0f ] = call ___fsadd [k34 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVLW	0x3f
	MOVWF	POSTDEC1
	MOVLW	0x80
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	CALL	___fsadd
	MOVWF	r0x0c
	MOVFF	PRODL, r0x0d
	MOVFF	PRODH, r0x0e
	MOVFF	FSR0L, r0x0f
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:25: 	send 1 {literal-float}{argreg = 1}
; ;ic:26: 	send iTemp8 [k15 lr24:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0c r0x0d r0x0e r0x0f ]{argreg = 2}
; ;ic:27: 	iTemp9 [k16 lr27:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0c r0x0d r0x0e r0x0f ] = call ___fsdiv [k35 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVLW	0x3f
	MOVWF	POSTDEC1
	MOVLW	0x80
	MOVWF	POSTDEC1
	MOVLW	0x00
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CALL	___fsdiv
	MOVWF	r0x0c
	MOVFF	PRODL, r0x0d
	MOVFF	PRODH, r0x0e
	MOVFF	FSR0L, r0x0f
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:28: 	send 0.5 {literal-float}{argreg = 1}
; ;ic:29: 	send iTemp9 [k16 lr27:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0c r0x0d r0x0e r0x0f ]{argreg = 2}
; ;ic:30: 	iTemp4 [k9 lr10:74 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tanhf_r_1_1}[r0x08 r0x09 r0x0a r0x0b ] = call ___fssub [k36 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVLW	0x3f
	MOVWF	POSTDEC1
	MOVLW	0x00
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CALL	___fssub
	MOVWF	r0x08
	MOVFF	PRODL, r0x09
	MOVFF	PRODH, r0x0a
	MOVFF	FSR0L, r0x0b
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:31: 	send iTemp4 [k9 lr10:74 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tanhf_r_1_1}[r0x08 r0x09 r0x0a r0x0b ]{argreg = 1}
; ;ic:32: 	send iTemp4 [k9 lr10:74 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tanhf_r_1_1}[r0x08 r0x09 r0x0a r0x0b ]{argreg = 2}
; ;ic:33: 	iTemp4 [k9 lr10:74 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tanhf_r_1_1}[r0x08 r0x09 r0x0a r0x0b ] = call ___fsadd [k34 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
;	.line	53; tanhf.c	r+=r;
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
	CALL	___fsadd
	MOVWF	r0x08
	MOVFF	PRODL, r0x09
	MOVFF	PRODH, r0x0a
	MOVFF	FSR0L, r0x0b
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:34: 	 goto _ifend_2($9)
	BRA	_00113_DS_
; ;ic:35:  _iffalse_1($5) :
; ;ic:36: 	send iTemp1 [k4 lr5:65 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tanhf_f_1_1}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 1}
; ;ic:37: 	send 0.000244141 {literal-float}{argreg = 2}
; ;ic:38: 	iTemp12 [k19 lr38:39 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0c ] = call ___fslt [k37 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
_00109_DS_:
;	.line	55; tanhf.c	else if(f<EPS) r=f;
	MOVLW	0x39
	MOVWF	POSTDEC1
	MOVLW	0x80
	MOVWF	POSTDEC1
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
	CALL	___fslt
	MOVWF	r0x0c
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:39: 	if iTemp12 [k19 lr38:39 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0c ] == 0 goto _iffalse_0($2)
	MOVF	r0x0c, W
	BZ	_00106_DS_
; ;ic:40: 	iTemp4 [k9 lr10:74 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tanhf_r_1_1}[r0x08 r0x09 r0x0a r0x0b ] := iTemp1 [k4 lr5:65 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tanhf_f_1_1}[r0x04 r0x05 r0x06 r0x07 ]
	MOVFF	r0x04, r0x08
	MOVFF	r0x05, r0x09
	MOVFF	r0x06, r0x0a
	MOVFF	r0x07, r0x0b
; ;ic:41: 	 goto _ifend_2($9)
	BRA	_00113_DS_
; ;ic:42:  _iffalse_0($2) :
; ;ic:43: 	send iTemp1 [k4 lr5:65 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tanhf_f_1_1}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 1}
; ;ic:44: 	send iTemp1 [k4 lr5:65 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tanhf_f_1_1}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 2}
; ;ic:45: 	iTemp13 [k20 lr45:56 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tanhf_g_1_1}[r0x0c r0x0d r0x0e r0x0f ] = call ___fsmul [k38 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
_00106_DS_:
;	.line	58; tanhf.c	g=f*f;
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
	MOVWF	r0x0c
	MOVFF	PRODL, r0x0d
	MOVFF	PRODH, r0x0e
	MOVFF	FSR0L, r0x0f
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:46: 	send -0.00383101 {literal-float}{argreg = 1}
; ;ic:47: 	send iTemp13 [k20 lr45:56 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tanhf_g_1_1}[r0x0c r0x0d r0x0e r0x0f ]{argreg = 2}
; ;ic:48: 	iTemp15 [k23 lr48:50 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x10 r0x11 r0x12 r0x13 ] = call ___fsmul [k38 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
;	.line	59; tanhf.c	r=f+f*(P(g)/Q(g));
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVLW	0xbb
	MOVWF	POSTDEC1
	MOVLW	0x7b
	MOVWF	POSTDEC1
	MOVLW	0x11
	MOVWF	POSTDEC1
	MOVLW	0xb2
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x10
	MOVFF	PRODL, r0x11
	MOVFF	PRODH, r0x12
	MOVFF	FSR0L, r0x13
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:49: 	send iTemp15 [k23 lr48:50 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x10 r0x11 r0x12 r0x13 ]{argreg = 1}
; ;ic:50: 	send -0.823773 {literal-float}{argreg = 2}
; ;ic:51: 	iTemp16 [k24 lr51:53 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x10 r0x11 r0x12 r0x13 ] = call ___fsadd [k34 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVLW	0xbf
	MOVWF	POSTDEC1
	MOVLW	0x52
	MOVWF	POSTDEC1
	MOVLW	0xe2
	MOVWF	POSTDEC1
	MOVLW	0xc6
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
; ;ic:52: 	send iTemp16 [k24 lr51:53 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x10 r0x11 r0x12 r0x13 ]{argreg = 1}
; ;ic:53: 	send iTemp13 [k20 lr45:56 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tanhf_g_1_1}[r0x0c r0x0d r0x0e r0x0f ]{argreg = 2}
; ;ic:54: 	iTemp17 [k25 lr54:59 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x10 r0x11 r0x12 r0x13 ] = call ___fsmul [k38 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x13, W
	MOVWF	POSTDEC1
	MOVF	r0x12, W
	MOVWF	POSTDEC1
	MOVF	r0x11, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x10
	MOVFF	PRODL, r0x11
	MOVFF	PRODH, r0x12
	MOVFF	FSR0L, r0x13
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:55: 	send iTemp13 [k20 lr45:56 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tanhf_g_1_1}[r0x0c r0x0d r0x0e r0x0f ]{argreg = 1}
; ;ic:56: 	send 2.47132 {literal-float}{argreg = 2}
; ;ic:57: 	iTemp19 [k27 lr57:59 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0c r0x0d r0x0e r0x0f ] = call ___fsadd [k34 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVLW	0x40
	MOVWF	POSTDEC1
	MOVLW	0x1e
	MOVWF	POSTDEC1
	MOVLW	0x2a
	MOVWF	POSTDEC1
	MOVLW	0x1a
	MOVWF	POSTDEC1
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	CALL	___fsadd
	MOVWF	r0x0c
	MOVFF	PRODL, r0x0d
	MOVFF	PRODH, r0x0e
	MOVFF	FSR0L, r0x0f
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:58: 	send iTemp17 [k25 lr54:59 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x10 r0x11 r0x12 r0x13 ]{argreg = 1}
; ;ic:59: 	send iTemp19 [k27 lr57:59 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0c r0x0d r0x0e r0x0f ]{argreg = 2}
; ;ic:60: 	iTemp20 [k28 lr60:62 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0c r0x0d r0x0e r0x0f ] = call ___fsdiv [k35 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x13, W
	MOVWF	POSTDEC1
	MOVF	r0x12, W
	MOVWF	POSTDEC1
	MOVF	r0x11, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	CALL	___fsdiv
	MOVWF	r0x0c
	MOVFF	PRODL, r0x0d
	MOVFF	PRODH, r0x0e
	MOVFF	FSR0L, r0x0f
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:61: 	send iTemp1 [k4 lr5:65 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tanhf_f_1_1}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 1}
; ;ic:62: 	send iTemp20 [k28 lr60:62 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0c r0x0d r0x0e r0x0f ]{argreg = 2}
; ;ic:63: 	iTemp21 [k29 lr63:65 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0c r0x0d r0x0e r0x0f ] = call ___fsmul [k38 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
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
	CALL	___fsmul
	MOVWF	r0x0c
	MOVFF	PRODL, r0x0d
	MOVFF	PRODH, r0x0e
	MOVFF	FSR0L, r0x0f
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:64: 	send iTemp1 [k4 lr5:65 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tanhf_f_1_1}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 1}
; ;ic:65: 	send iTemp21 [k29 lr63:65 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0c r0x0d r0x0e r0x0f ]{argreg = 2}
; ;ic:66: 	iTemp4 [k9 lr10:74 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tanhf_r_1_1}[r0x08 r0x09 r0x0a r0x0b ] = call ___fsadd [k34 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
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
; ;ic:67:  _ifend_2($9) :
; ;ic:68: 	send iTemp0 [k2 lr3:69 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _tanhf_x_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 1}
; ;ic:69: 	send 0 {literal-float}{argreg = 2}
; ;ic:70: 	iTemp23 [k31 lr70:71 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x00 ] = call ___fslt [k37 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
_00113_DS_:
;	.line	61; tanhf.c	if(x<0.0) r=-r;
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
; ;ic:71: 	if iTemp23 [k31 lr70:71 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x00 ] == 0 goto _iffalse_3($11)
; #	MOVF	r0x00, W
; #	BTFSC	STATUS, 2
; #	GOTO	_00115_DS_
; #;;ic:72: 	iTemp4 [k9 lr10:74 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tanhf_r_1_1}[r0x08 r0x09 r0x0a r0x0b ] = - iTemp4 [k9 lr10:74 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tanhf_r_1_1}[r0x08 r0x09 r0x0a r0x0b ]
; #	BTG	r0x0b, 7
; #;;ic:73:  _iffalse_3($11) :
; #;;ic:74: 	ret iTemp4 [k9 lr10:74 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tanhf_r_1_1}[r0x08 r0x09 r0x0a r0x0b ]
; #	MOVFF	r0x0b, FSR0L
;	.line	62; tanhf.c	return r;
	MOVF	r0x00, W
	BTFSS	STATUS, 2
	BTG	r0x0b, 7
	MOVFF	r0x0b, FSR0L
	MOVFF	r0x0a, PRODH
	MOVFF	r0x09, PRODL
	MOVF	r0x08, W
; ;ic:75:  _return($12) :
; ;ic:76: 	eproc _tanhf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float) }
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
; code size:	 1190 (0x04a6) bytes ( 0.91%)
;           	  595 (0x0253) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	   20 (0x0014) bytes


	end
