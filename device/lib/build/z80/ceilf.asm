;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module ceilf
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ceilf
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
;ceilf.c:23: float ceilf(float x) _FLOAT_FUNC_REENTRANT
;	genLabel
;	genFunction
;	---------------------------------
; Function ceilf
; ---------------------------------
_ceilf_start::
_ceilf:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-8
	add	hl,sp
	ld	sp,hl
;ceilf.c:26: r=x;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	ld	l,6(ix)
	ld	h,7(ix)
	push	hl
	ld	l,4(ix)
	ld	h,5(ix)
	push	hl
;	genCall
	call	___fs2slong
	ld	b,h
	ld	c,l
	pop	af
	pop	af
;	genAssign
;	AOP_STK for _ceilf_r_1_1
	ld	-4(ix),c
	ld	-3(ix),b
	ld	-2(ix),e
	ld	-1(ix),d
;ceilf.c:27: if (r<0)
;	genCmpLt
;	AOP_STK for _ceilf_r_1_1
	ld	a,-1(ix)
	bit	7,a
	jr	Z,00102$
;ceilf.c:28: return r;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _ceilf_r_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	push	hl
	ld	l,-4(ix)
	ld	h,-3(ix)
	push	hl
;	genCall
	call	___slong2fs
;	AOP_STK for _ceilf__1_0
	ld	-5(ix),d
	ld	-6(ix),e
	ld	-7(ix),h
	ld	-8(ix),l
	pop	af
	pop	af
;	genRet
;	AOP_STK for _ceilf__1_0
; Dump of IC_LEFT: type AOP_STK size 4
;	 aop_stk -8
	ld	l,-8(ix)
	ld	h,-7(ix)
	ld	e,-6(ix)
	ld	d,-5(ix)
	jp	00104$
;	genLabel
00102$:
;ceilf.c:30: return (r+((r<x)?1:0));
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _ceilf_r_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	push	hl
	ld	l,-4(ix)
	ld	h,-3(ix)
	push	hl
;	genCall
	call	___slong2fs
	ld	b,h
	ld	c,l
	pop	af
	pop	af
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	ld	l,6(ix)
	ld	h,7(ix)
	push	hl
	ld	l,4(ix)
	ld	h,5(ix)
	push	hl
;	genIpush
	ld	l,e
	ld	h,d
	push	hl
	ld	l,c
	ld	h,b
	push	hl
;	genCall
	call	___fslt
	ld	c,l
	pop	af
	pop	af
	pop	af
	pop	af
;	genIfx
	xor	a,a
	or	a,c
	jr	Z,00106$
;	genAssign
	ld	c,#0x01
;	genGoto
	jr	00107$
;	genLabel
00106$:
;	genAssign
	ld	c,#0x00
;	genLabel
00107$:
;	genCast
	ld	b,#0x00
;	genCast
	ld	a,b
	rla	
	sbc	a,a
	ld	e,a
	ld	d,a
;	genPlus
;	AOP_STK for _ceilf_r_1_1
	ld	a,-4(ix)
	add	a,c
	ld	c,a
	ld	a,-3(ix)
	adc	a,b
	ld	b,a
	ld	a,-2(ix)
	adc	a,e
	ld	e,a
	ld	a,-1(ix)
	adc	a,d
	ld	d,a
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	l,e
	ld	h,d
	push	hl
	ld	l,c
	ld	h,b
	push	hl
;	genCall
	call	___slong2fs
	ld	b,h
	ld	c,l
	pop	af
	pop	af
;	genRet
; Dump of IC_LEFT: type AOP_REG size 4
;	 reg = debc
	ld	l,c
	ld	h,b
;	genLabel
00104$:
;	genEndFunction
	ld	sp,ix
	pop	ix
	ret
_ceilf_end::
	.area _CODE
	.area _CABS
