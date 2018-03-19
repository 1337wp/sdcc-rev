;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module fabsf
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _fabsf
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
;fabsf.c:24: float fabsf(const float x) _FLOAT_FUNC_REENTRANT
;	genLabel
;	genFunction
;	---------------------------------
; Function fabsf
; ---------------------------------
_fabsf_start::
_fabsf:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-6
	add	hl,sp
	ld	sp,hl
;fabsf.c:28: fl.f = x;
;	genAddrOf
	ld	hl,#0x0002
	add	hl,sp
;	genAssign (pointer)
;	AOP_STK for 
;	isBitvar = 0
	ld	c,l
	ld	b,h
	ld	a,4(ix)
	ld	(hl),a
	inc	hl
	ld	a,5(ix)
	ld	(hl),a
	inc	hl
	ld	a,6(ix)
	ld	(hl),a
	inc	hl
	ld	a,7(ix)
	ld	(hl),a
;fabsf.c:29: fl.l &= 0x7fffffff;
;	genAddrOf
;	AOP_STK for _fabsf__1_0
	ld	hl,#0x0002
	add	hl,sp
	ld	-6(ix),l
	ld	-5(ix),h
;	genPointerGet
;	AOP_STK for _fabsf__1_0
	ld	l,-6(ix)
	ld	h,-5(ix)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
;	genAnd
	ld	a,(hl)
	and	a,#0x7F
	ld	b,a
;	genAssign (pointer)
;	AOP_STK for _fabsf__1_0
;	isBitvar = 0
	ld	l,-6(ix)
	ld	h,-5(ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
;fabsf.c:30: return fl.f;
;	genAddrOf
	ld	hl,#0x0002
	add	hl,sp
;	genPointerGet
	ld	c,l
	ld	b,h
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genRet
; Dump of IC_LEFT: type AOP_REG size 4
;	 reg = debc
	ld	l,c
	ld	h,b
;	genLabel
;	genEndFunction
	ld	sp,ix
	pop	ix
	ret
_fabsf_end::
	.area _CODE
	.area _CABS
