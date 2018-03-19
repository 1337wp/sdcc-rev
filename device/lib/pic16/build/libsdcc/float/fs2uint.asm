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
	global ___fs2uint

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern ___fs2ulong
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
; ;ic:1:  _entry($4) :
; ;ic:2: 	proc ___fs2uint [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function    ( float) }
S_fs2uint____fs2uint	code
___fs2uint:
;	.line	37; fs2uint.c	unsigned int __fs2uint (float f) _FS_REENTRANT
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
; ;ic:3: iTemp0 [k2 lr3:4 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ ___fs2uint_f_1_1}[r0x00 r0x01 r0x02 r0x03 ] = recv ___fs2uint [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function    ( float) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
; ;ic:4: 	send iTemp0 [k2 lr3:4 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ ___fs2uint_f_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 1}
; ;ic:5: 	iTemp1 [k4 lr5:10 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fs2uint_ul_1_1}[r0x00 r0x01 r0x02 r0x03 ] = call ___fs2ulong [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int function    ( float) }
;	.line	39; fs2uint.c	unsigned long ul=__fs2ulong(f);
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	___fs2ulong
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVLW	0x04
	ADDWF	FSR1L, F
; ;ic:6: 	iTemp3 [k8 lr6:7 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp1 [k4 lr5:10 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fs2uint_ul_1_1}[r0x00 r0x01 r0x02 r0x03 ] < 0xffff {literal-unsigned-long-int}
;	.line	40; fs2uint.c	if (ul>=UINT_MAX) return UINT_MAX;
	MOVLW	0x00
	SUBWF	r0x03, W
	BNZ	_00110_DS_
	MOVLW	0x00
	SUBWF	r0x02, W
	BNZ	_00110_DS_
	MOVLW	0xff
	SUBWF	r0x01, W
	BNZ	_00110_DS_
	MOVLW	0xff
	SUBWF	r0x00, W
_00110_DS_:
	BNC	_00106_DS_
; ;ic:7: 	if iTemp3 [k8 lr6:7 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} != 0 goto _iffalse_0($2)
; ;ic:8: 	ret 0xffff {literal-unsigned-int}
	SETF	PRODL
	SETF	WREG
	BRA	_00107_DS_
; ;ic:9:  _iffalse_0($2) :
; ;ic:10: 	iTemp4 [k9 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x00 r0x01 ] = (unsigned-int)iTemp1 [k4 lr5:10 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fs2uint_ul_1_1}[r0x00 r0x01 r0x02 r0x03 ]
; ;ic:11: 	ret iTemp4 [k9 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x00 r0x01 ]
_00106_DS_:
;	.line	41; fs2uint.c	return ul;
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
; ;ic:12:  _return($3) :
; ;ic:13: 	eproc ___fs2uint [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function    ( float) }
_00107_DS_:
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	



; Statistics:
; code size:	  144 (0x0090) bytes ( 0.11%)
;           	   72 (0x0048) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    4 (0x0004) bytes


	end
