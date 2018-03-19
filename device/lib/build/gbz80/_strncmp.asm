;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module _strncmp
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strncmp
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
;_strncmp.c:26: int strncmp (
;	genLabel
;	genFunction
;	---------------------------------
; Function strncmp
; ---------------------------------
_strncmp_start::
_strncmp:
	lda	sp,-6(sp)
;_strncmp.c:32: if (!count)
;	genIfx
;	AOP_STK for 
	lda	hl,12(sp)
	ld	a,(hl+)
	or	a,(hl)
	jp	NZ,00114$
;_strncmp.c:33: return(0);
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 2
	ld	de,#0x0000
	jp	00108$
;_strncmp.c:35: while (--count && *first && *first == *last) {
;	genLabel
00114$:
;	genAssign
;	AOP_STK for 
;	AOP_STK for _strncmp__1_0
	lda	hl,8(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,0(sp)
	ld	(hl+),a
	ld	(hl),e
;	genAssign
;	AOP_STK for 
;	AOP_STK for _strncmp__1_0
	lda	hl,10(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,4(sp)
	ld	(hl+),a
	ld	(hl),e
;	genAssign
;	AOP_STK for 
;	AOP_STK for _strncmp__1_0
	lda	hl,12(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,2(sp)
	ld	(hl+),a
	ld	(hl),e
;	genLabel
00105$:
;	genMinus
;	AOP_STK for _strncmp__1_0
	lda	hl,2(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	dec	de
	dec	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
;	genIfx
;	AOP_STK for _strncmp__1_0
	dec	hl
	ld	a,(hl+)
	or	a,(hl)
	jp	Z,00107$
;	genPointerGet
;	AOP_STK for _strncmp__1_0
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genIfx
	ld	b,a
	or	a,a
	jp	Z,00107$
;	genPointerGet
;	AOP_STK for _strncmp__1_0
	lda	hl,4(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	c,a
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	a,b
	sub	c
	jp	NZ,00116$
	jr	00117$
00116$:
	jp	00107$
00117$:
;_strncmp.c:36: first++;
;	genPlus
;	AOP_STK for _strncmp__1_0
;	genPlusIncr
	lda	hl,0(sp)
	inc	(hl)
	jr	NZ,00118$
	inc	hl
	inc	(hl)
00118$:
;_strncmp.c:37: last++;
;	genPlus
;	AOP_STK for _strncmp__1_0
;	genPlusIncr
	lda	hl,4(sp)
	inc	(hl)
	jr	NZ,00119$
	inc	hl
	inc	(hl)
00119$:
;	genGoto
	jp	00105$
;	genLabel
00107$:
;_strncmp.c:40: return( *first - *last );
;	genPointerGet
;	AOP_STK for _strncmp__1_0
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	c,a
;	genCast
;	AOP_STK for _strncmp__1_0
	dec	hl
	ld	(hl),c
	ld	a,c
	rla	
	sbc	a,a
	inc	hl
	ld	(hl),a
;	genPointerGet
;	AOP_STK for _strncmp__1_0
	lda	hl,4(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genCast
	ld	c,a
	rla	
	sbc	a,a
	ld	b,a
;	genMinus
;	AOP_STK for _strncmp__1_0
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	sub	a,c
	ld	e,a
	ld	a,d
	sbc	a,b
	ld	d,a
;	genRet
; Dump of IC_LEFT: type AOP_STR size 2
;	genLabel
00108$:
;	genEndFunction
	lda	sp,6(sp)
	ret
_strncmp_end::
	.area _CODE
	.area _CABS
