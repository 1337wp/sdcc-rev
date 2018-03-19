;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:33 2018
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f452

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global _strncpy

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern __gptrget1
	extern __gptrput1
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
r0x0c	res	1

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($5) :
; ;ic:2: 	proc _strncpy [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic*  function    ( char generic* , char generic* , unsigned-int) }
S_strncpy__strncpy	code
_strncpy:
;	.line	26; strncpy.c	char *strncpy (char *d, char *s, size_t n)
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
	MOVFF	r0x0c, POSTDEC1
; ;ic:3: iTemp0 [k2 lr3:9 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strncpy_d_1_1}[r0x00 r0x01 r0x02 ] = recv _strncpy [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic*  function    ( char generic* , char generic* , unsigned-int) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
; ;ic:4: iTemp1 [k4 lr4:8 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strncpy_s_1_1}[r0x03 r0x04 r0x05 ] = recv _strncpy [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic*  function    ( char generic* , char generic* , unsigned-int) }
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
; ;ic:5: iTemp2 [k6 lr5:10 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _strncpy_n_1_1}[r0x06 r0x07 ] = recv _strncpy [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic*  function    ( char generic* , char generic* , unsigned-int) }
	MOVLW	0x08
	MOVFF	PLUSW2, r0x06
	MOVLW	0x09
	MOVFF	PLUSW2, r0x07
; ;ic:6: 	iTemp3 [k8 lr6:22 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strncpy_d1_1_1}[r0x08 r0x09 r0x0a ] := iTemp0 [k2 lr3:9 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strncpy_d_1_1}[r0x00 r0x01 r0x02 ]
;	.line	28; strncpy.c	register char *d1 =  d;
	MOVFF	r0x00, r0x08
	MOVFF	r0x01, r0x09
	MOVFF	r0x02, r0x0a
; ;ic:8: 	iTemp9 [k15 lr8:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x03 r0x04 r0x05 ] := iTemp1 [k4 lr4:8 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strncpy_s_1_1}[r0x03 r0x04 r0x05 ]
; ;ic:9: 	iTemp7 [k13 lr9:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x00 r0x01 r0x02 ] := iTemp0 [k2 lr3:9 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strncpy_d_1_1}[r0x00 r0x01 r0x02 ]
; ;ic:10: 	iTemp5 [k11 lr10:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x06 r0x07 ] := iTemp2 [k6 lr5:10 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _strncpy_n_1_1}[r0x06 r0x07 ]
; ;ic:11:  _whilecontinue_0($1) :
; ;ic:12: 	iTemp4 [k10 lr12:14 so:0]{ ia0 a2p0 re0 rm0 nos1 ru0 dp0}{unsigned-int}[r0x0b r0x0c ] := iTemp5 [k11 lr10:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x06 r0x07 ]
_00105_DS_:
;	.line	30; strncpy.c	while ( n-- )*d++ = *s++ ;
	MOVFF	r0x06, r0x0b
	MOVFF	r0x07, r0x0c
; ;ic:13: 	iTemp5 [k11 lr10:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x06 r0x07 ] = iTemp5 [k11 lr10:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x06 r0x07 ] - 0x1 {literal-unsigned-char}
	MOVLW	0xff
	ADDWF	r0x06, F
	BTFSS	STATUS, 0
	DECF	r0x07, F
; ;ic:14: 	if iTemp4 [k10 lr12:14 so:0]{ ia0 a2p0 re0 rm0 nos1 ru0 dp0}{unsigned-int}[r0x0b r0x0c ] == 0 goto _whilebreak_0($3)
	MOVF	r0x0b, W
	IORWF	r0x0c, W
	BZ	_00107_DS_
; ;ic:15: 	iTemp10 [k16 lr15:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0b ] = @[iTemp9 [k15 lr8:19 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x03 r0x04 r0x05 ]]
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrget1
	MOVWF	r0x0b
; ;ic:16: 	iTemp9 [k15 lr8:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x03 r0x04 r0x05 ] = iTemp9 [k15 lr8:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x03 r0x04 r0x05 ] + 0x1 {literal-unsigned-char}
	INCF	r0x03, F
	BTFSC	STATUS, 0
	INCF	r0x04, F
	BTFSC	STATUS, 0
	INCF	r0x05, F
; ;ic:17: 	*(iTemp7 [k13 lr9:19 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x00 r0x01 r0x02 ]) := iTemp10 [k16 lr15:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0b ]
	MOVFF	r0x0b, POSTDEC1
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrput1
; ;ic:18: 	iTemp7 [k13 lr9:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x00 r0x01 r0x02 ] = iTemp7 [k13 lr9:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x00 r0x01 r0x02 ] + 0x1 {literal-unsigned-char}
	INCF	r0x00, F
	BTFSC	STATUS, 0
	INCF	r0x01, F
	BTFSC	STATUS, 0
	INCF	r0x02, F
; ;ic:19: 	 goto _whilecontinue_0($1)
	BRA	_00105_DS_
; ;ic:21:  _whilebreak_0($3) :
; ;ic:22: 	ret iTemp3 [k8 lr6:22 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strncpy_d1_1_1}[r0x08 r0x09 r0x0a ]
_00107_DS_:
;	.line	32; strncpy.c	return d1;
	MOVFF	r0x0a, PRODH
	MOVFF	r0x09, PRODL
	MOVF	r0x08, W
; ;ic:23:  _return($4) :
; ;ic:24: 	eproc _strncpy [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic*  function    ( char generic* , char generic* , unsigned-int) }
	MOVFF	PREINC1, r0x0c
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
; code size:	  266 (0x010a) bytes ( 0.20%)
;           	  133 (0x0085) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	   13 (0x000d) bytes


	end
