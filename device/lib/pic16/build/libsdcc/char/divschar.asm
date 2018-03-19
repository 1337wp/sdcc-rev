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
	global __divschar

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern __divuchar
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

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($11) :
; ;ic:2: 	proc __divschar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( char, char) }
S_divschar___divschar	code
__divschar:
;	.line	36; divschar.c	int _divschar (char a, char b) _IL_REENTRANT
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
; ;ic:3: iTemp0 [k2 lr3:10 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ __divschar_a_1_1}[r0x00 ] = recv __divschar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( char, char) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
; ;ic:4: iTemp1 [k4 lr4:17 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ __divschar_b_1_1}[r0x01 ] = recv __divschar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( char, char) }
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
; ;ic:5: 	iTemp2 [k6 lr5:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x02 ] = iTemp0 [k2 lr3:10 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ __divschar_a_1_1}[r0x00 ] < 0x0 {literal-char}
;	.line	41; divschar.c	if(a<0)ta = -a; else ta = a;
	BSF	STATUS, 0
	BTFSS	r0x00, 7
	BCF	STATUS, 0
	CLRF	r0x02
	RLCF	r0x02, F
; ;ic:6: 	if iTemp2 [k6 lr5:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x02 ] == 0 goto _iffalse_0($2)
	MOVF	r0x02, W
	BZ	_00106_DS_
; ;ic:7: 	iTemp3 [k7 lr7:20 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ __divschar_ta_1_1}[r0x03 ] = - iTemp0 [k2 lr3:10 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ __divschar_a_1_1}[r0x00 ]
	COMF	r0x00, W
	MOVWF	r0x03
	INCF	r0x03, F
; ;ic:8: 	 goto _ifend_0($3)
	BRA	_00107_DS_
; ;ic:9:  _iffalse_0($2) :
; ;ic:10: 	iTemp3 [k7 lr7:20 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ __divschar_ta_1_1}[r0x03 ] := iTemp0 [k2 lr3:10 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ __divschar_a_1_1}[r0x00 ]
_00106_DS_:
	MOVFF	r0x00, r0x03
; ;ic:11:  _ifend_0($3) :
; ;ic:12: 	iTemp5 [k10 lr12:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x00 ] = iTemp1 [k4 lr4:17 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ __divschar_b_1_1}[r0x01 ] < 0x0 {literal-char}
_00107_DS_:
;	.line	42; divschar.c	if(b<0)tb = -b; else tb = b;
	BSF	STATUS, 0
	BTFSS	r0x01, 7
	BCF	STATUS, 0
	CLRF	r0x00
	RLCF	r0x00, F
; ;ic:13: 	if iTemp5 [k10 lr12:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x00 ] == 0 goto _iffalse_1($5)
	MOVF	r0x00, W
	BZ	_00109_DS_
; ;ic:14: 	iTemp6 [k11 lr14:20 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ __divschar_tb_1_1}[r0x04 ] = - iTemp1 [k4 lr4:17 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ __divschar_b_1_1}[r0x01 ]
	COMF	r0x01, W
	MOVWF	r0x04
	INCF	r0x04, F
; ;ic:15: 	 goto _ifend_1($6)
	BRA	_00110_DS_
; ;ic:16:  _iffalse_1($5) :
; ;ic:17: 	iTemp6 [k11 lr14:20 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ __divschar_tb_1_1}[r0x04 ] := iTemp1 [k4 lr4:17 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ __divschar_b_1_1}[r0x01 ]
_00109_DS_:
	MOVFF	r0x01, r0x04
; ;ic:18:  _ifend_1($6) :
; ;ic:19: 	send iTemp3 [k7 lr7:20 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ __divschar_ta_1_1}[r0x03 ]{argreg = 1}
; ;ic:20: 	send iTemp6 [k11 lr14:20 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ __divschar_tb_1_1}[r0x04 ]{argreg = 2}
; ;ic:21: 	iTemp8 [k14 lr21:28 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __divschar_r_1_1}[r0x01 ] = call __divuchar [k16 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char function    ( unsigned-char, unsigned-char) }
_00110_DS_:
;	.line	44; divschar.c	r = _divuchar(ta, tb);
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	CALL	__divuchar
	MOVWF	r0x01
	MOVLW	0x02
	ADDWF	FSR1L, F
; ;ic:22: 	iTemp14 [k22 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x02 ] = iTemp2 [k6 lr5:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x02 ] ^ iTemp5 [k10 lr12:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x00 ]
;	.line	46; divschar.c	if ((a < 0) ^ (b < 0)) return -r;
	MOVF	r0x00, W
	XORWF	r0x02, F
; ;ic:23: 	if iTemp14 [k22 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x02 ] == 0 goto _iffalse_2($8)
	MOVF	r0x02, W
	BZ	_00112_DS_
; ;ic:24: 	iTemp15 [k23 lr24:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x00 r0x02 ] = (int)iTemp8 [k14 lr21:28 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __divschar_r_1_1}[r0x01 ]
	MOVFF	r0x01, r0x00
	CLRF	r0x02
; ;ic:25: 	iTemp16 [k24 lr25:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x00 r0x02 ] = - iTemp15 [k23 lr24:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x00 r0x02 ]
	COMF	r0x02, F
	NEGF	r0x00
	BTFSC	STATUS, 2
	INCF	r0x02, F
; ;ic:26: 	ret iTemp16 [k24 lr25:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x00 r0x02 ]
	MOVFF	r0x02, PRODL
	MOVF	r0x00, W
	BRA	_00114_DS_
; ;ic:27:  _iffalse_2($8) :
; ;ic:28: 	iTemp17 [k25 lr28:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x01 r0x00 ] = (int)iTemp8 [k14 lr21:28 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __divschar_r_1_1}[r0x01 ]
; ;ic:29: 	ret iTemp17 [k25 lr28:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x01 r0x00 ]
; =DF= MOVFF: replaced by CRLF/SETF
_00112_DS_:
;	.line	47; divschar.c	else return r;
	CLRF	PRODL
	MOVF	r0x01, W
; ;ic:30:  _return($10) :
; ;ic:31: 	eproc __divschar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( char, char) }
_00114_DS_:
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	



; Statistics:
; code size:	  170 (0x00aa) bytes ( 0.13%)
;           	   85 (0x0055) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    5 (0x0005) bytes


	end
