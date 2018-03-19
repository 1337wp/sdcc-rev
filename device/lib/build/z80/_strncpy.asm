;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:00 2018
;--------------------------------------------------------
	.module _strncpy
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strncpy
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
;_strncpy.c:26: char *strncpy (
;	genLabel
;	genFunction
;	---------------------------------
; Function strncpy
; ---------------------------------
_strncpy_start::
_strncpy:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-6
	add	hl,sp
	ld	sp,hl
;_strncpy.c:31: register char * d1 =  d;
;	genAssign
;	AOP_STK for 
;	AOP_STK for _strncpy_d1_1_1
	ld	a,4(ix)
	ld	-2(ix),a
	ld	a,5(ix)
	ld	-1(ix),a
;_strncpy.c:33: while ( n && *s )
;	genAssign
;	AOP_STK for 
	ld	e,8(ix)
	ld	d,9(ix)
;	genAssign
;	AOP_STK for 
;	AOP_STK for _strncpy__1_0
	ld	a,6(ix)
	ld	-4(ix),a
	ld	a,7(ix)
	ld	-3(ix),a
;	genAssign
;	AOP_STK for _strncpy_d1_1_1
;	AOP_STK for _strncpy__1_0
	ld	a,-2(ix)
	ld	-6(ix),a
	ld	a,-1(ix)
	ld	-5(ix),a
;	genLabel
00102$:
;	genIfx
	ld	a,e
	or	a,d
	jr	Z,00114$
;	genPointerGet
;	AOP_STK for _strncpy__1_0
	ld	l,-4(ix)
	ld	h,-3(ix)
	ld	c,(hl)
;	genIfx
	xor	a,a
	or	a,c
	jr	Z,00114$
;_strncpy.c:35: n-- ;
;	genMinus
	dec	de
;_strncpy.c:36: *d++ = *s++ ;
;	genAssign
	ld	a,c
;	genPlus
;	AOP_STK for _strncpy__1_0
;	genPlusIncr
	inc	-4(ix)
	jr	NZ,00117$
	inc	-3(ix)
00117$:
;	genAssign (pointer)
;	AOP_STK for _strncpy__1_0
;	isBitvar = 0
	ld	l,-6(ix)
	ld	h,-5(ix)
	ld	(hl),a
;	genPlus
;	AOP_STK for _strncpy__1_0
;	genPlusIncr
	inc	-6(ix)
	jr	NZ,00118$
	inc	-5(ix)
00118$:
;	genGoto
	jr	00102$
;_strncpy.c:38: while ( n-- )
;	genLabel
00114$:
;	genAssign
;	AOP_STK for _strncpy__1_0
;	(registers are the same)
;	genAssign
;	(registers are the same)
;	genLabel
00105$:
;	genAssign
	ld	c,e
	ld	b,d
;	genMinus
	dec	de
;	genIfx
	ld	a,c
	or	a,b
	jr	Z,00107$
;_strncpy.c:40: *d++ = '\0' ;
;	genAssign (pointer)
;	AOP_STK for _strncpy__1_0
;	isBitvar = 0
	ld	l,-6(ix)
	ld	h,-5(ix)
	ld	(hl),#0x00
;	genPlus
;	AOP_STK for _strncpy__1_0
;	genPlusIncr
	inc	-6(ix)
	jr	NZ,00119$
	inc	-5(ix)
00119$:
;	genGoto
	jr	00105$
;	genLabel
00107$:
;_strncpy.c:42: return d1;
;	genRet
;	AOP_STK for _strncpy_d1_1_1
; Dump of IC_LEFT: type AOP_STK size 2
;	 aop_stk -2
	ld	l,-2(ix)
	ld	h,-1(ix)
;	genLabel
;	genEndFunction
	ld	sp,ix
	pop	ix
	ret
_strncpy_end::
	.area _CODE
	.area _CABS
