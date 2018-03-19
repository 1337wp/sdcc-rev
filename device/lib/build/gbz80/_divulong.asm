;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module _divulong
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __divulong
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
;_divulong.c:327: _divulong (unsigned long x, unsigned long y)
;	genLabel
;	genFunction
;	---------------------------------
; Function _divulong
; ---------------------------------
__divulong_start::
__divulong:
	lda	sp,-9(sp)
;_divulong.c:329: unsigned long reste = 0L;
;	genAssign
;	AOP_STK for __divulong_reste_1_1
	xor	a,a
	lda	hl,5(sp)
	ld	(hl+),a
	ld	(hl+),a
	ld	(hl+),a
	ld	(hl),a
;_divulong.c:333: do
;	genAssign
;	AOP_STK for __divulong_count_1_1
	lda	hl,4(sp)
	ld	(hl),#0x20
;	genLabel
00105$:
;_divulong.c:336: c = MSB_SET(x);
;	genGetHBIT
;	AOP_STK for 
	lda	hl,14(sp)
	ld	a,(hl)
	rlc	a
	and	a,#0x01
	ld	b,a
;	genAssign
	ld	c,b
;_divulong.c:337: x <<= 1;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
	ld	a,#0x01
	push	af
	inc	sp
;	genIpush
;	AOP_STK for 
	dec	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,16(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__rlulong_rrx_s
;	AOP_STK for __divulong__1_0
	push	hl
	lda	hl,9(sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	lda	sp,5(sp)
	pop	bc
;	genAssign
;	AOP_STK for __divulong__1_0
;	AOP_STK for 
	lda	hl,0(sp)
	ld	d,h
	ld	e,l
	lda	hl,11(sp)
	ld	a,(de)
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
;_divulong.c:338: reste <<= 1;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
	ld	a,#0x01
	push	af
	inc	sp
;	genIpush
;	AOP_STK for __divulong_reste_1_1
	lda	hl,10(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,10(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__rlulong_rrx_s
;	AOP_STK for __divulong__1_0
	push	hl
	lda	hl,9(sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	lda	sp,5(sp)
	pop	bc
;	genAssign
;	AOP_STK for __divulong__1_0
;	AOP_STK for __divulong_reste_1_1
	lda	hl,0(sp)
	ld	d,h
	ld	e,l
	lda	hl,5(sp)
	ld	a,(de)
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
;_divulong.c:339: if (c)
;	genIfx
	xor	a,a
	or	a,c
	jp	Z,00102$
;_divulong.c:340: reste |= 1L;
;	genOr
;	AOP_STK for __divulong_reste_1_1
	lda	hl,5(sp)
	ld	a,(hl)
	or	a,#0x01
	ld	(hl),a
;	genLabel
00102$:
;_divulong.c:342: if (reste >= y)
;	genCmpLt
;	AOP_STK for __divulong_reste_1_1
;	AOP_STK for 
	lda	hl,5(sp)
	ld	d,h
	ld	e,l
	lda	hl,15(sp)
	ld	a,(de)
	sub	a,(hl)
	inc	hl
	inc	de
	ld	a,(de)
	sbc	a,(hl)
	inc	hl
	inc	de
	ld	a,(de)
	sbc	a,(hl)
	inc	hl
	inc	de
	ld	a,(de)
	sbc	a,(hl)
	jp	C,00106$
;_divulong.c:344: reste -= y;
;	genMinus
;	AOP_STK for __divulong_reste_1_1
;	AOP_STK for 
	lda	hl,5(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	lda	hl,15(sp)
	sub	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a,(hl)
	push	af
	lda	hl,8(sp)
	ld	(hl-),a
	ld	(hl),e
	inc	hl
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	lda	hl,19(sp)
	pop	af
	ld	a,e
	sbc	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a,(hl)
	lda	hl,8(sp)
	ld	(hl-),a
	ld	(hl),e
;_divulong.c:346: x |= 1L;
;	genOr
;	AOP_STK for 
	lda	hl,11(sp)
	ld	a,(hl)
	or	a,#0x01
	ld	(hl),a
;	genLabel
00106$:
;_divulong.c:349: while (--count);
;	genMinus
;	AOP_STK for __divulong_count_1_1
	lda	hl,4(sp)
	dec	(hl)
;	genIfx
;	AOP_STK for __divulong_count_1_1
	xor	a,a
	or	a,(hl)
	jp	NZ,00105$
;_divulong.c:350: return x;
;	genRet
;	AOP_STK for 
; Dump of IC_LEFT: type AOP_STK size 4
;	 aop_stk 2
	lda	hl,11(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
;	genLabel
00108$:
;	genEndFunction
	lda	sp,9(sp)
	ret
__divulong_end::
	.area _CODE
	.area _CABS
