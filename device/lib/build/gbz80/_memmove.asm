;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module _memmove
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memmove
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
	lda	sp,-10(sp)
;_memmove.c:48: int count = -(acount >> 2);
;	genRightShift
;	AOP_STK for 
	lda	hl,16(sp)
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
;	AOP_STK for _memmove_count_1_1
	lda	hl,4(sp)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;_memmove.c:50: if (((int)src < (int)dst) && ((((int)src)+acount) > (int)dst)) {
;	genCast
;	AOP_STK for 
	lda	hl,14(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genCast
;	AOP_STK for 
;	AOP_STK for _memmove__1_0
	lda	hl,12(sp)
	ld	a,(hl)
	lda	hl,2(sp)
	ld	(hl),a
	lda	hl,13(sp)
	ld	a,(hl)
	lda	hl,3(sp)
	ld	(hl),a
;	genCmpLt
;	AOP_STK for _memmove__1_0
	ld	a,c
	dec	hl
	sub	a,(hl)
	ld	a,b
	inc	hl
	sbc	a,(hl)
	rlca
	jp	NC,00116$
;	genPlus
;	AOP_STK for 
;	AOP_STK for _memmove__1_0
	lda	hl,16(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	add	hl,bc
	ld	a,l
	ld	d,h
	lda	hl,0(sp)
	ld	(hl+),a
	ld	(hl),d
;	genAssign
;	AOP_STK for _memmove__1_0
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genCmpGt
;	AOP_STK for _memmove__1_0
	ld	a,c
	lda	hl,0(sp)
	sub	a,(hl)
	ld	a,b
	inc	hl
	sbc	a,(hl)
	jp	NC,00116$
;_memmove.c:54: d = ((char *)dst)+acount-1;
;	genAssign
;	AOP_STK for 
	lda	hl,12(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPlus
;	AOP_STK for 
	lda	hl,16(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	add	hl,bc
	ld	c,l
	ld	b,h
;	genMinus
;	AOP_STK for _memmove_d_1_1
	ld	de,#0x0001
	ld	a,c
	sub	a,e
	ld	e,a
	ld	a,b
	sbc	a,d
	lda	hl,9(sp)
	ld	(hl-),a
	ld	(hl),e
;_memmove.c:55: s = ((char *)src)+acount-1;
;	genAssign
;	AOP_STK for 
	lda	hl,14(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPlus
;	AOP_STK for 
	inc	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	add	hl,bc
	ld	c,l
	ld	b,h
;	genMinus
;	AOP_STK for _memmove_s_1_1
	ld	de,#0x0001
	ld	a,c
	sub	a,e
	ld	e,a
	ld	a,b
	sbc	a,d
	lda	hl,7(sp)
	ld	(hl-),a
	ld	(hl),e
;_memmove.c:56: while (count) {
;	genLabel
00101$:
;	genIfx
;	AOP_STK for _memmove_count_1_1
	lda	hl,4(sp)
	ld	a,(hl+)
	or	a,(hl)
	jp	Z,00103$
;_memmove.c:57: *d-- = *s--;
;	genPointerGet
;	AOP_STK for _memmove_s_1_1
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	c,a
;	genMinus
;	AOP_STK for _memmove_s_1_1
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	dec	de
	dec	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
;	genAssign (pointer)
;	AOP_STK for _memmove_d_1_1
;	isBitvar = 0
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,c
	ld	(de),a
;	genMinus
;	AOP_STK for _memmove_d_1_1
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	dec	de
	dec	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
;_memmove.c:58: *d-- = *s--;
;	genPointerGet
;	AOP_STK for _memmove_s_1_1
	lda	hl,6(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	c,a
;	genMinus
;	AOP_STK for _memmove_s_1_1
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	dec	de
	dec	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
;	genAssign (pointer)
;	AOP_STK for _memmove_d_1_1
;	isBitvar = 0
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,c
	ld	(de),a
;	genMinus
;	AOP_STK for _memmove_d_1_1
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	dec	de
	dec	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
;_memmove.c:59: *d-- = *s--;
;	genPointerGet
;	AOP_STK for _memmove_s_1_1
	lda	hl,6(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	c,a
;	genMinus
;	AOP_STK for _memmove_s_1_1
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	dec	de
	dec	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
;	genAssign (pointer)
;	AOP_STK for _memmove_d_1_1
;	isBitvar = 0
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,c
	ld	(de),a
;	genMinus
;	AOP_STK for _memmove_d_1_1
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	dec	de
	dec	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
;_memmove.c:60: *d-- = *s--;
;	genPointerGet
;	AOP_STK for _memmove_s_1_1
	lda	hl,6(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	c,a
;	genMinus
;	AOP_STK for _memmove_s_1_1
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	dec	de
	dec	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
;	genAssign (pointer)
;	AOP_STK for _memmove_d_1_1
;	isBitvar = 0
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,c
	ld	(de),a
;	genMinus
;	AOP_STK for _memmove_d_1_1
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	dec	de
	dec	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
;_memmove.c:61: count++;
;	genPlus
;	AOP_STK for _memmove_count_1_1
;	genPlusIncr
	lda	hl,4(sp)
	inc	(hl)
	jr	NZ,00132$
	inc	hl
	inc	(hl)
00132$:
;	genGoto
	jp	00101$
;	genLabel
00103$:
;_memmove.c:64: if (acount & 2) {
;	genAnd
;	AOP_STK for 
	lda	hl,16(sp)
	ld	a,(hl)
	and	a,#0x02
	jr	NZ,00133$
	jp	00105$
00133$:
;_memmove.c:65: *d-- = *s--;
;	genPointerGet
;	AOP_STK for _memmove_s_1_1
	lda	hl,6(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	c,a
;	genMinus
;	AOP_STK for _memmove_s_1_1
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	dec	de
	dec	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
;	genAssign (pointer)
;	AOP_STK for _memmove_d_1_1
;	isBitvar = 0
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,c
	ld	(de),a
;	genMinus
;	AOP_STK for _memmove_d_1_1
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	dec	de
	dec	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
;_memmove.c:66: *d-- = *s--;
;	genPointerGet
;	AOP_STK for _memmove_s_1_1
	lda	hl,6(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	c,a
;	genMinus
;	AOP_STK for _memmove_s_1_1
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	dec	de
	dec	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
;	genAssign (pointer)
;	AOP_STK for _memmove_d_1_1
;	isBitvar = 0
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,c
	ld	(de),a
;	genMinus
;	AOP_STK for _memmove_d_1_1
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	dec	de
	dec	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
;	genLabel
00105$:
;_memmove.c:68: if (acount & 1) {
;	genAnd
;	AOP_STK for 
	lda	hl,16(sp)
	ld	a,(hl)
	and	a,#0x01
	jr	NZ,00134$
	jp	00117$
00134$:
;_memmove.c:69: *d-- = *s--;
;	genPointerGet
;	AOP_STK for _memmove_s_1_1
	lda	hl,6(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genAssign (pointer)
;	AOP_STK for _memmove_d_1_1
;	isBitvar = 0
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	(de),a
;	genGoto
	jp	00117$
;	genLabel
00116$:
;_memmove.c:76: d = dst;
;	genAssign
;	AOP_STK for 
	lda	hl,12(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genAssign
;	AOP_STK for _memmove_d_1_1
	lda	hl,8(sp)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;_memmove.c:77: s = src;
;	genAssign
;	AOP_STK for 
	lda	hl,14(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genAssign
;	AOP_STK for _memmove_s_1_1
	lda	hl,6(sp)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;_memmove.c:78: while (count) {
;	genLabel
00108$:
;	genIfx
;	AOP_STK for _memmove_count_1_1
	lda	hl,4(sp)
	ld	a,(hl+)
	or	a,(hl)
	jp	Z,00110$
;_memmove.c:79: *d++ = *s++;
;	genPointerGet
;	AOP_STK for _memmove_s_1_1
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genPlus
;	AOP_STK for _memmove_s_1_1
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	NZ,00135$
	inc	hl
	inc	(hl)
00135$:
;	genAssign (pointer)
;	AOP_STK for _memmove_d_1_1
;	isBitvar = 0
	lda	hl,8(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	(de),a
;	genPlus
;	AOP_STK for _memmove_d_1_1
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	NZ,00136$
	inc	hl
	inc	(hl)
00136$:
;_memmove.c:80: *d++ = *s++;
;	genPointerGet
;	AOP_STK for _memmove_s_1_1
	lda	hl,6(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genPlus
;	AOP_STK for _memmove_s_1_1
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	NZ,00137$
	inc	hl
	inc	(hl)
00137$:
;	genAssign (pointer)
;	AOP_STK for _memmove_d_1_1
;	isBitvar = 0
	lda	hl,8(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	(de),a
;	genPlus
;	AOP_STK for _memmove_d_1_1
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	NZ,00138$
	inc	hl
	inc	(hl)
00138$:
;_memmove.c:81: *d++ = *s++;
;	genPointerGet
;	AOP_STK for _memmove_s_1_1
	lda	hl,6(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genPlus
;	AOP_STK for _memmove_s_1_1
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	NZ,00139$
	inc	hl
	inc	(hl)
00139$:
;	genAssign (pointer)
;	AOP_STK for _memmove_d_1_1
;	isBitvar = 0
	lda	hl,8(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	(de),a
;	genPlus
;	AOP_STK for _memmove_d_1_1
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	NZ,00140$
	inc	hl
	inc	(hl)
00140$:
;_memmove.c:82: *d++ = *s++;
;	genPointerGet
;	AOP_STK for _memmove_s_1_1
	lda	hl,6(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genPlus
;	AOP_STK for _memmove_s_1_1
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	NZ,00141$
	inc	hl
	inc	(hl)
00141$:
;	genAssign (pointer)
;	AOP_STK for _memmove_d_1_1
;	isBitvar = 0
	lda	hl,8(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	(de),a
;	genPlus
;	AOP_STK for _memmove_d_1_1
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	NZ,00142$
	inc	hl
	inc	(hl)
00142$:
;_memmove.c:83: count++;
;	genPlus
;	AOP_STK for _memmove_count_1_1
;	genPlusIncr
	lda	hl,4(sp)
	inc	(hl)
	jr	NZ,00143$
	inc	hl
	inc	(hl)
00143$:
;	genGoto
	jp	00108$
;	genLabel
00110$:
;_memmove.c:86: if (acount & 2) {
;	genAnd
;	AOP_STK for 
	lda	hl,16(sp)
	ld	a,(hl)
	and	a,#0x02
	jr	NZ,00144$
	jp	00112$
00144$:
;_memmove.c:87: *d++ = *s++; 
;	genPointerGet
;	AOP_STK for _memmove_s_1_1
	lda	hl,6(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genPlus
;	AOP_STK for _memmove_s_1_1
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	NZ,00145$
	inc	hl
	inc	(hl)
00145$:
;	genAssign (pointer)
;	AOP_STK for _memmove_d_1_1
;	isBitvar = 0
	lda	hl,8(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	(de),a
;	genPlus
;	AOP_STK for _memmove_d_1_1
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	NZ,00146$
	inc	hl
	inc	(hl)
00146$:
;_memmove.c:88: *d++ = *s++;
;	genPointerGet
;	AOP_STK for _memmove_s_1_1
	lda	hl,6(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genPlus
;	AOP_STK for _memmove_s_1_1
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	NZ,00147$
	inc	hl
	inc	(hl)
00147$:
;	genAssign (pointer)
;	AOP_STK for _memmove_d_1_1
;	isBitvar = 0
	lda	hl,8(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	(de),a
;	genPlus
;	AOP_STK for _memmove_d_1_1
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	NZ,00148$
	inc	hl
	inc	(hl)
00148$:
;	genLabel
00112$:
;_memmove.c:90: if (acount & 1) {
;	genAnd
;	AOP_STK for 
	lda	hl,16(sp)
	ld	a,(hl)
	and	a,#0x01
	jr	NZ,00149$
	jp	00117$
00149$:
;_memmove.c:91: *d++ = *s++;
;	genPointerGet
;	AOP_STK for _memmove_s_1_1
	lda	hl,6(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genAssign (pointer)
;	AOP_STK for _memmove_d_1_1
;	isBitvar = 0
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	(de),a
;	genLabel
00117$:
;_memmove.c:94: return dst;
;	genRet
;	AOP_STK for 
; Dump of IC_LEFT: type AOP_STK size 2
;	 aop_stk 2
	lda	hl,12(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genLabel
00119$:
;	genEndFunction
	lda	sp,10(sp)
	ret
_memmove_end::
	.area _CODE
	.area _CABS
