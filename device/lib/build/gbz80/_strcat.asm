;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module _strcat
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strcat
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
;_strcat.c:26: char * strcat (
;	genLabel
;	genFunction
;	---------------------------------
; Function strcat
; ---------------------------------
_strcat_start::
_strcat:
	lda	sp,-2(sp)
;_strcat.c:31: char * cp = dst;
;	genAssign
;	AOP_STK for 
	lda	hl,4(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;_strcat.c:33: while( *cp )
;	genAssign
;	(registers are the same)
;	genLabel
00101$:
;	genPointerGet
	ld	a,(bc)
;	genIfx
	or	a,a
	jp	Z,00111$
;_strcat.c:34: cp++;                   /* find end of dst */
;	genPlus
;	genPlusIncr
	inc	bc
;	genGoto
	jp	00101$
;_strcat.c:36: while( *cp++ = *src++ ) ;       /* Copy src to end of dst */
;	genLabel
00111$:
;	genAssign
;	AOP_STK for 
;	AOP_STK for _strcat__1_0
	lda	hl,6(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,0(sp)
	ld	(hl+),a
	ld	(hl),e
;	genAssign
;	(registers are the same)
;	genLabel
00104$:
;	genPointerGet
;	AOP_STK for _strcat__1_0
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genPlus
;	AOP_STK for _strcat__1_0
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	NZ,00115$
	inc	hl
	inc	(hl)
00115$:
;	genAssign (pointer)
;	isBitvar = 0
	ld	(bc),a
;	genPlus
;	genPlusIncr
	inc	bc
;	genIfx
	or	a,a
	jp	NZ,00104$
;_strcat.c:38: return( dst );                  /* return dst */
;	genRet
;	AOP_STK for 
; Dump of IC_LEFT: type AOP_STK size 2
;	 aop_stk 2
	lda	hl,4(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genLabel
00107$:
;	genEndFunction
	lda	sp,2(sp)
	ret
_strcat_end::
	.area _CODE
	.area _CABS
