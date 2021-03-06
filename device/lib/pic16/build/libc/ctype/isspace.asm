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
	global _isspace
;--------------------------------------------------------
;	Equates to used internal registers
;--------------------------------------------------------
WREG	equ	0xfe8
FSR1L	equ	0xfe1
FSR2L	equ	0xfd9
POSTDEC1	equ	0xfe5
PREINC1	equ	0xfe4
PLUSW2	equ	0xfdb


; Internal registers
.registers	udata_ovr	0x0000
r0x00	res	1

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($9) :
; ;ic:2: 	proc _isspace [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( unsigned-char) }
S_isspace__isspace	code
_isspace:
;	.line	25; isspace.c	char isspace (unsigned char c) 
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
; ;ic:3: iTemp0 [k2 lr3:14 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _isspace_c_1_1}[r0x00 ] = recv _isspace [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( unsigned-char) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
; ;ic:4: 	iTemp1 [k4 lr4:5 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp0 [k2 lr3:14 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _isspace_c_1_1}[r0x00 ] == 0x20 {literal-unsigned-char}
;	.line	28; isspace.c	|| c == '\f'
	MOVF	r0x00, W
	XORLW	0x20
	BZ	_00105_DS_
; ;ic:5: 	if iTemp1 [k4 lr4:5 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} != 0 goto _iftrue_0($1)
; ;ic:6: 	iTemp2 [k5 lr6:7 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp0 [k2 lr3:14 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _isspace_c_1_1}[r0x00 ] == 0xc {literal-unsigned-char}
;	.line	29; isspace.c	|| c == '\n'
	MOVF	r0x00, W
	XORLW	0x0c
	BZ	_00105_DS_
; ;ic:7: 	if iTemp2 [k5 lr6:7 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} != 0 goto _iftrue_0($1)
; ;ic:8: 	iTemp3 [k6 lr8:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp0 [k2 lr3:14 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _isspace_c_1_1}[r0x00 ] == 0xa {literal-unsigned-char}
;	.line	30; isspace.c	|| c == '\r'
	MOVF	r0x00, W
	XORLW	0x0a
	BZ	_00105_DS_
; ;ic:9: 	if iTemp3 [k6 lr8:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} != 0 goto _iftrue_0($1)
; ;ic:10: 	iTemp4 [k7 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp0 [k2 lr3:14 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _isspace_c_1_1}[r0x00 ] == 0xd {literal-unsigned-char}
;	.line	31; isspace.c	|| c == '\t'
	MOVF	r0x00, W
	XORLW	0x0d
	BZ	_00105_DS_
; ;ic:11: 	if iTemp4 [k7 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} != 0 goto _iftrue_0($1)
; ;ic:12: 	iTemp5 [k8 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp0 [k2 lr3:14 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _isspace_c_1_1}[r0x00 ] == 0x9 {literal-unsigned-char}
;	.line	32; isspace.c	|| c == '\v' ) 
	MOVF	r0x00, W
	XORLW	0x09
	BZ	_00105_DS_
; ;ic:13: 	if iTemp5 [k8 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} != 0 goto _iftrue_0($1)
; ;ic:14: 	iTemp6 [k9 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp0 [k2 lr3:14 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _isspace_c_1_1}[r0x00 ] == 0xb {literal-unsigned-char}
	MOVF	r0x00, W
	XORLW	0x0b
	BNZ	_00106_DS_
; ;ic:15: 	if iTemp6 [k9 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_0($2)
; ;ic:16:  _iftrue_0($1) :
; ;ic:17: 	ret 0x1 {literal-char}
_00105_DS_:
;	.line	33; isspace.c	return 1;
	MOVLW	0x01
	BRA	_00112_DS_
; ;ic:18:  _iffalse_0($2) :
; ;ic:19: 	ret 0x0 {literal-char}
_00106_DS_:
;	.line	35; isspace.c	return 0;
	CLRF	WREG
; ;ic:20:  _return($8) :
; ;ic:21: 	eproc _isspace [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( unsigned-char) }
_00112_DS_:
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	



; Statistics:
; code size:	   70 (0x0046) bytes ( 0.05%)
;           	   35 (0x0023) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    1 (0x0001) bytes


	end
