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
	global _ultoa
	global _ltoa

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern __modulong
	extern __divulong
;--------------------------------------------------------
;	Equates to used internal registers
;--------------------------------------------------------
STATUS	equ	0xfd8
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

udata_ltoa_0	udata
_ultoa_buffer_1_1	res	32

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($5) :
; ;ic:2: 	proc _ltoa [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( long-int, char near* , unsigned-char) }
S_ltoa__ltoa	code
_ltoa:
;	.line	53; ltoa.c	void ltoa(long value, __data char* str, unsigned char radix)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
	MOVFF	r0x06, POSTDEC1
; ;ic:3: iTemp0 [k2 lr3:16 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ _ltoa_value_1_1}[r0x00 r0x01 r0x02 r0x03 ] = recv _ltoa [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( long-int, char near* , unsigned-char) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
; ;ic:4: iTemp1 [k4 lr4:16 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char near* }{ sir@ _ltoa_str_1_1}[r0x04 r0x05 ] = recv _ltoa [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( long-int, char near* , unsigned-char) }
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
; ;ic:5: iTemp2 [k6 lr5:16 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _ltoa_radix_1_1}[r0x06 ] = recv _ltoa [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( long-int, char near* , unsigned-char) }
	MOVLW	0x08
	MOVFF	PLUSW2, r0x06
; ;ic:6: 	iTemp3 [k8 lr6:7 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp0 [k2 lr3:16 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ _ltoa_value_1_1}[r0x00 r0x01 r0x02 r0x03 ] < 0x0 {literal-long-int}
;	.line	60; ltoa.c	if (value < 0 && radix == 10) {
	BSF	STATUS, 0
	BTFSS	r0x03, 7
	BCF	STATUS, 0
	BNC	_00128_DS_
; ;ic:7: 	if iTemp3 [k8 lr6:7 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_1($2)
; ;ic:8: 	iTemp4 [k9 lr8:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp2 [k6 lr5:16 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _ltoa_radix_1_1}[r0x06 ] == 0xa {literal-unsigned-char}
	MOVF	r0x06, W
	XORLW	0x0a
	BNZ	_00128_DS_
; ;ic:9: 	if iTemp4 [k9 lr8:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_1($2)
; ;ic:10: 	*(iTemp1 [k4 lr4:16 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{char near* }{ sir@ _ltoa_str_1_1}[r0x04 r0x05 ]) := 0x2d {literal-char}
;	.line	61; ltoa.c	*str++ = '-';
	MOVFF	r0x04, FSR0L
	MOVFF	r0x05, FSR0H
	MOVLW	0x2d
	MOVWF	INDF0
; ;ic:11: 	iTemp1 [k4 lr4:16 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char near* }{ sir@ _ltoa_str_1_1}[r0x04 r0x05 ] = iTemp1 [k4 lr4:16 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char near* }{ sir@ _ltoa_str_1_1}[r0x04 r0x05 ] + 0x1 {literal-unsigned-char}
	INCF	r0x04, F
	BTFSC	STATUS, 0
	INCF	r0x05, F
; ;ic:12: 	iTemp0 [k2 lr3:16 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ _ltoa_value_1_1}[r0x00 r0x01 r0x02 r0x03 ] = - iTemp0 [k2 lr3:16 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ _ltoa_value_1_1}[r0x00 r0x01 r0x02 r0x03 ]
;	.line	62; ltoa.c	value = -value;
	COMF	r0x03, F
	COMF	r0x02, F
	COMF	r0x01, F
	NEGF	r0x00
	BNZ	_00128_DS_
	INCF	r0x01, F
	BNZ	_00128_DS_
	INCF	r0x02, F
	BTFSC	STATUS, 2
	INCF	r0x03, F
; ;ic:13:  _iffalse_1($2) :
; ;ic:14: 	send iTemp0 [k2 lr3:16 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ _ltoa_value_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 1}
; ;ic:15: 	send iTemp1 [k4 lr4:16 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char near* }{ sir@ _ltoa_str_1_1}[r0x04 r0x05 ]{argreg = 2}
; ;ic:16: 	send iTemp2 [k6 lr5:16 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _ltoa_radix_1_1}[r0x06 ]{argreg = 3}
; ;ic:17: 	iTemp9 [k15 lr17:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void} = call _ultoa [k13 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( unsigned-long-int, char near* , unsigned-char) }
_00128_DS_:
;	.line	67; ltoa.c	ultoa((unsigned long)value, str, radix);
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_ultoa
	MOVLW	0x07
	ADDWF	FSR1L, F
; ;ic:18:  _return($4) :
; ;ic:19: 	eproc _ltoa [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( long-int, char near* , unsigned-char) }
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
; ;ic:1:  _entry($10) :
; ;ic:2: 	proc _ultoa [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( unsigned-long-int, char near* , unsigned-char) }
S_ltoa__ultoa	code
_ultoa:
;	.line	24; ltoa.c	void ultoa(unsigned long value, __data char* str, unsigned char radix)
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
; ;ic:3: iTemp0 [k2 lr3:26 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ _ultoa_value_1_1}[r0x00 r0x01 r0x02 r0x03 ] = recv _ultoa [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( unsigned-long-int, char near* , unsigned-char) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
; ;ic:4: iTemp1 [k4 lr4:30 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char near* }{ sir@ _ultoa_str_1_1}[r0x04 r0x05 ] = recv _ultoa [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( unsigned-long-int, char near* , unsigned-char) }
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
; ;ic:5: iTemp2 [k6 lr5:26 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _ultoa_radix_1_1}[r0x06 ] = recv _ultoa [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( unsigned-long-int, char near* , unsigned-char) }
	MOVLW	0x08
	MOVFF	PLUSW2, r0x06
; ;ic:7: 	iTemp11 [k19 lr7:39 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-char near* }[remat] = &[_ultoa_buffer_1_1 [k18 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char [32] }]
; ;ic:8: 	iTemp12 [k20 lr8:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _ultoa_index_1_1}[r0x07 r0x08 ] := 0x20 {literal-unsigned-int}
;	.line	32; ltoa.c	do {
	MOVLW	0x20
	MOVWF	r0x07
	CLRF	r0x08
; ;ic:9:  _dobody_0($3) :
; ;ic:10: 	iTemp5 [k12 lr10:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x09 r0x0a r0x0b r0x0c ] = (unsigned-long-int)iTemp2 [k6 lr5:26 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _ultoa_radix_1_1}[r0x06 ]
_00107_DS_:
;	.line	33; ltoa.c	ch = '0' + (value % radix);
	MOVFF	r0x06, r0x09
	CLRF	r0x0a
	CLRF	r0x0b
	CLRF	r0x0c
; ;ic:11: 	send iTemp0 [k2 lr3:26 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ _ultoa_value_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 1}
; ;ic:12: 	send iTemp5 [k12 lr10:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x09 r0x0a r0x0b r0x0c ]{argreg = 2}
; ;ic:13: 	iTemp6 [k13 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x0d r0x0e r0x0f r0x10 ] = call __modulong [k34 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int function    ( unsigned-long-int, unsigned-long-int) }
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	__modulong
	MOVWF	r0x0d
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:14: 	iTemp7 [k14 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x0d ] = (unsigned-char)iTemp6 [k13 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x0d r0x0e r0x0f r0x10 ]
; ;ic:15: 	iTemp4 [k10 lr15:22 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _ultoa_ch_1_1}[r0x0d ] = iTemp7 [k14 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x0d ] + 0x30 {literal-unsigned-char}
	MOVLW	0x30
	ADDWF	r0x0d, F
; ;ic:16: 	iTemp9 [k16 lr16:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp4 [k10 lr15:22 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _ultoa_ch_1_1}[r0x0d ] > 0x39 {literal-unsigned-char}
;	.line	34; ltoa.c	if ( ch > '9') ch += 'a' - '9' - 1;
	MOVLW	0x3a
	SUBWF	r0x0d, W
	BNC	_00106_DS_
; ;ic:17: 	if iTemp9 [k16 lr16:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_0($2)
; ;ic:18: 	iTemp4 [k10 lr15:22 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _ultoa_ch_1_1}[r0x0d ] = iTemp4 [k10 lr15:22 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _ultoa_ch_1_1}[r0x0d ] + 0x27 {literal-unsigned-char}
	MOVLW	0x27
	ADDWF	r0x0d, F
; ;ic:19:  _iffalse_0($2) :
; ;ic:20: 	iTemp12 [k20 lr8:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _ultoa_index_1_1}[r0x07 r0x08 ] = iTemp12 [k20 lr8:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _ultoa_index_1_1}[r0x07 r0x08 ] - 0x1 {literal-unsigned-char}
_00106_DS_:
;	.line	42; ltoa.c	buffer[ --index ] = ch;
	MOVLW	0xff
	ADDWF	r0x07, F
	BTFSS	STATUS, 0
	DECF	r0x08, F
; ;ic:21: 	iTemp13 [k21 lr21:22 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near* }[r0x0e r0x0f ] = iTemp11 [k19 lr7:39 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-char near* }[remat] + iTemp12 [k20 lr8:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _ultoa_index_1_1}[r0x07 r0x08 ]
	MOVLW	LOW(_ultoa_buffer_1_1)
	ADDWF	r0x07, W
	MOVWF	r0x0e
	MOVLW	HIGH(_ultoa_buffer_1_1)
	ADDWFC	r0x08, W
	MOVWF	r0x0f
; ;ic:22: 	*(iTemp13 [k21 lr21:22 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near* }[r0x0e r0x0f ]) := iTemp4 [k10 lr15:22 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _ultoa_ch_1_1}[r0x0d ]
	MOVFF	r0x0e, FSR0L
	MOVFF	r0x0f, FSR0H
	MOVFF	r0x0d, INDF0
; ;ic:23: 	send iTemp0 [k2 lr3:26 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ _ultoa_value_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 1}
; ;ic:24: 	send iTemp5 [k12 lr10:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x09 r0x0a r0x0b r0x0c ]{argreg = 2}
; ;ic:25: 	iTemp0 [k2 lr3:26 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ _ultoa_value_1_1}[r0x00 r0x01 r0x02 r0x03 ] = call __divulong [k35 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int function    ( unsigned-long-int, unsigned-long-int) }
;	.line	43; ltoa.c	value /= radix;
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	__divulong
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:26: 	if iTemp0 [k2 lr3:26 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ _ultoa_value_1_1}[r0x00 r0x01 r0x02 r0x03 ] != 0 goto _dobody_0($3)
;	.line	44; ltoa.c	} while (value != 0);
	MOVF	r0x00, W
	IORWF	r0x01, W
	IORWF	r0x02, W
	IORWF	r0x03, W
	BTFSS	STATUS, 2
	BRA	_00107_DS_
; ;ic:29: 	iTemp20 [k28 lr29:39 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _ultoa_index_1_1}[r0x00 r0x01 ] := iTemp12 [k20 lr8:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _ultoa_index_1_1}[r0x07 r0x08 ]
;	.line	46; ltoa.c	do {
	MOVFF	r0x07, r0x00
	MOVFF	r0x08, r0x01
; ;ic:30: 	iTemp17 [k25 lr30:41 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* }[r0x02 r0x03 ] := iTemp1 [k4 lr4:30 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char near* }{ sir@ _ultoa_str_1_1}[r0x04 r0x05 ]
	MOVFF	r0x04, r0x02
	MOVFF	r0x05, r0x03
; ;ic:31:  _dobody_1($6) :
; ;ic:32: 	iTemp19 [k27 lr32:34 so:0]{ ia0 a2p0 re0 rm0 nos1 ru0 dp0}{unsigned-int}[r0x04 r0x05 ] := iTemp20 [k28 lr29:39 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _ultoa_index_1_1}[r0x00 r0x01 ]
_00110_DS_:
;	.line	47; ltoa.c	*str++ = buffer[index++];
	MOVFF	r0x00, r0x04
	MOVFF	r0x01, r0x05
; ;ic:33: 	iTemp20 [k28 lr29:39 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _ultoa_index_1_1}[r0x00 r0x01 ] = iTemp20 [k28 lr29:39 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _ultoa_index_1_1}[r0x00 r0x01 ] + 0x1 {literal-unsigned-char}
	INCF	r0x00, F
	BTFSC	STATUS, 0
	INCF	r0x01, F
; ;ic:34: 	iTemp21 [k29 lr34:35 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near* }[r0x04 r0x05 ] = iTemp11 [k19 lr7:39 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-char near* }[remat] + iTemp19 [k27 lr32:34 so:0]{ ia0 a2p0 re0 rm0 nos1 ru0 dp0}{unsigned-int}[r0x04 r0x05 ]
	MOVLW	LOW(_ultoa_buffer_1_1)
	ADDWF	r0x04, F
	MOVLW	HIGH(_ultoa_buffer_1_1)
	ADDWFC	r0x05, F
; ;ic:35: 	iTemp22 [k30 lr35:36 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x04 ] = @[iTemp21 [k29 lr34:35 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near* }[r0x04 r0x05 ]]
	MOVFF	r0x04, FSR0L
	MOVFF	r0x05, FSR0H
	MOVFF	INDF0, r0x04
; ;ic:36: 	*(iTemp17 [k25 lr30:41 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char near* }[r0x02 r0x03 ]) := iTemp22 [k30 lr35:36 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x04 ]
	MOVFF	r0x02, FSR0L
	MOVFF	r0x03, FSR0H
	MOVFF	r0x04, INDF0
; ;ic:37: 	iTemp17 [k25 lr30:41 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* }[r0x02 r0x03 ] = iTemp17 [k25 lr30:41 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* }[r0x02 r0x03 ] + 0x1 {literal-unsigned-char}
	INCF	r0x02, F
	BTFSC	STATUS, 0
	INCF	r0x03, F
; ;ic:38: 	iTemp24 [k32 lr38:39 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp20 [k28 lr29:39 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _ultoa_index_1_1}[r0x00 r0x01 ] < 0x20 {literal-unsigned-int}
;	.line	48; ltoa.c	} while ( index < NUMBER_OF_DIGITS );
	MOVLW	0x00
	SUBWF	r0x01, W
	BNZ	_00122_DS_
	MOVLW	0x20
	SUBWF	r0x00, W
_00122_DS_:
	BNC	_00110_DS_
; ;ic:39: 	if iTemp24 [k32 lr38:39 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} != 0 goto _dobody_1($6)
; ;ic:41: 	*(iTemp17 [k25 lr30:41 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char near* }[r0x02 r0x03 ]) := 0x0 {literal-char}
;	.line	50; ltoa.c	*str = 0;  /* string terminator */
	MOVFF	r0x02, FSR0L
	MOVFF	r0x03, FSR0H
	MOVLW	0x00
	CLRF	INDF0
; ;ic:42:  _return($9) :
; ;ic:43: 	eproc _ultoa [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( unsigned-long-int, char near* , unsigned-char) }
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
; code size:	  640 (0x0280) bytes ( 0.49%)
;           	  320 (0x0140) words
; udata size:	   32 (0x0020) bytes ( 2.50%)
; access size:	   16 (0x0010) bytes


	end
