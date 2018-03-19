;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module _fs2sint
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fs2sint
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
	lda	sp,-4(sp)
;_fs2sint.c:73: signed long sl=__fs2slong(f);
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
	call	___fs2slong
;	AOP_STK for ___fs2sint_sl_1_1
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
;	AOP_STK for ___fs2sint_sl_1_1
;	(registers are the same)
;_fs2sint.c:74: if (sl>=INT_MAX)
;	genCmpLt
;	AOP_STK for ___fs2sint_sl_1_1
	lda	hl,0(sp)
	ld	a,(hl)
	sub	a,#0xFF
	inc	hl
	ld	a,(hl)
	sbc	a,#0x7F
	inc	hl
	ld	a,(hl)
	sbc	a,#0x00
	inc	hl
	ld	a,(hl)
	sbc	a,#0x00
	rlca
	jp	C,00102$
;_fs2sint.c:75: return INT_MAX;
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 2
	ld	de,#0x7FFF
	jp	00105$
;	genLabel
00102$:
;_fs2sint.c:76: if (sl<=INT_MIN)
;	genCmpGt
;	AOP_STK for ___fs2sint_sl_1_1
	ld	a,#0x00
	lda	hl,0(sp)
	sub	a,(hl)
	ld	a,#0x80
	inc	hl
	sbc	a,(hl)
	ld	a,#0xFF
	inc	hl
	sbc	a,(hl)
	ld	a,#0xFF
	inc	hl
	sbc	a,(hl)
	rlca
	jp	C,00104$
;_fs2sint.c:77: return -INT_MIN;
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 2
	ld	de,#0xFFFF8000
	jp	00105$
;	genLabel
00104$:
;_fs2sint.c:78: return sl;
;	genCast
;	AOP_STK for ___fs2sint_sl_1_1
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genRet
; Dump of IC_LEFT: type AOP_STR size 2
;	genLabel
00105$:
;	genEndFunction
	lda	sp,4(sp)
	ret
___fs2sint_end::
	.area _CODE
	.area _CABS
