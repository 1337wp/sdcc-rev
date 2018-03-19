;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:33 2018
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f452

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global _atof

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern __gptrget1
	extern _isdigit
	extern _islower
	extern _isspace
	extern _atoi
	extern ___fsmul
	extern ___sint2fs
	extern ___fsadd
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
; ;ic:1:  _entry($30) :
; ;ic:2: 	proc _atof [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( char generic* ) }
S_atof__atof	code
_atof:
;	.line	22; atof.c	float atof(char * s)
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
; ;ic:3: iTemp0 [k2 lr3:98 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _atof_s_1_1}[r0x00 r0x01 r0x02 ] = recv _atof [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( char generic* ) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
; ;ic:5: 	iTemp6 [k10 lr5:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x03 r0x04 r0x05 ] := iTemp0 [k2 lr3:98 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _atof_s_1_1}[r0x00 r0x01 r0x02 ]
;	.line	29; atof.c	while (isspace(*s)) s++;
	MOVFF	r0x00, r0x03
	MOVFF	r0x01, r0x04
	MOVFF	r0x02, r0x05
; ;ic:6:  _whilecontinue_0($1) :
; ;ic:7: 	iTemp2 [k6 lr7:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x06 ] = @[iTemp6 [k10 lr5:26 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x03 r0x04 r0x05 ]]
_00105_DS_:
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrget1
; #	MOVWF	r0x06
; #;;ic:8: 	send iTemp2 [k6 lr7:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x06 ]{argreg = 1}
; #;;ic:9: 	iTemp4 [k8 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x06 ] = call _isspace [k4 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( unsigned-char) }
; #	MOVF	r0x06, W
	MOVWF	POSTDEC1
	CALL	_isspace
	MOVWF	r0x06
	INCF	FSR1L, F
; ;ic:10: 	if iTemp4 [k8 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x06 ] == 0 goto loopExitLbl6($48)
	MOVF	r0x06, W
	BZ	_00152_DS_
; ;ic:11: 	iTemp6 [k10 lr5:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x03 r0x04 r0x05 ] = iTemp6 [k10 lr5:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x03 r0x04 r0x05 ] + 0x1 {literal-unsigned-char}
	INCF	r0x03, F
	BTFSC	STATUS, 0
	INCF	r0x04, F
	BTFSC	STATUS, 0
	INCF	r0x05, F
; ;ic:12: 	 goto _whilecontinue_0($1)
	BRA	_00105_DS_
; ;ic:13:  loopExitLbl6($48) :
; ;ic:14: 	iTemp0 [k2 lr3:98 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _atof_s_1_1}[r0x00 r0x01 r0x02 ] := iTemp6 [k10 lr5:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x03 r0x04 r0x05 ]
_00152_DS_:
	MOVFF	r0x03, r0x00
	MOVFF	r0x04, r0x01
	MOVFF	r0x05, r0x02
; ;ic:16: 	iTemp8 [k12 lr16:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x06 ] = @[iTemp6 [k10 lr5:26 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x03 r0x04 r0x05 ]]
;	.line	32; atof.c	if (*s == '-')
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrget1
; #	MOVWF	r0x06
; #;;ic:17: 	iTemp9 [k13 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp8 [k12 lr16:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x06 ] == 0x2d {literal-char}
; #	MOVF	r0x06, W
	MOVWF	r0x06
	XORLW	0x2d
	BNZ	_00111_DS_
; ;ic:18: 	if iTemp9 [k13 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_1($7)
; ;ic:19: 	iTemp10 [k14 lr19:118 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _atof_sign_1_1}[r0x07 ] := 0x1 {literal-char}
;	.line	34; atof.c	sign=1;
	MOVLW	0x01
	MOVWF	r0x07
; ;ic:20: 	iTemp0 [k2 lr3:98 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _atof_s_1_1}[r0x00 r0x01 r0x02 ] = iTemp6 [k10 lr5:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x03 r0x04 r0x05 ] + 0x1 {literal-unsigned-char}
;	.line	35; atof.c	s++;
	MOVF	r0x03, W
	ADDLW	0x01
	MOVWF	r0x00
	MOVLW	0x00
	ADDWFC	r0x04, W
	MOVWF	r0x01
	MOVLW	0x00
	ADDWFC	r0x05, W
	MOVWF	r0x02
; ;ic:21: 	 goto _ifend_1($8)
	BRA	_00112_DS_
; ;ic:22:  _iffalse_1($7) :
; ;ic:23: 	iTemp10 [k14 lr19:118 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _atof_sign_1_1}[r0x07 ] := 0x0 {literal-char}
_00111_DS_:
;	.line	39; atof.c	sign=0;
	CLRF	r0x07
; ;ic:24: 	iTemp15 [k20 lr24:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp8 [k12 lr16:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x06 ] == 0x2b {literal-char}
;	.line	40; atof.c	if (*s == '+') s++;
	MOVF	r0x06, W
	XORLW	0x2b
	BNZ	_00112_DS_
; ;ic:25: 	if iTemp15 [k20 lr24:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _ifend_1($8)
; ;ic:26: 	iTemp0 [k2 lr3:98 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _atof_s_1_1}[r0x00 r0x01 r0x02 ] = iTemp6 [k10 lr5:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x03 r0x04 r0x05 ] + 0x1 {literal-unsigned-char}
	MOVF	r0x03, W
	ADDLW	0x01
	MOVWF	r0x00
	MOVLW	0x00
	ADDWFC	r0x04, W
	MOVWF	r0x01
	MOVLW	0x00
	ADDWFC	r0x05, W
	MOVWF	r0x02
; ;ic:27:  _ifend_1($8) :
; ;ic:28: 	iTemp18 [k23 lr28:121 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atof_value_1_1}[r0x03 r0x04 r0x05 r0x06 ] := 0 {literal-float}
_00112_DS_:
;	.line	44; atof.c	for (value=0.0; isdigit(*s); s++)
	CLRF	r0x03
	CLRF	r0x04
	CLRF	r0x05
	CLRF	r0x06
; ;ic:30: 	iTemp31 [k38 lr30:55 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x08 r0x09 r0x0a ] := iTemp0 [k2 lr3:98 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _atof_s_1_1}[r0x00 r0x01 r0x02 ]
	MOVFF	r0x00, r0x08
	MOVFF	r0x01, r0x09
	MOVFF	r0x02, r0x0a
; ;ic:31:  _forcond_0($21) :
; ;ic:32: 	iTemp20 [k27 lr32:33 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0b ] = @[iTemp31 [k38 lr30:55 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x08 r0x09 r0x0a ]]
_00125_DS_:
	MOVFF	r0x08, FSR0L
	MOVFF	r0x09, PRODL
	MOVF	r0x0a, W
	CALL	__gptrget1
; #	MOVWF	r0x0b
; #;;ic:33: 	send iTemp20 [k27 lr32:33 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0b ]{argreg = 1}
; #;;ic:34: 	iTemp22 [k29 lr34:35 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0b ] = call _isdigit [k25 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( unsigned-char) }
; #	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	CALL	_isdigit
	MOVWF	r0x0b
	INCF	FSR1L, F
; ;ic:35: 	if iTemp22 [k29 lr34:35 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0b ] == 0 goto loopExitLbl7($49)
	MOVF	r0x0b, W
	BTFSC	STATUS, 2
	BRA	_00153_DS_
; ;ic:36: 	send 10 {literal-float}{argreg = 1}
; ;ic:37: 	send iTemp18 [k23 lr28:121 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atof_value_1_1}[r0x03 r0x04 r0x05 r0x06 ]{argreg = 2}
; ;ic:38: 	iTemp23 [k30 lr38:45 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0b r0x0c r0x0d r0x0e ] = call ___fsmul [k89 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
;	.line	46; atof.c	value=10.0*value+(*s-'0');
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVLW	0x41
	MOVWF	POSTDEC1
	MOVLW	0x20
	MOVWF	POSTDEC1
	MOVLW	0x00
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x0b
	MOVFF	PRODL, r0x0c
	MOVFF	PRODH, r0x0d
	MOVFF	FSR0L, r0x0e
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:39: 	iTemp25 [k32 lr39:40 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0f ] = @[iTemp31 [k38 lr30:55 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x08 r0x09 r0x0a ]]
	MOVFF	r0x08, FSR0L
	MOVFF	r0x09, PRODL
	MOVF	r0x0a, W
	CALL	__gptrget1
	MOVWF	r0x0f
; ;ic:40: 	iTemp26 [k33 lr40:41 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x0f r0x10 ] = (int)iTemp25 [k32 lr39:40 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0f ]
	CLRF	r0x10
	BTFSC	r0x0f, 7
	SETF	r0x10
; ;ic:41: 	iTemp27 [k34 lr41:42 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x0f r0x10 ] = iTemp26 [k33 lr40:41 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x0f r0x10 ] - 0x30 {literal-int}
	MOVLW	0xd0
	ADDWF	r0x0f, F
	BTFSS	STATUS, 0
	DECF	r0x10, F
; ;ic:42: 	send iTemp27 [k34 lr41:42 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x0f r0x10 ]{argreg = 1}
; ;ic:43: 	iTemp28 [k35 lr43:45 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0f r0x10 r0x11 r0x12 ] = call ___sint2fs [k90 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( int) }
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	CALL	___sint2fs
	MOVWF	r0x0f
	MOVFF	PRODL, r0x10
	MOVFF	PRODH, r0x11
	MOVFF	FSR0L, r0x12
	MOVLW	0x02
	ADDWF	FSR1L, F
; ;ic:44: 	send iTemp23 [k30 lr38:45 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0b r0x0c r0x0d r0x0e ]{argreg = 1}
; ;ic:45: 	send iTemp28 [k35 lr43:45 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0f r0x10 r0x11 r0x12 ]{argreg = 2}
; ;ic:46: 	iTemp18 [k23 lr28:121 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atof_value_1_1}[r0x03 r0x04 r0x05 r0x06 ] = call ___fsadd [k91 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
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
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	CALL	___fsadd
	MOVWF	r0x03
	MOVFF	PRODL, r0x04
	MOVFF	PRODH, r0x05
	MOVFF	FSR0L, r0x06
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:47: 	iTemp31 [k38 lr30:55 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x08 r0x09 r0x0a ] = iTemp31 [k38 lr30:55 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x08 r0x09 r0x0a ] + 0x1 {literal-unsigned-char}
;	.line	44; atof.c	for (value=0.0; isdigit(*s); s++)
	INCF	r0x08, F
	BTFSC	STATUS, 0
	INCF	r0x09, F
	BTFSC	STATUS, 0
	INCF	r0x0a, F
; ;ic:48: 	 goto _forcond_0($21)
	BRA	_00125_DS_
; ;ic:49:  loopExitLbl7($49) :
; ;ic:50: 	iTemp0 [k2 lr3:98 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _atof_s_1_1}[r0x00 r0x01 r0x02 ] := iTemp31 [k38 lr30:55 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x08 r0x09 r0x0a ]
_00153_DS_:
	MOVFF	r0x08, r0x00
	MOVFF	r0x09, r0x01
	MOVFF	r0x0a, r0x02
; ;ic:52: 	iTemp33 [k40 lr52:53 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0b ] = @[iTemp31 [k38 lr30:55 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x08 r0x09 r0x0a ]]
;	.line	50; atof.c	if (*s == '.')
	MOVFF	r0x08, FSR0L
	MOVFF	r0x09, PRODL
	MOVF	r0x0a, W
	CALL	__gptrget1
; #	MOVWF	r0x0b
; #;;ic:53: 	iTemp34 [k41 lr53:54 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp33 [k40 lr52:53 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0b ] == 0x2e {literal-char}
; #	MOVF	r0x0b, W
	XORLW	0x2e
	BZ	_00160_DS_
	BRA	_00114_DS_
; ;ic:54: 	if iTemp34 [k41 lr53:54 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_2($10)
; ;ic:55: 	iTemp0 [k2 lr3:98 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _atof_s_1_1}[r0x00 r0x01 r0x02 ] = iTemp31 [k38 lr30:55 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x08 r0x09 r0x0a ] + 0x1 {literal-unsigned-char}
_00160_DS_:
;	.line	52; atof.c	s++;
	MOVF	r0x08, W
	ADDLW	0x01
	MOVWF	r0x00
	MOVLW	0x00
	ADDWFC	r0x09, W
	MOVWF	r0x01
	MOVLW	0x00
	ADDWFC	r0x0a, W
	MOVWF	r0x02
; ;ic:56: 	iTemp37 [k44 lr56:79 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atof_fraction_1_1}[r0x08 r0x09 r0x0a r0x0b ] := 0.1 {literal-float}
;	.line	53; atof.c	for (fraction=0.1; isdigit(*s); s++)
	MOVLW	0xcd
	MOVWF	r0x08
	MOVLW	0xcc
	MOVWF	r0x09
	MOVWF	r0x0a
	MOVLW	0x3d
	MOVWF	r0x0b
; ;ic:58: 	iTemp51 [k59 lr58:81 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x0c r0x0d r0x0e ] := iTemp0 [k2 lr3:98 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _atof_s_1_1}[r0x00 r0x01 r0x02 ]
	MOVFF	r0x00, r0x0c
	MOVFF	r0x01, r0x0d
	MOVFF	r0x02, r0x0e
; ;ic:59:  _forcond_1($25) :
; ;ic:60: 	iTemp39 [k47 lr60:61 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0f ] = @[iTemp51 [k59 lr58:81 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x0c r0x0d r0x0e ]]
_00129_DS_:
	MOVFF	r0x0c, FSR0L
	MOVFF	r0x0d, PRODL
	MOVF	r0x0e, W
	CALL	__gptrget1
; #	MOVWF	r0x0f
; #;;ic:61: 	send iTemp39 [k47 lr60:61 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0f ]{argreg = 1}
; #;;ic:62: 	iTemp41 [k49 lr62:63 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0f ] = call _isdigit [k25 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( unsigned-char) }
; #	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	CALL	_isdigit
	MOVWF	r0x0f
	INCF	FSR1L, F
; ;ic:63: 	if iTemp41 [k49 lr62:63 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0f ] == 0 goto loopExitLbl8($50)
	MOVF	r0x0f, W
	BTFSC	STATUS, 2
	BRA	_00154_DS_
; ;ic:64: 	iTemp43 [k51 lr64:65 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0f ] = @[iTemp51 [k59 lr58:81 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x0c r0x0d r0x0e ]]
;	.line	55; atof.c	value+=(*s-'0')*fraction;
	MOVFF	r0x0c, FSR0L
	MOVFF	r0x0d, PRODL
	MOVF	r0x0e, W
	CALL	__gptrget1
	MOVWF	r0x0f
; ;ic:65: 	iTemp44 [k52 lr65:66 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x0f r0x10 ] = (int)iTemp43 [k51 lr64:65 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0f ]
	CLRF	r0x10
	BTFSC	r0x0f, 7
	SETF	r0x10
; ;ic:66: 	iTemp45 [k53 lr66:67 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x0f r0x10 ] = iTemp44 [k52 lr65:66 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x0f r0x10 ] - 0x30 {literal-int}
	MOVLW	0xd0
	ADDWF	r0x0f, F
	BTFSS	STATUS, 0
	DECF	r0x10, F
; ;ic:67: 	send iTemp45 [k53 lr66:67 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x0f r0x10 ]{argreg = 1}
; ;ic:68: 	iTemp46 [k54 lr68:70 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0f r0x10 r0x11 r0x12 ] = call ___sint2fs [k90 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( int) }
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	CALL	___sint2fs
	MOVWF	r0x0f
	MOVFF	PRODL, r0x10
	MOVFF	PRODH, r0x11
	MOVFF	FSR0L, r0x12
	MOVLW	0x02
	ADDWF	FSR1L, F
; ;ic:69: 	send iTemp46 [k54 lr68:70 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0f r0x10 r0x11 r0x12 ]{argreg = 1}
; ;ic:70: 	send iTemp37 [k44 lr56:79 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atof_fraction_1_1}[r0x08 r0x09 r0x0a r0x0b ]{argreg = 2}
; ;ic:71: 	iTemp47 [k55 lr71:73 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0f r0x10 r0x11 r0x12 ] = call ___fsmul [k89 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	MOVF	r0x12, W
	MOVWF	POSTDEC1
	MOVF	r0x11, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x0f
	MOVFF	PRODL, r0x10
	MOVFF	PRODH, r0x11
	MOVFF	FSR0L, r0x12
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:72: 	send iTemp18 [k23 lr28:121 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atof_value_1_1}[r0x03 r0x04 r0x05 r0x06 ]{argreg = 1}
; ;ic:73: 	send iTemp47 [k55 lr71:73 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0f r0x10 r0x11 r0x12 ]{argreg = 2}
; ;ic:74: 	iTemp18 [k23 lr28:121 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atof_value_1_1}[r0x03 r0x04 r0x05 r0x06 ] = call ___fsadd [k91 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x12, W
	MOVWF	POSTDEC1
	MOVF	r0x11, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	CALL	___fsadd
	MOVWF	r0x03
	MOVFF	PRODL, r0x04
	MOVFF	PRODH, r0x05
	MOVFF	FSR0L, r0x06
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:75: 	send 0.1 {literal-float}{argreg = 1}
; ;ic:76: 	send iTemp37 [k44 lr56:79 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atof_fraction_1_1}[r0x08 r0x09 r0x0a r0x0b ]{argreg = 2}
; ;ic:77: 	iTemp37 [k44 lr56:79 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atof_fraction_1_1}[r0x08 r0x09 r0x0a r0x0b ] = call ___fsmul [k89 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
;	.line	56; atof.c	fraction*=0.1;
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	MOVLW	0x3d
	MOVWF	POSTDEC1
	MOVLW	0xcc
	MOVWF	POSTDEC1
	MOVWF	POSTDEC1
	MOVLW	0xcd
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x08
	MOVFF	PRODL, r0x09
	MOVFF	PRODH, r0x0a
	MOVFF	FSR0L, r0x0b
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:78: 	iTemp51 [k59 lr58:81 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x0c r0x0d r0x0e ] = iTemp51 [k59 lr58:81 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x0c r0x0d r0x0e ] + 0x1 {literal-unsigned-char}
;	.line	53; atof.c	for (fraction=0.1; isdigit(*s); s++)
	INCF	r0x0c, F
	BTFSC	STATUS, 0
	INCF	r0x0d, F
	BTFSC	STATUS, 0
	INCF	r0x0e, F
; ;ic:79: 	 goto _forcond_1($25)
	BRA	_00129_DS_
; ;ic:80:  loopExitLbl8($50) :
; ;ic:81: 	iTemp0 [k2 lr3:98 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _atof_s_1_1}[r0x00 r0x01 r0x02 ] := iTemp51 [k59 lr58:81 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x0c r0x0d r0x0e ]
_00154_DS_:
	MOVFF	r0x0c, r0x00
	MOVFF	r0x0d, r0x01
	MOVFF	r0x0e, r0x02
; ;ic:82:  _iffalse_2($10) :
; ;ic:83: 	iTemp53 [k62 lr83:84 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x08 ] = @[iTemp0 [k2 lr3:98 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _atof_s_1_1}[r0x00 r0x01 r0x02 ]]
_00114_DS_:
;	.line	61; atof.c	if (toupper(*s)=='E')
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget1
; #	MOVWF	r0x08
; #;;ic:84: 	send iTemp53 [k62 lr83:84 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x08 ]{argreg = 1}
; #;;ic:85: 	iTemp55 [k64 lr85:86 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x08 ] = call _islower [k60 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( unsigned-char) }
; #	MOVF	r0x08, W
	MOVWF	POSTDEC1
	CALL	_islower
	MOVWF	r0x08
	INCF	FSR1L, F
; ;ic:86: 	if iTemp55 [k64 lr85:86 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x08 ] == 0 goto iTempLbl0($31)
	MOVF	r0x08, W
	BZ	_00135_DS_
; ;ic:87: 	iTemp58 [k67 lr87:88 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x08 ] = @[iTemp0 [k2 lr3:98 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _atof_s_1_1}[r0x00 r0x01 r0x02 ]]
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget1
	MOVWF	r0x08
; ;ic:88: 	iTemp59 [k68 lr88:89 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x08 r0x09 ] = (int)iTemp58 [k67 lr87:88 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x08 ]
	CLRF	r0x09
	BTFSC	r0x08, 7
	SETF	r0x09
; ;ic:89: 	iTemp56 [k65 lr89:95 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x08 r0x09 ] = iTemp59 [k68 lr88:89 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x08 r0x09 ] & 0xffffffdf {literal-int}
	BCF	r0x08, 5
; ;ic:90: 	 goto iTempLbl1($32)
	BRA	_00136_DS_
; ;ic:91:  iTempLbl0($31) :
; ;ic:92: 	iTemp62 [k71 lr92:93 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0a ] = @[iTemp0 [k2 lr3:98 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _atof_s_1_1}[r0x00 r0x01 r0x02 ]]
_00135_DS_:
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget1
	MOVWF	r0x0a
; ;ic:93: 	iTemp56 [k65 lr89:95 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x08 r0x09 ] = (int)iTemp62 [k71 lr92:93 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0a ]
	MOVFF	r0x0a, r0x08
	CLRF	r0x09
	BTFSC	r0x0a, 7
	SETF	r0x09
; ;ic:94:  iTempLbl1($32) :
; ;ic:95: 	iTemp64 [k73 lr95:96 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp56 [k65 lr89:95 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x08 r0x09 ] == 0x45 {literal-int}
_00136_DS_:
	MOVF	r0x08, W
	XORLW	0x45
	BNZ	_00162_DS_
	MOVF	r0x09, W
	BZ	_00163_DS_
_00162_DS_:
	BRA	_00122_DS_
; ;ic:96: 	if iTemp64 [k73 lr95:96 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_4($18)
; ;ic:97: 	iTemp0 [k2 lr3:98 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _atof_s_1_1}[r0x00 r0x01 r0x02 ] = iTemp0 [k2 lr3:98 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _atof_s_1_1}[r0x00 r0x01 r0x02 ] + 0x1 {literal-unsigned-char}
_00163_DS_:
;	.line	63; atof.c	s++;
	INCF	r0x00, F
	BTFSC	STATUS, 0
	INCF	r0x01, F
	BTFSC	STATUS, 0
	INCF	r0x02, F
; ;ic:98: 	send iTemp0 [k2 lr3:98 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _atof_s_1_1}[r0x00 r0x01 r0x02 ]{argreg = 1}
; ;ic:99: 	iTemp68 [k79 lr99:100 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x00 r0x01 ] = call _atoi [k78 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( char generic* ) }
;	.line	64; atof.c	iexp=(char)atoi(s);
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_atoi
	MOVWF	r0x00
	MOVLW	0x03
	ADDWF	FSR1L, F
; ;ic:100: 	iTemp67 [k76 lr100:116 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _atof_iexp_1_1}[r0x00 ] = (char)iTemp68 [k79 lr99:100 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x00 r0x01 ]
; ;ic:102:  _whilecontinue_1($14) :
; ;ic:103: 	if iTemp67 [k76 lr100:116 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _atof_iexp_1_1}[r0x00 ] == 0 goto _iffalse_4($18)
_00118_DS_:
;	.line	66; atof.c	while(iexp!=0)
	MOVF	r0x00, W
	BTFSC	STATUS, 2
	BRA	_00122_DS_
; ;ic:104: 	iTemp70 [k81 lr104:105 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp67 [k76 lr100:116 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _atof_iexp_1_1}[r0x00 ] < 0x0 {literal-char}
;	.line	68; atof.c	if(iexp<0)
	BSF	STATUS, 0
	BTFSS	r0x00, 7
	BCF	STATUS, 0
	BNC	_00116_DS_
; ;ic:105: 	if iTemp70 [k81 lr104:105 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_3($12)
; ;ic:106: 	send 0.1 {literal-float}{argreg = 1}
; ;ic:107: 	send iTemp18 [k23 lr28:121 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atof_value_1_1}[r0x03 r0x04 r0x05 r0x06 ]{argreg = 2}
; ;ic:108: 	iTemp18 [k23 lr28:121 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atof_value_1_1}[r0x03 r0x04 r0x05 r0x06 ] = call ___fsmul [k89 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
;	.line	70; atof.c	value*=0.1;
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVLW	0x3d
	MOVWF	POSTDEC1
	MOVLW	0xcc
	MOVWF	POSTDEC1
	MOVWF	POSTDEC1
	MOVLW	0xcd
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x03
	MOVFF	PRODL, r0x04
	MOVFF	PRODH, r0x05
	MOVFF	FSR0L, r0x06
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:109: 	iTemp67 [k76 lr100:116 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _atof_iexp_1_1}[r0x00 ] = iTemp67 [k76 lr100:116 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _atof_iexp_1_1}[r0x00 ] + 0x1 {literal-unsigned-char}
;	.line	71; atof.c	iexp++;
	INCF	r0x00, F
; ;ic:110: 	 goto _whilecontinue_1($14)
	BRA	_00118_DS_
; ;ic:111:  _iffalse_3($12) :
; ;ic:112: 	send 10 {literal-float}{argreg = 1}
; ;ic:113: 	send iTemp18 [k23 lr28:121 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atof_value_1_1}[r0x03 r0x04 r0x05 r0x06 ]{argreg = 2}
; ;ic:114: 	iTemp18 [k23 lr28:121 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atof_value_1_1}[r0x03 r0x04 r0x05 r0x06 ] = call ___fsmul [k89 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
_00116_DS_:
;	.line	75; atof.c	value*=10.0;
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVLW	0x41
	MOVWF	POSTDEC1
	MOVLW	0x20
	MOVWF	POSTDEC1
	MOVLW	0x00
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x03
	MOVFF	PRODL, r0x04
	MOVFF	PRODH, r0x05
	MOVFF	FSR0L, r0x06
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:115: 	iTemp67 [k76 lr100:116 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _atof_iexp_1_1}[r0x00 ] = iTemp67 [k76 lr100:116 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _atof_iexp_1_1}[r0x00 ] - 0x1 {literal-unsigned-char}
;	.line	76; atof.c	iexp--;
	DECF	r0x00, F
; ;ic:116: 	 goto _whilecontinue_1($14)
	BRA	_00118_DS_
; ;ic:117:  _iffalse_4($18) :
; ;ic:118: 	if iTemp10 [k14 lr19:118 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _atof_sign_1_1}[r0x07 ] == 0 goto _iffalse_5($20)
_00122_DS_:
;	.line	82; atof.c	if(sign) value*=-1.0;
	MOVF	r0x07, W
	BZ	_00124_DS_
; ;ic:119: 	iTemp18 [k23 lr28:121 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atof_value_1_1}[r0x03 r0x04 r0x05 r0x06 ] = - iTemp18 [k23 lr28:121 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atof_value_1_1}[r0x03 r0x04 r0x05 r0x06 ]
	BTG	r0x06, 7
; ;ic:120:  _iffalse_5($20) :
; ;ic:121: 	ret iTemp18 [k23 lr28:121 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atof_value_1_1}[r0x03 r0x04 r0x05 r0x06 ]
_00124_DS_:
;	.line	83; atof.c	return (value);
	MOVFF	r0x06, FSR0L
	MOVFF	r0x05, PRODH
	MOVFF	r0x04, PRODL
	MOVF	r0x03, W
; ;ic:122:  _return($29) :
; ;ic:123: 	eproc _atof [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( char generic* ) }
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
; code size:	 1166 (0x048e) bytes ( 0.89%)
;           	  583 (0x0247) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	   19 (0x0013) bytes


	end
