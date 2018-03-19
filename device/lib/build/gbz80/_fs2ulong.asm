;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module _fs2ulong
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fs2ulong
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
;_fs2ulong.c:93: __fs2ulong (float a1)
;	genLabel
;	genFunction
;	---------------------------------
; Function __fs2ulong
; ---------------------------------
___fs2ulong_start::
___fs2ulong:
	lda	sp,-14(sp)
;_fs2ulong.c:99: fl1.f = a1;
;	genAddrOf
	lda	hl,10(sp)
	ld	c,l
	ld	b,h
;	genAssign (pointer)
;	AOP_STK for 
;	isBitvar = 0
	ld	e,c
	ld	d,b
	lda	hl,16(sp)
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
;_fs2ulong.c:101: if (!fl1.l || SIGN(fl1.l))
;	genAddrOf
	lda	hl,10(sp)
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for ___fs2ulong__1_0
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
;	genIfx
;	AOP_STK for ___fs2ulong__1_0
	lda	hl,0(sp)
	ld	a,(hl+)
	or	a,(hl)
	inc	hl
	or	a,(hl)
	inc	hl
	or	a,(hl)
	jp	Z,00101$
;	genAddrOf
	lda	hl,10(sp)
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for ___fs2ulong__1_0
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
;	genGetHBIT
;	AOP_STK for ___fs2ulong__1_0
	ld	(hl),a
	rlc	a
;	genIfx
	and	a,#0x01
	jp	Z,00102$
;	genLabel
00101$:
;_fs2ulong.c:102: return (0);
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 4
	ld	de,#0x0000
	ld	hl,#0x0000
	jp	00104$
;	genLabel
00102$:
;_fs2ulong.c:104: exp = EXP (fl1.l) - EXCESS - 24;
;	genAddrOf
	lda	hl,10(sp)
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for ___fs2ulong__1_0
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
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,#0x17
	push	af
	inc	sp
;	genIpush
;	AOP_STK for ___fs2ulong__1_0
	dec	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,3(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__rrulong_rrx_s
;	AOP_STK for ___fs2ulong__1_0
	push	hl
	lda	hl,7(sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	lda	sp,5(sp)
;	genAnd
;	AOP_STK for ___fs2ulong__1_0
	lda	hl,1(sp)
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;	genMinus
;	AOP_STK for ___fs2ulong__1_0
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	sub	a,#0x96
	ld	e,a
	ld	a,d
	sbc	a,#0x00
	push	af
	ld	(hl-),a
	ld	(hl),e
	inc	hl
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	pop	af
	ld	a,e
	sbc	a,#0x00
	ld	e,a
	ld	a,d
	sbc	a,#0x00
	ld	(hl-),a
	ld	(hl),e
;	genCast
;	AOP_STK for ___fs2ulong__1_0
;	AOP_STK for ___fs2ulong_exp_1_1
	dec	hl
	dec	hl
	ld	a,(hl)
	lda	hl,8(sp)
	ld	(hl),a
	lda	hl,1(sp)
	ld	a,(hl)
	lda	hl,9(sp)
	ld	(hl),a
;_fs2ulong.c:105: l = MANT (fl1.l);
;	genAddrOf
	lda	hl,10(sp)
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for ___fs2ulong__1_0
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
;	genAnd
;	AOP_STK for ___fs2ulong__1_0
	ld	(hl-),a
	ld	a,(hl)
	and	a,#0x7F
	ld	(hl+),a
	ld	(hl),#0x00
;	genOr
;	AOP_STK for ___fs2ulong__1_0
;	AOP_STK for ___fs2ulong_l_1_1
	lda	hl,0(sp)
	ld	a,(hl)
	lda	hl,4(sp)
	ld	(hl),a
	lda	hl,1(sp)
	ld	a,(hl)
	lda	hl,5(sp)
	ld	(hl),a
	lda	hl,2(sp)
	ld	a,(hl)
	or	a,#0x80
	lda	hl,6(sp)
	ld	(hl),a
	lda	hl,3(sp)
	ld	a,(hl)
	lda	hl,7(sp)
	ld	(hl),a
;_fs2ulong.c:107: l >>= -exp;
;	genUminus
;	AOP_STK for ___fs2ulong_exp_1_1
	xor	a,a
	inc	hl
	ld	a,#0x00
	sbc	a,(hl)
	ld	c,a
	inc	hl
	ld	a,#0x00
	sbc	a,(hl)
	ld	b,a
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	push	bc
;	genIpush
;	AOP_STK for ___fs2ulong_l_1_1
	lda	hl,8(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,8(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__rrslong_rrx_s
;	AOP_STK for ___fs2ulong__1_0
	push	hl
	lda	hl,8(sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	lda	sp,6(sp)
;	genAssign
;	AOP_STK for ___fs2ulong__1_0
;	AOP_STK for ___fs2ulong_l_1_1
	lda	hl,0(sp)
	ld	d,h
	ld	e,l
	lda	hl,4(sp)
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
;_fs2ulong.c:109: return l;
;	genAssign
;	AOP_STK for ___fs2ulong_l_1_1
;	AOP_STK for ___fs2ulong__1_0
	lda	hl,4(sp)
	ld	d,h
	ld	e,l
	lda	hl,0(sp)
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
;	genRet
;	AOP_STK for ___fs2ulong__1_0
; Dump of IC_LEFT: type AOP_STK size 4
;	 aop_stk -14
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
;	genLabel
00104$:
;	genEndFunction
	lda	sp,14(sp)
	ret
___fs2ulong_end::
	.area _CODE
	.area _CABS
