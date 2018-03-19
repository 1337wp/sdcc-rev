;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module _fssub
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fssub
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
;_fssub.c:69: float __fssub (float a1, float a2)
;	genLabel
;	genFunction
;	---------------------------------
; Function __fssub
; ---------------------------------
___fssub_start::
___fssub:
	lda	sp,-16(sp)
;_fssub.c:73: fl1.f = a1;
;	genAddrOf
	lda	hl,12(sp)
	ld	c,l
	ld	b,h
;	genAssign (pointer)
;	AOP_STK for 
;	isBitvar = 0
	ld	e,c
	ld	d,b
	lda	hl,18(sp)
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
;_fssub.c:74: fl2.f = a2;
;	genAddrOf
	lda	hl,8(sp)
	ld	c,l
	ld	b,h
;	genAssign (pointer)
;	AOP_STK for 
;	isBitvar = 0
	ld	e,c
	ld	d,b
	lda	hl,22(sp)
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
;_fssub.c:77: if (!fl2.l)
;	genAddrOf
	lda	hl,8(sp)
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for ___fssub__1_0
	ld	e,c
	ld	d,b
	ld	a,(de)
	lda	hl,4(sp)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
;	genIfx
;	AOP_STK for ___fssub__1_0
	lda	hl,4(sp)
	ld	a,(hl+)
	or	a,(hl)
	inc	hl
	or	a,(hl)
	inc	hl
	or	a,(hl)
	jp	NZ,00102$
;_fssub.c:78: return (fl1.f);
;	genAddrOf
	lda	hl,12(sp)
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for ___fssub__1_0
	ld	e,c
	ld	d,b
	ld	a,(de)
	lda	hl,4(sp)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
;	genRet
;	AOP_STK for ___fssub__1_0
; Dump of IC_LEFT: type AOP_STK size 4
;	 aop_stk -12
	lda	hl,4(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	jp	00105$
;	genLabel
00102$:
;_fssub.c:79: if (!fl1.l)
;	genAddrOf
	lda	hl,12(sp)
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for ___fssub__1_0
	ld	e,c
	ld	d,b
	ld	a,(de)
	lda	hl,4(sp)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
;	genIfx
;	AOP_STK for ___fssub__1_0
	lda	hl,4(sp)
	ld	a,(hl+)
	or	a,(hl)
	inc	hl
	or	a,(hl)
	inc	hl
	or	a,(hl)
	jp	NZ,00104$
;_fssub.c:80: return (-fl2.f);
;	genAddrOf
	lda	hl,8(sp)
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for ___fssub__1_0
	ld	e,c
	ld	d,b
	ld	a,(de)
	lda	hl,4(sp)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
;	genUminus
;	AOP_STK for ___fssub__1_0
;	genUminusFloat
	ld	(hl),a
	xor	a,#0x80
	ld	(hl),a
	lda	hl,4(sp)
	ld	a,(hl)
	ld	(hl+),a
	ld	a,(hl)
	ld	(hl+),a
	ld	a,(hl)
;	genRet
;	AOP_STK for ___fssub__1_0
; Dump of IC_LEFT: type AOP_STK size 4
;	 aop_stk -12
	ld	(hl-),a
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	jp	00105$
;	genLabel
00104$:
;_fssub.c:83: fl2.l ^= SIGNBIT;
;	genAddrOf
;	AOP_STK for ___fssub__1_0
	lda	hl,8(sp)
	ld	a,l
	ld	d,h
	lda	hl,4(sp)
	ld	(hl+),a
	ld	(hl),d
;	genAddrOf
	lda	hl,8(sp)
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for ___fssub__1_0
	ld	e,c
	ld	d,b
	ld	a,(de)
	lda	hl,0(sp)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
;	genXor
;	AOP_STK for ___fssub__1_0
	ld	(hl),a
	xor	a,#0x80
;	genAssign (pointer)
;	AOP_STK for ___fssub__1_0
;	AOP_STK for ___fssub__1_0
;	isBitvar = 0
	ld	(hl+),a
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	lda	hl,0(sp)
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
;_fssub.c:84: return fl1.f + fl2.f; 
;	genAddrOf
	lda	hl,12(sp)
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for ___fssub__1_0
	ld	e,c
	ld	d,b
	ld	a,(de)
	lda	hl,0(sp)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
;	genAddrOf
	lda	hl,8(sp)
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for ___fssub__1_0
	ld	e,c
	ld	d,b
	ld	a,(de)
	lda	hl,4(sp)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for ___fssub__1_0
	ld	(hl-),a
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,6(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for ___fssub__1_0
	lda	hl,6(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,6(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	___fsadd
;	AOP_STK for ___fssub__1_0
	push	hl
	lda	hl,10(sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	lda	sp,8(sp)
;	genRet
;	AOP_STK for ___fssub__1_0
; Dump of IC_LEFT: type AOP_STK size 4
;	 aop_stk -16
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
;	genLabel
00105$:
;	genEndFunction
	lda	sp,16(sp)
	ret
___fssub_end::
	.area _CODE
	.area _CABS
