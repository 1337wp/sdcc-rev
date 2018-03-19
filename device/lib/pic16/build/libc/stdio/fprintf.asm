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
	global _fprintf

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
FSR2H	equ	0xfda
POSTDEC1	equ	0xfe5
PREINC1	equ	0xfe4
PLUSW2	equ	0xfdb
PRODL	equ	0xff3


; Internal registers
.registers	udata_ovr	0x0000
r0x00	res	1
r0x01	res	1
r0x02	res	1

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($2) :
; ;ic:2: 	proc _fprintf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function    ( char generic*  generic* , char generic* ) }
S_fprintf__fprintf	code
_fprintf:
;	.line	38; fprintf.c	unsigned int fprintf(FILE *stream, char *fmt, ...)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
; ;ic:3: 	iTemp1 [k5 lr3:4 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic*  near* }[r0x00 r0x01 ] = &[fmt [k4 lr0:0 so:5]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }]
;	.line	49; fprintf.c	va_start(ap, fmt);
	MOVLW	0x05
	ADDWF	FSR2L, W
	MOVWF	r0x00
	MOVLW	0x00
	ADDWFC	FSR2H, W
; #	MOVWF	r0x01
; #;;ic:4: 	iTemp2 [k6 lr4:5 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x00 r0x01 r0x02 ] = (unsigned-char generic* )iTemp1 [k5 lr3:4 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic*  near* }[r0x00 r0x01 ]
; #	MOVF	r0x01, W
; #	MOVWF	r0x01
; #	MOVWF	r0x01
	MOVWF	r0x01
; #	MOVF	r0x00, W
; #	MOVWF	r0x00
	MOVLW	0x80
	MOVWF	r0x02
; ;ic:5: 	iTemp0 [k2 lr5:8 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* }{ sir@ _fprintf_ap_1_1}[r0x00 r0x01 r0x02 ] = iTemp2 [k6 lr4:5 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x00 r0x01 r0x02 ] + 0x3 {literal-unsigned-char}
	MOVLW	0x03
	ADDWF	r0x00, F
	MOVLW	0x00
	ADDWFC	r0x01, F
	ADDWFC	r0x02, F
; ;ic:6: 	send stream [k11 lr0:0 so:2]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic*  generic* }{argreg = 1}
; ;ic:7: 	send fmt [k4 lr0:0 so:5]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }{argreg = 2}
; ;ic:8: 	send iTemp0 [k2 lr5:8 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* }{ sir@ _fprintf_ap_1_1}[r0x00 r0x01 r0x02 ]{argreg = 3}
; ;ic:9: 	iTemp5 [k12 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _fprintf_i_1_1}[r0x00 r0x01 ] = call _vfprintf [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function    ( char generic*  generic* , char generic* , unsigned-char generic* ) }
;	.line	50; fprintf.c	i = vfprintf(stream, fmt, ap);
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	MOVLW	0x07
	MOVFF	PLUSW2, POSTDEC1
	MOVLW	0x06
	MOVFF	PLUSW2, POSTDEC1
	MOVLW	0x05
	MOVFF	PLUSW2, POSTDEC1
	MOVLW	0x04
	MOVFF	PLUSW2, POSTDEC1
	MOVLW	0x03
	MOVFF	PLUSW2, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, POSTDEC1
	CALL	_vfprintf
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVLW	0x09
	ADDWF	FSR1L, F
; ;ic:10: 	iTemp4 [k8 lr10:11 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _fprintf_i_1_1}[r0x00 r0x01 ] := iTemp5 [k12 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _fprintf_i_1_1}[r0x00 r0x01 ]
; ;ic:11: 	ret iTemp4 [k8 lr10:11 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _fprintf_i_1_1}[r0x00 r0x01 ]
;	.line	52; fprintf.c	return (i);
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
; ;ic:12:  _return($1) :
; ;ic:13: 	eproc _fprintf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function    ( char generic*  generic* , char generic* ) }
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	



; Statistics:
; code size:	  132 (0x0084) bytes ( 0.10%)
;           	   66 (0x0042) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    3 (0x0003) bytes


	end
