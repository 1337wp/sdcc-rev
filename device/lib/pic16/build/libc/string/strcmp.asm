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
	global _strcmp

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
r0x09	res	1
r0x0a	res	1

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($11) :
; ;ic:2: 	proc _strcmp [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( char generic* , char generic* ) }
S_strcmp__strcmp	code
_strcmp:
;	.line	26; strcmp.c	int strcmp(char * asrc, char * adst)
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
; ;ic:3: iTemp0 [k2 lr3:6 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strcmp_asrc_1_1}[r0x00 r0x01 r0x02 ] = recv _strcmp [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( char generic* , char generic* ) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
; ;ic:4: iTemp1 [k4 lr4:7 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strcmp_adst_1_1}[r0x03 r0x04 r0x05 ] = recv _strcmp [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( char generic* , char generic* ) }
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
; ;ic:6: 	iTemp12 [k17 lr6:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x00 r0x01 r0x02 ] := iTemp0 [k2 lr3:6 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strcmp_asrc_1_1}[r0x00 r0x01 r0x02 ]
; ;ic:7: 	iTemp13 [k18 lr7:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x03 r0x04 r0x05 ] := iTemp1 [k4 lr4:7 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strcmp_adst_1_1}[r0x03 r0x04 r0x05 ]
; ;ic:8:  _whilecontinue_0($2) :
; ;ic:9: 	iTemp4 [k9 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x06 ] = @[iTemp12 [k17 lr6:19 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x00 r0x01 r0x02 ]]
_00106_DS_:
;	.line	30; strcmp.c	while( ! (ret = *asrc - *adst) && *adst)++asrc, ++adst;
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget1
	MOVWF	r0x06
; ;ic:10: 	iTemp5 [k10 lr10:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x06 r0x07 ] = (int)iTemp4 [k9 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x06 ]
	CLRF	r0x07
	BTFSC	r0x06, 7
	SETF	r0x07
; ;ic:11: 	iTemp7 [k12 lr11:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x08 ] = @[iTemp13 [k18 lr7:19 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x03 r0x04 r0x05 ]]
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrget1
	MOVWF	r0x08
; ;ic:12: 	iTemp8 [k13 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x09 r0x0a ] = (int)iTemp7 [k12 lr11:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x08 ]
	MOVFF	r0x08, r0x09
	CLRF	r0x0a
	BTFSC	r0x08, 7
	SETF	r0x0a
; ;ic:13: 	iTemp9 [k14 lr13:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}{ sir@ _strcmp_ret_1_1}[r0x06 r0x07 ] = iTemp5 [k10 lr10:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x06 r0x07 ] - iTemp8 [k13 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x09 r0x0a ]
	MOVF	r0x09, W
	SUBWF	r0x06, F
	MOVF	r0x0a, W
	SUBWFB	r0x07, F
; ;ic:14: 	iTemp2 [k6 lr14:31 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}[r0x09 r0x0a ] := iTemp9 [k14 lr13:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}{ sir@ _strcmp_ret_1_1}[r0x06 r0x07 ]
	MOVFF	r0x06, r0x09
	MOVFF	r0x07, r0x0a
; ;ic:15: 	if iTemp9 [k14 lr13:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}{ sir@ _strcmp_ret_1_1}[r0x06 r0x07 ] != 0 goto _whilebreak_0($4)
	MOVF	r0x06, W
	IORWF	r0x07, W
	BNZ	_00108_DS_
; ;ic:16: 	if iTemp7 [k12 lr11:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x08 ] == 0 goto _whilebreak_0($4)
	MOVF	r0x08, W
	BZ	_00108_DS_
; ;ic:17: 	iTemp12 [k17 lr6:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x00 r0x01 r0x02 ] = iTemp12 [k17 lr6:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x00 r0x01 r0x02 ] + 0x1 {literal-unsigned-char}
	INCF	r0x00, F
	BTFSC	STATUS, 0
	INCF	r0x01, F
	BTFSC	STATUS, 0
	INCF	r0x02, F
; ;ic:18: 	iTemp13 [k18 lr7:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x03 r0x04 r0x05 ] = iTemp13 [k18 lr7:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x03 r0x04 r0x05 ] + 0x1 {literal-unsigned-char}
	INCF	r0x03, F
	BTFSC	STATUS, 0
	INCF	r0x04, F
	BTFSC	STATUS, 0
	INCF	r0x05, F
; ;ic:19: 	 goto _whilecontinue_0($2)
	BRA	_00106_DS_
; ;ic:21:  _whilebreak_0($4) :
; ;ic:22: 	iTemp14 [k19 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp2 [k6 lr14:31 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}[r0x09 r0x0a ] < 0x0 {literal-int}
_00108_DS_:
;	.line	32; strcmp.c	if ( ret < 0 )ret = -1 ;
	BSF	STATUS, 0
	BTFSS	r0x0a, 7
	BCF	STATUS, 0
	BNC	_00112_DS_
; ;ic:23: 	if iTemp14 [k19 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_1($8)
; ;ic:24: 	iTemp2 [k6 lr14:31 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}[r0x09 r0x0a ] := 0xffffffff {literal-int}
	SETF	r0x09
	SETF	r0x0a
; ;ic:25: 	 goto _ifend_1($9)
	BRA	_00113_DS_
; ;ic:26:  _iffalse_1($8) :
; ;ic:27: 	iTemp15 [k20 lr27:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp2 [k6 lr14:31 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}[r0x09 r0x0a ] > 0x0 {literal-int}
_00112_DS_:
;	.line	33; strcmp.c	else if ( ret > 0 )ret = 1 ;
	MOVF	r0x0a, W
	ADDLW	0x80
	ADDLW	0x80
	BNZ	_00122_DS_
	MOVLW	0x01
	SUBWF	r0x09, W
_00122_DS_:
	BNC	_00113_DS_
; ;ic:28: 	if iTemp15 [k20 lr27:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _ifend_1($9)
; ;ic:29: 	iTemp2 [k6 lr14:31 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}[r0x09 r0x0a ] := 0x1 {literal-int}
	MOVLW	0x01
	MOVWF	r0x09
	CLRF	r0x0a
; ;ic:30:  _ifend_1($9) :
; ;ic:31: 	ret iTemp2 [k6 lr14:31 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}[r0x09 r0x0a ]
_00113_DS_:
;	.line	35; strcmp.c	return( ret );
	MOVFF	r0x0a, PRODL
	MOVF	r0x09, W
; ;ic:32:  _return($10) :
; ;ic:33: 	eproc _strcmp [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( char generic* , char generic* ) }
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
; code size:	  274 (0x0112) bytes ( 0.21%)
;           	  137 (0x0089) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	   11 (0x000b) bytes


	end
