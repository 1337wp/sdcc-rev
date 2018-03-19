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
	global ___fps16x16_sub
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

udata_fps16x16_sub_0	udata
___fps16x16_sub_u1_1_1	res	4

udata_fps16x16_sub_1	udata
___fps16x16_sub_u2_1_1	res	4

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($2) :
; ;ic:2: 	proc ___fps16x16_sub [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{fixed16x16 function    ( fixed16x16, fixed16x16) }
S_fps16x16_sub____fps16x16_sub	code
___fps16x16_sub:
;	.line	7; fps16x16_sub.c	__fixed16x16 __fps16x16_sub(__fixed16x16 a, __fixed16x16 b)
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
; ;ic:3: iTemp0 [k2 lr3:6 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{fixed16x16}{ sir@ ___fps16x16_sub_a_1_1}[r0x00 r0x01 r0x02 r0x03 ] = recv ___fps16x16_sub [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{fixed16x16 function    ( fixed16x16, fixed16x16) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
; ;ic:4: iTemp1 [k4 lr4:8 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{fixed16x16}{ sir@ ___fps16x16_sub_b_1_1}[r0x04 r0x05 r0x06 r0x07 ] = recv ___fps16x16_sub [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{fixed16x16 function    ( fixed16x16, fixed16x16) }
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
	MOVLW	0x08
	MOVFF	PLUSW2, r0x06
	MOVLW	0x09
	MOVFF	PLUSW2, r0x07
; ;ic:5: 	iTemp2 [k7 lr5:6 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-fixed16x16 near* }[remat] = &[___fps16x16_sub_u1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct u_t}]
; ;ic:6: 	*(iTemp2 [k7 lr5:6 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-fixed16x16 near* }[remat]) := iTemp0 [k2 lr3:6 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{fixed16x16}{ sir@ ___fps16x16_sub_a_1_1}[r0x00 r0x01 r0x02 r0x03 ]
;	.line	11; fps16x16_sub.c	u1.fix = a;
	MOVF	r0x00, W
	BANKSEL	___fps16x16_sub_u1_1_1
	MOVWF	___fps16x16_sub_u1_1_1, B
	MOVF	r0x01, W
; removed redundant BANKSEL
	MOVWF	(___fps16x16_sub_u1_1_1 + 1), B
	MOVF	r0x02, W
; removed redundant BANKSEL
	MOVWF	(___fps16x16_sub_u1_1_1 + 2), B
	MOVF	r0x03, W
; removed redundant BANKSEL
	MOVWF	(___fps16x16_sub_u1_1_1 + 3), B
; ;ic:7: 	iTemp4 [k11 lr7:8 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-fixed16x16 near* }[remat] = &[___fps16x16_sub_u2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct u_t}]
; ;ic:8: 	*(iTemp4 [k11 lr7:8 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-fixed16x16 near* }[remat]) := iTemp1 [k4 lr4:8 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{fixed16x16}{ sir@ ___fps16x16_sub_b_1_1}[r0x04 r0x05 r0x06 r0x07 ]
;	.line	12; fps16x16_sub.c	u2.fix = b;
	MOVF	r0x04, W
	BANKSEL	___fps16x16_sub_u2_1_1
	MOVWF	___fps16x16_sub_u2_1_1, B
	MOVF	r0x05, W
; removed redundant BANKSEL
	MOVWF	(___fps16x16_sub_u2_1_1 + 1), B
	MOVF	r0x06, W
; removed redundant BANKSEL
	MOVWF	(___fps16x16_sub_u2_1_1 + 2), B
	MOVF	r0x07, W
; removed redundant BANKSEL
	MOVWF	(___fps16x16_sub_u2_1_1 + 3), B
; ;ic:9: 	iTemp6 [k14 lr9:15 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat] = &[___fps16x16_sub_u1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct u_t}]
; ;ic:10: 	iTemp8 [k17 lr10:11 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat] = &[___fps16x16_sub_u1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct u_t}]
; ;ic:11: 	iTemp10 [k20 lr11:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}{ sir@ ___fps16x16_sub_u1_1_1} = @[iTemp8 [k17 lr10:11 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat]]
; ;ic:12: 	iTemp11 [k21 lr12:13 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat] = &[___fps16x16_sub_u2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct u_t}]
; ;ic:13: 	iTemp13 [k24 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}{ sir@ ___fps16x16_sub_u2_1_1} = @[iTemp11 [k21 lr12:13 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat]]
; ;ic:14: 	iTemp14 [k25 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}[r0x00 r0x01 r0x02 r0x03 ] = iTemp10 [k20 lr11:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}{ sir@ ___fps16x16_sub_u1_1_1} - iTemp13 [k24 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}{ sir@ ___fps16x16_sub_u2_1_1}
; removed redundant BANKSEL
;	.line	14; fps16x16_sub.c	u1.value -= u2.value;
	MOVF	___fps16x16_sub_u2_1_1, W, B
	BANKSEL	___fps16x16_sub_u1_1_1
	SUBWF	___fps16x16_sub_u1_1_1, W, B
	MOVWF	r0x00
	BANKSEL	(___fps16x16_sub_u2_1_1 + 1)
	MOVF	(___fps16x16_sub_u2_1_1 + 1), W, B
	BANKSEL	(___fps16x16_sub_u1_1_1 + 1)
	SUBWFB	(___fps16x16_sub_u1_1_1 + 1), W, B
	MOVWF	r0x01
	BANKSEL	(___fps16x16_sub_u2_1_1 + 2)
	MOVF	(___fps16x16_sub_u2_1_1 + 2), W, B
	BANKSEL	(___fps16x16_sub_u1_1_1 + 2)
	SUBWFB	(___fps16x16_sub_u1_1_1 + 2), W, B
	MOVWF	r0x02
	BANKSEL	(___fps16x16_sub_u2_1_1 + 3)
	MOVF	(___fps16x16_sub_u2_1_1 + 3), W, B
	BANKSEL	(___fps16x16_sub_u1_1_1 + 3)
	SUBWFB	(___fps16x16_sub_u1_1_1 + 3), W, B
	MOVWF	r0x03
; ;ic:15: 	*(iTemp6 [k14 lr9:15 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat]) := iTemp14 [k25 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}[r0x00 r0x01 r0x02 r0x03 ]
	MOVF	r0x00, W
; removed redundant BANKSEL
	MOVWF	___fps16x16_sub_u1_1_1, B
	MOVF	r0x01, W
; removed redundant BANKSEL
	MOVWF	(___fps16x16_sub_u1_1_1 + 1), B
	MOVF	r0x02, W
; removed redundant BANKSEL
	MOVWF	(___fps16x16_sub_u1_1_1 + 2), B
	MOVF	r0x03, W
; removed redundant BANKSEL
	MOVWF	(___fps16x16_sub_u1_1_1 + 3), B
; ;ic:16: 	iTemp15 [k26 lr16:17 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-fixed16x16 near* }[remat] = &[___fps16x16_sub_u1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct u_t}]
; ;ic:17: 	iTemp17 [k29 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-fixed16x16}{ sir@ ___fps16x16_sub_u1_1_1} = @[iTemp15 [k26 lr16:17 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-fixed16x16 near* }[remat]]
; ;ic:18: 	ret iTemp17 [k29 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-fixed16x16}{ sir@ ___fps16x16_sub_u1_1_1}
;	.line	16; fps16x16_sub.c	return (u1.fix);
	MOVFF	(___fps16x16_sub_u1_1_1 + 3), FSR0L
	MOVFF	(___fps16x16_sub_u1_1_1 + 2), PRODH
	MOVFF	(___fps16x16_sub_u1_1_1 + 1), PRODL
; removed redundant BANKSEL
	MOVF	___fps16x16_sub_u1_1_1, W, B
; ;ic:19:  _return($1) :
; ;ic:20: 	eproc ___fps16x16_sub [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{fixed16x16 function    ( fixed16x16, fixed16x16) }
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
; code size:	  230 (0x00e6) bytes ( 0.18%)
;           	  115 (0x0073) words
; udata size:	    8 (0x0008) bytes ( 0.62%)
; access size:	    8 (0x0008) bytes


	end
