;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:00 2018
;--------------------------------------------------------
	.module _fsadd
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fsadd
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
;_fsadd.c:160: float __fsadd (float a1, float a2)
;	genLabel
;	genFunction
;	---------------------------------
; Function __fsadd
; ---------------------------------
___fsadd_start::
___fsadd:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-30
	add	hl,sp
	ld	sp,hl
;_fsadd.c:165: volatile unsigned long sign = 0;
;	genAssign
;	AOP_STK for ___fsadd_sign_1_1
	xor	a,a
	ld	-24(ix),a
	ld	-23(ix),a
	ld	-22(ix),a
	ld	-21(ix),a
;_fsadd.c:167: fl1.f = a1;
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
;_fsadd.c:168: fl2.f = a2;
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
;_fsadd.c:171: if (!fl1.l)
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
	jr	NZ,00102$
;_fsadd.c:172: return (fl2.f);
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
;	genRet
; Dump of IC_LEFT: type AOP_REG size 4
;	 reg = debc
	ld	l,c
	ld	h,b
	jp	00129$
;	genLabel
00102$:
;_fsadd.c:173: if (!fl2.l)
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
	jr	NZ,00104$
;_fsadd.c:174: return (fl1.f);
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
	jp	00129$
;	genLabel
00104$:
;_fsadd.c:176: exp1 = EXP (fl1.l);
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
;	AOP_STK for ___fsadd_exp1_1_1
	ld	-18(ix),c
	ld	-17(ix),b
;_fsadd.c:177: exp2 = EXP (fl2.l);
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
	ld	b,#0x00
	ld	de,#0x0000
;	genCast
;	AOP_STK for ___fsadd_exp2_1_1
	ld	-20(ix),c
	ld	-19(ix),b
;_fsadd.c:179: if (exp1 > exp2 + 25)
;	genPlus
;	AOP_STK for ___fsadd_exp2_1_1
;	genPlusIncr
	ld	a,-20(ix)
	add	a,#0x19
	ld	c,a
	ld	a,-19(ix)
	adc	a,#0x00
	ld	b,a
;	genCmpGt
;	AOP_STK for ___fsadd_exp1_1_1
	ld	a,c
	sub	a,-18(ix)
	ld	a,b
	sbc	a,-17(ix)
	jp	P,00106$
;_fsadd.c:180: return (fl1.f);
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
	jp	00129$
;	genLabel
00106$:
;_fsadd.c:181: if (exp2 > exp1 + 25)
;	genPlus
;	AOP_STK for ___fsadd_exp1_1_1
;	genPlusIncr
	ld	a,-18(ix)
	add	a,#0x19
	ld	c,a
	ld	a,-17(ix)
	adc	a,#0x00
	ld	b,a
;	genCmpGt
;	AOP_STK for ___fsadd_exp2_1_1
	ld	a,c
	sub	a,-20(ix)
	ld	a,b
	sbc	a,-19(ix)
	jp	P,00108$
;_fsadd.c:182: return (fl2.f);
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
;	genRet
; Dump of IC_LEFT: type AOP_REG size 4
;	 reg = debc
	ld	l,c
	ld	h,b
	jp	00129$
;	genLabel
00108$:
;_fsadd.c:184: mant1 = MANT (fl1.l);
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
	ld	a,e
	and	a,#0x7F
	ld	e,a
	ld	d,#0x00
;	genOr
;	AOP_STK for ___fsadd_mant1_1_1
	ld	-4(ix),c
	ld	-3(ix),b
	ld	a,e
	or	a,#0x80
	ld	-2(ix),a
	ld	-1(ix),d
;_fsadd.c:185: mant2 = MANT (fl2.l);
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
	ld	a,e
	and	a,#0x7F
	ld	e,a
	ld	d,#0x00
;	genOr
;	AOP_STK for ___fsadd_mant2_1_1
	ld	-8(ix),c
	ld	-7(ix),b
	ld	a,e
	or	a,#0x80
	ld	-6(ix),a
	ld	-5(ix),d
