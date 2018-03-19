;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:00 2018
;--------------------------------------------------------
	.module _strncmp
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strncmp
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
;_strncmp.c:26: int strncmp (
;	genLabel
;	genFunction
;	---------------------------------
; Function strncmp
; ---------------------------------
_strncmp_start::
_strncmp:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-4
	add	hl,sp
	ld	sp,hl
;_strncmp.c:32: if (!count)
;	genIfx
;	AOP_STK for 
	ld	a,8(ix)
	or	a,9(ix)
	jr	NZ,00114$
;_strncmp.c:33: return(0);
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 2
	ld	hl,#0x0000
	jp	00108$
;_strncmp.c:35: while (--count && *first && *first == *last) {
;	genLabel
00114$:
;	genAssign
;	AOP_STK for 
	ld	c,4(ix)
	ld	b,5(ix)
;	genAssign
;	AOP_STK for 
;	AOP_STK for _strncmp__1_0
	ld	a,6(ix)
	ld	-4(ix),a
	ld	a,7(ix)
	ld	-3(ix),a
;	genAssign
;	AOP_STK for 
;	AOP_STK for _strncmp__1_0
	ld	a,8(ix)
	ld	-2(ix),a
	ld	a,9(ix)
	ld	-1(ix),a
;	genLabel
00105$:
;	genMinus
;	AOP_STK for _strncmp__1_0
	ld	l,-2(ix)
	ld	h,-1(ix)
	dec	hl
	ld	-2(ix),l
	ld	-1(ix),h
;	genIfx
;	AOP_STK for _strncmp__1_0
	ld	a,-2(ix)
	or	a,-1(ix)
	jr	Z,00107$
;	genPointerGet
	ld	a,(bc)
;	genIfx
	ld	d,a
	or	a,a
	jr	Z,00107$
;	genPointerGet
;	AOP_STK for _strncmp__1_0
	ld	l,-4(ix)
	ld	h,-3(ix)
	ld	e,(hl)
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	a,d
	sub	e
	jr	Z,00117$
	jr	00107$
00117$:
;_strncmp.c:36: first++;
;	genPlus
;	genPlusIncr
	inc	bc
;_strncmp.c:37: last++;
;	genPlus
;	AOP_STK for _strncmp__1_0
;	genPlusIncr
	inc	-4(ix)
	jr	NZ,00118$
	inc	-3(ix)
00118$:
;	genGoto
	jr	00105$
;	genLabel
00107$:
;_strncmp.c:40: return( *first - *last );
;	genPointerGet
	ld	a,(bc)
;	genCast
	ld	c,a
	rla	
	sbc	a,a
	ld	b,a
;	genPointerGet
;	AOP_STK for _strncmp__1_0
	ld	l,-4(ix)
	ld	h,-3(ix)
	ld	e,(hl)
;	genCast
	ld	a,e
	rla	
	sbc	a,a
	ld	d,a
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
00108$:
;	genEndFunction
	ld	sp,ix
	pop	ix
	ret
_strncmp_end::
	.area _CODE
	.area _CABS
