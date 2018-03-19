;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module _fs2schar
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fs2schar
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
;_fs2schar.c:77: signed char __fs2schar (float f)
;	genLabel
;	genFunction
;	---------------------------------
; Function __fs2schar
; ---------------------------------
___fs2schar_start::
___fs2schar:
	lda	sp,-4(sp)
;_fs2schar.c:79: signed long sl=__fs2slong(f);
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
;	AOP_STK for ___fs2schar_sl_1_1
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
;	AOP_STK for ___fs2schar_sl_1_1
;	(registers are the same)
;_fs2schar.c:80: if (sl>=CHAR_MAX)
;	genCmpLt
;	AOP_STK for ___fs2schar_sl_1_1
	lda	hl,0(sp)
	ld	a,(hl)
	sub	a,#0x7F
	inc	hl
	ld	a,(hl)
	sbc	a,#0x00
	inc	hl
	ld	a,(hl)
	sbc	a,#0x00
	inc	hl
	ld	a,(hl)
	sbc	a,#0x00
	rlca
	jp	C,00102$
;_fs2schar.c:81: return CHAR_MAX;
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 1
	ld	e,#0x7F
	jp	00105$
;	genLabel
00102$:
;_fs2schar.c:82: if (sl<=CHAR_MIN)
;	genCmpGt
;	AOP_STK for ___fs2schar_sl_1_1
	ld	a,#0x80
	lda	hl,0(sp)
	sub	a,(hl)
	ld	a,#0xFF
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
;_fs2schar.c:83: return -CHAR_MIN;
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 1
	ld	e,#0x80
	jp	00105$
;	genLabel
00104$:
;_fs2schar.c:84: return sl;
;	genCast
;	AOP_STK for ___fs2schar_sl_1_1
	lda	hl,0(sp)
	ld	e,(hl)
;	genRet
; Dump of IC_LEFT: type AOP_STR size 1
;	genLabel
00105$:
;	genEndFunction
	lda	sp,4(sp)
	ret
___fs2schar_end::
	.area _CODE
	.area _CABS