;_fsadd.c:187: if (SIGN (fl1.l))
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
	ld	a,d
	rlc	a
;	genIfx
	and	a,#0x01
	jr	Z,00110$
;_fsadd.c:188: mant1 = -mant1;
;	genUminus
;	AOP_STK for ___fsadd_mant1_1_1
	xor	a,a
	sbc	a,-4(ix)
	ld	-4(ix),a
	ld	a,#0x00
	sbc	a,-3(ix)
	ld	-3(ix),a
	ld	a,#0x00
	sbc	a,-2(ix)
	ld	-2(ix),a
	ld	a,#0x00
	sbc	a,-1(ix)
	ld	-1(ix),a
;	genLabel
00110$:
;_fsadd.c:189: if (SIGN (fl2.l))
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
;	genGetHBIT
	ld	a,d
	rlc	a
;	genIfx
	and	a,#0x01
	jr	Z,00112$
;_fsadd.c:190: mant2 = -mant2;
;	genUminus
;	AOP_STK for ___fsadd_mant2_1_1
	xor	a,a
	sbc	a,-8(ix)
	ld	-8(ix),a
	ld	a,#0x00
	sbc	a,-7(ix)
	ld	-7(ix),a
	ld	a,#0x00
	sbc	a,-6(ix)
	ld	-6(ix),a
	ld	a,#0x00
	sbc	a,-5(ix)
	ld	-5(ix),a
;	genLabel
00112$:
;_fsadd.c:192: if (exp1 > exp2)
;	genCmpGt
;	AOP_STK for ___fsadd_exp1_1_1
;	AOP_STK for ___fsadd_exp2_1_1
	ld	a,-20(ix)
	sub	a,-18(ix)
	ld	a,-19(ix)
	sbc	a,-17(ix)
	jp	P,00114$
;_fsadd.c:194: mant2 >>= exp1 - exp2;
;	genMinus
;	AOP_STK for ___fsadd_exp1_1_1
;	AOP_STK for ___fsadd_exp2_1_1
	ld	a,-18(ix)
	sub	a,-20(ix)
	ld	c,a
	ld	a,-17(ix)
	sbc	a,-19(ix)
	ld	b,a
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	push	bc
;	genIpush
;	AOP_STK for ___fsadd_mant2_1_1
	ld	l,-6(ix)
	ld	h,-5(ix)
	push	hl
	ld	l,-8(ix)
	ld	h,-7(ix)
	push	hl
;	genCall
	call	__rrslong_rrx_s
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	pop	af
;	genAssign
;	AOP_STK for ___fsadd_mant2_1_1
	ld	-8(ix),c
	ld	-7(ix),b
	ld	-6(ix),e
	ld	-5(ix),d
;	genGoto
	jr	00115$
;	genLabel
00114$:
;_fsadd.c:198: mant1 >>= exp2 - exp1;
;	genMinus
;	AOP_STK for ___fsadd_exp2_1_1
;	AOP_STK for ___fsadd_exp1_1_1
	ld	a,-20(ix)
	sub	a,-18(ix)
	ld	c,a
	ld	a,-19(ix)
	sbc	a,-17(ix)
	ld	b,a
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	push	bc
;	genIpush
;	AOP_STK for ___fsadd_mant1_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	push	hl
	ld	l,-4(ix)
	ld	h,-3(ix)
	push	hl
;	genCall
	call	__rrslong_rrx_s
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	pop	af
;	genAssign
;	AOP_STK for ___fsadd_mant1_1_1
	ld	-4(ix),c
	ld	-3(ix),b
	ld	-2(ix),e
	ld	-1(ix),d
;_fsadd.c:199: exp1 = exp2;
;	genAssign
;	AOP_STK for ___fsadd_exp2_1_1
;	AOP_STK for ___fsadd_exp1_1_1
	ld	a,-20(ix)
	ld	-18(ix),a
	ld	a,-19(ix)
	ld	-17(ix),a
