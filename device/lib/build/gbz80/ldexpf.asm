;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module ldexpf
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ldexpf
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
;ldexpf.c:24: float ldexpf(const float x, const int pw2)
;	genLabel
;	genFunction
;	---------------------------------
; Function ldexpf
; ---------------------------------
_ldexpf_start::
_ldexpf:
	lda	sp,-16(sp)
;ldexpf.c:29: fl.f = x;
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
;ldexpf.c:31: e=(fl.l >> 23) & 0x000000ff;
;	genAddrOf
	lda	hl,12(sp)
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for _ldexpf__1_0
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
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
	ld	a,#0x17
	push	af
	inc	sp
;	genIpush
;	AOP_STK for _ldexpf__1_0
	dec	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,9(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__rrslong_rrx_s
;	AOP_STK for _ldexpf__1_0
	push	hl
	lda	hl,13(sp)
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
;	genAnd
;	AOP_STK for _ldexpf__1_0
;	AOP_STK for _ldexpf_e_1_1
	lda	hl,4(sp)
	ld	a,(hl)
	lda	hl,8(sp)
	ld	(hl+),a
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;ldexpf.c:32: e+=pw2;
;	genCast
;	AOP_STK for 
;	AOP_STK for _ldexpf__1_0
	lda	hl,22(sp)
	ld	a,(hl)
	lda	hl,4(sp)
	ld	(hl),a
	lda	hl,23(sp)
	ld	a,(hl)
	lda	hl,5(sp)
	ld	(hl),a
	lda	hl,23(sp)
	ld	a,(hl)
	rla	
	sbc	a,a
	lda	hl,6(sp)
	ld	(hl+),a
;	genPlus
;	AOP_STK for _ldexpf_e_1_1
;	AOP_STK for _ldexpf__1_0
	ld	(hl+),a
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	lda	hl,4(sp)
	add	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a,(hl)
	push	af
	lda	hl,11(sp)
	ld	(hl-),a
	ld	(hl),e
	inc	hl
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	lda	hl,8(sp)
	pop	af
	ld	a,e
	adc	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a,(hl)
	lda	hl,11(sp)
	ld	(hl-),a
	ld	(hl),e
;ldexpf.c:33: fl.l= ((e & 0xff) << 23) | (fl.l & 0x807fffff);
;	genAnd
;	AOP_STK for _ldexpf_e_1_1
;	AOP_STK for _ldexpf__1_0
	dec	hl
	dec	hl
	ld	a,(hl)
	lda	hl,4(sp)
	ld	(hl+),a
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
	ld	a,#0x17
	push	af
	inc	sp
;	genIpush
;	AOP_STK for _ldexpf__1_0
	dec	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,9(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__rlslong_rrx_s
;	AOP_STK for _ldexpf__1_0
	push	hl
	lda	hl,13(sp)
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
;	genPointerGet
;	AOP_STK for _ldexpf__1_0
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
;	genAnd
;	AOP_STK for _ldexpf__1_0
	ld	(hl-),a
	ld	a,(hl)
	and	a,#0x7F
	ld	(hl+),a
	ld	a,(hl)
	and	a,#0x80
	ld	(hl),a
;	genOr
;	AOP_STK for _ldexpf__1_0
;	AOP_STK for _ldexpf__1_0
	lda	hl,0(sp)
	ld	a,(hl)
	lda	hl,4(sp)
	or	a,(hl)
	lda	hl,0(sp)
	ld	(hl+),a
	ld	a,(hl)
	lda	hl,5(sp)
	or	a,(hl)
	lda	hl,1(sp)
	ld	(hl+),a
	ld	a,(hl)
	lda	hl,6(sp)
	or	a,(hl)
	lda	hl,2(sp)
	ld	(hl+),a
	ld	a,(hl)
	lda	hl,7(sp)
	or	a,(hl)
	lda	hl,3(sp)
	ld	(hl),a
;	genAssign (pointer)
;	AOP_STK for _ldexpf__1_0
;	isBitvar = 0
	ld	e,c
	ld	d,b
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
;ldexpf.c:35: return(fl.f);
;	genAddrOf
	lda	hl,12(sp)
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for _ldexpf__1_0
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
;	genRet
;	AOP_STK for _ldexpf__1_0
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
00101$:
;	genEndFunction
	lda	sp,16(sp)
	ret
_ldexpf_end::
	.area _CODE
	.area _CABS
