;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module _fseq
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fseq
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
;_fseq.c:73: __fseq (float a1, float a2)
;	genLabel
;	genFunction
;	---------------------------------
; Function __fseq
; ---------------------------------
___fseq_start::
___fseq:
	lda	sp,-16(sp)
;_fseq.c:77: fl1.f = a1;
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
;_fseq.c:78: fl2.f = a2;
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
;_fseq.c:80: if (fl1.l == fl2.l)
;	genAddrOf
	lda	hl,12(sp)
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for ___fseq__1_0
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
	lda	hl,8(sp)
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for ___fseq__1_0
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
;	genCmpEq
;	AOP_STK for ___fseq__1_0
;	AOP_STK for ___fseq__1_0
; genCmpEq: left 4, right 4, result 0
	ld	(hl+),a
	ld	a,(hl)
	lda	hl,0(sp)
	sub	(hl)
	jp	NZ,00106$
	lda	hl,5(sp)
	ld	a,(hl)
	lda	hl,1(sp)
	sub	(hl)
	jp	NZ,00106$
	lda	hl,6(sp)
	ld	a,(hl)
	lda	hl,2(sp)
	sub	(hl)
	jp	NZ,00106$
	lda	hl,7(sp)
	ld	a,(hl)
	lda	hl,3(sp)
	sub	(hl)
	jp	NZ,00106$
	jr	00107$
00106$:
	jp	00102$
00107$:
;_fseq.c:81: return (1);
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 1
	ld	e,#0x01
	jp	00103$
;	genLabel
00102$:
;_fseq.c:82: return (0);
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 1
	ld	e,#0x00
;	genLabel
00103$:
;	genEndFunction
	lda	sp,16(sp)
	ret
___fseq_end::
	.area _CODE
	.area _CABS