;	genLabel
00115$:
;_fsadd.c:201: mant1 += mant2;
;	genPlus
;	AOP_STK for ___fsadd_mant1_1_1
;	AOP_STK for ___fsadd_mant2_1_1
	ld	a,-4(ix)
	add	a,-8(ix)
	ld	-4(ix),a
	ld	a,-3(ix)
	adc	a,-7(ix)
	ld	-3(ix),a
	ld	a,-2(ix)
	adc	a,-6(ix)
	ld	-2(ix),a
	ld	a,-1(ix)
	adc	a,-5(ix)
	ld	-1(ix),a
;_fsadd.c:203: if (mant1 < 0)
;	genCmpLt
;	AOP_STK for ___fsadd_mant1_1_1
	ld	a,-1(ix)
	bit	7,a
	jr	Z,00119$
;_fsadd.c:205: mant1 = -mant1;
;	genUminus
;	AOP_STK for ___fsadd_mant1_1_1
	xor	a,a
	sbc	a,-4(ix)
	ld	-4(ix),a
	ld	a,#0x00
	sbc	a,-3(ix)
	ld	-3(ix),a
	ld	a,#0x00
	sbc	a,-2(ix)
	ld	-2(ix),a
	ld	a,#0x00
	sbc	a,-1(ix)
	ld	-1(ix),a
;_fsadd.c:206: sign = SIGNBIT;
;	genAssign
;	AOP_STK for ___fsadd_sign_1_1
	ld	-24(ix),#0x00
	ld	-23(ix),#0x00
	ld	-22(ix),#0x00
	ld	-21(ix),#0x80
;	genGoto
	jr	00121$
;	genLabel
00119$:
;_fsadd.c:208: else if (!mant1)
;	genIfx
;	AOP_STK for ___fsadd_mant1_1_1
	ld	a,-4(ix)
	or	a,-3(ix)
	or	a,-2(ix)
	or	a,-1(ix)
	jr	NZ,00121$
;_fsadd.c:209: return (0);
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 4
	ld	hl,#0x0000
	ld	de,#0x0000
	jp	00129$
