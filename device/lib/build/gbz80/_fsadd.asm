;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module _fsadd
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fsadd
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
;_fsadd.c:160: float __fsadd (float a1, float a2)
;	genLabel
;	genFunction
;	---------------------------------
; Function __fsadd
; ---------------------------------
___fsadd_start::
___fsadd:
	lda	sp,-36(sp)
;_fsadd.c:165: volatile unsigned long sign = 0;
;	genAssign
;	AOP_STK for ___fsadd_sign_1_1
	xor	a,a
	lda	hl,12(sp)
	ld	(hl+),a
	ld	(hl+),a
	ld	(hl+),a
	ld	(hl),a
;_fsadd.c:167: fl1.f = a1;
;	genAddrOf
	lda	hl,24(sp)
	ld	c,l
	ld	b,h
;	genAssign (pointer)
;	AOP_STK for 
;	isBitvar = 0
	ld	e,c
	ld	d,b
	lda	hl,38(sp)
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
;_fsadd.c:168: fl2.f = a2;
;	genAddrOf
	lda	hl,20(sp)
	ld	c,l
	ld	b,h
;	genAssign (pointer)
;	AOP_STK for 
;	isBitvar = 0
	ld	e,c
	ld	d,b
	lda	hl,42(sp)
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
;_fsadd.c:171: if (!fl1.l)
;	genAddrOf
	lda	hl,24(sp)
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for ___fsadd__1_0
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
;	genIfx
;	AOP_STK for ___fsadd__1_0
	lda	hl,8(sp)
	ld	a,(hl+)
	or	a,(hl)
	inc	hl
	or	a,(hl)
	inc	hl
	or	a,(hl)
	jp	NZ,00102$
