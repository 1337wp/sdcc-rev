;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module _modulong
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __modulong
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
;_modulong.c:337: _modulong (unsigned long a, unsigned long b)
;	genLabel
;	genFunction
;	---------------------------------
; Function _modulong
; ---------------------------------
__modulong_start::
__modulong:
	lda	sp,-8(sp)
;_modulong.c:339: unsigned char count = 0;
;	genAssign
;_modulong.c:341: while (!MSB_SET(b))
;	genAssign
	ld	bc,#0x0000
;	genLabel
00103$:
;	genGetHBIT
;	AOP_STK for 
	lda	hl,17(sp)
	ld	a,(hl)
	rlc	a
;	genIfx
	and	a,#0x01
	jp	NZ,00117$
;_modulong.c:343: b <<= 1;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
	ld	a,#0x01
	push	af
	inc	sp
;	genIpush
;	AOP_STK for 
	dec	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,19(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__rlulong_rrx_s
;	AOP_STK for __modulong__1_0
	push	hl
	lda	hl,13(sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	lda	sp,5(sp)
	pop	bc
;	genAssign
;	AOP_STK for __modulong__1_0
;	AOP_STK for 
	lda	hl,4(sp)
	ld	d,h
	ld	e,l
	lda	hl,14(sp)
	ld	a,(de)
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
;_modulong.c:344: if (b > a)
;	genCmpGt
;	AOP_STK for 
;	AOP_STK for 
	lda	hl,10(sp)
	ld	d,h
	ld	e,l
	lda	hl,14(sp)
	ld	a,(de)
	sub	a,(hl)
	inc	hl
	inc	de
	ld	a,(de)
	sbc	a,(hl)
	inc	hl
	inc	de
	ld	a,(de)
	sbc	a,(hl)
	inc	hl
	inc	de
	ld	a,(de)
	sbc	a,(hl)
	jp	NC,00102$
;_modulong.c:346: b >>=1;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
	ld	a,#0x01
	push	af
	inc	sp
;	genIpush
;	AOP_STK for 
	lda	hl,19(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,19(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__rrulong_rrx_s
;	AOP_STK for __modulong__1_0
	push	hl
	lda	hl,13(sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	lda	sp,5(sp)
	pop	bc
;	genAssign
;	AOP_STK for __modulong__1_0
;	AOP_STK for 
	lda	hl,4(sp)
	ld	d,h
	ld	e,l
	lda	hl,14(sp)
	ld	a,(de)
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
;_modulong.c:347: break;
;	genGoto
	jp	00117$
;	genLabel
00102$:
;_modulong.c:349: count++;
;	genPlus
;	genPlusIncr
	inc	b
;	genAssign
	ld	c,b
;	genGoto
	jp	00103$
;_modulong.c:351: do
;	genLabel
00117$:
;	genAssign
	ld	b,c
;	genLabel
00108$:
;_modulong.c:353: if (a >= b)
;	genCmpLt
;	AOP_STK for 
;	AOP_STK for 
	lda	hl,10(sp)
	ld	d,h
	ld	e,l
	lda	hl,14(sp)
	ld	a,(de)
	sub	a,(hl)
	inc	hl
	inc	de
	ld	a,(de)
	sbc	a,(hl)
	inc	hl
	inc	de
	ld	a,(de)
	sbc	a,(hl)
	inc	hl
	inc	de
	ld	a,(de)
	sbc	a,(hl)
	jp	C,00107$
;_modulong.c:354: a -= b;
;	genMinus
;	AOP_STK for 
;	AOP_STK for 
	lda	hl,10(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	lda	hl,14(sp)
	sub	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a,(hl)
	push	af
	lda	hl,13(sp)
	ld	(hl-),a
	ld	(hl),e
	inc	hl
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	lda	hl,18(sp)
	pop	af
	ld	a,e
	sbc	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a,(hl)
	lda	hl,13(sp)
	ld	(hl-),a
	ld	(hl),e
;	genLabel
00107$:
;_modulong.c:355: b >>= 1;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
	ld	a,#0x01
	push	af
	inc	sp
;	genIpush
;	AOP_STK for 
	lda	hl,19(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,19(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__rrulong_rrx_s
;	AOP_STK for __modulong__1_0
	push	hl
	lda	hl,9(sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	lda	sp,5(sp)
	pop	bc
;	genAssign
;	AOP_STK for __modulong__1_0
;	AOP_STK for 
	lda	hl,0(sp)
	ld	d,h
	ld	e,l
	lda	hl,14(sp)
	ld	a,(de)
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
;_modulong.c:357: while (count--);
;	genAssign
	ld	c,b
;	genMinus
	dec	b
;	genIfx
	xor	a,a
	or	a,c
	jp	NZ,00108$
;_modulong.c:359: return a;
;	genRet
;	AOP_STK for 
; Dump of IC_LEFT: type AOP_STK size 4
;	 aop_stk 2
	lda	hl,10(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
;	genLabel
00111$:
;	genEndFunction
	lda	sp,8(sp)
	ret
__modulong_end::
	.area _CODE
	.area _CABS
