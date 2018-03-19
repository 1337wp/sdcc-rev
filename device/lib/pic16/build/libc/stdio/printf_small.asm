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
	global _printf_small

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern __gptrget1
	extern __gptrget3
	extern __gptrget4
	extern __gptrget2
	extern _stdin
	extern _stdout
	extern _putchar
	extern _ltoa
	extern _x_ftoa
;--------------------------------------------------------
;	Equates to used internal registers
;--------------------------------------------------------
STATUS	equ	0xfd8
WREG	equ	0xfe8
FSR0L	equ	0xfe9
FSR0H	equ	0xfea
FSR1L	equ	0xfe1
FSR2L	equ	0xfd9
FSR2H	equ	0xfda
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

udata_printf_small_0	udata
_printf_small_buffer_1_1	res	16

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($60) :
; ;ic:2: 	proc _printf_small [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( char generic* ) }
S_printf_small__printf_small	code
_printf_small:
;	.line	59; printf_small.c	void printf_small(char *fmt, ...) __reentrant
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
; ;ic:3: 	iTemp0 [k2 lr3:184 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _printf_small_ch_1_1}[r0x00 r0x01 r0x02 ] := fmt [k4 lr0:0 so:2]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }
;	.line	74; printf_small.c	ch = fmt;
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
; ;ic:4: 	iTemp2 [k7 lr4:5 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic*  near* }[r0x03 r0x04 ] = &[fmt [k4 lr0:0 so:2]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }]
;	.line	75; printf_small.c	va_start(ap,fmt);
	MOVLW	0x02
	ADDWF	FSR2L, W
	MOVWF	r0x03
	MOVLW	0x00
	ADDWFC	FSR2H, W
; #	MOVWF	r0x04
; #;;ic:5: 	iTemp3 [k8 lr5:6 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x03 r0x04 r0x05 ] = (unsigned-char generic* )iTemp2 [k7 lr4:5 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic*  near* }[r0x03 r0x04 ]
; #	MOVF	r0x04, W
; #	MOVWF	r0x04
; #	MOVWF	r0x04
	MOVWF	r0x04
; #	MOVF	r0x03, W
; #	MOVWF	r0x03
	MOVLW	0x80
	MOVWF	r0x05
; ;ic:6: 	iTemp1 [k5 lr6:184 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* }{ sir@ _printf_small_ap_1_1}[r0x03 r0x04 r0x05 ] = iTemp3 [k8 lr5:6 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x03 r0x04 r0x05 ] + 0x3 {literal-unsigned-char}
	MOVLW	0x03
	ADDWF	r0x03, F
	MOVLW	0x00
	ADDWFC	r0x04, F
	ADDWFC	r0x05, F
