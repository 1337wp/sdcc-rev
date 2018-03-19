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
	global _x_cnvint_wrap
	global _x_cnvfrac_wrap
	global _x_ftoa

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern _convert_frac
	extern _convert_int
	extern _POSTDEC1
	extern _PLUSW2
	extern _FSR0L
	extern _FSR0H
	extern _PREINC1
	extern _PREINC2
	extern _FSR2L
	extern _FSR2H
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

udata_x_ftoa_0	udata
_x_ftoa_f_l_1_1	res	4

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($20) :
; ;ic:2: 	proc _x_ftoa [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, char near* , unsigned-char, unsigned-char) }
S_x_ftoa__x_ftoa	code
_x_ftoa:
;	.line	137; x_ftoa.c	char x_ftoa(float num, __data char *buffer, unsigned char buflen, unsigned char prec)
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
; ;ic:3: iTemp0 [k2 lr3:19 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _x_ftoa_num_1_1}[r0x00 r0x01 r0x02 r0x03 ] = recv _x_ftoa [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, char near* , unsigned-char, unsigned-char) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
; ;ic:4: iTemp1 [k4 lr4:78 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char near* }{ sir@ _x_ftoa_buffer_1_1}[r0x04 r0x05 ] = recv _x_ftoa [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, char near* , unsigned-char, unsigned-char) }
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
; ;ic:5: iTemp2 [k6 lr5:8 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _x_ftoa_buflen_1_1}[r0x06 ] = recv _x_ftoa [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, char near* , unsigned-char, unsigned-char) }
	MOVLW	0x08
	MOVFF	PLUSW2, r0x06
; ;ic:6: iTemp3 [k8 lr6:78 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _x_ftoa_prec_1_1}[r0x07 ] = recv _x_ftoa [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, char near* , unsigned-char, unsigned-char) }
	MOVLW	0x09
	MOVFF	PLUSW2, r0x07
; ;ic:8: 	iTemp7 [k14 lr8:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}{ sir@ _x_ftoa_len_1_1}[r0x06 ] := iTemp2 [k6 lr5:8 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _x_ftoa_buflen_1_1}[r0x06 ]
; ;ic:9:  _whilecontinue_0($1) :
; ;ic:10: 	iTemp6 [k13 lr10:12 so:0]{ ia0 a2p0 re0 rm0 nos1 ru0 dp0}{char}[r0x08 ] := iTemp7 [k14 lr8:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}{ sir@ _x_ftoa_len_1_1}[r0x06 ]
_00113_DS_:
;	.line	147; x_ftoa.c	while(len--)buffer[len] = 0;
	MOVFF	r0x06, r0x08
; ;ic:11: 	iTemp7 [k14 lr8:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}{ sir@ _x_ftoa_len_1_1}[r0x06 ] = iTemp7 [k14 lr8:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}{ sir@ _x_ftoa_len_1_1}[r0x06 ] - 0x1 {literal-unsigned-char}
	DECF	r0x06, F
; ;ic:12: 	if iTemp6 [k13 lr10:12 so:0]{ ia0 a2p0 re0 rm0 nos1 ru0 dp0}{char}[r0x08 ] == 0 goto _whilebreak_0($3)
	MOVF	r0x08, W
	BZ	_00115_DS_
; ;ic:13: 	iTemp8 [k15 lr13:14 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char near* }[r0x08 r0x09 ] = iTemp1 [k4 lr4:78 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char near* }{ sir@ _x_ftoa_buffer_1_1}[r0x04 r0x05 ] + iTemp7 [k14 lr8:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}{ sir@ _x_ftoa_len_1_1}[r0x06 ]
	MOVF	r0x06, W
	ADDWF	r0x04, W
	MOVWF	r0x08
	CLRF	WREG
	BTFSC	r0x06, 7
	SETF	WREG
	ADDWFC	r0x05, W
	MOVWF	r0x09
