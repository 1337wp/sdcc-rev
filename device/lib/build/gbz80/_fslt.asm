;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module _fslt
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fslt
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
;_fslt.c:98: char __fslt (float a1, float a2)
;	genLabel
;	genFunction
;	---------------------------------
; Function __fslt
; ---------------------------------
___fslt_start::
___fslt:
	lda	sp,-16(sp)
;_fslt.c:102: fl1.f = a1;
;	genAddrOf
	lda	hl,12(sp)
	ld	c,l
	ld	b,h
;	genAssign (pointer)
;	AOP_STK for 
;	isBitvar = 0
	ld	e,c
	ld	d,b
	lda	hl,18(sp)
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
;_fslt.c:103: fl2.f = a2;
;	genAddrOf
	lda	hl,8(sp)
	ld	c,l
	ld	b,h
;	genAssign (pointer)
;	AOP_STK for 
;	isBitvar = 0
	ld	e,c
	ld	d,b
	lda	hl,22(sp)
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
;_fslt.c:105: if (fl1.l<0 && fl2.l<0) {
;	genAddrOf
	lda	hl,12(sp)
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for ___fslt__1_0
	ld	e,c
	ld	d,b
	ld	a,(de)
	lda	hl,4(sp)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
;	genCmpLt
;	AOP_STK for ___fslt__1_0
	ld	(hl),a
	ld	a,a
	bit	7,a
	jp	Z,00104$
;	genAddrOf
	lda	hl,8(sp)
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for ___fslt__1_0
	ld	e,c
	ld	d,b
	ld	a,(de)
	lda	hl,4(sp)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
;	genCmpLt
;	AOP_STK for ___fslt__1_0
	ld	(hl),a
	ld	a,a
	bit	7,a
	jp	Z,00104$
;_fslt.c:106: if (fl2.l < fl1.l)
;	genAddrOf
	lda	hl,8(sp)
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for ___fslt__1_0
	ld	e,c
	ld	d,b
	ld	a,(de)
	lda	hl,4(sp)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
;	genAddrOf
	lda	hl,12(sp)
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for ___fslt__1_0
	ld	e,c
	ld	d,b
	ld	a,(de)
	lda	hl,0(sp)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
;	genCmpLt
;	AOP_STK for ___fslt__1_0
;	AOP_STK for ___fslt__1_0
	ld	(hl+),a
	ld	d,h
	ld	e,l
	lda	hl,0(sp)
	ld	a,(de)
	sub	a,(hl)
	inc	hl
	inc	de
	ld	a,(de)
	sbc	a,(hl)
	inc	hl
	inc	de
	ld	a,(de)
	sbc	a,(hl)
	inc	hl
	inc	de
	ld	a,(de)
	sbc	a,(hl)
	rlca
	jp	NC,00102$
;_fslt.c:107: return (1);
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 1
	ld	e,#0x01
	jp	00108$
;	genLabel
00102$:
;_fslt.c:108: return (0);
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 1
	ld	e,#0x00
	jp	00108$
;	genLabel
00104$:
;_fslt.c:111: if (fl1.l < fl2.l)
;	genAddrOf
	lda	hl,12(sp)
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for ___fslt__1_0
	ld	e,c
	ld	d,b
	ld	a,(de)
	lda	hl,0(sp)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
;	genAddrOf
	lda	hl,8(sp)
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for ___fslt__1_0
	ld	e,c
	ld	d,b
	ld	a,(de)
	lda	hl,4(sp)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
;	genCmpLt
;	AOP_STK for ___fslt__1_0
;	AOP_STK for ___fslt__1_0
	lda	hl,0(sp)
	ld	d,h
	ld	e,l
	lda	hl,4(sp)
	ld	a,(de)
	sub	a,(hl)
	inc	hl
	inc	de
	ld	a,(de)
	sbc	a,(hl)
	inc	hl
	inc	de
	ld	a,(de)
	sbc	a,(hl)
	inc	hl
	inc	de
	ld	a,(de)
	sbc	a,(hl)
	rlca
	jp	NC,00107$
;_fslt.c:112: return (1);
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 1
	ld	e,#0x01
	jp	00108$
;	genLabel
00107$:
;_fslt.c:113: return (0);
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 1
	ld	e,#0x00
;	genLabel
00108$:
;	genEndFunction
	lda	sp,16(sp)
	ret
___fslt_end::
	.area _CODE
	.area _CABS
