;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:27 2018
;--------------------------------------------------------
	.module abs
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _abs
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (DATA)
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (DATA)
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area OSEG    (OVR,DATA)
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_abs_j_1_1:
	.ds 2
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'abs'
;------------------------------------------------------------
;j                         Allocated with name '_abs_j_1_1'
;------------------------------------------------------------
;	abs.c:23: int abs(int j)
;	-----------------------------------------
;	 function abs
;	-----------------------------------------
_abs:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov	r2,dph
	mov	a,dpl
	mov	dptr,#_abs_j_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
;	abs.c:25: return (j >= 0) ? j : -j;
	mov	dptr,#_abs_j_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	rlc	a
	cpl	c
	clr	a
	rlc	a
	mov	r4,a
	jz	00103$
	mov	ar4,r2
	mov	ar5,r3
	sjmp	00104$
00103$:
	clr	c
	clr	a
	subb	a,r2
	mov	r4,a
	clr	a
	subb	a,r3
	mov	r5,a
00104$:
	mov	dpl,r4
	mov	dph,r5
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