; ;ic:14: 	*(iTemp8 [k15 lr13:14 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char near* }[r0x08 r0x09 ]) := 0x0 {literal-char}
	MOVFF	r0x08, FSR0L
	MOVFF	r0x09, FSR0H
	CLRF	INDF0
; ;ic:15: 	 goto _whilecontinue_0($1)
	BRA	_00113_DS_
; ;ic:17:  _whilebreak_0($3) :
; ;ic:18: 	iTemp9 [k17 lr18:19 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat] = &[_x_ftoa_f_l_1_1 [k16 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct float_long}]
; ;ic:19: 	*(iTemp9 [k17 lr18:19 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat]) := iTemp0 [k2 lr3:19 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _x_ftoa_num_1_1}[r0x00 r0x01 r0x02 r0x03 ]
_00115_DS_:
;	.line	149; x_ftoa.c	f_l.f = num;
	MOVF	r0x00, W
	BANKSEL	_x_ftoa_f_l_1_1
	MOVWF	_x_ftoa_f_l_1_1, B
	MOVF	r0x01, W
; removed redundant BANKSEL
	MOVWF	(_x_ftoa_f_l_1_1 + 1), B
	MOVF	r0x02, W
; removed redundant BANKSEL
	MOVWF	(_x_ftoa_f_l_1_1 + 2), B
	MOVF	r0x03, W
; removed redundant BANKSEL
	MOVWF	(_x_ftoa_f_l_1_1 + 3), B
