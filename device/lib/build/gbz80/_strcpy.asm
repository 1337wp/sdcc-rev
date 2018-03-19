;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module _strcpy
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strcpy
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
;_strcpy.c:29: char * strcpy (
;	genLabel
;	genFunction
;	---------------------------------
; Function strcpy
; ---------------------------------
_strcpy_start::
_strcpy:
	lda	sp,-4(sp)
;_strcpy.c:34: register char * to = d;
;	genAssign
;	AOP_STK for 
;	AOP_STK for _strcpy_to_1_1
	lda	hl,6(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,2(sp)
	ld	(hl+),a
	ld	(hl),e
;_strcpy.c:35: register char * from = s;
;	genAssign
;	AOP_STK for 
	lda	hl,8(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;_strcpy.c:37: while (*to++ = *from++) ;
;	genAssign
;	(registers are the same)
;	genAssign
;	AOP_STK for _strcpy_to_1_1
;	AOP_STK for _strcpy__1_0
	lda	hl,2(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,0(sp)
	ld	(hl+),a
	ld	(hl),e
;	genLabel
00101$:
;	genPointerGet
	ld	a,(bc)
;	genPlus
;	genPlusIncr
	inc	bc
;	genAssign (pointer)
;	AOP_STK for _strcpy__1_0
;	isBitvar = 0
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	(de),a
;	genPlus
;	AOP_STK for _strcpy__1_0
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	NZ,00109$
	inc	hl
	inc	(hl)
00109$:
;	genIfx
	or	a,a
	jp	NZ,00101$
;_strcpy.c:39: return d;
;	genRet
;	AOP_STK for 
; Dump of IC_LEFT: type AOP_STK size 2
;	 aop_stk 2
	lda	hl,6(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genLabel
00104$:
;	genEndFunction
	lda	sp,4(sp)
	ret
_strcpy_end::
	.area _CODE
	.area _CABS
