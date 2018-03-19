;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module _memmove
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memmove
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
;_memmove.c:35: void * memmove (
;	genLabel
;	genFunction
;	---------------------------------
; Function memmove
; ---------------------------------
_memmove_start::
_memmove:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-4
	add	hl,sp
	ld	sp,hl
;_memmove.c:48: int count = -(acount >> 2);
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
;	AOP_STK for _memmove_count_1_1
	ld	-4(ix),c
	ld	-3(ix),b
;_memmove.c:50: if (((int)src < (int)dst) && ((((int)src)+acount) > (int)dst)) {
;	genCast
;	AOP_STK for 
	ld	e,6(ix)
	ld	d,7(ix)
;	genCast
;	AOP_STK for 
	ld	c,4(ix)
	ld	b,5(ix)
;	genCmpLt
	ld	a,e
	sub	a,c
	ld	a,d
	sbc	a,b
	jp	P,00116$
;	genPlus
;	AOP_STK for 
	ld	a,e
	add	a,8(ix)
	ld	e,a
	ld	a,d
	adc	a,9(ix)
	ld	d,a
;	genAssign
;	(registers are the same)
;	genCmpGt
	ld	a,c
	sub	a,e
	ld	a,b
	sbc	a,d
	jp	NC,00116$
;_memmove.c:54: d = ((char *)dst)+acount-1;
;	genAssign
;	AOP_STK for 
	ld	c,4(ix)
	ld	b,5(ix)
;	genPlus
;	AOP_STK for 
	ld	a,c
	add	a,8(ix)
	ld	c,a
	ld	a,b
	adc	a,9(ix)
	ld	b,a
;	genMinus
	dec	bc
;_memmove.c:55: s = ((char *)src)+acount-1;
;	genAssign
;	AOP_STK for 
	ld	e,6(ix)
	ld	d,7(ix)
;	genPlus
;	AOP_STK for 
	ld	a,e
	add	a,8(ix)
	ld	e,a
	ld	a,d
	adc	a,9(ix)
	ld	d,a
;	genMinus
;	AOP_STK for _memmove_s_1_1
	ld	a,e
	add	a,#0xFF
	ld	-2(ix),a
	ld	a,d
	adc	a,#0xFF
	ld	-1(ix),a
;_memmove.c:56: while (count) {
;	genLabel
00101$:
;	genIfx
;	AOP_STK for _memmove_count_1_1
	ld	a,-4(ix)
	or	a,-3(ix)
	jp	Z,00103$
;_memmove.c:57: *d-- = *s--;
;	genPointerGet
;	AOP_STK for _memmove_s_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	ld	e,(hl)
;	genMinus
;	AOP_STK for _memmove_s_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	dec	hl
	ld	-2(ix),l
	ld	-1(ix),h
;	genAssign (pointer)
;	isBitvar = 0
	ld	a,e
	ld	(bc),a
;	genMinus
	dec	bc
;_memmove.c:58: *d-- = *s--;
;	genPointerGet
;	AOP_STK for _memmove_s_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	ld	e,(hl)
;	genMinus
;	AOP_STK for _memmove_s_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	dec	hl
	ld	-2(ix),l
	ld	-1(ix),h
;	genAssign (pointer)
;	isBitvar = 0
	ld	a,e
	ld	(bc),a
;	genMinus
	dec	bc
;_memmove.c:59: *d-- = *s--;
;	genPointerGet
;	AOP_STK for _memmove_s_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	ld	e,(hl)
;	genMinus
;	AOP_STK for _memmove_s_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	dec	hl
	ld	-2(ix),l
	ld	-1(ix),h
;	genAssign (pointer)
;	isBitvar = 0
	ld	a,e
	ld	(bc),a
;	genMinus
	dec	bc
;_memmove.c:60: *d-- = *s--;
;	genPointerGet
;	AOP_STK for _memmove_s_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	ld	e,(hl)
;	genMinus
;	AOP_STK for _memmove_s_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	dec	hl
	ld	-2(ix),l
	ld	-1(ix),h
;	genAssign (pointer)
;	isBitvar = 0
	ld	a,e
	ld	(bc),a
;	genMinus
	dec	bc
;_memmove.c:61: count++;
;	genPlus
;	AOP_STK for _memmove_count_1_1
;	genPlusIncr
	inc	-4(ix)
	jr	NZ,00132$
	inc	-3(ix)
00132$:
;	genGoto
	jp	00101$
;	genLabel
00103$:
;_memmove.c:64: if (acount & 2) {
;	genAnd
;	AOP_STK for 
	ld	a,8(ix)
	and	a,#0x02
	jr	Z,00105$
;_memmove.c:65: *d-- = *s--;
;	genPointerGet
;	AOP_STK for _memmove_s_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	ld	e,(hl)
;	genMinus
;	AOP_STK for _memmove_s_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	dec	hl
	ld	-2(ix),l
	ld	-1(ix),h
;	genAssign (pointer)
;	isBitvar = 0
	ld	a,e
	ld	(bc),a
;	genMinus
	dec	bc
;_memmove.c:66: *d-- = *s--;
;	genPointerGet
;	AOP_STK for _memmove_s_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	ld	e,(hl)
;	genMinus
;	AOP_STK for _memmove_s_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	dec	hl
	ld	-2(ix),l
	ld	-1(ix),h
;	genAssign (pointer)
;	isBitvar = 0
	ld	a,e
	ld	(bc),a
;	genMinus
	dec	bc
;	genLabel
00105$:
;_memmove.c:68: if (acount & 1) {
;	genAnd
;	AOP_STK for 
	ld	a,8(ix)
	and	a,#0x01
	jp	Z,00117$
;_memmove.c:69: *d-- = *s--;
;	genPointerGet
;	AOP_STK for _memmove_s_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	ld	a,(hl)
;	genAssign (pointer)
;	isBitvar = 0
	ld	(bc),a
;	genGoto
	jp	00117$
;	genLabel
00116$:
;_memmove.c:76: d = dst;
;	genAssign
;	AOP_STK for 
	ld	e,4(ix)
	ld	d,5(ix)
;	genAssign
	ld	c,e
	ld	b,d
;_memmove.c:77: s = src;
;	genAssign
;	AOP_STK for 
	ld	e,6(ix)
	ld	d,7(ix)
;	genAssign
;	AOP_STK for _memmove_s_1_1
	ld	-2(ix),e
	ld	-1(ix),d
;_memmove.c:78: while (count) {
;	genLabel
00108$:
;	genIfx
;	AOP_STK for _memmove_count_1_1
	ld	a,-4(ix)
	or	a,-3(ix)
	jr	Z,00110$
;_memmove.c:79: *d++ = *s++;
;	genPointerGet
;	AOP_STK for _memmove_s_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	ld	a,(hl)
;	genPlus
;	AOP_STK for _memmove_s_1_1
;	genPlusIncr
	inc	-2(ix)
	jr	NZ,00135$
	inc	-1(ix)
00135$:
;	genAssign (pointer)
;	isBitvar = 0
	ld	(bc),a
;	genPlus
;	genPlusIncr
	inc	bc
;_memmove.c:80: *d++ = *s++;
;	genPointerGet
;	AOP_STK for _memmove_s_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	ld	a,(hl)
;	genPlus
;	AOP_STK for _memmove_s_1_1
;	genPlusIncr
	inc	-2(ix)
	jr	NZ,00136$
	inc	-1(ix)
00136$:
;	genAssign (pointer)
;	isBitvar = 0
	ld	(bc),a
;	genPlus
;	genPlusIncr
	inc	bc
;_memmove.c:81: *d++ = *s++;
;	genPointerGet
;	AOP_STK for _memmove_s_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	ld	a,(hl)
;	genPlus
;	AOP_STK for _memmove_s_1_1
;	genPlusIncr
	inc	-2(ix)
	jr	NZ,00137$
	inc	-1(ix)
00137$:
;	genAssign (pointer)
;	isBitvar = 0
	ld	(bc),a
;	genPlus
;	genPlusIncr
	inc	bc
;_memmove.c:82: *d++ = *s++;
;	genPointerGet
;	AOP_STK for _memmove_s_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	ld	a,(hl)
;	genPlus
;	AOP_STK for _memmove_s_1_1
;	genPlusIncr
	inc	-2(ix)
	jr	NZ,00138$
	inc	-1(ix)
00138$:
;	genAssign (pointer)
;	isBitvar = 0
	ld	(bc),a
;	genPlus
;	genPlusIncr
	inc	bc
;_memmove.c:83: count++;
;	genPlus
;	AOP_STK for _memmove_count_1_1
;	genPlusIncr
	inc	-4(ix)
	jr	NZ,00139$
	inc	-3(ix)
00139$:
;	genGoto
	jr	00108$
;	genLabel
00110$:
;_memmove.c:86: if (acount & 2) {
;	genAnd
;	AOP_STK for 
	ld	a,8(ix)
	and	a,#0x02
	jr	Z,00112$
;_memmove.c:87: *d++ = *s++; 
;	genPointerGet
;	AOP_STK for _memmove_s_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	ld	a,(hl)
;	genPlus
;	AOP_STK for _memmove_s_1_1
;	genPlusIncr
	inc	-2(ix)
	jr	NZ,00141$
	inc	-1(ix)
00141$:
;	genAssign (pointer)
;	isBitvar = 0
	ld	(bc),a
;	genPlus
;	genPlusIncr
	inc	bc
;_memmove.c:88: *d++ = *s++;
;	genPointerGet
;	AOP_STK for _memmove_s_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	ld	a,(hl)
;	genPlus
;	AOP_STK for _memmove_s_1_1
;	genPlusIncr
	inc	-2(ix)
	jr	NZ,00142$
	inc	-1(ix)
00142$:
;	genAssign (pointer)
;	isBitvar = 0
	ld	(bc),a
;	genPlus
;	genPlusIncr
	inc	bc
;	genLabel
00112$:
;_memmove.c:90: if (acount & 1) {
;	genAnd
;	AOP_STK for 
	ld	a,8(ix)
	and	a,#0x01
	jr	Z,00117$
;_memmove.c:91: *d++ = *s++;
;	genPointerGet
;	AOP_STK for _memmove_s_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	ld	a,(hl)
;	genAssign (pointer)
;	isBitvar = 0
	ld	(bc),a
;	genLabel
00117$:
;_memmove.c:94: return dst;
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
_memmove_end::
	.area _CODE
	.area _CABS
