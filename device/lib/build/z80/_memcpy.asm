;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module _memcpy
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memcpy
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
;_memcpy.c:29: void * memcpy (
;	genLabel
;	genFunction
;	---------------------------------
; Function memcpy
; ---------------------------------
_memcpy_start::
_memcpy:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-2
	add	hl,sp
	ld	sp,hl
;_memcpy.c:39: char * d = dst;
;	genAssign
;	(operands are equal 3)
;	genAssign
;	AOP_STK for 
	ld	e,4(ix)
	ld	d,5(ix)
;_memcpy.c:40: char * s = src;
;	genAssign
;	AOP_STK for 
	ld	c,6(ix)
	ld	b,7(ix)
;	genAssign
;	AOP_STK for _memcpy_s_1_1
	ld	-2(ix),c
	ld	-1(ix),b
;_memcpy.c:42: int count = -(acount >> 2);
;	genRightShift
;	AOP_STK for 
	ld	c,8(ix)
	ld	b,9(ix)
	srl	b
	rr	c
	srl	b
	rr	c
;	genUminus
	xor	a,a
	sbc	a,c
	ld	c,a
	ld	a,#0x00
	sbc	a,b
	ld	b,a
;	genAssign
;	(registers are the same)
;_memcpy.c:44: while (count) {
;	genLabel
00101$:
;	genIfx
	ld	a,c
	or	a,b
	jr	Z,00103$
;_memcpy.c:45: *d++ = *s++;
;	genPointerGet
;	AOP_STK for _memcpy_s_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	ld	a,(hl)
;	genPlus
;	AOP_STK for _memcpy_s_1_1
;	genPlusIncr
	inc	-2(ix)
	jr	NZ,00115$
	inc	-1(ix)
00115$:
;	genAssign (pointer)
;	isBitvar = 0
	ld	(de),a
;	genPlus
;	genPlusIncr
	inc	de
;_memcpy.c:46: *d++ = *s++;
;	genPointerGet
;	AOP_STK for _memcpy_s_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	ld	a,(hl)
;	genPlus
;	AOP_STK for _memcpy_s_1_1
;	genPlusIncr
	inc	-2(ix)
	jr	NZ,00116$
	inc	-1(ix)
00116$:
;	genAssign (pointer)
;	isBitvar = 0
	ld	(de),a
;	genPlus
;	genPlusIncr
	inc	de
;_memcpy.c:47: *d++ = *s++;
;	genPointerGet
;	AOP_STK for _memcpy_s_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	ld	a,(hl)
;	genPlus
;	AOP_STK for _memcpy_s_1_1
;	genPlusIncr
	inc	-2(ix)
	jr	NZ,00117$
	inc	-1(ix)
00117$:
;	genAssign (pointer)
;	isBitvar = 0
	ld	(de),a
;	genPlus
;	genPlusIncr
	inc	de
;_memcpy.c:48: *d++ = *s++;
;	genPointerGet
;	AOP_STK for _memcpy_s_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	ld	a,(hl)
;	genPlus
;	AOP_STK for _memcpy_s_1_1
;	genPlusIncr
	inc	-2(ix)
	jr	NZ,00118$
	inc	-1(ix)
00118$:
;	genAssign (pointer)
;	isBitvar = 0
	ld	(de),a
;	genPlus
;	genPlusIncr
	inc	de
;_memcpy.c:49: count++;
;	genPlus
;	genPlusIncr
	inc	bc
;	genGoto
	jr	00101$
;	genLabel
00103$:
;_memcpy.c:52: if (acount & 2) {
;	genAnd
;	AOP_STK for 
	ld	a,8(ix)
	and	a,#0x02
	jr	Z,00105$
;_memcpy.c:53: *d++ = *s++; 
;	genPointerGet
;	AOP_STK for _memcpy_s_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	ld	a,(hl)
;	genPlus
;	AOP_STK for _memcpy_s_1_1
;	genPlusIncr
	inc	-2(ix)
	jr	NZ,00120$
	inc	-1(ix)
00120$:
;	genAssign (pointer)
;	isBitvar = 0
	ld	(de),a
;	genPlus
;	genPlusIncr
	inc	de
;_memcpy.c:54: *d++ = *s++;
;	genPointerGet
;	AOP_STK for _memcpy_s_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	ld	a,(hl)
;	genPlus
;	AOP_STK for _memcpy_s_1_1
;	genPlusIncr
	inc	-2(ix)
	jr	NZ,00121$
	inc	-1(ix)
00121$:
;	genAssign (pointer)
;	isBitvar = 0
	ld	(de),a
;	genPlus
;	genPlusIncr
	inc	de
;	genLabel
00105$:
;_memcpy.c:56: if (acount & 1) {
;	genAnd
;	AOP_STK for 
	ld	a,8(ix)
	and	a,#0x01
	jr	Z,00107$
;_memcpy.c:57: *d++ = *s++;
;	genPointerGet
;	AOP_STK for _memcpy_s_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	ld	a,(hl)
;	genAssign (pointer)
;	isBitvar = 0
	ld	(de),a
;	genLabel
00107$:
;_memcpy.c:59: return dst;
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
_memcpy_end::
	.area _CODE
	.area _CABS
