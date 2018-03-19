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
	global _strtok

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern __gptrget1
	extern __gptrput1
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

udata_strtok_0	udata
_strtok_s_1_1	res	3

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($20) :
; ;ic:2: 	proc _strtok [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic*  function    ( char generic* , char generic* ) }
S_strtok__strtok	code
_strtok:
;	.line	26; strtok.c	char *strtok(char *str, char *control) 
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
; ;ic:3: iTemp0 [k2 lr3:6 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strtok_str_1_1}[r0x00 r0x01 r0x02 ] = recv _strtok [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic*  function    ( char generic* , char generic* ) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
; ;ic:4: iTemp1 [k4 lr4:42 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strtok_control_1_1}[r0x03 r0x04 r0x05 ] = recv _strtok [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic*  function    ( char generic* , char generic* ) }
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
; ;ic:5: 	if iTemp0 [k2 lr3:6 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strtok_str_1_1}[r0x00 r0x01 r0x02 ] == 0 goto _iffalse_0($2)
;	.line	31; strtok.c	if (str)s = str ;
	MOVF	r0x00, W
	IORWF	r0x01, W
	IORWF	r0x02, W
	BZ	_00106_DS_
; ;ic:6: 	_strtok_s_1_1 [k6 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* } := iTemp0 [k2 lr3:6 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strtok_str_1_1}[r0x00 r0x01 r0x02 ]
	MOVFF	r0x00, _strtok_s_1_1
	MOVFF	r0x01, (_strtok_s_1_1 + 1)
	MOVFF	r0x02, (_strtok_s_1_1 + 2)
; ;ic:7:  _iffalse_0($2) :
; ;ic:8: 	if _strtok_s_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* } != 0 goto _whilecontinue_0($8)
_00106_DS_:
	BANKSEL	_strtok_s_1_1
;	.line	33; strtok.c	if (!s)return NULL;
	MOVF	_strtok_s_1_1, W, B
; removed redundant BANKSEL
	IORWF	(_strtok_s_1_1 + 1), W, B
; removed redundant BANKSEL
	IORWF	(_strtok_s_1_1 + 2), W, B
	BNZ	_00112_DS_
; ;ic:9: 	ret 0x0 {void literal-generic* }
	CLRF	PRODH
	CLRF	PRODL
	CLRF	WREG
	BRA	_00123_DS_
; ;ic:11:  _whilecontinue_0($8) :
; ;ic:12: 	iTemp5 [k10 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x00 r0x01 r0x02 ] := _strtok_s_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }
_00112_DS_:
;	.line	35; strtok.c	while (*s) {
	MOVFF	_strtok_s_1_1, r0x00
	MOVFF	(_strtok_s_1_1 + 1), r0x01
	MOVFF	(_strtok_s_1_1 + 2), r0x02
; ;ic:13: 	iTemp6 [k11 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x00 ] = @[iTemp5 [k10 lr12:13 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x00 r0x01 r0x02 ]]
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget1
	MOVWF	r0x00
; ;ic:14: 	if iTemp6 [k11 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x00 ] == 0 goto _whilebreak_0($10)
	MOVF	r0x00, W
	BZ	_00114_DS_
; ;ic:15: 	iTemp7 [k13 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x00 r0x01 r0x02 ] := _strtok_s_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }
;	.line	36; strtok.c	if (strchr(control,*s))s++;
	MOVFF	_strtok_s_1_1, r0x00
	MOVFF	(_strtok_s_1_1 + 1), r0x01
	MOVFF	(_strtok_s_1_1 + 2), r0x02
; ;ic:16: 	iTemp8 [k14 lr16:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x00 ] = @[iTemp7 [k13 lr15:16 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x00 r0x01 r0x02 ]]
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget1
; #	MOVWF	r0x00
; #;;ic:17: 	send iTemp1 [k4 lr4:42 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strtok_control_1_1}[r0x03 r0x04 r0x05 ]{argreg = 1}
; #;;ic:18: 	send iTemp8 [k14 lr16:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x00 ]{argreg = 2}
; #;;ic:19: 	iTemp9 [k15 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x00 r0x01 r0x02 ] = call _strchr [k12 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic*  function    ( char generic* , char) }
; #	MOVF	r0x00, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	CALL	_strchr
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVLW	0x04
	ADDWF	FSR1L, F
