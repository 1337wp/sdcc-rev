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
	global _printf_tiny

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
	extern _putchar
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
FSR1H	equ	0xfe2
FSR2L	equ	0xfd9
FSR2H	equ	0xfda
INDF0	equ	0xfef
POSTINC1	equ	0xfe6
POSTDEC1	equ	0xfe5
PREINC1	equ	0xfe4
PLUSW1	equ	0xfe3
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

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($60) :
; ;ic:2: 	proc _printf_tiny [k1 lr0:0 so:16]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( char generic* ) }
S_printf_tiny__printf_tiny	code
_printf_tiny:
;	.line	80; printf_tiny.c	void printf_tiny(char *fmt, ...) 
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVLW	0x10
	SUBWF	FSR1L, F
	BTFSS	STATUS, 0
	DECF	FSR1H, F
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
; ;ic:3: 	iTemp1 [k5 lr3:4 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic*  near* }[r0x00 r0x01 ] = &[fmt [k4 lr0:0 so:2]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }]
;	.line	94; printf_tiny.c	va_start(ap,fmt);
	MOVLW	0x02
	ADDWF	FSR2L, W
	MOVWF	r0x00
	MOVLW	0x00
	ADDWFC	FSR2H, W
; #	MOVWF	r0x01
; #;;ic:4: 	iTemp2 [k6 lr4:5 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x00 r0x01 r0x02 ] = (unsigned-char generic* )iTemp1 [k5 lr3:4 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic*  near* }[r0x00 r0x01 ]
; #	MOVF	r0x01, W
; #	MOVWF	r0x01
; #	MOVWF	r0x01
	MOVWF	r0x01
; #	MOVF	r0x00, W
; #	MOVWF	r0x00
	MOVLW	0x80
	MOVWF	r0x02
; ;ic:5: 	iTemp0 [k2 lr5:168 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* }{ sir@ _printf_tiny_ap_1_1}[r0x00 r0x01 r0x02 ] = iTemp2 [k6 lr4:5 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x00 r0x01 r0x02 ] + 0x3 {literal-unsigned-char}
	MOVLW	0x03
	ADDWF	r0x00, F
	MOVLW	0x00
	ADDWFC	r0x01, F
	ADDWFC	r0x02, F
; ;ic:6: 	iTemp4 [k8 lr6:168 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _printf_tiny_ch_1_1}[r0x03 r0x04 r0x05 ] := fmt [k4 lr0:0 so:2]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }
;	.line	95; printf_tiny.c	ch = fmt;
	MOVLW	0x02
	MOVFF	PLUSW2, r0x03
	MOVLW	0x03
	MOVFF	PLUSW2, r0x04
	MOVLW	0x04
	MOVFF	PLUSW2, r0x05
