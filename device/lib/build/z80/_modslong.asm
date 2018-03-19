;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:00 2018
;--------------------------------------------------------
	.module _modslong
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __modslong
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
;_modslong.c:255: _modslong (long a, long b)
;	genLabel
;	genFunction
;	---------------------------------
; Function _modslong
; ---------------------------------
__modslong_start::
__modslong:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-9
	add	hl,sp
	ld	sp,hl
;_modslong.c:260: (b < 0 ? -b : b));
;	genCmpLt
;	AOP_STK for 
	ld	a,11(ix)
	bit	7,a
	jr	Z,00106$
;	genUminus
;	AOP_STK for 
	xor	a,a
	sbc	a,8(ix)
	ld	c,a
	ld	a,#0x00
	sbc	a,9(ix)
	ld	b,a
	ld	a,#0x00
	sbc	a,10(ix)
	ld	e,a
	ld	a,#0x00
	sbc	a,11(ix)
	ld	d,a
;	genGoto
	jr	00107$
;	genLabel
00106$:
;	genAssign
;	AOP_STK for 
	ld	c,8(ix)
	ld	b,9(ix)
	ld	e,10(ix)
	ld	d,11(ix)
;	genLabel
00107$:
;	genAssign
;	(registers are the same)
;_modslong.c:259: r = _modulong((a < 0 ? -a : a),
;	genCmpLt
;	AOP_STK for 
;	AOP_STK for __modslong__1_0
	ld	a,7(ix)
	rlca
	and	a,#0x01
;	genIfx
;	AOP_STK for __modslong__1_0
	ld	-5(ix),a
	or	a,a
	jr	Z,00108$
;	genUminus
;	AOP_STK for 
;	AOP_STK for __modslong__1_0
	xor	a,a
	sbc	a,4(ix)
	ld	-9(ix),a
	ld	a,#0x00
	sbc	a,5(ix)
	ld	-8(ix),a
	ld	a,#0x00
	sbc	a,6(ix)
	ld	-7(ix),a
	ld	a,#0x00
	sbc	a,7(ix)
	ld	-6(ix),a
;	genGoto
	jr	00109$
;	genLabel
00108$:
;	genAssign
;	AOP_STK for 
;	AOP_STK for __modslong__1_0
	ld	a,4(ix)
	ld	-9(ix),a
	ld	a,5(ix)
	ld	-8(ix),a
	ld	a,6(ix)
	ld	-7(ix),a
	ld	a,7(ix)
	ld	-6(ix),a
;	genLabel
00109$:
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	l,e
	ld	h,d
	push	hl
	ld	l,c
	ld	h,b
	push	hl
;	genIpush
;	AOP_STK for __modslong__1_0
	ld	l,-7(ix)
	ld	h,-6(ix)
	push	hl
	ld	l,-9(ix)
	ld	h,-8(ix)
	push	hl
;	genCall
	call	__modulong
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	pop	af
	pop	af
;	genAssign
;	(registers are the same)
;	genAssign
;	AOP_STK for __modslong_r_1_1
	ld	-4(ix),c
	ld	-3(ix),b
	ld	-2(ix),e
	ld	-1(ix),d
;_modslong.c:261: if (a < 0)
;	genIfx
;	AOP_STK for __modslong__1_0
	xor	a,a
	or	a,-5(ix)
	jr	Z,00102$
;_modslong.c:262: return -r;
;	genUminus
;	AOP_STK for __modslong_r_1_1
	xor	a,a
	sbc	a,-4(ix)
	ld	c,a
	ld	a,#0x00
	sbc	a,-3(ix)
	ld	b,a
	ld	a,#0x00
	sbc	a,-2(ix)
	ld	e,a
	ld	a,#0x00
	sbc	a,-1(ix)
	ld	d,a
;	genRet
; Dump of IC_LEFT: type AOP_REG size 4
;	 reg = debc
	ld	l,c
	ld	h,b
	jr	00104$
;	genLabel
00102$:
;_modslong.c:264: return r;
;	genRet
;	AOP_STK for __modslong_r_1_1
; Dump of IC_LEFT: type AOP_STK size 4
;	 aop_stk -4
	ld	l,-4(ix)
	ld	h,-3(ix)
	ld	e,-2(ix)
	ld	d,-1(ix)
;	genLabel
00104$:
;	genEndFunction
	ld	sp,ix
	pop	ix
	ret
__modslong_end::
	.area _CODE
	.area _CABS