; ;ic:20: 	iTemp11 [k20 lr20:36 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[_x_ftoa_f_l_1_1 [k16 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct float_long}]
; ;ic:21: 	iTemp13 [k23 lr21:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ _x_ftoa_f_l_1_1} = @[iTemp11 [k20 lr20:36 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]]
; ;ic:22: 	iTemp14 [k24 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] = iTemp13 [k23 lr21:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ _x_ftoa_f_l_1_1} & 0x80000000 {literal-unsigned-long-int}
;	.line	151; x_ftoa.c	if((f_l.l & SIGNBIT) == SIGNBIT) {
	CLRF	r0x00
	CLRF	r0x01
	CLRF	r0x02
	MOVLW	0x80
; removed redundant BANKSEL
	ANDWF	(_x_ftoa_f_l_1_1 + 3), W, B
	MOVWF	r0x03
; ;ic:23: 	iTemp15 [k25 lr23:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp14 [k24 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] == 0x80000000 {literal-unsigned-long-int}
	MOVF	r0x00, W
	BNZ	_00144_DS_
	MOVF	r0x01, W
	BNZ	_00144_DS_
	MOVF	r0x02, W
	BNZ	_00144_DS_
	MOVF	r0x03, W
	XORLW	0x80
	BZ	_00145_DS_
_00144_DS_:
	BRA	_00117_DS_
; ;ic:24: 	if iTemp15 [k25 lr23:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_0($5)
; ;ic:25: 	iTemp20 [k32 lr25:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ _x_ftoa_f_l_1_1} = @[iTemp11 [k20 lr20:36 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]]
; ;ic:26: 	iTemp21 [k33 lr26:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] = iTemp20 [k32 lr25:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ _x_ftoa_f_l_1_1} & 0x7fffffff {literal-unsigned-long-int}
_00145_DS_:
	BANKSEL	_x_ftoa_f_l_1_1
;	.line	152; x_ftoa.c	f_l.l &= ~SIGNBIT;
	MOVF	_x_ftoa_f_l_1_1, W, B
	MOVWF	r0x00
; removed redundant BANKSEL
	MOVF	(_x_ftoa_f_l_1_1 + 1), W, B
	MOVWF	r0x01
; removed redundant BANKSEL
	MOVF	(_x_ftoa_f_l_1_1 + 2), W, B
	MOVWF	r0x02
	MOVLW	0x7f
; removed redundant BANKSEL
	ANDWF	(_x_ftoa_f_l_1_1 + 3), W, B
	MOVWF	r0x03
; ;ic:27: 	*(iTemp11 [k20 lr20:36 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]) := iTemp21 [k33 lr26:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ]
	MOVF	r0x00, W
; removed redundant BANKSEL
	MOVWF	_x_ftoa_f_l_1_1, B
	MOVF	r0x01, W
; removed redundant BANKSEL
	MOVWF	(_x_ftoa_f_l_1_1 + 1), B
	MOVF	r0x02, W
; removed redundant BANKSEL
	MOVWF	(_x_ftoa_f_l_1_1 + 2), B
	MOVF	r0x03, W
; removed redundant BANKSEL
	MOVWF	(_x_ftoa_f_l_1_1 + 3), B
; ;ic:28: 	*(iTemp1 [k4 lr4:78 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{char near* }{ sir@ _x_ftoa_buffer_1_1}[r0x04 r0x05 ]) := 0x2d {literal-char}
;	.line	153; x_ftoa.c	*buffer = '-';
	MOVFF	r0x04, FSR0L
	MOVFF	r0x05, FSR0H
	MOVLW	0x2d
	MOVWF	INDF0
; ;ic:29: 	iTemp1 [k4 lr4:78 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char near* }{ sir@ _x_ftoa_buffer_1_1}[r0x04 r0x05 ] = iTemp1 [k4 lr4:78 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char near* }{ sir@ _x_ftoa_buffer_1_1}[r0x04 r0x05 ] + 0x1 {literal-unsigned-char}
;	.line	154; x_ftoa.c	buffer++;
	INCF	r0x04, F
	BTFSC	STATUS, 0
	INCF	r0x05, F
; ;ic:30:  _iffalse_0($5) :
; ;ic:31: 	iTemp28 [k42 lr31:32 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ _x_ftoa_f_l_1_1} = @[iTemp11 [k20 lr20:36 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]]
; ;ic:32: 	iTemp29 [k43 lr32:33 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] = iTemp28 [k42 lr31:32 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ _x_ftoa_f_l_1_1} >> 0x17 {literal-unsigned-char}
_00117_DS_:
	BANKSEL	(_x_ftoa_f_l_1_1 + 2)
;	.line	157; x_ftoa.c	expn = EXCESS - EXP(f_l.l);	// - 24;
	RLCF	(_x_ftoa_f_l_1_1 + 2), W, B
; removed redundant BANKSEL
	RLCF	(_x_ftoa_f_l_1_1 + 3), W, B
; ;ic:33: 	iTemp30 [k44 lr33:34 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] = iTemp29 [k43 lr32:33 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] & 0xff {literal-unsigned-long-int}
; ;ic:34: 	iTemp31 [k45 lr34:35 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x00 ] = (unsigned-char)iTemp30 [k44 lr33:34 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ]
; ;ic:35: 	iTemp25 [k37 lr35:56 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _x_ftoa_expn_1_1}[r0x00 ] = 0x7e {literal-unsigned-char} - iTemp31 [k45 lr34:35 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x00 ]
	SUBLW	0x7e
	MOVWF	r0x00
; ;ic:36: 	iTemp37 [k53 lr36:37 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ _x_ftoa_f_l_1_1} = @[iTemp11 [k20 lr20:36 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]]
; ;ic:37: 	iTemp38 [k54 lr37:38 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x01 r0x02 r0x03 r0x06 ] = iTemp37 [k53 lr36:37 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ _x_ftoa_f_l_1_1} & 0x7fffff {literal-unsigned-long-int}
; removed redundant BANKSEL
;	.line	159; x_ftoa.c	ll = MANT(f_l.l);
	MOVF	_x_ftoa_f_l_1_1, W, B
	MOVWF	r0x01
; removed redundant BANKSEL
	MOVF	(_x_ftoa_f_l_1_1 + 1), W, B
	MOVWF	r0x02
	MOVLW	0x7f
; removed redundant BANKSEL
	ANDWF	(_x_ftoa_f_l_1_1 + 2), W, B
	MOVWF	r0x03
	CLRF	r0x06
; ;ic:38: 	iTemp34 [k48 lr38:75 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ _x_ftoa_ll_1_1}[r0x01 r0x02 r0x03 r0x06 ] = iTemp38 [k54 lr37:38 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x01 r0x02 r0x03 r0x06 ] | 0x800000 {literal-unsigned-long-int}
	BSF	r0x03, 7
; ;ic:39: 	iTemp40 [k56 lr39:60 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ _x_ftoa_li_1_1}[r0x08 r0x09 r0x0a r0x0b ] := 0x0 {literal-unsigned-long-int}
;	.line	160; x_ftoa.c	li = 0;
	CLRF	r0x08
	CLRF	r0x09
	CLRF	r0x0a
	CLRF	r0x0b
; ;ic:41:  _whilecontinue_1($11) :
; ;ic:42: 	if iTemp25 [k37 lr35:56 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _x_ftoa_expn_1_1}[r0x00 ] == 0 goto _whilebreak_1($13)
_00123_DS_:
;	.line	162; x_ftoa.c	while( expn ) {
	MOVF	r0x00, W
	BZ	_00125_DS_
; ;ic:43: 	iTemp41 [k58 lr43:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp25 [k37 lr35:56 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _x_ftoa_expn_1_1}[r0x00 ] < 0x0 {literal-char}
;	.line	163; x_ftoa.c	if(expn < 0) {
	BSF	STATUS, 0
	BTFSS	r0x00, 7
	BCF	STATUS, 0
	BNC	_00121_DS_
; ;ic:44: 	if iTemp41 [k58 lr43:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_2($9)
; ;ic:45: 	iTemp40 [k56 lr39:60 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ _x_ftoa_li_1_1}[r0x08 r0x09 r0x0a r0x0b ] = iTemp40 [k56 lr39:60 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ _x_ftoa_li_1_1}[r0x08 r0x09 r0x0a r0x0b ] << 0x1 {literal-unsigned-char}
;	.line	164; x_ftoa.c	li <<= 1;
	MOVF	r0x08, W
	ADDWF	r0x08, F
	RLCF	r0x09, F
	RLCF	r0x0a, F
	RLCF	r0x0b, F
; ;ic:46: 	iTemp43 [k60 lr46:47 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int} = iTemp34 [k48 lr38:75 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ _x_ftoa_ll_1_1}[r0x01 r0x02 r0x03 r0x06 ] & 0x800000 {literal-unsigned-long-int}
;	.line	165; x_ftoa.c	if(ll & 0x00800000UL)li |= 1;
	BTFSS	r0x03, 7
	BRA	_00119_DS_
; ;ic:47: 	if iTemp43 [k60 lr46:47 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int} == 0 goto _iffalse_1($7)
; ;ic:48: 	iTemp40 [k56 lr39:60 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ _x_ftoa_li_1_1}[r0x08 r0x09 r0x0a r0x0b ] = iTemp40 [k56 lr39:60 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ _x_ftoa_li_1_1}[r0x08 r0x09 r0x0a r0x0b ] | 0x1 {literal-unsigned-long-int}
	BSF	r0x08, 0
; ;ic:49:  _iffalse_1($7) :
; ;ic:50: 	iTemp34 [k48 lr38:75 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ _x_ftoa_ll_1_1}[r0x01 r0x02 r0x03 r0x06 ] = iTemp34 [k48 lr38:75 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ _x_ftoa_ll_1_1}[r0x01 r0x02 r0x03 r0x06 ] << 0x1 {literal-unsigned-char}
_00119_DS_:
;	.line	166; x_ftoa.c	ll <<= 1;
	MOVF	r0x01, W
	ADDWF	r0x01, F
	RLCF	r0x02, F
	RLCF	r0x03, F
	RLCF	r0x06, F
; ;ic:51: 	iTemp25 [k37 lr35:56 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _x_ftoa_expn_1_1}[r0x00 ] = iTemp25 [k37 lr35:56 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _x_ftoa_expn_1_1}[r0x00 ] + 0x1 {literal-unsigned-char}
;	.line	167; x_ftoa.c	expn++;
	INCF	r0x00, F
; ;ic:52: 	 goto _whilecontinue_1($11)
	BRA	_00123_DS_
; ;ic:53:  _iffalse_2($9) :
; ;ic:54: 	iTemp34 [k48 lr38:75 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ _x_ftoa_ll_1_1}[r0x01 r0x02 r0x03 r0x06 ] = iTemp34 [k48 lr38:75 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ _x_ftoa_ll_1_1}[r0x01 r0x02 r0x03 r0x06 ] >> 0x1 {literal-unsigned-char}
_00121_DS_:
;	.line	169; x_ftoa.c	ll >>= 1;
	BCF	STATUS, 0
	RRCF	r0x06, F
	RRCF	r0x03, F
	RRCF	r0x02, F
	RRCF	r0x01, F
; ;ic:55: 	iTemp25 [k37 lr35:56 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _x_ftoa_expn_1_1}[r0x00 ] = iTemp25 [k37 lr35:56 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _x_ftoa_expn_1_1}[r0x00 ] - 0x1 {literal-unsigned-char}
;	.line	170; x_ftoa.c	expn--;
	DECF	r0x00, F
; ;ic:56: 	 goto _whilecontinue_1($11)
	BRA	_00123_DS_
; ;ic:57:  _whilebreak_1($13) :
; ;ic:58: 	if iTemp40 [k56 lr39:60 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ _x_ftoa_li_1_1}[r0x08 r0x09 r0x0a r0x0b ] == 0 goto _iffalse_3($15)
_00125_DS_:
;	.line	174; x_ftoa.c	if(li)
	MOVF	r0x08, W
	IORWF	r0x09, W
	IORWF	r0x0a, W
	IORWF	r0x0b, W
	BZ	_00127_DS_
; ;ic:59: 	send iTemp40 [k56 lr39:60 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ _x_ftoa_li_1_1}[r0x08 r0x09 r0x0a r0x0b ]{argreg = 1}
; ;ic:60: 	send iTemp1 [k4 lr4:78 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char near* }{ sir@ _x_ftoa_buffer_1_1}[r0x04 r0x05 ]{argreg = 2}
; ;ic:61: 	iTemp4 [k10 lr61:81 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _x_ftoa_len_1_1}[r0x00 ] = call _x_cnvint_wrap [k68 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( unsigned-long-int, char near* ) }
;	.line	175; x_ftoa.c	len = x_cnvint_wrap(li, buffer);
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	CALL	_x_cnvint_wrap
	MOVWF	r0x00
	MOVLW	0x06
	ADDWF	FSR1L, F
; ;ic:62: 	 goto _ifend_3($16)
	BRA	_00128_DS_
; ;ic:63:  _iffalse_3($15) :
; ;ic:64: 	*(iTemp1 [k4 lr4:78 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{char near* }{ sir@ _x_ftoa_buffer_1_1}[r0x04 r0x05 ]) := 0x30 {literal-char}
_00127_DS_:
;	.line	177; x_ftoa.c	*buffer = '0'; len = 1;
	MOVFF	r0x04, FSR0L
	MOVFF	r0x05, FSR0H
	MOVLW	0x30
	MOVWF	INDF0
; ;ic:65: 	iTemp4 [k10 lr61:81 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _x_ftoa_len_1_1}[r0x00 ] := 0x1 {literal-char}
	MOVLW	0x01
	MOVWF	r0x00
; ;ic:66:  _ifend_3($16) :
; ;ic:67: 	iTemp1 [k4 lr4:78 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char near* }{ sir@ _x_ftoa_buffer_1_1}[r0x04 r0x05 ] = iTemp1 [k4 lr4:78 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char near* }{ sir@ _x_ftoa_buffer_1_1}[r0x04 r0x05 ] + iTemp4 [k10 lr61:81 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _x_ftoa_len_1_1}[r0x00 ]
_00128_DS_:
;	.line	180; x_ftoa.c	buffer += len;
	MOVF	r0x00, W
	ADDWF	r0x04, F
	CLRF	WREG
	BTFSC	r0x00, 7
	SETF	WREG
	ADDWFC	r0x05, F
; ;ic:68: 	if iTemp3 [k8 lr6:78 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _x_ftoa_prec_1_1}[r0x07 ] == 0 goto _iffalse_4($18)
;	.line	182; x_ftoa.c	if(prec) {
	MOVF	r0x07, W
	BZ	_00130_DS_
; ;ic:69: 	*(iTemp1 [k4 lr4:78 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{char near* }{ sir@ _x_ftoa_buffer_1_1}[r0x04 r0x05 ]) := 0x2e {literal-char}
;	.line	183; x_ftoa.c	*buffer = '.'; len++;
	MOVFF	r0x04, FSR0L
	MOVFF	r0x05, FSR0H
	MOVLW	0x2e
	MOVWF	INDF0
; ;ic:70: 	iTemp4 [k10 lr61:81 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _x_ftoa_len_1_1}[r0x00 ] = iTemp4 [k10 lr61:81 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _x_ftoa_len_1_1}[r0x00 ] + 0x1 {literal-unsigned-char}
	INCF	r0x00, F
; ;ic:71: 	iTemp1 [k4 lr4:78 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char near* }{ sir@ _x_ftoa_buffer_1_1}[r0x04 r0x05 ] = iTemp1 [k4 lr4:78 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char near* }{ sir@ _x_ftoa_buffer_1_1}[r0x04 r0x05 ] + 0x1 {literal-unsigned-char}
;	.line	184; x_ftoa.c	buffer++;
	INCF	r0x04, F
	BTFSC	STATUS, 0
	INCF	r0x05, F
; ;ic:72: 	iTemp59 [k78 lr72:75 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x08 ] = 0x18 {literal-unsigned-char} - iTemp3 [k8 lr6:78 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _x_ftoa_prec_1_1}[r0x07 ]
;	.line	186; x_ftoa.c	len += x_cnvfrac_wrap(ll, buffer, 24-prec);
	MOVF	r0x07, W
	SUBLW	0x18
; #	MOVWF	r0x08
; #;;ic:73: 	send iTemp34 [k48 lr38:75 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ _x_ftoa_ll_1_1}[r0x01 r0x02 r0x03 r0x06 ]{argreg = 1}
; #;;ic:74: 	send iTemp1 [k4 lr4:78 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char near* }{ sir@ _x_ftoa_buffer_1_1}[r0x04 r0x05 ]{argreg = 2}
; #;;ic:75: 	send iTemp59 [k78 lr72:75 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x08 ]{argreg = 3}
; #;;ic:76: 	iTemp60 [k79 lr76:77 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x01 ] = call _x_cnvfrac_wrap [k77 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( unsigned-long-int, char near* , unsigned-char) }
; #	MOVF	r0x08, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	CALL	_x_cnvfrac_wrap
	MOVWF	r0x01
	MOVLW	0x07
	ADDWF	FSR1L, F
; ;ic:77: 	iTemp4 [k10 lr61:81 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _x_ftoa_len_1_1}[r0x00 ] = iTemp4 [k10 lr61:81 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _x_ftoa_len_1_1}[r0x00 ] + iTemp60 [k79 lr76:77 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x01 ]
	MOVF	r0x01, W
	ADDWF	r0x00, F
; ;ic:78: 	iTemp62 [k81 lr78:79 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char near* }[r0x04 r0x05 ] = iTemp1 [k4 lr4:78 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char near* }{ sir@ _x_ftoa_buffer_1_1}[r0x04 r0x05 ] + iTemp3 [k8 lr6:78 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _x_ftoa_prec_1_1}[r0x07 ]
;	.line	187; x_ftoa.c	buffer[ prec ] = '\0';
	MOVF	r0x07, W
	ADDWF	r0x04, F
	CLRF	WREG
	ADDWFC	r0x05, F
; ;ic:79: 	*(iTemp62 [k81 lr78:79 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char near* }[r0x04 r0x05 ]) := 0x0 {literal-char}
	MOVFF	r0x04, FSR0L
	MOVFF	r0x05, FSR0H
	CLRF	INDF0
; ;ic:80:  _iffalse_4($18) :
; ;ic:81: 	ret iTemp4 [k10 lr61:81 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _x_ftoa_len_1_1}[r0x00 ]
_00130_DS_:
;	.line	190; x_ftoa.c	return (len);
	MOVF	r0x00, W
; ;ic:82:  _return($19) :
; ;ic:83: 	eproc _x_ftoa [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, char near* , unsigned-char, unsigned-char) }
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

; ; Starting pCode block
; ;ic:1:  _entry($2) :
; ;ic:2: 	proc _x_cnvfrac_wrap [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( unsigned-long-int, char near* , unsigned-char) }
S_x_ftoa__x_cnvfrac_wrap	code
_x_cnvfrac_wrap:
;	.line	88; x_ftoa.c	char x_cnvfrac_wrap(unsigned long num, __data char *buffer, unsigned char prec)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
; ;ic:3: inline
	movff 0x00, _POSTDEC1
	movff 0x01, _POSTDEC1
	movff 0x02, _POSTDEC1
	movff 0x03, _POSTDEC1
	movff 0x04, _POSTDEC1
	movlw 2
	movff _PLUSW2, 0x00
	movlw 3
	movff _PLUSW2, 0x01
	movlw 4
	movff _PLUSW2, 0x02
	movlw 5
	movff _PLUSW2, 0x03
	movlw 6
	movff _PLUSW2, _FSR0L
	movlw 7
	movff _PLUSW2, _FSR0H
	movlw 8
	movff _PLUSW2, 0x04
	call _convert_frac
	movff _PREINC1, 0x04
	movff _PREINC1, 0x03
	movff _PREINC1, 0x02
	movff _PREINC1, 0x01
	movff _PREINC1, 0x00
	
; ;ic:4:  _return($1) :
; ;ic:5: 	eproc _x_cnvfrac_wrap [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( unsigned-long-int, char near* , unsigned-char) }
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
; ;ic:1:  _entry($2) :
; ;ic:2: 	proc _x_cnvint_wrap [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( unsigned-long-int, char near* ) }
S_x_ftoa__x_cnvint_wrap	code
_x_cnvint_wrap:
;	.line	55; x_ftoa.c	char x_cnvint_wrap(unsigned long num, __data char *buffer)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
; ;ic:3: inline
	movff 0x00, _POSTDEC1
	movff 0x01, _POSTDEC1
	movff 0x02, _POSTDEC1
	movff 0x03, _POSTDEC1
	movlw 2
	movff _PLUSW2, 0x00
	movlw 3
	movff _PLUSW2, 0x01
	movlw 4
	movff _PLUSW2, 0x02
	movlw 5
	movff _PLUSW2, 0x03
	movlw 6
	movff _PLUSW2, _FSR0L
	movlw 7
	movff _PLUSW2, _FSR0H
	call _convert_int
	movff _PREINC1, 0x03
	movff _PREINC1, 0x02
	movff _PREINC1, 0x01
	movff _PREINC1, 0x00
	
; ;ic:4:  _return($1) :
; ;ic:5: 	eproc _x_cnvint_wrap [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( unsigned-long-int, char near* ) }
	MOVFF	PREINC1, FSR2L
	RETURN	



; Statistics:
; code size:	  678 (0x02a6) bytes ( 0.52%)
;           	  339 (0x0153) words
; udata size:	    4 (0x0004) bytes ( 0.31%)
; access size:	   12 (0x000c) bytes


	end
