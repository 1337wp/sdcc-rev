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
	global __mullong
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
r0x04	res	1
r0x05	res	1
r0x06	res	1
r0x07	res	1

udata_mullong_0	udata
__mullong_x_1_1	res	4

udata_mullong_1	udata
__mullong_y_1_1	res	4

udata_mullong_2	udata
__mullong_t_1_1	res	4

udata_mullong_3	udata
__mullong_t1_1_1	res	4

udata_mullong_4	udata
__mullong_t2_1_1	res	4

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($2) :
; ;ic:2: 	proc __mullong [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int function    ( long-int, long-int) }
S_mullong___mullong	code
__mullong:
;	.line	57; mullong.c	long _mullong (long a, long b) _IL_REENTRANT
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
; ;ic:3: iTemp0 [k2 lr3:6 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ __mullong_a_1_1}[r0x00 r0x01 r0x02 r0x03 ] = recv __mullong [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int function    ( long-int, long-int) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
; ;ic:4: iTemp1 [k4 lr4:8 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ __mullong_b_1_1}[r0x04 r0x05 r0x06 r0x07 ] = recv __mullong [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int function    ( long-int, long-int) }
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
	MOVLW	0x08
	MOVFF	PLUSW2, r0x06
	MOVLW	0x09
	MOVFF	PLUSW2, r0x07
; ;ic:5: 	iTemp2 [k7 lr5:6 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[__mullong_x_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct bil}]
; ;ic:6: 	*(iTemp2 [k7 lr5:6 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]) := iTemp0 [k2 lr3:6 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ __mullong_a_1_1}[r0x00 r0x01 r0x02 r0x03 ]
;	.line	93; mullong.c	x.l = a;
	MOVF	r0x00, W
	BANKSEL	__mullong_x_1_1
	MOVWF	__mullong_x_1_1, B
	MOVF	r0x01, W
; removed redundant BANKSEL
	MOVWF	(__mullong_x_1_1 + 1), B
	MOVF	r0x02, W
; removed redundant BANKSEL
	MOVWF	(__mullong_x_1_1 + 2), B
	MOVF	r0x03, W
; removed redundant BANKSEL
	MOVWF	(__mullong_x_1_1 + 3), B
; ;ic:7: 	iTemp5 [k12 lr7:8 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[__mullong_y_1_1 [k11 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct bil}]
; ;ic:8: 	*(iTemp5 [k12 lr7:8 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]) := iTemp1 [k4 lr4:8 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ __mullong_b_1_1}[r0x04 r0x05 r0x06 r0x07 ]
;	.line	94; mullong.c	y.l = b;
	MOVF	r0x04, W
	BANKSEL	__mullong_y_1_1
	MOVWF	__mullong_y_1_1, B
	MOVF	r0x05, W
; removed redundant BANKSEL
	MOVWF	(__mullong_y_1_1 + 1), B
	MOVF	r0x06, W
; removed redundant BANKSEL
	MOVWF	(__mullong_y_1_1 + 2), B
	MOVF	r0x07, W
; removed redundant BANKSEL
	MOVWF	(__mullong_y_1_1 + 3), B
; ;ic:9: 	iTemp8 [k17 lr9:21 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-struct __00020001 near* }[remat] = &[__mullong_t_1_1 [k16 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct bil}]
; ;ic:10: 	iTemp10 [k21 lr10:17 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-int near* }[remat] = iTemp8 [k17 lr9:21 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-struct __00020001 near* }[remat] + 0x2 {literal-unsigned-char}
; ;ic:11: 	iTemp11 [k22 lr11:73 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-struct __00020000 near* }[remat] = &[__mullong_x_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct bil}]
; ;ic:12: 	iTemp14 [k27 lr12:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}{ sir@ __mullong_x_1_1} = @[iTemp11 [k22 lr11:73 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-struct __00020000 near* }[remat]]
; ;ic:13: 	iTemp15 [k28 lr13:68 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-struct __00020000 near* }[remat] = &[__mullong_y_1_1 [k11 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct bil}]
; ;ic:14: 	iTemp17 [k32 lr14:57 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-char near* }[remat] = iTemp15 [k28 lr13:68 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-struct __00020000 near* }[remat] + 0x2 {literal-unsigned-char}
; ;ic:15: 	iTemp18 [k33 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}{ sir@ __mullong_y_1_1} = @[iTemp17 [k32 lr14:57 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-char near* }[remat]]
; ;ic:16: 	iTemp19 [k34 lr16:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-int}[r0x00 r0x01 ] = iTemp14 [k27 lr12:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}{ sir@ __mullong_x_1_1} * iTemp18 [k33 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}{ sir@ __mullong_y_1_1}
; ;multiply variable :(__mullong_y_1_1 + 2) by variable __mullong_x_1_1 and store in r0x00
	BANKSEL	__mullong_x_1_1
;	.line	96; mullong.c	t.i.hi = x.b.b0 * y.b.b2;
	MOVF	__mullong_x_1_1, W, B
	BANKSEL	(__mullong_y_1_1 + 2)
	MULWF	(__mullong_y_1_1 + 2), B
	MOVFF	PRODL, r0x00
	MOVFF	PRODH, r0x01
; ;ic:17: 	*(iTemp10 [k21 lr10:17 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-int near* }[remat]) := iTemp19 [k34 lr16:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-int}[r0x00 r0x01 ]
	MOVF	r0x00, W
	BANKSEL	(__mullong_t_1_1 + 2)
	MOVWF	(__mullong_t_1_1 + 2), B
	MOVF	r0x01, W
; removed redundant BANKSEL
	MOVWF	(__mullong_t_1_1 + 3), B
; ;ic:18: 	iTemp27 [k46 lr18:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}{ sir@ __mullong_x_1_1} = @[iTemp11 [k22 lr11:73 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-struct __00020000 near* }[remat]]
; ;ic:19: 	iTemp31 [k52 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}{ sir@ __mullong_y_1_1} = @[iTemp15 [k28 lr13:68 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-struct __00020000 near* }[remat]]
; ;ic:20: 	iTemp32 [k53 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-int}[r0x00 r0x01 ] = iTemp27 [k46 lr18:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}{ sir@ __mullong_x_1_1} * iTemp31 [k52 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}{ sir@ __mullong_y_1_1}
; ;multiply variable :__mullong_y_1_1 by variable __mullong_x_1_1 and store in r0x00
	BANKSEL	__mullong_x_1_1
;	.line	97; mullong.c	t.i.lo = x.b.b0 * y.b.b0;
	MOVF	__mullong_x_1_1, W, B
	BANKSEL	__mullong_y_1_1
	MULWF	__mullong_y_1_1, B
	MOVFF	PRODL, r0x00
	MOVFF	PRODH, r0x01
; ;ic:21: 	*(iTemp8 [k17 lr9:21 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-struct __00020001 near* }[remat]) := iTemp32 [k53 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-int}[r0x00 r0x01 ]
	MOVF	r0x00, W
	BANKSEL	__mullong_t_1_1
	MOVWF	__mullong_t_1_1, B
	MOVF	r0x01, W
; removed redundant BANKSEL
	MOVWF	(__mullong_t_1_1 + 1), B
; ;ic:22: 	iTemp34 [k55 lr22:23 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-struct __00020000 near* }[remat] = &[__mullong_t_1_1 [k16 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct bil}]
; ;ic:23: 	iTemp36 [k59 lr23:38 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-char near* }[remat] = iTemp34 [k55 lr22:23 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-struct __00020000 near* }[remat] + 0x3 {literal-unsigned-char}
; ;ic:24: 	iTemp40 [k65 lr24:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}{ sir@ __mullong_t_1_1} = @[iTemp36 [k59 lr23:38 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-char near* }[remat]]
; ;ic:25: 	iTemp43 [k70 lr25:26 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-char near* }[remat] = iTemp11 [k22 lr11:73 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-struct __00020000 near* }[remat] + 0x3 {literal-unsigned-char}
; ;ic:26: 	iTemp44 [k71 lr26:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}{ sir@ __mullong_x_1_1} = @[iTemp43 [k70 lr25:26 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-char near* }[remat]]
; ;ic:27: 	iTemp48 [k77 lr27:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}{ sir@ __mullong_y_1_1} = @[iTemp15 [k28 lr13:68 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-struct __00020000 near* }[remat]]
; ;ic:28: 	iTemp49 [k78 lr28:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}[r0x00 ] = iTemp44 [k71 lr26:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}{ sir@ __mullong_x_1_1} * iTemp48 [k77 lr27:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}{ sir@ __mullong_y_1_1}
; ;multiply variable :__mullong_y_1_1 by variable (__mullong_x_1_1 + 3) and store in r0x00
	BANKSEL	(__mullong_x_1_1 + 3)
;	.line	99; mullong.c	t.b.b3 += x.b.b3 * y.b.b0;
	MOVF	(__mullong_x_1_1 + 3), W, B
	BANKSEL	__mullong_y_1_1
	MULWF	__mullong_y_1_1, B
	MOVFF	PRODL, r0x00
; ;ic:29: 	iTemp50 [k79 lr29:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}[r0x00 ] = iTemp40 [k65 lr24:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}{ sir@ __mullong_t_1_1} + iTemp49 [k78 lr28:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}[r0x00 ]
	BANKSEL	(__mullong_t_1_1 + 3)
	MOVF	(__mullong_t_1_1 + 3), W, B
	ADDWF	r0x00, F
; ;ic:30: 	*(iTemp36 [k59 lr23:38 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-char near* }[remat]) := iTemp50 [k79 lr29:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}[r0x00 ]
	MOVF	r0x00, W
; removed redundant BANKSEL
	MOVWF	(__mullong_t_1_1 + 3), B
; ;ic:31: 	iTemp57 [k90 lr31:37 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}{ sir@ __mullong_t_1_1} = @[iTemp36 [k59 lr23:38 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-char near* }[remat]]
; ;ic:32: 	iTemp60 [k95 lr32:42 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-char near* }[remat] = iTemp11 [k22 lr11:73 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-struct __00020000 near* }[remat] + 0x2 {literal-unsigned-char}
; ;ic:33: 	iTemp61 [k96 lr33:36 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}{ sir@ __mullong_x_1_1} = @[iTemp60 [k95 lr32:42 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-char near* }[remat]]
; ;ic:34: 	iTemp64 [k101 lr34:74 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-char near* }[remat] = iTemp15 [k28 lr13:68 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-struct __00020000 near* }[remat] + 0x1 {literal-unsigned-char}
; ;ic:35: 	iTemp65 [k102 lr35:36 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}{ sir@ __mullong_y_1_1} = @[iTemp64 [k101 lr34:74 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-char near* }[remat]]
; ;ic:36: 	iTemp66 [k103 lr36:37 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}[r0x00 ] = iTemp61 [k96 lr33:36 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}{ sir@ __mullong_x_1_1} * iTemp65 [k102 lr35:36 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}{ sir@ __mullong_y_1_1}
; ;multiply variable :(__mullong_y_1_1 + 1) by variable (__mullong_x_1_1 + 2) and store in r0x00
	BANKSEL	(__mullong_x_1_1 + 2)
;	.line	100; mullong.c	t.b.b3 += x.b.b2 * y.b.b1;
	MOVF	(__mullong_x_1_1 + 2), W, B
	BANKSEL	(__mullong_y_1_1 + 1)
	MULWF	(__mullong_y_1_1 + 1), B
	MOVFF	PRODL, r0x00
; ;ic:37: 	iTemp67 [k104 lr37:38 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}[r0x00 ] = iTemp57 [k90 lr31:37 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}{ sir@ __mullong_t_1_1} + iTemp66 [k103 lr36:37 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}[r0x00 ]
	BANKSEL	(__mullong_t_1_1 + 3)
	MOVF	(__mullong_t_1_1 + 3), W, B
	ADDWF	r0x00, F
; ;ic:38: 	*(iTemp36 [k59 lr23:38 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-char near* }[remat]) := iTemp67 [k104 lr37:38 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}[r0x00 ]
	MOVF	r0x00, W
; removed redundant BANKSEL
	MOVWF	(__mullong_t_1_1 + 3), B
; ;ic:39: 	iTemp68 [k105 lr39:40 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-struct __00020001 near* }[remat] = &[__mullong_t_1_1 [k16 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct bil}]
; ;ic:40: 	iTemp70 [k109 lr40:53 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-int near* }[remat] = iTemp68 [k105 lr39:40 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-struct __00020001 near* }[remat] + 0x2 {literal-unsigned-char}
; ;ic:41: 	iTemp74 [k115 lr41:45 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-int}{ sir@ __mullong_t_1_1} = @[iTemp70 [k109 lr40:53 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-int near* }[remat]]
; ;ic:42: 	iTemp78 [k121 lr42:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}{ sir@ __mullong_x_1_1} = @[iTemp60 [k95 lr32:42 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-char near* }[remat]]
; ;ic:43: 	iTemp82 [k127 lr43:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}{ sir@ __mullong_y_1_1} = @[iTemp15 [k28 lr13:68 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-struct __00020000 near* }[remat]]
; ;ic:44: 	iTemp83 [k128 lr44:45 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-int}[r0x00 r0x01 ] = iTemp78 [k121 lr42:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}{ sir@ __mullong_x_1_1} * iTemp82 [k127 lr43:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}{ sir@ __mullong_y_1_1}
; ;multiply variable :__mullong_y_1_1 by variable (__mullong_x_1_1 + 2) and store in r0x00
	BANKSEL	(__mullong_x_1_1 + 2)
;	.line	102; mullong.c	t.i.hi += x.b.b2 * y.b.b0;
	MOVF	(__mullong_x_1_1 + 2), W, B
	BANKSEL	__mullong_y_1_1
	MULWF	__mullong_y_1_1, B
	MOVFF	PRODL, r0x00
	MOVFF	PRODH, r0x01
; ;ic:45: 	iTemp85 [k130 lr45:46 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-int}[r0x00 r0x01 ] = iTemp74 [k115 lr41:45 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-int}{ sir@ __mullong_t_1_1} + iTemp83 [k128 lr44:45 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-int}[r0x00 r0x01 ]
	BANKSEL	(__mullong_t_1_1 + 2)
	MOVF	(__mullong_t_1_1 + 2), W, B
	ADDWF	r0x00, F
; removed redundant BANKSEL
	MOVF	(__mullong_t_1_1 + 3), W, B
	ADDWFC	r0x01, F
; ;ic:46: 	*(iTemp70 [k109 lr40:53 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-int near* }[remat]) := iTemp85 [k130 lr45:46 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-int}[r0x00 r0x01 ]
	MOVF	r0x00, W
; removed redundant BANKSEL
	MOVWF	(__mullong_t_1_1 + 2), B
	MOVF	r0x01, W
; removed redundant BANKSEL
	MOVWF	(__mullong_t_1_1 + 3), B
; ;ic:47: 	iTemp92 [k141 lr47:52 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-int}{ sir@ __mullong_t_1_1} = @[iTemp70 [k109 lr40:53 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-int near* }[remat]]
; ;ic:48: 	iTemp95 [k146 lr48:61 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-char near* }[remat] = iTemp11 [k22 lr11:73 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-struct __00020000 near* }[remat] + 0x1 {literal-unsigned-char}
; ;ic:49: 	iTemp96 [k147 lr49:51 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}{ sir@ __mullong_x_1_1} = @[iTemp95 [k146 lr48:61 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-char near* }[remat]]
; ;ic:50: 	iTemp100 [k153 lr50:51 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}{ sir@ __mullong_y_1_1} = @[iTemp64 [k101 lr34:74 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-char near* }[remat]]
; ;ic:51: 	iTemp101 [k154 lr51:52 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-int}[r0x00 r0x01 ] = iTemp96 [k147 lr49:51 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}{ sir@ __mullong_x_1_1} * iTemp100 [k153 lr50:51 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}{ sir@ __mullong_y_1_1}
; ;multiply variable :(__mullong_y_1_1 + 1) by variable (__mullong_x_1_1 + 1) and store in r0x00
	BANKSEL	(__mullong_x_1_1 + 1)
;	.line	103; mullong.c	t.i.hi += x.b.b1 * y.b.b1;
	MOVF	(__mullong_x_1_1 + 1), W, B
	BANKSEL	(__mullong_y_1_1 + 1)
	MULWF	(__mullong_y_1_1 + 1), B
	MOVFF	PRODL, r0x00
	MOVFF	PRODH, r0x01
; ;ic:52: 	iTemp103 [k156 lr52:53 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-int}[r0x00 r0x01 ] = iTemp92 [k141 lr47:52 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-int}{ sir@ __mullong_t_1_1} + iTemp101 [k154 lr51:52 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-int}[r0x00 r0x01 ]
	BANKSEL	(__mullong_t_1_1 + 2)
	MOVF	(__mullong_t_1_1 + 2), W, B
	ADDWF	r0x00, F
; removed redundant BANKSEL
	MOVF	(__mullong_t_1_1 + 3), W, B
	ADDWFC	r0x01, F
; ;ic:53: 	*(iTemp70 [k109 lr40:53 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-int near* }[remat]) := iTemp103 [k156 lr52:53 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-int}[r0x00 r0x01 ]
	MOVF	r0x00, W
; removed redundant BANKSEL
	MOVWF	(__mullong_t_1_1 + 2), B
	MOVF	r0x01, W
; removed redundant BANKSEL
	MOVWF	(__mullong_t_1_1 + 3), B
; ;ic:54: 	iTemp104 [k158 lr54:77 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-struct __00020002 near* }[remat] = &[__mullong_t1_1_1 [k157 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct bil}]
; ;ic:55: 	iTemp106 [k162 lr55:59 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-char near* }[remat] = iTemp104 [k158 lr54:77 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-struct __00020002 near* }[remat] + 0x3 {literal-unsigned-char}
; ;ic:56: 	iTemp110 [k168 lr56:58 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}{ sir@ __mullong_x_1_1} = @[iTemp95 [k146 lr48:61 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-char near* }[remat]]
; ;ic:57: 	iTemp114 [k174 lr57:58 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}{ sir@ __mullong_y_1_1} = @[iTemp17 [k32 lr14:57 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-char near* }[remat]]
; ;ic:58: 	iTemp115 [k175 lr58:59 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}[r0x00 ] = iTemp110 [k168 lr56:58 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}{ sir@ __mullong_x_1_1} * iTemp114 [k174 lr57:58 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}{ sir@ __mullong_y_1_1}
; ;multiply variable :(__mullong_y_1_1 + 2) by variable (__mullong_x_1_1 + 1) and store in r0x00
	BANKSEL	(__mullong_x_1_1 + 1)
;	.line	105; mullong.c	t1.bi.b3 = x.b.b1 * y.b.b2;
	MOVF	(__mullong_x_1_1 + 1), W, B
	BANKSEL	(__mullong_y_1_1 + 2)
	MULWF	(__mullong_y_1_1 + 2), B
	MOVFF	PRODL, r0x00
; ;ic:59: 	*(iTemp106 [k162 lr55:59 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-char near* }[remat]) := iTemp115 [k175 lr58:59 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}[r0x00 ]
	MOVF	r0x00, W
	BANKSEL	(__mullong_t1_1_1 + 3)
	MOVWF	(__mullong_t1_1_1 + 3), B
; ;ic:60: 	iTemp118 [k180 lr60:64 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-int near* }[remat] = iTemp104 [k158 lr54:77 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-struct __00020002 near* }[remat] + 0x1 {literal-unsigned-char}
; ;ic:61: 	iTemp122 [k186 lr61:63 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}{ sir@ __mullong_x_1_1} = @[iTemp95 [k146 lr48:61 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-char near* }[remat]]
; ;ic:62: 	iTemp126 [k192 lr62:63 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}{ sir@ __mullong_y_1_1} = @[iTemp15 [k28 lr13:68 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-struct __00020000 near* }[remat]]
; ;ic:63: 	iTemp127 [k193 lr63:64 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-int}[r0x00 r0x01 ] = iTemp122 [k186 lr61:63 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}{ sir@ __mullong_x_1_1} * iTemp126 [k192 lr62:63 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}{ sir@ __mullong_y_1_1}
; ;multiply variable :__mullong_y_1_1 by variable (__mullong_x_1_1 + 1) and store in r0x00
	BANKSEL	(__mullong_x_1_1 + 1)
;	.line	106; mullong.c	t1.bi.i12 = x.b.b1 * y.b.b0;
	MOVF	(__mullong_x_1_1 + 1), W, B
	BANKSEL	__mullong_y_1_1
	MULWF	__mullong_y_1_1, B
	MOVFF	PRODL, r0x00
	MOVFF	PRODH, r0x01
; ;ic:64: 	*(iTemp118 [k180 lr60:64 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-int near* }[remat]) := iTemp127 [k193 lr63:64 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-int}[r0x00 r0x01 ]
	MOVF	r0x00, W
	BANKSEL	(__mullong_t1_1_1 + 1)
	MOVWF	(__mullong_t1_1_1 + 1), B
	MOVF	r0x01, W
; removed redundant BANKSEL
	MOVWF	(__mullong_t1_1_1 + 2), B
; ;ic:65: 	iTemp129 [k196 lr65:78 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-struct __00020002 near* }[remat] = &[__mullong_t2_1_1 [k195 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct bil}]
; ;ic:66: 	iTemp131 [k200 lr66:71 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-char near* }[remat] = iTemp129 [k196 lr65:78 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-struct __00020002 near* }[remat] + 0x3 {literal-unsigned-char}
; ;ic:67: 	iTemp135 [k206 lr67:70 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}{ sir@ __mullong_x_1_1} = @[iTemp11 [k22 lr11:73 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-struct __00020000 near* }[remat]]
; ;ic:68: 	iTemp138 [k211 lr68:69 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-char near* }[remat] = iTemp15 [k28 lr13:68 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-struct __00020000 near* }[remat] + 0x3 {literal-unsigned-char}
; ;ic:69: 	iTemp139 [k212 lr69:70 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}{ sir@ __mullong_y_1_1} = @[iTemp138 [k211 lr68:69 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-char near* }[remat]]
; ;ic:70: 	iTemp140 [k213 lr70:71 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}[r0x00 ] = iTemp135 [k206 lr67:70 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}{ sir@ __mullong_x_1_1} * iTemp139 [k212 lr69:70 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}{ sir@ __mullong_y_1_1}
; ;multiply variable :(__mullong_y_1_1 + 3) by variable __mullong_x_1_1 and store in r0x00
	BANKSEL	__mullong_x_1_1
;	.line	108; mullong.c	t2.bi.b3 = x.b.b0 * y.b.b3;
	MOVF	__mullong_x_1_1, W, B
	BANKSEL	(__mullong_y_1_1 + 3)
	MULWF	(__mullong_y_1_1 + 3), B
	MOVFF	PRODL, r0x00
; ;ic:71: 	*(iTemp131 [k200 lr66:71 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-char near* }[remat]) := iTemp140 [k213 lr70:71 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}[r0x00 ]
	MOVF	r0x00, W
	BANKSEL	(__mullong_t2_1_1 + 3)
	MOVWF	(__mullong_t2_1_1 + 3), B
; ;ic:72: 	iTemp143 [k218 lr72:76 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-int near* }[remat] = iTemp129 [k196 lr65:78 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-struct __00020002 near* }[remat] + 0x1 {literal-unsigned-char}
; ;ic:73: 	iTemp147 [k224 lr73:75 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}{ sir@ __mullong_x_1_1} = @[iTemp11 [k22 lr11:73 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-struct __00020000 near* }[remat]]
; ;ic:74: 	iTemp151 [k230 lr74:75 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}{ sir@ __mullong_y_1_1} = @[iTemp64 [k101 lr34:74 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-char near* }[remat]]
; ;ic:75: 	iTemp152 [k231 lr75:76 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-int}[r0x00 r0x01 ] = iTemp147 [k224 lr73:75 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}{ sir@ __mullong_x_1_1} * iTemp151 [k230 lr74:75 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}{ sir@ __mullong_y_1_1}
; ;multiply variable :(__mullong_y_1_1 + 1) by variable __mullong_x_1_1 and store in r0x00
	BANKSEL	__mullong_x_1_1
;	.line	109; mullong.c	t2.bi.i12 = x.b.b0 * y.b.b1;
	MOVF	__mullong_x_1_1, W, B
	BANKSEL	(__mullong_y_1_1 + 1)
	MULWF	(__mullong_y_1_1 + 1), B
	MOVFF	PRODL, r0x00
	MOVFF	PRODH, r0x01
; ;ic:76: 	*(iTemp143 [k218 lr72:76 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-int near* }[remat]) := iTemp152 [k231 lr75:76 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-int}[r0x00 r0x01 ]
	MOVF	r0x00, W
	BANKSEL	(__mullong_t2_1_1 + 1)
	MOVWF	(__mullong_t2_1_1 + 1), B
	MOVF	r0x01, W
; removed redundant BANKSEL
	MOVWF	(__mullong_t2_1_1 + 2), B
; ;ic:77: 	*(iTemp104 [k158 lr54:77 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-struct __00020002 near* }[remat]) := 0x0 {literal-unsigned-char}
	BANKSEL	__mullong_t1_1_1
;	.line	111; mullong.c	t1.bi.b0 = 0;
	CLRF	__mullong_t1_1_1, B
; ;ic:78: 	*(iTemp129 [k196 lr65:78 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-struct __00020002 near* }[remat]) := 0x0 {literal-unsigned-char}
	BANKSEL	__mullong_t2_1_1
;	.line	112; mullong.c	t2.bi.b0 = 0;
	CLRF	__mullong_t2_1_1, B
; ;ic:79: 	iTemp160 [k243 lr79:85 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[__mullong_t_1_1 [k16 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct bil}]
; ;ic:80: 	iTemp164 [k249 lr80:83 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ __mullong_t_1_1} = @[iTemp160 [k243 lr79:85 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]]
; ;ic:81: 	iTemp165 [k250 lr81:82 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[__mullong_t1_1_1 [k157 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct bil}]
; ;ic:82: 	iTemp167 [k253 lr82:83 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ __mullong_t1_1_1} = @[iTemp165 [k250 lr81:82 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]]
; ;ic:83: 	iTemp168 [k254 lr83:84 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] = iTemp164 [k249 lr80:83 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ __mullong_t_1_1} + iTemp167 [k253 lr82:83 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ __mullong_t1_1_1}
	BANKSEL	__mullong_t1_1_1
;	.line	113; mullong.c	t.l += t1.l;
	MOVF	__mullong_t1_1_1, W, B
	BANKSEL	__mullong_t_1_1
	ADDWF	__mullong_t_1_1, W, B
	MOVWF	r0x00
	BANKSEL	(__mullong_t1_1_1 + 1)
	MOVF	(__mullong_t1_1_1 + 1), W, B
	BANKSEL	(__mullong_t_1_1 + 1)
	ADDWFC	(__mullong_t_1_1 + 1), W, B
	MOVWF	r0x01
	BANKSEL	(__mullong_t1_1_1 + 2)
	MOVF	(__mullong_t1_1_1 + 2), W, B
	BANKSEL	(__mullong_t_1_1 + 2)
	ADDWFC	(__mullong_t_1_1 + 2), W, B
	MOVWF	r0x02
	BANKSEL	(__mullong_t1_1_1 + 3)
	MOVF	(__mullong_t1_1_1 + 3), W, B
	BANKSEL	(__mullong_t_1_1 + 3)
	ADDWFC	(__mullong_t_1_1 + 3), W, B
	MOVWF	r0x03
; ;ic:84: 	*(iTemp160 [k243 lr79:85 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]) := iTemp168 [k254 lr83:84 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ]
	MOVF	r0x00, W
; removed redundant BANKSEL
	MOVWF	__mullong_t_1_1, B
	MOVF	r0x01, W
; removed redundant BANKSEL
	MOVWF	(__mullong_t_1_1 + 1), B
	MOVF	r0x02, W
; removed redundant BANKSEL
	MOVWF	(__mullong_t_1_1 + 2), B
	MOVF	r0x03, W
; removed redundant BANKSEL
	MOVWF	(__mullong_t_1_1 + 3), B
; ;ic:85: 	iTemp171 [k258 lr85:88 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ __mullong_t_1_1} = @[iTemp160 [k243 lr79:85 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]]
; ;ic:86: 	iTemp172 [k259 lr86:87 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[__mullong_t2_1_1 [k195 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct bil}]
; ;ic:87: 	iTemp174 [k262 lr87:88 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ __mullong_t2_1_1} = @[iTemp172 [k259 lr86:87 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]]
; ;ic:88: 	iTemp175 [k263 lr88:89 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] = iTemp171 [k258 lr85:88 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ __mullong_t_1_1} + iTemp174 [k262 lr87:88 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ __mullong_t2_1_1}
	BANKSEL	__mullong_t2_1_1
;	.line	115; mullong.c	return (t.l + t2.l);
	MOVF	__mullong_t2_1_1, W, B
	BANKSEL	__mullong_t_1_1
	ADDWF	__mullong_t_1_1, W, B
	MOVWF	r0x00
	BANKSEL	(__mullong_t2_1_1 + 1)
	MOVF	(__mullong_t2_1_1 + 1), W, B
	BANKSEL	(__mullong_t_1_1 + 1)
	ADDWFC	(__mullong_t_1_1 + 1), W, B
	MOVWF	r0x01
	BANKSEL	(__mullong_t2_1_1 + 2)
	MOVF	(__mullong_t2_1_1 + 2), W, B
	BANKSEL	(__mullong_t_1_1 + 2)
	ADDWFC	(__mullong_t_1_1 + 2), W, B
	MOVWF	r0x02
	BANKSEL	(__mullong_t2_1_1 + 3)
	MOVF	(__mullong_t2_1_1 + 3), W, B
	BANKSEL	(__mullong_t_1_1 + 3)
	ADDWFC	(__mullong_t_1_1 + 3), W, B
	MOVWF	r0x03
; ;ic:89: 	ret iTemp175 [k263 lr88:89 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ]
	MOVFF	r0x03, FSR0L
	MOVFF	r0x02, PRODH
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
; ;ic:90:  _return($1) :
; ;ic:91: 	eproc __mullong [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int function    ( long-int, long-int) }
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
; code size:	  532 (0x0214) bytes ( 0.41%)
;           	  266 (0x010a) words
; udata size:	   20 (0x0014) bytes ( 1.56%)
; access size:	    8 (0x0008) bytes


	end
