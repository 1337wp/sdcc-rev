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
	global __mulint
;--------------------------------------------------------
;	Equates to used internal registers
;--------------------------------------------------------
WREG	equ	0xfe8
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

udata_mulint_0	udata
__mulint_x_1_1	res	2

udata_mulint_1	udata
__mulint_y_1_1	res	2

udata_mulint_2	udata
__mulint_t_1_1	res	2

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($2) :
; ;ic:2: 	proc __mulint [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( int, int) }
S_mulint___mulint	code
__mulint:
;	.line	37; mulint.c	int _mulint (int a, int b) _IL_REENTRANT
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
; ;ic:3: iTemp0 [k2 lr3:6 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ __mulint_a_1_1}[r0x00 r0x01 ] = recv __mulint [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( int, int) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
; ;ic:4: iTemp1 [k4 lr4:8 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ __mulint_b_1_1}[r0x02 r0x03 ] = recv __mulint [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( int, int) }
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
; ;ic:5: 	iTemp2 [k7 lr5:6 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-int near* }[remat] = &[__mulint_x_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct uu}]
; ;ic:6: 	*(iTemp2 [k7 lr5:6 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-int near* }[remat]) := iTemp0 [k2 lr3:6 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ __mulint_a_1_1}[r0x00 r0x01 ]
;	.line	43; mulint.c	x.t = a;
	MOVF	r0x00, W
	BANKSEL	__mulint_x_1_1
	MOVWF	__mulint_x_1_1, B
	MOVF	r0x01, W
; removed redundant BANKSEL
	MOVWF	(__mulint_x_1_1 + 1), B
; ;ic:7: 	iTemp5 [k12 lr7:8 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-int near* }[remat] = &[__mulint_y_1_1 [k11 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct uu}]
; ;ic:8: 	*(iTemp5 [k12 lr7:8 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-int near* }[remat]) := iTemp1 [k4 lr4:8 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ __mulint_b_1_1}[r0x02 r0x03 ]
;	.line	44; mulint.c	y.t = b;
	MOVF	r0x02, W
	BANKSEL	__mulint_y_1_1
	MOVWF	__mulint_y_1_1, B
	MOVF	r0x03, W
; removed redundant BANKSEL
	MOVWF	(__mulint_y_1_1 + 1), B
; ;ic:9: 	iTemp8 [k17 lr9:15 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-int near* }[remat] = &[__mulint_t_1_1 [k16 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct uu}]
; ;ic:10: 	iTemp10 [k20 lr10:23 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-struct __00020000 near* }[remat] = &[__mulint_x_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct uu}]
; ;ic:11: 	iTemp13 [k25 lr11:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}{ sir@ __mulint_x_1_1} = @[iTemp10 [k20 lr10:23 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-struct __00020000 near* }[remat]]
; ;ic:12: 	iTemp14 [k26 lr12:25 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-struct __00020000 near* }[remat] = &[__mulint_y_1_1 [k11 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct uu}]
; ;ic:13: 	iTemp17 [k31 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}{ sir@ __mulint_y_1_1} = @[iTemp14 [k26 lr12:25 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-struct __00020000 near* }[remat]]
; ;ic:14: 	iTemp18 [k32 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-int}[r0x00 r0x01 ] = iTemp13 [k25 lr11:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}{ sir@ __mulint_x_1_1} * iTemp17 [k31 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}{ sir@ __mulint_y_1_1}
; ;multiply variable :__mulint_y_1_1 by variable __mulint_x_1_1 and store in r0x00
	BANKSEL	__mulint_x_1_1
;	.line	45; mulint.c	t.t = x.s.lo * y.s.lo;
	MOVF	__mulint_x_1_1, W, B
	BANKSEL	__mulint_y_1_1
	MULWF	__mulint_y_1_1, B
	MOVFF	PRODL, r0x00
	MOVFF	PRODH, r0x01
; ;ic:15: 	*(iTemp8 [k17 lr9:15 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-int near* }[remat]) := iTemp18 [k32 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-int}[r0x00 r0x01 ]
	MOVF	r0x00, W
	BANKSEL	__mulint_t_1_1
	MOVWF	__mulint_t_1_1, B
	MOVF	r0x01, W
; removed redundant BANKSEL
	MOVWF	(__mulint_t_1_1 + 1), B
