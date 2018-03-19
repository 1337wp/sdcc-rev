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
	global _strcspn

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern __gptrget1
	extern _strchr
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

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($8) :
; ;ic:2: 	proc _strcspn [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( char generic* , char generic* ) }
S_strcspn__strcspn	code
_strcspn:
;	.line	27; strcspn.c	int strcspn (char *string, char *control) 
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
; ;ic:3: iTemp0 [k2 lr3:7 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strcspn_string_1_1}[r0x00 r0x01 r0x02 ] = recv _strcspn [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( char generic* , char generic* ) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
; ;ic:4: iTemp1 [k4 lr4:18 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strcspn_control_1_1}[r0x03 r0x04 r0x05 ] = recv _strcspn [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( char generic* , char generic* ) }
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
; ;ic:6: 	iTemp8 [k15 lr6:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}{ sir@ _strcspn_count_1_1}[r0x06 r0x07 ] := 0x0 {literal-int}
;	.line	32; strcspn.c	while (ch = *string) {
	CLRF	r0x06
	CLRF	r0x07
; ;ic:7: 	iTemp10 [k17 lr7:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x00 r0x01 r0x02 ] := iTemp0 [k2 lr3:7 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strcspn_string_1_1}[r0x00 r0x01 r0x02 ]
; ;ic:8:  _whilecontinue_0($4) :
; ;ic:9: 	iTemp5 [k11 lr9:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}{ sir@ _strcspn_ch_1_1}[r0x08 ] = @[iTemp10 [k17 lr7:18 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x00 r0x01 r0x02 ]]
_00108_DS_:
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget1
	MOVWF	r0x08
; ;ic:10: 	iTemp3 [k8 lr10:13 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}[r0x09 ] := iTemp5 [k11 lr9:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}{ sir@ _strcspn_ch_1_1}[r0x08 ]
	MOVFF	r0x08, r0x09
; ;ic:11: 	if iTemp5 [k11 lr9:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}{ sir@ _strcspn_ch_1_1}[r0x08 ] == 0 goto _whilebreak_0($6)
	MOVF	r0x08, W
	BZ	_00110_DS_
; ;ic:12: 	send iTemp1 [k4 lr4:18 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strcspn_control_1_1}[r0x03 r0x04 r0x05 ]{argreg = 1}
; ;ic:13: 	send iTemp3 [k8 lr10:13 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}[r0x09 ]{argreg = 2}
; ;ic:14: 	iTemp6 [k13 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x08 r0x09 r0x0a ] = call _strchr [k12 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic*  function    ( char generic* , char) }
;	.line	33; strcspn.c	if (strchr(control,ch))break;
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	CALL	_strchr
	MOVWF	r0x08
	MOVFF	PRODL, r0x09
	MOVFF	PRODH, r0x0a
	MOVLW	0x04
	ADDWF	FSR1L, F
; ;ic:15: 	if iTemp6 [k13 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x08 r0x09 r0x0a ] != 0 goto _whilebreak_0($6)
	MOVF	r0x08, W
	IORWF	r0x09, W
	IORWF	r0x0a, W
	BNZ	_00110_DS_
; ;ic:16: 	iTemp8 [k15 lr6:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}{ sir@ _strcspn_count_1_1}[r0x06 r0x07 ] = iTemp8 [k15 lr6:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}{ sir@ _strcspn_count_1_1}[r0x06 r0x07 ] + 0x1 {literal-unsigned-char}
;	.line	34; strcspn.c	else count++ ;
	INCF	r0x06, F
	BTFSC	STATUS, 0
	INCF	r0x07, F
; ;ic:17: 	iTemp10 [k17 lr7:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x00 r0x01 r0x02 ] = iTemp10 [k17 lr7:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x00 r0x01 r0x02 ] + 0x1 {literal-unsigned-char}
;	.line	35; strcspn.c	string++;
	INCF	r0x00, F
	BTFSC	STATUS, 0
	INCF	r0x01, F
	BTFSC	STATUS, 0
	INCF	r0x02, F
; ;ic:18: 	 goto _whilecontinue_0($4)
	BRA	_00108_DS_
; ;ic:20:  _whilebreak_0($6) :
; ;ic:21: 	ret iTemp8 [k15 lr6:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}{ sir@ _strcspn_count_1_1}[r0x06 r0x07 ]
_00110_DS_:
;	.line	38; strcspn.c	return count ;
	MOVFF	r0x07, PRODL
	MOVF	r0x06, W
; ;ic:22:  _return($7) :
; ;ic:23: 	eproc _strcspn [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( char generic* , char generic* ) }
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
; code size:	  232 (0x00e8) bytes ( 0.18%)
;           	  116 (0x0074) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	   11 (0x000b) bytes


	end
