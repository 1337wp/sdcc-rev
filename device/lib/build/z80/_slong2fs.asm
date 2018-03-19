;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:00 2018
;--------------------------------------------------------
	.module _slong2fs
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___slong2fs
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
;_slong2fs.c:69: float __slong2fs (signed long sl) {
;	genLabel
;	genFunction
;	---------------------------------
; Function __slong2fs
; ---------------------------------
___slong2fs_start::
___slong2fs:
	push	ix
	ld	ix,#0
	add	ix,sp
;_slong2fs.c:70: if (sl<0) 
;	genCmpLt
;	AOP_STK for 
	ld	a,7(ix)
	bit	7,a
	jr	Z,00102$
;_slong2fs.c:71: return -__ulong2fs(-sl);
;	genUminus
;	AOP_STK for 
	xor	a,a
	sbc	a,4(ix)
	ld	c,a
	ld	a,#0x00
	sbc	a,5(ix)
	ld	b,a
	ld	a,#0x00
	sbc	a,6(ix)
	ld	e,a
	ld	a,#0x00
	sbc	a,7(ix)
	ld	d,a
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	l,e
	ld	h,d
	push	hl
	ld	l,c
	ld	h,b
	push	hl
;	genCall
	call	___ulong2fs
	ld	b,h
	ld	c,l
	pop	af
	pop	af
;	genUminus
;	genUminusFloat
	ld	a,d
	xor	a,#0x80
	ld	d,a
;	genRet
; Dump of IC_LEFT: type AOP_REG size 4
;	 reg = debc
	ld	l,c
	ld	h,b
	jr	00104$
;	genLabel
00102$:
;_slong2fs.c:73: return __ulong2fs(sl);
;	genAssign
;	AOP_STK for 
	ld	c,4(ix)
	ld	b,5(ix)
	ld	e,6(ix)
	ld	d,7(ix)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	l,e
	ld	h,d
	push	hl
	ld	l,c
	ld	h,b
	push	hl
;	genCall
	call	___ulong2fs
	ld	b,h
	ld	c,l
	pop	af
	pop	af
;	genRet
; Dump of IC_LEFT: type AOP_REG size 4
;	 reg = debc
	ld	l,c
	ld	h,b
;	genLabel
00104$:
;	genEndFunction
	pop	ix
	ret
___slong2fs_end::
	.area _CODE
	.area _CABS