; ;ic:8: 	iTemp65 [k81 lr8:184 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{char near* }[remat] = &[_printf_small_buffer_1_1 [k76 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char [16] }]
; ;ic:9: 	iTemp80 [k96 lr9:184 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{char near* }[remat] := iTemp65 [k81 lr8:184 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{char near* }[remat]
; ;ic:10: 	iTemp107 [k125 lr10:184 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{char near* }[remat] := iTemp65 [k81 lr8:184 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{char near* }[remat]
; ;ic:11:  _whilecontinue_0($56) :
; ;ic:12: 	iTemp6 [k11 lr12:174 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x06 ] = @[iTemp0 [k2 lr3:184 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _printf_small_ch_1_1}[r0x00 r0x01 r0x02 ]]
_00160_DS_:
;	.line	77; printf_small.c	while( *ch ) {			//for (; *fmt ; fmt++ )
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget1
	MOVWF	r0x06
; ;ic:13: 	if iTemp6 [k11 lr12:174 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x06 ] == 0 goto _return($59)
	MOVF	r0x06, W
	BTFSC	STATUS, 2
	BRA	_00163_DS_
; ;ic:14: 	iTemp9 [k14 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp6 [k11 lr12:174 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x06 ] == 0x25 {literal-char}
;	.line	78; printf_small.c	if (*ch == '%') {
	MOVF	r0x06, W
	XORLW	0x25
	BZ	_00197_DS_
	BRA	_00158_DS_
; ;ic:15: 	if iTemp9 [k14 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_13($54)
; ;ic:16: 	iTemp13 [k21 lr16:81 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _printf_small_ffloat_1_1}[r0x07 ] := 0x0 {literal-char}
_00197_DS_:
;	.line	79; printf_small.c	flong = fstr = fchar = ffloat = 0;
	CLRF	r0x07
; ;ic:17: 	iTemp12 [k19 lr17:136 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _printf_small_fchar_1_1}[r0x08 ] := 0x0 {literal-char}
	CLRF	r0x08
; ;ic:18: 	iTemp11 [k17 lr18:64 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _printf_small_fstr_1_1}[r0x09 ] := 0x0 {literal-char}
	CLRF	r0x09
; ;ic:19: 	iTemp10 [k15 lr19:128 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _printf_small_flong_1_1}[r0x0a ] := 0x0 {literal-char}
	CLRF	r0x0a
; ;ic:20: 	iTemp14 [k23 lr20:155 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _printf_small_radix_1_1}[r0x0b ] := 0x0 {literal-char}
;	.line	80; printf_small.c	radix = 0;
	CLRF	r0x0b
; ;ic:21: 	iTemp0 [k2 lr3:184 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _printf_small_ch_1_1}[r0x00 r0x01 r0x02 ] = iTemp0 [k2 lr3:184 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _printf_small_ch_1_1}[r0x00 r0x01 r0x02 ] + 0x1 {literal-unsigned-char}
;	.line	81; printf_small.c	ch++;
	INCF	r0x00, F
	BTFSC	STATUS, 0
	INCF	r0x01, F
	BTFSC	STATUS, 0
	INCF	r0x02, F
; ;ic:22: 	iTemp18 [k28 lr22:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0c ] = @[iTemp0 [k2 lr3:184 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _printf_small_ch_1_1}[r0x00 r0x01 r0x02 ]]
;	.line	83; printf_small.c	if(*ch == 'l') {
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget1
; #	MOVWF	r0x0c
; #;;ic:23: 	iTemp19 [k29 lr23:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp18 [k28 lr22:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0c ] == 0x6c {literal-char}
; #	MOVF	r0x0c, W
	MOVWF	r0x0c
	XORLW	0x6c
	BNZ	_00108_DS_
; ;ic:24: 	if iTemp19 [k29 lr23:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_1($4)
; ;ic:25: 	iTemp10 [k15 lr19:128 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _printf_small_flong_1_1}[r0x0a ] := 0x1 {literal-char}
;	.line	84; printf_small.c	flong = 1;
	MOVLW	0x01
	MOVWF	r0x0a
; ;ic:26: 	iTemp0 [k2 lr3:184 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _printf_small_ch_1_1}[r0x00 r0x01 r0x02 ] = iTemp0 [k2 lr3:184 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _printf_small_ch_1_1}[r0x00 r0x01 r0x02 ] + 0x1 {literal-unsigned-char}
;	.line	85; printf_small.c	ch++;
	INCF	r0x00, F
	BTFSC	STATUS, 0
	INCF	r0x01, F
	BTFSC	STATUS, 0
	INCF	r0x02, F
; ;ic:27: 	 goto _ifend_1($5)
	BRA	_00109_DS_
; ;ic:28:  _iffalse_1($4) :
; ;ic:29: 	iTemp24 [k34 lr29:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp18 [k28 lr22:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0c ] == 0x68 {literal-char}
_00108_DS_:
;	.line	87; printf_small.c	if(*ch == 'h') {
	MOVF	r0x0c, W
	XORLW	0x68
	BNZ	_00109_DS_
; ;ic:30: 	if iTemp24 [k34 lr29:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _ifend_1($5)
; ;ic:31: 	iTemp12 [k19 lr17:136 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _printf_small_fchar_1_1}[r0x08 ] := 0x1 {literal-char}
;	.line	88; printf_small.c	fchar = 1;
	MOVLW	0x01
	MOVWF	r0x08
; ;ic:32: 	iTemp0 [k2 lr3:184 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _printf_small_ch_1_1}[r0x00 r0x01 r0x02 ] = iTemp0 [k2 lr3:184 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _printf_small_ch_1_1}[r0x00 r0x01 r0x02 ] + 0x1 {literal-unsigned-char}
;	.line	89; printf_small.c	ch++;
	INCF	r0x00, F
	BTFSC	STATUS, 0
	INCF	r0x01, F
	BTFSC	STATUS, 0
	INCF	r0x02, F
; ;ic:33:  _ifend_1($5) :
; ;ic:34: 	iTemp28 [k38 lr34:60 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0c ] = @[iTemp0 [k2 lr3:184 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _printf_small_ch_1_1}[r0x00 r0x01 r0x02 ]]
_00109_DS_:
;	.line	92; printf_small.c	if(*ch == 's')fstr = 1;
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget1
; #	MOVWF	r0x0c
; #;;ic:35: 	iTemp29 [k39 lr35:36 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp28 [k38 lr34:60 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0c ] == 0x73 {literal-char}
; #	MOVF	r0x0c, W
	MOVWF	r0x0c
	XORLW	0x73
	BNZ	_00125_DS_
; ;ic:36: 	if iTemp29 [k39 lr35:36 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_7($21)
; ;ic:37: 	iTemp11 [k17 lr18:64 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _printf_small_fstr_1_1}[r0x09 ] := 0x1 {literal-char}
	MOVLW	0x01
	MOVWF	r0x09
; ;ic:38: 	 goto _ifend_7($22)
	BRA	_00126_DS_
; ;ic:39:  _iffalse_7($21) :
; ;ic:40: 	iTemp32 [k42 lr40:41 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp28 [k38 lr34:60 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0c ] == 0x66 {literal-char}
_00125_DS_:
;	.line	93; printf_small.c	else if(*ch == 'f')ffloat = 1;
	MOVF	r0x0c, W
	XORLW	0x66
	BNZ	_00122_DS_
; ;ic:41: 	if iTemp32 [k42 lr40:41 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_6($18)
; ;ic:42: 	iTemp13 [k21 lr16:81 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _printf_small_ffloat_1_1}[r0x07 ] := 0x1 {literal-char}
	MOVLW	0x01
	MOVWF	r0x07
; ;ic:43: 	 goto _ifend_7($22)
	BRA	_00126_DS_
; ;ic:44:  _iffalse_6($18) :
; ;ic:45: 	iTemp35 [k45 lr45:46 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp28 [k38 lr34:60 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0c ] == 0x64 {literal-char}
_00122_DS_:
;	.line	94; printf_small.c	else if(*ch == 'd')radix = 10;
	MOVF	r0x0c, W
	XORLW	0x64
	BNZ	_00119_DS_
; ;ic:46: 	if iTemp35 [k45 lr45:46 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_5($15)
; ;ic:47: 	iTemp14 [k23 lr20:155 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _printf_small_radix_1_1}[r0x0b ] := 0xa {literal-char}
	MOVLW	0x0a
	MOVWF	r0x0b
; ;ic:48: 	 goto _ifend_7($22)
	BRA	_00126_DS_
; ;ic:49:  _iffalse_5($15) :
; ;ic:50: 	iTemp38 [k48 lr50:51 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp28 [k38 lr34:60 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0c ] == 0x78 {literal-char}
_00119_DS_:
;	.line	95; printf_small.c	else if(*ch == 'x')radix = 16;
	MOVF	r0x0c, W
	XORLW	0x78
	BNZ	_00116_DS_
; ;ic:51: 	if iTemp38 [k48 lr50:51 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_4($12)
; ;ic:52: 	iTemp14 [k23 lr20:155 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _printf_small_radix_1_1}[r0x0b ] := 0x10 {literal-char}
	MOVLW	0x10
	MOVWF	r0x0b
; ;ic:53: 	 goto _ifend_7($22)
	BRA	_00126_DS_
; ;ic:54:  _iffalse_4($12) :
; ;ic:55: 	iTemp41 [k51 lr55:56 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp28 [k38 lr34:60 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0c ] == 0x63 {literal-char}
_00116_DS_:
;	.line	96; printf_small.c	else if(*ch == 'c')radix = 0;
	MOVF	r0x0c, W
	XORLW	0x63
	BNZ	_00113_DS_
; ;ic:56: 	if iTemp41 [k51 lr55:56 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_3($9)
; ;ic:57: 	iTemp14 [k23 lr20:155 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _printf_small_radix_1_1}[r0x0b ] := 0x0 {literal-char}
	CLRF	r0x0b
; ;ic:58: 	 goto _ifend_7($22)
	BRA	_00126_DS_
; ;ic:59:  _iffalse_3($9) :
; ;ic:60: 	iTemp44 [k54 lr60:61 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp28 [k38 lr34:60 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0c ] == 0x6f {literal-char}
_00113_DS_:
;	.line	97; printf_small.c	else if(*ch == 'o')radix = 8;
	MOVF	r0x0c, W
	XORLW	0x6f
	BNZ	_00126_DS_
; ;ic:61: 	if iTemp44 [k54 lr60:61 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _ifend_7($22)
; ;ic:62: 	iTemp14 [k23 lr20:155 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _printf_small_radix_1_1}[r0x0b ] := 0x8 {literal-char}
	MOVLW	0x08
	MOVWF	r0x0b
; ;ic:63:  _ifend_7($22) :
; ;ic:64: 	if iTemp11 [k17 lr18:64 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _printf_small_fstr_1_1}[r0x09 ] == 0 goto _iffalse_12($51)
_00126_DS_:
;	.line	99; printf_small.c	if(fstr) {
	MOVF	r0x09, W
	BZ	_00155_DS_
; ;ic:65: 	iTemp46 [k57 lr65:67 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x09 r0x0c r0x0d ] = iTemp1 [k5 lr6:184 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* }{ sir@ _printf_small_ap_1_1}[r0x03 r0x04 r0x05 ] + 0x3 {literal-unsigned-char}
;	.line	100; printf_small.c	str = va_arg(ap, char *);
	MOVF	r0x03, W
	ADDLW	0x03
	MOVWF	r0x09
	MOVLW	0x00
	ADDWFC	r0x04, W
	MOVWF	r0x0c
	MOVLW	0x00
	ADDWFC	r0x05, W
	MOVWF	r0x0d
; ;ic:66: 	iTemp1 [k5 lr6:184 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* }{ sir@ _printf_small_ap_1_1}[r0x03 r0x04 r0x05 ] := iTemp46 [k57 lr65:67 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x09 r0x0c r0x0d ]
	MOVFF	r0x09, r0x03
	MOVFF	r0x0c, r0x04
	MOVFF	r0x0d, r0x05
; ;ic:67: 	iTemp47 [k58 lr67:68 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x09 r0x0c r0x0d ] = iTemp46 [k57 lr65:67 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x09 r0x0c r0x0d ] - 0x3 {literal-unsigned-char}
	MOVLW	0xfd
	ADDWF	r0x09, F
	MOVLW	0xff
	ADDWFC	r0x0c, F
	ADDWFC	r0x0d, F
; ;ic:68: 	iTemp49 [k60 lr68:69 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _printf_small_str_1_1}[r0x09 r0x0c r0x0d ] = @[iTemp47 [k58 lr67:68 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x09 r0x0c r0x0d ]]
	MOVFF	r0x09, FSR0L
	MOVFF	r0x0c, PRODL
	MOVF	r0x0d, W
	CALL	__gptrget3
	MOVWF	r0x09
	MOVFF	PRODL, r0x0c
	MOVFF	PRODH, r0x0d
; ;ic:69: 	iTemp45 [k55 lr69:71 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _printf_small_str_1_1}[r0x09 r0x0c r0x0d ] := iTemp49 [k60 lr68:69 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _printf_small_str_1_1}[r0x09 r0x0c r0x0d ]
; ;ic:71: 	iTemp53 [k65 lr71:79 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x09 r0x0c r0x0d ] := iTemp45 [k55 lr69:71 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _printf_small_str_1_1}[r0x09 r0x0c r0x0d ]
; ;ic:72:  _whilecontinue_1($23) :
; ;ic:73: 	iTemp51 [k62 lr73:75 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0e ] = @[iTemp53 [k65 lr71:79 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x09 r0x0c r0x0d ]]
_00127_DS_:
;	.line	101; printf_small.c	while (*str) putchar(*str++);
	MOVFF	r0x09, FSR0L
	MOVFF	r0x0c, PRODL
	MOVF	r0x0d, W
	CALL	__gptrget1
	MOVWF	r0x0e
; ;ic:74: 	if iTemp51 [k62 lr73:75 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0e ] == 0 goto _ifend_13($55)
	MOVF	r0x0e, W
	BTFSC	STATUS, 2
	BRA	_00159_DS_
; ;ic:75: 	iTemp54 [k66 lr75:77 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0e ] := iTemp51 [k62 lr73:75 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0e ]
; ;ic:76: 	iTemp53 [k65 lr71:79 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x09 r0x0c r0x0d ] = iTemp53 [k65 lr71:79 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x09 r0x0c r0x0d ] + 0x1 {literal-unsigned-char}
	INCF	r0x09, F
	BTFSC	STATUS, 0
	INCF	r0x0c, F
	BTFSC	STATUS, 0
	INCF	r0x0d, F
; ;ic:77: 	send iTemp54 [k66 lr75:77 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0e ]{argreg = 1}
; ;ic:78: 	iTemp56 [k68 lr78:78 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void} = call _putchar [k63 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( unsigned-char) }
	MOVF	r0x0e, W
	CALL	_putchar
; ;ic:79: 	 goto _whilecontinue_1($23)
	BRA	_00127_DS_
; ;ic:80:  _iffalse_12($51) :
; ;ic:81: 	if iTemp13 [k21 lr16:81 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _printf_small_ffloat_1_1}[r0x07 ] == 0 goto _iffalse_11($48)
_00155_DS_:
;	.line	103; printf_small.c	if(ffloat) {
	MOVF	r0x07, W
	BTFSC	STATUS, 2
	BRA	_00152_DS_
; ;ic:82: 	iTemp58 [k71 lr82:84 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x07 r0x09 r0x0c ] = iTemp1 [k5 lr6:184 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* }{ sir@ _printf_small_ap_1_1}[r0x03 r0x04 r0x05 ] + 0x4 {literal-unsigned-char}
;	.line	104; printf_small.c	flt = va_arg(ap, float);
	MOVF	r0x03, W
	ADDLW	0x04
	MOVWF	r0x07
	MOVLW	0x00
	ADDWFC	r0x04, W
	MOVWF	r0x09
	MOVLW	0x00
	ADDWFC	r0x05, W
	MOVWF	r0x0c
; ;ic:83: 	iTemp1 [k5 lr6:184 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* }{ sir@ _printf_small_ap_1_1}[r0x03 r0x04 r0x05 ] := iTemp58 [k71 lr82:84 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x07 r0x09 r0x0c ]
	MOVFF	r0x07, r0x03
	MOVFF	r0x09, r0x04
	MOVFF	r0x0c, r0x05
; ;ic:84: 	iTemp59 [k72 lr84:85 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x07 r0x09 r0x0c ] = iTemp58 [k71 lr82:84 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x07 r0x09 r0x0c ] - 0x4 {literal-unsigned-char}
	MOVLW	0xfc
	ADDWF	r0x07, F
	MOVLW	0xff
	ADDWFC	r0x09, F
	ADDWFC	r0x0c, F
; ;ic:85: 	iTemp61 [k74 lr85:86 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}{ sir@ _printf_small_flt_1_1}[r0x07 r0x09 r0x0c r0x0d ] = @[iTemp59 [k72 lr84:85 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x07 r0x09 r0x0c ]]
	MOVFF	r0x07, FSR0L
	MOVFF	r0x09, PRODL
	MOVF	r0x0c, W
	CALL	__gptrget4
	MOVWF	r0x07
	MOVFF	PRODL, r0x09
	MOVFF	PRODH, r0x0c
	MOVFF	FSR0L, r0x0d
; ;ic:86: 	iTemp57 [k69 lr86:91 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _printf_small_flt_1_1}[r0x07 r0x09 r0x0c r0x0d ] := iTemp61 [k74 lr85:86 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}{ sir@ _printf_small_flt_1_1}[r0x07 r0x09 r0x0c r0x0d ]
; ;ic:87: 	iTemp62 [k77 lr87:91 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{char near* }[remat] = &[_printf_small_buffer_1_1 [k76 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char [16] }]
; ;ic:88: 	send iTemp57 [k69 lr86:91 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _printf_small_flt_1_1}[r0x07 r0x09 r0x0c r0x0d ]{argreg = 1}
; ;ic:89: 	send iTemp62 [k77 lr87:91 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{char near* }[remat]{argreg = 2}
; ;ic:90: 	send 0x20 {literal-unsigned-char}{argreg = 3}
; ;ic:91: 	send 0x6 {literal-unsigned-char}{argreg = 4}
; ;ic:92: 	iTemp63 [k78 lr92:92 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = call _x_ftoa [k75 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, char near* , unsigned-char, unsigned-char) }
;	.line	105; printf_small.c	x_ftoa(flt, buffer, 32, 6);
	MOVLW	0x06
	MOVWF	POSTDEC1
	MOVLW	0x20
	MOVWF	POSTDEC1
	MOVLW	HIGH(_printf_small_buffer_1_1)
	MOVWF	POSTDEC1
	MOVLW	LOW(_printf_small_buffer_1_1)
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	CALL	_x_ftoa
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:93: 	iTemp64 [k79 lr93:159 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char near* }{ sir@ _printf_small_str1_1_1}[r0x07 r0x09 ] := iTemp65 [k81 lr8:184 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{char near* }[remat]
;	.line	106; printf_small.c	str1 = buffer;
	MOVLW	LOW(_printf_small_buffer_1_1)
	MOVWF	r0x07
	MOVLW	HIGH(_printf_small_buffer_1_1)
	MOVWF	r0x09
; ;ic:95: 	iTemp69 [k85 lr95:103 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* }[r0x0c r0x0d ] := iTemp64 [k79 lr93:159 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char near* }{ sir@ _printf_small_str1_1_1}[r0x07 r0x09 ]
;	.line	107; printf_small.c	while( *str1 )str1++; str1--;
	MOVFF	r0x07, r0x0c
	MOVFF	r0x09, r0x0d
; ;ic:96:  _whilecontinue_2($26) :
; ;ic:97: 	iTemp67 [k83 lr97:98 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0e ] = @[iTemp69 [k85 lr95:103 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char near* }[r0x0c r0x0d ]]
_00130_DS_:
	MOVFF	r0x0c, FSR0L
	MOVFF	r0x0d, FSR0H
	MOVFF	INDF0, r0x0e
; ;ic:98: 	if iTemp67 [k83 lr97:98 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0e ] == 0 goto _whilebreak_2($28)
	MOVF	r0x0e, W
	BZ	_00132_DS_
; ;ic:99: 	iTemp69 [k85 lr95:103 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* }[r0x0c r0x0d ] = iTemp69 [k85 lr95:103 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* }[r0x0c r0x0d ] + 0x1 {literal-unsigned-char}
	INCF	r0x0c, F
	BTFSC	STATUS, 0
	INCF	r0x0d, F
; ;ic:100: 	 goto _whilecontinue_2($26)
	BRA	_00130_DS_
; ;ic:102:  _whilebreak_2($28) :
; ;ic:103: 	iTemp64 [k79 lr93:159 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char near* }{ sir@ _printf_small_str1_1_1}[r0x07 r0x09 ] = iTemp69 [k85 lr95:103 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* }[r0x0c r0x0d ] - 0x1 {literal-unsigned-char}
_00132_DS_:
	MOVF	r0x0c, W
	ADDLW	0xff
	MOVWF	r0x07
	MOVLW	0xff
	ADDWFC	r0x0d, W
	MOVWF	r0x09
; ;ic:105: 	iTemp76 [k92 lr105:114 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* }[r0x0c r0x0d ] := iTemp64 [k79 lr93:159 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char near* }{ sir@ _printf_small_str1_1_1}[r0x07 r0x09 ]
;	.line	108; printf_small.c	while( *str1 == '0' )str1--; str1++;
	MOVFF	r0x07, r0x0c
	MOVFF	r0x09, r0x0d
; ;ic:106:  _whilecontinue_3($29) :
; ;ic:107: 	iTemp73 [k89 lr107:108 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0e ] = @[iTemp76 [k92 lr105:114 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char near* }[r0x0c r0x0d ]]
_00133_DS_:
	MOVFF	r0x0c, FSR0L
	MOVFF	r0x0d, FSR0H
	MOVFF	INDF0, r0x0e
; ;ic:108: 	iTemp74 [k90 lr108:109 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp73 [k89 lr107:108 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0e ] == 0x30 {literal-char}
	MOVF	r0x0e, W
	XORLW	0x30
	BNZ	_00135_DS_
; ;ic:109: 	if iTemp74 [k90 lr108:109 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _whilebreak_3($31)
; ;ic:110: 	iTemp76 [k92 lr105:114 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* }[r0x0c r0x0d ] = iTemp76 [k92 lr105:114 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* }[r0x0c r0x0d ] - 0x1 {literal-unsigned-char}
	MOVLW	0xff
	ADDWF	r0x0c, F
	BTFSS	STATUS, 0
	DECF	r0x0d, F
; ;ic:111: 	 goto _whilecontinue_3($29)
	BRA	_00133_DS_
; ;ic:113:  _whilebreak_3($31) :
; ;ic:114: 	iTemp64 [k79 lr93:159 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char near* }{ sir@ _printf_small_str1_1_1}[r0x07 r0x09 ] = iTemp76 [k92 lr105:114 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* }[r0x0c r0x0d ] + 0x1 {literal-unsigned-char}
_00135_DS_:
	MOVF	r0x0c, W
	ADDLW	0x01
	MOVWF	r0x07
	MOVLW	0x00
	ADDWFC	r0x0d, W
	MOVWF	r0x09
; ;ic:115: 	*(iTemp64 [k79 lr93:159 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{char near* }{ sir@ _printf_small_str1_1_1}[r0x07 r0x09 ]) := 0x0 {literal-char}
;	.line	109; printf_small.c	*str1 = 0; str1 = buffer;
	MOVFF	r0x07, FSR0L
	MOVFF	r0x09, FSR0H
	CLRF	INDF0
; ;ic:116: 	iTemp64 [k79 lr93:159 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char near* }{ sir@ _printf_small_str1_1_1}[r0x07 r0x09 ] := iTemp80 [k96 lr9:184 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{char near* }[remat]
	MOVLW	LOW(_printf_small_buffer_1_1)
	MOVWF	r0x07
	MOVLW	HIGH(_printf_small_buffer_1_1)
	MOVWF	r0x09
; ;ic:118: 	iTemp84 [k100 lr118:126 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* }[r0x0c r0x0d ] := iTemp64 [k79 lr93:159 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char near* }{ sir@ _printf_small_str1_1_1}[r0x07 r0x09 ]
;	.line	110; printf_small.c	while( *str1 )putchar(*str1++);
	MOVFF	r0x07, r0x0c
	MOVFF	r0x09, r0x0d
; ;ic:119:  _whilecontinue_4($32) :
; ;ic:120: 	iTemp82 [k98 lr120:122 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0e ] = @[iTemp84 [k100 lr118:126 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char near* }[r0x0c r0x0d ]]
_00136_DS_:
	MOVFF	r0x0c, FSR0L
	MOVFF	r0x0d, FSR0H
	MOVFF	INDF0, r0x0e
; ;ic:121: 	if iTemp82 [k98 lr120:122 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0e ] == 0 goto _ifend_13($55)
	MOVF	r0x0e, W
	BTFSC	STATUS, 2
	BRA	_00159_DS_
; ;ic:122: 	iTemp85 [k101 lr122:124 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0e ] := iTemp82 [k98 lr120:122 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0e ]
; ;ic:123: 	iTemp84 [k100 lr118:126 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* }[r0x0c r0x0d ] = iTemp84 [k100 lr118:126 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* }[r0x0c r0x0d ] + 0x1 {literal-unsigned-char}
	INCF	r0x0c, F
	BTFSC	STATUS, 0
	INCF	r0x0d, F
; ;ic:124: 	send iTemp85 [k101 lr122:124 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0e ]{argreg = 1}
; ;ic:125: 	iTemp87 [k103 lr125:125 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void} = call _putchar [k63 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( unsigned-char) }
	MOVF	r0x0e, W
	CALL	_putchar
; ;ic:126: 	 goto _whilecontinue_4($32)
	BRA	_00136_DS_
; ;ic:127:  _iffalse_11($48) :
; ;ic:128: 	if iTemp10 [k15 lr19:128 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _printf_small_flong_1_1}[r0x0a ] == 0 goto _iffalse_9($39)
_00152_DS_:
;	.line	112; printf_small.c	if(flong)val = va_arg(ap, long);
	MOVF	r0x0a, W
	BZ	_00143_DS_
; ;ic:129: 	iTemp89 [k106 lr129:131 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x0a r0x0c r0x0d ] = iTemp1 [k5 lr6:184 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* }{ sir@ _printf_small_ap_1_1}[r0x03 r0x04 r0x05 ] + 0x4 {literal-unsigned-char}
	MOVF	r0x03, W
	ADDLW	0x04
	MOVWF	r0x0a
	MOVLW	0x00
	ADDWFC	r0x04, W
	MOVWF	r0x0c
	MOVLW	0x00
	ADDWFC	r0x05, W
	MOVWF	r0x0d
; ;ic:130: 	iTemp1 [k5 lr6:184 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* }{ sir@ _printf_small_ap_1_1}[r0x03 r0x04 r0x05 ] := iTemp89 [k106 lr129:131 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x0a r0x0c r0x0d ]
	MOVFF	r0x0a, r0x03
	MOVFF	r0x0c, r0x04
	MOVFF	r0x0d, r0x05
; ;ic:131: 	iTemp90 [k107 lr131:132 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x0a r0x0c r0x0d ] = iTemp89 [k106 lr129:131 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x0a r0x0c r0x0d ] - 0x4 {literal-unsigned-char}
	MOVLW	0xfc
	ADDWF	r0x0a, F
	MOVLW	0xff
	ADDWFC	r0x0c, F
	ADDWFC	r0x0d, F
; ;ic:132: 	iTemp92 [k109 lr132:133 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int}{ sir@ _printf_small_val_1_1}[r0x0a r0x0c r0x0d r0x0e ] = @[iTemp90 [k107 lr131:132 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x0a r0x0c r0x0d ]]
	MOVFF	r0x0a, FSR0L
	MOVFF	r0x0c, PRODL
	MOVF	r0x0d, W
	CALL	__gptrget4
	MOVWF	r0x0a
	MOVFF	PRODL, r0x0c
	MOVFF	PRODH, r0x0d
	MOVFF	FSR0L, r0x0e
; ;ic:133: 	iTemp88 [k104 lr133:169 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ _printf_small_val_1_1}[r0x0a r0x0c r0x0d r0x0e ] := iTemp92 [k109 lr132:133 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int}{ sir@ _printf_small_val_1_1}[r0x0a r0x0c r0x0d r0x0e ]
; ;ic:134: 	 goto _ifend_9($40)
	BRA	_00144_DS_
; ;ic:135:  _iffalse_9($39) :
; ;ic:136: 	if iTemp12 [k19 lr17:136 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _printf_small_fchar_1_1}[r0x08 ] == 0 goto _iffalse_8($36)
_00143_DS_:
;	.line	114; printf_small.c	if(fchar)val = (char)va_arg(ap, int); // FIXME: SDCC casts char arguments into ints
	MOVF	r0x08, W
	BZ	_00140_DS_
; ;ic:137: 	iTemp93 [k110 lr137:139 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x08 r0x0f r0x10 ] = iTemp1 [k5 lr6:184 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* }{ sir@ _printf_small_ap_1_1}[r0x03 r0x04 r0x05 ] + 0x2 {literal-unsigned-char}
	MOVF	r0x03, W
	ADDLW	0x02
	MOVWF	r0x08
	MOVLW	0x00
	ADDWFC	r0x04, W
	MOVWF	r0x0f
	MOVLW	0x00
	ADDWFC	r0x05, W
	MOVWF	r0x10
; ;ic:138: 	iTemp1 [k5 lr6:184 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* }{ sir@ _printf_small_ap_1_1}[r0x03 r0x04 r0x05 ] := iTemp93 [k110 lr137:139 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x08 r0x0f r0x10 ]
	MOVFF	r0x08, r0x03
	MOVFF	r0x0f, r0x04
	MOVFF	r0x10, r0x05
; ;ic:139: 	iTemp94 [k111 lr139:140 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x08 r0x0f r0x10 ] = iTemp93 [k110 lr137:139 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x08 r0x0f r0x10 ] - 0x2 {literal-unsigned-char}
	MOVLW	0xfe
	ADDWF	r0x08, F
	MOVLW	0xff
	ADDWFC	r0x0f, F
	ADDWFC	r0x10, F
; ;ic:140: 	iTemp96 [k113 lr140:141 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x08 r0x0f ] = @[iTemp94 [k111 lr139:140 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x08 r0x0f r0x10 ]]
	MOVFF	r0x08, FSR0L
	MOVFF	r0x0f, PRODL
	MOVF	r0x10, W
	CALL	__gptrget2
	MOVWF	r0x08
; ;ic:141: 	iTemp97 [k114 lr141:142 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x08 ] = (char)iTemp96 [k113 lr140:141 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x08 r0x0f ]
; ;ic:142: 	iTemp88 [k104 lr133:169 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ _printf_small_val_1_1}[r0x0a r0x0c r0x0d r0x0e ] = (long-int)iTemp97 [k114 lr141:142 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x08 ]
	MOVFF	r0x08, r0x0a
	CLRF	WREG
	BTFSC	r0x08, 7
	MOVLW	0xff
	MOVWF	r0x0c
	MOVWF	r0x0d
	MOVWF	r0x0e
; ;ic:143: 	 goto _ifend_9($40)
	BRA	_00144_DS_
; ;ic:144:  _iffalse_8($36) :
; ;ic:145: 	iTemp99 [k116 lr145:147 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x08 r0x0f r0x10 ] = iTemp1 [k5 lr6:184 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* }{ sir@ _printf_small_ap_1_1}[r0x03 r0x04 r0x05 ] + 0x2 {literal-unsigned-char}
_00140_DS_:
;	.line	116; printf_small.c	val = va_arg(ap, int);
	MOVF	r0x03, W
	ADDLW	0x02
	MOVWF	r0x08
	MOVLW	0x00
	ADDWFC	r0x04, W
	MOVWF	r0x0f
	MOVLW	0x00
	ADDWFC	r0x05, W
	MOVWF	r0x10
; ;ic:146: 	iTemp1 [k5 lr6:184 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* }{ sir@ _printf_small_ap_1_1}[r0x03 r0x04 r0x05 ] := iTemp99 [k116 lr145:147 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x08 r0x0f r0x10 ]
	MOVFF	r0x08, r0x03
	MOVFF	r0x0f, r0x04
	MOVFF	r0x10, r0x05
; ;ic:147: 	iTemp100 [k117 lr147:148 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x08 r0x0f r0x10 ] = iTemp99 [k116 lr145:147 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x08 r0x0f r0x10 ] - 0x2 {literal-unsigned-char}
	MOVLW	0xfe
	ADDWF	r0x08, F
	MOVLW	0xff
	ADDWFC	r0x0f, F
	ADDWFC	r0x10, F
; ;ic:148: 	iTemp102 [k119 lr148:149 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x08 r0x0f ] = @[iTemp100 [k117 lr147:148 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x08 r0x0f r0x10 ]]
	MOVFF	r0x08, FSR0L
	MOVFF	r0x0f, PRODL
	MOVF	r0x10, W
	CALL	__gptrget2
	MOVWF	r0x08
	MOVFF	PRODL, r0x0f
; ;ic:149: 	iTemp88 [k104 lr133:169 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ _printf_small_val_1_1}[r0x0a r0x0c r0x0d r0x0e ] = (long-int)iTemp102 [k119 lr148:149 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x08 r0x0f ]
	MOVFF	r0x08, r0x0a
	MOVFF	r0x0f, r0x0c
	CLRF	WREG
	BTFSC	r0x0f, 7
	MOVLW	0xff
	MOVWF	r0x0d
	MOVWF	r0x0e
; ;ic:150:  _ifend_9($40) :
; ;ic:151: 	if iTemp14 [k23 lr20:155 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _printf_small_radix_1_1}[r0x0b ] == 0 goto _iffalse_10($45)
_00144_DS_:
;	.line	119; printf_small.c	if(radix) {
	MOVF	r0x0b, W
	BZ	_00149_DS_
; ;ic:152: 	iTemp104 [k122 lr152:155 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{char near* }[remat] = &[_printf_small_buffer_1_1 [k76 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char [16] }]
; ;ic:153: 	send iTemp88 [k104 lr133:169 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ _printf_small_val_1_1}[r0x0a r0x0c r0x0d r0x0e ]{argreg = 1}
; ;ic:154: 	send iTemp104 [k122 lr152:155 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{char near* }[remat]{argreg = 2}
; ;ic:155: 	send iTemp14 [k23 lr20:155 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _printf_small_radix_1_1}[r0x0b ]{argreg = 3}
; ;ic:156: 	iTemp106 [k124 lr156:156 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void} = call _ltoa [k121 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( long-int, char near* , unsigned-char) }
;	.line	120; printf_small.c	ltoa (val, buffer, radix);
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVLW	HIGH(_printf_small_buffer_1_1)
	MOVWF	POSTDEC1
	MOVLW	LOW(_printf_small_buffer_1_1)
	MOVWF	POSTDEC1
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	CALL	_ltoa
	MOVLW	0x07
	ADDWF	FSR1L, F
; ;ic:157: 	iTemp64 [k79 lr93:159 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char near* }{ sir@ _printf_small_str1_1_1}[r0x07 r0x09 ] := iTemp107 [k125 lr10:184 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{char near* }[remat]
;	.line	122; printf_small.c	str1 = buffer;
	MOVLW	LOW(_printf_small_buffer_1_1)
	MOVWF	r0x07
	MOVLW	HIGH(_printf_small_buffer_1_1)
	MOVWF	r0x09
; ;ic:159: 	iTemp111 [k129 lr159:167 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* }[r0x07 r0x08 ] := iTemp64 [k79 lr93:159 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char near* }{ sir@ _printf_small_str1_1_1}[r0x07 r0x09 ]
;	.line	123; printf_small.c	while ( *str1 ) {
	MOVFF	r0x07, r0x07
	MOVFF	r0x09, r0x08
; ;ic:160:  _whilecontinue_5($41) :
; ;ic:161: 	iTemp109 [k127 lr161:163 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x09 ] = @[iTemp111 [k129 lr159:167 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char near* }[r0x07 r0x08 ]]
_00145_DS_:
	MOVFF	r0x07, FSR0L
	MOVFF	r0x08, FSR0H
	MOVFF	INDF0, r0x09
; ;ic:162: 	if iTemp109 [k127 lr161:163 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x09 ] == 0 goto _ifend_13($55)
	MOVF	r0x09, W
	BZ	_00159_DS_
; ;ic:163: 	iTemp112 [k130 lr163:165 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x09 ] := iTemp109 [k127 lr161:163 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x09 ]
; ;ic:164: 	iTemp111 [k129 lr159:167 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* }[r0x07 r0x08 ] = iTemp111 [k129 lr159:167 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* }[r0x07 r0x08 ] + 0x1 {literal-unsigned-char}
;	.line	124; printf_small.c	putchar ( *str1++ );
	INCF	r0x07, F
	BTFSC	STATUS, 0
	INCF	r0x08, F
; ;ic:165: 	send iTemp112 [k130 lr163:165 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x09 ]{argreg = 1}
; ;ic:166: 	iTemp114 [k132 lr166:166 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void} = call _putchar [k63 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( unsigned-char) }
	MOVF	r0x09, W
	CALL	_putchar
; ;ic:167: 	 goto _whilecontinue_5($41)
	BRA	_00145_DS_
; ;ic:168:  _iffalse_10($45) :
; ;ic:169: 	iTemp115 [k133 lr169:170 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0a ] = (char)iTemp88 [k104 lr133:169 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ _printf_small_val_1_1}[r0x0a r0x0c r0x0d r0x0e ]
; ;ic:170: 	send iTemp115 [k133 lr169:170 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0a ]{argreg = 1}
; ;ic:171: 	iTemp117 [k135 lr171:171 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void} = call _putchar [k63 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( unsigned-char) }
_00149_DS_:
;	.line	127; printf_small.c	putchar((char)val);
	MOVF	r0x0a, W
	CALL	_putchar
; ;ic:172: 	 goto _ifend_13($55)
	BRA	_00159_DS_
; ;ic:173:  _iffalse_13($54) :
; ;ic:174: 	send iTemp6 [k11 lr12:174 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x06 ]{argreg = 1}
; ;ic:175: 	iTemp121 [k139 lr175:175 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void} = call _putchar [k63 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( unsigned-char) }
_00158_DS_:
;	.line	130; printf_small.c	putchar(*ch);
	MOVF	r0x06, W
	CALL	_putchar
; ;ic:182:  _ifend_13($55) :
; ;ic:183: 	iTemp0 [k2 lr3:184 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _printf_small_ch_1_1}[r0x00 r0x01 r0x02 ] = iTemp0 [k2 lr3:184 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _printf_small_ch_1_1}[r0x00 r0x01 r0x02 ] + 0x1 {literal-unsigned-char}
_00159_DS_:
;	.line	132; printf_small.c	ch++;
	INCF	r0x00, F
	BTFSC	STATUS, 0
	INCF	r0x01, F
	BTFSC	STATUS, 0
	INCF	r0x02, F
; ;ic:184: 	 goto _whilecontinue_0($56)
	BRA	_00160_DS_
; ;ic:185:  _return($59) :
; ;ic:186: 	eproc _printf_small [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( char generic* ) }
_00163_DS_:
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
; code size:	 1104 (0x0450) bytes ( 0.84%)
;           	  552 (0x0228) words
; udata size:	   16 (0x0010) bytes ( 1.25%)
; access size:	   17 (0x0011) bytes


	end
