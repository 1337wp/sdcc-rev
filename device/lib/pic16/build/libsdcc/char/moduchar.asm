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
	global __moduchar
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

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($12) :
; ;ic:2: 	proc __moduchar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char function    ( unsigned-char, unsigned-char) }
S_moduchar___moduchar	code
__moduchar:
;	.line	34; moduchar.c	unsigned char _moduchar (unsigned char a, unsigned char b) _IL_REENTRANT
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
; ;ic:3: iTemp0 [k2 lr3:32 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __moduchar_a_1_1}[r0x00 ] = recv __moduchar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char function    ( unsigned-char, unsigned-char) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
; ;ic:4: iTemp1 [k4 lr4:30 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __moduchar_b_1_1}[r0x01 ] = recv __moduchar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char function    ( unsigned-char, unsigned-char) }
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
; ;ic:5: 	iTemp2 [k6 lr5:21 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}[r0x02 ] := 0x0 {literal-unsigned-char}
;	.line	36; moduchar.c	unsigned char count = 0;
	CLRF	r0x02
; ;ic:7: 	iTemp8 [k13 lr7:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __moduchar_count_1_1}[r0x03 ] := 0x0 {literal-unsigned-char}
;	.line	38; moduchar.c	while (!MSB_SET(b))
	CLRF	r0x03
; ;ic:8:  _whilecontinue_0($3) :
; ;ic:9: 	iTemp3 [k8 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char} = iTemp1 [k4 lr4:30 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __moduchar_b_1_1}[r0x01 ] & 0x80 {literal-unsigned-char}
_00107_DS_:
	BTFSC	r0x01, 7
	BRA	_00112_DS_
; ;ic:10: 	if iTemp3 [k8 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char} != 0 goto preHeaderLbl1($17)
; ;ic:11: 	iTemp1 [k4 lr4:30 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __moduchar_b_1_1}[r0x01 ] = iTemp1 [k4 lr4:30 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __moduchar_b_1_1}[r0x01 ] << 0x1 {literal-unsigned-char}
;	.line	40; moduchar.c	b <<= 1;
	BCF	STATUS, 0
	RLCF	r0x01, F
; ;ic:12: 	iTemp5 [k10 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp1 [k4 lr4:30 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __moduchar_b_1_1}[r0x01 ] > iTemp0 [k2 lr3:32 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __moduchar_a_1_1}[r0x00 ]
;	.line	41; moduchar.c	if (b > a)
	MOVF	r0x01, W
	SUBWF	r0x00, W
	BC	_00106_DS_
; ;ic:13: 	if iTemp5 [k10 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_0($2)
; ;ic:14: 	iTemp1 [k4 lr4:30 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __moduchar_b_1_1}[r0x01 ] = iTemp1 [k4 lr4:30 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __moduchar_b_1_1}[r0x01 ] >> 0x1 {literal-unsigned-char}
;	.line	43; moduchar.c	b >>=1;
	BCF	STATUS, 0
	RRCF	r0x01, F
; ;ic:15: 	 goto preHeaderLbl1($17)
;	.line	44; moduchar.c	break;
	BRA	_00112_DS_
; ;ic:16:  _iffalse_0($2) :
; ;ic:17: 	iTemp8 [k13 lr7:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __moduchar_count_1_1}[r0x03 ] = iTemp8 [k13 lr7:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __moduchar_count_1_1}[r0x03 ] + 0x1 {literal-unsigned-char}
_00106_DS_:
;	.line	46; moduchar.c	count++;
	INCF	r0x03, F
; ;ic:18: 	iTemp2 [k6 lr5:21 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}[r0x02 ] := iTemp8 [k13 lr7:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __moduchar_count_1_1}[r0x03 ]
	MOVFF	r0x03, r0x02
; ;ic:19: 	 goto _whilecontinue_0($3)
	BRA	_00107_DS_
; ;ic:20:  preHeaderLbl1($17) :
; ;ic:21: 	iTemp13 [k18 lr21:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x02 ] := iTemp2 [k6 lr5:21 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}[r0x02 ]
; ;ic:22:  _dobody_0($8) :
; ;ic:23: 	iTemp9 [k14 lr23:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp0 [k2 lr3:32 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __moduchar_a_1_1}[r0x00 ] < iTemp1 [k4 lr4:30 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __moduchar_b_1_1}[r0x01 ]
_00112_DS_:
;	.line	51; moduchar.c	if (a >= b)
	MOVF	r0x01, W
	SUBWF	r0x00, W
	BNC	_00111_DS_
; ;ic:24: 	if iTemp9 [k14 lr23:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} != 0 goto _iffalse_1($7)
; ;ic:25: 	iTemp0 [k2 lr3:32 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __moduchar_a_1_1}[r0x00 ] = iTemp0 [k2 lr3:32 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __moduchar_a_1_1}[r0x00 ] - iTemp1 [k4 lr4:30 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __moduchar_b_1_1}[r0x01 ]
;	.line	52; moduchar.c	a -= b;
	MOVF	r0x01, W
	SUBWF	r0x00, F
; ;ic:26:  _iffalse_1($7) :
; ;ic:27: 	iTemp1 [k4 lr4:30 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __moduchar_b_1_1}[r0x01 ] = iTemp1 [k4 lr4:30 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __moduchar_b_1_1}[r0x01 ] >> 0x1 {literal-unsigned-char}
_00111_DS_:
;	.line	53; moduchar.c	b >>= 1;
	BCF	STATUS, 0
	RRCF	r0x01, F
; ;ic:28: 	iTemp12 [k17 lr28:30 so:0]{ ia0 a2p0 re0 rm0 nos1 ru0 dp0}{unsigned-char}[r0x03 ] := iTemp13 [k18 lr21:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x02 ]
;	.line	55; moduchar.c	while (count--);
	MOVFF	r0x02, r0x03
; ;ic:29: 	iTemp13 [k18 lr21:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x02 ] = iTemp13 [k18 lr21:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x02 ] - 0x1 {literal-unsigned-char}
	DECF	r0x02, F
; ;ic:30: 	if iTemp12 [k17 lr28:30 so:0]{ ia0 a2p0 re0 rm0 nos1 ru0 dp0}{unsigned-char}[r0x03 ] != 0 goto _dobody_0($8)
	MOVF	r0x03, W
	BNZ	_00112_DS_
; ;ic:32: 	ret iTemp0 [k2 lr3:32 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __moduchar_a_1_1}[r0x00 ]
;	.line	56; moduchar.c	return a;
	MOVF	r0x00, W
; ;ic:33:  _return($11) :
; ;ic:34: 	eproc __moduchar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char function    ( unsigned-char, unsigned-char) }
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	



; Statistics:
; code size:	  116 (0x0074) bytes ( 0.09%)
;           	   58 (0x003a) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    4 (0x0004) bytes


	end
