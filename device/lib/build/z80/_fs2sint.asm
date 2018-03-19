;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:00 2018
;--------------------------------------------------------
	.module _fs2sint
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fs2sint
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
;_fs2sint.c:71: signed int __fs2sint (float f)
;	genLabel
;	genFunction
;	---------------------------------
; Function __fs2sint
; ---------------------------------
___fs2sint_start::
___fs2sint:
	push	ix
	ld	ix,#0
	add	ix,sp
;_fs2sint.c:73: signed long sl=__fs2slong(f);
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
;	(registers are the same)
;_fs2sint.c:74: if (sl>=INT_MAX)
;	genCmpLt
	ld	a,c
	sub	a,#0xFF
	ld	a,b
	sbc	a,#0x7F
	ld	a,e
	sbc	a,#0x00
	ld	a,d
	sbc	a,#0x00
	jp	M,00102$
;_fs2sint.c:75: return INT_MAX;
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 2
	ld	hl,#0x7FFF
	jr	00105$
;	genLabel
00102$:
;_fs2sint.c:76: if (sl<=INT_MIN)
;	genCmpGt
	ld	a,#0x00
	sub	a,c
	ld	a,#0x80
	sbc	a,b
	ld	a,#0xFF
	sbc	a,e
	ld	a,#0xFF
	sbc	a,d
	jp	M,00104$
;_fs2sint.c:77: return -INT_MIN;
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 2
	ld	hl,#0xFFFF8000
	jr	00105$
;	genLabel
00104$:
;_fs2sint.c:78: return sl;
;	genCast
	ld	l,c
	ld	h,b
;	genRet
; Dump of IC_LEFT: type AOP_STR size 2
;	genLabel
00105$:
;	genEndFunction
	pop	ix
	ret
___fs2sint_end::
	.area _CODE
	.area _CABS
