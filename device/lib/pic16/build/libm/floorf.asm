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
	global _floorf

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern ___fs2slong
	extern ___slong2fs
	extern ___fsgt
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

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($5) :
; ;ic:2: 	proc _floorf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float) }
S_floorf__floorf	code
_floorf:
;	.line	27; floorf.c	float floorf (float x) _MATH_REENTRANT
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
; ;ic:3: iTemp0 [k2 lr3:11 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _floorf_x_1_1}[r0x00 r0x01 r0x02 r0x03 ] = recv _floorf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
; ;ic:4: 	send iTemp0 [k2 lr3:11 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _floorf_x_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 1}
; ;ic:5: 	iTemp1 [k4 lr5:25 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ _floorf_r_1_1}[r0x04 r0x05 r0x06 r0x07 ] = call ___fs2slong [k16 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int function    ( float) }
;	.line	30; floorf.c	r=x;
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	___fs2slong
	MOVWF	r0x04
	MOVFF	PRODL, r0x05
	MOVFF	PRODH, r0x06
	MOVFF	FSR0L, r0x07
	MOVLW	0x04
	ADDWF	FSR1L, F
; ;ic:6: 	iTemp3 [k7 lr6:7 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp1 [k4 lr5:25 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ _floorf_r_1_1}[r0x04 r0x05 r0x06 r0x07 ] > 0x0 {literal-long-int}
;	.line	31; floorf.c	if (r<=0)
	MOVF	r0x07, W
	ADDLW	0x80
	ADDLW	0x80
	BNZ	_00114_DS_
	MOVLW	0x00
	SUBWF	r0x06, W
	BNZ	_00114_DS_
	MOVLW	0x00
	SUBWF	r0x05, W
	BNZ	_00114_DS_
	MOVLW	0x01
	SUBWF	r0x04, W
_00114_DS_:
	BTFSC	STATUS, 0
	BRA	_00106_DS_
; ;ic:7: 	if iTemp3 [k7 lr6:7 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} != 0 goto _iffalse_0($2)
; ;ic:8: 	send iTemp1 [k4 lr5:25 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ _floorf_r_1_1}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 1}
; ;ic:9: 	iTemp4 [k8 lr9:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x08 r0x09 r0x0a r0x0b ] = call ___slong2fs [k17 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( long-int) }
;	.line	32; floorf.c	return (r+((r>x)?-1:0));
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	CALL	___slong2fs
	MOVWF	r0x08
	MOVFF	PRODL, r0x09
	MOVFF	PRODH, r0x0a
	MOVFF	FSR0L, r0x0b
	MOVLW	0x04
	ADDWF	FSR1L, F
; ;ic:10: 	send iTemp4 [k8 lr9:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x08 r0x09 r0x0a r0x0b ]{argreg = 1}
; ;ic:11: 	send iTemp0 [k2 lr3:11 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _floorf_x_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 2}
; ;ic:12: 	iTemp5 [k9 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x00 ] = call ___fsgt [k18 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	CALL	___fsgt
	MOVWF	r0x00
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:13: 	if iTemp5 [k9 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x00 ] == 0 goto iTempLbl0($6)
	MOVF	r0x00, W
	BZ	_00110_DS_
; ;ic:14: 	iTemp6 [k10 lr14:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x00 ] := 0xffffffff {literal-char}
	SETF	r0x00
; ;ic:15: 	 goto iTempLbl1($7)
	BRA	_00111_DS_
; ;ic:16:  iTempLbl0($6) :
; ;ic:17: 	iTemp6 [k10 lr14:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x00 ] := 0x0 {literal-char}
_00110_DS_:
	CLRF	r0x00
; ;ic:18:  iTempLbl1($7) :
; ;ic:19: 	iTemp8 [k12 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int}[r0x00 r0x01 r0x02 r0x03 ] = (long-int)iTemp6 [k10 lr14:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x00 ]
_00111_DS_:
	CLRF	WREG
	BTFSC	r0x00, 7
	MOVLW	0xff
	MOVWF	r0x01
	MOVWF	r0x02
	MOVWF	r0x03
; ;ic:20: 	iTemp9 [k13 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int}[r0x00 r0x01 r0x02 r0x03 ] = iTemp1 [k4 lr5:25 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ _floorf_r_1_1}[r0x04 r0x05 r0x06 r0x07 ] + iTemp8 [k12 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int}[r0x00 r0x01 r0x02 r0x03 ]
	MOVF	r0x04, W
	ADDWF	r0x00, F
	MOVF	r0x05, W
	ADDWFC	r0x01, F
	MOVF	r0x06, W
	ADDWFC	r0x02, F
	MOVF	r0x07, W
	ADDWFC	r0x03, F
; ;ic:21: 	send iTemp9 [k13 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 1}
; ;ic:22: 	iTemp10 [k14 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x00 r0x01 r0x02 r0x03 ] = call ___slong2fs [k17 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( long-int) }
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	___slong2fs
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVLW	0x04
	ADDWF	FSR1L, F
; ;ic:23: 	ret iTemp10 [k14 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x00 r0x01 r0x02 r0x03 ]
	MOVFF	r0x03, FSR0L
	MOVFF	r0x02, PRODH
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
	BRA	_00108_DS_
; ;ic:24:  _iffalse_0($2) :
; ;ic:25: 	send iTemp1 [k4 lr5:25 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ _floorf_r_1_1}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 1}
; ;ic:26: 	iTemp11 [k15 lr26:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x00 r0x01 r0x02 r0x03 ] = call ___slong2fs [k17 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( long-int) }
_00106_DS_:
;	.line	34; floorf.c	return r;
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	CALL	___slong2fs
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVLW	0x04
	ADDWF	FSR1L, F
; ;ic:27: 	ret iTemp11 [k15 lr26:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x00 r0x01 r0x02 r0x03 ]
	MOVFF	r0x03, FSR0L
	MOVFF	r0x02, PRODH
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
; ;ic:28:  _return($4) :
; ;ic:29: 	eproc _floorf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float) }
_00108_DS_:
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
; code size:	  424 (0x01a8) bytes ( 0.32%)
;           	  212 (0x00d4) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	   12 (0x000c) bytes


	end
