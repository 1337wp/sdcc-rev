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
	global _strrchr

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

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($11) :
; ;ic:2: 	proc _strrchr [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic*  function    ( char generic* , char) }
S_strrchr__strrchr	code
_strrchr:
;	.line	26; strrchr.c	char *strrchr(char *string, char ch) 
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
; ;ic:3: iTemp0 [k2 lr3:7 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strrchr_string_1_1}[r0x00 r0x01 r0x02 ] = recv _strrchr [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic*  function    ( char generic* , char) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
; ;ic:4: iTemp1 [k4 lr4:25 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _strrchr_ch_1_1}[r0x03 ] = recv _strrchr [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic*  function    ( char generic* , char) }
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
; ;ic:5: 	iTemp2 [k6 lr5:21 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strrchr_start_1_1}[r0x04 r0x05 r0x06 ] := iTemp0 [k2 lr3:7 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strrchr_string_1_1}[r0x00 r0x01 r0x02 ]
;	.line	28; strrchr.c	char *start = string;
	MOVFF	r0x00, r0x04
	MOVFF	r0x01, r0x05
	MOVFF	r0x02, r0x06
; ;ic:7: 	iTemp4 [k9 lr7:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x00 r0x01 r0x02 ] := iTemp0 [k2 lr3:7 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strrchr_string_1_1}[r0x00 r0x01 r0x02 ]
; ;ic:8:  _whilecontinue_0($1) :
; ;ic:9: 	iTemp5 [k10 lr9:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x07 ] = @[iTemp4 [k9 lr7:14 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x00 r0x01 r0x02 ]]
_00105_DS_:
;	.line	30; strrchr.c	while (*string++)                       /* find end of string */
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget1
	MOVWF	r0x07
; ;ic:10: 	iTemp4 [k9 lr7:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x00 r0x01 r0x02 ] = iTemp4 [k9 lr7:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x00 r0x01 r0x02 ] + 0x1 {literal-unsigned-char}
	INCF	r0x00, F
	BTFSC	STATUS, 0
	INCF	r0x01, F
	BTFSC	STATUS, 0
	INCF	r0x02, F
; ;ic:11: 	if iTemp5 [k10 lr9:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x07 ] != 0 goto _whilecontinue_0($1)
	MOVF	r0x07, W
	BNZ	_00105_DS_
; ;ic:14: 	iTemp6 [k11 lr14:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strrchr_string_1_1}[r0x00 r0x01 r0x02 ] := iTemp4 [k9 lr7:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x00 r0x01 r0x02 ]
; ;ic:15:  _whilecontinue_1($5) :
; ;ic:16: 	iTemp6 [k11 lr14:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strrchr_string_1_1}[r0x00 r0x01 r0x02 ] = iTemp6 [k11 lr14:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strrchr_string_1_1}[r0x00 r0x01 r0x02 ] - 0x1 {literal-unsigned-char}
_00109_DS_:
;	.line	34; strrchr.c	while (--string != start && *string != ch)
	MOVLW	0xff
	ADDWF	r0x00, F
	ADDWFC	r0x01, F
	ADDWFC	r0x02, F
; ;ic:17: 	iTemp7 [k12 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp6 [k11 lr14:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strrchr_string_1_1}[r0x00 r0x01 r0x02 ] == iTemp2 [k6 lr5:21 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strrchr_start_1_1}[r0x04 r0x05 r0x06 ]
	MOVF	r0x00, W
	XORWF	r0x04, W
	BNZ	_00123_DS_
	MOVF	r0x01, W
	XORWF	r0x05, W
	BNZ	_00123_DS_
	MOVF	r0x02, W
	XORWF	r0x06, W
	BZ	_00111_DS_
; ;ic:18: 	if iTemp7 [k12 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} != 0 goto _whilebreak_1($7)
; ;ic:19: 	iTemp9 [k14 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x07 ] = @[iTemp6 [k11 lr14:27 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strrchr_string_1_1}[r0x00 r0x01 r0x02 ]]
_00123_DS_:
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget1
; #	MOVWF	r0x07
; #;;ic:20: 	iTemp10 [k15 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp9 [k14 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x07 ] == iTemp1 [k4 lr4:25 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _strrchr_ch_1_1}[r0x03 ]
; #	MOVF	r0x07, W
	XORWF	r0x03, W
	BNZ	_00109_DS_
; ;ic:21: 	if iTemp10 [k15 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _whilecontinue_1($5)
; ;ic:23:  _whilebreak_1($7) :
; ;ic:24: 	iTemp12 [k17 lr24:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x04 ] = @[iTemp6 [k11 lr14:27 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strrchr_string_1_1}[r0x00 r0x01 r0x02 ]]
_00111_DS_:
;	.line	37; strrchr.c	if (*string == ch)                /* char found ? */
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget1
; #	MOVWF	r0x04
; #;;ic:25: 	iTemp13 [k18 lr25:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp12 [k17 lr24:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x04 ] == iTemp1 [k4 lr4:25 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _strrchr_ch_1_1}[r0x03 ]
; #	MOVF	r0x04, W
	XORWF	r0x03, W
	BNZ	_00113_DS_
; ;ic:26: 	if iTemp13 [k18 lr25:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_0($9)
; ;ic:27: 	ret iTemp6 [k11 lr14:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strrchr_string_1_1}[r0x00 r0x01 r0x02 ]
;	.line	38; strrchr.c	return( (char *)string );
	MOVFF	r0x02, PRODH
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
	BRA	_00114_DS_
; ;ic:28:  _iffalse_0($9) :
; ;ic:29: 	ret 0x0 {void literal-generic* }
_00113_DS_:
;	.line	40; strrchr.c	return (NULL) ;
	CLRF	PRODH
	CLRF	PRODL
	CLRF	WREG
; ;ic:30:  _return($10) :
; ;ic:31: 	eproc _strrchr [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic*  function    ( char generic* , char) }
_00114_DS_:
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
; code size:	  224 (0x00e0) bytes ( 0.17%)
;           	  112 (0x0070) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    8 (0x0008) bytes


	end