; ;ic:16: 	iTemp20 [k34 lr16:17 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-struct __00020000 near* }[remat] = &[__mulint_t_1_1 [k16 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct uu}]
; ;ic:17: 	iTemp22 [k38 lr17:29 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-char near* }[remat] = iTemp20 [k34 lr16:17 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-struct __00020000 near* }[remat] + 0x1 {literal-unsigned-char}
; ;ic:18: 	iTemp26 [k44 lr18:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}{ sir@ __mulint_t_1_1} = @[iTemp22 [k38 lr17:29 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-char near* }[remat]]
; ;ic:19: 	iTemp30 [k50 lr19:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}{ sir@ __mulint_x_1_1} = @[iTemp10 [k20 lr10:23 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-struct __00020000 near* }[remat]]
; ;ic:20: 	iTemp33 [k55 lr20:21 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-char near* }[remat] = iTemp14 [k26 lr12:25 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-struct __00020000 near* }[remat] + 0x1 {literal-unsigned-char}
; ;ic:21: 	iTemp34 [k56 lr21:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}{ sir@ __mulint_y_1_1} = @[iTemp33 [k55 lr20:21 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-char near* }[remat]]
; ;ic:22: 	iTemp35 [k57 lr22:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}[r0x00 ] = iTemp30 [k50 lr19:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}{ sir@ __mulint_x_1_1} * iTemp34 [k56 lr21:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}{ sir@ __mulint_y_1_1}
; ;multiply variable :(__mulint_y_1_1 + 1) by variable __mulint_x_1_1 and store in r0x00
	BANKSEL	__mulint_x_1_1
;	.line	46; mulint.c	t.s.hi += (x.s.lo * y.s.hi) + (x.s.hi * y.s.lo);
	MOVF	__mulint_x_1_1, W, B
	BANKSEL	(__mulint_y_1_1 + 1)
	MULWF	(__mulint_y_1_1 + 1), B
	MOVFF	PRODL, r0x00
; ;ic:23: 	iTemp38 [k62 lr23:24 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-char near* }[remat] = iTemp10 [k20 lr10:23 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-struct __00020000 near* }[remat] + 0x1 {literal-unsigned-char}
; ;ic:24: 	iTemp39 [k63 lr24:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}{ sir@ __mulint_x_1_1} = @[iTemp38 [k62 lr23:24 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-char near* }[remat]]
; ;ic:25: 	iTemp43 [k69 lr25:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}{ sir@ __mulint_y_1_1} = @[iTemp14 [k26 lr12:25 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-struct __00020000 near* }[remat]]
; ;ic:26: 	iTemp44 [k70 lr26:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}[r0x01 ] = iTemp39 [k63 lr24:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}{ sir@ __mulint_x_1_1} * iTemp43 [k69 lr25:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}{ sir@ __mulint_y_1_1}
; ;multiply variable :__mulint_y_1_1 by variable (__mulint_x_1_1 + 1) and store in r0x01
	BANKSEL	(__mulint_x_1_1 + 1)
	MOVF	(__mulint_x_1_1 + 1), W, B
	BANKSEL	__mulint_y_1_1
	MULWF	__mulint_y_1_1, B
	MOVFF	PRODL, r0x01
; ;ic:27: 	iTemp45 [k71 lr27:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}[r0x00 ] = iTemp35 [k57 lr22:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}[r0x00 ] + iTemp44 [k70 lr26:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}[r0x01 ]
	MOVF	r0x01, W
	ADDWF	r0x00, F
; ;ic:28: 	iTemp46 [k72 lr28:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}[r0x00 ] = iTemp26 [k44 lr18:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}{ sir@ __mulint_t_1_1} + iTemp45 [k71 lr27:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}[r0x00 ]
	BANKSEL	(__mulint_t_1_1 + 1)
	MOVF	(__mulint_t_1_1 + 1), W, B
	ADDWF	r0x00, F
; ;ic:29: 	*(iTemp22 [k38 lr17:29 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-char near* }[remat]) := iTemp46 [k72 lr28:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}[r0x00 ]
	MOVF	r0x00, W
; removed redundant BANKSEL
	MOVWF	(__mulint_t_1_1 + 1), B
; ;ic:30: 	iTemp47 [k73 lr30:31 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-int near* }[remat] = &[__mulint_t_1_1 [k16 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct uu}]
; ;ic:31: 	iTemp49 [k76 lr31:32 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-int}{ sir@ __mulint_t_1_1} = @[iTemp47 [k73 lr30:31 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-int near* }[remat]]
; ;ic:32: 	ret iTemp49 [k76 lr31:32 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-int}{ sir@ __mulint_t_1_1}
;	.line	48; mulint.c	return t.t;
	MOVFF	(__mulint_t_1_1 + 1), PRODL
; removed redundant BANKSEL
	MOVF	__mulint_t_1_1, W, B
; ;ic:33:  _return($1) :
; ;ic:34: 	eproc __mulint [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( int, int) }
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	



; Statistics:
; code size:	  160 (0x00a0) bytes ( 0.12%)
;           	   80 (0x0050) words
; udata size:	    6 (0x0006) bytes ( 0.47%)
; access size:	    4 (0x0004) bytes


	end
