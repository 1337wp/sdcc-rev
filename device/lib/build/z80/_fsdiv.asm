;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:00 2018
;--------------------------------------------------------
	.module _fsdiv
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fsdiv
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
;_fsdiv.c:264: float __fsdiv (float a1, float a2)
;	genLabel
;	genFunction
;	---------------------------------
; Function __fsdiv
; ---------------------------------
___fsdiv_start::
___fsdiv:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-33
	add	hl,sp
	ld	sp,hl
;_fsdiv.c:273: fl1.f = a1;
;	genAddrOf
	ld	hl,#0x001D
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
;_fsdiv.c:274: fl2.f = a2;
;	genAddrOf
	ld	hl,#0x0019
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
;_fsdiv.c:277: exp = EXP (fl1.l) ;
;	genAddrOf
	ld	hl,#0x001D
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
	ld	b,#0x00
	ld	de,#0x0000
;	genCast
;	AOP_STK for ___fsdiv_exp_1_1
	ld	-26(ix),c
	ld	-25(ix),b
;_fsdiv.c:278: exp -= EXP (fl2.l);
;	genAddrOf
	ld	hl,#0x0019
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
;	AOP_STK for ___fsdiv__1_0
	ld	-31(ix),c
	ld	-30(ix),#0x00
	ld	-29(ix),#0x00
	ld	-28(ix),#0x00
;	genCast
;	AOP_STK for ___fsdiv_exp_1_1
	ld	c,-26(ix)
	ld	b,-25(ix)
	ld	a,-25(ix)
	rla	
	sbc	a,a
	ld	e,a
	ld	d,a
;	genMinus
;	AOP_STK for ___fsdiv__1_0
	ld	a,c
	sub	a,-31(ix)
	ld	c,a
	ld	a,b
	sbc	a,-30(ix)
	ld	b,a
	ld	a,e
	sbc	a,-29(ix)
	ld	e,a
	ld	a,d
	sbc	a,-28(ix)
	ld	d,a
;	genCast
;	AOP_STK for ___fsdiv_exp_1_1
	ld	-26(ix),c
	ld	-25(ix),b
;_fsdiv.c:279: exp += EXCESS;
;	genPlus
;	AOP_STK for ___fsdiv_exp_1_1
;	genPlusIncr
	ld	a,-26(ix)
	add	a,#0x7E
	ld	-26(ix),a
	ld	a,-25(ix)
	adc	a,#0x00
	ld	-25(ix),a
;_fsdiv.c:282: sign = SIGN (fl1.l) ^ SIGN (fl2.l);
;	genAddrOf
	ld	hl,#0x001D
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
;	AOP_STK for ___fsdiv__1_0
	ld	a,d
	rlc	a
	and	a,#0x01
	ld	-31(ix),a
;	genAddrOf
	ld	hl,#0x0019
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
;	AOP_STK for ___fsdiv__1_0
	ld	e,a
	xor	a,-31(ix)
	ld	e,a
;	genAssign
;	AOP_STK for ___fsdiv_sign_1_1
	ld	-27(ix),e
;_fsdiv.c:285: if (!fl2.l)
;	genAddrOf
	ld	hl,#0x0019
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
;	genIfx
	ld	a,e
	or	a,b
	or	a,d
	or	a,c
	jr	NZ,00102$
;_fsdiv.c:287: fl2.l = 0x7FC00000;
;	genAddrOf
	ld	hl,#0x0019
	add	hl,sp
;	genAssign (pointer)
;	isBitvar = 0
	ld	c,l
	ld	b,h
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0xC0
	inc	hl
	ld	(hl),#0x7F
;_fsdiv.c:288: return (fl2.f);
;	genAddrOf
	ld	hl,#0x0019
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
	jp	00118$
;	genLabel
00102$:
;_fsdiv.c:292: if (!fl1.l)
;	genAddrOf
	ld	hl,#0x001D
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
	jr	NZ,00104$
;_fsdiv.c:293: return (0);
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 4
	ld	hl,#0x0000
	ld	de,#0x0000
	jp	00118$
