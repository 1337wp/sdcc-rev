;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module _mullong
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __mullong
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
;_mullong.c:703: _mullong (long a, long b)
;	genLabel
;	genFunction
;	---------------------------------
; Function _mullong
; ---------------------------------
__mullong_start::
__mullong:
	lda	sp,-28(sp)
;_mullong.c:707: t.i.hi = bcast(a)->b.b0 * bcast(b)->b.b2;           // A
;	genAddrOf
;	AOP_STK for __mullong__1_0
	lda	hl,24(sp)
	ld	a,l
	ld	d,h
	lda	hl,22(sp)
	ld	(hl+),a
	ld	(hl),d
;	genPlus
;	AOP_STK for __mullong__1_0
;	AOP_STK for __mullong__1_0
;	genPlusIncr
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0002
	add	hl,de
	ld	a,l
	ld	d,h
	lda	hl,20(sp)
	ld	(hl+),a
	ld	(hl),d
;	genAddrOf
;	AOP_STK for __mullong__1_0
	lda	hl,30(sp)
	ld	a,l
	ld	d,h
	lda	hl,18(sp)
;	genPointerGet
;	AOP_STK for __mullong__1_0
;	AOP_STK for __mullong__1_0
	ld	(hl+),a
	ld	(hl),d
	ld	e,a
	ld	a,(de)
	dec	hl
	dec	hl
	ld	(hl),a
;	genAddrOf
;	AOP_STK for __mullong__1_0
	lda	hl,34(sp)
	ld	a,l
	ld	d,h
	lda	hl,15(sp)
	ld	(hl+),a
	ld	(hl),d
;	genPlus
;	AOP_STK for __mullong__1_0
;	AOP_STK for __mullong__1_0
;	genPlusIncr
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0002
	add	hl,de
	ld	a,l
	ld	d,h
	lda	hl,13(sp)
;	genPointerGet
;	AOP_STK for __mullong__1_0
	ld	(hl+),a
	ld	(hl),d
	ld	e,a
	ld	a,(de)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	c,a
	push	af
	inc	sp
;	genIpush
;	AOP_STK for __mullong__1_0
	lda	hl,18(sp)
	ld	a,(hl)
	push	af
	inc	sp
;	genCall
	call	__muluchar_rrx_s
	ld	b,d
	ld	c,e
	lda	sp,2(sp)
