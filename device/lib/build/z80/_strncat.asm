;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:00 2018
;--------------------------------------------------------
	.module _strncat
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strncat
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
;_strncat.c:26: char * strncat (
;	genLabel
;	genFunction
;	---------------------------------
; Function strncat
; ---------------------------------
_strncat_start::
_strncat:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-6
	add	hl,sp
	ld	sp,hl
;_strncat.c:32: char *start = front;
;	genAssign
;	AOP_STK for 
;	AOP_STK for _strncat_start_1_1
	ld	a,4(ix)
	ld	-2(ix),a
	ld	a,5(ix)
	ld	-1(ix),a
;_strncat.c:34: while (*front++);
;	genAssign
;	AOP_STK for _strncat_start_1_1
	ld	e,-2(ix)
	ld	d,-1(ix)
;	genLabel
00101$:
;	genPointerGet
	ld	a,(de)
;	genPlus
;	genPlusIncr
	inc	de
;	genIfx
	or	a,a
	jr	NZ,00101$
;_strncat.c:36: front--;
;	genMinus
;	AOP_STK for 
	ld	a,e
	add	a,#0xFF
	ld	4(ix),a
	ld	a,d
	adc	a,#0xFF
	ld	5(ix),a
;_strncat.c:38: while (count--)
;	genAssign
;	AOP_STK for 
	ld	e,6(ix)
	ld	d,7(ix)
;	genAssign
;	AOP_STK for 
;	AOP_STK for _strncat__1_0
	ld	a,4(ix)
	ld	-4(ix),a
	ld	a,5(ix)
	ld	-3(ix),a
;	genAssign
;	AOP_STK for 
;	AOP_STK for _strncat__1_0
	ld	a,8(ix)
	ld	-6(ix),a
	ld	a,9(ix)
	ld	-5(ix),a
;	genLabel
00106$:
;	genAssign
;	AOP_STK for _strncat__1_0
	ld	c,-6(ix)
	ld	b,-5(ix)
;	genMinus
;	AOP_STK for _strncat__1_0
	ld	l,-6(ix)
	ld	h,-5(ix)
	dec	hl
	ld	-6(ix),l
	ld	-5(ix),h
;	genIfx
	ld	a,c
	or	a,b
	jr	Z,00108$
;_strncat.c:39: if (!(*front++ = *back++))
;	genPointerGet
	ld	a,(de)
	ld	c,a
;	genPlus
;	genPlusIncr
	inc	de
;	genAssign (pointer)
;	AOP_STK for _strncat__1_0
;	isBitvar = 0
	ld	l,-4(ix)
	ld	h,-3(ix)
	ld	(hl),c
;	genPlus
;	AOP_STK for _strncat__1_0
;	genPlusIncr
	inc	-4(ix)
	jr	NZ,00117$
	inc	-3(ix)
00117$:
;	genAssign
;	AOP_STK for _strncat__1_0
;	AOP_STK for 
	ld	a,-4(ix)
	ld	4(ix),a
	ld	a,-3(ix)
	ld	5(ix),a
;	genIfx
	xor	a,a
	or	a,c
	jr	NZ,00106$
;_strncat.c:40: return(start);
;	genRet
;	AOP_STK for _strncat_start_1_1
; Dump of IC_LEFT: type AOP_STK size 2
;	 aop_stk -2
	ld	l,-2(ix)
	ld	h,-1(ix)
	jr	00109$
;	genLabel
00108$:
;_strncat.c:42: *front = '\0';
;	genAssign
;	AOP_STK for 
	ld	c,4(ix)
	ld	b,5(ix)
	push	bc
	pop	iy
;	genAssign (pointer)
;	isBitvar = 0
	ld	(iy),#0x00
;_strncat.c:43: return(start);
;	genRet
;	AOP_STK for _strncat_start_1_1
; Dump of IC_LEFT: type AOP_STK size 2
;	 aop_stk -2
	ld	l,-2(ix)
	ld	h,-1(ix)
;	genLabel
00109$:
;	genEndFunction
	ld	sp,ix
	pop	ix
	ret
_strncat_end::
	.area _CODE
	.area _CABS
