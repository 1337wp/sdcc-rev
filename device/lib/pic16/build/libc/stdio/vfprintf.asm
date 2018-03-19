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
	global _vfprintf

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern __gptrget1
	extern __gptrget3
	extern __gptrget4
	extern __gptrget2
	extern _stdin
	extern _stdout
	extern _islower
	extern ___stream_putchar
	extern _ultoa
	extern _ltoa
;--------------------------------------------------------
;	Equates to used internal registers
;--------------------------------------------------------
STATUS	equ	0xfd8
WREG	equ	0xfe8
FSR0L	equ	0xfe9
FSR0H	equ	0xfea
FSR1L	equ	0xfe1
FSR2L	equ	0xfd9
INDF0	equ	0xfef
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
r0x0d	res	1
r0x0e	res	1
r0x0f	res	1
r0x10	res	1
r0x11	res	1
r0x12	res	1
r0x13	res	1
r0x14	res	1
r0x15	res	1
r0x16	res	1
r0x17	res	1
r0x18	res	1

udata_vfprintf_0	udata
_vfprintf_buffer_1_1	res	16

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($63) :
; ;ic:2: 	proc _vfprintf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function    ( char generic*  generic* , char generic* , unsigned-char generic* ) }
S_vfprintf__vfprintf	code
_vfprintf:
;	.line	62; vfprintf.c	unsigned int vfprintf(FILE *stream, char *fmt, va_list ap)
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
	MOVFF	r0x0d, POSTDEC1
	MOVFF	r0x0e, POSTDEC1
	MOVFF	r0x0f, POSTDEC1
	MOVFF	r0x10, POSTDEC1
	MOVFF	r0x11, POSTDEC1
	MOVFF	r0x12, POSTDEC1
	MOVFF	r0x13, POSTDEC1
	MOVFF	r0x14, POSTDEC1
	MOVFF	r0x15, POSTDEC1
	MOVFF	r0x16, POSTDEC1
	MOVFF	r0x17, POSTDEC1
	MOVFF	r0x18, POSTDEC1
; ;ic:3: iTemp0 [k2 lr3:194 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic*  generic* }{ sir@ _vfprintf_stream_1_1}[r0x00 r0x01 r0x02 ] = recv _vfprintf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function    ( char generic*  generic* , char generic* , unsigned-char generic* ) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
; ;ic:4: iTemp4 [k10 lr4:194 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _vfprintf_ch_1_1}[r0x03 r0x04 r0x05 ] = recv _vfprintf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function    ( char generic*  generic* , char generic* , unsigned-char generic* ) }
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
; ;ic:5: iTemp2 [k6 lr5:194 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* }{ sir@ _vfprintf_ap_1_1}[r0x06 r0x07 r0x08 ] = recv _vfprintf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function    ( char generic*  generic* , char generic* , unsigned-char generic* ) }
	MOVLW	0x08
	MOVFF	PLUSW2, r0x06
	MOVLW	0x09
	MOVFF	PLUSW2, r0x07
	MOVLW	0x0a
	MOVFF	PLUSW2, r0x08
; ;ic:6: 	iTemp3 [k8 lr6:196 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _vfprintf_count_1_1}[r0x09 r0x0a ] := 0x0 {literal-unsigned-int}
;	.line	68; vfprintf.c	unsigned int count=0;
	CLRF	r0x09
	CLRF	r0x0a
