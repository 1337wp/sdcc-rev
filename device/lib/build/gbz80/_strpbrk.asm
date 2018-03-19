;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module _strpbrk
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strpbrk
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
;_strpbrk.c:26: char * strpbrk ( 
;	genLabel
;	genFunction
;	---------------------------------
; Function strpbrk
; ---------------------------------
_strpbrk_start::
_strpbrk:
	lda	sp,-2(sp)
;_strpbrk.c:33: while ( ch = *string ) {
;	genAssign
;	AOP_STK for 
;	AOP_STK for _strpbrk__1_0
	lda	hl,4(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,0(sp)
	ld	(hl+),a
	ld	(hl),e
;	genLabel
00103$:
;	genPointerGet
;	AOP_STK for _strpbrk__1_0
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	c,a
;	genAssign
	ld	b,c
;	genIfx
	xor	a,a
	or	a,c
	jp	Z,00105$
;_strpbrk.c:34: if (strchr (control, ch ))
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	push	bc
	inc	sp
;	genIpush
;	AOP_STK for 
	lda	hl,7(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	_strchr
	ld	b,d
	ld	c,e
	lda	sp,3(sp)
;	genIfx
	ld	a,c
	or	a,b
	jp	Z,00103$
;_strpbrk.c:35: return string ;
;	genRet
;	AOP_STK for _strpbrk__1_0
; Dump of IC_LEFT: type AOP_STK size 2
;	 aop_stk -2
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	jp	00106$
;	genLabel
00105$:
;_strpbrk.c:38: return (NULL);
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 2
	ld	de,#0x0000
;	genLabel
00106$:
;	genEndFunction
	lda	sp,2(sp)
	ret
_strpbrk_end::
	.area _CODE
	.area _CABS
