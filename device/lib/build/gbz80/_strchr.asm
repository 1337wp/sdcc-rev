;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module _strchr
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strchr
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
;_strchr.c:26: char * strchr (
;	genLabel
;	genFunction
;	---------------------------------
; Function strchr
; ---------------------------------
_strchr_start::
_strchr:
	lda	sp,-2(sp)
;_strchr.c:31: while (*string && *string != ch)
;	genAssign
;	AOP_STK for 
;	AOP_STK for _strchr__1_0
	lda	hl,4(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,0(sp)
	ld	(hl+),a
	ld	(hl),e
;	genLabel
00102$:
;	genPointerGet
;	AOP_STK for _strchr__1_0
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genIfx
	ld	c,a
	or	a,a
	jp	Z,00104$
;	genCmpEq
;	AOP_STK for 
; genCmpEq: left 1, right 1, result 0
	ld	a,c
	lda	hl,6(sp)
	sub	(hl)
	jp	Z,00104$
00114$:
;_strchr.c:32: string++;
;	genPlus
;	AOP_STK for _strchr__1_0
;	genPlusIncr
	lda	hl,0(sp)
	inc	(hl)
	jr	NZ,00115$
	inc	hl
	inc	(hl)
00115$:
;	genGoto
	jp	00102$
;	genLabel
00104$:
;_strchr.c:34: if (*string == ch)
;	genPointerGet
;	AOP_STK for _strchr__1_0
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genCmpEq
;	AOP_STK for 
; genCmpEq: left 1, right 1, result 0
	ld	c,a
	lda	hl,6(sp)
	sub	(hl)
	jp	NZ,00116$
	jr	00117$
00116$:
	jp	00106$
00117$:
;_strchr.c:35: return(string);
;	genRet
;	AOP_STK for _strchr__1_0
; Dump of IC_LEFT: type AOP_STK size 2
;	 aop_stk -2
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	jp	00107$
;	genLabel
00106$:
;_strchr.c:36: return ( NULL );
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 2
	ld	de,#0x0000
;	genLabel
00107$:
;	genEndFunction
	lda	sp,2(sp)
	ret
_strchr_end::
	.area _CODE
	.area _CABS
