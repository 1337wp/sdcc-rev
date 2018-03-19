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
	global _strncmp

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern __gptrget1
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

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($9) :
; ;ic:2: 	proc _strncmp [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( char generic* , char generic* , unsigned-int) }
S_strncmp__strncmp	code
_strncmp:
;	.line	26; strncmp.c	int strncmp(char *first, char *last, size_t count) 
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
; ;ic:3: iTemp0 [k2 lr3:9 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strncmp_first_1_1}[r0x00 r0x01 r0x02 ] = recv _strncmp [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( char generic* , char generic* , unsigned-int) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
; ;ic:4: iTemp1 [k4 lr4:10 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strncmp_last_1_1}[r0x03 r0x04 r0x05 ] = recv _strncmp [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( char generic* , char generic* , unsigned-int) }
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
; ;ic:5: iTemp2 [k6 lr5:11 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _strncmp_count_1_1}[r0x06 r0x07 ] = recv _strncmp [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( char generic* , char generic* , unsigned-int) }
	MOVLW	0x08
	MOVFF	PLUSW2, r0x06
	MOVLW	0x09
	MOVFF	PLUSW2, r0x07
; ;ic:6: 	if iTemp2 [k6 lr5:11 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _strncmp_count_1_1}[r0x06 r0x07 ] != 0 goto preHeaderLbl0($14)
;	.line	28; strncmp.c	if (!count)return(0);
	MOVF	r0x06, W
	IORWF	r0x07, W
	BNZ	_00109_DS_
; ;ic:7: 	ret 0x0 {literal-int}
	CLRF	PRODL
	CLRF	WREG
	BRA	_00112_DS_
; ;ic:8:  preHeaderLbl0($14) :
; ;ic:9: 	iTemp12 [k17 lr9:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x00 r0x01 r0x02 ] := iTemp0 [k2 lr3:9 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strncmp_first_1_1}[r0x00 r0x01 r0x02 ]
; ;ic:10: 	iTemp14 [k19 lr10:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x03 r0x04 r0x05 ] := iTemp1 [k4 lr4:10 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strncmp_last_1_1}[r0x03 r0x04 r0x05 ]
; ;ic:11: 	iTemp3 [k8 lr11:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x06 r0x07 ] := iTemp2 [k6 lr5:11 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _strncmp_count_1_1}[r0x06 r0x07 ]
; ;ic:12:  _whilecontinue_0($5) :
; ;ic:13: 	iTemp3 [k8 lr11:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x06 r0x07 ] = iTemp3 [k8 lr11:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x06 r0x07 ] - 0x1 {literal-unsigned-char}
_00109_DS_:
;	.line	30; strncmp.c	while (--count && *first && *first == *last) {
	MOVLW	0xff
	ADDWF	r0x06, F
	BTFSS	STATUS, 0
	DECF	r0x07, F
; ;ic:14: 	if iTemp3 [k8 lr11:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x06 r0x07 ] == 0 goto _whilebreak_0($7)
	MOVF	r0x06, W
	IORWF	r0x07, W
	BZ	_00111_DS_
; ;ic:15: 	iTemp5 [k10 lr15:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x08 ] = @[iTemp12 [k17 lr9:25 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x00 r0x01 r0x02 ]]
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget1
	MOVWF	r0x08
; ;ic:16: 	if iTemp5 [k10 lr15:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x08 ] == 0 goto _whilebreak_0($7)
	MOVF	r0x08, W
	BZ	_00111_DS_
; ;ic:17: 	iTemp9 [k14 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x09 ] = @[iTemp14 [k19 lr10:27 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x03 r0x04 r0x05 ]]
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrget1
; #	MOVWF	r0x09
; #;;ic:18: 	iTemp10 [k15 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp5 [k10 lr15:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x08 ] == iTemp9 [k14 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x09 ]
; #	MOVF	r0x08, W
; #	XORWF	r0x09, W
	XORWF	r0x08, W
	BNZ	_00111_DS_
; ;ic:19: 	if iTemp10 [k15 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _whilebreak_0($7)
; ;ic:20: 	iTemp12 [k17 lr9:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x00 r0x01 r0x02 ] = iTemp12 [k17 lr9:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x00 r0x01 r0x02 ] + 0x1 {literal-unsigned-char}
;	.line	31; strncmp.c	first++;
	INCF	r0x00, F
	BTFSC	STATUS, 0
	INCF	r0x01, F
	BTFSC	STATUS, 0
	INCF	r0x02, F
; ;ic:21: 	iTemp14 [k19 lr10:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x03 r0x04 r0x05 ] = iTemp14 [k19 lr10:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x03 r0x04 r0x05 ] + 0x1 {literal-unsigned-char}
;	.line	32; strncmp.c	last++;
	INCF	r0x03, F
	BTFSC	STATUS, 0
	INCF	r0x04, F
	BTFSC	STATUS, 0
	INCF	r0x05, F
; ;ic:22: 	 goto _whilecontinue_0($5)
	BRA	_00109_DS_
; ;ic:24:  _whilebreak_0($7) :
; ;ic:25: 	iTemp16 [k21 lr25:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x00 ] = @[iTemp12 [k17 lr9:25 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x00 r0x01 r0x02 ]]
_00111_DS_:
;	.line	35; strncmp.c	return( *first - *last );
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget1
	MOVWF	r0x00
; ;ic:26: 	iTemp17 [k22 lr26:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x00 r0x01 ] = (int)iTemp16 [k21 lr25:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x00 ]
	CLRF	r0x01
	BTFSC	r0x00, 7
	SETF	r0x01
; ;ic:27: 	iTemp19 [k24 lr27:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x03 ] = @[iTemp14 [k19 lr10:27 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x03 r0x04 r0x05 ]]
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrget1
	MOVWF	r0x03
; ;ic:28: 	iTemp20 [k25 lr28:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x03 r0x02 ] = (int)iTemp19 [k24 lr27:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x03 ]
	CLRF	r0x02
	BTFSC	r0x03, 7
	SETF	r0x02
; ;ic:29: 	iTemp21 [k26 lr29:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x00 r0x01 ] = iTemp17 [k22 lr26:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x00 r0x01 ] - iTemp20 [k25 lr28:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x03 r0x02 ]
	MOVF	r0x03, W
	SUBWF	r0x00, F
	MOVF	r0x02, W
	SUBWFB	r0x01, F
; ;ic:30: 	ret iTemp21 [k26 lr29:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x00 r0x01 ]
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
; ;ic:31:  _return($8) :
; ;ic:32: 	eproc _strncmp [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( char generic* , char generic* , unsigned-int) }
_00112_DS_:
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
; code size:	  278 (0x0116) bytes ( 0.21%)
;           	  139 (0x008b) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    9 (0x0009) bytes


	end
