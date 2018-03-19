;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module _fs2uint
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fs2uint
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
	lda	sp,-4(sp)
;_fs2uint.c:46: unsigned long ul=__fs2ulong(f);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	lda	hl,8(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,8(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	___fs2ulong
;	AOP_STK for ___fs2uint_ul_1_1
	push	hl
	lda	hl,6(sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	lda	sp,4(sp)
;	genAssign
;	AOP_STK for ___fs2uint_ul_1_1
;	(registers are the same)
;_fs2uint.c:47: if (ul>=UINT_MAX) return UINT_MAX;
;	genCmpLt
;	AOP_STK for ___fs2uint_ul_1_1
	lda	hl,0(sp)
	ld	a,(hl)
	sub	a,#0xFF
	inc	hl
	ld	a,(hl)
	sbc	a,#0xFF
	inc	hl
	ld	a,(hl)
	sbc	a,#0x00
	inc	hl
	ld	a,(hl)
	sbc	a,#0x00
	jp	C,00102$
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 2
	ld	de,#0xFFFF
	jp	00103$
;	genLabel
00102$:
;_fs2uint.c:48: return ul;
;	genCast
;	AOP_STK for ___fs2uint_ul_1_1
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genRet
; Dump of IC_LEFT: type AOP_STR size 2
;	genLabel
00103$:
;	genEndFunction
	lda	sp,4(sp)
	ret
___fs2uint_end::
	.area _CODE
	.area _CABS
