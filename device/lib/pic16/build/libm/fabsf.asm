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
	global _fabsf

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern _errno
;--------------------------------------------------------
;	Equates to used internal registers
;--------------------------------------------------------
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

udata_fabsf_0	udata
_fabsf_fl_1_1	res	4

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($2) :
; ;ic:2: 	proc _fabsf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float) }
S_fabsf__fabsf	code
_fabsf:
;	.line	28; fabsf.c	float fabsf(const float x) _MATH_REENTRANT
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
; ;ic:3: iTemp0 [k2 lr3:5 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _fabsf_x_1_1}[r0x00 r0x01 r0x02 r0x03 ] = recv _fabsf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
; ;ic:4: 	iTemp1 [k5 lr4:5 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat] = &[_fabsf_fl_1_1 [k4 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct float_long}]
; ;ic:5: 	*(iTemp1 [k5 lr4:5 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat]) := iTemp0 [k2 lr3:5 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _fabsf_x_1_1}[r0x00 r0x01 r0x02 r0x03 ]
;	.line	32; fabsf.c	fl.f = x;
	MOVF	r0x00, W
	BANKSEL	_fabsf_fl_1_1
	MOVWF	_fabsf_fl_1_1, B
	MOVF	r0x01, W
; removed redundant BANKSEL
	MOVWF	(_fabsf_fl_1_1 + 1), B
	MOVF	r0x02, W
; removed redundant BANKSEL
	MOVWF	(_fabsf_fl_1_1 + 2), B
	MOVF	r0x03, W
; removed redundant BANKSEL
	MOVWF	(_fabsf_fl_1_1 + 3), B
; ;ic:6: 	iTemp3 [k8 lr6:9 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat] = &[_fabsf_fl_1_1 [k4 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct float_long}]
; ;ic:7: 	iTemp7 [k14 lr7:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}{ sir@ _fabsf_fl_1_1} = @[iTemp3 [k8 lr6:9 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat]]
; ;ic:8: 	iTemp8 [k15 lr8:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int}[r0x00 r0x01 r0x02 r0x03 ] = iTemp7 [k14 lr7:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}{ sir@ _fabsf_fl_1_1} & 0x7fffffff {literal-long-int}
; removed redundant BANKSEL
;	.line	33; fabsf.c	fl.l &= 0x7fffffff;
	MOVF	_fabsf_fl_1_1, W, B
	MOVWF	r0x00
; removed redundant BANKSEL
	MOVF	(_fabsf_fl_1_1 + 1), W, B
	MOVWF	r0x01
; removed redundant BANKSEL
	MOVF	(_fabsf_fl_1_1 + 2), W, B
	MOVWF	r0x02
	MOVLW	0x7f
; removed redundant BANKSEL
	ANDWF	(_fabsf_fl_1_1 + 3), W, B
	MOVWF	r0x03
; ;ic:9: 	*(iTemp3 [k8 lr6:9 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat]) := iTemp8 [k15 lr8:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int}[r0x00 r0x01 r0x02 r0x03 ]
	MOVF	r0x00, W
; removed redundant BANKSEL
	MOVWF	_fabsf_fl_1_1, B
	MOVF	r0x01, W
; removed redundant BANKSEL
	MOVWF	(_fabsf_fl_1_1 + 1), B
	MOVF	r0x02, W
; removed redundant BANKSEL
	MOVWF	(_fabsf_fl_1_1 + 2), B
	MOVF	r0x03, W
; removed redundant BANKSEL
	MOVWF	(_fabsf_fl_1_1 + 3), B
; ;ic:10: 	iTemp9 [k16 lr10:11 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat] = &[_fabsf_fl_1_1 [k4 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct float_long}]
; ;ic:11: 	iTemp11 [k19 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-float}{ sir@ _fabsf_fl_1_1} = @[iTemp9 [k16 lr10:11 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat]]
; ;ic:12: 	ret iTemp11 [k19 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-float}{ sir@ _fabsf_fl_1_1}
;	.line	34; fabsf.c	return fl.f;
	MOVFF	(_fabsf_fl_1_1 + 3), FSR0L
	MOVFF	(_fabsf_fl_1_1 + 2), PRODH
	MOVFF	(_fabsf_fl_1_1 + 1), PRODL
; removed redundant BANKSEL
	MOVF	_fabsf_fl_1_1, W, B
; ;ic:13:  _return($1) :
; ;ic:14: 	eproc _fabsf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float) }
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	



; Statistics:
; code size:	  136 (0x0088) bytes ( 0.10%)
;           	   68 (0x0044) words
; udata size:	    4 (0x0004) bytes ( 0.31%)
; access size:	    4 (0x0004) bytes


	end
