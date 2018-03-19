;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:00 2018
;--------------------------------------------------------
	.module _fs2uint
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fs2uint
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
;_fs2uint.c:44: unsigned int __fs2uint (float f)
;	genLabel
;	genFunction
;	---------------------------------
; Function __fs2uint
; ---------------------------------
___fs2uint_start::
___fs2uint:
	push	ix
	ld	ix,#0
	add	ix,sp
;_fs2uint.c:46: unsigned long ul=__fs2ulong(f);
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
	call	___fs2ulong
	ld	b,h
	ld	c,l
	pop	af
	pop	af
;	genAssign
;	(registers are the same)
;_fs2uint.c:47: if (ul>=UINT_MAX) return UINT_MAX;
;	genCmpLt
	ld	a,c
	sub	a,#0xFF
	ld	a,b
	sbc	a,#0xFF
	ld	a,e
	sbc	a,#0x00
	ld	a,d
	sbc	a,#0x00
	jr	C,00102$
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 2
	ld	hl,#0xFFFF
	jr	00103$
;	genLabel
00102$:
;_fs2uint.c:48: return ul;
;	genCast
	ld	l,c
	ld	h,b
;	genRet
; Dump of IC_LEFT: type AOP_STR size 2
;	genLabel
00103$:
;	genEndFunction
	pop	ix
	ret
___fs2uint_end::
	.area _CODE
	.area _CABS
