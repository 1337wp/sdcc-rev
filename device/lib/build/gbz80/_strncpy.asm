;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module _strncpy
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strncpy
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
;_strncpy.c:26: char *strncpy (
;	genLabel
;	genFunction
;	---------------------------------
; Function strncpy
; ---------------------------------
_strncpy_start::
_strncpy:
	lda	sp,-7(sp)
;_strncpy.c:31: register char * d1 =  d;
;	genAssign
;	AOP_STK for 
;	AOP_STK for _strncpy_d1_1_1
	lda	hl,9(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,5(sp)
	ld	(hl+),a
	ld	(hl),e
;_strncpy.c:33: while ( n && *s )
;	genAssign
;	AOP_STK for 
	lda	hl,13(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genAssign
;	AOP_STK for 
;	AOP_STK for _strncpy__1_0
	lda	hl,11(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,3(sp)
	ld	(hl+),a
	ld	(hl),e
;	genAssign
;	AOP_STK for _strncpy_d1_1_1
;	AOP_STK for _strncpy__1_0
	inc	hl
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,1(sp)
	ld	(hl+),a
	ld	(hl),e
;	genLabel
00102$:
;	genIfx
	ld	a,c
	or	a,b
	jp	Z,00114$
;	genPointerGet
;	AOP_STK for _strncpy__1_0
;	AOP_STK for _strncpy__1_0
	lda	hl,3(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	lda	hl,0(sp)
;	genIfx
;	AOP_STK for _strncpy__1_0
	ld	(hl),a
	or	a,a
	jp	Z,00114$
;_strncpy.c:35: n-- ;
;	genMinus
	dec	bc
;_strncpy.c:36: *d++ = *s++ ;
;	genAssign
;	AOP_STK for _strncpy__1_0
	ld	a,(hl)
;	genPlus
;	AOP_STK for _strncpy__1_0
;	genPlusIncr
	lda	hl,3(sp)
	inc	(hl)
	jr	NZ,00117$
	inc	hl
	inc	(hl)
00117$:
;	genAssign (pointer)
;	AOP_STK for _strncpy__1_0
;	isBitvar = 0
	lda	hl,1(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	(de),a
;	genPlus
;	AOP_STK for _strncpy__1_0
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	NZ,00118$
	inc	hl
	inc	(hl)
00118$:
;	genGoto
	jp	00102$
;_strncpy.c:38: while ( n-- )
;	genLabel
00114$:
;	genAssign
;	AOP_STK for _strncpy__1_0
;	(registers are the same)
;	genAssign
;	AOP_STK for _strncpy__1_0
	lda	hl,3(sp)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;	genLabel
00105$:
;	genAssign
;	AOP_STK for _strncpy__1_0
	lda	hl,3(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genMinus
;	AOP_STK for _strncpy__1_0
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	dec	de
	dec	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
;	genIfx
	ld	a,c
	or	a,b
	jp	Z,00107$
;_strncpy.c:40: *d++ = '\0' ;
;	genAssign (pointer)
;	AOP_STK for _strncpy__1_0
;	isBitvar = 0
	lda	hl,1(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,#0x00
	ld	(de),a
;	genPlus
;	AOP_STK for _strncpy__1_0
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	NZ,00119$
	inc	hl
	inc	(hl)
00119$:
;	genGoto
	jp	00105$
;	genLabel
00107$:
;_strncpy.c:42: return d1;
;	genRet
;	AOP_STK for _strncpy_d1_1_1
; Dump of IC_LEFT: type AOP_STK size 2
;	 aop_stk -2
	lda	hl,5(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genLabel
00108$:
;	genEndFunction
	lda	sp,7(sp)
	ret
_strncpy_end::
	.area _CODE
	.area _CABS
