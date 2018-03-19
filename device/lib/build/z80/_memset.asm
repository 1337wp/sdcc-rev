;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module _memset
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memset
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
;_memset.c:31: void * memset (
;	genLabel
;	genFunction
;	---------------------------------
; Function memset
; ---------------------------------
_memset_start::
_memset:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-2
	add	hl,sp
	ld	sp,hl
;_memset.c:36: register unsigned char * ret = buf;
;	genAssign
;	(operands are equal 3)
;_memset.c:38: while (count--) {
;	genAssign
;	AOP_STK for 
;	AOP_STK for _memset_ret_1_1
	ld	a,4(ix)
	ld	-2(ix),a
	ld	a,5(ix)
	ld	-1(ix),a
;	genAssign
;	AOP_STK for 
	ld	c,7(ix)
	ld	b,8(ix)
;	genLabel
00101$:
;	genAssign
	ld	e,c
	ld	d,b
;	genMinus
	dec	bc
;	genIfx
	ld	a,e
	or	a,d
	jr	Z,00103$
;_memset.c:39: *(unsigned char *) ret = ch;
;	genAssign (pointer)
;	AOP_STK for _memset_ret_1_1
;	AOP_STK for 
;	isBitvar = 0
	ld	l,-2(ix)
	ld	h,-1(ix)
	ld	a,6(ix)
	ld	(hl),a
;_memset.c:40: ret = ((unsigned char *) ret) + 1;
;	genPlus
;	AOP_STK for _memset_ret_1_1
;	genPlusIncr
	inc	-2(ix)
	jr	NZ,00109$
	inc	-1(ix)
00109$:
;	genGoto
	jr	00101$
;	genLabel
00103$:
;_memset.c:43: return buf ;
;	genRet
;	AOP_STK for 
; Dump of IC_LEFT: type AOP_STK size 2
;	 aop_stk 4
	ld	l,4(ix)
	ld	h,5(ix)
;	genLabel
;	genEndFunction
	ld	sp,ix
	pop	ix
	ret
_memset_end::
	.area _CODE
	.area _CABS
