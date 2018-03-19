;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:00 2018
;--------------------------------------------------------
	.module _strcspn
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strcspn
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
;_strcspn.c:26: int strcspn ( 
;	genLabel
;	genFunction
;	---------------------------------
; Function strcspn
; ---------------------------------
_strcspn_start::
_strcspn:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-2
	add	hl,sp
	ld	sp,hl
;_strcspn.c:34: while (ch = *string) {
;	genAssign
;	AOP_STK for 
	ld	c,4(ix)
	ld	b,5(ix)
;	genAssign
;	AOP_STK for _strcspn_count_1_1
	ld	-2(ix),#0x00
	ld	-1(ix),#0x00
;	genLabel
00104$:
;	genPointerGet
	ld	a,(bc)
	ld	e,a
;	genAssign
	ld	d,e
;	genIfx
	xor	a,a
	or	a,e
	jr	Z,00106$
;_strcspn.c:35: if (strchr(control,ch))
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
	push	de
	inc	sp
;	genIpush
;	AOP_STK for 
	ld	l,6(ix)
	ld	h,7(ix)
	push	hl
;	genCall
	call	_strchr
	ld	d,h
	ld	e,l
	pop	af
	inc	sp
	pop	bc
;	genIfx
	ld	a,e
	or	a,d
	jr	NZ,00106$
;_strcspn.c:38: count++ ;
;	genPlus
;	AOP_STK for _strcspn_count_1_1
;	genPlusIncr
	inc	-2(ix)
	jr	NZ,00113$
	inc	-1(ix)
00113$:
;	genGoto
	jr	00104$
;	genLabel
00106$:
;_strcspn.c:41: return count ;
;	genRet
;	AOP_STK for _strcspn_count_1_1
; Dump of IC_LEFT: type AOP_STK size 2
;	 aop_stk -2
	ld	l,-2(ix)
	ld	h,-1(ix)
;	genLabel
;	genEndFunction
	ld	sp,ix
	pop	ix
	ret
_strcspn_end::
	.area _CODE
	.area _CABS
