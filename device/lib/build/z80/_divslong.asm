;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:00 2018
;--------------------------------------------------------
	.module _divslong
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __divslong
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
;_divslong.c:255: _divslong (long x, long y)
;	genLabel
;	genFunction
;	---------------------------------
; Function _divslong
; ---------------------------------
__divslong_start::
__divslong:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-10
	add	hl,sp
	ld	sp,hl
;_divslong.c:260: (y < 0 ? -y : y));
;	genCmpLt
;	AOP_STK for 
;	AOP_STK for __divslong__1_0
	ld	a,11(ix)
	rlca
	and	a,#0x01
;	genIfx
;	AOP_STK for __divslong__1_0
	ld	-10(ix),a
	or	a,a
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
;_divslong.c:259: r = _divulong((x < 0 ? -x : x),
;	genCmpLt
;	AOP_STK for 
;	AOP_STK for __divslong__1_0
	ld	a,7(ix)
	rlca
	and	a,#0x01
;	genIfx
;	AOP_STK for __divslong__1_0
	ld	-9(ix),a
	or	a,a
	jr	Z,00108$
;	genUminus
;	AOP_STK for 
;	AOP_STK for __divslong__1_0
	xor	a,a
	sbc	a,4(ix)
	ld	-8(ix),a
	ld	a,#0x00
	sbc	a,5(ix)
	ld	-7(ix),a
	ld	a,#0x00
	sbc	a,6(ix)
	ld	-6(ix),a
	ld	a,#0x00
	sbc	a,7(ix)
	ld	-5(ix),a
;	genGoto
	jr	00109$
;	genLabel
00108$:
;	genAssign
;	AOP_STK for 
;	AOP_STK for __divslong__1_0
	ld	a,4(ix)
	ld	-8(ix),a
	ld	a,5(ix)
	ld	-7(ix),a
	ld	a,6(ix)
	ld	-6(ix),a
	ld	a,7(ix)
	ld	-5(ix),a
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
;	AOP_STK for __divslong__1_0
	ld	l,-6(ix)
	ld	h,-5(ix)
	push	hl
	ld	l,-8(ix)
	ld	h,-7(ix)
	push	hl
;	genCall
	call	__divulong
	ld	c,d
	ld	b,e
	ld	d,h
	ld	e,l
	pop	af
	pop	af
	pop	af
	pop	af
;	genAssign
;	(registers are the same)
;	genAssign
;	AOP_STK for __divslong_r_1_1
	ld	-4(ix),e
	ld	-3(ix),d
	ld	-2(ix),b
	ld	-1(ix),c
;_divslong.c:261: if ( (x < 0) ^ (y < 0))
;	genXor
;	AOP_STK for __divslong__1_0
;	AOP_STK for __divslong__1_0
	ld	a,-9(ix)
;	genIfx
	xor	a,-10(ix)
	jr	Z,00102$
;_divslong.c:262: return -r;
;	genUminus
;	AOP_STK for __divslong_r_1_1
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
;_divslong.c:264: return r;
;	genRet
;	AOP_STK for __divslong_r_1_1
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
__divslong_end::
	.area _CODE
	.area _CABS
