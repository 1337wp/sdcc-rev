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
	global ___fs2schar

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern ___fs2slong
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

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($6) :
; ;ic:2: 	proc ___fs2schar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float) }
S_fs2schar____fs2schar	code
___fs2schar:
;	.line	36; fs2schar.c	signed char __fs2schar (float f) _FS_REENTRANT
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
; ;ic:3: iTemp0 [k2 lr3:4 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ ___fs2schar_f_1_1}[r0x00 r0x01 r0x02 r0x03 ] = recv ___fs2schar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
; ;ic:4: 	send iTemp0 [k2 lr3:4 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ ___fs2schar_f_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 1}
; ;ic:5: 	iTemp1 [k4 lr5:14 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ ___fs2schar_sl_1_1}[r0x00 r0x01 r0x02 r0x03 ] = call ___fs2slong [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int function    ( float) }
;	.line	38; fs2schar.c	signed long sl=__fs2slong(f);
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	___fs2slong
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVLW	0x04
	ADDWF	FSR1L, F
; ;ic:6: 	iTemp3 [k8 lr6:7 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp1 [k4 lr5:14 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ ___fs2schar_sl_1_1}[r0x00 r0x01 r0x02 r0x03 ] < 0x7f {literal-long-int}
;	.line	39; fs2schar.c	if (sl>=CHAR_MAX)
	MOVF	r0x03, W
	ADDLW	0x80
	ADDLW	0x80
	BNZ	_00113_DS_
	MOVLW	0x00
	SUBWF	r0x02, W
	BNZ	_00113_DS_
	MOVLW	0x00
	SUBWF	r0x01, W
	BNZ	_00113_DS_
	MOVLW	0x7f
	SUBWF	r0x00, W
_00113_DS_:
	BNC	_00106_DS_
; ;ic:7: 	if iTemp3 [k8 lr6:7 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} != 0 goto _iffalse_0($2)
; ;ic:8: 	ret 0x7f {literal-char}
;	.line	40; fs2schar.c	return CHAR_MAX;
	MOVLW	0x7f
	BRA	_00109_DS_
; ;ic:9:  _iffalse_0($2) :
; ;ic:10: 	iTemp4 [k9 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp1 [k4 lr5:14 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ ___fs2schar_sl_1_1}[r0x00 r0x01 r0x02 r0x03 ] > 0xffffff80 {literal-long-int}
_00106_DS_:
;	.line	41; fs2schar.c	if (sl<=CHAR_MIN) 
	MOVF	r0x03, W
	ADDLW	0x80
	ADDLW	0x81
	BNZ	_00114_DS_
	MOVLW	0xff
	SUBWF	r0x02, W
	BNZ	_00114_DS_
	MOVLW	0xff
	SUBWF	r0x01, W
	BNZ	_00114_DS_
	MOVLW	0x81
	SUBWF	r0x00, W
_00114_DS_:
	BC	_00108_DS_
; ;ic:11: 	if iTemp4 [k9 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} != 0 goto _iffalse_1($4)
; ;ic:12: 	ret 0xffffff80 {literal-char}
;	.line	42; fs2schar.c	return -CHAR_MIN;
	MOVLW	0x80
	BRA	_00109_DS_
; ;ic:13:  _iffalse_1($4) :
; ;ic:14: 	iTemp5 [k10 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x00 ] = (char)iTemp1 [k4 lr5:14 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ ___fs2schar_sl_1_1}[r0x00 r0x01 r0x02 r0x03 ]
; ;ic:15: 	ret iTemp5 [k10 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x00 ]
_00108_DS_:
;	.line	43; fs2schar.c	return sl;
	MOVF	r0x00, W
; ;ic:16:  _return($5) :
; ;ic:17: 	eproc ___fs2schar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float) }
_00109_DS_:
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
; access size:	    4 (0x0004) bytes


	end
