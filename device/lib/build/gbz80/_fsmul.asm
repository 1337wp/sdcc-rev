;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module _fsmul
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fsmul
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
;_fsmul.c:231: float __fsmul (float a1, float a2) {
;	genLabel
;	genFunction
;	---------------------------------
; Function __fsmul
; ---------------------------------
___fsmul_start::
___fsmul:
	lda	sp,-27(sp)
;_fsmul.c:237: fl1.f = a1;
;	genAddrOf
	lda	hl,23(sp)
	ld	c,l
	ld	b,h
;	genAssign (pointer)
;	AOP_STK for 
;	isBitvar = 0
	ld	e,c
	ld	d,b
	lda	hl,29(sp)
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
;_fsmul.c:238: fl2.f = a2;
;	genAddrOf
	lda	hl,19(sp)
	ld	c,l
	ld	b,h
;	genAssign (pointer)
;	AOP_STK for 
;	isBitvar = 0
	ld	e,c
	ld	d,b
	lda	hl,33(sp)
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
;_fsmul.c:240: if (!fl1.l || !fl2.l)
;	genAddrOf
	lda	hl,23(sp)
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for ___fsmul__1_0
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
;	AOP_STK for ___fsmul__1_0
	lda	hl,8(sp)
	ld	a,(hl+)
	or	a,(hl)
	inc	hl
	or	a,(hl)
	inc	hl
	or	a,(hl)
	jp	Z,00101$
;	genAddrOf
	lda	hl,19(sp)
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for ___fsmul__1_0
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
;	AOP_STK for ___fsmul__1_0
	lda	hl,8(sp)
	ld	a,(hl+)
	or	a,(hl)
	inc	hl
	or	a,(hl)
	inc	hl
	or	a,(hl)
	jp	NZ,00102$
;	genLabel
00101$:
;_fsmul.c:241: return (0);
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 4
	ld	de,#0x0000
	ld	hl,#0x0000
	jp	00113$
;	genLabel
00102$:
;_fsmul.c:244: sign = SIGN (fl1.l) ^ SIGN (fl2.l);
;	genAddrOf
	lda	hl,23(sp)
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for ___fsmul__1_0
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
;	AOP_STK for ___fsmul__1_0
;	AOP_STK for ___fsmul__1_0
	ld	(hl),a
	rlc	a
	and	a,#0x01
	lda	hl,8(sp)
	ld	(hl),a
;	genAddrOf
	lda	hl,19(sp)
	ld	b,l
	ld	c,h
;	genPointerGet
;	AOP_STK for ___fsmul__1_0
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
;	genGetHBIT
;	AOP_STK for ___fsmul__1_0
	ld	(hl),a
	rlc	a
	and	a,#0x01
;	genXor
;	AOP_STK for ___fsmul__1_0
	ld	c,a
	inc	hl
	xor	a,(hl)
	ld	c,a
;	genAssign
;	AOP_STK for ___fsmul_sign_1_1
	lda	hl,12(sp)
	ld	(hl),c
;_fsmul.c:245: exp = EXP (fl1.l) - EXCESS;
;	genAddrOf
	lda	hl,23(sp)
	ld	b,l
	ld	c,h
;	genPointerGet
;	AOP_STK for ___fsmul__1_0
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
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,#0x17
	push	af
	inc	sp
;	genIpush
;	AOP_STK for ___fsmul__1_0
	dec	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,7(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__rrulong_rrx_s
;	AOP_STK for ___fsmul__1_0
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
;	genAnd
;	AOP_STK for ___fsmul__1_0
	lda	hl,5(sp)
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;	genMinus
;	AOP_STK for ___fsmul__1_0
	lda	hl,4(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	sub	a,#0x7E
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
;	AOP_STK for ___fsmul__1_0
;	AOP_STK for ___fsmul_exp_1_1
	dec	hl
	dec	hl
	ld	a,(hl)
	lda	hl,13(sp)
	ld	(hl),a
	lda	hl,5(sp)
	ld	a,(hl)
	lda	hl,14(sp)
	ld	(hl),a
;_fsmul.c:246: exp += EXP (fl2.l);
;	genAddrOf
	lda	hl,19(sp)
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for ___fsmul__1_0
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
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,#0x17
	push	af
	inc	sp
;	genIpush
;	AOP_STK for ___fsmul__1_0
	dec	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,7(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__rrulong_rrx_s
;	AOP_STK for ___fsmul__1_0
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
;	genAnd
;	AOP_STK for ___fsmul__1_0
	lda	hl,5(sp)
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;	genCast
;	AOP_STK for ___fsmul_exp_1_1
;	AOP_STK for ___fsmul__1_0
	lda	hl,13(sp)
	ld	a,(hl)
	lda	hl,8(sp)
	ld	(hl),a
	lda	hl,14(sp)
	ld	a,(hl)
	lda	hl,9(sp)
	ld	(hl),a
	lda	hl,14(sp)
	ld	a,(hl)
	rla	
	sbc	a,a
	lda	hl,10(sp)
	ld	(hl+),a
	ld	(hl),a
;	genPlus
;	AOP_STK for ___fsmul__1_0
;	AOP_STK for ___fsmul__1_0
	lda	hl,8(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	lda	hl,4(sp)
	add	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a,(hl)
	push	af
	ld	(hl-),a
	ld	(hl),e
	lda	hl,12(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	lda	hl,8(sp)
	pop	af
	ld	a,e
	adc	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a,(hl)
	ld	(hl-),a
	ld	(hl),e
;	genCast
;	AOP_STK for ___fsmul__1_0
;	AOP_STK for ___fsmul_exp_1_1
	dec	hl
	dec	hl
	ld	a,(hl)
	lda	hl,13(sp)
	ld	(hl),a
	lda	hl,5(sp)
	ld	a,(hl)
	lda	hl,14(sp)
	ld	(hl),a
;_fsmul.c:248: fl1.l = MANT (fl1.l);
;	genAddrOf
;	AOP_STK for ___fsmul__1_0
	lda	hl,23(sp)
	ld	a,l
	ld	d,h
	lda	hl,4(sp)
	ld	(hl+),a
	ld	(hl),d
;	genAddrOf
	lda	hl,23(sp)
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for ___fsmul__1_0
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
;	AOP_STK for ___fsmul__1_0
	ld	(hl-),a
	ld	a,(hl)
	and	a,#0x7F
	ld	(hl+),a
	ld	(hl),#0x00
;	genOr
;	AOP_STK for ___fsmul__1_0
	dec	hl
	ld	a,(hl)
	or	a,#0x80
	ld	(hl),a
;	genAssign (pointer)
;	AOP_STK for ___fsmul__1_0
;	AOP_STK for ___fsmul__1_0
;	isBitvar = 0
	lda	hl,4(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	lda	hl,8(sp)
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
;_fsmul.c:249: fl2.l = MANT (fl2.l);
;	genAddrOf
;	AOP_STK for ___fsmul__1_0
	lda	hl,19(sp)
	ld	a,l
	ld	d,h
	lda	hl,4(sp)
	ld	(hl+),a
	ld	(hl),d
;	genAddrOf
	lda	hl,19(sp)
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for ___fsmul__1_0
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
;	AOP_STK for ___fsmul__1_0
	ld	(hl-),a
	ld	a,(hl)
	and	a,#0x7F
	ld	(hl+),a
	ld	(hl),#0x00
;	genOr
;	AOP_STK for ___fsmul__1_0
	dec	hl
	ld	a,(hl)
	or	a,#0x80
	ld	(hl),a
;	genAssign (pointer)
;	AOP_STK for ___fsmul__1_0
;	AOP_STK for ___fsmul__1_0
;	isBitvar = 0
	lda	hl,4(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	lda	hl,8(sp)
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
;_fsmul.c:252: result = (fl1.l >> 8) * (fl2.l >> 8);
;	genAddrOf
	lda	hl,23(sp)
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for ___fsmul__1_0
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
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,#0x08
	push	af
	inc	sp
;	genIpush
;	AOP_STK for ___fsmul__1_0
	dec	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,7(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__rrulong_rrx_s
;	AOP_STK for ___fsmul__1_0
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
;	genAddrOf
	lda	hl,19(sp)
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for ___fsmul__1_0
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
	ld	a,#0x08
	push	af
	inc	sp
;	genIpush
;	AOP_STK for ___fsmul__1_0
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
;	AOP_STK for ___fsmul__1_0
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
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for ___fsmul__1_0
	lda	hl,10(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,10(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for ___fsmul__1_0
	lda	hl,10(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,10(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__mullong_rrx_s
;	AOP_STK for ___fsmul__1_0
	push	hl
	lda	hl,14(sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	lda	sp,8(sp)
;	genAssign
;	AOP_STK for ___fsmul__1_0
;	AOP_STK for ___fsmul_result_1_1
	lda	hl,4(sp)
	ld	d,h
	ld	e,l
	lda	hl,15(sp)
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
;_fsmul.c:253: result += ((fl1.l & (unsigned long) 0xFF) * (fl2.l >> 8)) >> 8;
;	genAddrOf
	lda	hl,23(sp)
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for ___fsmul__1_0
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
;	AOP_STK for ___fsmul__1_0
	ld	(hl-),a
	dec	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;	genAddrOf
	lda	hl,19(sp)
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for ___fsmul__1_0
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
	ld	a,#0x08
	push	af
	inc	sp
;	genIpush
;	AOP_STK for ___fsmul__1_0
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
;	AOP_STK for ___fsmul__1_0
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
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for ___fsmul__1_0
	lda	hl,10(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,10(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for ___fsmul__1_0
	lda	hl,10(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,10(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__mullong_rrx_s
;	AOP_STK for ___fsmul__1_0
	push	hl
	lda	hl,14(sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	lda	sp,8(sp)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,#0x08
	push	af
	inc	sp
;	genIpush
;	AOP_STK for ___fsmul__1_0
	lda	hl,7(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,7(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__rrulong_rrx_s
;	AOP_STK for ___fsmul__1_0
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
;	genPlus
;	AOP_STK for ___fsmul_result_1_1
;	AOP_STK for ___fsmul__1_0
	lda	hl,15(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	lda	hl,4(sp)
	add	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a,(hl)
	push	af
	lda	hl,18(sp)
	ld	(hl-),a
	ld	(hl),e
	inc	hl
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	lda	hl,8(sp)
	pop	af
	ld	a,e
	adc	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a,(hl)
	lda	hl,18(sp)
	ld	(hl-),a
	ld	(hl),e
;_fsmul.c:254: result += ((fl2.l & (unsigned long) 0xFF) * (fl1.l >> 8)) >> 8;
;	genAddrOf
	lda	hl,19(sp)
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for ___fsmul__1_0
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
;	AOP_STK for ___fsmul__1_0
	ld	(hl-),a
	dec	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;	genAddrOf
	lda	hl,23(sp)
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for ___fsmul__1_0
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
	ld	a,#0x08
	push	af
	inc	sp
;	genIpush
;	AOP_STK for ___fsmul__1_0
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
;	AOP_STK for ___fsmul__1_0
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
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for ___fsmul__1_0
	lda	hl,10(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,10(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for ___fsmul__1_0
	lda	hl,10(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,10(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__mullong_rrx_s
;	AOP_STK for ___fsmul__1_0
	push	hl
	lda	hl,14(sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	lda	sp,8(sp)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,#0x08
	push	af
	inc	sp
;	genIpush
;	AOP_STK for ___fsmul__1_0
	lda	hl,7(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,7(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__rrulong_rrx_s
;	AOP_STK for ___fsmul__1_0
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
;	genPlus
;	AOP_STK for ___fsmul_result_1_1
;	AOP_STK for ___fsmul__1_0
	lda	hl,15(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	lda	hl,4(sp)
	add	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a,(hl)
	push	af
	lda	hl,18(sp)
	ld	(hl-),a
	ld	(hl),e
	inc	hl
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	lda	hl,8(sp)
	pop	af
	ld	a,e
	adc	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a,(hl)
	lda	hl,18(sp)
	ld	(hl-),a
	ld	(hl),e
;_fsmul.c:256: if (result & SIGNBIT)
;	genAnd
;	AOP_STK for ___fsmul_result_1_1
	inc	hl
	ld	a,(hl)
	and	a,#0x80
	jr	NZ,00125$
	jp	00105$
00125$:
;_fsmul.c:259: result += 0x80;
;	genPlus
;	AOP_STK for ___fsmul_result_1_1
;	genPlusIncr
	lda	hl,15(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	add	a,#0x80
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
;_fsmul.c:260: result >>= 8;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,#0x08
	push	af
	inc	sp
;	genIpush
;	AOP_STK for ___fsmul_result_1_1
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,18(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__rrulong_rrx_s
;	AOP_STK for ___fsmul__1_0
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
;	AOP_STK for ___fsmul__1_0
;	AOP_STK for ___fsmul_result_1_1
	lda	hl,4(sp)
	ld	d,h
	ld	e,l
	lda	hl,15(sp)
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
	jp	00106$
;	genLabel
00105$:
;_fsmul.c:265: result += 0x40;
;	genPlus
;	AOP_STK for ___fsmul_result_1_1
;	genPlusIncr
	lda	hl,15(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	add	a,#0x40
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
;_fsmul.c:266: result >>= 7;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,#0x07
	push	af
	inc	sp
;	genIpush
;	AOP_STK for ___fsmul_result_1_1
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,18(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__rrulong_rrx_s
;	AOP_STK for ___fsmul__1_0
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
;	AOP_STK for ___fsmul__1_0
;	AOP_STK for ___fsmul_result_1_1
	lda	hl,4(sp)
	ld	d,h
	ld	e,l
	lda	hl,15(sp)
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
;_fsmul.c:267: exp--;
;	genMinus
;	AOP_STK for ___fsmul_exp_1_1
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
;_fsmul.c:270: result &= ~HIDDEN;
;	genAnd
;	AOP_STK for ___fsmul_result_1_1
	lda	hl,17(sp)
	ld	a,(hl)
	and	a,#0x7F
	ld	(hl),a
;_fsmul.c:273: if (exp >= 0x100)
;	genCmpLt
;	AOP_STK for ___fsmul_exp_1_1
	lda	hl,13(sp)
	ld	a,(hl)
	sub	a,#0x00
	inc	hl
	ld	a,(hl)
	sbc	a,#0x01
	rlca
	jp	C,00111$
;_fsmul.c:274: fl1.l = (sign ? SIGNBIT : 0) | 0x7F800000;
;	genAddrOf
	lda	hl,23(sp)
	ld	c,l
	ld	b,h
;	genIfx
;	AOP_STK for ___fsmul_sign_1_1
	xor	a,a
	lda	hl,12(sp)
	or	a,(hl)
	jp	Z,00115$
;	genAssign
;	AOP_STK for ___fsmul__1_0
	lda	hl,4(sp)
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x80
;	genGoto
	jp	00116$
;	genLabel
00115$:
;	genAssign
;	AOP_STK for ___fsmul__1_0
	xor	a,a
	lda	hl,4(sp)
	ld	(hl+),a
	ld	(hl+),a
	ld	(hl+),a
	ld	(hl),a
;	genLabel
00116$:
;	genOr
;	AOP_STK for ___fsmul__1_0
	lda	hl,6(sp)
	ld	a,(hl)
	or	a,#0x80
	ld	(hl+),a
	ld	a,(hl)
	or	a,#0x7F
	ld	(hl),a
;	genAssign (pointer)
;	AOP_STK for ___fsmul__1_0
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
	jp	00112$
;	genLabel
00111$:
;_fsmul.c:275: else if (exp < 0)
;	genCmpLt
;	AOP_STK for ___fsmul_exp_1_1
	lda	hl,14(sp)
	ld	a,(hl)
	bit	7,a
	jp	Z,00108$
;_fsmul.c:276: fl1.l = 0;
;	genAddrOf
	lda	hl,23(sp)
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
	jp	00112$
;	genLabel
00108$:
;_fsmul.c:278: fl1.l = PACK (sign ? SIGNBIT : 0 , exp, result);
;	genAddrOf
	lda	hl,23(sp)
	ld	c,l
	ld	b,h
;	genIfx
;	AOP_STK for ___fsmul_sign_1_1
	xor	a,a
	lda	hl,12(sp)
	or	a,(hl)
	jp	Z,00117$
;	genAssign
;	AOP_STK for ___fsmul__1_0
	lda	hl,4(sp)
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x80
;	genGoto
	jp	00118$
;	genLabel
00117$:
;	genAssign
;	AOP_STK for ___fsmul__1_0
	xor	a,a
	lda	hl,4(sp)
	ld	(hl+),a
	ld	(hl+),a
	ld	(hl+),a
	ld	(hl),a
;	genLabel
00118$:
;	genCast
;	AOP_STK for ___fsmul_exp_1_1
;	AOP_STK for ___fsmul__1_0
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
;	AOP_STK for ___fsmul__1_0
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
;	AOP_STK for ___fsmul__1_0
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
;	AOP_STK for ___fsmul__1_0
;	AOP_STK for ___fsmul__1_0
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
;	genOr
;	AOP_STK for ___fsmul__1_0
;	AOP_STK for ___fsmul_result_1_1
	lda	hl,0(sp)
	ld	a,(hl)
	lda	hl,15(sp)
	or	a,(hl)
	lda	hl,0(sp)
	ld	(hl+),a
	ld	a,(hl)
	lda	hl,16(sp)
	or	a,(hl)
	lda	hl,1(sp)
	ld	(hl+),a
	ld	a,(hl)
	lda	hl,17(sp)
	or	a,(hl)
	lda	hl,2(sp)
	ld	(hl+),a
	ld	a,(hl)
	lda	hl,18(sp)
	or	a,(hl)
	lda	hl,3(sp)
	ld	(hl),a
;	genAssign (pointer)
;	AOP_STK for ___fsmul__1_0
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
00112$:
;_fsmul.c:279: return (fl1.f);
;	genAddrOf
	lda	hl,23(sp)
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for ___fsmul__1_0
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
;	AOP_STK for ___fsmul__1_0
; Dump of IC_LEFT: type AOP_STK size 4
;	 aop_stk -27
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
;	genLabel
00113$:
;	genEndFunction
	lda	sp,27(sp)
	ret
___fsmul_end::
	.area _CODE
	.area _CABS
