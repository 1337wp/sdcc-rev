;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module ldexpf
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ldexpf
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
;ldexpf.c:24: float ldexpf(const float x, const int pw2)
;	genLabel
;	genFunction
;	---------------------------------
; Function ldexpf
; ---------------------------------
_ldexpf_start::
_ldexpf:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-14
	add	hl,sp
	ld	sp,hl
;ldexpf.c:29: fl.f = x;
;	genAddrOf
	ld	hl,#0x000A
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
;ldexpf.c:31: e=(fl.l >> 23) & 0x000000ff;
;	genAddrOf
;	AOP_STK for _ldexpf__1_0
	ld	hl,#0x000A
	add	hl,sp
	ld	-10(ix),l
	ld	-9(ix),h
;	genPointerGet
;	AOP_STK for _ldexpf__1_0
	ld	l,-10(ix)
	ld	h,-9(ix)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
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
	call	__rrslong_rrx_s
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	inc	sp
;	genAnd
;	AOP_STK for _ldexpf_e_1_1
	ld	-8(ix),c
	ld	-7(ix),#0x00
	ld	-6(ix),#0x00
	ld	-5(ix),#0x00
;ldexpf.c:32: e+=pw2;
;	genCast
;	AOP_STK for 
	ld	c,8(ix)
	ld	b,9(ix)
	ld	a,9(ix)
	rla	
	sbc	a,a
	ld	e,a
	ld	d,a
;	genPlus
;	AOP_STK for _ldexpf_e_1_1
	ld	a,-8(ix)
	add	a,c
	ld	-8(ix),a
	ld	a,-7(ix)
	adc	a,b
	ld	-7(ix),a
	ld	a,-6(ix)
	adc	a,e
	ld	-6(ix),a
	ld	a,-5(ix)
	adc	a,d
	ld	-5(ix),a
;ldexpf.c:33: fl.l= ((e & 0xff) << 23) | (fl.l & 0x807fffff);
;	genAnd
;	AOP_STK for _ldexpf_e_1_1
	ld	c,-8(ix)
	ld	b,#0x00
	ld	de,#0x0000
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
	call	__rlslong_rrx_s
;	AOP_STK for _ldexpf__1_0
	ld	-11(ix),d
	ld	-12(ix),e
	ld	-13(ix),h
	ld	-14(ix),l
	pop	af
	pop	af
	inc	sp
;	genPointerGet
;	AOP_STK for _ldexpf__1_0
	ld	l,-10(ix)
	ld	h,-9(ix)
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
	ld	a,d
	and	a,#0x80
	ld	d,a
;	genOr
;	AOP_STK for _ldexpf__1_0
	ld	a,c
	or	a,-14(ix)
	ld	c,a
	ld	a,b
	or	a,-13(ix)
	ld	b,a
	ld	a,e
	or	a,-12(ix)
	ld	e,a
	ld	a,d
	or	a,-11(ix)
	ld	d,a
;	genAssign (pointer)
;	AOP_STK for _ldexpf__1_0
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
;ldexpf.c:35: return(fl.f);
;	genAddrOf
	ld	hl,#0x000A
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
;	genEndFunction
	ld	sp,ix
	pop	ix
	ret
_ldexpf_end::
	.area _CODE
	.area _CABS
