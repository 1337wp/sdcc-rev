;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module abs
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _abs
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
;abs.c:23: int abs(int j)
;	genLabel
;	genFunction
;	---------------------------------
; Function abs
; ---------------------------------
_abs_start::
_abs:
	
;abs.c:25: return (j >= 0) ? j : -j;
;	genCmpLt
;	AOP_STK for 
	lda	hl,3(sp)
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
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genGoto
	jp	00104$
;	genLabel
00103$:
;	genUminus
;	AOP_STK for 
	xor	a,a
	lda	hl,2(sp)
	ld	a,#0x00
	sbc	a,(hl)
	ld	c,a
	inc	hl
	ld	a,#0x00
	sbc	a,(hl)
	ld	b,a
;	genLabel
00104$:
;	genRet
; Dump of IC_LEFT: type AOP_REG size 2
;	 reg = bc
	ld	e,c
	ld	d,b
;	genLabel
00101$:
;	genEndFunction
	
	ret
_abs_end::
	.area _CODE
	.area _CABS
