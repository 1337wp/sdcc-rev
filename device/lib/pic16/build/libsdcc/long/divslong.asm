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
	global __divslong

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern __divulong
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

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($5) :
; ;ic:2: 	proc __divslong [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int function    ( long-int, long-int) }
S_divslong___divslong	code
__divslong:
;	.line	29; divslong.c	long _divslong (long a, long b) _IL_REENTRANT
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
; ;ic:3: iTemp0 [k2 lr3:10 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ __divslong_a_1_1}[r0x00 r0x01 r0x02 r0x03 ] = recv __divslong [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int function    ( long-int, long-int) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
; ;ic:4: iTemp1 [k4 lr4:18 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ __divslong_b_1_1}[r0x04 r0x05 r0x06 r0x07 ] = recv __divslong [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int function    ( long-int, long-int) }
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
	MOVLW	0x08
	MOVFF	PLUSW2, r0x06
	MOVLW	0x09
	MOVFF	PLUSW2, r0x07
; ;ic:5: 	iTemp3 [k9 lr5:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x08 ] = iTemp0 [k2 lr3:10 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ __divslong_a_1_1}[r0x00 r0x01 r0x02 r0x03 ] < 0x0 {literal-long-int}
;	.line	33; divslong.c	r = _divulong((a < 0 ? -a : a),
	BSF	STATUS, 0
	BTFSS	r0x03, 7
	BCF	STATUS, 0
	CLRF	r0x08
	RLCF	r0x08, F
; ;ic:6: 	if iTemp3 [k9 lr5:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x08 ] == 0 goto iTempLbl0($6)
	MOVF	r0x08, W
	BZ	_00110_DS_
; ;ic:7: 	iTemp4 [k10 lr7:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int}[r0x09 r0x0a r0x0b r0x0c ] = - iTemp0 [k2 lr3:10 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ __divslong_a_1_1}[r0x00 r0x01 r0x02 r0x03 ]
	COMF	r0x03, W
	MOVWF	r0x0c
	COMF	r0x02, W
	MOVWF	r0x0b
	COMF	r0x01, W
	MOVWF	r0x0a
	COMF	r0x00, W
	MOVWF	r0x09
	INCF	r0x09, F
	BNZ	_00111_DS_
	INCF	r0x0a, F
	BNZ	_00111_DS_
	INFSNZ	r0x0b, F
	INCF	r0x0c, F
; ;ic:8: 	 goto iTempLbl1($7)
_00118_DS_:
	BRA	_00111_DS_
; ;ic:9:  iTempLbl0($6) :
; ;ic:10: 	iTemp4 [k10 lr7:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int}[r0x09 r0x0a r0x0b r0x0c ] := iTemp0 [k2 lr3:10 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ __divslong_a_1_1}[r0x00 r0x01 r0x02 r0x03 ]
_00110_DS_:
	MOVFF	r0x00, r0x09
	MOVFF	r0x01, r0x0a
	MOVFF	r0x02, r0x0b
	MOVFF	r0x03, r0x0c
; ;ic:11:  iTempLbl1($7) :
; ;ic:12: 	iTemp6 [k12 lr12:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] := iTemp4 [k10 lr7:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int}[r0x09 r0x0a r0x0b r0x0c ]
_00111_DS_:
	MOVFF	r0x09, r0x00
	MOVFF	r0x0a, r0x01
	MOVFF	r0x0b, r0x02
	MOVFF	r0x0c, r0x03
; ;ic:13: 	iTemp7 [k13 lr13:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x09 ] = iTemp1 [k4 lr4:18 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ __divslong_b_1_1}[r0x04 r0x05 r0x06 r0x07 ] < 0x0 {literal-long-int}
;	.line	34; divslong.c	(b < 0 ? -b : b));
	BSF	STATUS, 0
	BTFSS	r0x07, 7
	BCF	STATUS, 0
	CLRF	r0x09
	RLCF	r0x09, F
; ;ic:14: 	if iTemp7 [k13 lr13:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x09 ] == 0 goto iTempLbl2($8)
	MOVF	r0x09, W
	BZ	_00112_DS_
; ;ic:15: 	iTemp8 [k14 lr15:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int}[r0x0a r0x0b r0x0c r0x0d ] = - iTemp1 [k4 lr4:18 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ __divslong_b_1_1}[r0x04 r0x05 r0x06 r0x07 ]
	COMF	r0x07, W
	MOVWF	r0x0d
	COMF	r0x06, W
	MOVWF	r0x0c
	COMF	r0x05, W
	MOVWF	r0x0b
	COMF	r0x04, W
	MOVWF	r0x0a
	INCF	r0x0a, F
	BNZ	_00113_DS_
	INCF	r0x0b, F
	BNZ	_00113_DS_
	INFSNZ	r0x0c, F
	INCF	r0x0d, F
; ;ic:16: 	 goto iTempLbl3($9)
_00120_DS_:
	BRA	_00113_DS_
; ;ic:17:  iTempLbl2($8) :
; ;ic:18: 	iTemp8 [k14 lr15:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int}[r0x0a r0x0b r0x0c r0x0d ] := iTemp1 [k4 lr4:18 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ __divslong_b_1_1}[r0x04 r0x05 r0x06 r0x07 ]
_00112_DS_:
	MOVFF	r0x04, r0x0a
	MOVFF	r0x05, r0x0b
	MOVFF	r0x06, r0x0c
	MOVFF	r0x07, r0x0d
; ;ic:19:  iTempLbl3($9) :
; ;ic:20: 	send iTemp6 [k12 lr12:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 1}
; ;ic:21: 	send iTemp8 [k14 lr15:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int}[r0x0a r0x0b r0x0c r0x0d ]{argreg = 2}
; ;ic:22: 	iTemp2 [k6 lr22:28 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ __divslong_r_1_1}[r0x00 r0x01 r0x02 r0x03 ] = call __divulong [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int function    ( unsigned-long-int, unsigned-long-int) }
_00113_DS_:
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	__divulong
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:23: 	iTemp15 [k21 lr23:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x08 ] = iTemp3 [k9 lr5:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x08 ] ^ iTemp7 [k13 lr13:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x09 ]
;	.line	35; divslong.c	if ( (a < 0) ^ (b < 0))
	MOVF	r0x09, W
	XORWF	r0x08, F
; ;ic:24: 	if iTemp15 [k21 lr23:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x08 ] == 0 goto _iffalse_0($2)
	MOVF	r0x08, W
	BZ	_00106_DS_
; ;ic:25: 	iTemp16 [k22 lr25:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int}[r0x04 r0x05 r0x06 r0x07 ] = - iTemp2 [k6 lr22:28 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ __divslong_r_1_1}[r0x00 r0x01 r0x02 r0x03 ]
;	.line	36; divslong.c	return -r;
	COMF	r0x03, W
	MOVWF	r0x07
	COMF	r0x02, W
	MOVWF	r0x06
	COMF	r0x01, W
	MOVWF	r0x05
	COMF	r0x00, W
	MOVWF	r0x04
	INCF	r0x04, F
	BNZ	_00121_DS_
	INCF	r0x05, F
	BNZ	_00121_DS_
	INFSNZ	r0x06, F
	INCF	r0x07, F
; ;ic:26: 	ret iTemp16 [k22 lr25:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int}[r0x04 r0x05 r0x06 r0x07 ]
_00121_DS_:
	MOVFF	r0x07, FSR0L
	MOVFF	r0x06, PRODH
	MOVFF	r0x05, PRODL
	MOVF	r0x04, W
	BRA	_00108_DS_
; ;ic:27:  _iffalse_0($2) :
; ;ic:28: 	ret iTemp2 [k6 lr22:28 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ __divslong_r_1_1}[r0x00 r0x01 r0x02 r0x03 ]
_00106_DS_:
;	.line	38; divslong.c	return r;
	MOVFF	r0x03, FSR0L
	MOVFF	r0x02, PRODH
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
; ;ic:29:  _return($4) :
; ;ic:30: 	eproc __divslong [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int function    ( long-int, long-int) }
_00108_DS_:
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
; code size:	  430 (0x01ae) bytes ( 0.33%)
;           	  215 (0x00d7) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	   14 (0x000e) bytes


	end
