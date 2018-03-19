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
	global __divulong
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
; ;ic:1:  _entry($9) :
; ;ic:2: 	proc __divulong [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int function    ( unsigned-long-int, unsigned-long-int) }
S_divulong___divulong	code
__divulong:
;	.line	29; divulong.c	unsigned long _divulong (unsigned long a, unsigned long b) _IL_REENTRANT
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
; ;ic:3: iTemp0 [k2 lr3:25 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ __divulong_a_1_1}[r0x00 r0x01 r0x02 r0x03 ] = recv __divulong [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int function    ( unsigned-long-int, unsigned-long-int) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
; ;ic:4: iTemp1 [k4 lr4:23 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ __divulong_b_1_1}[r0x04 r0x05 r0x06 r0x07 ] = recv __divulong [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int function    ( unsigned-long-int, unsigned-long-int) }
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
	MOVLW	0x08
	MOVFF	PLUSW2, r0x06
	MOVLW	0x09
	MOVFF	PLUSW2, r0x07
; ;ic:5: 	iTemp2 [k6 lr5:23 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ __divulong_reste_1_1}[r0x08 r0x09 r0x0a r0x0b ] := 0x0 {literal-unsigned-long-int}
;	.line	31; divulong.c	unsigned long reste = 0L;
	CLRF	r0x08
	CLRF	r0x09
	CLRF	r0x0a
	CLRF	r0x0b
; ;ic:7: 	iTemp14 [k21 lr7:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __divulong_count_1_1}[r0x0c ] := 0x20 {literal-unsigned-char}
;	.line	35; divulong.c	do
	MOVLW	0x20
	MOVWF	r0x0c
; ;ic:8:  _dobody_0($5) :
; ;ic:9: 	iTemp5 [k12 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x0d r0x0e r0x0f r0x10 ] = iTemp0 [k2 lr3:25 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ __divulong_a_1_1}[r0x00 r0x01 r0x02 r0x03 ] >> 0x1f {literal-unsigned-char}
_00109_DS_:
;	.line	38; divulong.c	c = MSB_SET(a);
	RLNCF	r0x03, W
	ANDLW	0x01
	MOVWF	r0x0d
; ;ic:10: 	iTemp6 [k13 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x0d r0x0e r0x0f r0x10 ] = iTemp5 [k12 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x0d r0x0e r0x0f r0x10 ] & 0x1 {literal-unsigned-long-int}
	MOVLW	0x01
	ANDWF	r0x0d, F
; ;ic:11: 	iTemp4 [k10 lr11:14 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __divulong_c_1_1}[r0x0d ] = (unsigned-char)iTemp6 [k13 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x0d r0x0e r0x0f r0x10 ]
; ;ic:12: 	iTemp0 [k2 lr3:25 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ __divulong_a_1_1}[r0x00 r0x01 r0x02 r0x03 ] = iTemp0 [k2 lr3:25 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ __divulong_a_1_1}[r0x00 r0x01 r0x02 r0x03 ] << 0x1 {literal-unsigned-char}
;	.line	39; divulong.c	a <<= 1;
	MOVF	r0x00, W
	ADDWF	r0x00, F
	RLCF	r0x01, F
	RLCF	r0x02, F
	RLCF	r0x03, F
; ;ic:13: 	iTemp2 [k6 lr5:23 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ __divulong_reste_1_1}[r0x08 r0x09 r0x0a r0x0b ] = iTemp2 [k6 lr5:23 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ __divulong_reste_1_1}[r0x08 r0x09 r0x0a r0x0b ] << 0x1 {literal-unsigned-char}
;	.line	40; divulong.c	reste <<= 1;
	MOVF	r0x08, W
	ADDWF	r0x08, F
	RLCF	r0x09, F
	RLCF	r0x0a, F
	RLCF	r0x0b, F
; ;ic:14: 	if iTemp4 [k10 lr11:14 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __divulong_c_1_1}[r0x0d ] == 0 goto _iffalse_0($2)
; #	MOVF	r0x0d, W
; #	BTFSC	STATUS, 2
; #	GOTO	_00106_DS_
; #;;ic:15: 	iTemp2 [k6 lr5:23 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ __divulong_reste_1_1}[r0x08 r0x09 r0x0a r0x0b ] = iTemp2 [k6 lr5:23 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ __divulong_reste_1_1}[r0x08 r0x09 r0x0a r0x0b ] | 0x1 {literal-unsigned-long-int}
; #	BSF	r0x08, 0
; #;;ic:16:  _iffalse_0($2) :
; #;;ic:17: 	iTemp11 [k18 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp2 [k6 lr5:23 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ __divulong_reste_1_1}[r0x08 r0x09 r0x0a r0x0b ] < iTemp1 [k4 lr4:23 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ __divulong_b_1_1}[r0x04 r0x05 r0x06 r0x07 ]
; #	MOVF	r0x07, W
;	.line	41; divulong.c	if (c)
	MOVF	r0x0d, W
;	.line	42; divulong.c	reste |= 1L;
	BTFSS	STATUS, 2
;	.line	44; divulong.c	if (reste >= b)
	BSF	r0x08, 0
	MOVF	r0x07, W
	SUBWF	r0x0b, W
	BNZ	_00121_DS_
	MOVF	r0x06, W
	SUBWF	r0x0a, W
	BNZ	_00121_DS_
	MOVF	r0x05, W
	SUBWF	r0x09, W
	BNZ	_00121_DS_
	MOVF	r0x04, W
	SUBWF	r0x08, W
_00121_DS_:
	BNC	_00110_DS_
; ;ic:18: 	if iTemp11 [k18 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} != 0 goto _docontinue_0($6)
; ;ic:19: 	iTemp2 [k6 lr5:23 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ __divulong_reste_1_1}[r0x08 r0x09 r0x0a r0x0b ] = iTemp2 [k6 lr5:23 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ __divulong_reste_1_1}[r0x08 r0x09 r0x0a r0x0b ] - iTemp1 [k4 lr4:23 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ __divulong_b_1_1}[r0x04 r0x05 r0x06 r0x07 ]
;	.line	46; divulong.c	reste -= b;
	MOVF	r0x04, W
	SUBWF	r0x08, F
	MOVF	r0x05, W
	SUBWFB	r0x09, F
	MOVF	r0x06, W
	SUBWFB	r0x0a, F
	MOVF	r0x07, W
	SUBWFB	r0x0b, F
; ;ic:20: 	iTemp0 [k2 lr3:25 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ __divulong_a_1_1}[r0x00 r0x01 r0x02 r0x03 ] = iTemp0 [k2 lr3:25 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ __divulong_a_1_1}[r0x00 r0x01 r0x02 r0x03 ] | 0x1 {literal-unsigned-long-int}
;	.line	48; divulong.c	a |= 1L;
	BSF	r0x00, 0
; ;ic:21:  _docontinue_0($6) :
; ;ic:22: 	iTemp14 [k21 lr7:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __divulong_count_1_1}[r0x0c ] = iTemp14 [k21 lr7:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __divulong_count_1_1}[r0x0c ] - 0x1 {literal-unsigned-char}
_00110_DS_:
;	.line	51; divulong.c	while (--count);
	DECFSZ	r0x0c, F
	BRA	_00109_DS_
; ;ic:23: 	if iTemp14 [k21 lr7:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __divulong_count_1_1}[r0x0c ] != 0 goto _dobody_0($5)
; ;ic:25: 	ret iTemp0 [k2 lr3:25 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ __divulong_a_1_1}[r0x00 r0x01 r0x02 r0x03 ]
;	.line	52; divulong.c	return a;
	MOVFF	r0x03, FSR0L
	MOVFF	r0x02, PRODH
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
; ;ic:26:  _return($8) :
; ;ic:27: 	eproc __divulong [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int function    ( unsigned-long-int, unsigned-long-int) }
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
; code size:	  282 (0x011a) bytes ( 0.22%)
;           	  141 (0x008d) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	   14 (0x000e) bytes


	end
