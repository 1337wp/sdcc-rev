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
	global _frexpf

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern __gptrput2
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

udata_frexpf_0	udata
_frexpf_fl_1_1	res	4

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($2) :
; ;ic:2: 	proc _frexpf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float, int generic* ) }
S_frexpf__frexpf	code
_frexpf:
;	.line	28; frexpf.c	float frexpf(const float x, int *pw2)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
	MOVFF	r0x06, POSTDEC1
; ;ic:3: iTemp0 [k2 lr3:6 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _frexpf_x_1_1}[r0x00 r0x01 r0x02 r0x03 ] = recv _frexpf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float, int generic* ) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
; ;ic:4: iTemp1 [k4 lr4:13 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int generic* }{ sir@ _frexpf_pw2_1_1}[r0x04 r0x05 r0x06 ] = recv _frexpf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float, int generic* ) }
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
	MOVLW	0x08
	MOVFF	PLUSW2, r0x06
; ;ic:5: 	iTemp2 [k7 lr5:6 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat] = &[_frexpf_fl_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct float_long}]
; ;ic:6: 	*(iTemp2 [k7 lr5:6 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat]) := iTemp0 [k2 lr3:6 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _frexpf_x_1_1}[r0x00 r0x01 r0x02 r0x03 ]
;	.line	33; frexpf.c	fl.f=x;
	MOVF	r0x00, W
	BANKSEL	_frexpf_fl_1_1
	MOVWF	_frexpf_fl_1_1, B
	MOVF	r0x01, W
; removed redundant BANKSEL
	MOVWF	(_frexpf_fl_1_1 + 1), B
	MOVF	r0x02, W
; removed redundant BANKSEL
	MOVWF	(_frexpf_fl_1_1 + 2), B
	MOVF	r0x03, W
; removed redundant BANKSEL
	MOVWF	(_frexpf_fl_1_1 + 3), B
; ;ic:7: 	iTemp5 [k12 lr7:19 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat] = &[_frexpf_fl_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct float_long}]
; ;ic:8: 	iTemp7 [k15 lr8:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}{ sir@ _frexpf_fl_1_1} = @[iTemp5 [k12 lr7:19 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat]]
; ;ic:9: 	iTemp8 [k16 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}[r0x00 r0x01 r0x02 r0x03 ] = iTemp7 [k15 lr8:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}{ sir@ _frexpf_fl_1_1} >> 0x17 {literal-unsigned-char}
; removed redundant BANKSEL
;	.line	35; frexpf.c	i  = ( fl.l >> 23) & 0x000000ff;
	RLCF	(_frexpf_fl_1_1 + 2), W, B
; removed redundant BANKSEL
	RLCF	(_frexpf_fl_1_1 + 3), W, B
	MOVWF	r0x00
	CLRF	r0x01
; ;ic:10: 	iTemp4 [k10 lr10:12 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ _frexpf_i_1_1}[r0x00 r0x01 r0x02 r0x03 ] = iTemp8 [k16 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}[r0x00 r0x01 r0x02 r0x03 ] & 0xff {literal-volatile-long-int}
	CLRF	r0x01
; ;ic:11: 	iTemp4 [k10 lr10:12 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ _frexpf_i_1_1}[r0x00 r0x01 r0x02 r0x03 ] = iTemp4 [k10 lr10:12 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ _frexpf_i_1_1}[r0x00 r0x01 r0x02 r0x03 ] - 0x7e {literal-long-int}
;	.line	36; frexpf.c	i -= 0x7e;
	MOVLW	0x82
	ADDWF	r0x00, F
	MOVLW	0xff
	ADDWFC	r0x01, F
