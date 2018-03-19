;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:00 2018
;--------------------------------------------------------
	.module _fsmul
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fsmul
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
;_fsmul.c:231: float __fsmul (float a1, float a2) {
;	genLabel
;	genFunction
;	---------------------------------
; Function __fsmul
; ---------------------------------
___fsmul_start::
___fsmul:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-22
	add	hl,sp
	ld	sp,hl
;_fsmul.c:237: fl1.f = a1;
;	genAddrOf
	ld	hl,#0x0012
	add	hl,sp
;	genAssign (pointer)
;	AOP_STK for 
;	isBitvar = 0
	ld	c,l
	ld	b,h
	ld	a,4(ix)
	ld	(hl),a
	inc	hl
	ld	a,5(ix)
	ld	(hl),a
	inc	hl
	ld	a,6(ix)
	ld	(hl),a
	inc	hl
	ld	a,7(ix)
	ld	(hl),a
;_fsmul.c:238: fl2.f = a2;
;	genAddrOf
	ld	hl,#0x000E
	add	hl,sp
;	genAssign (pointer)
;	AOP_STK for 
;	isBitvar = 0
	ld	c,l
	ld	b,h
	ld	a,8(ix)
	ld	(hl),a
	inc	hl
	ld	a,9(ix)
	ld	(hl),a
	inc	hl
	ld	a,10(ix)
	ld	(hl),a
	inc	hl
	ld	a,11(ix)
	ld	(hl),a
;_fsmul.c:240: if (!fl1.l || !fl2.l)
;	genAddrOf
	ld	hl,#0x0012
	add	hl,sp
;	genPointerGet
	ld	c,l
	ld	b,h
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genIfx
	ld	a,c
	or	a,b
	or	a,e
	or	a,d
	jr	Z,00101$
;	genAddrOf
	ld	hl,#0x000E
	add	hl,sp
;	genPointerGet
	ld	c,l
	ld	b,h
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genIfx
	ld	a,c
	or	a,b
	or	a,e
	or	a,d
	jr	NZ,00102$
;	genLabel
00101$:
;_fsmul.c:241: return (0);
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 4
	ld	hl,#0x0000
	ld	de,#0x0000
	jp	00113$
;	genLabel
00102$:
;_fsmul.c:244: sign = SIGN (fl1.l) ^ SIGN (fl2.l);
;	genAddrOf
	ld	hl,#0x0012
	add	hl,sp
;	genPointerGet
	ld	c,l
	ld	b,h
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genGetHBIT
;	AOP_STK for ___fsmul__1_0
	ld	a,d
	rlc	a
	and	a,#0x01
	ld	-16(ix),a
;	genAddrOf
	ld	hl,#0x000E
	add	hl,sp
;	genPointerGet
	ld	e,l
	ld	d,h
	ld	e,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
;	genGetHBIT
	ld	a,c
	rlc	a
	and	a,#0x01
;	genXor
;	AOP_STK for ___fsmul__1_0
	ld	e,a
	xor	a,-16(ix)
	ld	e,a
;	genAssign
;	AOP_STK for ___fsmul_sign_1_1
	ld	-15(ix),e
;_fsmul.c:245: exp = EXP (fl1.l) - EXCESS;
;	genAddrOf
	ld	hl,#0x0012
	add	hl,sp
;	genPointerGet
	ld	e,l
	ld	d,h
	ld	e,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,#0x17
	push	af
	inc	sp
;	genIpush
	ld	l,d
	ld	h,c
	push	hl
	ld	l,e
	ld	h,b
	push	hl
;	genCall
	call	__rrulong_rrx_s
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	inc	sp
;	genAnd
	ld	b,#0x00
	ld	de,#0x0000
;	genMinus
	ld	a,c
	add	a,#0x82
	ld	c,a
	ld	a,b
	adc	a,#0xFF
	ld	b,a
	ld	a,e
	adc	a,#0xFF
	ld	e,a
	ld	a,d
	adc	a,#0xFF
	ld	d,a
;	genCast
;	AOP_STK for ___fsmul_exp_1_1
	ld	-14(ix),c
	ld	-13(ix),b
;_fsmul.c:246: exp += EXP (fl2.l);
;	genAddrOf
	ld	hl,#0x000E
	add	hl,sp
;	genPointerGet
	ld	c,l
	ld	b,h
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,#0x17
	push	af
	inc	sp
;	genIpush
	ld	l,e
	ld	h,d
	push	hl
	ld	l,c
	ld	h,b
	push	hl
;	genCall
	call	__rrulong_rrx_s
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	inc	sp
;	genAnd
;	AOP_STK for ___fsmul__1_0
	ld	-20(ix),c
	ld	-19(ix),#0x00
	ld	-18(ix),#0x00
	ld	-17(ix),#0x00
;	genCast
;	AOP_STK for ___fsmul_exp_1_1
	ld	c,-14(ix)
	ld	b,-13(ix)
	ld	a,-13(ix)
	rla	
	sbc	a,a
	ld	e,a
	ld	d,a
;	genPlus
;	AOP_STK for ___fsmul__1_0
	ld	a,c
	add	a,-20(ix)
	ld	c,a
	ld	a,b
	adc	a,-19(ix)
	ld	b,a
	ld	a,e
	adc	a,-18(ix)
	ld	e,a
	ld	a,d
	adc	a,-17(ix)
	ld	d,a
;	genCast
;	AOP_STK for ___fsmul_exp_1_1
	ld	-14(ix),c
	ld	-13(ix),b
;_fsmul.c:248: fl1.l = MANT (fl1.l);
;	genAddrOf
;	AOP_STK for ___fsmul__1_0
	ld	hl,#0x0012
	add	hl,sp
	ld	-20(ix),l
	ld	-19(ix),h
;	genAddrOf
	ld	hl,#0x0012
	add	hl,sp
;	genPointerGet
	ld	e,l
	ld	d,h
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genAnd
	ld	a,c
	and	a,#0x7F
	ld	c,a
	ld	b,#0x00
;	genOr
	ld	a,c
	or	a,#0x80
	ld	c,a
;	genAssign (pointer)
;	AOP_STK for ___fsmul__1_0
;	isBitvar = 0
	ld	l,-20(ix)
	ld	h,-19(ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
;_fsmul.c:249: fl2.l = MANT (fl2.l);
;	genAddrOf
;	AOP_STK for ___fsmul__1_0
	ld	hl,#0x000E
	add	hl,sp
	ld	-20(ix),l
	ld	-19(ix),h
;	genAddrOf
	ld	hl,#0x000E
	add	hl,sp
;	genPointerGet
	ld	e,l
	ld	d,h
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genAnd
	ld	a,c
	and	a,#0x7F
	ld	c,a
	ld	b,#0x00
;	genOr
	ld	a,c
	or	a,#0x80
	ld	c,a
;	genAssign (pointer)
;	AOP_STK for ___fsmul__1_0
;	isBitvar = 0
	ld	l,-20(ix)
	ld	h,-19(ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
;_fsmul.c:252: result = (fl1.l >> 8) * (fl2.l >> 8);
;	genAddrOf
	ld	hl,#0x0012
	add	hl,sp
;	genPointerGet
	ld	c,l
	ld	b,h
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,#0x08
	push	af
	inc	sp
;	genIpush
	ld	l,e
	ld	h,d
	push	hl
	ld	l,c
	ld	h,b
	push	hl
;	genCall
	call	__rrulong_rrx_s
;	AOP_STK for ___fsmul__1_0
	ld	-17(ix),d
	ld	-18(ix),e
	ld	-19(ix),h
	ld	-20(ix),l
	pop	af
	pop	af
	inc	sp
;	genAddrOf
	ld	hl,#0x000E
	add	hl,sp
;	genPointerGet
	ld	c,l
	ld	b,h
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,#0x08
	push	af
	inc	sp
;	genIpush
	ld	l,e
	ld	h,d
	push	hl
	ld	l,c
	ld	h,b
	push	hl
;	genCall
	call	__rrulong_rrx_s
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	inc	sp
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	l,e
	ld	h,d
	push	hl
	ld	l,c
	ld	h,b
	push	hl
;	genIpush
;	AOP_STK for ___fsmul__1_0
	ld	l,-18(ix)
	ld	h,-17(ix)
	push	hl
	ld	l,-20(ix)
	ld	h,-19(ix)
	push	hl
;	genCall
	call	__mullong_rrx_s
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	pop	af
	pop	af
;	genAssign
;	AOP_STK for ___fsmul_result_1_1
	ld	-12(ix),c
	ld	-11(ix),b
	ld	-10(ix),e
	ld	-9(ix),d
;_fsmul.c:253: result += ((fl1.l & (unsigned long) 0xFF) * (fl2.l >> 8)) >> 8;
;	genAddrOf
	ld	hl,#0x0012
	add	hl,sp
;	genPointerGet
	ld	c,l
	ld	b,h
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genAnd
;	AOP_STK for ___fsmul__1_0
	ld	-20(ix),c
	ld	-19(ix),#0x00
	ld	-18(ix),#0x00
	ld	-17(ix),#0x00
;	genAddrOf
	ld	hl,#0x000E
	add	hl,sp
;	genPointerGet
	ld	c,l
	ld	b,h
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,#0x08
	push	af
	inc	sp
;	genIpush
	ld	l,e
	ld	h,d
	push	hl
	ld	l,c
	ld	h,b
	push	hl
;	genCall
	call	__rrulong_rrx_s
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	inc	sp
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	l,e
	ld	h,d
	push	hl
	ld	l,c
	ld	h,b
	push	hl
;	genIpush
;	AOP_STK for ___fsmul__1_0
	ld	l,-18(ix)
	ld	h,-17(ix)
	push	hl
	ld	l,-20(ix)
	ld	h,-19(ix)
	push	hl
;	genCall
	call	__mullong_rrx_s
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	pop	af
	pop	af
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,#0x08
	push	af
	inc	sp
;	genIpush
	ld	l,e
	ld	h,d
	push	hl
	ld	l,c
	ld	h,b
	push	hl
;	genCall
	call	__rrulong_rrx_s
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	inc	sp
;	genPlus
;	AOP_STK for ___fsmul_result_1_1
	ld	a,-12(ix)
	add	a,c
	ld	-12(ix),a
	ld	a,-11(ix)
	adc	a,b
	ld	-11(ix),a
	ld	a,-10(ix)
	adc	a,e
	ld	-10(ix),a
	ld	a,-9(ix)
	adc	a,d
	ld	-9(ix),a
;_fsmul.c:254: result += ((fl2.l & (unsigned long) 0xFF) * (fl1.l >> 8)) >> 8;
;	genAddrOf
	ld	hl,#0x000E
	add	hl,sp
;	genPointerGet
	ld	c,l
	ld	b,h
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genAnd
;	AOP_STK for ___fsmul__1_0
	ld	-20(ix),c
	ld	-19(ix),#0x00
	ld	-18(ix),#0x00
	ld	-17(ix),#0x00
;	genAddrOf
	ld	hl,#0x0012
	add	hl,sp
;	genPointerGet
	ld	c,l
	ld	b,h
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,#0x08
	push	af
	inc	sp
;	genIpush
	ld	l,e
	ld	h,d
	push	hl
	ld	l,c
	ld	h,b
	push	hl
;	genCall
	call	__rrulong_rrx_s
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	inc	sp
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	l,e
	ld	h,d
	push	hl
	ld	l,c
	ld	h,b
	push	hl
;	genIpush
;	AOP_STK for ___fsmul__1_0
	ld	l,-18(ix)
	ld	h,-17(ix)
	push	hl
	ld	l,-20(ix)
	ld	h,-19(ix)
	push	hl
;	genCall
	call	__mullong_rrx_s
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	pop	af
	pop	af
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,#0x08
	push	af
	inc	sp
;	genIpush
	ld	l,e
	ld	h,d
	push	hl
	ld	l,c
	ld	h,b
	push	hl
;	genCall
	call	__rrulong_rrx_s
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	inc	sp
;	genPlus
;	AOP_STK for ___fsmul_result_1_1
	ld	a,-12(ix)
	add	a,c
	ld	-12(ix),a
	ld	a,-11(ix)
	adc	a,b
	ld	-11(ix),a
	ld	a,-10(ix)
	adc	a,e
	ld	-10(ix),a
	ld	a,-9(ix)
	adc	a,d
	ld	-9(ix),a
;_fsmul.c:256: if (result & SIGNBIT)
;	genAnd
;	AOP_STK for ___fsmul_result_1_1
	ld	a,-9(ix)
	and	a,#0x80
	jr	Z,00105$
;_fsmul.c:259: result += 0x80;
;	genPlus
;	AOP_STK for ___fsmul_result_1_1
;	genPlusIncr
	ld	a,-12(ix)
	add	a,#0x80
	ld	-12(ix),a
	ld	a,-11(ix)
	adc	a,#0x00
	ld	-11(ix),a
	ld	a,-10(ix)
	adc	a,#0x00
	ld	-10(ix),a
	ld	a,-9(ix)
	adc	a,#0x00
	ld	-9(ix),a
;_fsmul.c:260: result >>= 8;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,#0x08
	push	af
	inc	sp
;	genIpush
;	AOP_STK for ___fsmul_result_1_1
	ld	l,-10(ix)
	ld	h,-9(ix)
	push	hl
	ld	l,-12(ix)
	ld	h,-11(ix)
	push	hl
;	genCall
	call	__rrulong_rrx_s
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	inc	sp
;	genAssign
;	AOP_STK for ___fsmul_result_1_1
	ld	-12(ix),c
	ld	-11(ix),b
	ld	-10(ix),e
	ld	-9(ix),d
;	genGoto
	jr	00106$
;	genLabel
00105$:
;_fsmul.c:265: result += 0x40;
;	genPlus
;	AOP_STK for ___fsmul_result_1_1
;	genPlusIncr
	ld	a,-12(ix)
	add	a,#0x40
	ld	-12(ix),a
	ld	a,-11(ix)
	adc	a,#0x00
	ld	-11(ix),a
	ld	a,-10(ix)
	adc	a,#0x00
	ld	-10(ix),a
	ld	a,-9(ix)
	adc	a,#0x00
	ld	-9(ix),a
;_fsmul.c:266: result >>= 7;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,#0x07
	push	af
	inc	sp
;	genIpush
;	AOP_STK for ___fsmul_result_1_1
	ld	l,-10(ix)
	ld	h,-9(ix)
	push	hl
	ld	l,-12(ix)
	ld	h,-11(ix)
	push	hl
;	genCall
	call	__rrulong_rrx_s
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	inc	sp
;	genAssign
;	AOP_STK for ___fsmul_result_1_1
	ld	-12(ix),c
	ld	-11(ix),b
	ld	-10(ix),e
	ld	-9(ix),d
;_fsmul.c:267: exp--;
;	genMinus
;	AOP_STK for ___fsmul_exp_1_1
	ld	l,-14(ix)
	ld	h,-13(ix)
	dec	hl
	ld	-14(ix),l
	ld	-13(ix),h
;	genLabel
00106$:
;_fsmul.c:270: result &= ~HIDDEN;
;	genAnd
;	AOP_STK for ___fsmul_result_1_1
	ld	a,-10(ix)
	and	a,#0x7F
	ld	-10(ix),a
;_fsmul.c:273: if (exp >= 0x100)
;	genCmpLt
;	AOP_STK for ___fsmul_exp_1_1
	ld	a,-14(ix)
	sub	a,#0x00
	ld	a,-13(ix)
	sbc	a,#0x01
	jp	M,00111$
;_fsmul.c:274: fl1.l = (sign ? SIGNBIT : 0) | 0x7F800000;
;	genAddrOf
;	AOP_STK for ___fsmul__1_0
	ld	hl,#0x0012
	add	hl,sp
	ld	-22(ix),l
	ld	-21(ix),h
;	genIfx
;	AOP_STK for ___fsmul_sign_1_1
	xor	a,a
	or	a,-15(ix)
	jr	Z,00115$
;	genAssign
	ld	bc,#0x0000
	ld	de,#0x8000
;	genGoto
	jr	00116$
;	genLabel
00115$:
;	genAssign
	ld	bc,#0x0000
	ld	de,#0x0000
;	genLabel
00116$:
;	genOr
	ld	e,c
	ld	d,b
	ld	a,e
	or	a,#0x80
	ld	c,a
	ld	a,d
	or	a,#0x7F
	ld	b,a
;	genAssign (pointer)
;	AOP_STK for ___fsmul__1_0
;	isBitvar = 0
	ld	l,-22(ix)
	ld	h,-21(ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
;	genGoto
	jp	00112$
;	genLabel
00111$:
;_fsmul.c:275: else if (exp < 0)
;	genCmpLt
;	AOP_STK for ___fsmul_exp_1_1
	ld	a,-13(ix)
	bit	7,a
	jr	Z,00108$
;_fsmul.c:276: fl1.l = 0;
;	genAddrOf
	ld	hl,#0x0012
	add	hl,sp
;	genAssign (pointer)
;	isBitvar = 0
	ld	c,l
	ld	b,h
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;	genGoto
	jp	00112$
;	genLabel
00108$:
;_fsmul.c:278: fl1.l = PACK (sign ? SIGNBIT : 0 , exp, result);
;	genAddrOf
;	AOP_STK for ___fsmul__1_0
	ld	hl,#0x0012
	add	hl,sp
	ld	-22(ix),l
	ld	-21(ix),h
;	genIfx
;	AOP_STK for ___fsmul_sign_1_1
	xor	a,a
	or	a,-15(ix)
	jr	Z,00117$
;	genAssign
;	AOP_STK for ___fsmul__1_0
	ld	-20(ix),#0x00
	ld	-19(ix),#0x00
	ld	-18(ix),#0x00
	ld	-17(ix),#0x80
;	genGoto
	jr	00118$
;	genLabel
00117$:
;	genAssign
;	AOP_STK for ___fsmul__1_0
	xor	a,a
	ld	-20(ix),a
	ld	-19(ix),a
	ld	-18(ix),a
	ld	-17(ix),a
;	genLabel
00118$:
;	genCast
;	AOP_STK for ___fsmul_exp_1_1
	ld	e,-14(ix)
	ld	d,-13(ix)
	ld	a,-13(ix)
	rla	
	sbc	a,a
	ld	c,a
	ld	b,a
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,#0x17
	push	af
	inc	sp
;	genIpush
	ld	l,c
	ld	h,b
	push	hl
	ld	l,e
	ld	h,d
	push	hl
;	genCall
	call	__rlulong_rrx_s
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	inc	sp
;	genOr
;	AOP_STK for ___fsmul__1_0
	ld	a,c
	or	a,-20(ix)
	ld	c,a
	ld	a,b
	or	a,-19(ix)
	ld	b,a
	ld	a,e
	or	a,-18(ix)
	ld	e,a
	ld	a,d
	or	a,-17(ix)
	ld	d,a
;	genOr
;	AOP_STK for ___fsmul_result_1_1
	ld	a,c
	or	a,-12(ix)
	ld	c,a
	ld	a,b
	or	a,-11(ix)
	ld	b,a
	ld	a,e
	or	a,-10(ix)
	ld	e,a
	ld	a,d
	or	a,-9(ix)
	ld	d,a
;	genAssign (pointer)
;	AOP_STK for ___fsmul__1_0
;	isBitvar = 0
	ld	l,-22(ix)
	ld	h,-21(ix)
	ld	(hl),c
	inc	hl
	ld	(hl),b
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
;	genLabel
00112$:
;_fsmul.c:279: return (fl1.f);
;	genAddrOf
	ld	hl,#0x0012
	add	hl,sp
;	genPointerGet
	ld	c,l
	ld	b,h
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genRet
; Dump of IC_LEFT: type AOP_REG size 4
;	 reg = debc
	ld	l,c
	ld	h,b
;	genLabel
00113$:
;	genEndFunction
	ld	sp,ix
	pop	ix
	ret
___fsmul_end::
	.area _CODE
	.area _CABS