; ;ic:20: 	if iTemp9 [k15 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x00 r0x01 r0x02 ] == 0 goto _whilebreak_0($10)
	MOVF	r0x00, W
	IORWF	r0x01, W
	IORWF	r0x02, W
	BZ	_00114_DS_
; ;ic:21: 	_strtok_s_1_1 [k6 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* } = _strtok_s_1_1 [k6 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* } + 0x1 {literal-unsigned-char}
	BANKSEL	_strtok_s_1_1
	INCF	_strtok_s_1_1, F, B
	BNC	_10105_DS_
; removed redundant BANKSEL
	INCF	(_strtok_s_1_1 + 1), F, B
_10105_DS_:
	BNC	_20106_DS_
	BANKSEL	(_strtok_s_1_1 + 2)
	INCF	(_strtok_s_1_1 + 2), F, B
_20106_DS_:
; ;ic:22: 	 goto _whilecontinue_0($8)
	BRA	_00112_DS_
; ;ic:23:  _whilebreak_0($10) :
; ;ic:24: 	iTemp13 [k19 lr24:47 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strtok_s1_1_1}[r0x00 r0x01 r0x02 ] := _strtok_s_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }
_00114_DS_:
;	.line	40; strtok.c	s1 = s ;
	MOVFF	_strtok_s_1_1, r0x00
	MOVFF	(_strtok_s_1_1 + 1), r0x01
	MOVFF	(_strtok_s_1_1 + 2), r0x02
