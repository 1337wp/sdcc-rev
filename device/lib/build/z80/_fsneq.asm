;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:00 2018
;--------------------------------------------------------
	.module _fsneq
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fsneq
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
;_fsneq.c:70: char __fsneq (float a1, float a2)
;	genLabel
;	genFunction
;	---------------------------------
; Function __fsneq
; ---------------------------------
___fsneq_start::
___fsneq:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-12
	add	hl,sp
	ld	sp,hl
;_fsneq.c:74: fl1.f = a1;
;	genAddrOf
	ld	hl,#0x0008
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
;_fsneq.c:75: fl2.f = a2;
;	genAddrOf
	ld	hl,#0x0004
	add	hl,sp
;	genAssign (pointer)
;	AOP_STK for 
;	isBitvar = 0
	ld	c,l
	ld	b,h
	ld	a,8(ix)
	ld	(hl),a
	inc	hl
	ld	a,9(ix)
	ld	(hl),a
	inc	hl
	ld	a,10(ix)
	ld	(hl),a
	inc	hl
	ld	a,11(ix)
	ld	(hl),a
;_fsneq.c:85: if (fl1.l == fl2.l)
;	genAddrOf
	ld	hl,#0x0008
	add	hl,sp
;	genPointerGet
;	AOP_STK for ___fsneq__1_0
	ld	c,l
	ld	b,h
	ld	a,(hl)
	ld	-12(ix),a
	inc	hl
	ld	a,(hl)
	ld	-11(ix),a
	inc	hl
	ld	a,(hl)
	ld	-10(ix),a
	inc	hl
	ld	a,(hl)
	ld	-9(ix),a
;	genAddrOf
	ld	hl,#0x0004
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
;	genCmpEq
;	AOP_STK for ___fsneq__1_0
; genCmpEq: left 4, right 4, result 0
	ld	a,-12(ix)
	sub	c
	jr	NZ,00106$
	ld	a,-11(ix)
	sub	b
	jr	NZ,00106$
	ld	a,-10(ix)
	sub	e
	jr	NZ,00106$
	ld	a,-9(ix)
	sub	d
	jr	Z,00107$
00106$:
	jr	00102$
00107$:
;_fsneq.c:86: return (0);
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 1
	ld	l,#0x00
	jr	00103$
;	genLabel
00102$:
;_fsneq.c:87: return (1);
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 1
	ld	l,#0x01
;	genLabel
00103$:
;	genEndFunction
	ld	sp,ix
	pop	ix
	ret
___fsneq_end::
	.area _CODE
	.area _CABS
