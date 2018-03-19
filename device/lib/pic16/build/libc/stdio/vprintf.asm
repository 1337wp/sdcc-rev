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
	global _vprintf

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern _stdin
	extern _stdout
	extern _vfprintf
;--------------------------------------------------------
;	Equates to used internal registers
;--------------------------------------------------------
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

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($2) :
; ;ic:2: 	proc _vprintf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function    ( char generic* , unsigned-char generic* ) }
S_vprintf__vprintf	code
_vprintf:
;	.line	32; vprintf.c	unsigned vprintf(char *fmt, va_list ap)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
; ;ic:3: iTemp0 [k2 lr3:7 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _vprintf_fmt_1_1}[r0x00 r0x01 r0x02 ] = recv _vprintf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function    ( char generic* , unsigned-char generic* ) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
; ;ic:4: iTemp1 [k4 lr4:7 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* }{ sir@ _vprintf_ap_1_1}[r0x03 r0x04 r0x05 ] = recv _vprintf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function    ( char generic* , unsigned-char generic* ) }
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
; ;ic:5: 	send _stdout [k9 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic*  generic* }{argreg = 1}
; ;ic:6: 	send iTemp0 [k2 lr3:7 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _vprintf_fmt_1_1}[r0x00 r0x01 r0x02 ]{argreg = 2}
; ;ic:7: 	send iTemp1 [k4 lr4:7 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* }{ sir@ _vprintf_ap_1_1}[r0x03 r0x04 r0x05 ]{argreg = 3}
; ;ic:8: 	iTemp2 [k6 lr8:9 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _vprintf_i_1_1}[r0x00 r0x01 ] = call _vfprintf [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function    ( char generic*  generic* , char generic* , unsigned-char generic* ) }
;	.line	36; vprintf.c	i = vfprintf(stdout, fmt, ap);
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	BANKSEL	(_stdout + 2)
	MOVF	(_stdout + 2), W, B
	MOVWF	POSTDEC1
; removed redundant BANKSEL
	MOVF	(_stdout + 1), W, B
	MOVWF	POSTDEC1
; removed redundant BANKSEL
	MOVF	_stdout, W, B
	MOVWF	POSTDEC1
	CALL	_vfprintf
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVLW	0x09
	ADDWF	FSR1L, F
; ;ic:9: 	ret iTemp2 [k6 lr8:9 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _vprintf_i_1_1}[r0x00 r0x01 ]
;	.line	38; vprintf.c	return (i);
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
; ;ic:10:  _return($1) :
; ;ic:11: 	eproc _vprintf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function    ( char generic* , unsigned-char generic* ) }
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	



; Statistics:
; code size:	  156 (0x009c) bytes ( 0.12%)
;           	   78 (0x004e) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    6 (0x0006) bytes


	end
