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
	global ___fps16x16_mul

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern __mullong
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

udata_fps16x16_mul_0	udata
___fps16x16_mul_u1_1_1	res	4

udata_fps16x16_mul_1	udata
___fps16x16_mul_u2_1_1	res	4

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($2) :
; ;ic:2: 	proc ___fps16x16_mul [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{fixed16x16 function    ( fixed16x16, fixed16x16) }
S_fps16x16_mul____fps16x16_mul	code
___fps16x16_mul:
;	.line	7; fps16x16_mul.c	__fixed16x16 __fps16x16_mul(__fixed16x16 a, __fixed16x16 b)
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
; ;ic:3: iTemp0 [k2 lr3:6 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{fixed16x16}{ sir@ ___fps16x16_mul_a_1_1}[r0x00 r0x01 r0x02 r0x03 ] = recv ___fps16x16_mul [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{fixed16x16 function    ( fixed16x16, fixed16x16) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
; ;ic:4: iTemp1 [k4 lr4:8 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{fixed16x16}{ sir@ ___fps16x16_mul_b_1_1}[r0x04 r0x05 r0x06 r0x07 ] = recv ___fps16x16_mul [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{fixed16x16 function    ( fixed16x16, fixed16x16) }
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
	MOVLW	0x08
	MOVFF	PLUSW2, r0x06
	MOVLW	0x09
	MOVFF	PLUSW2, r0x07
; ;ic:5: 	iTemp2 [k7 lr5:6 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-fixed16x16 near* }[remat] = &[___fps16x16_mul_u1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct u_t}]
; ;ic:6: 	*(iTemp2 [k7 lr5:6 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-fixed16x16 near* }[remat]) := iTemp0 [k2 lr3:6 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{fixed16x16}{ sir@ ___fps16x16_mul_a_1_1}[r0x00 r0x01 r0x02 r0x03 ]
;	.line	11; fps16x16_mul.c	u1.fix = a;
	MOVF	r0x00, W
	BANKSEL	___fps16x16_mul_u1_1_1
	MOVWF	___fps16x16_mul_u1_1_1, B
	MOVF	r0x01, W
; removed redundant BANKSEL
	MOVWF	(___fps16x16_mul_u1_1_1 + 1), B
	MOVF	r0x02, W
; removed redundant BANKSEL
	MOVWF	(___fps16x16_mul_u1_1_1 + 2), B
	MOVF	r0x03, W
; removed redundant BANKSEL
	MOVWF	(___fps16x16_mul_u1_1_1 + 3), B
; ;ic:7: 	iTemp4 [k11 lr7:8 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-fixed16x16 near* }[remat] = &[___fps16x16_mul_u2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct u_t}]
; ;ic:8: 	*(iTemp4 [k11 lr7:8 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-fixed16x16 near* }[remat]) := iTemp1 [k4 lr4:8 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{fixed16x16}{ sir@ ___fps16x16_mul_b_1_1}[r0x04 r0x05 r0x06 r0x07 ]
;	.line	12; fps16x16_mul.c	u2.fix = b;
	MOVF	r0x04, W
	BANKSEL	___fps16x16_mul_u2_1_1
	MOVWF	___fps16x16_mul_u2_1_1, B
	MOVF	r0x05, W
; removed redundant BANKSEL
	MOVWF	(___fps16x16_mul_u2_1_1 + 1), B
	MOVF	r0x06, W
; removed redundant BANKSEL
	MOVWF	(___fps16x16_mul_u2_1_1 + 2), B
	MOVF	r0x07, W
; removed redundant BANKSEL
	MOVWF	(___fps16x16_mul_u2_1_1 + 3), B
; ;ic:9: 	iTemp6 [k14 lr9:20 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat] = &[___fps16x16_mul_u1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct u_t}]
; ;ic:10: 	iTemp8 [k17 lr10:11 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat] = &[___fps16x16_mul_u1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct u_t}]
; ;ic:11: 	iTemp10 [k20 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}{ sir@ ___fps16x16_mul_u1_1_1} = @[iTemp8 [k17 lr10:11 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat]]
; ;ic:12: 	iTemp11 [k21 lr12:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}[r0x00 r0x01 r0x02 r0x03 ] = iTemp10 [k20 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}{ sir@ ___fps16x16_mul_u1_1_1} >> 0x4 {literal-unsigned-char}
	BANKSEL	___fps16x16_mul_u1_1_1
;	.line	14; fps16x16_mul.c	u1.value = (u1.value >> 4) * (u2.value >> 4) >> 8;
	SWAPF	___fps16x16_mul_u1_1_1, W, B
	ANDLW	0x0f
	MOVWF	r0x00
; removed redundant BANKSEL
	SWAPF	(___fps16x16_mul_u1_1_1 + 1), W, B
	MOVWF	r0x01
	ANDLW	0xf0
	XORWF	r0x01, F
	ADDWF	r0x00, F
; removed redundant BANKSEL
	MOVF	(___fps16x16_mul_u1_1_1 + 2), W, B
	SWAPF	WREG, W
	ANDLW	0xf0
	IORWF	r0x01, F
; removed redundant BANKSEL
	SWAPF	(___fps16x16_mul_u1_1_1 + 2), W, B
	ANDLW	0x0f
	MOVWF	r0x02
; removed redundant BANKSEL
	SWAPF	(___fps16x16_mul_u1_1_1 + 3), W, B
	MOVWF	r0x03
	ANDLW	0xf0
	XORWF	r0x03, F
	ADDWF	r0x02, F
	MOVLW	0xf0
	BTFSC	r0x03, 3
	ADDWF	r0x03, F
; ;ic:13: 	iTemp12 [k22 lr13:14 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat] = &[___fps16x16_mul_u2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct u_t}]
; ;ic:14: 	iTemp14 [k25 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}{ sir@ ___fps16x16_mul_u2_1_1} = @[iTemp12 [k22 lr13:14 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat]]
; ;ic:15: 	iTemp15 [k26 lr15:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}[r0x04 r0x05 r0x06 r0x07 ] = iTemp14 [k25 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}{ sir@ ___fps16x16_mul_u2_1_1} >> 0x4 {literal-unsigned-char}
	BANKSEL	___fps16x16_mul_u2_1_1
	SWAPF	___fps16x16_mul_u2_1_1, W, B
	ANDLW	0x0f
	MOVWF	r0x04
; removed redundant BANKSEL
	SWAPF	(___fps16x16_mul_u2_1_1 + 1), W, B
	MOVWF	r0x05
	ANDLW	0xf0
	XORWF	r0x05, F
	ADDWF	r0x04, F
; removed redundant BANKSEL
	MOVF	(___fps16x16_mul_u2_1_1 + 2), W, B
	SWAPF	WREG, W
	ANDLW	0xf0
	IORWF	r0x05, F
; removed redundant BANKSEL
	SWAPF	(___fps16x16_mul_u2_1_1 + 2), W, B
	ANDLW	0x0f
	MOVWF	r0x06
; removed redundant BANKSEL
	SWAPF	(___fps16x16_mul_u2_1_1 + 3), W, B
	MOVWF	r0x07
	ANDLW	0xf0
	XORWF	r0x07, F
	ADDWF	r0x06, F
	MOVLW	0xf0
	BTFSC	r0x07, 3
	ADDWF	r0x07, F
; ;ic:16: 	send iTemp11 [k21 lr12:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 1}
; ;ic:17: 	send iTemp15 [k26 lr15:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 2}
; ;ic:18: 	iTemp16 [k27 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}[r0x00 r0x01 r0x02 r0x03 ] = call __mullong [k33 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int function    ( long-int, long-int) }
	MOVF	r0x07, W
	MOVWF	POSTDEC1
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
	CALL	__mullong
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:19: 	iTemp17 [k28 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}[r0x00 r0x01 r0x02 r0x03 ] = iTemp16 [k27 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}[r0x00 r0x01 r0x02 r0x03 ] >> 0x8 {literal-unsigned-char}
	MOVF	r0x01, W
	MOVWF	r0x00
	MOVF	r0x02, W
	MOVWF	r0x01
	MOVF	r0x03, W
	MOVWF	r0x02
	CLRF	r0x03
	BTFSC	r0x02, 7
	SETF	r0x03
; ;ic:20: 	*(iTemp6 [k14 lr9:20 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat]) := iTemp17 [k28 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}[r0x00 r0x01 r0x02 r0x03 ]
	MOVF	r0x00, W
	BANKSEL	___fps16x16_mul_u1_1_1
	MOVWF	___fps16x16_mul_u1_1_1, B
	MOVF	r0x01, W
; removed redundant BANKSEL
	MOVWF	(___fps16x16_mul_u1_1_1 + 1), B
	MOVF	r0x02, W
; removed redundant BANKSEL
	MOVWF	(___fps16x16_mul_u1_1_1 + 2), B
	MOVF	r0x03, W
; removed redundant BANKSEL
	MOVWF	(___fps16x16_mul_u1_1_1 + 3), B
; ;ic:21: 	iTemp18 [k29 lr21:22 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-fixed16x16 near* }[remat] = &[___fps16x16_mul_u1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct u_t}]
; ;ic:22: 	iTemp20 [k32 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-fixed16x16}{ sir@ ___fps16x16_mul_u1_1_1} = @[iTemp18 [k29 lr21:22 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-fixed16x16 near* }[remat]]
; ;ic:23: 	ret iTemp20 [k32 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-fixed16x16}{ sir@ ___fps16x16_mul_u1_1_1}
;	.line	16; fps16x16_mul.c	return (u1.fix);
	MOVFF	(___fps16x16_mul_u1_1_1 + 3), FSR0L
	MOVFF	(___fps16x16_mul_u1_1_1 + 2), PRODH
	MOVFF	(___fps16x16_mul_u1_1_1 + 1), PRODL
; removed redundant BANKSEL
	MOVF	___fps16x16_mul_u1_1_1, W, B
; ;ic:24:  _return($1) :
; ;ic:25: 	eproc ___fps16x16_mul [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{fixed16x16 function    ( fixed16x16, fixed16x16) }
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
; code size:	  360 (0x0168) bytes ( 0.27%)
;           	  180 (0x00b4) words
; udata size:	    8 (0x0008) bytes ( 0.62%)
; access size:	    8 (0x0008) bytes


	end
