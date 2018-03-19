;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module _strrchr
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strrchr
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
;_strrchr.c:26: char * strrchr (
;	genLabel
;	genFunction
;	---------------------------------
; Function strrchr
; ---------------------------------
_strrchr_start::
_strrchr:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-2
	add	hl,sp
	ld	sp,hl
;_strrchr.c:31: char * start = string;
;	genAssign
;	AOP_STK for 
;	AOP_STK for _strrchr_start_1_1
	ld	a,4(ix)
	ld	-2(ix),a
	ld	a,5(ix)
	ld	-1(ix),a
;_strrchr.c:33: while (*string++)                       /* find end of string */
;	genAssign
;	AOP_STK for _strrchr_start_1_1
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
;_strrchr.c:36: while (--string != start && *string != ch)
;	genAssign
;	(registers are the same)
;	genLabel
00105$:
;	genMinus
	dec	de
;	genCmpEq
;	AOP_STK for _strrchr_start_1_1
; genCmpEq: left 2, right 2, result 0
	ld	a,e
	sub	-2(ix)
	jr	NZ,00118$
	ld	a,d
	sub	-1(ix)
	jr	Z,00107$
00118$:
;	genPointerGet
	ld	a,(de)
;	genCmpEq
;	AOP_STK for 
; genCmpEq: left 1, right 1, result 0
	ld	c,a
	sub	6(ix)
	jr	Z,00120$
	jr	00105$
00120$:
;	genLabel
00107$:
;_strrchr.c:39: if (*string == ch)                /* char found ? */
;	genPointerGet
	ld	a,(de)
;	genCmpEq
;	AOP_STK for 
; genCmpEq: left 1, right 1, result 0
	ld	c,a
	sub	6(ix)
	jr	Z,00122$
	jr	00109$
00122$:
;_strrchr.c:40: return( (char *)string );
;	genRet
; Dump of IC_LEFT: type AOP_REG size 2
;	 reg = de
	ld	l,e
	ld	h,d
	jr	00110$
;	genLabel
00109$:
;_strrchr.c:42: return (NULL) ;
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 2
	ld	hl,#0x0000
;	genLabel
00110$:
;	genEndFunction
	ld	sp,ix
	pop	ix
	ret
_strrchr_end::
	.area _CODE
	.area _CABS