; ;ic:8: 	iTemp108 [k128 lr8:194 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{char near* }[remat] = &[_vfprintf_buffer_1_1 [k120 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char [16] }]
; ;ic:9:  _whilecontinue_0($59) :
; ;ic:10: 	iTemp6 [k13 lr10:183 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0b ] = @[iTemp4 [k10 lr4:194 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _vfprintf_ch_1_1}[r0x03 r0x04 r0x05 ]]
_00163_DS_:
;	.line	85; vfprintf.c	while( *ch ) {      //for (; *fmt ; fmt++ )
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrget1
	MOVWF	r0x0b
; ;ic:11: 	if iTemp6 [k13 lr10:183 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0b ] == 0 goto _whilebreak_0($61)
	MOVF	r0x0b, W
	BTFSC	STATUS, 2
	BRA	_00165_DS_
; ;ic:12: 	iTemp9 [k16 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp6 [k13 lr10:183 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0b ] == 0x25 {literal-char}
;	.line	86; vfprintf.c	if (*ch == '%') {
	MOVF	r0x0b, W
	XORLW	0x25
	BZ	_00199_DS_
	BRA	_00161_DS_
; ;ic:13: 	if iTemp9 [k16 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_18($57)
; ;ic:14: 	iTemp10 [k17 lr14:111 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _vfprintf_flong_1_1}[r0x0c ] := 0x0 {literal-unsigned-char}
_00199_DS_:
;	.line	87; vfprintf.c	flong = 0;
	CLRF	r0x0c
; ;ic:15: 	iTemp11 [k19 lr15:93 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _vfprintf_fstr_1_1}[r0x0d ] := 0x0 {literal-unsigned-char}
;	.line	88; vfprintf.c	fstr = 0;
	CLRF	r0x0d
; ;ic:16: 	iTemp12 [k21 lr16:118 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _vfprintf_fchar_1_1}[r0x0e ] := 0x0 {literal-unsigned-char}
;	.line	89; vfprintf.c	fchar = 0;
	CLRF	r0x0e
; ;ic:17: 	iTemp13 [k23 lr17:137 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _vfprintf_nosign_1_1}[r0x0f ] := 0x0 {literal-unsigned-char}
;	.line	90; vfprintf.c	nosign = 0;
	CLRF	r0x0f
; ;ic:18: 	iTemp14 [k25 lr18:169 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _vfprintf_radix_1_1}[r0x10 ] := 0x0 {literal-unsigned-char}
;	.line	91; vfprintf.c	radix = 0;
	CLRF	r0x10
; ;ic:19: 	iTemp15 [k27 lr19:173 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _vfprintf_upcase_1_1}[r0x11 ] := 0x0 {literal-unsigned-char}
;	.line	92; vfprintf.c	upcase = 0;
	CLRF	r0x11
; ;ic:20: 	iTemp4 [k10 lr4:194 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _vfprintf_ch_1_1}[r0x03 r0x04 r0x05 ] = iTemp4 [k10 lr4:194 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _vfprintf_ch_1_1}[r0x03 r0x04 r0x05 ] + 0x1 {literal-unsigned-char}
;	.line	93; vfprintf.c	ch++;
	INCF	r0x03, F
	BTFSC	STATUS, 0
	INCF	r0x04, F
	BTFSC	STATUS, 0
	INCF	r0x05, F
; ;ic:21: 	iTemp19 [k32 lr21:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x12 ] = @[iTemp4 [k10 lr4:194 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _vfprintf_ch_1_1}[r0x03 r0x04 r0x05 ]]
;	.line	95; vfprintf.c	if(*ch == '%') {
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrget1
; #	MOVWF	r0x12
; #;;ic:22: 	iTemp20 [k33 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp19 [k32 lr21:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x12 ] == 0x25 {literal-char}
; #	MOVF	r0x12, W
	MOVWF	r0x12
	XORLW	0x25
	BNZ	_00106_DS_
; ;ic:23: 	if iTemp20 [k33 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_0($2)
; ;ic:24: 	send iTemp0 [k2 lr3:194 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic*  generic* }{ sir@ _vfprintf_stream_1_1}[r0x00 r0x01 r0x02 ]{argreg = 1}
; ;ic:25: 	send iTemp19 [k32 lr21:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x12 ]{argreg = 2}
; ;ic:26: 	iTemp24 [k38 lr26:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void} = call ___stream_putchar [k34 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( char generic*  generic* , unsigned-char) }
;	.line	96; vfprintf.c	__stream_putchar(stream, *ch);
	MOVF	r0x12, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	___stream_putchar
	MOVLW	0x04
	ADDWF	FSR1L, F
; ;ic:27: 	iTemp3 [k8 lr6:196 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _vfprintf_count_1_1}[r0x09 r0x0a ] = iTemp3 [k8 lr6:196 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _vfprintf_count_1_1}[r0x09 r0x0a ] + 0x1 {literal-unsigned-char}
;	.line	97; vfprintf.c	++count;
	INCF	r0x09, F
	BTFSC	STATUS, 0
	INCF	r0x0a, F
; ;ic:28: 	iTemp4 [k10 lr4:194 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _vfprintf_ch_1_1}[r0x03 r0x04 r0x05 ] = iTemp4 [k10 lr4:194 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _vfprintf_ch_1_1}[r0x03 r0x04 r0x05 ] + 0x1 {literal-unsigned-char}
;	.line	98; vfprintf.c	++ch;
	INCF	r0x03, F
	BTFSC	STATUS, 0
	INCF	r0x04, F
	BTFSC	STATUS, 0
	INCF	r0x05, F
; ;ic:29: 	 goto _whilecontinue_0($59)
;	.line	99; vfprintf.c	continue;
	BRA	_00163_DS_
; ;ic:30:  _iffalse_0($2) :
; ;ic:31: 	iTemp29 [k43 lr31:32 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp19 [k32 lr21:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x12 ] == 0x75 {literal-char}
_00106_DS_:
;	.line	102; vfprintf.c	if(*ch == 'u') {
	MOVF	r0x12, W
	XORLW	0x75
	BNZ	_00108_DS_
; ;ic:32: 	if iTemp29 [k43 lr31:32 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_1($4)
; ;ic:33: 	iTemp13 [k23 lr17:137 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _vfprintf_nosign_1_1}[r0x0f ] := 0x1 {literal-unsigned-char}
;	.line	103; vfprintf.c	nosign = 1;
	MOVLW	0x01
	MOVWF	r0x0f
; ;ic:34: 	iTemp4 [k10 lr4:194 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _vfprintf_ch_1_1}[r0x03 r0x04 r0x05 ] = iTemp4 [k10 lr4:194 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _vfprintf_ch_1_1}[r0x03 r0x04 r0x05 ] + 0x1 {literal-unsigned-char}
;	.line	104; vfprintf.c	ch++;
	INCF	r0x03, F
	BTFSC	STATUS, 0
	INCF	r0x04, F
	BTFSC	STATUS, 0
	INCF	r0x05, F
; ;ic:35:  _iffalse_1($4) :
; ;ic:36: 	iTemp33 [k47 lr36:43 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x12 ] = @[iTemp4 [k10 lr4:194 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _vfprintf_ch_1_1}[r0x03 r0x04 r0x05 ]]
_00108_DS_:
;	.line	107; vfprintf.c	if(*ch == 'l') {
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrget1
; #	MOVWF	r0x12
; #;;ic:37: 	iTemp34 [k48 lr37:38 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp33 [k47 lr36:43 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x12 ] == 0x6c {literal-char}
; #	MOVF	r0x12, W
	MOVWF	r0x12
	XORLW	0x6c
	BNZ	_00112_DS_
; ;ic:38: 	if iTemp34 [k48 lr37:38 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_3($8)
; ;ic:39: 	iTemp10 [k17 lr14:111 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _vfprintf_flong_1_1}[r0x0c ] := 0x1 {literal-unsigned-char}
;	.line	108; vfprintf.c	flong = 1;
	MOVLW	0x01
	MOVWF	r0x0c
; ;ic:40: 	iTemp4 [k10 lr4:194 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _vfprintf_ch_1_1}[r0x03 r0x04 r0x05 ] = iTemp4 [k10 lr4:194 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _vfprintf_ch_1_1}[r0x03 r0x04 r0x05 ] + 0x1 {literal-unsigned-char}
;	.line	109; vfprintf.c	ch++;
	INCF	r0x03, F
	BTFSC	STATUS, 0
	INCF	r0x04, F
	BTFSC	STATUS, 0
	INCF	r0x05, F
; ;ic:41: 	 goto _ifend_3($9)
	BRA	_00113_DS_
; ;ic:42:  _iffalse_3($8) :
; ;ic:43: 	iTemp39 [k53 lr43:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp33 [k47 lr36:43 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x12 ] == 0x68 {literal-char}
_00112_DS_:
;	.line	110; vfprintf.c	} else if(*ch == 'h') {
	MOVF	r0x12, W
	XORLW	0x68
	BNZ	_00113_DS_
; ;ic:44: 	if iTemp39 [k53 lr43:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _ifend_3($9)
; ;ic:45: 	iTemp12 [k21 lr16:118 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _vfprintf_fchar_1_1}[r0x0e ] := 0x1 {literal-unsigned-char}
;	.line	111; vfprintf.c	fchar = 1;
	MOVLW	0x01
	MOVWF	r0x0e
; ;ic:46: 	iTemp4 [k10 lr4:194 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _vfprintf_ch_1_1}[r0x03 r0x04 r0x05 ] = iTemp4 [k10 lr4:194 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _vfprintf_ch_1_1}[r0x03 r0x04 r0x05 ] + 0x1 {literal-unsigned-char}
;	.line	112; vfprintf.c	ch++;
	INCF	r0x03, F
	BTFSC	STATUS, 0
	INCF	r0x04, F
	BTFSC	STATUS, 0
	INCF	r0x05, F
; ;ic:47:  _ifend_3($9) :
; ;ic:48: 	iTemp43 [k57 lr48:87 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x12 ] = @[iTemp4 [k10 lr4:194 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _vfprintf_ch_1_1}[r0x03 r0x04 r0x05 ]]
_00113_DS_:
;	.line	115; vfprintf.c	if(*ch == 's')fstr = 1;
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrget1
; #	MOVWF	r0x12
; #;;ic:49: 	iTemp44 [k58 lr49:50 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp43 [k57 lr48:87 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x12 ] == 0x73 {literal-char}
; #	MOVF	r0x12, W
	MOVWF	r0x12
	XORLW	0x73
	BNZ	_00133_DS_
; ;ic:50: 	if iTemp44 [k58 lr49:50 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_10($29)
; ;ic:51: 	iTemp11 [k19 lr15:93 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _vfprintf_fstr_1_1}[r0x0d ] := 0x1 {literal-unsigned-char}
	MOVLW	0x01
	MOVWF	r0x0d
; ;ic:52: 	 goto _ifend_10($30)
	BRA	_00134_DS_
; ;ic:53:  _iffalse_10($29) :
; ;ic:54: 	iTemp47 [k61 lr54:55 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp43 [k57 lr48:87 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x12 ] == 0x64 {literal-char}
_00133_DS_:
;	.line	116; vfprintf.c	else if(*ch == 'd')radix = 10;
	MOVF	r0x12, W
	XORLW	0x64
	BNZ	_00130_DS_
; ;ic:55: 	if iTemp47 [k61 lr54:55 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_9($26)
; ;ic:56: 	iTemp14 [k25 lr18:169 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _vfprintf_radix_1_1}[r0x10 ] := 0xa {literal-unsigned-char}
	MOVLW	0x0a
	MOVWF	r0x10
; ;ic:57: 	 goto _ifend_10($30)
	BRA	_00134_DS_
; ;ic:58:  _iffalse_9($26) :
; ;ic:59: 	iTemp50 [k64 lr59:60 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp43 [k57 lr48:87 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x12 ] == 0x78 {literal-char}
_00130_DS_:
;	.line	117; vfprintf.c	else if(*ch == 'x'){ radix = 16; upcase = 0; }
	MOVF	r0x12, W
	XORLW	0x78
	BNZ	_00127_DS_
; ;ic:60: 	if iTemp50 [k64 lr59:60 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_8($23)
; ;ic:61: 	iTemp14 [k25 lr18:169 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _vfprintf_radix_1_1}[r0x10 ] := 0x10 {literal-unsigned-char}
	MOVLW	0x10
	MOVWF	r0x10
; ;ic:62: 	iTemp15 [k27 lr19:173 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _vfprintf_upcase_1_1}[r0x11 ] := 0x0 {literal-unsigned-char}
	CLRF	r0x11
; ;ic:63: 	 goto _ifend_10($30)
	BRA	_00134_DS_
; ;ic:64:  _iffalse_8($23) :
; ;ic:65: 	iTemp53 [k67 lr65:66 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp43 [k57 lr48:87 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x12 ] == 0x58 {literal-char}
_00127_DS_:
;	.line	118; vfprintf.c	else if(*ch == 'X'){ radix = 16; upcase = 1; }
	MOVF	r0x12, W
	XORLW	0x58
	BNZ	_00124_DS_
; ;ic:66: 	if iTemp53 [k67 lr65:66 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_7($20)
; ;ic:67: 	iTemp14 [k25 lr18:169 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _vfprintf_radix_1_1}[r0x10 ] := 0x10 {literal-unsigned-char}
	MOVLW	0x10
	MOVWF	r0x10
; ;ic:68: 	iTemp15 [k27 lr19:173 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _vfprintf_upcase_1_1}[r0x11 ] := 0x1 {literal-unsigned-char}
	MOVLW	0x01
	MOVWF	r0x11
; ;ic:69: 	 goto _ifend_10($30)
	BRA	_00134_DS_
; ;ic:70:  _iffalse_7($20) :
; ;ic:71: 	iTemp56 [k70 lr71:72 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp43 [k57 lr48:87 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x12 ] == 0x63 {literal-char}
_00124_DS_:
;	.line	119; vfprintf.c	else if(*ch == 'c')radix = 0;
	MOVF	r0x12, W
	XORLW	0x63
	BNZ	_00121_DS_
; ;ic:72: 	if iTemp56 [k70 lr71:72 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_6($17)
; ;ic:73: 	iTemp14 [k25 lr18:169 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _vfprintf_radix_1_1}[r0x10 ] := 0x0 {literal-unsigned-char}
	CLRF	r0x10
; ;ic:74: 	 goto _ifend_10($30)
	BRA	_00134_DS_
; ;ic:75:  _iffalse_6($17) :
; ;ic:76: 	iTemp59 [k73 lr76:77 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp43 [k57 lr48:87 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x12 ] == 0x6f {literal-char}
_00121_DS_:
;	.line	120; vfprintf.c	else if(*ch == 'o')radix = 8;
	MOVF	r0x12, W
	XORLW	0x6f
	BNZ	_00118_DS_
; ;ic:77: 	if iTemp59 [k73 lr76:77 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_5($14)
; ;ic:78: 	iTemp14 [k25 lr18:169 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _vfprintf_radix_1_1}[r0x10 ] := 0x8 {literal-unsigned-char}
	MOVLW	0x08
	MOVWF	r0x10
; ;ic:79: 	 goto _ifend_10($30)
	BRA	_00134_DS_
; ;ic:80:  _iffalse_5($14) :
; ;ic:81: 	iTemp62 [k76 lr81:82 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp43 [k57 lr48:87 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x12 ] == 0x62 {literal-char}
_00118_DS_:
;	.line	121; vfprintf.c	else if(*ch == 'b')radix = 2;
	MOVF	r0x12, W
	XORLW	0x62
	BNZ	_00115_DS_
; ;ic:82: 	if iTemp62 [k76 lr81:82 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_4($11)
; ;ic:83: 	iTemp14 [k25 lr18:169 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _vfprintf_radix_1_1}[r0x10 ] := 0x2 {literal-unsigned-char}
	MOVLW	0x02
	MOVWF	r0x10
; ;ic:84: 	 goto _ifend_10($30)
	BRA	_00134_DS_
; ;ic:85:  _iffalse_4($11) :
; ;ic:86: 	send iTemp0 [k2 lr3:194 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic*  generic* }{ sir@ _vfprintf_stream_1_1}[r0x00 r0x01 r0x02 ]{argreg = 1}
; ;ic:87: 	send iTemp43 [k57 lr48:87 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x12 ]{argreg = 2}
; ;ic:88: 	iTemp66 [k80 lr88:88 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void} = call ___stream_putchar [k34 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( char generic*  generic* , unsigned-char) }
_00115_DS_:
;	.line	123; vfprintf.c	__stream_putchar(stream, *ch);
	MOVF	r0x12, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	___stream_putchar
	MOVLW	0x04
	ADDWF	FSR1L, F
; ;ic:89: 	iTemp3 [k8 lr6:196 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _vfprintf_count_1_1}[r0x09 r0x0a ] = iTemp3 [k8 lr6:196 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _vfprintf_count_1_1}[r0x09 r0x0a ] + 0x1 {literal-unsigned-char}
;	.line	124; vfprintf.c	++count;
	INCF	r0x09, F
	BTFSC	STATUS, 0
	INCF	r0x0a, F
; ;ic:90: 	iTemp4 [k10 lr4:194 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _vfprintf_ch_1_1}[r0x03 r0x04 r0x05 ] = iTemp4 [k10 lr4:194 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _vfprintf_ch_1_1}[r0x03 r0x04 r0x05 ] + 0x1 {literal-unsigned-char}
;	.line	125; vfprintf.c	++ch;
	INCF	r0x03, F
	BTFSC	STATUS, 0
	INCF	r0x04, F
	BTFSC	STATUS, 0
	INCF	r0x05, F
; ;ic:91: 	 goto _whilecontinue_0($59)
;	.line	126; vfprintf.c	continue;
	BRA	_00163_DS_
; ;ic:92:  _ifend_10($30) :
; ;ic:93: 	if iTemp11 [k19 lr15:93 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _vfprintf_fstr_1_1}[r0x0d ] == 0 goto _iffalse_17($54)
_00134_DS_:
;	.line	129; vfprintf.c	if(fstr) {
	MOVF	r0x0d, W
	BTFSC	STATUS, 2
	BRA	_00158_DS_
; ;ic:94: 	iTemp70 [k85 lr94:96 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x0d r0x12 r0x13 ] = iTemp2 [k6 lr5:194 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* }{ sir@ _vfprintf_ap_1_1}[r0x06 r0x07 r0x08 ] + 0x3 {literal-unsigned-char}
;	.line	130; vfprintf.c	str = va_arg(ap, char *);
	MOVF	r0x06, W
	ADDLW	0x03
	MOVWF	r0x0d
	MOVLW	0x00
	ADDWFC	r0x07, W
	MOVWF	r0x12
	MOVLW	0x00
	ADDWFC	r0x08, W
	MOVWF	r0x13
; ;ic:95: 	iTemp2 [k6 lr5:194 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* }{ sir@ _vfprintf_ap_1_1}[r0x06 r0x07 r0x08 ] := iTemp70 [k85 lr94:96 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x0d r0x12 r0x13 ]
	MOVFF	r0x0d, r0x06
	MOVFF	r0x12, r0x07
	MOVFF	r0x13, r0x08
; ;ic:96: 	iTemp71 [k86 lr96:97 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x0d r0x12 r0x13 ] = iTemp70 [k85 lr94:96 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x0d r0x12 r0x13 ] - 0x3 {literal-unsigned-char}
	MOVLW	0xfd
	ADDWF	r0x0d, F
	MOVLW	0xff
	ADDWFC	r0x12, F
	ADDWFC	r0x13, F
; ;ic:97: 	iTemp69 [k83 lr97:99 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _vfprintf_str_1_1}[r0x0d r0x12 r0x13 ] = @[iTemp71 [k86 lr96:97 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x0d r0x12 r0x13 ]]
	MOVFF	r0x0d, FSR0L
	MOVFF	r0x12, PRODL
	MOVF	r0x13, W
	CALL	__gptrget3
	MOVWF	r0x0d
	MOVFF	PRODL, r0x12
	MOVFF	PRODH, r0x13
; ;ic:99: 	iTemp81 [k96 lr99:109 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x0d r0x12 r0x13 ] := iTemp69 [k83 lr97:99 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _vfprintf_str_1_1}[r0x0d r0x12 r0x13 ]
; ;ic:100: 	iTemp83 [k98 lr100:188 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x14 r0x15 ] := iTemp3 [k8 lr6:196 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _vfprintf_count_1_1}[r0x09 r0x0a ]
;	.line	131; vfprintf.c	while(*str) { __stream_putchar(stream, *str); str++; count++; }
	MOVFF	r0x09, r0x14
	MOVFF	r0x0a, r0x15
; ;ic:101:  _whilecontinue_1($31) :
; ;ic:102: 	iTemp75 [k90 lr102:105 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x16 ] = @[iTemp81 [k96 lr99:109 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x0d r0x12 r0x13 ]]
_00135_DS_:
	MOVFF	r0x0d, FSR0L
	MOVFF	r0x12, PRODL
	MOVF	r0x13, W
	CALL	__gptrget1
	MOVWF	r0x16
; ;ic:103: 	if iTemp75 [k90 lr102:105 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x16 ] == 0 goto loopExitLbl5($92)
	MOVF	r0x16, W
	BTFSC	STATUS, 2
	BRA	_00196_DS_
; ;ic:104: 	send iTemp0 [k2 lr3:194 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic*  generic* }{ sir@ _vfprintf_stream_1_1}[r0x00 r0x01 r0x02 ]{argreg = 1}
; ;ic:105: 	send iTemp75 [k90 lr102:105 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x16 ]{argreg = 2}
; ;ic:106: 	iTemp79 [k94 lr106:106 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void} = call ___stream_putchar [k34 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( char generic*  generic* , unsigned-char) }
	MOVF	r0x16, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	___stream_putchar
	MOVLW	0x04
	ADDWF	FSR1L, F
; ;ic:107: 	iTemp81 [k96 lr99:109 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x0d r0x12 r0x13 ] = iTemp81 [k96 lr99:109 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x0d r0x12 r0x13 ] + 0x1 {literal-unsigned-char}
	INCF	r0x0d, F
	BTFSC	STATUS, 0
	INCF	r0x12, F
	BTFSC	STATUS, 0
	INCF	r0x13, F
; ;ic:108: 	iTemp83 [k98 lr100:188 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x14 r0x15 ] = iTemp83 [k98 lr100:188 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x14 r0x15 ] + 0x1 {literal-unsigned-char}
	INCF	r0x14, F
	BTFSC	STATUS, 0
	INCF	r0x15, F
; ;ic:109: 	 goto _whilecontinue_1($31)
	BRA	_00135_DS_
; ;ic:110:  _iffalse_17($54) :
; ;ic:111: 	if iTemp10 [k17 lr14:111 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _vfprintf_flong_1_1}[r0x0c ] == 0 goto _iffalse_13($40)
_00158_DS_:
;	.line	134; vfprintf.c	if(flong) {
	MOVF	r0x0c, W
	BZ	_00144_DS_
; ;ic:112: 	iTemp85 [k101 lr112:114 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x0c r0x0d r0x12 ] = iTemp2 [k6 lr5:194 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* }{ sir@ _vfprintf_ap_1_1}[r0x06 r0x07 r0x08 ] + 0x4 {literal-unsigned-char}
;	.line	135; vfprintf.c	val = va_arg(ap, long);
	MOVF	r0x06, W
	ADDLW	0x04
	MOVWF	r0x0c
	MOVLW	0x00
	ADDWFC	r0x07, W
	MOVWF	r0x0d
	MOVLW	0x00
	ADDWFC	r0x08, W
	MOVWF	r0x12
; ;ic:113: 	iTemp2 [k6 lr5:194 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* }{ sir@ _vfprintf_ap_1_1}[r0x06 r0x07 r0x08 ] := iTemp85 [k101 lr112:114 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x0c r0x0d r0x12 ]
	MOVFF	r0x0c, r0x06
	MOVFF	r0x0d, r0x07
	MOVFF	r0x12, r0x08
; ;ic:114: 	iTemp86 [k102 lr114:115 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x0c r0x0d r0x12 ] = iTemp85 [k101 lr112:114 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x0c r0x0d r0x12 ] - 0x4 {literal-unsigned-char}
	MOVLW	0xfc
	ADDWF	r0x0c, F
	MOVLW	0xff
	ADDWFC	r0x0d, F
	ADDWFC	r0x12, F
; ;ic:115: 	iTemp84 [k99 lr115:175 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ _vfprintf_val_1_1}[r0x0c r0x0d r0x12 r0x13 ] = @[iTemp86 [k102 lr114:115 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x0c r0x0d r0x12 ]]
	MOVFF	r0x0c, FSR0L
	MOVFF	r0x0d, PRODL
	MOVF	r0x12, W
	CALL	__gptrget4
	MOVWF	r0x0c
	MOVFF	PRODL, r0x0d
	MOVFF	PRODH, r0x12
	MOVFF	FSR0L, r0x13
; ;ic:116: 	 goto _ifend_13($41)
	BRA	_00145_DS_
; ;ic:117:  _iffalse_13($40) :
; ;ic:118: 	if iTemp12 [k21 lr16:118 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _vfprintf_fchar_1_1}[r0x0e ] == 0 goto _iffalse_12($37)
_00144_DS_:
;	.line	140; vfprintf.c	else if(fchar) {
	MOVF	r0x0e, W
	BZ	_00141_DS_
; ;ic:119: 	iTemp89 [k105 lr119:121 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x0e r0x16 r0x17 ] = iTemp2 [k6 lr5:194 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* }{ sir@ _vfprintf_ap_1_1}[r0x06 r0x07 r0x08 ] + 0x2 {literal-unsigned-char}
;	.line	141; vfprintf.c	val = (unsigned char)va_arg(ap, int); // FIXME: SDCC passes 1-byte char varargs as 2-byte ints...
	MOVF	r0x06, W
	ADDLW	0x02
	MOVWF	r0x0e
	MOVLW	0x00
	ADDWFC	r0x07, W
	MOVWF	r0x16
	MOVLW	0x00
	ADDWFC	r0x08, W
	MOVWF	r0x17
; ;ic:120: 	iTemp2 [k6 lr5:194 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* }{ sir@ _vfprintf_ap_1_1}[r0x06 r0x07 r0x08 ] := iTemp89 [k105 lr119:121 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x0e r0x16 r0x17 ]
	MOVFF	r0x0e, r0x06
	MOVFF	r0x16, r0x07
	MOVFF	r0x17, r0x08
; ;ic:121: 	iTemp90 [k106 lr121:122 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x0e r0x16 r0x17 ] = iTemp89 [k105 lr119:121 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x0e r0x16 r0x17 ] - 0x2 {literal-unsigned-char}
	MOVLW	0xfe
	ADDWF	r0x0e, F
	MOVLW	0xff
	ADDWFC	r0x16, F
	ADDWFC	r0x17, F
; ;ic:122: 	iTemp92 [k108 lr122:123 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x0e r0x16 ] = @[iTemp90 [k106 lr121:122 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x0e r0x16 r0x17 ]]
	MOVFF	r0x0e, FSR0L
	MOVFF	r0x16, PRODL
	MOVF	r0x17, W
	CALL	__gptrget2
	MOVWF	r0x0e
; ;ic:123: 	iTemp93 [k109 lr123:124 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x0e ] = (unsigned-char)iTemp92 [k108 lr122:123 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x0e r0x16 ]
; ;ic:124: 	iTemp84 [k99 lr115:175 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ _vfprintf_val_1_1}[r0x0c r0x0d r0x12 r0x13 ] = (long-int)iTemp93 [k109 lr123:124 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x0e ]
	MOVFF	r0x0e, r0x0c
	CLRF	r0x0d
	CLRF	r0x12
	CLRF	r0x13
; ;ic:125: 	if iTemp13 [k23 lr17:137 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _vfprintf_nosign_1_1}[r0x0f ] != 0 goto _ifend_13($41)
;	.line	142; vfprintf.c	if (!nosign) val = (char) val; // (FIXME cont'd) sign extend if required
	MOVF	r0x0f, W
	BNZ	_00145_DS_
; ;ic:126: 	iTemp95 [k111 lr126:127 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0e ] = (char)iTemp84 [k99 lr115:175 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ _vfprintf_val_1_1}[r0x0c r0x0d r0x12 r0x13 ]
	MOVF	r0x0c, W
	MOVWF	r0x0e
; ;ic:127: 	iTemp84 [k99 lr115:175 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ _vfprintf_val_1_1}[r0x0c r0x0d r0x12 r0x13 ] = (long-int)iTemp95 [k111 lr126:127 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0e ]
	MOVFF	r0x0e, r0x0c
	CLRF	WREG
	BTFSC	r0x0e, 7
	MOVLW	0xff
	MOVWF	r0x0d
	MOVWF	r0x12
	MOVWF	r0x13
; ;ic:128: 	 goto _ifend_13($41)
	BRA	_00145_DS_
; ;ic:129:  _iffalse_12($37) :
; ;ic:130: 	iTemp97 [k113 lr130:132 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x0e r0x16 r0x17 ] = iTemp2 [k6 lr5:194 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* }{ sir@ _vfprintf_ap_1_1}[r0x06 r0x07 r0x08 ] + 0x2 {literal-unsigned-char}
_00141_DS_:
;	.line	148; vfprintf.c	val = va_arg(ap, int);
	MOVF	r0x06, W
	ADDLW	0x02
	MOVWF	r0x0e
	MOVLW	0x00
	ADDWFC	r0x07, W
	MOVWF	r0x16
	MOVLW	0x00
	ADDWFC	r0x08, W
	MOVWF	r0x17
; ;ic:131: 	iTemp2 [k6 lr5:194 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* }{ sir@ _vfprintf_ap_1_1}[r0x06 r0x07 r0x08 ] := iTemp97 [k113 lr130:132 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x0e r0x16 r0x17 ]
	MOVFF	r0x0e, r0x06
	MOVFF	r0x16, r0x07
	MOVFF	r0x17, r0x08
; ;ic:132: 	iTemp98 [k114 lr132:133 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x0e r0x16 r0x17 ] = iTemp97 [k113 lr130:132 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x0e r0x16 r0x17 ] - 0x2 {literal-unsigned-char}
	MOVLW	0xfe
	ADDWF	r0x0e, F
	MOVLW	0xff
	ADDWFC	r0x16, F
	ADDWFC	r0x17, F
; ;ic:133: 	iTemp100 [k116 lr133:134 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x0e r0x16 ] = @[iTemp98 [k114 lr132:133 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x0e r0x16 r0x17 ]]
	MOVFF	r0x0e, FSR0L
	MOVFF	r0x16, PRODL
	MOVF	r0x17, W
	CALL	__gptrget2
	MOVWF	r0x0e
	MOVFF	PRODL, r0x16
; ;ic:134: 	iTemp84 [k99 lr115:175 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ _vfprintf_val_1_1}[r0x0c r0x0d r0x12 r0x13 ] = (long-int)iTemp100 [k116 lr133:134 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x0e r0x16 ]
	MOVFF	r0x0e, r0x0c
	MOVFF	r0x16, r0x0d
	CLRF	WREG
	BTFSC	r0x16, 7
	MOVLW	0xff
	MOVWF	r0x12
	MOVWF	r0x13
; ;ic:135:  _ifend_13($41) :
; ;ic:136: 	if iTemp14 [k25 lr18:169 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _vfprintf_radix_1_1}[r0x10 ] == 0 goto _iffalse_16($51)
_00145_DS_:
;	.line	154; vfprintf.c	if(radix) {
	MOVF	r0x10, W
	BTFSC	STATUS, 2
	BRA	_00155_DS_
; ;ic:137: 	if iTemp13 [k23 lr17:137 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _vfprintf_nosign_1_1}[r0x0f ] == 0 goto _iffalse_14($43)
;	.line	155; vfprintf.c	if(nosign)
	MOVF	r0x0f, W
	BZ	_00147_DS_
; ;ic:138: 	send iTemp84 [k99 lr115:175 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ _vfprintf_val_1_1}[r0x0c r0x0d r0x12 r0x13 ]{argreg = 1}
; ;ic:139: 	send iTemp108 [k128 lr8:194 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{char near* }[remat]{argreg = 2}
; ;ic:140: 	send iTemp14 [k25 lr18:169 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _vfprintf_radix_1_1}[r0x10 ]{argreg = 3}
; ;ic:141: 	iTemp104 [k122 lr141:141 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void} = call _ultoa [k118 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( unsigned-long-int, char near* , unsigned-char) }
;	.line	156; vfprintf.c	ultoa(val, buffer, radix);
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVLW	HIGH(_vfprintf_buffer_1_1)
	MOVWF	POSTDEC1
	MOVLW	LOW(_vfprintf_buffer_1_1)
	MOVWF	POSTDEC1
	MOVF	r0x13, W
	MOVWF	POSTDEC1
	MOVF	r0x12, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	CALL	_ultoa
	MOVLW	0x07
	ADDWF	FSR1L, F
; ;ic:142: 	 goto _ifend_14($44)
	BRA	_00148_DS_
; ;ic:143:  _iffalse_14($43) :
; ;ic:144: 	send iTemp84 [k99 lr115:175 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ _vfprintf_val_1_1}[r0x0c r0x0d r0x12 r0x13 ]{argreg = 1}
; ;ic:145: 	send iTemp108 [k128 lr8:194 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{char near* }[remat]{argreg = 2}
; ;ic:146: 	send iTemp14 [k25 lr18:169 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _vfprintf_radix_1_1}[r0x10 ]{argreg = 3}
; ;ic:147: 	iTemp106 [k125 lr147:147 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void} = call _ltoa [k123 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( long-int, char near* , unsigned-char) }
_00147_DS_:
;	.line	158; vfprintf.c	ltoa (val, buffer, radix);
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVLW	HIGH(_vfprintf_buffer_1_1)
	MOVWF	POSTDEC1
	MOVLW	LOW(_vfprintf_buffer_1_1)
	MOVWF	POSTDEC1
	MOVF	r0x13, W
	MOVWF	POSTDEC1
	MOVF	r0x12, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	CALL	_ltoa
	MOVLW	0x07
	ADDWF	FSR1L, F
; ;ic:148:  _ifend_14($44) :
; ;ic:149: 	iTemp107 [k126 lr149:152 so:0]{ ia0 a2p0 re1 rm1 nos0 ru0 dp0}{char near* }[remat] := iTemp108 [k128 lr8:194 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{char near* }[remat]
; ;ic:151: 	iTemp122 [k143 lr151:191 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x0e r0x0f ] := iTemp3 [k8 lr6:196 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _vfprintf_count_1_1}[r0x09 r0x0a ]
_00148_DS_:
;	.line	161; vfprintf.c	while( (*str1) ) {
	MOVFF	r0x09, r0x0e
	MOVFF	r0x0a, r0x0f
; ;ic:152: 	iTemp124 [k145 lr152:173 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* }[r0x16 r0x17 ] := iTemp107 [k126 lr149:152 so:0]{ ia0 a2p0 re1 rm1 nos0 ru0 dp0}{char near* }[remat]
	MOVLW	LOW(_vfprintf_buffer_1_1)
	MOVWF	r0x16
	MOVLW	HIGH(_vfprintf_buffer_1_1)
	MOVWF	r0x17
; ;ic:153:  _whilecontinue_2($47) :
; ;ic:154: 	iTemp110 [k130 lr154:156 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x18 ] = @[iTemp124 [k145 lr152:173 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char near* }[r0x16 r0x17 ]]
_00151_DS_:
	MOVFF	r0x16, FSR0L
	MOVFF	r0x17, FSR0H
	MOVFF	INDF0, r0x18
; ;ic:155: 	if iTemp110 [k130 lr154:156 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x18 ] == 0 goto loopExitLbl6($93)
	MOVF	r0x18, W
	BTFSC	STATUS, 2
	BRA	_00197_DS_
; ;ic:156: 	iTemp14 [k25 lr18:169 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _vfprintf_radix_1_1}[r0x10 ] := iTemp110 [k130 lr154:156 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x18 ]
;	.line	162; vfprintf.c	radix = *str1;
	MOVFF	r0x18, r0x10
; ;ic:157: 	if iTemp15 [k27 lr19:173 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _vfprintf_upcase_1_1}[r0x11 ] == 0 goto _iffalse_15($46)
;	.line	163; vfprintf.c	if(upcase)
	MOVF	r0x11, W
	BZ	_00150_DS_
; ;ic:158: 	send iTemp14 [k25 lr18:169 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _vfprintf_radix_1_1}[r0x10 ]{argreg = 1}
; ;ic:159: 	iTemp114 [k135 lr159:160 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x18 ] = call _islower [k134 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( unsigned-char) }
;	.line	164; vfprintf.c	radix = toupper( radix );
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	CALL	_islower
	MOVWF	r0x18
	INCF	FSR1L, F
; ;ic:160: 	if iTemp114 [k135 lr159:160 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x18 ] == 0 goto iTempLbl0($64)
	MOVF	r0x18, W
	BZ	_00168_DS_
; ;ic:161: 	iTemp115 [k136 lr161:166 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x18 ] = iTemp14 [k25 lr18:169 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _vfprintf_radix_1_1}[r0x10 ] & 0xffffffdf {literal-char}
	MOVLW	0xdf
	ANDWF	r0x10, W
	MOVWF	r0x18
; ;ic:162: 	 goto iTempLbl1($65)
	BRA	_00169_DS_
; ;ic:163:  iTempLbl0($64) :
; ;ic:164: 	iTemp115 [k136 lr161:166 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x18 ] := iTemp14 [k25 lr18:169 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _vfprintf_radix_1_1}[r0x10 ]
_00168_DS_:
	MOVFF	r0x10, r0x18
; ;ic:165:  iTempLbl1($65) :
; ;ic:166: 	iTemp14 [k25 lr18:169 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _vfprintf_radix_1_1}[r0x10 ] := iTemp115 [k136 lr161:166 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x18 ]
_00169_DS_:
	MOVFF	r0x18, r0x10
; ;ic:167:  _iffalse_15($46) :
; ;ic:168: 	send iTemp0 [k2 lr3:194 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic*  generic* }{ sir@ _vfprintf_stream_1_1}[r0x00 r0x01 r0x02 ]{argreg = 1}
; ;ic:169: 	send iTemp14 [k25 lr18:169 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _vfprintf_radix_1_1}[r0x10 ]{argreg = 2}
; ;ic:170: 	iTemp120 [k141 lr170:170 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void} = call ___stream_putchar [k34 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( char generic*  generic* , unsigned-char) }
_00150_DS_:
;	.line	165; vfprintf.c	__stream_putchar(stream, (unsigned char)radix);
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	___stream_putchar
	MOVLW	0x04
	ADDWF	FSR1L, F
; ;ic:171: 	iTemp122 [k143 lr151:191 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x0e r0x0f ] = iTemp122 [k143 lr151:191 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x0e r0x0f ] + 0x1 {literal-unsigned-char}
;	.line	166; vfprintf.c	count++;
	INCF	r0x0e, F
	BTFSC	STATUS, 0
	INCF	r0x0f, F
; ;ic:172: 	iTemp124 [k145 lr152:173 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* }[r0x16 r0x17 ] = iTemp124 [k145 lr152:173 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* }[r0x16 r0x17 ] + 0x1 {literal-unsigned-char}
;	.line	167; vfprintf.c	str1++;
	INCF	r0x16, F
	BTFSC	STATUS, 0
	INCF	r0x17, F
; ;ic:173: 	 goto _whilecontinue_2($47)
	BRA	_00151_DS_
; ;ic:174:  _iffalse_16($51) :
; ;ic:175: 	iTemp125 [k146 lr175:177 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x0c ] = (unsigned-char)iTemp84 [k99 lr115:175 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ _vfprintf_val_1_1}[r0x0c r0x0d r0x12 r0x13 ]
; ;ic:176: 	send iTemp0 [k2 lr3:194 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic*  generic* }{ sir@ _vfprintf_stream_1_1}[r0x00 r0x01 r0x02 ]{argreg = 1}
; ;ic:177: 	send iTemp125 [k146 lr175:177 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x0c ]{argreg = 2}
; ;ic:178: 	iTemp126 [k147 lr178:178 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void} = call ___stream_putchar [k34 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( char generic*  generic* , unsigned-char) }
_00155_DS_:
;	.line	170; vfprintf.c	__stream_putchar(stream, (unsigned char)val);
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	___stream_putchar
	MOVLW	0x04
	ADDWF	FSR1L, F
; ;ic:179: 	iTemp3 [k8 lr6:196 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _vfprintf_count_1_1}[r0x09 r0x0a ] = iTemp3 [k8 lr6:196 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _vfprintf_count_1_1}[r0x09 r0x0a ] + 0x1 {literal-unsigned-char}
;	.line	171; vfprintf.c	count++;
	INCF	r0x09, F
	BTFSC	STATUS, 0
	INCF	r0x0a, F
; ;ic:180: 	 goto _ifend_18($58)
	BRA	_00162_DS_
; ;ic:181:  _iffalse_18($57) :
; ;ic:182: 	send iTemp0 [k2 lr3:194 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic*  generic* }{ sir@ _vfprintf_stream_1_1}[r0x00 r0x01 r0x02 ]{argreg = 1}
; ;ic:183: 	send iTemp6 [k13 lr10:183 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0b ]{argreg = 2}
; ;ic:184: 	iTemp132 [k153 lr184:184 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void} = call ___stream_putchar [k34 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( char generic*  generic* , unsigned-char) }
_00161_DS_:
;	.line	175; vfprintf.c	__stream_putchar(stream, *ch);
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	___stream_putchar
	MOVLW	0x04
	ADDWF	FSR1L, F
; ;ic:185: 	iTemp3 [k8 lr6:196 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _vfprintf_count_1_1}[r0x09 r0x0a ] = iTemp3 [k8 lr6:196 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _vfprintf_count_1_1}[r0x09 r0x0a ] + 0x1 {literal-unsigned-char}
;	.line	176; vfprintf.c	count++;
	INCF	r0x09, F
	BTFSC	STATUS, 0
	INCF	r0x0a, F
; ;ic:186: 	 goto _ifend_18($58)
;	.line	182; vfprintf.c	return (count);
	BRA	_00162_DS_
; ;ic:187:  loopExitLbl5($92) :
; ;ic:188: 	iTemp3 [k8 lr6:196 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _vfprintf_count_1_1}[r0x09 r0x0a ] := iTemp83 [k98 lr100:188 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x14 r0x15 ]
_00196_DS_:
;	.line	176; vfprintf.c	count++;
	MOVFF	r0x14, r0x09
	MOVFF	r0x15, r0x0a
; ;ic:189: 	 goto _ifend_18($58)
;	.line	182; vfprintf.c	return (count);
	BRA	_00162_DS_
; ;ic:190:  loopExitLbl6($93) :
; ;ic:191: 	iTemp3 [k8 lr6:196 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _vfprintf_count_1_1}[r0x09 r0x0a ] := iTemp122 [k143 lr151:191 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x0e r0x0f ]
_00197_DS_:
;	.line	176; vfprintf.c	count++;
	MOVFF	r0x0e, r0x09
	MOVFF	r0x0f, r0x0a
; ;ic:192:  _ifend_18($58) :
; ;ic:193: 	iTemp4 [k10 lr4:194 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _vfprintf_ch_1_1}[r0x03 r0x04 r0x05 ] = iTemp4 [k10 lr4:194 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _vfprintf_ch_1_1}[r0x03 r0x04 r0x05 ] + 0x1 {literal-unsigned-char}
_00162_DS_:
;	.line	179; vfprintf.c	ch++;
	INCF	r0x03, F
	BTFSC	STATUS, 0
	INCF	r0x04, F
	BTFSC	STATUS, 0
	INCF	r0x05, F
; ;ic:194: 	 goto _whilecontinue_0($59)
	BRA	_00163_DS_
; ;ic:195:  _whilebreak_0($61) :
; ;ic:196: 	ret iTemp3 [k8 lr6:196 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _vfprintf_count_1_1}[r0x09 r0x0a ]
_00165_DS_:
;	.line	182; vfprintf.c	return (count);
	MOVFF	r0x0a, PRODL
	MOVF	r0x09, W
; ;ic:197:  _return($62) :
; ;ic:198: 	eproc _vfprintf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function    ( char generic*  generic* , char generic* , unsigned-char generic* ) }
	MOVFF	PREINC1, r0x18
	MOVFF	PREINC1, r0x17
	MOVFF	PREINC1, r0x16
	MOVFF	PREINC1, r0x15
	MOVFF	PREINC1, r0x14
	MOVFF	PREINC1, r0x13
	MOVFF	PREINC1, r0x12
	MOVFF	PREINC1, r0x11
	MOVFF	PREINC1, r0x10
	MOVFF	PREINC1, r0x0f
	MOVFF	PREINC1, r0x0e
	MOVFF	PREINC1, r0x0d
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
; code size:	 1292 (0x050c) bytes ( 0.99%)
;           	  646 (0x0286) words
; udata size:	   16 (0x0010) bytes ( 1.25%)
; access size:	   25 (0x0019) bytes


	end