;	genLabel
00104$:
;_fsdiv.c:296: mant1 = MANT (fl1.l);
;	genAddrOf
	ld	hl,#0x001D
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
	ld	a,e
	and	a,#0x7F
	ld	e,a
	ld	d,#0x00
;	genOr
;	AOP_STK for ___fsdiv_mant1_1_1
	ld	-20(ix),c
	ld	-19(ix),b
	ld	a,e
	or	a,#0x80
	ld	-18(ix),a
	ld	-17(ix),d
;_fsdiv.c:297: mant2 = MANT (fl2.l);
;	genAddrOf
	ld	hl,#0x0019
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
	ld	a,e
	and	a,#0x7F
	ld	e,a
	ld	d,#0x00
;	genOr
;	AOP_STK for ___fsdiv_mant2_1_1
	ld	-24(ix),c
	ld	-23(ix),b
	ld	a,e
	or	a,#0x80
	ld	-22(ix),a
	ld	-21(ix),d
;_fsdiv.c:300: if (mant1 < mant2)
;	genCmpLt
;	AOP_STK for ___fsdiv_mant1_1_1
;	AOP_STK for ___fsdiv_mant2_1_1
	ld	a,-20(ix)
	sub	a,-24(ix)
	ld	a,-19(ix)
	sbc	a,-23(ix)
	ld	a,-18(ix)
	sbc	a,-22(ix)
	ld	a,-17(ix)
	sbc	a,-21(ix)
	jp	P,00106$
;_fsdiv.c:302: mant1 <<= 1;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,#0x01
	push	af
	inc	sp
;	genIpush
;	AOP_STK for ___fsdiv_mant1_1_1
	ld	l,-18(ix)
	ld	h,-17(ix)
	push	hl
	ld	l,-20(ix)
	ld	h,-19(ix)
	push	hl
;	genCall
	call	__rlslong_rrx_s
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	inc	sp
;	genAssign
;	AOP_STK for ___fsdiv_mant1_1_1
	ld	-20(ix),c
	ld	-19(ix),b
	ld	-18(ix),e
	ld	-17(ix),d
;_fsdiv.c:303: exp--;
;	genMinus
;	AOP_STK for ___fsdiv_exp_1_1
	ld	l,-26(ix)
	ld	h,-25(ix)
	dec	hl
	ld	-26(ix),l
	ld	-25(ix),h
;	genLabel
00106$:
;_fsdiv.c:307: mask = 0x1000000;
;	genAssign
;	AOP_STK for ___fsdiv_mask_1_1
	ld	-16(ix),#0x00
	ld	-15(ix),#0x00
	ld	-14(ix),#0x00
	ld	-13(ix),#0x01
;_fsdiv.c:308: result = 0;
;	genAssign
;	AOP_STK for ___fsdiv_result_1_1
	xor	a,a
	ld	-12(ix),a
	ld	-11(ix),a
	ld	-10(ix),a
	ld	-9(ix),a
;_fsdiv.c:309: while (mask)
;	genLabel
00109$:
;	genIfx
;	AOP_STK for ___fsdiv_mask_1_1
	ld	a,-16(ix)
	or	a,-15(ix)
	or	a,-14(ix)
	or	a,-13(ix)
	jp	Z,00111$
;_fsdiv.c:311: if (mant1 >= mant2)
;	genCmpLt
;	AOP_STK for ___fsdiv_mant1_1_1
;	AOP_STK for ___fsdiv_mant2_1_1
	ld	a,-20(ix)
	sub	a,-24(ix)
	ld	a,-19(ix)
	sbc	a,-23(ix)
	ld	a,-18(ix)
	sbc	a,-22(ix)
	ld	a,-17(ix)
	sbc	a,-21(ix)
	jp	M,00108$
;_fsdiv.c:313: result |= mask;
;	genAssign
;	AOP_STK for ___fsdiv_result_1_1
	ld	c,-12(ix)
	ld	b,-11(ix)
	ld	e,-10(ix)
	ld	d,-9(ix)
