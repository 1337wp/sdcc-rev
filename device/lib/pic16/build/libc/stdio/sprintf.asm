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
	global _sprintf

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern __gptrput1
	extern _stdin
	extern _stdout
	extern _vfprintf
;--------------------------------------------------------
;	Equates to used internal registers
;--------------------------------------------------------
WREG	equ	0xfe8
FSR0L	equ	0xfe9
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
r0x03	res	1
r0x04	res	1
r0x05	res	1
r0x06	res	1
r0x07	res	1
r0x08	res	1

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($2) :
; ;ic:2: 	proc _sprintf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function    ( char generic* , char generic* ) }
S_sprintf__sprintf	code
_sprintf:
;	.line	32; sprintf.c	unsigned int sprintf(char *ebuf, char *fmt, ...) 
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
; ;ic:3: 	iTemp0 [k2 lr3:11 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _sprintf_cfmt_1_1}[r0x00 r0x01 r0x02 ] := fmt [k4 lr0:0 so:5]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }
;	.line	39; sprintf.c	cfmt = fmt;
	MOVLW	0x05
	MOVFF	PLUSW2, r0x00
	MOVLW	0x06
	MOVFF	PLUSW2, r0x01
	MOVLW	0x07
	MOVFF	PLUSW2, r0x02
; ;ic:4: 	iTemp2 [k7 lr4:5 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic*  near* }[r0x03 r0x04 ] = &[fmt [k4 lr0:0 so:5]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }]
;	.line	41; sprintf.c	ap = va_start(ap, fmt);
	MOVLW	0x05
	ADDWF	FSR2L, W
	MOVWF	r0x03
	MOVLW	0x00
	ADDWFC	FSR2H, W
; #	MOVWF	r0x04
; #;;ic:5: 	iTemp3 [k8 lr5:6 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x03 r0x04 r0x05 ] = (unsigned-char generic* )iTemp2 [k7 lr4:5 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic*  near* }[r0x03 r0x04 ]
; #	MOVF	r0x04, W
; #	MOVWF	r0x04
; #	MOVWF	r0x04
	MOVWF	r0x04
; #	MOVF	r0x03, W
; #	MOVWF	r0x03
	MOVLW	0x80
	MOVWF	r0x05
; ;ic:6: 	iTemp1 [k5 lr6:11 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* }{ sir@ _sprintf_ap_1_1}[r0x03 r0x04 r0x05 ] = iTemp3 [k8 lr5:6 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x03 r0x04 r0x05 ] + 0x3 {literal-unsigned-char}
	MOVLW	0x03
	ADDWF	r0x03, F
	MOVLW	0x00
	ADDWFC	r0x04, F
	ADDWFC	r0x05, F
; ;ic:7: 	iTemp6 [k14 lr7:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic*  near* }[r0x06 r0x07 ] = &[ebuf [k13 lr0:0 so:2]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }]
;	.line	42; sprintf.c	i = vfprintf((FILE *) &ebuf, cfmt, ap);
	MOVLW	0x02
	ADDWF	FSR2L, W
	MOVWF	r0x06
	MOVLW	0x00
	ADDWFC	FSR2H, W
; #	MOVWF	r0x07
; #;;ic:8: 	iTemp7 [k15 lr8:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic*  generic* }[r0x06 r0x07 r0x08 ] = (char generic*  generic* )iTemp6 [k14 lr7:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic*  near* }[r0x06 r0x07 ]
; #	MOVF	r0x07, W
; #	MOVWF	r0x07
; #	MOVWF	r0x07
	MOVWF	r0x07
; #	MOVF	r0x06, W
; #	MOVWF	r0x06
	MOVLW	0x80
	MOVWF	r0x08
; ;ic:9: 	send iTemp7 [k15 lr8:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic*  generic* }[r0x06 r0x07 r0x08 ]{argreg = 1}
; ;ic:10: 	send iTemp0 [k2 lr3:11 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _sprintf_cfmt_1_1}[r0x00 r0x01 r0x02 ]{argreg = 2}
; ;ic:11: 	send iTemp1 [k5 lr6:11 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* }{ sir@ _sprintf_ap_1_1}[r0x03 r0x04 r0x05 ]{argreg = 3}
; ;ic:12: 	iTemp8 [k16 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _sprintf_i_1_1}[r0x00 r0x01 ] = call _vfprintf [k12 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function    ( char generic*  generic* , char generic* , unsigned-char generic* ) }
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
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	CALL	_vfprintf
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVLW	0x09
	ADDWF	FSR1L, F
; ;ic:13: 	iTemp5 [k10 lr13:16 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _sprintf_i_1_1}[r0x00 r0x01 ] := iTemp8 [k16 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _sprintf_i_1_1}[r0x00 r0x01 ]
; ;ic:14: 	iTemp9 [k17 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x02 r0x03 r0x04 ] := ebuf [k13 lr0:0 so:2]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }
;	.line	43; sprintf.c	*ebuf='\0';
	MOVLW	0x02
	MOVFF	PLUSW2, r0x02
	MOVLW	0x03
	MOVFF	PLUSW2, r0x03
	MOVLW	0x04
	MOVFF	PLUSW2, r0x04
; ;ic:15: 	*(iTemp9 [k17 lr14:15 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x02 r0x03 r0x04 ]) := 0x0 {literal-char}
	CLRF	POSTDEC1
	MOVFF	r0x02, FSR0L
	MOVFF	r0x03, PRODL
	MOVF	r0x04, W
	CALL	__gptrput1
; ;ic:16: 	ret iTemp5 [k10 lr13:16 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _sprintf_i_1_1}[r0x00 r0x01 ]
;	.line	45; sprintf.c	return (i);
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
; ;ic:17:  _return($1) :
; ;ic:18: 	eproc _sprintf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function    ( char generic* , char generic* ) }
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
; code size:	  236 (0x00ec) bytes ( 0.18%)
;           	  118 (0x0076) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    9 (0x0009) bytes


	end
