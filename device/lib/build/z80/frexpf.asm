;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module frexpf
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _frexpf
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
;  ram data
;--------------------------------------------------------
	.area _DATA
;--------------------------------------------------------
; overlayable items in  ram 
;--------------------------------------------------------
	.area _OVERLAY
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;frexpf.c:24: float frexpf(const float x, int *pw2)
;	genLabel
;	genFunction
;	---------------------------------
; Function frexpf
; ---------------------------------
_frexpf_start::
_frexpf:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-6
	add	hl,sp
	ld	sp,hl
;frexpf.c:29: fl.f=x;
;	genAddrOf
	ld	hl,#0x0002
	add	hl,sp
;	genAssign (pointer)
;	AOP_STK for 
;	isBitvar = 0
	ld	c,l
	ld	b,h
	ld	a,4(ix)
	ld	(hl),a
	inc	hl
	ld	a,5(ix)
	ld	(hl),a
	inc	hl
	ld	a,6(ix)
	ld	(hl),a
	inc	hl
	ld	a,7(ix)
	ld	(hl),a
;frexpf.c:31: i  = ( fl.l >> 23) & 0x000000ff;
;	genAddrOf
;	AOP_STK for _frexpf__1_0
	ld	hl,#0x0002
	add	hl,sp
	ld	-6(ix),l
	ld	-5(ix),h
;	genPointerGet
;	AOP_STK for _frexpf__1_0
	ld	l,-6(ix)
	ld	h,-5(ix)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,#0x17
	push	af
	inc	sp
;	genIpush
	ld	l,c
	ld	h,b
	push	hl
	ld	l,e
	ld	h,d
	push	hl
;	genCall
	call	__rrslong_rrx_s
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	inc	sp
;	genAnd
	ld	b,#0x00
	ld	de,#0x0000
;frexpf.c:32: i -= 0x7e;
;	genMinus
	ld	a,c
	add	a,#0x82
	ld	c,a
	ld	a,b
	adc	a,#0xFF
	ld	b,a
	ld	a,e
	adc	a,#0xFF
	ld	e,a
	ld	a,d
	adc	a,#0xFF
	ld	d,a
;frexpf.c:33: *pw2 = i;
;	genAssign
;	AOP_STK for 
	push	hl
	ld	l,8(ix)
	ld	h,9(ix)
	push	hl
	pop	iy
	pop	hl
;	genCast
;	genAssign (pointer)
;	isBitvar = 0
	ld	0(iy),c
	ld	1(iy),b
;frexpf.c:34: fl.l &= 0x807fffff; /* strip all exponent bits */
;	genPointerGet
;	AOP_STK for _frexpf__1_0
	ld	l,-6(ix)
	ld	h,-5(ix)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genAnd
	ld	a,e
	and	a,#0x7F
	ld	e,a
	ld	a,d
	and	a,#0x80
	ld	d,a
;	genAssign (pointer)
;	AOP_STK for _frexpf__1_0
;	isBitvar = 0
	ld	l,-6(ix)
	ld	h,-5(ix)
	ld	(hl),c
	inc	hl
	ld	(hl),b
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
;frexpf.c:35: fl.l |= 0x3f000000; /* mantissa between 0.5 and 1 */
;	genPointerGet
;	AOP_STK for _frexpf__1_0
	ld	l,-6(ix)
	ld	h,-5(ix)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genOr
	ld	a,d
	or	a,#0x3F
	ld	d,a
;	genAssign (pointer)
;	AOP_STK for _frexpf__1_0
;	isBitvar = 0
	ld	l,-6(ix)
	ld	h,-5(ix)
	ld	(hl),c
	inc	hl
	ld	(hl),b
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
;frexpf.c:36: return(fl.f);
;	genAddrOf
	ld	hl,#0x0002
	add	hl,sp
;	genPointerGet
	ld	c,l
	ld	b,h
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genRet
; Dump of IC_LEFT: type AOP_REG size 4
;	 reg = debc
	ld	l,c
	ld	h,b
;	genLabel
;	genEndFunction
	ld	sp,ix
	pop	ix
	ret
_frexpf_end::
	.area _CODE
	.area _CABS
