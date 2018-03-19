;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module calloc
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _calloc
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
;calloc.c:62: void __xdata * calloc (size_t nmemb, size_t size)
;	genLabel
;	genFunction
;	---------------------------------
; Function calloc
; ---------------------------------
_calloc_start::
_calloc:
	lda	sp,-2(sp)
;calloc.c:66: ptr = malloc(nmemb * size);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	lda	hl,6(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for 
	lda	hl,6(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__mulint_rrx_s
;	AOP_STK for _calloc__1_0
	lda	hl,5(sp)
	ld	(hl),d
	dec	hl
	ld	(hl),e
	lda	sp,4(sp)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _calloc__1_0
	lda	hl,0(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	_malloc
	ld	b,d
	ld	c,e
	lda	sp,2(sp)
;	genAssign
;	(registers are the same)
;calloc.c:67: if (ptr)
;	genIfx
	ld	a,c
	or	a,b
	jp	Z,00102$
;calloc.c:69: memset(ptr, 0, nmemb * size);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
;	AOP_STK for _calloc__1_0
	lda	hl,2(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
	ld	a,#0x00
	push	af
	inc	sp
;	genIpush
	push	bc
;	genCall
	call	_memset
	lda	sp,5(sp)
	pop	bc
;	genLabel
00102$:
;calloc.c:71: return ptr;
;	genRet
; Dump of IC_LEFT: type AOP_REG size 2
;	 reg = bc
	ld	e,c
	ld	d,b
;	genLabel
00103$:
;	genEndFunction
	lda	sp,2(sp)
	ret
_calloc_end::
	.area _CODE
	.area _CABS