; ;ic:26:  _whilecontinue_1($13) :
; ;ic:27: 	iTemp14 [k21 lr27:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x06 r0x07 r0x08 ] := _strtok_s_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }
_00117_DS_:
;	.line	42; strtok.c	while (*s) {
	MOVFF	_strtok_s_1_1, r0x06
	MOVFF	(_strtok_s_1_1 + 1), r0x07
	MOVFF	(_strtok_s_1_1 + 2), r0x08
; ;ic:28: 	iTemp15 [k22 lr28:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x06 ] = @[iTemp14 [k21 lr27:28 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x06 r0x07 r0x08 ]]
	MOVFF	r0x06, FSR0L
	MOVFF	r0x07, PRODL
	MOVF	r0x08, W
	CALL	__gptrget1
	MOVWF	r0x06
; ;ic:29: 	if iTemp15 [k22 lr28:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x06 ] == 0 goto _whilebreak_1($15)
	MOVF	r0x06, W
	BTFSC	STATUS, 2
	BRA	_00119_DS_
; ;ic:30: 	iTemp16 [k23 lr30:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x06 r0x07 r0x08 ] := _strtok_s_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }
;	.line	43; strtok.c	if (strchr(control,*s)) {
	MOVFF	_strtok_s_1_1, r0x06
	MOVFF	(_strtok_s_1_1 + 1), r0x07
	MOVFF	(_strtok_s_1_1 + 2), r0x08
; ;ic:31: 	iTemp17 [k24 lr31:33 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x06 ] = @[iTemp16 [k23 lr30:31 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x06 r0x07 r0x08 ]]
	MOVFF	r0x06, FSR0L
	MOVFF	r0x07, PRODL
	MOVF	r0x08, W
	CALL	__gptrget1
; #	MOVWF	r0x06
; #;;ic:32: 	send iTemp1 [k4 lr4:42 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strtok_control_1_1}[r0x03 r0x04 r0x05 ]{argreg = 1}
; #;;ic:33: 	send iTemp17 [k24 lr31:33 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x06 ]{argreg = 2}
; #;;ic:34: 	iTemp18 [k25 lr34:35 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x06 r0x07 r0x08 ] = call _strchr [k12 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic*  function    ( char generic* , char) }
; #	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	CALL	_strchr
	MOVWF	r0x06
	MOVFF	PRODL, r0x07
	MOVFF	PRODH, r0x08
	MOVLW	0x04
	ADDWF	FSR1L, F
; ;ic:35: 	if iTemp18 [k25 lr34:35 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x06 r0x07 r0x08 ] == 0 goto _iffalse_3($12)
	MOVF	r0x06, W
	IORWF	r0x07, W
	IORWF	r0x08, W
	BZ	_00116_DS_
; ;ic:36: 	iTemp19 [k26 lr36:37 so:0]{ ia0 a2p0 re0 rm0 nos1 ru0 dp0}{char generic* }[r0x06 r0x07 r0x08 ] := _strtok_s_1_1 [k6 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }
;	.line	44; strtok.c	*s++ = '\0';
	MOVFF	_strtok_s_1_1, r0x06
	MOVFF	(_strtok_s_1_1 + 1), r0x07
	MOVFF	(_strtok_s_1_1 + 2), r0x08
; ;ic:37: 	*(iTemp19 [k26 lr36:37 so:0]{ ia1 a2p0 re0 rm0 nos1 ru0 dp0}{char generic* }[r0x06 r0x07 r0x08 ]) := 0x0 {literal-char}
	CLRF	POSTDEC1
	MOVFF	r0x06, FSR0L
	MOVFF	r0x07, PRODL
	MOVF	r0x08, W
	CALL	__gptrput1
; ;ic:38: 	_strtok_s_1_1 [k6 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* } = _strtok_s_1_1 [k6 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* } + 0x1 {literal-unsigned-char}
	BANKSEL	_strtok_s_1_1
	INCF	_strtok_s_1_1, F, B
	BNC	_30107_DS_
; removed redundant BANKSEL
	INCF	(_strtok_s_1_1 + 1), F, B
_30107_DS_:
	BNC	_40108_DS_
	BANKSEL	(_strtok_s_1_1 + 2)
	INCF	(_strtok_s_1_1 + 2), F, B
_40108_DS_:
; ;ic:39: 	ret iTemp13 [k19 lr24:47 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strtok_s1_1_1}[r0x00 r0x01 r0x02 ]
;	.line	45; strtok.c	return s1 ;
	MOVFF	r0x02, PRODH
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
	BRA	_00123_DS_
; ;ic:40:  _iffalse_3($12) :
; ;ic:41: 	_strtok_s_1_1 [k6 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* } = _strtok_s_1_1 [k6 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* } + 0x1 {literal-unsigned-char}
_00116_DS_:
	BANKSEL	_strtok_s_1_1
;	.line	47; strtok.c	s++ ;
	INCF	_strtok_s_1_1, F, B
	BNC	_50109_DS_
; removed redundant BANKSEL
	INCF	(_strtok_s_1_1 + 1), F, B
_50109_DS_:
	BNC	_60110_DS_
	BANKSEL	(_strtok_s_1_1 + 2)
	INCF	(_strtok_s_1_1 + 2), F, B
_60110_DS_:
; ;ic:42: 	 goto _whilecontinue_1($13)
	BRA	_00117_DS_
; ;ic:43:  _whilebreak_1($15) :
; ;ic:44: 	_strtok_s_1_1 [k6 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* } := 0x0 {void literal-generic* }
_00119_DS_:
	BANKSEL	_strtok_s_1_1
;	.line	50; strtok.c	s = NULL;
	CLRF	_strtok_s_1_1, B
; removed redundant BANKSEL
	CLRF	(_strtok_s_1_1 + 1), B
; removed redundant BANKSEL
	CLRF	(_strtok_s_1_1 + 2), B
; ;ic:45: 	iTemp29 [k36 lr45:46 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x03 ] = @[iTemp13 [k19 lr24:47 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strtok_s1_1_1}[r0x00 r0x01 r0x02 ]]
;	.line	52; strtok.c	if (*s1)return s1;
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget1
	MOVWF	r0x03
; ;ic:46: 	if iTemp29 [k36 lr45:46 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x03 ] == 0 goto _iffalse_4($17)
	MOVF	r0x03, W
	BZ	_00121_DS_
; ;ic:47: 	ret iTemp13 [k19 lr24:47 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strtok_s1_1_1}[r0x00 r0x01 r0x02 ]
	MOVFF	r0x02, PRODH
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
	BRA	_00123_DS_
; ;ic:48:  _iffalse_4($17) :
; ;ic:49: 	ret 0x0 {void literal-generic* }
_00121_DS_:
;	.line	53; strtok.c	else return NULL;
	CLRF	PRODH
	CLRF	PRODL
	CLRF	WREG
; ;ic:50:  _return($19) :
; ;ic:51: 	eproc _strtok [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic*  function    ( char generic* , char generic* ) }
_00123_DS_:
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
; code size:	  502 (0x01f6) bytes ( 0.38%)
;           	  251 (0x00fb) words
; udata size:	    3 (0x0003) bytes ( 0.23%)
; access size:	    9 (0x0009) bytes


	end
