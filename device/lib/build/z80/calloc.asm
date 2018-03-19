;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module calloc
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _calloc
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
;calloc.c:62: void __xdata * calloc (size_t nmemb, size_t size)
;	genLabel
;	genFunction
;	---------------------------------
; Function calloc
; ---------------------------------
_calloc_start::
_calloc:
	push	ix
	ld	ix,#0
	add	ix,sp
;calloc.c:66: ptr = malloc(nmemb * size);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	ld	l,6(ix)
	ld	h,7(ix)
	push	hl
;	genIpush
;	AOP_STK for 
	ld	l,4(ix)
	ld	h,5(ix)
	push	hl
;	genCall
	call	__mulint_rrx_s
	ld	b,h
	ld	c,l
	pop	af
	pop	af
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
	push	bc
;	genCall
	call	_malloc
	ld	d,h
	ld	e,l
	pop	af
	pop	bc
;	genAssign
;	(registers are the same)
;calloc.c:67: if (ptr)
;	genIfx
	ld	a,e
	or	a,d
	jr	Z,00102$
;calloc.c:69: memset(ptr, 0, nmemb * size);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 1 bcInUse: 0 deSending: 0
	push	de
	push	bc
;	genIpush
	ld	a,#0x00
	push	af
	inc	sp
;	genIpush
	push	de
;	genCall
	call	_memset
	pop	af
	pop	af
	inc	sp
	pop	de
;	genLabel
00102$:
;calloc.c:71: return ptr;
;	genRet
; Dump of IC_LEFT: type AOP_REG size 2
;	 reg = de
	ld	l,e
	ld	h,d
;	genLabel
;	genEndFunction
	pop	ix
	ret
_calloc_end::
	.area _CODE
	.area _CABS
