;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module _slong2fs
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___slong2fs
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
;_slong2fs.c:69: float __slong2fs (signed long sl) {
;	genLabel
;	genFunction
;	---------------------------------
; Function __slong2fs
; ---------------------------------
___slong2fs_start::
___slong2fs:
	lda	sp,-4(sp)
;_slong2fs.c:70: if (sl<0) 
;	genCmpLt
;	AOP_STK for 
	lda	hl,9(sp)
	ld	a,(hl)
	bit	7,a
	jp	Z,00102$
;_slong2fs.c:71: return -__ulong2fs(-sl);
;	genUminus
;	AOP_STK for 
;	AOP_STK for ___slong2fs__1_0
	ld	de,#0x0000
	ld	a,e
	lda	hl,6(sp)
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
	lda	hl,10(sp)
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
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for ___slong2fs__1_0
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,2(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	___ulong2fs
;	AOP_STK for ___slong2fs__1_0
	push	hl
	lda	hl,6(sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	lda	sp,4(sp)
;	genUminus
;	AOP_STK for ___slong2fs__1_0
;	genUminusFloat
	lda	hl,3(sp)
	ld	a,(hl)
	xor	a,#0x80
	ld	(hl),a
	lda	hl,0(sp)
	ld	a,(hl)
	ld	(hl+),a
	ld	a,(hl)
	ld	(hl+),a
	ld	a,(hl)
;	genRet
;	AOP_STK for ___slong2fs__1_0
; Dump of IC_LEFT: type AOP_STK size 4
;	 aop_stk -4
	ld	(hl-),a
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
;_slong2fs.c:73: return __ulong2fs(sl);
;	genAssign
;	(operands are equal 3)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
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
	call	___ulong2fs
;	AOP_STK for ___slong2fs__1_0
	push	hl
	lda	hl,6(sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	lda	sp,4(sp)
;	genRet
;	AOP_STK for ___slong2fs__1_0
; Dump of IC_LEFT: type AOP_STK size 4
;	 aop_stk -4
	lda	hl,0(sp)
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
	lda	sp,4(sp)
	ret
___slong2fs_end::
	.area _CODE
	.area _CABS
