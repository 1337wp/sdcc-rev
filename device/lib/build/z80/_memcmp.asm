;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module _memcmp
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memcmp
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
;_memcmp.c:26: int memcmp (
;	genLabel
;	genFunction
;	---------------------------------
; Function memcmp
; ---------------------------------
_memcmp_start::
_memcmp:
	push	ix
	ld	ix,#0
	add	ix,sp
;_memcmp.c:32: if (!count)
;	genIfx
;	AOP_STK for 
	ld	a,8(ix)
	or	a,9(ix)
	jr	NZ,00112$
;_memcmp.c:33: return(0);
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 2
	ld	hl,#0x0000
	jp	00107$
;_memcmp.c:35: while ( --count && *((char *)buf1) == *((char *)buf2) ) {
;	genLabel
00112$:
;	genAssign
;	AOP_STK for 
	ld	c,8(ix)
	ld	b,9(ix)
;	genLabel
00104$:
;	genMinus
	dec	bc
;	genIfx
	ld	a,c
	or	a,b
	jr	Z,00106$
;	genAssign
;	(operands are equal 3)
;	genPointerGet
;	AOP_STK for 
	ld	l,4(ix)
	ld	h,5(ix)
	ld	d,(hl)
;	genAssign
;	(operands are equal 3)
;	genPointerGet
;	AOP_STK for 
	ld	l,6(ix)
	ld	h,7(ix)
	ld	e,(hl)
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	a,d
	sub	e
	jr	Z,00115$
	jr	00106$
00115$:
;_memcmp.c:36: buf1 = (char *)buf1 + 1;
;	genAssign
;	AOP_STK for 
	ld	e,4(ix)
	ld	d,5(ix)
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	ld	a,e
	add	a,#0x01
	ld	4(ix),a
	ld	a,d
	adc	a,#0x00
	ld	5(ix),a
;_memcmp.c:37: buf2 = (char *)buf2 + 1;
;	genAssign
;	AOP_STK for 
	ld	e,6(ix)
	ld	d,7(ix)
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	ld	a,e
	add	a,#0x01
	ld	6(ix),a
	ld	a,d
	adc	a,#0x00
	ld	7(ix),a
;	genGoto
	jr	00104$
;	genLabel
00106$:
;_memcmp.c:40: return( *((unsigned char *)buf1) - *((unsigned char *)buf2) );
;	genAssign
;	AOP_STK for 
	ld	c,4(ix)
	ld	b,5(ix)
	push	bc
	pop	iy
;	genPointerGet
	ld	c,(iy)
;	genCast
	ld	b,#0x00
;	genAssign
;	AOP_STK for 
	ld	e,6(ix)
	ld	d,7(ix)
	push	de
	pop	iy
;	genPointerGet
	ld	e,(iy)
;	genCast
	ld	d,#0x00
;	genMinus
	ld	a,c
	sub	a,e
	ld	l,a
	ld	a,b
	sbc	a,d
	ld	h,a
;	genRet
; Dump of IC_LEFT: type AOP_STR size 2
;	genLabel
00107$:
;	genEndFunction
	pop	ix
	ret
_memcmp_end::
	.area _CODE
	.area _CABS
