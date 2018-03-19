;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:00 2018
;--------------------------------------------------------
	.module _strcat
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strcat
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
;_strcat.c:26: char * strcat (
;	genLabel
;	genFunction
;	---------------------------------
; Function strcat
; ---------------------------------
_strcat_start::
_strcat:
	push	ix
	ld	ix,#0
	add	ix,sp
;_strcat.c:31: char * cp = dst;
;	genAssign
;	AOP_STK for 
	ld	c,4(ix)
	ld	b,5(ix)
;_strcat.c:33: while( *cp )
;	genAssign
;	(registers are the same)
;	genLabel
00101$:
;	genPointerGet
	ld	a,(bc)
;	genIfx
	or	a,a
	jr	Z,00111$
;_strcat.c:34: cp++;                   /* find end of dst */
;	genPlus
;	genPlusIncr
	inc	bc
;	genGoto
	jr	00101$
;_strcat.c:36: while( *cp++ = *src++ ) ;       /* Copy src to end of dst */
;	genLabel
00111$:
;	genAssign
;	AOP_STK for 
	ld	e,6(ix)
	ld	d,7(ix)
;	genAssign
;	(registers are the same)
;	genLabel
00104$:
;	genPointerGet
	ld	a,(de)
;	genPlus
;	genPlusIncr
	inc	de
;	genAssign (pointer)
;	isBitvar = 0
	ld	(bc),a
;	genPlus
;	genPlusIncr
	inc	bc
;	genIfx
	or	a,a
	jr	NZ,00104$
;_strcat.c:38: return( dst );                  /* return dst */
;	genRet
;	AOP_STK for 
; Dump of IC_LEFT: type AOP_STK size 2
;	 aop_stk 4
	ld	l,4(ix)
	ld	h,5(ix)
;	genLabel
;	genEndFunction
	pop	ix
	ret
_strcat_end::
	.area _CODE
	.area _CABS
