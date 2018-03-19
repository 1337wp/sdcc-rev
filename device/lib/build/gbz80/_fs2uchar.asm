;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module _fs2uchar
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fs2uchar
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
;_fs2uchar.c:41: unsigned char __fs2uchar (float f)
;	genLabel
;	genFunction
;	---------------------------------
; Function __fs2uchar
; ---------------------------------
___fs2uchar_start::
___fs2uchar:
	lda	sp,-4(sp)
;_fs2uchar.c:43: unsigned long ul=__fs2ulong(f);
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
;	AOP_STK for ___fs2uchar_ul_1_1
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
;	AOP_STK for ___fs2uchar_ul_1_1
;	(registers are the same)
;_fs2uchar.c:44: if (ul>=UCHAR_MAX) return UCHAR_MAX;
;	genCmpLt
;	AOP_STK for ___fs2uchar_ul_1_1
	lda	hl,0(sp)
	ld	a,(hl)
	sub	a,#0xFF
	inc	hl
	ld	a,(hl)
	sbc	a,#0x00
	inc	hl
	ld	a,(hl)
	sbc	a,#0x00
	inc	hl
	ld	a,(hl)
	sbc	a,#0x00
	jp	C,00102$
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 1
	ld	e,#0xFF
	jp	00103$
;	genLabel
00102$:
;_fs2uchar.c:45: return ul;
;	genCast
;	AOP_STK for ___fs2uchar_ul_1_1
	lda	hl,0(sp)
	ld	e,(hl)
;	genRet
; Dump of IC_LEFT: type AOP_STR size 1
;	genLabel
00103$:
;	genEndFunction
	lda	sp,4(sp)
	ret
___fs2uchar_end::
	.area _CODE
	.area _CABS
