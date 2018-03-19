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
	global __moduint
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

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($12) :
; ;ic:2: 	proc __moduint [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function    ( unsigned-int, unsigned-int) }
S_moduint___moduint	code
__moduint:
;	.line	31; moduint.c	unsigned int _moduint (unsigned int a, unsigned int b) _IL_REENTRANT
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
	MOVFF	r0x06, POSTDEC1
; ;ic:3: iTemp0 [k2 lr3:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __moduint_a_1_1}[r0x00 r0x01 ] = recv __moduint [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function    ( unsigned-int, unsigned-int) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
; ;ic:4: iTemp1 [k4 lr4:31 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __moduint_b_1_1}[r0x02 r0x03 ] = recv __moduint [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function    ( unsigned-int, unsigned-int) }
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
; ;ic:5: 	iTemp2 [k6 lr5:22 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}[r0x04 ] := 0x0 {literal-unsigned-char}
;	.line	33; moduint.c	unsigned char count = 0;
	CLRF	r0x04
; ;ic:7: 	iTemp9 [k14 lr7:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __moduint_count_1_1}[r0x05 ] := 0x0 {literal-unsigned-char}
;	.line	36; moduint.c	while (!MSB_SET(b))
	CLRF	r0x05
; ;ic:8:  _whilecontinue_0($3) :
; ;ic:9: 	iTemp3 [k8 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x06 r0x07 ] = iTemp1 [k4 lr4:31 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __moduint_b_1_1}[r0x02 r0x03 ] >> 0xf {literal-unsigned-char}
_00107_DS_:
	RLNCF	r0x03, W
	ANDLW	0x01
	MOVWF	r0x06
; ;ic:10: 	iTemp4 [k9 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int} = iTemp3 [k8 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x06 r0x07 ] & 0x1 {literal-unsigned-int}
	BTFSC	r0x06, 0
	BRA	_00112_DS_
; ;ic:11: 	if iTemp4 [k9 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int} != 0 goto preHeaderLbl1($17)
; ;ic:12: 	iTemp1 [k4 lr4:31 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __moduint_b_1_1}[r0x02 r0x03 ] = iTemp1 [k4 lr4:31 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __moduint_b_1_1}[r0x02 r0x03 ] << 0x1 {literal-unsigned-char}
;	.line	38; moduint.c	b <<= 1;
	MOVF	r0x02, W
	ADDWF	r0x02, F
	RLCF	r0x03, F
; ;ic:13: 	iTemp6 [k11 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp1 [k4 lr4:31 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __moduint_b_1_1}[r0x02 r0x03 ] > iTemp0 [k2 lr3:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __moduint_a_1_1}[r0x00 r0x01 ]
;	.line	39; moduint.c	if (b > a)
	MOVF	r0x03, W
	SUBWF	r0x01, W
	BNZ	_00125_DS_
	MOVF	r0x02, W
	SUBWF	r0x00, W
_00125_DS_:
	BC	_00106_DS_
; ;ic:14: 	if iTemp6 [k11 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_0($2)
; ;ic:15: 	iTemp1 [k4 lr4:31 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __moduint_b_1_1}[r0x02 r0x03 ] = iTemp1 [k4 lr4:31 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __moduint_b_1_1}[r0x02 r0x03 ] >> 0x1 {literal-unsigned-char}
;	.line	41; moduint.c	b >>=1;
	BCF	STATUS, 0
	RRCF	r0x03, F
	RRCF	r0x02, F
; ;ic:16: 	 goto preHeaderLbl1($17)
;	.line	42; moduint.c	break;
	BRA	_00112_DS_
; ;ic:17:  _iffalse_0($2) :
; ;ic:18: 	iTemp9 [k14 lr7:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __moduint_count_1_1}[r0x05 ] = iTemp9 [k14 lr7:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __moduint_count_1_1}[r0x05 ] + 0x1 {literal-unsigned-char}
_00106_DS_:
;	.line	44; moduint.c	count++;
	INCF	r0x05, F
; ;ic:19: 	iTemp2 [k6 lr5:22 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}[r0x04 ] := iTemp9 [k14 lr7:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __moduint_count_1_1}[r0x05 ]
	MOVFF	r0x05, r0x04
; ;ic:20: 	 goto _whilecontinue_0($3)
	BRA	_00107_DS_
; ;ic:21:  preHeaderLbl1($17) :
; ;ic:22: 	iTemp14 [k19 lr22:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x04 ] := iTemp2 [k6 lr5:22 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}[r0x04 ]
; ;ic:23:  _dobody_0($8) :
; ;ic:24: 	iTemp10 [k15 lr24:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp0 [k2 lr3:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __moduint_a_1_1}[r0x00 r0x01 ] < iTemp1 [k4 lr4:31 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __moduint_b_1_1}[r0x02 r0x03 ]
_00112_DS_:
;	.line	48; moduint.c	if (a >= b)
	MOVF	r0x03, W
	SUBWF	r0x01, W
	BNZ	_00126_DS_
	MOVF	r0x02, W
	SUBWF	r0x00, W
_00126_DS_:
	BNC	_00111_DS_
; ;ic:25: 	if iTemp10 [k15 lr24:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} != 0 goto _iffalse_1($7)
; ;ic:26: 	iTemp0 [k2 lr3:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __moduint_a_1_1}[r0x00 r0x01 ] = iTemp0 [k2 lr3:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __moduint_a_1_1}[r0x00 r0x01 ] - iTemp1 [k4 lr4:31 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __moduint_b_1_1}[r0x02 r0x03 ]
;	.line	49; moduint.c	a -= b;
	MOVF	r0x02, W
	SUBWF	r0x00, F
	MOVF	r0x03, W
	SUBWFB	r0x01, F
; ;ic:27:  _iffalse_1($7) :
; ;ic:28: 	iTemp1 [k4 lr4:31 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __moduint_b_1_1}[r0x02 r0x03 ] = iTemp1 [k4 lr4:31 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __moduint_b_1_1}[r0x02 r0x03 ] >> 0x1 {literal-unsigned-char}
_00111_DS_:
;	.line	50; moduint.c	b >>= 1;
	BCF	STATUS, 0
	RRCF	r0x03, F
	RRCF	r0x02, F
; ;ic:29: 	iTemp13 [k18 lr29:31 so:0]{ ia0 a2p0 re0 rm0 nos1 ru0 dp0}{unsigned-char}[r0x05 ] := iTemp14 [k19 lr22:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x04 ]
;	.line	52; moduint.c	while (count--);
	MOVFF	r0x04, r0x05
; ;ic:30: 	iTemp14 [k19 lr22:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x04 ] = iTemp14 [k19 lr22:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x04 ] - 0x1 {literal-unsigned-char}
	DECF	r0x04, F
; ;ic:31: 	if iTemp13 [k18 lr29:31 so:0]{ ia0 a2p0 re0 rm0 nos1 ru0 dp0}{unsigned-char}[r0x05 ] != 0 goto _dobody_0($8)
	MOVF	r0x05, W
	BNZ	_00112_DS_
; ;ic:33: 	ret iTemp0 [k2 lr3:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __moduint_a_1_1}[r0x00 r0x01 ]
;	.line	53; moduint.c	return a;
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
; ;ic:34:  _return($11) :
; ;ic:35: 	eproc __moduint [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function    ( unsigned-int, unsigned-int) }
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
; code size:	  184 (0x00b8) bytes ( 0.14%)
;           	   92 (0x005c) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    7 (0x0007) bytes


	end
