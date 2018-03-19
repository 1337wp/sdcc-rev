;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module asinf
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _asinf
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
;asinf.c:25: float asinf(const float x) _FLOAT_FUNC_REENTRANT
;	genLabel
;	genFunction
;	---------------------------------
; Function asinf
; ---------------------------------
_asinf_start::
_asinf:
	push	ix
	ld	ix,#0
	add	ix,sp
;asinf.c:27: if(x== 1.0) return  HALF_PI;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x3F80
	push	hl
	ld	hl,#0x0000
	push	hl
;	genIpush
;	AOP_STK for 
	ld	l,6(ix)
	ld	h,7(ix)
	push	hl
	ld	l,4(ix)
	ld	h,5(ix)
	push	hl
;	genCall
	call	___fseq
	ld	c,l
	pop	af
	pop	af
	pop	af
	pop	af
;	genIfx
	xor	a,a
	or	a,c
	jr	Z,00108$
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 4
	ld	hl,#0x0FDB
	ld	de,#0x3FC9
	jp	00110$
;	genLabel
00108$:
;asinf.c:28: else if(x==-1.0) return -HALF_PI;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0xBF80
	push	hl
	ld	hl,#0x0000
	push	hl
;	genIpush
;	AOP_STK for 
	ld	l,6(ix)
	ld	h,7(ix)
	push	hl
	ld	l,4(ix)
	ld	h,5(ix)
	push	hl
;	genCall
	call	___fseq
	ld	c,l
	pop	af
	pop	af
	pop	af
	pop	af
;	genIfx
	xor	a,a
	or	a,c
	jr	Z,00105$
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 4
	ld	hl,#0x0FDB
	ld	de,#0xBFC9
	jr	00110$
;	genLabel
00105$:
;asinf.c:29: else if(x== 0.0) return 0.0;
;	genIfx
;	AOP_STK for 
	ld	a,4(ix)
	or	a,5(ix)
	or	a,6(ix)
	or	a,7(ix)
	jr	NZ,00102$
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 4
	ld	hl,#0x0000
	ld	de,#0x0000
	jr	00110$
;	genLabel
00102$:
;asinf.c:30: else return asincosf(x,0);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x0000
	push	hl
;	genIpush
;	AOP_STK for 
	ld	l,6(ix)
	ld	h,7(ix)
	push	hl
	ld	l,4(ix)
	ld	h,5(ix)
	push	hl
;	genCall
	call	_asincosf
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	pop	af
;	genRet
; Dump of IC_LEFT: type AOP_REG size 4
;	 reg = debc
	ld	l,c
	ld	h,b
;	genLabel
00110$:
;	genEndFunction
	pop	ix
	ret
_asinf_end::
	.area _CODE
	.area _CABS