;_fsadd.c:172: return (fl2.f);
;	genAddrOf
	lda	hl,20(sp)
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for ___fsadd__1_0
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
;	genRet
;	AOP_STK for ___fsadd__1_0
; Dump of IC_LEFT: type AOP_STK size 4
;	 aop_stk -28
	lda	hl,8(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	jp	00129$
;	genLabel
00102$:
;_fsadd.c:173: if (!fl2.l)
;	genAddrOf
	lda	hl,20(sp)
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for ___fsadd__1_0
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
;	genIfx
;	AOP_STK for ___fsadd__1_0
	lda	hl,8(sp)
	ld	a,(hl+)
	or	a,(hl)
	inc	hl
	or	a,(hl)
	inc	hl
	or	a,(hl)
	jp	NZ,00104$
;_fsadd.c:174: return (fl1.f);
;	genAddrOf
	lda	hl,24(sp)
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for ___fsadd__1_0
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
;	genRet
;	AOP_STK for ___fsadd__1_0
; Dump of IC_LEFT: type AOP_STK size 4
;	 aop_stk -28
	lda	hl,8(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	jp	00129$
;	genLabel
00104$:
;_fsadd.c:176: exp1 = EXP (fl1.l);
;	genAddrOf
	lda	hl,24(sp)
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for ___fsadd__1_0
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
;	AOP_STK for ___fsadd__1_0
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
;	AOP_STK for ___fsadd__1_0
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
;	AOP_STK for ___fsadd__1_0
	lda	hl,9(sp)
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;	genCast
;	AOP_STK for ___fsadd__1_0
;	AOP_STK for ___fsadd_exp1_1_1
	lda	hl,8(sp)
	ld	a,(hl)
	lda	hl,18(sp)
	ld	(hl),a
	lda	hl,9(sp)
	ld	a,(hl)
	lda	hl,19(sp)
	ld	(hl),a
;_fsadd.c:177: exp2 = EXP (fl2.l);
;	genAddrOf
	lda	hl,20(sp)
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for ___fsadd__1_0
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
;	AOP_STK for ___fsadd__1_0
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
;	AOP_STK for ___fsadd__1_0
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
;	AOP_STK for ___fsadd__1_0
	lda	hl,9(sp)
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;	genCast
;	AOP_STK for ___fsadd__1_0
;	AOP_STK for ___fsadd_exp2_1_1
	lda	hl,8(sp)
	ld	a,(hl)
	lda	hl,16(sp)
	ld	(hl),a
	lda	hl,9(sp)
	ld	a,(hl)
	lda	hl,17(sp)
;_fsadd.c:179: if (exp1 > exp2 + 25)
;	genPlus
;	AOP_STK for ___fsadd_exp2_1_1
;	genPlusIncr
	ld	(hl-),a
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0019
	add	hl,de
	ld	c,l
	ld	b,h
;	genCmpGt
;	AOP_STK for ___fsadd_exp1_1_1
	ld	a,c
	lda	hl,18(sp)
	sub	a,(hl)
	ld	a,b
	inc	hl
	sbc	a,(hl)
	rlca
	jp	NC,00106$
;_fsadd.c:180: return (fl1.f);
;	genAddrOf
	lda	hl,24(sp)
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for ___fsadd__1_0
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
;	genRet
;	AOP_STK for ___fsadd__1_0
; Dump of IC_LEFT: type AOP_STK size 4
;	 aop_stk -28
	lda	hl,8(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	jp	00129$
;	genLabel
00106$:
;_fsadd.c:181: if (exp2 > exp1 + 25)
;	genPlus
;	AOP_STK for ___fsadd_exp1_1_1
;	genPlusIncr
	lda	hl,18(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0019
	add	hl,de
	ld	c,l
	ld	b,h
;	genCmpGt
;	AOP_STK for ___fsadd_exp2_1_1
	ld	a,c
	lda	hl,16(sp)
	sub	a,(hl)
	ld	a,b
	inc	hl
	sbc	a,(hl)
	rlca
	jp	NC,00108$
;_fsadd.c:182: return (fl2.f);
;	genAddrOf
	lda	hl,20(sp)
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for ___fsadd__1_0
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
;	genRet
;	AOP_STK for ___fsadd__1_0
; Dump of IC_LEFT: type AOP_STK size 4
;	 aop_stk -28
	lda	hl,8(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	jp	00129$
;	genLabel
00108$:
;_fsadd.c:184: mant1 = MANT (fl1.l);
;	genAddrOf
	lda	hl,24(sp)
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for ___fsadd__1_0
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
;	genAnd
;	AOP_STK for ___fsadd__1_0
	ld	(hl-),a
	ld	a,(hl)
	and	a,#0x7F
	ld	(hl+),a
	ld	(hl),#0x00
;	genOr
;	AOP_STK for ___fsadd__1_0
;	AOP_STK for ___fsadd_mant1_1_1
	lda	hl,8(sp)
	ld	a,(hl)
	lda	hl,32(sp)
	ld	(hl),a
	lda	hl,9(sp)
	ld	a,(hl)
	lda	hl,33(sp)
	ld	(hl),a
	lda	hl,10(sp)
	ld	a,(hl)
	or	a,#0x80
	lda	hl,34(sp)
	ld	(hl),a
	lda	hl,11(sp)
	ld	a,(hl)
	lda	hl,35(sp)
	ld	(hl),a
;_fsadd.c:185: mant2 = MANT (fl2.l);
;	genAddrOf
	lda	hl,20(sp)
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for ___fsadd__1_0
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
;	genAnd
;	AOP_STK for ___fsadd__1_0
	ld	(hl-),a
	ld	a,(hl)
	and	a,#0x7F
	ld	(hl+),a
	ld	(hl),#0x00
;	genOr
;	AOP_STK for ___fsadd__1_0
;	AOP_STK for ___fsadd_mant2_1_1
	lda	hl,8(sp)
	ld	a,(hl)
	lda	hl,28(sp)
	ld	(hl),a
	lda	hl,9(sp)
	ld	a,(hl)
	lda	hl,29(sp)
	ld	(hl),a
	lda	hl,10(sp)
	ld	a,(hl)
	or	a,#0x80
	lda	hl,30(sp)
	ld	(hl),a
	lda	hl,11(sp)
	ld	a,(hl)
	lda	hl,31(sp)
	ld	(hl),a
;_fsadd.c:187: if (SIGN (fl1.l))
;	genAddrOf
	lda	hl,24(sp)
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for ___fsadd__1_0
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
;	genGetHBIT
;	AOP_STK for ___fsadd__1_0
	ld	(hl),a
	rlc	a
;	genIfx
	and	a,#0x01
	jp	Z,00110$
;_fsadd.c:188: mant1 = -mant1;
;	genUminus
;	AOP_STK for ___fsadd_mant1_1_1
	ld	de,#0x0000
	ld	a,e
	lda	hl,32(sp)
	sub	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a,(hl)
	push	af
	ld	(hl-),a
	ld	(hl),e
	ld	de,#0x0000
	inc	hl
	inc	hl
	pop	af
	ld	a,e
	sbc	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a,(hl)
	ld	(hl-),a
	ld	(hl),e
;	genLabel
00110$:
;_fsadd.c:189: if (SIGN (fl2.l))
;	genAddrOf
	lda	hl,20(sp)
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for ___fsadd__1_0
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
;	genGetHBIT
;	AOP_STK for ___fsadd__1_0
	ld	(hl),a
	rlc	a
;	genIfx
	and	a,#0x01
	jp	Z,00112$
;_fsadd.c:190: mant2 = -mant2;
;	genUminus
;	AOP_STK for ___fsadd_mant2_1_1
	ld	de,#0x0000
	ld	a,e
	lda	hl,28(sp)
	sub	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a,(hl)
	push	af
	ld	(hl-),a
	ld	(hl),e
	ld	de,#0x0000
	inc	hl
	inc	hl
	pop	af
	ld	a,e
	sbc	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a,(hl)
	ld	(hl-),a
	ld	(hl),e
;	genLabel
00112$:
;_fsadd.c:192: if (exp1 > exp2)
;	genCmpGt
;	AOP_STK for ___fsadd_exp1_1_1
;	AOP_STK for ___fsadd_exp2_1_1
	lda	hl,16(sp)
	ld	d,h
	ld	e,l
	inc	hl
	inc	hl
	ld	a,(de)
	sub	a,(hl)
	inc	hl
	inc	de
	ld	a,(de)
	sbc	a,(hl)
	rlca
	jp	NC,00114$
;_fsadd.c:194: mant2 >>= exp1 - exp2;
;	genMinus
;	AOP_STK for ___fsadd_exp1_1_1
;	AOP_STK for ___fsadd_exp2_1_1
	lda	hl,18(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	lda	hl,16(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	a,e
	sub	a,l
	ld	e,a
	ld	a,d
	sbc	a,h
	ld	b,a
	ld	c,e
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	push	bc
;	genIpush
;	AOP_STK for ___fsadd_mant2_1_1
	lda	hl,32(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,32(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__rrslong_rrx_s
;	AOP_STK for ___fsadd__1_0
	push	hl
	lda	hl,16(sp)
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
;	AOP_STK for ___fsadd__1_0
;	AOP_STK for ___fsadd_mant2_1_1
	lda	hl,8(sp)
	ld	d,h
	ld	e,l
	lda	hl,28(sp)
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
	jp	00115$
;	genLabel
00114$:
;_fsadd.c:198: mant1 >>= exp2 - exp1;
;	genMinus
;	AOP_STK for ___fsadd_exp2_1_1
;	AOP_STK for ___fsadd_exp1_1_1
	lda	hl,16(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	a,e
	sub	a,l
	ld	e,a
	ld	a,d
	sbc	a,h
	ld	b,a
	ld	c,e
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	push	bc
;	genIpush
;	AOP_STK for ___fsadd_mant1_1_1
	lda	hl,36(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,36(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__rrslong_rrx_s
;	AOP_STK for ___fsadd__1_0
	push	hl
	lda	hl,16(sp)
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
;	AOP_STK for ___fsadd__1_0
;	AOP_STK for ___fsadd_mant1_1_1
	lda	hl,8(sp)
	ld	d,h
	ld	e,l
	lda	hl,32(sp)
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
;_fsadd.c:199: exp1 = exp2;
;	genAssign
;	AOP_STK for ___fsadd_exp2_1_1
;	AOP_STK for ___fsadd_exp1_1_1
	lda	hl,16(sp)
	ld	a,(hl+)
	ld	e,(hl)
	inc	hl
	ld	(hl+),a
	ld	(hl),e
;	genLabel
00115$:
;_fsadd.c:201: mant1 += mant2;
;	genPlus
;	AOP_STK for ___fsadd_mant1_1_1
;	AOP_STK for ___fsadd_mant2_1_1
	lda	hl,32(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	lda	hl,28(sp)
	add	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a,(hl)
	push	af
	lda	hl,35(sp)
	ld	(hl-),a
	ld	(hl),e
	inc	hl
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	lda	hl,32(sp)
	pop	af
	ld	a,e
	adc	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a,(hl)
	lda	hl,35(sp)
	ld	(hl-),a
	ld	(hl),e
;_fsadd.c:203: if (mant1 < 0)
;	genCmpLt
;	AOP_STK for ___fsadd_mant1_1_1
	inc	hl
	ld	a,(hl)
	bit	7,a
	jp	Z,00119$
;_fsadd.c:205: mant1 = -mant1;
;	genUminus
;	AOP_STK for ___fsadd_mant1_1_1
	ld	de,#0x0000
	ld	a,e
	lda	hl,32(sp)
	sub	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a,(hl)
	push	af
	ld	(hl-),a
	ld	(hl),e
	ld	de,#0x0000
	inc	hl
	inc	hl
	pop	af
	ld	a,e
	sbc	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a,(hl)
	ld	(hl-),a
	ld	(hl),e
;_fsadd.c:206: sign = SIGNBIT;
;	genAssign
;	AOP_STK for ___fsadd_sign_1_1
	lda	hl,12(sp)
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
00119$:
;_fsadd.c:208: else if (!mant1)
;	genIfx
;	AOP_STK for ___fsadd_mant1_1_1
	lda	hl,32(sp)
	ld	a,(hl+)
	or	a,(hl)
	inc	hl
	or	a,(hl)
	inc	hl
	or	a,(hl)
	jp	NZ,00121$
;_fsadd.c:209: return (0);
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 4
	ld	de,#0x0000
	ld	hl,#0x0000
	jp	00129$
;_fsadd.c:212: while (mant1<HIDDEN) {
;	genLabel
00121$:
;	genAssign
;	AOP_STK for ___fsadd_mant1_1_1
;	AOP_STK for ___fsadd__1_0
	lda	hl,32(sp)
	ld	d,h
	ld	e,l
	lda	hl,8(sp)
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
;	genCmpLt
;	AOP_STK for ___fsadd__1_0
	lda	hl,8(sp)
	ld	a,(hl)
	sub	a,#0x00
	inc	hl
	ld	a,(hl)
	sbc	a,#0x00
	inc	hl
	ld	a,(hl)
	sbc	a,#0x80
	inc	hl
	ld	a,(hl)
	sbc	a,#0x00
	jp	NC,00126$
;_fsadd.c:213: mant1 <<= 1;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,#0x01
	push	af
	inc	sp
;	genIpush
;	AOP_STK for ___fsadd_mant1_1_1
	lda	hl,35(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,35(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__rlslong_rrx_s
;	AOP_STK for ___fsadd__1_0
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
;	genAssign
;	AOP_STK for ___fsadd__1_0
;	AOP_STK for ___fsadd_mant1_1_1
	lda	hl,8(sp)
	ld	d,h
	ld	e,l
	lda	hl,32(sp)
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
;_fsadd.c:214: exp1--;
;	genMinus
;	AOP_STK for ___fsadd_exp1_1_1
	lda	hl,18(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	dec	de
	dec	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
;	genGoto
	jp	00121$
;_fsadd.c:218: while (mant1 & 0xff000000) {
;	genLabel
00126$:
;	genAssign
;	AOP_STK for ___fsadd_mant1_1_1
;	AOP_STK for ___fsadd__1_0
	lda	hl,32(sp)
	ld	d,h
	ld	e,l
	lda	hl,8(sp)
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
;	AOP_STK for ___fsadd__1_0
	lda	hl,11(sp)
	ld	a,(hl)
	or	a,a
	jr	NZ,00145$
	jp	00128$
00145$:
;_fsadd.c:219: if (mant1&1)
;	genAnd
;	AOP_STK for ___fsadd_mant1_1_1
	lda	hl,32(sp)
	ld	a,(hl)
	and	a,#0x01
	jr	NZ,00146$
	jp	00125$
00146$:
;_fsadd.c:220: mant1 += 2;
;	genPlus
;	AOP_STK for ___fsadd_mant1_1_1
;	genPlusIncr
	lda	hl,32(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	add	a,#0x02
	ld	e,a
	ld	a,d
	adc	a,#0x00
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
	adc	a,#0x00
	ld	e,a
	ld	a,d
	adc	a,#0x00
	ld	(hl-),a
	ld	(hl),e
;	genLabel
00125$:
;_fsadd.c:221: mant1 >>= 1 ;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,#0x01
	push	af
	inc	sp
;	genIpush
;	AOP_STK for ___fsadd_mant1_1_1
	lda	hl,35(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,35(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__rrslong_rrx_s
;	AOP_STK for ___fsadd__1_0
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
;	genAssign
;	AOP_STK for ___fsadd__1_0
;	AOP_STK for ___fsadd_mant1_1_1
	lda	hl,8(sp)
	ld	d,h
	ld	e,l
	lda	hl,32(sp)
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
;_fsadd.c:222: exp1++;
;	genPlus
;	AOP_STK for ___fsadd_exp1_1_1
;	genPlusIncr
	lda	hl,18(sp)
	inc	(hl)
	jr	NZ,00147$
	inc	hl
	inc	(hl)
00147$:
;	genGoto
	jp	00126$
;	genLabel
00128$:
;_fsadd.c:226: mant1 &= ~HIDDEN;
;	genAssign
;	AOP_STK for ___fsadd_mant1_1_1
;	AOP_STK for ___fsadd__1_0
	lda	hl,32(sp)
	ld	d,h
	ld	e,l
	lda	hl,8(sp)
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
;	AOP_STK for ___fsadd__1_0
;	AOP_STK for ___fsadd_mant1_1_1
	lda	hl,8(sp)
	ld	a,(hl)
	lda	hl,32(sp)
	ld	(hl),a
	lda	hl,9(sp)
	ld	a,(hl)
	lda	hl,33(sp)
	ld	(hl),a
	lda	hl,10(sp)
	ld	a,(hl)
	and	a,#0x7F
	lda	hl,34(sp)
	ld	(hl),a
	lda	hl,11(sp)
	ld	a,(hl)
	lda	hl,35(sp)
	ld	(hl),a
;_fsadd.c:229: fl1.l = PACK (sign, (unsigned long) exp1, mant1);
;	genAddrOf
	lda	hl,24(sp)
	ld	c,l
	ld	b,h
;	genCast
;	AOP_STK for ___fsadd_exp1_1_1
;	AOP_STK for ___fsadd__1_0
	lda	hl,18(sp)
	ld	a,(hl)
	lda	hl,4(sp)
	ld	(hl),a
	lda	hl,19(sp)
	ld	a,(hl)
	lda	hl,5(sp)
	ld	(hl),a
	lda	hl,19(sp)
	ld	a,(hl)
	rla	
	sbc	a,a
	lda	hl,6(sp)
	ld	(hl+),a
	ld	(hl),a
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
	ld	a,#0x17
	push	af
	inc	sp
;	genIpush
;	AOP_STK for ___fsadd__1_0
	dec	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,9(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__rlulong_rrx_s
;	AOP_STK for ___fsadd__1_0
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
;	genOr
;	AOP_STK for ___fsadd_sign_1_1
;	AOP_STK for ___fsadd__1_0
	lda	hl,4(sp)
	ld	a,(hl)
	lda	hl,12(sp)
	or	a,(hl)
	lda	hl,4(sp)
	ld	(hl+),a
	ld	a,(hl)
	lda	hl,13(sp)
	or	a,(hl)
	lda	hl,5(sp)
	ld	(hl+),a
	ld	a,(hl)
	lda	hl,14(sp)
	or	a,(hl)
	lda	hl,6(sp)
	ld	(hl+),a
	ld	a,(hl)
	lda	hl,15(sp)
	or	a,(hl)
	lda	hl,7(sp)
	ld	(hl),a
;	genAssign
;	AOP_STK for ___fsadd_mant1_1_1
;	AOP_STK for ___fsadd__1_0
	lda	hl,32(sp)
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
;	genOr
;	AOP_STK for ___fsadd__1_0
;	AOP_STK for ___fsadd__1_0
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
;	AOP_STK for ___fsadd__1_0
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
;_fsadd.c:231: return (fl1.f);
;	genAddrOf
	lda	hl,24(sp)
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for ___fsadd__1_0
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
;	AOP_STK for ___fsadd__1_0
; Dump of IC_LEFT: type AOP_STK size 4
;	 aop_stk -36
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
;	genLabel
00129$:
;	genEndFunction
	lda	sp,36(sp)
	ret
___fsadd_end::
	.area _CODE
	.area _CABS
