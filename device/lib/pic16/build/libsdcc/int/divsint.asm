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
	global __divsint

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern __divuint
;--------------------------------------------------------
;	Equates to used internal registers
;--------------------------------------------------------
STATUS	equ	0xfd8
WREG	equ	0xfe8
FSR1L	equ	0xfe1
FSR2L	equ	0xfd9
POSTDEC1	equ	0xfe5
PREINC1	equ	0xfe4
PLUSW2	equ	0xfdb
PRODL	equ	0xff3


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

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($5) :
; ;ic:2: 	proc __divsint [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( int, int) }
S_divsint___divsint	code
__divsint:
;	.line	30; divsint.c	int _divsint (int a, int b) _IL_REENTRANT
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
; ;ic:3: iTemp0 [k2 lr3:10 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ __divsint_a_1_1}[r0x00 r0x01 ] = recv __divsint [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( int, int) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
; ;ic:4: iTemp1 [k4 lr4:18 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ __divsint_b_1_1}[r0x02 r0x03 ] = recv __divsint [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( int, int) }
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
; ;ic:5: 	iTemp3 [k9 lr5:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x04 ] = iTemp0 [k2 lr3:10 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ __divsint_a_1_1}[r0x00 r0x01 ] < 0x0 {literal-int}
;	.line	34; divsint.c	r = _divuint((a < 0 ? -a : a),
	BSF	STATUS, 0
	BTFSS	r0x01, 7
	BCF	STATUS, 0
	CLRF	r0x04
	RLCF	r0x04, F
; ;ic:6: 	if iTemp3 [k9 lr5:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x04 ] == 0 goto iTempLbl0($6)
	MOVF	r0x04, W
	BZ	_00110_DS_
; ;ic:7: 	iTemp4 [k10 lr7:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x05 r0x06 ] = - iTemp0 [k2 lr3:10 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ __divsint_a_1_1}[r0x00 r0x01 ]
	COMF	r0x01, W
	MOVWF	r0x06
	COMF	r0x00, W
	MOVWF	r0x05
	INFSNZ	r0x05, F
	INCF	r0x06, F
; ;ic:8: 	 goto iTempLbl1($7)
	BRA	_00111_DS_
; ;ic:9:  iTempLbl0($6) :
; ;ic:10: 	iTemp4 [k10 lr7:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x05 r0x06 ] := iTemp0 [k2 lr3:10 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ __divsint_a_1_1}[r0x00 r0x01 ]
_00110_DS_:
	MOVFF	r0x00, r0x05
	MOVFF	r0x01, r0x06
; ;ic:11:  iTempLbl1($7) :
; ;ic:12: 	iTemp6 [k12 lr12:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x00 r0x01 ] := iTemp4 [k10 lr7:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x05 r0x06 ]
_00111_DS_:
	MOVFF	r0x05, r0x00
	MOVFF	r0x06, r0x01
; ;ic:13: 	iTemp7 [k13 lr13:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x05 ] = iTemp1 [k4 lr4:18 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ __divsint_b_1_1}[r0x02 r0x03 ] < 0x0 {literal-int}
;	.line	35; divsint.c	(b < 0 ? -b : b));
	BSF	STATUS, 0
	BTFSS	r0x03, 7
	BCF	STATUS, 0
	CLRF	r0x05
	RLCF	r0x05, F
; ;ic:14: 	if iTemp7 [k13 lr13:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x05 ] == 0 goto iTempLbl2($8)
	MOVF	r0x05, W
	BZ	_00112_DS_
; ;ic:15: 	iTemp8 [k14 lr15:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x06 r0x07 ] = - iTemp1 [k4 lr4:18 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ __divsint_b_1_1}[r0x02 r0x03 ]
	COMF	r0x03, W
	MOVWF	r0x07
	COMF	r0x02, W
	MOVWF	r0x06
	INFSNZ	r0x06, F
	INCF	r0x07, F
; ;ic:16: 	 goto iTempLbl3($9)
	BRA	_00113_DS_
; ;ic:17:  iTempLbl2($8) :
; ;ic:18: 	iTemp8 [k14 lr15:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x06 r0x07 ] := iTemp1 [k4 lr4:18 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ __divsint_b_1_1}[r0x02 r0x03 ]
_00112_DS_:
	MOVFF	r0x02, r0x06
	MOVFF	r0x03, r0x07
; ;ic:19:  iTempLbl3($9) :
; ;ic:20: 	send iTemp6 [k12 lr12:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x00 r0x01 ]{argreg = 1}
; ;ic:21: 	send iTemp8 [k14 lr15:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x06 r0x07 ]{argreg = 2}
; ;ic:22: 	iTemp2 [k6 lr22:28 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ __divsint_r_1_1}[r0x00 r0x01 ] = call __divuint [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function    ( unsigned-int, unsigned-int) }
_00113_DS_:
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	__divuint
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVLW	0x04
	ADDWF	FSR1L, F
; ;ic:23: 	iTemp15 [k21 lr23:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x04 ] = iTemp3 [k9 lr5:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x04 ] ^ iTemp7 [k13 lr13:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x05 ]
;	.line	36; divsint.c	if ( (a < 0) ^ (b < 0))
	MOVF	r0x05, W
	XORWF	r0x04, F
; ;ic:24: 	if iTemp15 [k21 lr23:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x04 ] == 0 goto _iffalse_0($2)
	MOVF	r0x04, W
	BZ	_00106_DS_
; ;ic:25: 	iTemp16 [k22 lr25:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x02 r0x03 ] = - iTemp2 [k6 lr22:28 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ __divsint_r_1_1}[r0x00 r0x01 ]
;	.line	37; divsint.c	return -r;
	COMF	r0x01, W
	MOVWF	r0x03
	COMF	r0x00, W
	MOVWF	r0x02
	INFSNZ	r0x02, F
	INCF	r0x03, F
; ;ic:26: 	ret iTemp16 [k22 lr25:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x02 r0x03 ]
	MOVFF	r0x03, PRODL
	MOVF	r0x02, W
	BRA	_00108_DS_
; ;ic:27:  _iffalse_0($2) :
; ;ic:28: 	ret iTemp2 [k6 lr22:28 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ __divsint_r_1_1}[r0x00 r0x01 ]
_00106_DS_:
;	.line	39; divsint.c	return r;
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
; ;ic:29:  _return($4) :
; ;ic:30: 	eproc __divsint [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( int, int) }
_00108_DS_:
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
; code size:	  246 (0x00f6) bytes ( 0.19%)
;           	  123 (0x007b) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    8 (0x0008) bytes


	end
