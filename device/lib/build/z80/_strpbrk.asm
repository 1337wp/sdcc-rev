;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module _strpbrk
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strpbrk
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
;_strpbrk.c:26: char * strpbrk ( 
;	genLabel
;	genFunction
;	---------------------------------
; Function strpbrk
; ---------------------------------
_strpbrk_start::
_strpbrk:
	push	ix
	ld	ix,#0
	add	ix,sp
;_strpbrk.c:33: while ( ch = *string ) {
;	genAssign
;	AOP_STK for 
	ld	c,4(ix)
	ld	b,5(ix)
;	genLabel
00103$:
;	genPointerGet
	ld	a,(bc)
	ld	e,a
;	genAssign
	ld	d,e
;	genIfx
	xor	a,a
	or	a,e
	jr	Z,00105$
;_strpbrk.c:34: if (strchr (control, ch ))
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
	push	de
	inc	sp
;	genIpush
;	AOP_STK for 
	ld	l,6(ix)
	ld	h,7(ix)
	push	hl
;	genCall
	call	_strchr
	ld	d,h
	ld	e,l
	pop	af
	inc	sp
	pop	bc
;	genIfx
	ld	a,e
	or	a,d
	jr	Z,00103$
;_strpbrk.c:35: return string ;
;	genRet
; Dump of IC_LEFT: type AOP_REG size 2
;	 reg = bc
	ld	l,c
	ld	h,b
	jr	00106$
;	genLabel
00105$:
;_strpbrk.c:38: return (NULL);
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 2
	ld	hl,#0x0000
;	genLabel
00106$:
;	genEndFunction
	pop	ix
	ret
_strpbrk_end::
	.area _CODE
	.area _CABS
