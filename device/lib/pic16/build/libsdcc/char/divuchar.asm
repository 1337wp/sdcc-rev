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
	global __divuchar
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
; ;ic:1:  _entry($9) :
; ;ic:2: 	proc __divuchar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char function    ( unsigned-char, unsigned-char) }
S_divuchar___divuchar	code
__divuchar:
;	.line	36; divuchar.c	unsigned char _divuchar (unsigned char a, unsigned char b) _IL_REENTRANT
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
; ;ic:3: iTemp0 [k2 lr3:23 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __divuchar_a_1_1}[r0x00 ] = recv __divuchar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char function    ( unsigned-char, unsigned-char) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
; ;ic:4: iTemp1 [k4 lr4:21 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __divuchar_b_1_1}[r0x01 ] = recv __divuchar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char function    ( unsigned-char, unsigned-char) }
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
; ;ic:5: 	iTemp2 [k6 lr5:21 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __divuchar_reste_1_1}[r0x02 ] := 0x0 {literal-unsigned-char}
;	.line	38; divuchar.c	unsigned char reste = 0;
	CLRF	r0x02
; ;ic:7: 	iTemp13 [k20 lr7:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __divuchar_count_1_1}[r0x03 ] := 0x8 {literal-unsigned-char}
;	.line	42; divuchar.c	do
	MOVLW	0x08
	MOVWF	r0x03
; ;ic:8:  _dobody_0($5) :
; ;ic:9: 	iTemp4 [k10 lr9:12 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ __divuchar_c_1_1}[r0x04 ] = iTemp0 [k2 lr3:23 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __divuchar_a_1_1}[r0x00 ] & 0x80 {literal-unsigned-char}
_00109_DS_:
;	.line	45; divuchar.c	c = MSB_SET(a);
	MOVLW	0x80
	ANDWF	r0x00, W
	MOVWF	r0x04
; ;ic:10: 	iTemp0 [k2 lr3:23 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __divuchar_a_1_1}[r0x00 ] = iTemp0 [k2 lr3:23 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __divuchar_a_1_1}[r0x00 ] << 0x1 {literal-unsigned-char}
;	.line	46; divuchar.c	a <<= 1;
	BCF	STATUS, 0
	RLCF	r0x00, F
; ;ic:11: 	iTemp2 [k6 lr5:21 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __divuchar_reste_1_1}[r0x02 ] = iTemp2 [k6 lr5:21 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __divuchar_reste_1_1}[r0x02 ] << 0x1 {literal-unsigned-char}
;	.line	47; divuchar.c	reste <<= 1;
	BCF	STATUS, 0
	RLCF	r0x02, F
; ;ic:12: 	if iTemp4 [k10 lr9:12 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ __divuchar_c_1_1}[r0x04 ] == 0 goto _iffalse_0($2)
; #	MOVF	r0x04, W
; #	BTFSC	STATUS, 2
; #	GOTO	_00106_DS_
; #;;ic:13: 	iTemp2 [k6 lr5:21 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __divuchar_reste_1_1}[r0x02 ] = iTemp2 [k6 lr5:21 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __divuchar_reste_1_1}[r0x02 ] | 0x1 {literal-unsigned-char}
; #	BSF	r0x02, 0
; #;;ic:14:  _iffalse_0($2) :
; #;;ic:15: 	iTemp10 [k17 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp2 [k6 lr5:21 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __divuchar_reste_1_1}[r0x02 ] < iTemp1 [k4 lr4:21 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __divuchar_b_1_1}[r0x01 ]
; #	MOVF	r0x01, W
;	.line	48; divuchar.c	if (c)
	MOVF	r0x04, W
;	.line	49; divuchar.c	reste |= 1;
	BTFSS	STATUS, 2
;	.line	51; divuchar.c	if (reste >= b)
	BSF	r0x02, 0
	MOVF	r0x01, W
	SUBWF	r0x02, W
	BNC	_00110_DS_
; ;ic:16: 	if iTemp10 [k17 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} != 0 goto _docontinue_0($6)
; ;ic:17: 	iTemp2 [k6 lr5:21 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __divuchar_reste_1_1}[r0x02 ] = iTemp2 [k6 lr5:21 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __divuchar_reste_1_1}[r0x02 ] - iTemp1 [k4 lr4:21 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __divuchar_b_1_1}[r0x01 ]
;	.line	53; divuchar.c	reste -= b;
	MOVF	r0x01, W
	SUBWF	r0x02, F
; ;ic:18: 	iTemp0 [k2 lr3:23 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __divuchar_a_1_1}[r0x00 ] = iTemp0 [k2 lr3:23 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __divuchar_a_1_1}[r0x00 ] | 0x1 {literal-unsigned-char}
;	.line	56; divuchar.c	a |= 1;
	BSF	r0x00, 0
; ;ic:19:  _docontinue_0($6) :
; ;ic:20: 	iTemp13 [k20 lr7:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __divuchar_count_1_1}[r0x03 ] = iTemp13 [k20 lr7:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __divuchar_count_1_1}[r0x03 ] - 0x1 {literal-unsigned-char}
_00110_DS_:
;	.line	59; divuchar.c	while (--count);
	DECFSZ	r0x03, F
	BRA	_00109_DS_
; ;ic:21: 	if iTemp13 [k20 lr7:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __divuchar_count_1_1}[r0x03 ] != 0 goto _dobody_0($5)
; ;ic:23: 	ret iTemp0 [k2 lr3:23 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __divuchar_a_1_1}[r0x00 ]
;	.line	61; divuchar.c	return a;
	MOVF	r0x00, W
; ;ic:24:  _return($8) :
; ;ic:25: 	eproc __divuchar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char function    ( unsigned-char, unsigned-char) }
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	



; Statistics:
; code size:	  110 (0x006e) bytes ( 0.08%)
;           	   55 (0x0037) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    5 (0x0005) bytes


	end
