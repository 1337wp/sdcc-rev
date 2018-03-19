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
	global _vsprintf

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
STATUS	equ	0xfd8
WREG	equ	0xfe8
FSR0L	equ	0xfe9
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
r0x07	res	1
r0x08	res	1

udata_vsprintf_0	udata
_vsprintf_ebuf_1_1	res	3

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($2) :
; ;ic:2: 	proc _vsprintf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function    ( char generic* , char generic* , unsigned-char generic* ) }
S_vsprintf__vsprintf	code
_vsprintf:
;	.line	33; vsprintf.c	unsigned int vsprintf(char *ebuf, char *fmt, va_list ap) 
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
; ;ic:3: _vsprintf_ebuf_1_1 [k2 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* } = recv _vsprintf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function    ( char generic* , char generic* , unsigned-char generic* ) }
	MOVLW	0x02
	MOVFF	PLUSW2, _vsprintf_ebuf_1_1
	MOVLW	0x03
	MOVFF	PLUSW2, (_vsprintf_ebuf_1_1 + 1)
	MOVLW	0x04
	MOVFF	PLUSW2, (_vsprintf_ebuf_1_1 + 2)
; ;ic:4: iTemp0 [k3 lr4:10 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _vsprintf_fmt_1_1}[r0x00 r0x01 r0x02 ] = recv _vsprintf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function    ( char generic* , char generic* , unsigned-char generic* ) }
	MOVLW	0x05
	MOVFF	PLUSW2, r0x00
	MOVLW	0x06
	MOVFF	PLUSW2, r0x01
	MOVLW	0x07
	MOVFF	PLUSW2, r0x02
; ;ic:5: iTemp1 [k5 lr5:10 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* }{ sir@ _vsprintf_ap_1_1}[r0x03 r0x04 r0x05 ] = recv _vsprintf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function    ( char generic* , char generic* , unsigned-char generic* ) }
	MOVLW	0x08
	MOVFF	PLUSW2, r0x03
	MOVLW	0x09
	MOVFF	PLUSW2, r0x04
	MOVLW	0x0a
	MOVFF	PLUSW2, r0x05
; ;ic:6: 	iTemp4 [k12 lr6:7 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{char generic*  near* }[remat] = &[_vsprintf_ebuf_1_1 [k2 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }]
; ;ic:7: 	iTemp5 [k13 lr7:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic*  generic* }[r0x06 r0x07 r0x08 ] = (char generic*  generic* )iTemp4 [k12 lr6:7 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{char generic*  near* }[remat]
;	.line	39; vsprintf.c	i = vfprintf((FILE *) &ebuf, cfmt, ap);
	MOVLW	HIGH(_vsprintf_ebuf_1_1)
	MOVWF	r0x07
	MOVLW	LOW(_vsprintf_ebuf_1_1)
	MOVWF	r0x06
	MOVLW	0x80
	MOVWF	r0x08
; ;ic:8: 	send iTemp5 [k13 lr7:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic*  generic* }[r0x06 r0x07 r0x08 ]{argreg = 1}
; ;ic:9: 	send iTemp0 [k3 lr4:10 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _vsprintf_fmt_1_1}[r0x00 r0x01 r0x02 ]{argreg = 2}
; ;ic:10: 	send iTemp1 [k5 lr5:10 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* }{ sir@ _vsprintf_ap_1_1}[r0x03 r0x04 r0x05 ]{argreg = 3}
; ;ic:11: 	iTemp3 [k9 lr11:14 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _vsprintf_i_1_1}[r0x00 r0x01 ] = call _vfprintf [k11 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function    ( char generic*  generic* , char generic* , unsigned-char generic* ) }
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
; ;ic:12: 	iTemp7 [k15 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x02 r0x03 r0x04 ] := _vsprintf_ebuf_1_1 [k2 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }
;	.line	40; vsprintf.c	*ebuf = '\0';
	MOVFF	_vsprintf_ebuf_1_1, r0x02
	MOVFF	(_vsprintf_ebuf_1_1 + 1), r0x03
	MOVFF	(_vsprintf_ebuf_1_1 + 2), r0x04
; ;ic:13: 	*(iTemp7 [k15 lr12:13 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x02 r0x03 r0x04 ]) := 0x0 {literal-char}
	CLRF	POSTDEC1
	MOVFF	r0x02, FSR0L
	MOVFF	r0x03, PRODL
	MOVF	r0x04, W
	CALL	__gptrput1
; ;ic:14: 	iTemp8 [k16 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x00 r0x01 ] = iTemp3 [k9 lr11:14 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _vsprintf_i_1_1}[r0x00 r0x01 ] + 0x1 {literal-unsigned-int}
;	.line	42; vsprintf.c	return (i+1);
	INCF	r0x00, F
	BTFSC	STATUS, 0
	INCF	r0x01, F
; ;ic:15: 	ret iTemp8 [k16 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x00 r0x01 ]
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
; ;ic:16:  _return($1) :
; ;ic:17: 	eproc _vsprintf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function    ( char generic* , char generic* , unsigned-char generic* ) }
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
; code size:	  242 (0x00f2) bytes ( 0.18%)
;           	  121 (0x0079) words
; udata size:	    3 (0x0003) bytes ( 0.23%)
; access size:	    9 (0x0009) bytes


	end
