;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module _strcspn
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strcspn
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
	lda	sp,-4(sp)
;_strcspn.c:34: while (ch = *string) {
;	genAssign
;	AOP_STK for 
;	AOP_STK for _strcspn__1_0
	lda	hl,6(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,0(sp)
	ld	(hl+),a
	ld	(hl),e
;	genAssign
;	AOP_STK for _strcspn_count_1_1
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;	genLabel
00104$:
;	genPointerGet
;	AOP_STK for _strcspn__1_0
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
	jp	Z,00106$
;_strcspn.c:35: if (strchr(control,ch))
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	push	bc
	inc	sp
;	genIpush
;	AOP_STK for 
	lda	hl,9(sp)
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
	jp	NZ,00106$
;_strcspn.c:38: count++ ;
;	genPlus
;	AOP_STK for _strcspn_count_1_1
;	genPlusIncr
	lda	hl,2(sp)
	inc	(hl)
	jr	NZ,00113$
	inc	hl
	inc	(hl)
00113$:
;	genGoto
	jp	00104$
;	genLabel
00106$:
;_strcspn.c:41: return count ;
;	genRet
;	AOP_STK for _strcspn_count_1_1
; Dump of IC_LEFT: type AOP_STK size 2
;	 aop_stk -2
	lda	hl,2(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genLabel
00107$:
;	genEndFunction
	lda	sp,4(sp)
	ret
_strcspn_end::
	.area _CODE
	.area _CABS
