;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:02 2018
;--------------------------------------------------------
	.module floorf
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _floorf
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
;floorf.c:23: float floorf (float x) _FLOAT_FUNC_REENTRANT
;	genLabel
;	genFunction
;	---------------------------------
; Function floorf
; ---------------------------------
_floorf_start::
_floorf:
	lda	sp,-8(sp)
;floorf.c:26: r=x;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	lda	hl,12(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,12(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	___fs2slong
;	AOP_STK for _floorf_r_1_1
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
	lda	sp,4(sp)
;	genAssign
;	AOP_STK for _floorf_r_1_1
;	(registers are the same)
;floorf.c:27: if (r<=0)
;	genCmpGt
;	AOP_STK for _floorf_r_1_1
	ld	a,#0x00
	lda	hl,4(sp)
	sub	a,(hl)
	ld	a,#0x00
	inc	hl
	sbc	a,(hl)
	ld	a,#0x00
	inc	hl
	sbc	a,(hl)
	ld	a,#0x00
	inc	hl
	sbc	a,(hl)
	rlca
	jp	C,00102$
;floorf.c:28: return (r+((r>x)?-1:0));
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _floorf_r_1_1
	dec	hl
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
	call	___slong2fs
;	AOP_STK for _floorf__1_0
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
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	lda	hl,12(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,12(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for _floorf__1_0
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
	call	___fsgt
	ld	c,e
	lda	sp,8(sp)
;	genIfx
	xor	a,a
	or	a,c
	jp	Z,00106$
;	genAssign
	ld	c,#0xFF
;	genGoto
	jp	00107$
;	genLabel
00106$:
;	genAssign
	ld	c,#0x00
;	genLabel
00107$:
;	genCast
;	AOP_STK for _floorf__1_0
	lda	hl,0(sp)
	ld	(hl),c
	ld	a,c
	rla	
	sbc	a,a
	inc	hl
	ld	(hl+),a
	ld	(hl+),a
;	genPlus
;	AOP_STK for _floorf_r_1_1
;	AOP_STK for _floorf__1_0
	ld	(hl+),a
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	lda	hl,0(sp)
	add	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a,(hl)
	push	af
	ld	(hl-),a
	ld	(hl),e
	lda	hl,8(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	lda	hl,4(sp)
	pop	af
	ld	a,e
	adc	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a,(hl)
	ld	(hl-),a
	ld	(hl),e
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _floorf__1_0
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
	call	___slong2fs
;	AOP_STK for _floorf__1_0
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
;	AOP_STK for _floorf__1_0
; Dump of IC_LEFT: type AOP_STK size 4
;	 aop_stk -8
	lda	hl,0(sp)
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
;floorf.c:30: return r;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _floorf_r_1_1
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
	call	___slong2fs
;	AOP_STK for _floorf__1_0
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
;	AOP_STK for _floorf__1_0
; Dump of IC_LEFT: type AOP_STK size 4
;	 aop_stk -8
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
	lda	sp,8(sp)
	ret
_floorf_end::
	.area _CODE
	.area _CABS