; ;ic:8: 	iTemp93 [k111 lr8:168 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* }{ sir@ _printf_tiny_str1_1_1}[r0x06 r0x07 ] = &[_printf_tiny_buffer_1_1 [k101 lr0:0 so:-16]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char [16] }]
;	.line	97; printf_tiny.c	while( *ch ) {			//for (; *fmt ; fmt++ )
	MOVLW	0xf1
	ADDWF	FSR2L, W
	MOVWF	r0x06
	MOVLW	0xff
	ADDWFC	FSR2H, W
	MOVWF	r0x07
; ;ic:9:  _whilecontinue_0($56) :
; ;ic:10: 	iTemp6 [k11 lr10:160 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x08 ] = @[iTemp4 [k8 lr6:168 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _printf_tiny_ch_1_1}[r0x03 r0x04 r0x05 ]]
_00160_DS_:
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrget1
	MOVWF	r0x08
; ;ic:11: 	if iTemp6 [k11 lr10:160 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x08 ] == 0 goto _return($59)
	MOVF	r0x08, W
	BTFSC	STATUS, 2
	BRA	_00163_DS_
; ;ic:12: 	iTemp9 [k14 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp6 [k11 lr10:160 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x08 ] == 0x25 {literal-char}
;	.line	98; printf_tiny.c	if (*ch == '%') {
	MOVF	r0x08, W
	XORLW	0x25
	BZ	_00195_DS_
	BRA	_00158_DS_
; ;ic:13: 	if iTemp9 [k14 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_17($54)
; ;ic:14: 	iTemp10 [k15 lr14:92 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _printf_tiny_flong_1_1}[r0x09 ] := 0x0 {literal-char}
_00195_DS_:
;	.line	99; printf_tiny.c	ISLONG = 0;
	CLRF	r0x09
; ;ic:15: 	iTemp11 [k17 lr15:76 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _printf_tiny_fstr_1_1}[r0x0a ] := 0x0 {literal-char}
;	.line	100; printf_tiny.c	ISSTR = 0;
	CLRF	r0x0a
; ;ic:16: 	iTemp12 [k19 lr16:100 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _printf_tiny_fchar_1_1}[r0x0b ] := 0x0 {literal-char}
;	.line	101; printf_tiny.c	ISCHAR = 0;
	CLRF	r0x0b
; ;ic:17: 	iTemp13 [k21 lr17:119 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _printf_tiny_nosign_1_1}[r0x0c ] := 0x0 {literal-char}
;	.line	102; printf_tiny.c	HAVESIGN = 0;
	CLRF	r0x0c
; ;ic:18: 	iTemp14 [k23 lr18:150 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _printf_tiny_radix_1_1}[r0x0d ] := 0x0 {literal-char}
;	.line	103; printf_tiny.c	radix = 0;
	CLRF	r0x0d
; ;ic:19: 	iTemp15 [k25 lr19:153 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _printf_tiny_upcase_1_1}[r0x0e ] := 0x0 {literal-char}
;	.line	104; printf_tiny.c	upcase = 0;
	CLRF	r0x0e
; ;ic:20: 	iTemp4 [k8 lr6:168 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _printf_tiny_ch_1_1}[r0x03 r0x04 r0x05 ] = iTemp4 [k8 lr6:168 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _printf_tiny_ch_1_1}[r0x03 r0x04 r0x05 ] + 0x1 {literal-unsigned-char}
;	.line	105; printf_tiny.c	ch++;
	INCF	r0x03, F
	BTFSC	STATUS, 0
	INCF	r0x04, F
	BTFSC	STATUS, 0
	INCF	r0x05, F
; ;ic:21: 	iTemp19 [k30 lr21:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0f ] = @[iTemp4 [k8 lr6:168 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _printf_tiny_ch_1_1}[r0x03 r0x04 r0x05 ]]
;	.line	107; printf_tiny.c	if(*ch == 'u') {
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrget1
; #	MOVWF	r0x0f
; #;;ic:22: 	iTemp20 [k31 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp19 [k30 lr21:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0f ] == 0x75 {literal-char}
; #	MOVF	r0x0f, W
	XORLW	0x75
	BNZ	_00106_DS_
; ;ic:23: 	if iTemp20 [k31 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_0($2)
; ;ic:24: 	iTemp13 [k21 lr17:119 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _printf_tiny_nosign_1_1}[r0x0c ] := 0x1 {literal-char}
;	.line	108; printf_tiny.c	HAVESIGN = 1;
	MOVLW	0x01
	MOVWF	r0x0c
; ;ic:25: 	iTemp4 [k8 lr6:168 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _printf_tiny_ch_1_1}[r0x03 r0x04 r0x05 ] = iTemp4 [k8 lr6:168 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _printf_tiny_ch_1_1}[r0x03 r0x04 r0x05 ] + 0x1 {literal-unsigned-char}
;	.line	109; printf_tiny.c	ch++;
	INCF	r0x03, F
	BTFSC	STATUS, 0
	INCF	r0x04, F
	BTFSC	STATUS, 0
	INCF	r0x05, F
; ;ic:26:  _iffalse_0($2) :
; ;ic:27: 	iTemp24 [k35 lr27:34 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0f ] = @[iTemp4 [k8 lr6:168 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _printf_tiny_ch_1_1}[r0x03 r0x04 r0x05 ]]
_00106_DS_:
;	.line	112; printf_tiny.c	if(*ch == 'l') {
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrget1
; #	MOVWF	r0x0f
; #;;ic:28: 	iTemp25 [k36 lr28:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp24 [k35 lr27:34 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0f ] == 0x6c {literal-char}
; #	MOVF	r0x0f, W
	MOVWF	r0x0f
	XORLW	0x6c
	BNZ	_00110_DS_
; ;ic:29: 	if iTemp25 [k36 lr28:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_2($6)
; ;ic:30: 	iTemp10 [k15 lr14:92 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _printf_tiny_flong_1_1}[r0x09 ] := 0x1 {literal-char}
;	.line	113; printf_tiny.c	ISLONG = 1;
	MOVLW	0x01
	MOVWF	r0x09
; ;ic:31: 	iTemp4 [k8 lr6:168 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _printf_tiny_ch_1_1}[r0x03 r0x04 r0x05 ] = iTemp4 [k8 lr6:168 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _printf_tiny_ch_1_1}[r0x03 r0x04 r0x05 ] + 0x1 {literal-unsigned-char}
;	.line	114; printf_tiny.c	ch++;
	INCF	r0x03, F
	BTFSC	STATUS, 0
	INCF	r0x04, F
	BTFSC	STATUS, 0
	INCF	r0x05, F
; ;ic:32: 	 goto _ifend_2($7)
	BRA	_00111_DS_
; ;ic:33:  _iffalse_2($6) :
; ;ic:34: 	iTemp30 [k41 lr34:35 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp24 [k35 lr27:34 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0f ] == 0x68 {literal-char}
_00110_DS_:
;	.line	116; printf_tiny.c	if(*ch == 'h') {
	MOVF	r0x0f, W
	XORLW	0x68
	BNZ	_00111_DS_
; ;ic:35: 	if iTemp30 [k41 lr34:35 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _ifend_2($7)
; ;ic:36: 	iTemp12 [k19 lr16:100 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _printf_tiny_fchar_1_1}[r0x0b ] := 0x1 {literal-char}
;	.line	117; printf_tiny.c	ISCHAR = 1;
	MOVLW	0x01
	MOVWF	r0x0b
; ;ic:37: 	iTemp4 [k8 lr6:168 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _printf_tiny_ch_1_1}[r0x03 r0x04 r0x05 ] = iTemp4 [k8 lr6:168 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _printf_tiny_ch_1_1}[r0x03 r0x04 r0x05 ] + 0x1 {literal-unsigned-char}
;	.line	118; printf_tiny.c	ch++;
	INCF	r0x03, F
	BTFSC	STATUS, 0
	INCF	r0x04, F
	BTFSC	STATUS, 0
	INCF	r0x05, F
; ;ic:38:  _ifend_2($7) :
; ;ic:39: 	iTemp34 [k45 lr39:72 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0f ] = @[iTemp4 [k8 lr6:168 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _printf_tiny_ch_1_1}[r0x03 r0x04 r0x05 ]]
_00111_DS_:
;	.line	121; printf_tiny.c	if(*ch == 's')ISSTR = 1;
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrget1
; #	MOVWF	r0x0f
; #;;ic:40: 	iTemp35 [k46 lr40:41 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp34 [k45 lr39:72 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0f ] == 0x73 {literal-char}
; #	MOVF	r0x0f, W
	MOVWF	r0x0f
	XORLW	0x73
	BNZ	_00130_DS_
; ;ic:41: 	if iTemp35 [k46 lr40:41 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_9($26)
; ;ic:42: 	iTemp11 [k17 lr15:76 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _printf_tiny_fstr_1_1}[r0x0a ] := 0x1 {literal-char}
	MOVLW	0x01
	MOVWF	r0x0a
; ;ic:43: 	 goto _ifend_9($27)
	BRA	_00131_DS_
; ;ic:44:  _iffalse_9($26) :
; ;ic:45: 	iTemp38 [k49 lr45:46 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp34 [k45 lr39:72 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0f ] == 0x64 {literal-char}
_00130_DS_:
;	.line	122; printf_tiny.c	else if(*ch == 'd')radix = 10;
	MOVF	r0x0f, W
	XORLW	0x64
	BNZ	_00127_DS_
; ;ic:46: 	if iTemp38 [k49 lr45:46 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_8($23)
; ;ic:47: 	iTemp14 [k23 lr18:150 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _printf_tiny_radix_1_1}[r0x0d ] := 0xa {literal-char}
	MOVLW	0x0a
	MOVWF	r0x0d
; ;ic:48: 	 goto _ifend_9($27)
	BRA	_00131_DS_
; ;ic:49:  _iffalse_8($23) :
; ;ic:50: 	iTemp41 [k52 lr50:51 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp34 [k45 lr39:72 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0f ] == 0x78 {literal-char}
_00127_DS_:
;	.line	123; printf_tiny.c	else if(*ch == 'x'){ radix = 16; upcase = 0; }
	MOVF	r0x0f, W
	XORLW	0x78
	BNZ	_00124_DS_
; ;ic:51: 	if iTemp41 [k52 lr50:51 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_7($20)
; ;ic:52: 	iTemp14 [k23 lr18:150 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _printf_tiny_radix_1_1}[r0x0d ] := 0x10 {literal-char}
	MOVLW	0x10
	MOVWF	r0x0d
; ;ic:53: 	iTemp15 [k25 lr19:153 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _printf_tiny_upcase_1_1}[r0x0e ] := 0x0 {literal-char}
	CLRF	r0x0e
; ;ic:54: 	 goto _ifend_9($27)
	BRA	_00131_DS_
; ;ic:55:  _iffalse_7($20) :
; ;ic:56: 	iTemp44 [k55 lr56:57 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp34 [k45 lr39:72 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0f ] == 0x58 {literal-char}
_00124_DS_:
;	.line	124; printf_tiny.c	else if(*ch == 'X'){ radix = 16; upcase = 1; }
	MOVF	r0x0f, W
	XORLW	0x58
	BNZ	_00121_DS_
; ;ic:57: 	if iTemp44 [k55 lr56:57 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_6($17)
; ;ic:58: 	iTemp14 [k23 lr18:150 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _printf_tiny_radix_1_1}[r0x0d ] := 0x10 {literal-char}
	MOVLW	0x10
	MOVWF	r0x0d
; ;ic:59: 	iTemp15 [k25 lr19:153 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _printf_tiny_upcase_1_1}[r0x0e ] := 0x1 {literal-char}
	MOVLW	0x01
	MOVWF	r0x0e
; ;ic:60: 	 goto _ifend_9($27)
	BRA	_00131_DS_
; ;ic:61:  _iffalse_6($17) :
; ;ic:62: 	iTemp47 [k58 lr62:63 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp34 [k45 lr39:72 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0f ] == 0x63 {literal-char}
_00121_DS_:
;	.line	125; printf_tiny.c	else if(*ch == 'c')radix = 0;
	MOVF	r0x0f, W
	XORLW	0x63
	BNZ	_00118_DS_
; ;ic:63: 	if iTemp47 [k58 lr62:63 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_5($14)
; ;ic:64: 	iTemp14 [k23 lr18:150 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _printf_tiny_radix_1_1}[r0x0d ] := 0x0 {literal-char}
	CLRF	r0x0d
; ;ic:65: 	 goto _ifend_9($27)
	BRA	_00131_DS_
; ;ic:66:  _iffalse_5($14) :
; ;ic:67: 	iTemp50 [k61 lr67:68 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp34 [k45 lr39:72 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0f ] == 0x6f {literal-char}
_00118_DS_:
;	.line	126; printf_tiny.c	else if(*ch == 'o')radix = 8;
	MOVF	r0x0f, W
	XORLW	0x6f
	BNZ	_00115_DS_
; ;ic:68: 	if iTemp50 [k61 lr67:68 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_4($11)
; ;ic:69: 	iTemp14 [k23 lr18:150 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _printf_tiny_radix_1_1}[r0x0d ] := 0x8 {literal-char}
	MOVLW	0x08
	MOVWF	r0x0d
; ;ic:70: 	 goto _ifend_9($27)
	BRA	_00131_DS_
; ;ic:71:  _iffalse_4($11) :
; ;ic:72: 	iTemp53 [k64 lr72:73 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp34 [k45 lr39:72 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0f ] == 0x62 {literal-char}
_00115_DS_:
;	.line	127; printf_tiny.c	else if(*ch == 'b')radix = 2;
	MOVF	r0x0f, W
	XORLW	0x62
	BNZ	_00131_DS_
; ;ic:73: 	if iTemp53 [k64 lr72:73 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _ifend_9($27)
; ;ic:74: 	iTemp14 [k23 lr18:150 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _printf_tiny_radix_1_1}[r0x0d ] := 0x2 {literal-char}
	MOVLW	0x02
	MOVWF	r0x0d
; ;ic:75:  _ifend_9($27) :
; ;ic:76: 	if iTemp11 [k17 lr15:76 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _printf_tiny_fstr_1_1}[r0x0a ] == 0 goto _iffalse_16($51)
_00131_DS_:
;	.line	129; printf_tiny.c	if(ISSTR) {
	MOVF	r0x0a, W
	BZ	_00155_DS_
; ;ic:77: 	iTemp55 [k67 lr77:79 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x0a r0x0f r0x10 ] = iTemp0 [k2 lr5:168 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* }{ sir@ _printf_tiny_ap_1_1}[r0x00 r0x01 r0x02 ] + 0x3 {literal-unsigned-char}
;	.line	130; printf_tiny.c	str = va_arg(ap, char *);
	MOVF	r0x00, W
	ADDLW	0x03
	MOVWF	r0x0a
	MOVLW	0x00
	ADDWFC	r0x01, W
	MOVWF	r0x0f
	MOVLW	0x00
	ADDWFC	r0x02, W
	MOVWF	r0x10
; ;ic:78: 	iTemp0 [k2 lr5:168 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* }{ sir@ _printf_tiny_ap_1_1}[r0x00 r0x01 r0x02 ] := iTemp55 [k67 lr77:79 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x0a r0x0f r0x10 ]
	MOVFF	r0x0a, r0x00
	MOVFF	r0x0f, r0x01
	MOVFF	r0x10, r0x02
; ;ic:79: 	iTemp56 [k68 lr79:80 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x0a r0x0f r0x10 ] = iTemp55 [k67 lr77:79 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x0a r0x0f r0x10 ] - 0x3 {literal-unsigned-char}
	MOVLW	0xfd
	ADDWF	r0x0a, F
	MOVLW	0xff
	ADDWFC	r0x0f, F
	ADDWFC	r0x10, F
; ;ic:80: 	iTemp58 [k70 lr80:81 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _printf_tiny_str_1_1}[r0x0a r0x0f r0x10 ] = @[iTemp56 [k68 lr79:80 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x0a r0x0f r0x10 ]]
	MOVFF	r0x0a, FSR0L
	MOVFF	r0x0f, PRODL
	MOVF	r0x10, W
	CALL	__gptrget3
	MOVWF	r0x0a
	MOVFF	PRODL, r0x0f
	MOVFF	PRODH, r0x10
; ;ic:81: 	iTemp54 [k65 lr81:83 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _printf_tiny_str_1_1}[r0x0a r0x0f r0x10 ] := iTemp58 [k70 lr80:81 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _printf_tiny_str_1_1}[r0x0a r0x0f r0x10 ]
; ;ic:83: 	iTemp66 [k79 lr83:90 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x0a r0x0f r0x10 ] := iTemp54 [k65 lr81:83 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _printf_tiny_str_1_1}[r0x0a r0x0f r0x10 ]
; ;ic:84:  _whilecontinue_1($28) :
; ;ic:85: 	iTemp60 [k72 lr85:87 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x11 ] = @[iTemp66 [k79 lr83:90 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x0a r0x0f r0x10 ]]
_00132_DS_:
;	.line	131; printf_tiny.c	while(*str) { putchar(*str);str++;}
	MOVFF	r0x0a, FSR0L
	MOVFF	r0x0f, PRODL
	MOVF	r0x10, W
	CALL	__gptrget1
	MOVWF	r0x11
; ;ic:86: 	if iTemp60 [k72 lr85:87 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x11 ] == 0 goto _ifend_17($55)
	MOVF	r0x11, W
	BTFSC	STATUS, 2
	BRA	_00159_DS_
; ;ic:87: 	send iTemp60 [k72 lr85:87 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x11 ]{argreg = 1}
; ;ic:88: 	iTemp64 [k77 lr88:88 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void} = call _putchar [k73 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( unsigned-char) }
	MOVF	r0x11, W
	CALL	_putchar
; ;ic:89: 	iTemp66 [k79 lr83:90 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x0a r0x0f r0x10 ] = iTemp66 [k79 lr83:90 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x0a r0x0f r0x10 ] + 0x1 {literal-unsigned-char}
	INCF	r0x0a, F
	BTFSC	STATUS, 0
	INCF	r0x0f, F
	BTFSC	STATUS, 0
	INCF	r0x10, F
; ;ic:90: 	 goto _whilecontinue_1($28)
	BRA	_00132_DS_
; ;ic:91:  _iffalse_16($51) :
; ;ic:92: 	if iTemp10 [k15 lr14:92 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _printf_tiny_flong_1_1}[r0x09 ] == 0 goto _iffalse_12($37)
_00155_DS_:
;	.line	133; printf_tiny.c	if(ISLONG)val = va_arg(ap, long);
	MOVF	r0x09, W
	BZ	_00141_DS_
; ;ic:93: 	iTemp68 [k82 lr93:95 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x09 r0x0a r0x0f ] = iTemp0 [k2 lr5:168 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* }{ sir@ _printf_tiny_ap_1_1}[r0x00 r0x01 r0x02 ] + 0x4 {literal-unsigned-char}
	MOVF	r0x00, W
	ADDLW	0x04
	MOVWF	r0x09
	MOVLW	0x00
	ADDWFC	r0x01, W
	MOVWF	r0x0a
	MOVLW	0x00
	ADDWFC	r0x02, W
	MOVWF	r0x0f
; ;ic:94: 	iTemp0 [k2 lr5:168 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* }{ sir@ _printf_tiny_ap_1_1}[r0x00 r0x01 r0x02 ] := iTemp68 [k82 lr93:95 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x09 r0x0a r0x0f ]
	MOVFF	r0x09, r0x00
	MOVFF	r0x0a, r0x01
	MOVFF	r0x0f, r0x02
; ;ic:95: 	iTemp69 [k83 lr95:96 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x09 r0x0a r0x0f ] = iTemp68 [k82 lr93:95 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x09 r0x0a r0x0f ] - 0x4 {literal-unsigned-char}
	MOVLW	0xfc
	ADDWF	r0x09, F
	MOVLW	0xff
	ADDWFC	r0x0a, F
	ADDWFC	r0x0f, F
; ;ic:96: 	iTemp71 [k85 lr96:97 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int}{ sir@ _printf_tiny_val_1_1}[r0x09 r0x0a r0x0f r0x10 ] = @[iTemp69 [k83 lr95:96 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x09 r0x0a r0x0f ]]
	MOVFF	r0x09, FSR0L
	MOVFF	r0x0a, PRODL
	MOVF	r0x0f, W
	CALL	__gptrget4
	MOVWF	r0x09
	MOVFF	PRODL, r0x0a
	MOVFF	PRODH, r0x0f
	MOVFF	FSR0L, r0x10
; ;ic:97: 	iTemp67 [k80 lr97:155 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ _printf_tiny_val_1_1}[r0x09 r0x0a r0x0f r0x10 ] := iTemp71 [k85 lr96:97 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int}{ sir@ _printf_tiny_val_1_1}[r0x09 r0x0a r0x0f r0x10 ]
; ;ic:98: 	 goto _ifend_12($38)
	BRA	_00142_DS_
; ;ic:99:  _iffalse_12($37) :
; ;ic:100: 	if iTemp12 [k19 lr16:100 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _printf_tiny_fchar_1_1}[r0x0b ] == 0 goto _iffalse_11($34)
_00141_DS_:
;	.line	135; printf_tiny.c	if(ISCHAR) {
	MOVF	r0x0b, W
	BZ	_00138_DS_
; ;ic:101: 	iTemp72 [k86 lr101:103 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x0b r0x11 r0x12 ] = iTemp0 [k2 lr5:168 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* }{ sir@ _printf_tiny_ap_1_1}[r0x00 r0x01 r0x02 ] + 0x2 {literal-unsigned-char}
;	.line	136; printf_tiny.c	val = (unsigned char)va_arg(ap, int); // FIXME: SDCC casts char arguments into ints
	MOVF	r0x00, W
	ADDLW	0x02
	MOVWF	r0x0b
	MOVLW	0x00
	ADDWFC	r0x01, W
	MOVWF	r0x11
	MOVLW	0x00
	ADDWFC	r0x02, W
	MOVWF	r0x12
; ;ic:102: 	iTemp0 [k2 lr5:168 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* }{ sir@ _printf_tiny_ap_1_1}[r0x00 r0x01 r0x02 ] := iTemp72 [k86 lr101:103 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x0b r0x11 r0x12 ]
	MOVFF	r0x0b, r0x00
	MOVFF	r0x11, r0x01
	MOVFF	r0x12, r0x02
; ;ic:103: 	iTemp73 [k87 lr103:104 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x0b r0x11 r0x12 ] = iTemp72 [k86 lr101:103 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x0b r0x11 r0x12 ] - 0x2 {literal-unsigned-char}
	MOVLW	0xfe
	ADDWF	r0x0b, F
	MOVLW	0xff
	ADDWFC	r0x11, F
	ADDWFC	r0x12, F
; ;ic:104: 	iTemp75 [k89 lr104:105 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x0b r0x11 ] = @[iTemp73 [k87 lr103:104 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x0b r0x11 r0x12 ]]
	MOVFF	r0x0b, FSR0L
	MOVFF	r0x11, PRODL
	MOVF	r0x12, W
	CALL	__gptrget2
	MOVWF	r0x0b
; ;ic:105: 	iTemp76 [k90 lr105:106 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x0b ] = (unsigned-char)iTemp75 [k89 lr104:105 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x0b r0x11 ]
; ;ic:106: 	iTemp67 [k80 lr97:155 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ _printf_tiny_val_1_1}[r0x09 r0x0a r0x0f r0x10 ] = (long-int)iTemp76 [k90 lr105:106 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x0b ]
	MOVFF	r0x0b, r0x09
	CLRF	r0x0a
	CLRF	r0x0f
	CLRF	r0x10
; ;ic:107: 	if iTemp13 [k21 lr17:119 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _printf_tiny_nosign_1_1}[r0x0c ] != 0 goto _ifend_12($38)
;	.line	137; printf_tiny.c	if (!HAVESIGN) val = (char)val; // FIXME cont'd: sign-extend if required
	MOVF	r0x0c, W
	BNZ	_00142_DS_
; ;ic:108: 	iTemp78 [k92 lr108:109 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0b ] = (char)iTemp67 [k80 lr97:155 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ _printf_tiny_val_1_1}[r0x09 r0x0a r0x0f r0x10 ]
	MOVF	r0x09, W
	MOVWF	r0x0b
; ;ic:109: 	iTemp67 [k80 lr97:155 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ _printf_tiny_val_1_1}[r0x09 r0x0a r0x0f r0x10 ] = (long-int)iTemp78 [k92 lr108:109 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0b ]
	MOVFF	r0x0b, r0x09
	CLRF	WREG
	BTFSC	r0x0b, 7
	MOVLW	0xff
	MOVWF	r0x0a
	MOVWF	r0x0f
	MOVWF	r0x10
; ;ic:110: 	 goto _ifend_12($38)
	BRA	_00142_DS_
; ;ic:111:  _iffalse_11($34) :
; ;ic:112: 	iTemp80 [k94 lr112:114 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x0b r0x11 r0x12 ] = iTemp0 [k2 lr5:168 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* }{ sir@ _printf_tiny_ap_1_1}[r0x00 r0x01 r0x02 ] + 0x2 {literal-unsigned-char}
_00138_DS_:
;	.line	139; printf_tiny.c	val = va_arg(ap, int);
	MOVF	r0x00, W
	ADDLW	0x02
	MOVWF	r0x0b
	MOVLW	0x00
	ADDWFC	r0x01, W
	MOVWF	r0x11
	MOVLW	0x00
	ADDWFC	r0x02, W
	MOVWF	r0x12
; ;ic:113: 	iTemp0 [k2 lr5:168 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* }{ sir@ _printf_tiny_ap_1_1}[r0x00 r0x01 r0x02 ] := iTemp80 [k94 lr112:114 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x0b r0x11 r0x12 ]
	MOVFF	r0x0b, r0x00
	MOVFF	r0x11, r0x01
	MOVFF	r0x12, r0x02
; ;ic:114: 	iTemp81 [k95 lr114:115 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x0b r0x11 r0x12 ] = iTemp80 [k94 lr112:114 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x0b r0x11 r0x12 ] - 0x2 {literal-unsigned-char}
	MOVLW	0xfe
	ADDWF	r0x0b, F
	MOVLW	0xff
	ADDWFC	r0x11, F
	ADDWFC	r0x12, F
; ;ic:115: 	iTemp83 [k97 lr115:116 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x0b r0x11 ] = @[iTemp81 [k95 lr114:115 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x0b r0x11 r0x12 ]]
	MOVFF	r0x0b, FSR0L
	MOVFF	r0x11, PRODL
	MOVF	r0x12, W
	CALL	__gptrget2
	MOVWF	r0x0b
	MOVFF	PRODL, r0x11
; ;ic:116: 	iTemp67 [k80 lr97:155 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ _printf_tiny_val_1_1}[r0x09 r0x0a r0x0f r0x10 ] = (long-int)iTemp83 [k97 lr115:116 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x0b r0x11 ]
	MOVFF	r0x0b, r0x09
	MOVFF	r0x11, r0x0a
	CLRF	WREG
	BTFSC	r0x11, 7
	MOVLW	0xff
	MOVWF	r0x0f
	MOVWF	r0x10
; ;ic:117:  _ifend_12($38) :
; ;ic:118: 	if iTemp14 [k23 lr18:150 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _printf_tiny_radix_1_1}[r0x0d ] == 0 goto _iffalse_15($48)
_00142_DS_:
;	.line	142; printf_tiny.c	if(radix) {
	MOVF	r0x0d, W
	BTFSC	STATUS, 2
	BRA	_00152_DS_
; ;ic:119: 	if iTemp13 [k21 lr17:119 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _printf_tiny_nosign_1_1}[r0x0c ] == 0 goto _iffalse_13($40)
;	.line	143; printf_tiny.c	if(HAVESIGN)
	MOVF	r0x0c, W
	BZ	_00144_DS_
; ;ic:120: 	send iTemp67 [k80 lr97:155 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ _printf_tiny_val_1_1}[r0x09 r0x0a r0x0f r0x10 ]{argreg = 1}
; ;ic:121: 	send iTemp93 [k111 lr8:168 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* }{ sir@ _printf_tiny_str1_1_1}[r0x06 r0x07 ]{argreg = 2}
; ;ic:122: 	send iTemp14 [k23 lr18:150 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _printf_tiny_radix_1_1}[r0x0d ]{argreg = 3}
; ;ic:123: 	iTemp88 [k104 lr123:123 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void} = call _ultoa [k99 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( unsigned-long-int, char near* , unsigned-char) }
;	.line	144; printf_tiny.c	ultoa(val, buffer, radix);
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	CALL	_ultoa
	MOVLW	0x07
	ADDWF	FSR1L, F
; ;ic:124: 	 goto _ifend_13($41)
	BRA	_00145_DS_
; ;ic:125:  _iffalse_13($40) :
; ;ic:126: 	send iTemp67 [k80 lr97:155 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ _printf_tiny_val_1_1}[r0x09 r0x0a r0x0f r0x10 ]{argreg = 1}
; ;ic:127: 	send iTemp93 [k111 lr8:168 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* }{ sir@ _printf_tiny_str1_1_1}[r0x06 r0x07 ]{argreg = 2}
; ;ic:128: 	send iTemp14 [k23 lr18:150 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _printf_tiny_radix_1_1}[r0x0d ]{argreg = 3}
; ;ic:129: 	iTemp91 [k108 lr129:129 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void} = call _ltoa [k105 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( long-int, char near* , unsigned-char) }
_00144_DS_:
;	.line	146; printf_tiny.c	ltoa (val, buffer, radix);
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	CALL	_ltoa
	MOVLW	0x07
	ADDWF	FSR1L, F
; ;ic:130:  _ifend_13($41) :
; ;ic:131: 	iTemp92 [k109 lr131:133 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char near* }[r0x0b r0x0c ] := iTemp93 [k111 lr8:168 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* }{ sir@ _printf_tiny_str1_1_1}[r0x06 r0x07 ]
_00145_DS_:
;	.line	148; printf_tiny.c	str1 = buffer;
	MOVFF	r0x06, r0x0b
	MOVFF	r0x07, r0x0c
; ;ic:133: 	iTemp105 [k124 lr133:153 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* }[r0x0b r0x0c ] := iTemp92 [k109 lr131:133 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char near* }[r0x0b r0x0c ]
; ;ic:134:  _whilecontinue_2($44) :
; ;ic:135: 	iTemp95 [k113 lr135:137 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x11 ] = @[iTemp105 [k124 lr133:153 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char near* }[r0x0b r0x0c ]]
_00148_DS_:
;	.line	149; printf_tiny.c	while( (*str1) ) {
	MOVFF	r0x0b, FSR0L
	MOVFF	r0x0c, FSR0H
	MOVFF	INDF0, r0x11
; ;ic:136: 	if iTemp95 [k113 lr135:137 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x11 ] == 0 goto _ifend_17($55)
	MOVF	r0x11, W
	BZ	_00159_DS_
; ;ic:137: 	iTemp97 [k115 lr137:138 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x11 ] := iTemp95 [k113 lr135:137 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x11 ]
; ;ic:138: 	iTemp14 [k23 lr18:150 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _printf_tiny_radix_1_1}[r0x0d ] := iTemp97 [k115 lr137:138 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x11 ]
;	.line	150; printf_tiny.c	radix = *str1;
	MOVFF	r0x11, r0x0d
; ;ic:139: 	if iTemp15 [k25 lr19:153 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _printf_tiny_upcase_1_1}[r0x0e ] == 0 goto _iffalse_14($43)
;	.line	151; printf_tiny.c	if(upcase)
	MOVF	r0x0e, W
	BZ	_00147_DS_
; ;ic:140: 	send iTemp14 [k23 lr18:150 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _printf_tiny_radix_1_1}[r0x0d ]{argreg = 1}
; ;ic:141: 	iTemp99 [k118 lr141:142 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x11 ] = call _islower [k116 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( unsigned-char) }
;	.line	152; printf_tiny.c	radix = toupper( radix );
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	CALL	_islower
	MOVWF	r0x11
	INCF	FSR1L, F
; ;ic:142: 	if iTemp99 [k118 lr141:142 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x11 ] == 0 goto iTempLbl0($61)
	MOVF	r0x11, W
	BZ	_00165_DS_
; ;ic:143: 	iTemp100 [k119 lr143:148 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x11 ] = iTemp14 [k23 lr18:150 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _printf_tiny_radix_1_1}[r0x0d ] & 0xffffffdf {literal-char}
	MOVLW	0xdf
	ANDWF	r0x0d, W
	MOVWF	r0x11
; ;ic:144: 	 goto iTempLbl1($62)
	BRA	_00166_DS_
; ;ic:145:  iTempLbl0($61) :
; ;ic:146: 	iTemp100 [k119 lr143:148 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x11 ] := iTemp14 [k23 lr18:150 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _printf_tiny_radix_1_1}[r0x0d ]
_00165_DS_:
	MOVFF	r0x0d, r0x11
; ;ic:147:  iTempLbl1($62) :
; ;ic:148: 	iTemp14 [k23 lr18:150 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _printf_tiny_radix_1_1}[r0x0d ] := iTemp100 [k119 lr143:148 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x11 ]
_00166_DS_:
	MOVFF	r0x11, r0x0d
; ;ic:149:  _iffalse_14($43) :
; ;ic:150: 	send iTemp14 [k23 lr18:150 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _printf_tiny_radix_1_1}[r0x0d ]{argreg = 1}
; ;ic:151: 	iTemp103 [k122 lr151:151 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void} = call _putchar [k73 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( unsigned-char) }
_00147_DS_:
;	.line	153; printf_tiny.c	putchar ( radix );
	MOVF	r0x0d, W
	CALL	_putchar
; ;ic:152: 	iTemp105 [k124 lr133:153 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* }[r0x0b r0x0c ] = iTemp105 [k124 lr133:153 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* }[r0x0b r0x0c ] + 0x1 {literal-unsigned-char}
;	.line	154; printf_tiny.c	str1++;
	INCF	r0x0b, F
	BTFSC	STATUS, 0
	INCF	r0x0c, F
; ;ic:153: 	 goto _whilecontinue_2($44)
	BRA	_00148_DS_
; ;ic:154:  _iffalse_15($48) :
; ;ic:155: 	iTemp106 [k125 lr155:156 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x09 ] = (char)iTemp67 [k80 lr97:155 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ _printf_tiny_val_1_1}[r0x09 r0x0a r0x0f r0x10 ]
; ;ic:156: 	send iTemp106 [k125 lr155:156 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x09 ]{argreg = 1}
; ;ic:157: 	iTemp108 [k127 lr157:157 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void} = call _putchar [k73 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( unsigned-char) }
_00152_DS_:
;	.line	157; printf_tiny.c	putchar((char)val);
	MOVF	r0x09, W
	CALL	_putchar
; ;ic:158: 	 goto _ifend_17($55)
	BRA	_00159_DS_
; ;ic:159:  _iffalse_17($54) :
; ;ic:160: 	send iTemp6 [k11 lr10:160 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x08 ]{argreg = 1}
; ;ic:161: 	iTemp112 [k131 lr161:161 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void} = call _putchar [k73 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( unsigned-char) }
_00158_DS_:
;	.line	160; printf_tiny.c	putchar(*ch);
	MOVF	r0x08, W
	CALL	_putchar
; ;ic:166:  _ifend_17($55) :
; ;ic:167: 	iTemp4 [k8 lr6:168 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _printf_tiny_ch_1_1}[r0x03 r0x04 r0x05 ] = iTemp4 [k8 lr6:168 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _printf_tiny_ch_1_1}[r0x03 r0x04 r0x05 ] + 0x1 {literal-unsigned-char}
_00159_DS_:
;	.line	162; printf_tiny.c	ch++;
	INCF	r0x03, F
	BTFSC	STATUS, 0
	INCF	r0x04, F
	BTFSC	STATUS, 0
	INCF	r0x05, F
; ;ic:168: 	 goto _whilecontinue_0($56)
	BRA	_00160_DS_
; ;ic:169:  _return($59) :
; ;ic:170: 	eproc _printf_tiny [k1 lr0:0 so:16]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( char generic* ) }
_00163_DS_:
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
	MOVWF	POSTINC1
	MOVLW	0x0f
	ADDWF	FSR1L, F
	BTFSC	STATUS, 0
	INCF	FSR1H, F
	COMF	WREG, F
	MOVF	PLUSW1, W
	MOVFF	PREINC1, FSR2L
	RETURN	



; Statistics:
; code size:	 1028 (0x0404) bytes ( 0.78%)
;           	  514 (0x0202) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	   19 (0x0013) bytes


	end
