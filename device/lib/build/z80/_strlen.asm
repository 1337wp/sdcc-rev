;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:00 2018
;--------------------------------------------------------
	.module _strlen
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strlen
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
;_strlen.c:29: int strlen ( char * str )
;	genLabel
;	genFunction
;	---------------------------------
; Function strlen
; ---------------------------------
_strlen_start::
_strlen:
	push	ix
	ld	ix,#0
	add	ix,sp
;_strlen.c:33: while (*str++)
;	genAssign
	ld	bc,#0x0000
;	genAssign
;	AOP_STK for 
	ld	e,4(ix)
	ld	d,5(ix)
;	genLabel
00101$:
;	genPointerGet
	ld	a,(de)
;	genPlus
;	genPlusIncr
	inc	de
;	genIfx
	or	a,a
	jr	Z,00103$
;_strlen.c:34: i++ ;
;	genPlus
;	genPlusIncr
	inc	bc
;	genGoto
	jr	00101$
;	genLabel
00103$:
;_strlen.c:36: return i;
;	genRet
; Dump of IC_LEFT: type AOP_REG size 2
;	 reg = bc
	ld	l,c
	ld	h,b
;	genLabel
;	genEndFunction
	pop	ix
	ret
_strlen_end::
	.area _CODE
	.area _CABS
