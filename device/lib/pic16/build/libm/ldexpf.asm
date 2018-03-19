;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:59 2018
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f452

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global _ldexpf

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern _errno
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

udata_ldexpf_0	udata
_ldexpf_fl_1_1	res	4

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($2) :
; ;ic:2: 	proc _ldexpf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float, const-int) }
S_ldexpf__ldexpf	code
_ldexpf:
;	.line	28; ldexpf.c	float ldexpf(const float x, const int pw2)
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
; ;ic:3: iTemp0 [k2 lr3:6 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _ldexpf_x_1_1}[r0x00 r0x01 r0x02 r0x03 ] = recv _ldexpf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float, const-int) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
; ;ic:4: iTemp1 [k4 lr4:11 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-int}{ sir@ _ldexpf_pw2_1_1}[r0x04 r0x05 ] = recv _ldexpf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float, const-int) }
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
; ;ic:5: 	iTemp2 [k7 lr5:6 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat] = &[_ldexpf_fl_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct float_long}]
; ;ic:6: 	*(iTemp2 [k7 lr5:6 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat]) := iTemp0 [k2 lr3:6 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _ldexpf_x_1_1}[r0x00 r0x01 r0x02 r0x03 ]
;	.line	33; ldexpf.c	fl.f = x;
	MOVF	r0x00, W
	BANKSEL	_ldexpf_fl_1_1
	MOVWF	_ldexpf_fl_1_1, B
	MOVF	r0x01, W
; removed redundant BANKSEL
	MOVWF	(_ldexpf_fl_1_1 + 1), B
	MOVF	r0x02, W
; removed redundant BANKSEL
	MOVWF	(_ldexpf_fl_1_1 + 2), B
	MOVF	r0x03, W
; removed redundant BANKSEL
	MOVWF	(_ldexpf_fl_1_1 + 3), B
; ;ic:7: 	iTemp5 [k12 lr7:18 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat] = &[_ldexpf_fl_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct float_long}]
; ;ic:8: 	iTemp7 [k15 lr8:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}{ sir@ _ldexpf_fl_1_1} = @[iTemp5 [k12 lr7:18 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat]]
; ;ic:9: 	iTemp8 [k16 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}[r0x00 r0x01 r0x02 r0x03 ] = iTemp7 [k15 lr8:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}{ sir@ _ldexpf_fl_1_1} >> 0x17 {literal-unsigned-char}
; removed redundant BANKSEL
;	.line	35; ldexpf.c	e=(fl.l >> 23) & 0x000000ff;
	RLCF	(_ldexpf_fl_1_1 + 2), W, B
; removed redundant BANKSEL
	RLCF	(_ldexpf_fl_1_1 + 3), W, B
	MOVWF	r0x00
	CLRF	r0x01
; ;ic:10: 	iTemp4 [k10 lr10:13 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ _ldexpf_e_1_1}[r0x00 r0x01 r0x02 r0x03 ] = iTemp8 [k16 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}[r0x00 r0x01 r0x02 r0x03 ] & 0xff {literal-volatile-long-int}
	CLRF	r0x01
	CLRF	r0x02
	CLRF	r0x03
; ;ic:11: 	iTemp10 [k18 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int}[r0x04 r0x05 r0x06 r0x07 ] = (long-int)iTemp1 [k4 lr4:11 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-int}{ sir@ _ldexpf_pw2_1_1}[r0x04 r0x05 ]
;	.line	36; ldexpf.c	e+=pw2;
	CLRF	WREG
	BTFSC	r0x05, 7
	MOVLW	0xff
	MOVWF	r0x06
	MOVWF	r0x07
; ;ic:12: 	iTemp4 [k10 lr10:13 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ _ldexpf_e_1_1}[r0x00 r0x01 r0x02 r0x03 ] = iTemp4 [k10 lr10:13 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ _ldexpf_e_1_1}[r0x00 r0x01 r0x02 r0x03 ] + iTemp10 [k18 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int}[r0x04 r0x05 r0x06 r0x07 ]
	MOVF	r0x04, W
	ADDWF	r0x00, F
	MOVF	r0x05, W
	ADDWFC	r0x01, F
	MOVF	r0x06, W
	ADDWFC	r0x02, F
	MOVF	r0x07, W
	ADDWFC	r0x03, F