;	genAssign (pointer)
;	AOP_STK for __mullong__1_0
;	isBitvar = 0
	lda	hl,20(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,c
	ld	(de),a
	inc	de
	ld	a,b
	ld	(de),a
;_mullong.c:708: t.i.lo = bcast(a)->b.b0 * bcast(b)->b.b0;           // A
;	genPointerGet
;	AOP_STK for __mullong__1_0
;	AOP_STK for __mullong__1_0
	lda	hl,15(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	lda	hl,20(sp)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for __mullong__1_0
	ld	(hl),a
	push	af
	inc	sp
;	genIpush
;	AOP_STK for __mullong__1_0
	lda	hl,18(sp)
	ld	a,(hl)
	push	af
	inc	sp
;	genCall
	call	__muluchar_rrx_s
	ld	c,d
	ld	b,e
	lda	sp,2(sp)
;	genAssign (pointer)
;	AOP_STK for __mullong__1_0
;	isBitvar = 0
	lda	hl,22(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,b
	ld	(de),a
	inc	de
	ld	a,c
	ld	(de),a
;_mullong.c:709: t.b.b3 += bcast(a)->b.b3 * bcast(b)->b.b0;          // G
;	genAddrOf
	lda	hl,24(sp)
	ld	c,l
	ld	b,h
;	genPlus
;	AOP_STK for __mullong__1_0
;	genPlusIncr
	ld	hl,#0x0003
	add	hl,bc
	ld	a,l
	ld	d,h
	lda	hl,22(sp)
;	genPointerGet
;	AOP_STK for __mullong__1_0
	ld	(hl+),a
	ld	(hl),d
	ld	e,a
	ld	a,(de)
	ld	b,a
;	genPlus
;	AOP_STK for __mullong__1_0
;	AOP_STK for __mullong__1_0
;	genPlusIncr
	lda	hl,18(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0003
	add	hl,de
	ld	a,l
	ld	d,h
	lda	hl,11(sp)
;	genPointerGet
;	AOP_STK for __mullong__1_0
	ld	(hl+),a
	ld	(hl),d
	ld	e,a
	ld	a,(de)
	ld	c,a
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
;	AOP_STK for __mullong__1_0
	lda	hl,22(sp)
	ld	a,(hl)
	push	af
	inc	sp
;	genIpush
	ld	a,c
	push	af
	inc	sp
;	genCall
	call	__muluchar_rrx_s
	ld	c,e
	lda	sp,2(sp)
	pop	af
;	genPlus
	ld	b,a
	add	a,c
;	genAssign (pointer)
;	AOP_STK for __mullong__1_0
;	isBitvar = 0
	lda	hl,22(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	(de),a
;_mullong.c:710: t.b.b3 += bcast(a)->b.b2 * bcast(b)->b.b1;          // F
;	genPointerGet
;	AOP_STK for __mullong__1_0
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	b,a
;	genPlus
;	AOP_STK for __mullong__1_0
;	AOP_STK for __mullong__1_0
;	genPlusIncr
	lda	hl,18(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0002
	add	hl,de
	ld	a,l
	ld	d,h
	lda	hl,9(sp)
;	genPointerGet
;	AOP_STK for __mullong__1_0
;	AOP_STK for __mullong__1_0
	ld	(hl+),a
	ld	(hl),d
	ld	e,a
	ld	a,(de)
	dec	hl
	dec	hl
	ld	(hl),a
;	genPlus
;	AOP_STK for __mullong__1_0
;	AOP_STK for __mullong__1_0
;	genPlusIncr
	lda	hl,15(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0001
	add	hl,de
	ld	a,l
	ld	d,h
	lda	hl,6(sp)
;	genPointerGet
;	AOP_STK for __mullong__1_0
	ld	(hl+),a
	ld	(hl),d
	ld	e,a
	ld	a,(de)
	ld	c,a
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
	ld	a,c
	push	af
	inc	sp
;	genIpush
;	AOP_STK for __mullong__1_0
	inc	hl
	ld	a,(hl)
	push	af
	inc	sp
;	genCall
	call	__muluchar_rrx_s
	ld	c,e
	lda	sp,2(sp)
	pop	af
;	genPlus
	ld	b,a
	add	a,c
;	genAssign (pointer)
;	AOP_STK for __mullong__1_0
;	isBitvar = 0
	lda	hl,22(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	(de),a
;_mullong.c:711: t.i.hi += bcast(a)->b.b2 * bcast(b)->b.b0;          // E <- b lost in .lst
;	genAddrOf
	lda	hl,24(sp)
	ld	c,l
	ld	b,h
;	genPlus
;	AOP_STK for __mullong__1_0
;	genPlusIncr
	ld	hl,#0x0002
	add	hl,bc
	ld	a,l
	ld	d,h
	lda	hl,22(sp)
;	genPointerGet
;	AOP_STK for __mullong__1_0
;	AOP_STK for __mullong__1_0
	ld	(hl+),a
	ld	(hl),d
	ld	e,a
	ld	a,(de)
	lda	hl,4(sp)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
;	genPointerGet
;	AOP_STK for __mullong__1_0
	lda	hl,9(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	c,a
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for __mullong__1_0
	lda	hl,20(sp)
	ld	a,(hl)
	push	af
	inc	sp
;	genIpush
	ld	a,c
	push	af
	inc	sp
;	genCall
	call	__muluchar_rrx_s
	ld	b,d
	ld	c,e
	lda	sp,2(sp)
;	genPlus
;	AOP_STK for __mullong__1_0
	lda	hl,4(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	add	hl,bc
	ld	c,l
	ld	b,h
;	genAssign (pointer)
;	AOP_STK for __mullong__1_0
;	isBitvar = 0
	lda	hl,22(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,c
	ld	(de),a
	inc	de
	ld	a,b
	ld	(de),a
;_mullong.c:713: t.i.hi += bcast(a)->b.b1 * bcast(b)->b.b1;          // D <- b lost in .lst
;	genPointerGet
;	AOP_STK for __mullong__1_0
;	AOP_STK for __mullong__1_0
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	lda	hl,4(sp)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
;	genPlus
;	AOP_STK for __mullong__1_0
;	AOP_STK for __mullong__1_0
;	genPlusIncr
	lda	hl,18(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0001
	add	hl,de
	ld	a,l
	ld	d,h
	lda	hl,9(sp)
;	genPointerGet
;	AOP_STK for __mullong__1_0
	ld	(hl+),a
	ld	(hl),d
	ld	e,a
	ld	a,(de)
	ld	c,a
;	genPointerGet
;	AOP_STK for __mullong__1_0
	lda	hl,6(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	b,a
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	push	bc
	inc	sp
;	genIpush
	ld	a,c
	push	af
	inc	sp
;	genCall
	call	__muluchar_rrx_s
	ld	b,d
	ld	c,e
	lda	sp,2(sp)
;	genPlus
;	AOP_STK for __mullong__1_0
	lda	hl,4(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	add	hl,bc
	ld	c,l
	ld	b,h
;	genAssign (pointer)
;	AOP_STK for __mullong__1_0
;	isBitvar = 0
	lda	hl,22(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,c
	ld	(de),a
	inc	de
	ld	a,b
	ld	(de),a
;_mullong.c:715: bcast(a)->bi.b3 = bcast(a)->b.b1 * bcast(b)->b.b2;  // C
;	genPointerGet
;	AOP_STK for __mullong__1_0
	lda	hl,9(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	c,a
;	genPointerGet
;	AOP_STK for __mullong__1_0
	lda	hl,13(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	b,a
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	push	bc
	inc	sp
;	genIpush
	ld	a,c
	push	af
	inc	sp
;	genCall
	call	__muluchar_rrx_s
	ld	c,e
	lda	sp,2(sp)
;	genAssign (pointer)
;	AOP_STK for __mullong__1_0
;	isBitvar = 0
	lda	hl,11(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,c
	ld	(de),a
;_mullong.c:716: bcast(a)->bi.i12 = bcast(a)->b.b1 * bcast(b)->b.b0; // C
;	genPlus
;	AOP_STK for __mullong__1_0
;	AOP_STK for __mullong__1_0
;	genPlusIncr
	lda	hl,18(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0001
	add	hl,de
	ld	a,l
	ld	d,h
	lda	hl,4(sp)
	ld	(hl+),a
	ld	(hl),d
;	genPlus
;	AOP_STK for __mullong__1_0
;	genPlusIncr
	lda	hl,18(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
;	genPointerGet
	ld	a,(bc)
	ld	c,a
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for __mullong__1_0
	inc	hl
	ld	a,(hl)
	push	af
	inc	sp
;	genIpush
	ld	a,c
	push	af
	inc	sp
;	genCall
	call	__muluchar_rrx_s
	ld	b,d
	ld	c,e
	lda	sp,2(sp)
;	genAssign (pointer)
;	AOP_STK for __mullong__1_0
;	isBitvar = 0
	lda	hl,4(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,c
	ld	(de),a
	inc	de
	ld	a,b
	ld	(de),a
;_mullong.c:718: bcast(b)->bi.b3 = bcast(a)->b.b0 * bcast(b)->b.b3;  // B
;	genPlus
;	AOP_STK for __mullong__1_0
;	AOP_STK for __mullong__1_0
;	genPlusIncr
	lda	hl,15(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0003
	add	hl,de
	ld	a,l
	ld	d,h
	lda	hl,4(sp)
;	genPointerGet
;	AOP_STK for __mullong__1_0
	ld	(hl+),a
	ld	(hl),d
	ld	e,a
	ld	a,(de)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	c,a
	push	af
	inc	sp
;	genIpush
;	AOP_STK for __mullong__1_0
	lda	hl,18(sp)
	ld	a,(hl)
	push	af
	inc	sp
;	genCall
	call	__muluchar_rrx_s
	ld	c,e
	lda	sp,2(sp)
;	genAssign (pointer)
;	AOP_STK for __mullong__1_0
;	isBitvar = 0
	lda	hl,4(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,c
	ld	(de),a
;_mullong.c:719: bcast(b)->bi.i12 = bcast(a)->b.b0 * bcast(b)->b.b1; // B
;	genPlus
;	AOP_STK for __mullong__1_0
;	AOP_STK for __mullong__1_0
;	genPlusIncr
	lda	hl,15(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0001
	add	hl,de
	ld	a,l
	ld	d,h
	lda	hl,4(sp)
	ld	(hl+),a
	ld	(hl),d
;	genPlus
;	AOP_STK for __mullong__1_0
;	genPlusIncr
	lda	hl,15(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
;	genPointerGet
	ld	a,(bc)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	c,a
	push	af
	inc	sp
;	genIpush
;	AOP_STK for __mullong__1_0
	inc	hl
	ld	a,(hl)
	push	af
	inc	sp
;	genCall
	call	__muluchar_rrx_s
	ld	b,d
	ld	c,e
	lda	sp,2(sp)
;	genAssign (pointer)
;	AOP_STK for __mullong__1_0
;	isBitvar = 0
	lda	hl,4(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,c
	ld	(de),a
	inc	de
	ld	a,b
	ld	(de),a
;_mullong.c:721: bcast(b)->bi.b0 = 0;                                // B
;	genAssign (pointer)
;	AOP_STK for __mullong__1_0
;	isBitvar = 0
	lda	hl,15(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,#0x00
	ld	(de),a
;_mullong.c:722: bcast(a)->bi.b0 = 0;                                // C
;	genAssign (pointer)
;	AOP_STK for __mullong__1_0
;	isBitvar = 0
	inc	hl
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,#0x00
	ld	(de),a
;_mullong.c:723: t.l += a;
;	genAddrOf
	lda	hl,24(sp)
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for __mullong__1_0
	ld	e,c
	ld	d,b
	ld	a,(de)
	lda	hl,0(sp)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
;	genAssign
;	(operands are equal 3)
;	genPlus
;	AOP_STK for __mullong__1_0
;	AOP_STK for 
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	lda	hl,30(sp)
	add	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a,(hl)
	push	af
	lda	hl,3(sp)
	ld	(hl-),a
	ld	(hl),e
	inc	hl
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	lda	hl,34(sp)
	pop	af
	ld	a,e
	adc	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a,(hl)
	lda	hl,3(sp)
	ld	(hl-),a
	ld	(hl),e
;	genAssign (pointer)
;	AOP_STK for __mullong__1_0
;	isBitvar = 0
	ld	e,c
	ld	d,b
	dec	hl
	dec	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
;_mullong.c:725: return t.l + b;
;	genPointerGet
;	AOP_STK for __mullong__1_0
	ld	e,c
	ld	d,b
	ld	a,(de)
	lda	hl,0(sp)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
;	genAssign
;	(operands are equal 3)
;	genPlus
;	AOP_STK for __mullong__1_0
;	AOP_STK for 
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	lda	hl,34(sp)
	add	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a,(hl)
	push	af
	lda	hl,3(sp)
	ld	(hl-),a
	ld	(hl),e
	inc	hl
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	lda	hl,38(sp)
	pop	af
	ld	a,e
	adc	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a,(hl)
	lda	hl,3(sp)
	ld	(hl-),a
	ld	(hl),e
;	genRet
;	AOP_STK for __mullong__1_0
; Dump of IC_LEFT: type AOP_STK size 4
;	 aop_stk -28
	dec	hl
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
;	genLabel
00101$:
;	genEndFunction
	lda	sp,28(sp)
	ret
__mullong_end::
	.area _CODE
	.area _CABS