;	genOr
;	AOP_STK for ___fsdiv_mask_1_1
	ld	a,c
	or	a,-16(ix)
	ld	c,a
	ld	a,b
	or	a,-15(ix)
	ld	b,a
	ld	a,e
	or	a,-14(ix)
	ld	e,a
	ld	a,d
	or	a,-13(ix)
	ld	d,a
;	genAssign
;	AOP_STK for ___fsdiv_result_1_1
	ld	-12(ix),c
	ld	-11(ix),b
	ld	-10(ix),e
	ld	-9(ix),d
;_fsdiv.c:314: mant1 -= mant2;
;	genMinus
;	AOP_STK for ___fsdiv_mant1_1_1
;	AOP_STK for ___fsdiv_mant2_1_1
	ld	a,-20(ix)
	sub	a,-24(ix)
	ld	-20(ix),a
	ld	a,-19(ix)
	sbc	a,-23(ix)
	ld	-19(ix),a
	ld	a,-18(ix)
	sbc	a,-22(ix)
	ld	-18(ix),a
	ld	a,-17(ix)
	sbc	a,-21(ix)
	ld	-17(ix),a
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
	ld	l,-18(ix)
	ld	h,-17(ix)
	push	hl
	ld	l,-20(ix)
	ld	h,-19(ix)
	push	hl
;	genCall
	call	__rlslong_rrx_s
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	inc	sp
;	genAssign
;	AOP_STK for ___fsdiv_mant1_1_1
	ld	-20(ix),c
	ld	-19(ix),b
	ld	-18(ix),e
	ld	-17(ix),d
;_fsdiv.c:317: mask >>= 1;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,#0x01
	push	af
	inc	sp
;	genIpush
;	AOP_STK for ___fsdiv_mask_1_1
	ld	l,-14(ix)
	ld	h,-13(ix)
	push	hl
	ld	l,-16(ix)
	ld	h,-15(ix)
	push	hl
;	genCall
	call	__rrulong_rrx_s
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	inc	sp
;	genAssign
;	AOP_STK for ___fsdiv_mask_1_1
	ld	-16(ix),c
	ld	-15(ix),b
	ld	-14(ix),e
	ld	-13(ix),d
;	genGoto
	jp	00109$
;	genLabel
00111$:
;_fsdiv.c:321: result += 1;
;	genPlus
;	AOP_STK for ___fsdiv_result_1_1
;	genPlusIncr
	inc	-12(ix)
	jr	NZ,00134$
	inc	-11(ix)
	jr	NZ,00134$
	inc	-10(ix)
	jr	NZ,00134$
	inc	-9(ix)
00134$:
;_fsdiv.c:324: exp++;
;	genPlus
;	AOP_STK for ___fsdiv_exp_1_1
;	genPlusIncr
	inc	-26(ix)
	jr	NZ,00135$
	inc	-25(ix)
00135$:
;_fsdiv.c:325: result >>= 1;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,#0x01
	push	af
	inc	sp
;	genIpush
;	AOP_STK for ___fsdiv_result_1_1
	ld	l,-10(ix)
	ld	h,-9(ix)
	push	hl
	ld	l,-12(ix)
	ld	h,-11(ix)
	push	hl
;	genCall
	call	__rrslong_rrx_s
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	inc	sp
;	genAssign
;	AOP_STK for ___fsdiv_result_1_1
	ld	-12(ix),c
	ld	-11(ix),b
	ld	-10(ix),e
	ld	-9(ix),d
;_fsdiv.c:327: result &= ~HIDDEN;
;	genAssign
;	AOP_STK for ___fsdiv_result_1_1
	ld	c,-12(ix)
	ld	b,-11(ix)
	ld	e,-10(ix)
	ld	d,-9(ix)
;	genAnd
;	AOP_STK for ___fsdiv_result_1_1
	ld	-12(ix),c
	ld	-11(ix),b
	ld	a,e
	and	a,#0x7F
	ld	-10(ix),a
	ld	-9(ix),d
;_fsdiv.c:330: if (exp >= 0x100)
;	genCmpLt
;	AOP_STK for ___fsdiv_exp_1_1
	ld	a,-26(ix)
	sub	a,#0x00
	ld	a,-25(ix)
	sbc	a,#0x01
	jp	M,00116$