; ;ic:13: 	iTemp14 [k23 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int}[r0x00 r0x01 r0x02 r0x03 ] = iTemp4 [k10 lr10:13 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ _ldexpf_e_1_1}[r0x00 r0x01 r0x02 r0x03 ] & 0xff {literal-long-int}
;	.line	37; ldexpf.c	fl.l= ((e & 0xff) << 23) | (fl.l & 0x807fffff);
	CLRF	r0x01
	CLRF	r0x02
	CLRF	r0x03
; ;ic:14: 	iTemp15 [k24 lr14:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int}[r0x04 r0x05 r0x06 r0x07 ] = iTemp14 [k23 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int}[r0x00 r0x01 r0x02 r0x03 ] << 0x17 {literal-unsigned-char}
	RRCF	r0x01, W
	RRCF	r0x00, W
	MOVWF	r0x07
	CLRF	r0x06
	RRCF	r0x06, F
	CLRF	r0x04
	CLRF	r0x05
; ;ic:15: 	iTemp18 [k28 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}{ sir@ _ldexpf_fl_1_1} = @[iTemp5 [k12 lr7:18 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat]]
; ;ic:16: 	iTemp20 [k30 lr16:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] = iTemp18 [k28 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}{ sir@ _ldexpf_fl_1_1} & 0x807fffff {literal-unsigned-long-int}
; removed redundant BANKSEL
	MOVF	_ldexpf_fl_1_1, W, B
	MOVWF	r0x00
; removed redundant BANKSEL
	MOVF	(_ldexpf_fl_1_1 + 1), W, B
	MOVWF	r0x01
	MOVLW	0x7f
; removed redundant BANKSEL
	ANDWF	(_ldexpf_fl_1_1 + 2), W, B
	MOVWF	r0x02
	MOVLW	0x80
; removed redundant BANKSEL
	ANDWF	(_ldexpf_fl_1_1 + 3), W, B
	MOVWF	r0x03
; ;ic:17: 	iTemp22 [k32 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x04 r0x05 r0x06 r0x07 ] = iTemp15 [k24 lr14:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int}[r0x04 r0x05 r0x06 r0x07 ] | iTemp20 [k30 lr16:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ]
	MOVF	r0x00, W
	IORWF	r0x04, F
	MOVF	r0x01, W
	IORWF	r0x05, F
	MOVF	r0x02, W
	IORWF	r0x06, F
	MOVF	r0x03, W
	IORWF	r0x07, F
; ;ic:18: 	*(iTemp5 [k12 lr7:18 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat]) := iTemp22 [k32 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x04 r0x05 r0x06 r0x07 ]
	MOVF	r0x04, W
; removed redundant BANKSEL
	MOVWF	_ldexpf_fl_1_1, B
	MOVF	r0x05, W
; removed redundant BANKSEL
	MOVWF	(_ldexpf_fl_1_1 + 1), B
	MOVF	r0x06, W
; removed redundant BANKSEL
	MOVWF	(_ldexpf_fl_1_1 + 2), B
	MOVF	r0x07, W
; removed redundant BANKSEL
	MOVWF	(_ldexpf_fl_1_1 + 3), B
; ;ic:19: 	iTemp24 [k34 lr19:20 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat] = &[_ldexpf_fl_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct float_long}]
; ;ic:20: 	iTemp26 [k37 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-float}{ sir@ _ldexpf_fl_1_1} = @[iTemp24 [k34 lr19:20 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat]]
; ;ic:21: 	ret iTemp26 [k37 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-float}{ sir@ _ldexpf_fl_1_1}
;	.line	39; ldexpf.c	return(fl.f);
	MOVFF	(_ldexpf_fl_1_1 + 3), FSR0L
	MOVFF	(_ldexpf_fl_1_1 + 2), PRODH
	MOVFF	(_ldexpf_fl_1_1 + 1), PRODL
; removed redundant BANKSEL
	MOVF	_ldexpf_fl_1_1, W, B
; ;ic:22:  _return($1) :
; ;ic:23: 	eproc _ldexpf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float, const-int) }
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
; code size:	  258 (0x0102) bytes ( 0.20%)
;           	  129 (0x0081) words
; udata size:	    4 (0x0004) bytes ( 0.31%)
; access size:	    8 (0x0008) bytes


	end
