;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module _strcmp
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strcmp
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
;_strcmp.c:29: int strcmp (
;	genLabel
;	genFunction
;	---------------------------------
; Function strcmp
; ---------------------------------
_strcmp_start::
_strcmp:
	lda	sp,-7(sp)
;_strcmp.c:38: char * src = asrc;
;	genAssign
;	AOP_STK for 
;	AOP_STK for _strcmp_src_1_1
	lda	hl,9(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,5(sp)
	ld	(hl+),a
	ld	(hl),e
;_strcmp.c:39: char * dst = adst;
;	genAssign
;	AOP_STK for 
;	AOP_STK for _strcmp_dst_1_1
	lda	hl,11(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,3(sp)
	ld	(hl+),a
	ld	(hl),e
;_strcmp.c:41: while( ! (*src - *dst) && *dst)
;	genLabel
00102$:
;	genPointerGet
;	AOP_STK for _strcmp_src_1_1
	lda	hl,5(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	c,a
;	genCast
;	AOP_STK for _strcmp__1_0
	lda	hl,0(sp)
	ld	(hl),c
	ld	a,c
	rla	
	sbc	a,a
	inc	hl
;	genPointerGet
;	AOP_STK for _strcmp_dst_1_1
;	AOP_STK for _strcmp__1_0
	ld	(hl+),a
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	dec	hl
	dec	hl
;	genCast
;	AOP_STK for _strcmp__1_0
	ld	(hl),a
	ld	c,a
	ld	a,(hl)
	rla	
	sbc	a,a
	ld	b,a
;	genMinus
;	AOP_STK for _strcmp__1_0
	dec	hl
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	sub	a,c
	ld	e,a
	ld	a,d
	sbc	a,b
	ld	b,a
	ld	c,e
;	genIfx
	ld	a,c
	or	a,b
	jp	NZ,00104$
;	genIfx
;	AOP_STK for _strcmp__1_0
	xor	a,a
	inc	hl
	or	a,(hl)
	jp	Z,00104$
;_strcmp.c:42: ++src, ++dst;
;	genPlus
;	AOP_STK for _strcmp_src_1_1
;	genPlusIncr
	lda	hl,5(sp)
	inc	(hl)
	jr	NZ,00110$
	inc	hl
	inc	(hl)
00110$:
;	genPlus
;	AOP_STK for _strcmp_dst_1_1
;	genPlusIncr
	lda	hl,3(sp)
	inc	(hl)
	jr	NZ,00111$
	inc	hl
	inc	(hl)
00111$:
;	genGoto
	jp	00102$
;	genLabel
00104$:
;_strcmp.c:44: return *src - *dst;
;	genPointerGet
;	AOP_STK for _strcmp_src_1_1
	lda	hl,5(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	c,a
;	genCast
;	AOP_STK for _strcmp__1_0
	lda	hl,0(sp)
	ld	(hl),c
	ld	a,c
	rla	
	sbc	a,a
	inc	hl
;	genPointerGet
;	AOP_STK for _strcmp_dst_1_1
	ld	(hl+),a
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genCast
	ld	c,a
	rla	
	sbc	a,a
	ld	b,a
;	genMinus
;	AOP_STK for _strcmp__1_0
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	sub	a,c
	ld	e,a
	ld	a,d
	sbc	a,b
	ld	d,a
;	genRet
; Dump of IC_LEFT: type AOP_STR size 2
;	genLabel
00105$:
;	genEndFunction
	lda	sp,7(sp)
	ret
_strcmp_end::
	.area _CODE
	.area _CABS