; ;ic:12: 	iTemp12 [k20 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x00 r0x01 ] = (int)iTemp4 [k10 lr10:12 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ _frexpf_i_1_1}[r0x00 r0x01 r0x02 r0x03 ]
; ;ic:13: 	*(iTemp1 [k4 lr4:13 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{int generic* }{ sir@ _frexpf_pw2_1_1}[r0x04 r0x05 r0x06 ]) := iTemp12 [k20 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x00 r0x01 ]
;	.line	37; frexpf.c	*pw2 = i;
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, PRODH
	MOVFF	r0x04, FSR0L
	MOVFF	r0x05, PRODL
	MOVF	r0x06, W
	CALL	__gptrput2
; ;ic:14: 	iTemp17 [k27 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}{ sir@ _frexpf_fl_1_1} = @[iTemp5 [k12 lr7:19 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat]]
; ;ic:15: 	iTemp19 [k29 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] = iTemp17 [k27 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}{ sir@ _frexpf_fl_1_1} & 0x807fffff {literal-unsigned-long-int}
	BANKSEL	_frexpf_fl_1_1
;	.line	38; frexpf.c	fl.l &= 0x807fffff; /* strip all exponent bits */
	MOVF	_frexpf_fl_1_1, W, B
	MOVWF	r0x00
; removed redundant BANKSEL
	MOVF	(_frexpf_fl_1_1 + 1), W, B
	MOVWF	r0x01
	MOVLW	0x7f
; removed redundant BANKSEL
	ANDWF	(_frexpf_fl_1_1 + 2), W, B
	MOVWF	r0x02
	MOVLW	0x80
; removed redundant BANKSEL
	ANDWF	(_frexpf_fl_1_1 + 3), W, B
	MOVWF	r0x03
; ;ic:16: 	*(iTemp5 [k12 lr7:19 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat]) := iTemp19 [k29 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ]
	MOVF	r0x00, W
; removed redundant BANKSEL
	MOVWF	_frexpf_fl_1_1, B
	MOVF	r0x01, W
; removed redundant BANKSEL
	MOVWF	(_frexpf_fl_1_1 + 1), B
	MOVF	r0x02, W
; removed redundant BANKSEL
	MOVWF	(_frexpf_fl_1_1 + 2), B
	MOVF	r0x03, W
; removed redundant BANKSEL
	MOVWF	(_frexpf_fl_1_1 + 3), B
; ;ic:17: 	iTemp25 [k37 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}{ sir@ _frexpf_fl_1_1} = @[iTemp5 [k12 lr7:19 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat]]
; ;ic:18: 	iTemp26 [k38 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int}[r0x00 r0x01 r0x02 r0x03 ] = iTemp25 [k37 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}{ sir@ _frexpf_fl_1_1} | 0x3f000000 {literal-long-int}
; removed redundant BANKSEL
;	.line	39; frexpf.c	fl.l |= 0x3f000000; /* mantissa between 0.5 and 1 */
	MOVF	_frexpf_fl_1_1, W, B
	MOVWF	r0x00
; removed redundant BANKSEL
	MOVF	(_frexpf_fl_1_1 + 1), W, B
	MOVWF	r0x01
; removed redundant BANKSEL
	MOVF	(_frexpf_fl_1_1 + 2), W, B
	MOVWF	r0x02
	MOVLW	0x3f
; removed redundant BANKSEL
	IORWF	(_frexpf_fl_1_1 + 3), W, B
	MOVWF	r0x03
; ;ic:19: 	*(iTemp5 [k12 lr7:19 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat]) := iTemp26 [k38 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int}[r0x00 r0x01 r0x02 r0x03 ]
	MOVF	r0x00, W
; removed redundant BANKSEL
	MOVWF	_frexpf_fl_1_1, B
	MOVF	r0x01, W
; removed redundant BANKSEL
	MOVWF	(_frexpf_fl_1_1 + 1), B
	MOVF	r0x02, W
; removed redundant BANKSEL
	MOVWF	(_frexpf_fl_1_1 + 2), B
	MOVF	r0x03, W
; removed redundant BANKSEL
	MOVWF	(_frexpf_fl_1_1 + 3), B
; ;ic:20: 	iTemp27 [k39 lr20:21 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat] = &[_frexpf_fl_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct float_long}]
; ;ic:21: 	iTemp29 [k42 lr21:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-float}{ sir@ _frexpf_fl_1_1} = @[iTemp27 [k39 lr20:21 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat]]
; ;ic:22: 	ret iTemp29 [k42 lr21:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-float}{ sir@ _frexpf_fl_1_1}
;	.line	40; frexpf.c	return(fl.f);
	MOVFF	(_frexpf_fl_1_1 + 3), FSR0L
	MOVFF	(_frexpf_fl_1_1 + 2), PRODH
	MOVFF	(_frexpf_fl_1_1 + 1), PRODL
; removed redundant BANKSEL
	MOVF	_frexpf_fl_1_1, W, B
; ;ic:23:  _return($1) :
; ;ic:24: 	eproc _frexpf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float, int generic* ) }
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
; code size:	  256 (0x0100) bytes ( 0.20%)
;           	  128 (0x0080) words
; udata size:	    4 (0x0004) bytes ( 0.31%)
; access size:	    7 (0x0007) bytes


	end
