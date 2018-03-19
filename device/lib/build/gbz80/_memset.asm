;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module _memset
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memset
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
;_memset.c:31: void * memset (
;	genLabel
;	genFunction
;	---------------------------------
; Function memset
; ---------------------------------
_memset_start::
_memset:
	lda	sp,-4(sp)
;_memset.c:36: register unsigned char * ret = buf;
;	genAssign
;	(operands are equal 3)
;_memset.c:38: while (count--) {
;	genAssign
;	AOP_STK for 
;	AOP_STK for _memset_ret_1_1
	lda	hl,6(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,2(sp)
	ld	(hl+),a
	ld	(hl),e
;	genAssign
;	AOP_STK for 
;	AOP_STK for _memset__1_0
	lda	hl,9(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,0(sp)
	ld	(hl+),a
	ld	(hl),e
;	genLabel
00101$:
;	genAssign
;	AOP_STK for _memset__1_0
	lda	hl,0(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genMinus
;	AOP_STK for _memset__1_0
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
	jp	Z,00103$
;_memset.c:39: *(unsigned char *) ret = ch;
;	genAssign (pointer)
;	AOP_STK for _memset_ret_1_1
;	AOP_STK for 
;	isBitvar = 0
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	lda	hl,8(sp)
	ld	a,(hl)
	ld	(de),a
;_memset.c:40: ret = ((unsigned char *) ret) + 1;
;	genPlus
;	AOP_STK for _memset_ret_1_1
;	genPlusIncr
	lda	hl,2(sp)
	inc	(hl)
	jr	NZ,00109$
	inc	hl
	inc	(hl)
00109$:
;	genGoto
	jp	00101$
;	genLabel
00103$:
;_memset.c:43: return buf ;
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
_memset_end::
	.area _CODE
	.area _CABS
