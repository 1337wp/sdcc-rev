;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module _ispunct
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ispunct
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
;_ispunct.c:25: char ispunct (unsigned char c) 
;	genLabel
;	genFunction
;	---------------------------------
; Function ispunct
; ---------------------------------
_ispunct_start::
_ispunct:
	
;_ispunct.c:28: if (isprint (c)    && 
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	lda	hl,2(sp)
	ld	a,(hl)
	push	af
	inc	sp
;	genCall
	call	_isprint
	ld	c,e
	lda	sp,1(sp)
;	genIfx
	xor	a,a
	or	a,c
	jp	Z,00102$
;_ispunct.c:29: !islower(c)     && 
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	lda	hl,2(sp)
	ld	a,(hl)
	push	af
	inc	sp
;	genCall
	call	_islower
	ld	c,e
	lda	sp,1(sp)
;	genIfx
	xor	a,a
	or	a,c
	jp	NZ,00102$
;_ispunct.c:30: !isupper(c)     &&
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	lda	hl,2(sp)
	ld	a,(hl)
	push	af
	inc	sp
;	genCall
	call	_isupper
	ld	c,e
	lda	sp,1(sp)
;	genIfx
	xor	a,a
	or	a,c
	jp	NZ,00102$
;_ispunct.c:31: c != ' '        &&
;	genCmpEq
;	AOP_STK for 
; genCmpEq: left 1, right 1, result 0
	lda	hl,2(sp)
	ld	a,(hl)
	sub	a,#0x20
	jp	Z,00102$
00114$:
;_ispunct.c:32: !isdigit(c)) 
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	lda	hl,2(sp)
	ld	a,(hl)
	push	af
	inc	sp
;	genCall
	call	_isdigit
	ld	c,e
	lda	sp,1(sp)
;	genIfx
	xor	a,a
	or	a,c
	jp	NZ,00102$
;_ispunct.c:33: return 1;
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 1
	ld	e,#0x01
	jp	00107$
;	genLabel
00102$:
;_ispunct.c:34: return 0;
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 1
	ld	e,#0x00
;	genLabel
00107$:
;	genEndFunction
	
	ret
_ispunct_end::
	.area _CODE
	.area _CABS
