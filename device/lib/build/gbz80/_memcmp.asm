;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module _memcmp
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memcmp
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
;_memcmp.c:26: int memcmp (
;	genLabel
;	genFunction
;	---------------------------------
; Function memcmp
; ---------------------------------
_memcmp_start::
_memcmp:
	lda	sp,-2(sp)
;_memcmp.c:32: if (!count)
;	genIfx
;	AOP_STK for 
	lda	hl,8(sp)
	ld	a,(hl+)
	or	a,(hl)
	jp	NZ,00112$
;_memcmp.c:33: return(0);
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 2
	ld	de,#0x0000
	jp	00107$
;_memcmp.c:35: while ( --count && *((char *)buf1) == *((char *)buf2) ) {
;	genLabel
00112$:
;	genAssign
;	AOP_STK for 
;	AOP_STK for _memcmp__1_0
	lda	hl,8(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,0(sp)
	ld	(hl+),a
	ld	(hl),e
;	genLabel
00104$:
;	genMinus
;	AOP_STK for _memcmp__1_0
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	dec	de
	dec	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
;	genIfx
;	AOP_STK for _memcmp__1_0
	dec	hl
	ld	a,(hl+)
	or	a,(hl)
	jp	Z,00106$
;	genAssign
;	(operands are equal 3)
;	genPointerGet
;	AOP_STK for 
	lda	hl,4(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	b,a
;	genAssign
;	(operands are equal 3)
;	genPointerGet
;	AOP_STK for 
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	c,a
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	a,b
	sub	c
	jp	NZ,00114$
	jr	00115$
00114$:
	jp	00106$
00115$:
;_memcmp.c:36: buf1 = (char *)buf1 + 1;
;	genAssign
;	AOP_STK for 
	lda	hl,4(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	ld	hl,#0x0001
	add	hl,bc
	ld	a,l
	ld	d,h
	lda	hl,4(sp)
	ld	(hl+),a
	ld	(hl),d
;_memcmp.c:37: buf2 = (char *)buf2 + 1;
;	genAssign
;	AOP_STK for 
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	ld	hl,#0x0001
	add	hl,bc
	ld	a,l
	ld	d,h
	lda	hl,6(sp)
	ld	(hl+),a
	ld	(hl),d
;	genGoto
	jp	00104$
;	genLabel
00106$:
;_memcmp.c:40: return( *((unsigned char *)buf1) - *((unsigned char *)buf2) );
;	genAssign
;	AOP_STK for 
	lda	hl,4(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPointerGet
	ld	a,(bc)
	ld	c,a
;	genCast
;	AOP_STK for _memcmp__1_0
	lda	hl,0(sp)
	ld	(hl),c
	inc	hl
	ld	(hl),#0x00
;	genAssign
;	AOP_STK for 
	lda	hl,6(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPointerGet
	ld	a,(bc)
	ld	c,a
;	genCast
	ld	b,#0x00
;	genMinus
;	AOP_STK for _memcmp__1_0
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
00107$:
;	genEndFunction
	lda	sp,2(sp)
	ret
_memcmp_end::
	.area _CODE
	.area _CABS