;_fsadd.c:212: while (mant1<HIDDEN) {
;	genLabel
00121$:
;	genAssign
;	AOP_STK for ___fsadd_mant1_1_1
	ld	c,-4(ix)
	ld	b,-3(ix)
	ld	e,-2(ix)
	ld	d,-1(ix)
;	genCmpLt
	ld	a,c
	sub	a,#0x00
	ld	a,b
	sbc	a,#0x00
	ld	a,e
	sbc	a,#0x80
	ld	a,d
	sbc	a,#0x00
	jr	NC,00126$
;_fsadd.c:213: mant1 <<= 1;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,#0x01
	push	af
	inc	sp
;	genIpush
;	AOP_STK for ___fsadd_mant1_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	push	hl
	ld	l,-4(ix)
	ld	h,-3(ix)
	push	hl
;	genCall
	call	__rlslong_rrx_s
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	inc	sp
;	genAssign
;	AOP_STK for ___fsadd_mant1_1_1
	ld	-4(ix),c
	ld	-3(ix),b
	ld	-2(ix),e
	ld	-1(ix),d
;_fsadd.c:214: exp1--;
;	genMinus
;	AOP_STK for ___fsadd_exp1_1_1
	ld	l,-18(ix)
	ld	h,-17(ix)
	dec	hl
	ld	-18(ix),l
	ld	-17(ix),h
;	genGoto
	jr	00121$
;_fsadd.c:218: while (mant1 & 0xff000000) {
;	genLabel
00126$:
;	genAssign
;	AOP_STK for ___fsadd_mant1_1_1
	ld	c,-4(ix)
	ld	b,-3(ix)
	ld	e,-2(ix)
	ld	d,-1(ix)
;	genAnd
	ld	a,d
	or	a,a
	jr	Z,00128$
;_fsadd.c:219: if (mant1&1)
;	genAnd
;	AOP_STK for ___fsadd_mant1_1_1
	ld	a,-4(ix)
	and	a,#0x01
	jr	Z,00125$
;_fsadd.c:220: mant1 += 2;
;	genPlus
;	AOP_STK for ___fsadd_mant1_1_1
;	genPlusIncr
	ld	a,-4(ix)
	add	a,#0x02
	ld	-4(ix),a
	ld	a,-3(ix)
	adc	a,#0x00
	ld	-3(ix),a
	ld	a,-2(ix)
	adc	a,#0x00
	ld	-2(ix),a
	ld	a,-1(ix)
	adc	a,#0x00
	ld	-1(ix),a
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
	ld	l,-2(ix)
	ld	h,-1(ix)
	push	hl
	ld	l,-4(ix)
	ld	h,-3(ix)
	push	hl
;	genCall
	call	__rrslong_rrx_s
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	inc	sp
;	genAssign
;	AOP_STK for ___fsadd_mant1_1_1
	ld	-4(ix),c
	ld	-3(ix),b
	ld	-2(ix),e
	ld	-1(ix),d
;_fsadd.c:222: exp1++;
;	genPlus
;	AOP_STK for ___fsadd_exp1_1_1
;	genPlusIncr
	inc	-18(ix)
	jr	NZ,00147$
	inc	-17(ix)
00147$:
;	genGoto
	jp	00126$
;	genLabel
00128$:
;_fsadd.c:226: mant1 &= ~HIDDEN;
;	genAssign
;	AOP_STK for ___fsadd_mant1_1_1
	ld	c,-4(ix)
	ld	b,-3(ix)
	ld	e,-2(ix)
	ld	d,-1(ix)
;	genAnd
;	AOP_STK for ___fsadd_mant1_1_1
	ld	-4(ix),c
	ld	-3(ix),b
	ld	a,e
	and	a,#0x7F
	ld	-2(ix),a
	ld	-1(ix),d
;_fsadd.c:229: fl1.l = PACK (sign, (unsigned long) exp1, mant1);
;	genAddrOf
;	AOP_STK for ___fsadd__1_0
	ld	hl,#0x0012
	add	hl,sp
	ld	-26(ix),l
	ld	-25(ix),h
;	genCast
;	AOP_STK for ___fsadd_exp1_1_1
	ld	e,-18(ix)
	ld	d,-17(ix)
	ld	a,-17(ix)
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
;	AOP_STK for ___fsadd_sign_1_1
;	AOP_STK for ___fsadd__1_0
	ld	a,-24(ix)
	or	a,c
	ld	-30(ix),a
	ld	a,-23(ix)
	or	a,b
	ld	-29(ix),a
	ld	a,-22(ix)
	or	a,e
	ld	-28(ix),a
	ld	a,-21(ix)
	or	a,d
	ld	-27(ix),a
;	genAssign
;	AOP_STK for ___fsadd_mant1_1_1
	ld	c,-4(ix)
	ld	b,-3(ix)
	ld	e,-2(ix)
	ld	d,-1(ix)
;	genOr
;	AOP_STK for ___fsadd__1_0
	ld	a,c
	or	a,-30(ix)
	ld	c,a
	ld	a,b
	or	a,-29(ix)
	ld	b,a
	ld	a,e
	or	a,-28(ix)
	ld	e,a
	ld	a,d
	or	a,-27(ix)
	ld	d,a
;	genAssign (pointer)
;	AOP_STK for ___fsadd__1_0
;	isBitvar = 0
	ld	l,-26(ix)
	ld	h,-25(ix)
	ld	(hl),c
	inc	hl
	ld	(hl),b
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
;_fsadd.c:231: return (fl1.f);
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
00129$:
;	genEndFunction
	ld	sp,ix
	pop	ix
	ret
___fsadd_end::
	.area _CODE
	.area _CABS
