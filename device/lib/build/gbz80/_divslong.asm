;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module _divslong
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __divslong
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
;_divslong.c:255: _divslong (long x, long y)
;	genLabel
;	genFunction
;	---------------------------------
; Function _divslong
; ---------------------------------
__divslong_start::
__divslong:
	lda	sp,-12(sp)
;_divslong.c:260: (y < 0 ? -y : y));
;	genCmpLt
;	AOP_STK for 
	lda	hl,21(sp)
	ld	a,(hl)
	rlca
	and	a,#0x01
;	genIfx
	ld	c,a
	or	a,a
	jp	Z,00106$
;	genUminus
;	AOP_STK for 
;	AOP_STK for __divslong__1_0
	ld	de,#0x0000
	ld	a,e
	lda	hl,18(sp)
	sub	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a,(hl)
	push	af
	lda	hl,7(sp)
	ld	(hl-),a
	ld	(hl),e
	ld	de,#0x0000
	lda	hl,22(sp)
	pop	af
	ld	a,e
	sbc	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a,(hl)
	lda	hl,7(sp)
	ld	(hl-),a
	ld	(hl),e
;	genGoto
	jp	00107$
;	genLabel
00106$:
;	genAssign
;	AOP_STK for 
;	AOP_STK for __divslong__1_0
	lda	hl,18(sp)
	ld	d,h
	ld	e,l
	lda	hl,4(sp)
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
;	genLabel
00107$:
;	genAssign
;	AOP_STK for __divslong__1_0
;	(registers are the same)
;_divslong.c:259: r = _divulong((x < 0 ? -x : x),
;	genCmpLt
;	AOP_STK for 
	lda	hl,17(sp)
	ld	a,(hl)
	rlca
	and	a,#0x01
;	genIfx
	ld	b,a
	or	a,a
	jp	Z,00108$
;	genUminus
;	AOP_STK for 
;	AOP_STK for __divslong__1_0
	ld	de,#0x0000
	ld	a,e
	lda	hl,14(sp)
	sub	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a,(hl)
	push	af
	lda	hl,3(sp)
	ld	(hl-),a
	ld	(hl),e
	ld	de,#0x0000
	lda	hl,18(sp)
	pop	af
	ld	a,e
	sbc	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a,(hl)
	lda	hl,3(sp)
	ld	(hl-),a
	ld	(hl),e
;	genGoto
	jp	00109$
;	genLabel
00108$:
;	genAssign
;	AOP_STK for 
;	AOP_STK for __divslong__1_0
	lda	hl,14(sp)
	ld	d,h
	ld	e,l
	lda	hl,0(sp)
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
;	genLabel
00109$:
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
;	AOP_STK for __divslong__1_0
	lda	hl,8(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,8(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for __divslong__1_0
	lda	hl,8(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,8(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__divulong
;	AOP_STK for __divslong__1_0
	push	hl
	lda	hl,12(sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	lda	sp,8(sp)
	pop	bc
;	genAssign
;	AOP_STK for __divslong__1_0
;	AOP_STK for __divslong_r_1_1
	lda	hl,0(sp)
	ld	d,h
	ld	e,l
	lda	hl,8(sp)
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
;	genAssign
;	AOP_STK for __divslong_r_1_1
;	(registers are the same)
;_divslong.c:261: if ( (x < 0) ^ (y < 0))
;	genXor
	ld	a,b
;	genIfx
	xor	a,c
	jp	Z,00102$
;_divslong.c:262: return -r;
;	genUminus
;	AOP_STK for __divslong_r_1_1
;	AOP_STK for __divslong__1_0
	ld	de,#0x0000
	ld	a,e
	lda	hl,8(sp)
	sub	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a,(hl)
	push	af
	lda	hl,3(sp)
	ld	(hl-),a
	ld	(hl),e
	ld	de,#0x0000
	lda	hl,12(sp)
	pop	af
	ld	a,e
	sbc	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a,(hl)
	lda	hl,3(sp)
	ld	(hl-),a
	ld	(hl),e
;	genRet
;	AOP_STK for __divslong__1_0
; Dump of IC_LEFT: type AOP_STK size 4
;	 aop_stk -12
	dec	hl
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	jp	00104$
;	genLabel
00102$:
;_divslong.c:264: return r;
;	genRet
;	AOP_STK for __divslong_r_1_1
; Dump of IC_LEFT: type AOP_STK size 4
;	 aop_stk -4
	lda	hl,8(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
;	genLabel
00104$:
;	genEndFunction
	lda	sp,12(sp)
	ret
__divslong_end::
	.area _CODE
	.area _CABS