;_fsdiv.c:331: fl1.l = (sign ? SIGNBIT : 0) | 0x7F800000;
;	genAddrOf
;	AOP_STK for ___fsdiv__1_0
	ld	hl,#0x001D
	add	hl,sp
	ld	-33(ix),l
	ld	-32(ix),h
;	genIfx
;	AOP_STK for ___fsdiv_sign_1_1
	xor	a,a
	or	a,-27(ix)
	jr	Z,00120$
;	genAssign
	ld	bc,#0x0000
	ld	de,#0x8000
;	genGoto
	jr	00121$
;	genLabel
00120$:
;	genAssign
	ld	bc,#0x0000
	ld	de,#0x0000
;	genLabel
00121$:
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
;	AOP_STK for ___fsdiv__1_0
;	isBitvar = 0
	ld	l,-33(ix)
	ld	h,-32(ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
;	genGoto
	jp	00117$
;	genLabel
00116$:
;_fsdiv.c:332: else if (exp < 0)
;	genCmpLt
;	AOP_STK for ___fsdiv_exp_1_1
	ld	a,-25(ix)
	bit	7,a
	jr	Z,00113$
;_fsdiv.c:333: fl1.l = 0;
;	genAddrOf
	ld	hl,#0x001D
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
	jp	00117$
;	genLabel
00113$:
;_fsdiv.c:335: fl1.l = PACK (sign ? SIGNBIT : 0 , exp, result);
;	genAddrOf
;	AOP_STK for ___fsdiv__1_0
	ld	hl,#0x001D
	add	hl,sp
	ld	-33(ix),l
	ld	-32(ix),h
;	genIfx
;	AOP_STK for ___fsdiv_sign_1_1
	xor	a,a
	or	a,-27(ix)
	jr	Z,00122$
;	genAssign
;	AOP_STK for ___fsdiv__1_0
	ld	-31(ix),#0x00
	ld	-30(ix),#0x00
	ld	-29(ix),#0x00
	ld	-28(ix),#0x80
;	genGoto
	jr	00123$
;	genLabel
00122$:
;	genAssign
;	AOP_STK for ___fsdiv__1_0
	xor	a,a
	ld	-31(ix),a
	ld	-30(ix),a
	ld	-29(ix),a
	ld	-28(ix),a
;	genLabel
00123$:
;	genCast
;	AOP_STK for ___fsdiv_exp_1_1
	ld	e,-26(ix)
	ld	d,-25(ix)
	ld	a,-25(ix)
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
;	AOP_STK for ___fsdiv__1_0
	ld	a,-31(ix)
	or	a,c
	ld	-31(ix),a
	ld	a,-30(ix)
	or	a,b
	ld	-30(ix),a
	ld	a,-29(ix)
	or	a,e
	ld	-29(ix),a
	ld	a,-28(ix)
	or	a,d
	ld	-28(ix),a
;	genAssign
;	AOP_STK for ___fsdiv_result_1_1
	ld	c,-12(ix)
	ld	b,-11(ix)
	ld	e,-10(ix)
	ld	d,-9(ix)
;	genOr
;	AOP_STK for ___fsdiv__1_0
	ld	a,c
	or	a,-31(ix)
	ld	c,a
	ld	a,b
	or	a,-30(ix)
	ld	b,a
	ld	a,e
	or	a,-29(ix)
	ld	e,a
	ld	a,d
	or	a,-28(ix)
	ld	d,a
;	genAssign (pointer)
;	AOP_STK for ___fsdiv__1_0
;	isBitvar = 0
	ld	l,-33(ix)
	ld	h,-32(ix)
	ld	(hl),c
	inc	hl
	ld	(hl),b
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
;	genLabel
00117$:
;_fsdiv.c:336: return (fl1.f);
;	genAddrOf
	ld	hl,#0x001D
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
00118$:
;	genEndFunction
	ld	sp,ix
	pop	ix
	ret
___fsdiv_end::
	.area _CODE
	.area _CABS
