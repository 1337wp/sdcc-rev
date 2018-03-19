;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module _strrchr
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strrchr
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
	lda	sp,-4(sp)
;_strrchr.c:31: char * start = string;
;	genAssign
;	AOP_STK for 
;	AOP_STK for _strrchr_start_1_1
	lda	hl,6(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,2(sp)
	ld	(hl+),a
	ld	(hl),e
;_strrchr.c:33: while (*string++)                       /* find end of string */
;	genAssign
;	AOP_STK for _strrchr_start_1_1
	dec	hl
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
	jp	NZ,00101$
;_strrchr.c:36: while (--string != start && *string != ch)
;	genAssign
;	AOP_STK for _strrchr__1_0
	lda	hl,0(sp)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;	genLabel
00105$:
;	genMinus
;	AOP_STK for _strrchr__1_0
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	dec	de
	dec	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
;	genCmpEq
;	AOP_STK for _strrchr__1_0
;	AOP_STK for _strrchr_start_1_1
; genCmpEq: left 2, right 2, result 0
	dec	hl
	ld	a,(hl+)
	inc	hl
	sub	(hl)
	jp	NZ,00118$
	dec	hl
	ld	a,(hl+)
	inc	hl
	sub	(hl)
	jp	Z,00107$
00118$:
;	genPointerGet
;	AOP_STK for _strrchr__1_0
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genCmpEq
;	AOP_STK for 
; genCmpEq: left 1, right 1, result 0
	ld	c,a
	lda	hl,8(sp)
	sub	(hl)
	jp	NZ,00119$
	jr	00120$
00119$:
	jp	00105$
00120$:
;	genLabel
00107$:
;_strrchr.c:39: if (*string == ch)                /* char found ? */
;	genPointerGet
;	AOP_STK for _strrchr__1_0
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genCmpEq
;	AOP_STK for 
; genCmpEq: left 1, right 1, result 0
	ld	c,a
	lda	hl,8(sp)
	sub	(hl)
	jp	NZ,00121$
	jr	00122$
00121$:
	jp	00109$
00122$:
;_strrchr.c:40: return( (char *)string );
;	genRet
;	AOP_STK for _strrchr__1_0
; Dump of IC_LEFT: type AOP_STK size 2
;	 aop_stk -4
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	jp	00110$
;	genLabel
00109$:
;_strrchr.c:42: return (NULL) ;
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 2
	ld	de,#0x0000
;	genLabel
00110$:
;	genEndFunction
	lda	sp,4(sp)
	ret
_strrchr_end::
	.area _CODE
	.area _CABS
