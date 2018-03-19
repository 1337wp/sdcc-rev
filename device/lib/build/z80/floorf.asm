;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module floorf
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _floorf
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
;floorf.c:23: float floorf (float x) _FLOAT_FUNC_REENTRANT
;	genLabel
;	genFunction
;	---------------------------------
; Function floorf
; ---------------------------------
_floorf_start::
_floorf:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-4
	add	hl,sp
	ld	sp,hl
;floorf.c:26: r=x;
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
;	AOP_STK for _floorf_r_1_1
	ld	-4(ix),c
	ld	-3(ix),b
	ld	-2(ix),e
	ld	-1(ix),d
;floorf.c:27: if (r<=0)
;	genCmpGt
;	AOP_STK for _floorf_r_1_1
	ld	a,#0x00
	sub	a,-4(ix)
	ld	a,#0x00
	sbc	a,-3(ix)
	ld	a,#0x00
	sbc	a,-2(ix)
	ld	a,#0x00
	sbc	a,-1(ix)
	jp	M,00102$
;floorf.c:28: return (r+((r>x)?-1:0));
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _floorf_r_1_1
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
	call	___fsgt
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
	ld	c,#0xFF
;	genGoto
	jr	00107$
;	genLabel
00106$:
;	genAssign
	ld	c,#0x00
;	genLabel
00107$:
;	genCast
	ld	a,c
	rla	
	sbc	a,a
	ld	b,a
	ld	e,a
	ld	d,a
;	genPlus
;	AOP_STK for _floorf_r_1_1
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
	jr	00104$
;	genLabel
00102$:
;floorf.c:30: return r;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _floorf_r_1_1
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
_floorf_end::
	.area _CODE
	.area _CABS
