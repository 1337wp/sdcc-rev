;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:00 2018
;--------------------------------------------------------
	.module _ulong2fs
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___ulong2fs
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
;_ulong2fs.c:73: float __ulong2fs (unsigned long a )
;	genLabel
;	genFunction
;	---------------------------------
; Function __ulong2fs
; ---------------------------------
___ulong2fs_start::
___ulong2fs:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-10
	add	hl,sp
	ld	sp,hl
;_ulong2fs.c:78: if (!a)
;	genIfx
;	AOP_STK for 
	ld	a,4(ix)
	or	a,5(ix)
	or	a,6(ix)
	or	a,7(ix)
	jr	NZ,00115$
;_ulong2fs.c:80: return 0.0;
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 4
	ld	hl,#0x0000
	ld	de,#0x0000
	jp	00111$
;_ulong2fs.c:83: while (a & NORM) 
;	genLabel
00115$:
;	genAssign
;	AOP_STK for ___ulong2fs_exp_1_1
	ld	-2(ix),#0x96
	ld	-1(ix),#0x00
;	genLabel
00103$:
;	genAnd
;	AOP_STK for 
	ld	a,7(ix)
	or	a,a
	jr	Z,00117$
;_ulong2fs.c:86: a >>= 1;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,#0x01
	push	af
	inc	sp
;	genIpush
;	AOP_STK for 
	ld	l,6(ix)
	ld	h,7(ix)
	push	hl
	ld	l,4(ix)
	ld	h,5(ix)
	push	hl
;	genCall
	call	__rrulong_rrx_s
	ld	b,d
	ld	c,e
	ld	d,h
	ld	e,l
	pop	af
	pop	af
	inc	sp
;	genAssign
;	AOP_STK for 
	ld	4(ix),e
	ld	5(ix),d
	ld	6(ix),c
	ld	7(ix),b
;_ulong2fs.c:87: exp++;
;	genPlus
;	AOP_STK for ___ulong2fs_exp_1_1
;	genPlusIncr
	inc	-2(ix)
	jr	NZ,00122$
	inc	-1(ix)
00122$:
;	genGoto
	jr	00103$
;_ulong2fs.c:90: while (a < HIDDEN)
;	genLabel
00117$:
;	genAssign
;	AOP_STK for ___ulong2fs_exp_1_1
;	(registers are the same)
;	genLabel
00106$:
;	genCmpLt
;	AOP_STK for 
	ld	a,4(ix)
	sub	a,#0x00
	ld	a,5(ix)
	sbc	a,#0x00
	ld	a,6(ix)
	sbc	a,#0x80
	ld	a,7(ix)
	sbc	a,#0x00
	jr	NC,00120$
;_ulong2fs.c:92: a <<= 1;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,#0x01
	push	af
	inc	sp
;	genIpush
;	AOP_STK for 
	ld	l,6(ix)
	ld	h,7(ix)
	push	hl
	ld	l,4(ix)
	ld	h,5(ix)
	push	hl
;	genCall
	call	__rlulong_rrx_s
	ld	b,d
	ld	c,e
	ld	d,h
	ld	e,l
	pop	af
	pop	af
	inc	sp
;	genAssign
;	AOP_STK for 
	ld	4(ix),e
	ld	5(ix),d
	ld	6(ix),c
	ld	7(ix),b
;_ulong2fs.c:93: exp--;
;	genMinus
;	AOP_STK for ___ulong2fs_exp_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	dec	hl
	ld	-2(ix),l
	ld	-1(ix),h
;	genGoto
	jr	00106$
;	genLabel
00120$:
;	genAssign
;	AOP_STK for ___ulong2fs_exp_1_1
;	AOP_STK for ___ulong2fs__1_0
	ld	a,-2(ix)
	ld	-8(ix),a
	ld	a,-1(ix)
	ld	-7(ix),a
;_ulong2fs.c:97: if ((a&0x7fffff)==0x7fffff) {
;	genAnd
;	AOP_STK for 
	ld	e,4(ix)
	ld	d,5(ix)
	ld	a,6(ix)
	and	a,#0x7F
	ld	c,a
	ld	b,#0x00
;	genCmpEq
; genCmpEq: left 4, right 4, result 0
	ld	a,e
	inc	a
	jr	NZ,00123$
	ld	a,d
	inc	a
	jr	NZ,00123$
	ld	a,c
	sub	a,#0x7F
	jr	NZ,00123$
	or	a,b
	jr	Z,00124$
00123$:
	jr	00110$
00124$:
;_ulong2fs.c:98: a=0;
;	genAssign
;	AOP_STK for 
	xor	a,a
	ld	4(ix),a
	ld	5(ix),a
	ld	6(ix),a
	ld	7(ix),a
;_ulong2fs.c:99: exp++;
;	genPlus
;	AOP_STK for ___ulong2fs_exp_1_1
;	AOP_STK for ___ulong2fs__1_0
;	genPlusIncr
	ld	a,-2(ix)
	add	a,#0x01
	ld	-8(ix),a
	ld	a,-1(ix)
	adc	a,#0x00
	ld	-7(ix),a
;	genLabel
00110$:
;_ulong2fs.c:103: a &= ~HIDDEN ;
;	genAnd
;	AOP_STK for 
	ld	a,6(ix)
	and	a,#0x7F
	ld	6(ix),a
;_ulong2fs.c:105: fl.l = PACK(0,(unsigned long)exp, a);
;	genAddrOf
;	AOP_STK for ___ulong2fs__1_0
	ld	hl,#0x0004
	add	hl,sp
	ld	-10(ix),l
	ld	-9(ix),h
;	genCast
;	AOP_STK for ___ulong2fs__1_0
	ld	e,-8(ix)
	ld	d,-7(ix)
	ld	a,-7(ix)
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
;	AOP_STK for 
	ld	a,c
	or	a,4(ix)
	ld	c,a
	ld	a,b
	or	a,5(ix)
	ld	b,a
	ld	a,e
	or	a,6(ix)
	ld	e,a
	ld	a,d
	or	a,7(ix)
	ld	d,a
;	genAssign (pointer)
;	AOP_STK for ___ulong2fs__1_0
;	isBitvar = 0
	ld	l,-10(ix)
	ld	h,-9(ix)
	ld	(hl),c
	inc	hl
	ld	(hl),b
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
;_ulong2fs.c:107: return (fl.f);
;	genAddrOf
	ld	hl,#0x0004
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
00111$:
;	genEndFunction
	ld	sp,ix
	pop	ix
	ret
___ulong2fs_end::
	.area _CODE
	.area _CABS
