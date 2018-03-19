;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module _strncat
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strncat
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
	lda	sp,-8(sp)
;_strncat.c:32: char *start = front;
;	genAssign
;	AOP_STK for 
;	AOP_STK for _strncat_start_1_1
	lda	hl,10(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,6(sp)
	ld	(hl+),a
	ld	(hl),e
;_strncat.c:34: while (*front++);
;	genAssign
;	AOP_STK for _strncat_start_1_1
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
;_strncat.c:36: front--;
;	genMinus
;	AOP_STK for 
	ld	de,#0x0001
	ld	a,c
	sub	a,e
	ld	e,a
	ld	a,b
	sbc	a,d
	lda	hl,11(sp)
	ld	(hl-),a
	ld	(hl),e
;_strncat.c:38: while (count--)
;	genAssign
;	AOP_STK for 
;	AOP_STK for _strncat__1_0
	inc	hl
	inc	hl
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,0(sp)
	ld	(hl+),a
	ld	(hl),e
;	genAssign
;	AOP_STK for 
;	AOP_STK for _strncat__1_0
	lda	hl,10(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,4(sp)
	ld	(hl+),a
	ld	(hl),e
;	genAssign
;	AOP_STK for 
;	AOP_STK for _strncat__1_0
	lda	hl,14(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,2(sp)
	ld	(hl+),a
	ld	(hl),e
;	genLabel
00106$:
;	genAssign
;	AOP_STK for _strncat__1_0
	lda	hl,2(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genMinus
;	AOP_STK for _strncat__1_0
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	dec	de
	dec	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
;	genIfx
	ld	a,c
	or	a,b
	jp	Z,00108$
;_strncat.c:39: if (!(*front++ = *back++))
;	genPointerGet
;	AOP_STK for _strncat__1_0
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	c,a
;	genPlus
;	AOP_STK for _strncat__1_0
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	NZ,00117$
	inc	hl
	inc	(hl)
00117$:
;	genAssign (pointer)
;	AOP_STK for _strncat__1_0
;	isBitvar = 0
	lda	hl,4(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,c
	ld	(de),a
;	genPlus
;	AOP_STK for _strncat__1_0
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	NZ,00118$
	inc	hl
	inc	(hl)
00118$:
;	genAssign
;	AOP_STK for _strncat__1_0
;	AOP_STK for 
	lda	hl,4(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,10(sp)
	ld	(hl+),a
	ld	(hl),e
;	genIfx
	xor	a,a
	or	a,c
	jp	NZ,00106$
;_strncat.c:40: return(start);
;	genRet
;	AOP_STK for _strncat_start_1_1
; Dump of IC_LEFT: type AOP_STK size 2
;	 aop_stk -2
	lda	hl,6(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	jp	00109$
;	genLabel
00108$:
;_strncat.c:42: *front = '\0';
;	genAssign
;	AOP_STK for 
	lda	hl,10(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genAssign (pointer)
;	isBitvar = 0
	ld	a,#0x00
	ld	(bc),a
;_strncat.c:43: return(start);
;	genRet
;	AOP_STK for _strncat_start_1_1
; Dump of IC_LEFT: type AOP_STK size 2
;	 aop_stk -2
	lda	hl,6(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genLabel
00109$:
;	genEndFunction
	lda	sp,8(sp)
	ret
_strncat_end::
	.area _CODE
	.area _CABS
