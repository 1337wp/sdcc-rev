;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module _memcpy
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memcpy
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
	lda	sp,-4(sp)
;_memcpy.c:39: char * d = dst;
;	genAssign
;	(operands are equal 3)
;	genAssign
;	AOP_STK for 
;	AOP_STK for _memcpy_d_1_1
	lda	hl,6(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,2(sp)
	ld	(hl+),a
	ld	(hl),e
;_memcpy.c:40: char * s = src;
;	genAssign
;	AOP_STK for 
	lda	hl,8(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genAssign
;	AOP_STK for _memcpy_s_1_1
	lda	hl,0(sp)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;_memcpy.c:42: int count = -(acount >> 2);
;	genRightShift
;	AOP_STK for 
	lda	hl,10(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
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
	jp	Z,00103$
;_memcpy.c:45: *d++ = *s++;
;	genPointerGet
;	AOP_STK for _memcpy_s_1_1
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genPlus
;	AOP_STK for _memcpy_s_1_1
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	NZ,00115$
	inc	hl
	inc	(hl)
00115$:
;	genAssign (pointer)
;	AOP_STK for _memcpy_d_1_1
;	isBitvar = 0
	lda	hl,2(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	(de),a
;	genPlus
;	AOP_STK for _memcpy_d_1_1
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	NZ,00116$
	inc	hl
	inc	(hl)
00116$:
;_memcpy.c:46: *d++ = *s++;
;	genPointerGet
;	AOP_STK for _memcpy_s_1_1
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genPlus
;	AOP_STK for _memcpy_s_1_1
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	NZ,00117$
	inc	hl
	inc	(hl)
00117$:
;	genAssign (pointer)
;	AOP_STK for _memcpy_d_1_1
;	isBitvar = 0
	lda	hl,2(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	(de),a
;	genPlus
;	AOP_STK for _memcpy_d_1_1
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	NZ,00118$
	inc	hl
	inc	(hl)
00118$:
;_memcpy.c:47: *d++ = *s++;
;	genPointerGet
;	AOP_STK for _memcpy_s_1_1
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genPlus
;	AOP_STK for _memcpy_s_1_1
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	NZ,00119$
	inc	hl
	inc	(hl)
00119$:
;	genAssign (pointer)
;	AOP_STK for _memcpy_d_1_1
;	isBitvar = 0
	lda	hl,2(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	(de),a
;	genPlus
;	AOP_STK for _memcpy_d_1_1
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	NZ,00120$
	inc	hl
	inc	(hl)
00120$:
;_memcpy.c:48: *d++ = *s++;
;	genPointerGet
;	AOP_STK for _memcpy_s_1_1
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genPlus
;	AOP_STK for _memcpy_s_1_1
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	NZ,00121$
	inc	hl
	inc	(hl)
00121$:
;	genAssign (pointer)
;	AOP_STK for _memcpy_d_1_1
;	isBitvar = 0
	lda	hl,2(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	(de),a
;	genPlus
;	AOP_STK for _memcpy_d_1_1
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	NZ,00122$
	inc	hl
	inc	(hl)
00122$:
;_memcpy.c:49: count++;
;	genPlus
;	genPlusIncr
	inc	bc
;	genGoto
	jp	00101$
;	genLabel
00103$:
;_memcpy.c:52: if (acount & 2) {
;	genAnd
;	AOP_STK for 
	lda	hl,10(sp)
	ld	a,(hl)
	and	a,#0x02
	jr	NZ,00123$
	jp	00105$
00123$:
;_memcpy.c:53: *d++ = *s++; 
;	genPointerGet
;	AOP_STK for _memcpy_s_1_1
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genPlus
;	AOP_STK for _memcpy_s_1_1
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	NZ,00124$
	inc	hl
	inc	(hl)
00124$:
;	genAssign (pointer)
;	AOP_STK for _memcpy_d_1_1
;	isBitvar = 0
	lda	hl,2(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	(de),a
;	genPlus
;	AOP_STK for _memcpy_d_1_1
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	NZ,00125$
	inc	hl
	inc	(hl)
00125$:
;_memcpy.c:54: *d++ = *s++;
;	genPointerGet
;	AOP_STK for _memcpy_s_1_1
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genPlus
;	AOP_STK for _memcpy_s_1_1
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	NZ,00126$
	inc	hl
	inc	(hl)
00126$:
;	genAssign (pointer)
;	AOP_STK for _memcpy_d_1_1
;	isBitvar = 0
	lda	hl,2(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	(de),a
;	genPlus
;	AOP_STK for _memcpy_d_1_1
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	NZ,00127$
	inc	hl
	inc	(hl)
00127$:
;	genLabel
00105$:
;_memcpy.c:56: if (acount & 1) {
;	genAnd
;	AOP_STK for 
	lda	hl,10(sp)
	ld	a,(hl)
	and	a,#0x01
	jr	NZ,00128$
	jp	00107$
00128$:
;_memcpy.c:57: *d++ = *s++;
;	genPointerGet
;	AOP_STK for _memcpy_s_1_1
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genAssign (pointer)
;	AOP_STK for _memcpy_d_1_1
;	isBitvar = 0
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	(de),a
;	genLabel
00107$:
;_memcpy.c:59: return dst;
;	genRet
;	AOP_STK for 
; Dump of IC_LEFT: type AOP_STK size 2
;	 aop_stk 2
	lda	hl,6(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genLabel
00108$:
;	genEndFunction
	lda	sp,4(sp)
	ret
_memcpy_end::
	.area _CODE
	.area _CABS
