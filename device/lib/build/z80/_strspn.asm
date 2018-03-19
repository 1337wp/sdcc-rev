;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module _strspn
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strspn
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
;_strspn.c:26: int strspn (
;	genLabel
;	genFunction
;	---------------------------------
; Function strspn
; ---------------------------------
_strspn_start::
_strspn:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-2
	add	hl,sp
	ld	sp,hl
;_strspn.c:34: while (ch = *string) {
;	genAssign
;	AOP_STK for _strspn_count_1_1
	ld	-2(ix),#0x00
	ld	-1(ix),#0x00
;	genAssign
;	AOP_STK for 
	ld	e,4(ix)
	ld	d,5(ix)
;	genLabel
00104$:
;	genPointerGet
	ld	a,(de)
	ld	c,a
;	genAssign
	ld	b,c
;	genIfx
	xor	a,a
	or	a,c
	jr	Z,00106$
;_strspn.c:35: if ( strchr(control,ch) )
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 1 bcInUse: 0 deSending: 0
	push	de
	push	bc
	inc	sp
;	genIpush
;	AOP_STK for 
	ld	l,6(ix)
	ld	h,7(ix)
	push	hl
;	genCall
	call	_strchr
	ld	b,h
	ld	c,l
	pop	af
	inc	sp
	pop	de
;	genIfx
	ld	a,c
	or	a,b
	jr	Z,00106$
;_strspn.c:36: count++ ;
;	genPlus
;	AOP_STK for _strspn_count_1_1
;	genPlusIncr
	inc	-2(ix)
	jr	NZ,00113$
	inc	-1(ix)
00113$:
;_strspn.c:39: string++ ;
;	genPlus
;	genPlusIncr
	inc	de
;	genGoto
	jr	00104$
;	genLabel
00106$:
;_strspn.c:42: return count ;
;	genRet
;	AOP_STK for _strspn_count_1_1
; Dump of IC_LEFT: type AOP_STK size 2
;	 aop_stk -2
	ld	l,-2(ix)
	ld	h,-1(ix)
;	genLabel
;	genEndFunction
	ld	sp,ix
	pop	ix
	ret
_strspn_end::
	.area _CODE
	.area _CABS
