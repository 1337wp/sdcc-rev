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
	global _strlen

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

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($5) :
; ;ic:2: 	proc _strlen [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( char generic* ) }
S_strlen__strlen	code
_strlen:
;	.line	26; strlen.c	int strlen (char * str) 
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
; ;ic:3: iTemp0 [k2 lr3:6 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strlen_str_1_1}[r0x00 r0x01 r0x02 ] = recv _strlen [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( char generic* ) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
; ;ic:5: 	iTemp6 [k10 lr5:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}{ sir@ _strlen_i_1_1}[r0x03 r0x04 ] := 0x0 {literal-int}
;	.line	30; strlen.c	while (*str++)i++;
	CLRF	r0x03
	CLRF	r0x04
; ;ic:6: 	iTemp3 [k7 lr6:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x00 r0x01 r0x02 ] := iTemp0 [k2 lr3:6 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strlen_str_1_1}[r0x00 r0x01 r0x02 ]
; ;ic:7:  _whilecontinue_0($1) :
; ;ic:8: 	iTemp4 [k8 lr8:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x05 ] = @[iTemp3 [k7 lr6:12 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x00 r0x01 r0x02 ]]
_00105_DS_:
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget1
	MOVWF	r0x05
; ;ic:9: 	iTemp3 [k7 lr6:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x00 r0x01 r0x02 ] = iTemp3 [k7 lr6:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x00 r0x01 r0x02 ] + 0x1 {literal-unsigned-char}
	INCF	r0x00, F
	BTFSC	STATUS, 0
	INCF	r0x01, F
	BTFSC	STATUS, 0
	INCF	r0x02, F
; ;ic:10: 	if iTemp4 [k8 lr8:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x05 ] == 0 goto _whilebreak_0($3)
	MOVF	r0x05, W
	BZ	_00107_DS_
; ;ic:11: 	iTemp6 [k10 lr5:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}{ sir@ _strlen_i_1_1}[r0x03 r0x04 ] = iTemp6 [k10 lr5:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}{ sir@ _strlen_i_1_1}[r0x03 r0x04 ] + 0x1 {literal-unsigned-char}
	INCF	r0x03, F
	BTFSC	STATUS, 0
	INCF	r0x04, F
; ;ic:12: 	 goto _whilecontinue_0($1)
	BRA	_00105_DS_
; ;ic:14:  _whilebreak_0($3) :
; ;ic:15: 	ret iTemp6 [k10 lr5:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}{ sir@ _strlen_i_1_1}[r0x03 r0x04 ]
_00107_DS_:
;	.line	32; strlen.c	return i;
	MOVFF	r0x04, PRODL
	MOVF	r0x03, W
; ;ic:16:  _return($4) :
; ;ic:17: 	eproc _strlen [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( char generic* ) }
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	



; Statistics:
; code size:	  128 (0x0080) bytes ( 0.10%)
;           	   64 (0x0040) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    6 (0x0006) bytes


	end
