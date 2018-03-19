;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module labs
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _labs
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
;labs.c:23: long int labs(long int j)
;	genLabel
;	genFunction
;	---------------------------------
; Function labs
; ---------------------------------
_labs_start::
_labs:
	lda	sp,-4(sp)
;labs.c:25: return (j >= 0) ? j : -j;
;	genCmpLt
;	AOP_STK for 
	lda	hl,9(sp)
	ld	a,(hl)
	rlca
	and	a,#0x01
;	genNot
	ld	c,a
	or	a,a
	sub	a,#0x01
	ld	a,#0x00
	rla
;	genIfx
	ld	c,a
	or	a,a
	jp	Z,00103$
;	genAssign
;	AOP_STK for 
;	AOP_STK for _labs__1_0
	lda	hl,6(sp)
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
;	genGoto
	jp	00104$
;	genLabel
00103$:
;	genUminus
;	AOP_STK for 
;	AOP_STK for _labs__1_0
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
;	genLabel
00104$:
;	genRet
;	AOP_STK for _labs__1_0
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
00101$:
;	genEndFunction
	lda	sp,4(sp)
	ret
_labs_end::
	.area _CODE
	.area _CABS
