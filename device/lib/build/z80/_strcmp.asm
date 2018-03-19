;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:00 2018
;--------------------------------------------------------
	.module _strcmp
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strcmp
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
;_strcmp.c:29: int strcmp (
;	genLabel
;	genFunction
;	---------------------------------
; Function strcmp
; ---------------------------------
_strcmp_start::
_strcmp:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-5
	add	hl,sp
	ld	sp,hl
;_strcmp.c:38: char * src = asrc;
;	genAssign
;	AOP_STK for 
;	AOP_STK for _strcmp_src_1_1
	ld	a,4(ix)
	ld	-2(ix),a
	ld	a,5(ix)
	ld	-1(ix),a
;_strcmp.c:39: char * dst = adst;
;	genAssign
;	AOP_STK for 
;	AOP_STK for _strcmp_dst_1_1
	ld	a,6(ix)
	ld	-4(ix),a
	ld	a,7(ix)
	ld	-3(ix),a
;_strcmp.c:41: while( ! (*src - *dst) && *dst)
;	genLabel
00102$:
;	genPointerGet
;	AOP_STK for _strcmp_src_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	ld	e,(hl)
;	genCast
	ld	a,e
	rla	
	sbc	a,a
	ld	d,a
;	genPointerGet
;	AOP_STK for _strcmp_dst_1_1
;	AOP_STK for _strcmp__1_0
	ld	l,-4(ix)
	ld	h,-3(ix)
	ld	a,(hl)
	ld	-5(ix),a
;	genCast
;	AOP_STK for _strcmp__1_0
	ld	c,-5(ix)
	ld	a,-5(ix)
	rla	
	sbc	a,a
	ld	b,a
;	genMinus
	ld	a,e
	sub	a,c
	ld	e,a
	ld	a,d
	sbc	a,b
;	genIfx
	ld	d,a
;	genIfx
;	AOP_STK for _strcmp__1_0
	or	a,e
	jr	NZ,00104$
	or	a,-5(ix)
	jr	Z,00104$
;_strcmp.c:42: ++src, ++dst;
;	genPlus
;	AOP_STK for _strcmp_src_1_1
;	genPlusIncr
	inc	-2(ix)
	jr	NZ,00110$
	inc	-1(ix)
00110$:
;	genPlus
;	AOP_STK for _strcmp_dst_1_1
;	genPlusIncr
	inc	-4(ix)
	jr	NZ,00111$
	inc	-3(ix)
00111$:
;	genGoto
	jr	00102$
;	genLabel
00104$:
;_strcmp.c:44: return *src - *dst;
;	genPointerGet
;	AOP_STK for _strcmp_src_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	ld	c,(hl)
;	genCast
	ld	a,c
	rla	
	sbc	a,a
	ld	b,a
;	genPointerGet
;	AOP_STK for _strcmp_dst_1_1
	ld	l,-4(ix)
	ld	h,-3(ix)
	ld	e,(hl)
;	genCast
	ld	a,e
	rla	
	sbc	a,a
	ld	d,a
;	genMinus
	ld	a,c
	sub	a,e
	ld	l,a
	ld	a,b
	sbc	a,d
	ld	h,a
;	genRet
; Dump of IC_LEFT: type AOP_STR size 2
;	genLabel
;	genEndFunction
	ld	sp,ix
	pop	ix
	ret
_strcmp_end::
	.area _CODE
	.area _CABS
