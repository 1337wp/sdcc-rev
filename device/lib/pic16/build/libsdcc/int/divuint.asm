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
	global __divuint
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
; ;ic:1:  _entry($9) :
; ;ic:2: 	proc __divuint [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function    ( unsigned-int, unsigned-int) }
S_divuint___divuint	code
__divuint:
;	.line	29; divuint.c	unsigned int _divuint (unsigned int a, unsigned int b) _IL_REENTRANT
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
; ;ic:3: iTemp0 [k2 lr3:25 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __divuint_a_1_1}[r0x00 r0x01 ] = recv __divuint [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function    ( unsigned-int, unsigned-int) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
; ;ic:4: iTemp1 [k4 lr4:23 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __divuint_b_1_1}[r0x02 r0x03 ] = recv __divuint [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function    ( unsigned-int, unsigned-int) }
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
; ;ic:5: 	iTemp2 [k6 lr5:23 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __divuint_reste_1_1}[r0x04 r0x05 ] := 0x0 {literal-unsigned-int}
;	.line	31; divuint.c	unsigned int reste = 0;
	CLRF	r0x04
	CLRF	r0x05
; ;ic:7: 	iTemp14 [k21 lr7:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __divuint_count_1_1}[r0x06 ] := 0x10 {literal-unsigned-char}
;	.line	35; divuint.c	do
	MOVLW	0x10
	MOVWF	r0x06
; ;ic:8:  _dobody_0($5) :
; ;ic:9: 	iTemp5 [k12 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x07 r0x08 ] = iTemp0 [k2 lr3:25 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __divuint_a_1_1}[r0x00 r0x01 ] >> 0xf {literal-unsigned-char}
_00109_DS_:
;	.line	38; divuint.c	c = MSB_SET(a);
	RLNCF	r0x01, W
	ANDLW	0x01
	MOVWF	r0x07
; ;ic:10: 	iTemp6 [k13 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x07 r0x08 ] = iTemp5 [k12 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x07 r0x08 ] & 0x1 {literal-unsigned-int}
	MOVLW	0x01
	ANDWF	r0x07, F
; ;ic:11: 	iTemp4 [k10 lr11:14 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __divuint_c_1_1}[r0x07 ] = (unsigned-char)iTemp6 [k13 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x07 r0x08 ]
; ;ic:12: 	iTemp0 [k2 lr3:25 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __divuint_a_1_1}[r0x00 r0x01 ] = iTemp0 [k2 lr3:25 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __divuint_a_1_1}[r0x00 r0x01 ] << 0x1 {literal-unsigned-char}
;	.line	39; divuint.c	a <<= 1;
	MOVF	r0x00, W
	ADDWF	r0x00, F
	RLCF	r0x01, F
; ;ic:13: 	iTemp2 [k6 lr5:23 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __divuint_reste_1_1}[r0x04 r0x05 ] = iTemp2 [k6 lr5:23 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __divuint_reste_1_1}[r0x04 r0x05 ] << 0x1 {literal-unsigned-char}
;	.line	40; divuint.c	reste <<= 1;
	MOVF	r0x04, W
	ADDWF	r0x04, F
	RLCF	r0x05, F
; ;ic:14: 	if iTemp4 [k10 lr11:14 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __divuint_c_1_1}[r0x07 ] == 0 goto _iffalse_0($2)
; #	MOVF	r0x07, W
; #	BTFSC	STATUS, 2
; #	GOTO	_00106_DS_
; #;;ic:15: 	iTemp2 [k6 lr5:23 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __divuint_reste_1_1}[r0x04 r0x05 ] = iTemp2 [k6 lr5:23 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __divuint_reste_1_1}[r0x04 r0x05 ] | 0x1 {literal-unsigned-int}
; #	BSF	r0x04, 0
; #;;ic:16:  _iffalse_0($2) :
; #;;ic:17: 	iTemp11 [k18 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp2 [k6 lr5:23 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __divuint_reste_1_1}[r0x04 r0x05 ] < iTemp1 [k4 lr4:23 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __divuint_b_1_1}[r0x02 r0x03 ]
; #	MOVF	r0x03, W
;	.line	41; divuint.c	if (c)
	MOVF	r0x07, W
;	.line	42; divuint.c	reste |= 1;
	BTFSS	STATUS, 2
;	.line	44; divuint.c	if (reste >= b)
	BSF	r0x04, 0
	MOVF	r0x03, W
	SUBWF	r0x05, W
	BNZ	_00121_DS_
	MOVF	r0x02, W
	SUBWF	r0x04, W
_00121_DS_:
	BNC	_00110_DS_
; ;ic:18: 	if iTemp11 [k18 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} != 0 goto _docontinue_0($6)
; ;ic:19: 	iTemp2 [k6 lr5:23 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __divuint_reste_1_1}[r0x04 r0x05 ] = iTemp2 [k6 lr5:23 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __divuint_reste_1_1}[r0x04 r0x05 ] - iTemp1 [k4 lr4:23 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __divuint_b_1_1}[r0x02 r0x03 ]
;	.line	46; divuint.c	reste -= b;
	MOVF	r0x02, W
	SUBWF	r0x04, F
	MOVF	r0x03, W
	SUBWFB	r0x05, F
; ;ic:20: 	iTemp0 [k2 lr3:25 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __divuint_a_1_1}[r0x00 r0x01 ] = iTemp0 [k2 lr3:25 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __divuint_a_1_1}[r0x00 r0x01 ] | 0x1 {literal-unsigned-int}
;	.line	48; divuint.c	a |= 1;
	BSF	r0x00, 0
; ;ic:21:  _docontinue_0($6) :
; ;ic:22: 	iTemp14 [k21 lr7:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __divuint_count_1_1}[r0x06 ] = iTemp14 [k21 lr7:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __divuint_count_1_1}[r0x06 ] - 0x1 {literal-unsigned-char}
_00110_DS_:
;	.line	51; divuint.c	while (--count);
	DECFSZ	r0x06, F
	BRA	_00109_DS_
; ;ic:23: 	if iTemp14 [k21 lr7:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __divuint_count_1_1}[r0x06 ] != 0 goto _dobody_0($5)
; ;ic:25: 	ret iTemp0 [k2 lr3:25 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __divuint_a_1_1}[r0x00 r0x01 ]
;	.line	52; divuint.c	return a;
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
; ;ic:26:  _return($8) :
; ;ic:27: 	eproc __divuint [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function    ( unsigned-int, unsigned-int) }
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
; code size:	  170 (0x00aa) bytes ( 0.13%)
;           	   85 (0x0055) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    8 (0x0008) bytes


	end
