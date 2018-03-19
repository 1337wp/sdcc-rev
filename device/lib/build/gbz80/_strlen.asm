;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module _strlen
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strlen
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
	lda	sp,-2(sp)
;_strlen.c:33: while (*str++)
;	genAssign
;	AOP_STK for _strlen_i_1_1
	lda	hl,0(sp)
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;	genAssign
;	AOP_STK for 
	lda	hl,4(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genLabel
00101$:
;	genPointerGet
	ld	a,(bc)
;	genPlus
;	genPlusIncr
	inc	bc
;	genIfx
	or	a,a
	jp	Z,00103$
;_strlen.c:34: i++ ;
;	genPlus
;	AOP_STK for _strlen_i_1_1
;	genPlusIncr
	lda	hl,0(sp)
	inc	(hl)
	jr	NZ,00109$
	inc	hl
	inc	(hl)
00109$:
;	genGoto
	jp	00101$
;	genLabel
00103$:
;_strlen.c:36: return i;
;	genRet
;	AOP_STK for _strlen_i_1_1
; Dump of IC_LEFT: type AOP_STK size 2
;	 aop_stk -2
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genLabel
00104$:
;	genEndFunction
	lda	sp,2(sp)
	ret
_strlen_end::
	.area _CODE
	.area _CABS
