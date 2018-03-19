;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:32 2018
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f452

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global _ispunct

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern _isdigit
	extern _islower
	extern _isupper
	extern _isprint
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

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($8) :
; ;ic:2: 	proc _ispunct [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( unsigned-char) }
S_ispunct__ispunct	code
_ispunct:
;	.line	27; ispunct.c	char ispunct (unsigned char c) 
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
; ;ic:3: iTemp0 [k2 lr3:15 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _ispunct_c_1_1}[r0x00 ] = recv _ispunct [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( unsigned-char) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
; ;ic:4: 	send iTemp0 [k2 lr3:15 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _ispunct_c_1_1}[r0x00 ]{argreg = 1}
; ;ic:5: 	iTemp1 [k5 lr5:6 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x01 ] = call _isprint [k4 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( unsigned-char) }
;	.line	29; ispunct.c	if (isprint (c)
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_isprint
	MOVWF	r0x01
	INCF	FSR1L, F
; ;ic:6: 	if iTemp1 [k5 lr5:6 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x01 ] == 0 goto _iffalse_0($2)
	MOVF	r0x01, W
	BZ	_00106_DS_
; ;ic:7: 	send iTemp0 [k2 lr3:15 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _ispunct_c_1_1}[r0x00 ]{argreg = 1}
; ;ic:8: 	iTemp2 [k7 lr8:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x01 ] = call _islower [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( unsigned-char) }
;	.line	30; ispunct.c	&& !islower(c)
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_islower
	MOVWF	r0x01
	INCF	FSR1L, F
; ;ic:9: 	if iTemp2 [k7 lr8:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x01 ] != 0 goto _iffalse_0($2)
	MOVF	r0x01, W
	BNZ	_00106_DS_
; ;ic:10: 	send iTemp0 [k2 lr3:15 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _ispunct_c_1_1}[r0x00 ]{argreg = 1}
; ;ic:11: 	iTemp3 [k9 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x01 ] = call _isupper [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( unsigned-char) }
;	.line	31; ispunct.c	&& !isupper(c)
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_isupper
	MOVWF	r0x01
	INCF	FSR1L, F
; ;ic:12: 	if iTemp3 [k9 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x01 ] != 0 goto _iffalse_0($2)
	MOVF	r0x01, W
	BNZ	_00106_DS_
; ;ic:13: 	iTemp4 [k10 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp0 [k2 lr3:15 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _ispunct_c_1_1}[r0x00 ] == 0x20 {literal-unsigned-char}
;	.line	33; ispunct.c	&& !isdigit(c)) 
	MOVF	r0x00, W
	XORLW	0x20
	BZ	_00106_DS_
; ;ic:14: 	if iTemp4 [k10 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} != 0 goto _iffalse_0($2)
; ;ic:15: 	send iTemp0 [k2 lr3:15 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _ispunct_c_1_1}[r0x00 ]{argreg = 1}
; ;ic:16: 	iTemp5 [k12 lr16:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x00 ] = call _isdigit [k11 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( unsigned-char) }
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_isdigit
	MOVWF	r0x00
	INCF	FSR1L, F
; ;ic:17: 	if iTemp5 [k12 lr16:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x00 ] != 0 goto _iffalse_0($2)
	MOVF	r0x00, W
	BNZ	_00106_DS_
; ;ic:18: 	ret 0x1 {literal-char}
;	.line	34; ispunct.c	return 1;
	MOVLW	0x01
	BRA	_00111_DS_
; ;ic:19:  _iffalse_0($2) :
; ;ic:20: 	ret 0x0 {literal-char}
_00106_DS_:
;	.line	36; ispunct.c	return 0;
	CLRF	WREG
; ;ic:21:  _return($7) :
; ;ic:22: 	eproc _ispunct [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( unsigned-char) }
_00111_DS_:
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	



; Statistics:
; code size:	  112 (0x0070) bytes ( 0.09%)
;           	   56 (0x0038) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    2 (0x0002) bytes


	end
