;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module _fsdiv
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fsdiv
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
;_fsdiv.c:264: float __fsdiv (float a1, float a2)
;	genLabel
;	genFunction
;	---------------------------------
; Function __fsdiv
; ---------------------------------
___fsdiv_start::
___fsdiv:
	lda	sp,-39(sp)
;_fsdiv.c:273: fl1.f = a1;
;	genAddrOf
	lda	hl,35(sp)
	ld	c,l
	ld	b,h
;	genAssign (pointer)
;	AOP_STK for 
;	isBitvar = 0
	ld	e,c
	ld	d,b
	lda	hl,41(sp)
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
;_fsdiv.c:274: fl2.f = a2;
;	genAddrOf
	lda	hl,31(sp)
	ld	c,l
	ld	b,h
;	genAssign (pointer)
;	AOP_STK for 
;	isBitvar = 0
	ld	e,c
	ld	d,b
	lda	hl,45(sp)
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
;_fsdiv.c:277: exp = EXP (fl1.l) ;
;	genAddrOf
	lda	hl,35(sp)
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for ___fsdiv__1_0
	ld	e,c
	ld	d,b
	ld	a,(de)
	lda	hl,8(sp)
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
;	AOP_STK for ___fsdiv__1_0
	dec	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,11(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__rrulong_rrx_s
;	AOP_STK for ___fsdiv__1_0
	push	hl
	lda	hl,15(sp)
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
;	AOP_STK for ___fsdiv__1_0
	lda	hl,9(sp)
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;	genCast
;	AOP_STK for ___fsdiv__1_0
;	AOP_STK for ___fsdiv_exp_1_1
	lda	hl,8(sp)
	ld	a,(hl)
	lda	hl,13(sp)
	ld	(hl),a
	lda	hl,9(sp)
	ld	a,(hl)
	lda	hl,14(sp)
	ld	(hl),a
;_fsdiv.c:278: exp -= EXP (fl2.l);
;	genAddrOf
	lda	hl,31(sp)
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for ___fsdiv__1_0
	ld	e,c
	ld	d,b
	ld	a,(de)
	lda	hl,8(sp)
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
;	AOP_STK for ___fsdiv__1_0
	dec	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,11(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__rrulong_rrx_s
;	AOP_STK for ___fsdiv__1_0
	push	hl
	lda	hl,15(sp)
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
;	AOP_STK for ___fsdiv__1_0
	lda	hl,9(sp)
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;	genCast
;	AOP_STK for ___fsdiv_exp_1_1
;	AOP_STK for ___fsdiv__1_0
	inc	hl
	inc	hl
	ld	a,(hl)
	lda	hl,4(sp)
	ld	(hl),a
	lda	hl,14(sp)
	ld	a,(hl)
	lda	hl,5(sp)
	ld	(hl),a
	lda	hl,14(sp)
	ld	a,(hl)
	rla	
	sbc	a,a
	lda	hl,6(sp)
	ld	(hl+),a
	ld	(hl),a
;	genMinus
;	AOP_STK for ___fsdiv__1_0
;	AOP_STK for ___fsdiv__1_0
	lda	hl,4(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	lda	hl,8(sp)
	sub	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a,(hl)
	push	af
	lda	hl,7(sp)
	ld	(hl-),a
	ld	(hl),e
	inc	hl
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	lda	hl,12(sp)
	pop	af
	ld	a,e
	sbc	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a,(hl)
	lda	hl,7(sp)
	ld	(hl-),a
	ld	(hl),e
;	genCast
;	AOP_STK for ___fsdiv__1_0
;	AOP_STK for ___fsdiv_exp_1_1
	dec	hl
	dec	hl
	ld	a,(hl)
	lda	hl,13(sp)
	ld	(hl),a
	lda	hl,5(sp)
	ld	a,(hl)
	lda	hl,14(sp)
;_fsdiv.c:279: exp += EXCESS;
;	genPlus
;	AOP_STK for ___fsdiv_exp_1_1
;	genPlusIncr
	ld	(hl-),a
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x007E
	add	hl,de
	ld	a,l
	ld	d,h
	lda	hl,13(sp)
	ld	(hl+),a
	ld	(hl),d
;_fsdiv.c:282: sign = SIGN (fl1.l) ^ SIGN (fl2.l);
;	genAddrOf
	lda	hl,35(sp)
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for ___fsdiv__1_0
	ld	e,c
	ld	d,b
	ld	a,(de)
	lda	hl,4(sp)
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
;	AOP_STK for ___fsdiv__1_0
;	AOP_STK for ___fsdiv__1_0
	ld	(hl),a
	rlc	a
	and	a,#0x01
	lda	hl,4(sp)
	ld	(hl),a
;	genAddrOf
	lda	hl,31(sp)
	ld	b,l
	ld	c,h
;	genPointerGet
;	AOP_STK for ___fsdiv__1_0
	ld	e,b
	ld	d,c
	ld	a,(de)
	lda	hl,8(sp)
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
;	AOP_STK for ___fsdiv__1_0
	ld	(hl),a
	rlc	a
	and	a,#0x01
;	genXor
;	AOP_STK for ___fsdiv__1_0
	ld	c,a
	lda	hl,4(sp)
	xor	a,(hl)
	ld	c,a
;	genAssign
;	AOP_STK for ___fsdiv_sign_1_1
	lda	hl,12(sp)
	ld	(hl),c
;_fsdiv.c:285: if (!fl2.l)
;	genAddrOf
	lda	hl,31(sp)
	ld	b,l
	ld	c,h
;	genPointerGet
;	AOP_STK for ___fsdiv__1_0
	ld	e,b
	ld	d,c
	ld	a,(de)
	lda	hl,4(sp)
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
;	AOP_STK for ___fsdiv__1_0
	lda	hl,4(sp)
	ld	a,(hl+)
	or	a,(hl)
	inc	hl
	or	a,(hl)
	inc	hl
	or	a,(hl)
	jp	NZ,00102$
;_fsdiv.c:287: fl2.l = 0x7FC00000;
;	genAddrOf
	lda	hl,31(sp)
	ld	c,l
	ld	b,h
;	genAssign (pointer)
;	isBitvar = 0
	ld	e,c
	ld	d,b
	ld	a,#0x00
	ld	(de),a
	inc	de
	ld	a,#0x00
	ld	(de),a
	inc	de
	ld	a,#0xC0
	ld	(de),a
	inc	de
	ld	a,#0x7F
	ld	(de),a
;_fsdiv.c:288: return (fl2.f);
;	genAddrOf
	lda	hl,31(sp)
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for ___fsdiv__1_0
	ld	e,c
	ld	d,b
	ld	a,(de)
	lda	hl,4(sp)
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
;	AOP_STK for ___fsdiv__1_0
; Dump of IC_LEFT: type AOP_STK size 4
;	 aop_stk -35
	lda	hl,4(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	jp	00118$
;	genLabel
00102$:
;_fsdiv.c:292: if (!fl1.l)
;	genAddrOf
	lda	hl,35(sp)
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for ___fsdiv__1_0
	ld	e,c
	ld	d,b
	ld	a,(de)
	lda	hl,4(sp)
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
;	AOP_STK for ___fsdiv__1_0
	lda	hl,4(sp)
	ld	a,(hl+)
	or	a,(hl)
	inc	hl
	or	a,(hl)
	inc	hl
	or	a,(hl)
	jp	NZ,00104$
;_fsdiv.c:293: return (0);
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 4
	ld	de,#0x0000
	ld	hl,#0x0000
	jp	00118$
;	genLabel
00104$:
;_fsdiv.c:296: mant1 = MANT (fl1.l);
;	genAddrOf
	lda	hl,35(sp)
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for ___fsdiv__1_0
	ld	e,c
	ld	d,b
	ld	a,(de)
	lda	hl,4(sp)
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
;	AOP_STK for ___fsdiv__1_0
	ld	(hl-),a
	ld	a,(hl)
	and	a,#0x7F
	ld	(hl+),a
	ld	(hl),#0x00
;	genOr
;	AOP_STK for ___fsdiv__1_0
;	AOP_STK for ___fsdiv_mant1_1_1
	lda	hl,4(sp)
	ld	a,(hl)
	lda	hl,19(sp)
	ld	(hl),a
	lda	hl,5(sp)
	ld	a,(hl)
	lda	hl,20(sp)
	ld	(hl),a
	lda	hl,6(sp)
	ld	a,(hl)
	or	a,#0x80
	lda	hl,21(sp)
	ld	(hl),a
	lda	hl,7(sp)
	ld	a,(hl)
	lda	hl,22(sp)
	ld	(hl),a
;_fsdiv.c:297: mant2 = MANT (fl2.l);
;	genAddrOf
	lda	hl,31(sp)
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for ___fsdiv__1_0
	ld	e,c
	ld	d,b
	ld	a,(de)
	lda	hl,4(sp)
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
;	AOP_STK for ___fsdiv__1_0
	ld	(hl-),a
	ld	a,(hl)
	and	a,#0x7F
	ld	(hl+),a
	ld	(hl),#0x00
;	genOr
;	AOP_STK for ___fsdiv__1_0
;	AOP_STK for ___fsdiv_mant2_1_1
	lda	hl,4(sp)
	ld	a,(hl)
	lda	hl,15(sp)
	ld	(hl),a
	lda	hl,5(sp)
	ld	a,(hl)
	lda	hl,16(sp)
	ld	(hl),a
	lda	hl,6(sp)
	ld	a,(hl)
	or	a,#0x80
	lda	hl,17(sp)
	ld	(hl),a
	lda	hl,7(sp)
	ld	a,(hl)
	lda	hl,18(sp)
;_fsdiv.c:300: if (mant1 < mant2)
;	genCmpLt
;	AOP_STK for ___fsdiv_mant1_1_1
;	AOP_STK for ___fsdiv_mant2_1_1
	ld	(hl+),a
	ld	d,h
	ld	e,l
	lda	hl,15(sp)
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
	rlca
	jp	NC,00106$
;_fsdiv.c:302: mant1 <<= 1;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,#0x01
	push	af
	inc	sp
;	genIpush
;	AOP_STK for ___fsdiv_mant1_1_1
	lda	hl,22(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,22(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__rlslong_rrx_s
;	AOP_STK for ___fsdiv__1_0
	push	hl
	lda	hl,11(sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	lda	sp,5(sp)
;	genAssign
;	AOP_STK for ___fsdiv__1_0
;	AOP_STK for ___fsdiv_mant1_1_1
	lda	hl,4(sp)
	ld	d,h
	ld	e,l
	lda	hl,19(sp)
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
;_fsdiv.c:303: exp--;
;	genMinus
;	AOP_STK for ___fsdiv_exp_1_1
	lda	hl,13(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	dec	de
	dec	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
;	genLabel
00106$:
;_fsdiv.c:307: mask = 0x1000000;
;	genAssign
;	AOP_STK for ___fsdiv_mask_1_1
	lda	hl,23(sp)
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x01
;_fsdiv.c:308: result = 0;
;	genAssign
;	AOP_STK for ___fsdiv_result_1_1
	xor	a,a
	inc	hl
	ld	(hl+),a
	ld	(hl+),a
	ld	(hl+),a
	ld	(hl),a
;_fsdiv.c:309: while (mask)
;	genLabel
00109$:
;	genIfx
;	AOP_STK for ___fsdiv_mask_1_1
	lda	hl,23(sp)
	ld	a,(hl+)
	or	a,(hl)
	inc	hl
	or	a,(hl)
	inc	hl
	or	a,(hl)
	jp	Z,00111$
;_fsdiv.c:311: if (mant1 >= mant2)
;	genCmpLt
;	AOP_STK for ___fsdiv_mant1_1_1
;	AOP_STK for ___fsdiv_mant2_1_1
	lda	hl,19(sp)
	ld	d,h
	ld	e,l
	lda	hl,15(sp)
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
	rlca
	jp	C,00108$
;_fsdiv.c:313: result |= mask;
;	genAssign
;	AOP_STK for ___fsdiv_result_1_1
;	AOP_STK for ___fsdiv__1_0
	lda	hl,27(sp)
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
;	genOr
;	AOP_STK for ___fsdiv__1_0
;	AOP_STK for ___fsdiv_mask_1_1
	lda	hl,4(sp)
	ld	a,(hl)
	lda	hl,23(sp)
	or	a,(hl)
	lda	hl,4(sp)
	ld	(hl+),a
	ld	a,(hl)
	lda	hl,24(sp)
	or	a,(hl)
	lda	hl,5(sp)
	ld	(hl+),a
	ld	a,(hl)
	lda	hl,25(sp)
	or	a,(hl)
	lda	hl,6(sp)
	ld	(hl+),a
	ld	a,(hl)
	lda	hl,26(sp)
	or	a,(hl)
	lda	hl,7(sp)
	ld	(hl),a
;	genAssign
;	AOP_STK for ___fsdiv__1_0
;	AOP_STK for ___fsdiv_result_1_1
	lda	hl,4(sp)
	ld	d,h
	ld	e,l
	lda	hl,27(sp)
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
;_fsdiv.c:314: mant1 -= mant2;
;	genMinus
;	AOP_STK for ___fsdiv_mant1_1_1
;	AOP_STK for ___fsdiv_mant2_1_1
	lda	hl,19(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	lda	hl,15(sp)
	sub	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a,(hl)
	push	af
	lda	hl,22(sp)
	ld	(hl-),a
	ld	(hl),e
	inc	hl
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	lda	hl,19(sp)
	pop	af
	ld	a,e
	sbc	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a,(hl)
	lda	hl,22(sp)
	ld	(hl-),a
	ld	(hl),e
;	genLabel
00108$:
;_fsdiv.c:316: mant1 <<= 1;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,#0x01
	push	af
	inc	sp
;	genIpush
;	AOP_STK for ___fsdiv_mant1_1_1
	lda	hl,22(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,22(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__rlslong_rrx_s
;	AOP_STK for ___fsdiv__1_0
	push	hl
	lda	hl,11(sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	lda	sp,5(sp)
;	genAssign
;	AOP_STK for ___fsdiv__1_0
;	AOP_STK for ___fsdiv_mant1_1_1
	lda	hl,4(sp)
	ld	d,h
	ld	e,l
	lda	hl,19(sp)
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
;_fsdiv.c:317: mask >>= 1;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,#0x01
	push	af
	inc	sp
;	genIpush
;	AOP_STK for ___fsdiv_mask_1_1
	lda	hl,26(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,26(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__rrulong_rrx_s
;	AOP_STK for ___fsdiv__1_0
	push	hl
	lda	hl,11(sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	lda	sp,5(sp)
;	genAssign
;	AOP_STK for ___fsdiv__1_0
;	AOP_STK for ___fsdiv_mask_1_1
	lda	hl,4(sp)
	ld	d,h
	ld	e,l
	lda	hl,23(sp)
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
;	genGoto
	jp	00109$
;	genLabel
00111$:
;_fsdiv.c:321: result += 1;
;	genPlus
;	AOP_STK for ___fsdiv_result_1_1
;	genPlusIncr
	lda	hl,27(sp)
	inc	(hl)
	jr	NZ,00134$
	inc	hl
	inc	(hl)
	jr	NZ,00134$
	inc	hl
	inc	(hl)
	jr	NZ,00134$
	inc	hl
	inc	(hl)
00134$:
;_fsdiv.c:324: exp++;
;	genPlus
;	AOP_STK for ___fsdiv_exp_1_1
;	genPlusIncr
	lda	hl,13(sp)
	inc	(hl)
	jr	NZ,00135$
	inc	hl
	inc	(hl)
00135$:
;_fsdiv.c:325: result >>= 1;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,#0x01
	push	af
	inc	sp
;	genIpush
;	AOP_STK for ___fsdiv_result_1_1
	lda	hl,30(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,30(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__rrslong_rrx_s
;	AOP_STK for ___fsdiv__1_0
	push	hl
	lda	hl,11(sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	lda	sp,5(sp)
;	genAssign
;	AOP_STK for ___fsdiv__1_0
;	AOP_STK for ___fsdiv_result_1_1
	lda	hl,4(sp)
	ld	d,h
	ld	e,l
	lda	hl,27(sp)
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
;_fsdiv.c:327: result &= ~HIDDEN;
;	genAssign
;	AOP_STK for ___fsdiv_result_1_1
;	AOP_STK for ___fsdiv__1_0
	lda	hl,27(sp)
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
;	genAnd
;	AOP_STK for ___fsdiv__1_0
;	AOP_STK for ___fsdiv_result_1_1
	lda	hl,4(sp)
	ld	a,(hl)
	lda	hl,27(sp)
	ld	(hl),a
	lda	hl,5(sp)
	ld	a,(hl)
	lda	hl,28(sp)
	ld	(hl),a
	lda	hl,6(sp)
	ld	a,(hl)
	and	a,#0x7F
	lda	hl,29(sp)
	ld	(hl),a
	lda	hl,7(sp)
	ld	a,(hl)
	lda	hl,30(sp)
	ld	(hl),a
;_fsdiv.c:330: if (exp >= 0x100)
;	genCmpLt
;	AOP_STK for ___fsdiv_exp_1_1
	lda	hl,13(sp)
	ld	a,(hl)
	sub	a,#0x00
	inc	hl
	ld	a,(hl)
	sbc	a,#0x01
	rlca
	jp	C,00116$
;_fsdiv.c:331: fl1.l = (sign ? SIGNBIT : 0) | 0x7F800000;
;	genAddrOf
	lda	hl,35(sp)
	ld	c,l
	ld	b,h
;	genIfx
;	AOP_STK for ___fsdiv_sign_1_1
	xor	a,a
	lda	hl,12(sp)
	or	a,(hl)
	jp	Z,00120$
;	genAssign
;	AOP_STK for ___fsdiv__1_0
	lda	hl,4(sp)
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x80
;	genGoto
	jp	00121$
;	genLabel
00120$:
;	genAssign
;	AOP_STK for ___fsdiv__1_0
	xor	a,a
	lda	hl,4(sp)
	ld	(hl+),a
	ld	(hl+),a
	ld	(hl+),a
	ld	(hl),a
;	genLabel
00121$:
;	genOr
;	AOP_STK for ___fsdiv__1_0
	lda	hl,6(sp)
	ld	a,(hl)
	or	a,#0x80
	ld	(hl+),a
	ld	a,(hl)
	or	a,#0x7F
	ld	(hl),a
;	genAssign (pointer)
;	AOP_STK for ___fsdiv__1_0
;	isBitvar = 0
	ld	e,c
	ld	d,b
	lda	hl,4(sp)
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
;	genGoto
	jp	00117$
;	genLabel
00116$:
;_fsdiv.c:332: else if (exp < 0)
;	genCmpLt
;	AOP_STK for ___fsdiv_exp_1_1
	lda	hl,14(sp)
	ld	a,(hl)
	bit	7,a
	jp	Z,00113$
;_fsdiv.c:333: fl1.l = 0;
;	genAddrOf
	lda	hl,35(sp)
	ld	c,l
	ld	b,h
;	genAssign (pointer)
;	isBitvar = 0
	ld	e,c
	ld	d,b
	ld	a,#0x00
	ld	(de),a
	inc	de
	ld	a,#0x00
	ld	(de),a
	inc	de
	ld	a,#0x00
	ld	(de),a
	inc	de
	ld	a,#0x00
	ld	(de),a
;	genGoto
	jp	00117$
;	genLabel
00113$:
;_fsdiv.c:335: fl1.l = PACK (sign ? SIGNBIT : 0 , exp, result);
;	genAddrOf
	lda	hl,35(sp)
	ld	c,l
	ld	b,h
;	genIfx
;	AOP_STK for ___fsdiv_sign_1_1
	xor	a,a
	lda	hl,12(sp)
	or	a,(hl)
	jp	Z,00122$
;	genAssign
;	AOP_STK for ___fsdiv__1_0
	lda	hl,4(sp)
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x80
;	genGoto
	jp	00123$
;	genLabel
00122$:
;	genAssign
;	AOP_STK for ___fsdiv__1_0
	xor	a,a
	lda	hl,4(sp)
	ld	(hl+),a
	ld	(hl+),a
	ld	(hl+),a
	ld	(hl),a
;	genLabel
00123$:
;	genCast
;	AOP_STK for ___fsdiv_exp_1_1
;	AOP_STK for ___fsdiv__1_0
	lda	hl,13(sp)
	ld	a,(hl)
	lda	hl,0(sp)
	ld	(hl),a
	lda	hl,14(sp)
	ld	a,(hl)
	lda	hl,1(sp)
	ld	(hl),a
	lda	hl,14(sp)
	ld	a,(hl)
	rla	
	sbc	a,a
	lda	hl,2(sp)
	ld	(hl+),a
	ld	(hl),a
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
	ld	a,#0x17
	push	af
	inc	sp
;	genIpush
;	AOP_STK for ___fsdiv__1_0
	dec	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,5(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__rlulong_rrx_s
;	AOP_STK for ___fsdiv__1_0
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
;	genOr
;	AOP_STK for ___fsdiv__1_0
;	AOP_STK for ___fsdiv__1_0
	lda	hl,0(sp)
	ld	a,(hl)
	lda	hl,4(sp)
	or	a,(hl)
	lda	hl,0(sp)
	ld	(hl+),a
	ld	a,(hl)
	lda	hl,5(sp)
	or	a,(hl)
	lda	hl,1(sp)
	ld	(hl+),a
	ld	a,(hl)
	lda	hl,6(sp)
	or	a,(hl)
	lda	hl,2(sp)
	ld	(hl+),a
	ld	a,(hl)
	lda	hl,7(sp)
	or	a,(hl)
	lda	hl,3(sp)
	ld	(hl),a
;	genAssign
;	AOP_STK for ___fsdiv_result_1_1
;	AOP_STK for ___fsdiv__1_0
	lda	hl,27(sp)
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
;	genOr
;	AOP_STK for ___fsdiv__1_0
;	AOP_STK for ___fsdiv__1_0
	lda	hl,0(sp)
	ld	a,(hl)
	lda	hl,4(sp)
	or	a,(hl)
	lda	hl,0(sp)
	ld	(hl+),a
	ld	a,(hl)
	lda	hl,5(sp)
	or	a,(hl)
	lda	hl,1(sp)
	ld	(hl+),a
	ld	a,(hl)
	lda	hl,6(sp)
	or	a,(hl)
	lda	hl,2(sp)
	ld	(hl+),a
	ld	a,(hl)
	lda	hl,7(sp)
	or	a,(hl)
	lda	hl,3(sp)
	ld	(hl),a
;	genAssign (pointer)
;	AOP_STK for ___fsdiv__1_0
;	isBitvar = 0
	ld	e,c
	ld	d,b
	lda	hl,0(sp)
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
;	genLabel
00117$:
;_fsdiv.c:336: return (fl1.f);
;	genAddrOf
	lda	hl,35(sp)
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for ___fsdiv__1_0
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
;	genRet
;	AOP_STK for ___fsdiv__1_0
; Dump of IC_LEFT: type AOP_STK size 4
;	 aop_stk -39
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
;	genLabel
00118$:
;	genEndFunction
	lda	sp,39(sp)
	ret
___fsdiv_end::
	.area _CODE
	.area _CABS
