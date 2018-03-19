;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module free
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __sdcc_find_memheader
	.globl __sdcc_prev_memheader
	.globl _free
;--------------------------------------------------------
;  ram data
;--------------------------------------------------------
	.area _DATA
__sdcc_prev_memheader::
	.ds 2
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
;free.c:54: _sdcc_find_memheader(void * p)
;	genLabel
;	genFunction
;	---------------------------------
; Function _sdcc_find_memheader
; ---------------------------------
__sdcc_find_memheader_start::
__sdcc_find_memheader:
	lda	sp,-2(sp)
;free.c:57: if (!p)
;	genIfx
;	AOP_STK for 
	lda	hl,4(sp)
	ld	a,(hl+)
	or	a,(hl)
	jp	NZ,00102$
;free.c:58: return NULL;
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 2
	ld	de,#0x0000
	jp	00103$
;	genLabel
00102$:
;free.c:59: pthis = (MEMHEADER * )((char *)  p - HEADER_SIZE); //to start of header
;	genAssign
;	AOP_STK for 
	lda	hl,4(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genMinus
;	AOP_STK for __sdcc_find_memheader_pthis_1_1
	ld	de,#0x0006
	ld	a,c
	sub	a,e
	ld	e,a
	ld	a,b
	sbc	a,d
	lda	hl,1(sp)
	ld	(hl-),a
	ld	(hl),e
;free.c:60: _sdcc_prev_memheader = pthis->prev;
;	genPlus
;	AOP_STK for __sdcc_find_memheader_pthis_1_1
;	genPlusIncr
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	inc	bc
;	genPointerGet
;	AOP_HL for __sdcc_prev_memheader
	ld	e,c
	ld	d,b
	ld	a,(de)
	ld	hl,#__sdcc_prev_memheader
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
;free.c:62: return (pthis);
;	genRet
;	AOP_STK for __sdcc_find_memheader_pthis_1_1
; Dump of IC_LEFT: type AOP_STK size 2
;	 aop_stk -2
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genLabel
00103$:
;	genEndFunction
	lda	sp,2(sp)
	ret
__sdcc_find_memheader_end::
;free.c:66: free (void *p)
;	genLabel
;	genFunction
;	---------------------------------
; Function free
; ---------------------------------
_free_start::
_free:
	lda	sp,-4(sp)
;free.c:70: if ( p ) //For allocated pointers only!
;	genIfx
;	AOP_STK for 
	lda	hl,6(sp)
	ld	a,(hl+)
	or	a,(hl)
	jp	Z,00108$
;free.c:87: }
;	genCritical
	di
;free.c:73: pthis = (MEMHEADER * )((char *)  p - HEADER_SIZE); //to start of header
;	genAssign
;	AOP_STK for 
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genMinus
;	AOP_STK for _free_pthis_1_1
	ld	de,#0x0006
	ld	a,c
	sub	a,e
	ld	e,a
	ld	a,b
	sbc	a,d
	lda	hl,1(sp)
	ld	(hl-),a
	ld	(hl),e
;free.c:74: if ( pthis->prev ) // For the regular header
;	genPlus
;	AOP_STK for _free_pthis_1_1
;	genPlusIncr
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	inc	bc
;	genPointerGet
	ld	e,c
	ld	d,b
	ld	a,(de)
	ld	c,a
	inc	de
	ld	a,(de)
;	genIfx
	ld	b,a
	or	a,c
	jp	Z,00104$
;free.c:76: prev_header = pthis->prev;
;	genAssign
;	(registers are the same)
;	genAssign
;	AOP_STK for _free_prev_header_1_1
	inc	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
;free.c:77: prev_header->next = pthis->next;
;	genPointerGet
;	AOP_STK for _free_pthis_1_1
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	c,a
	inc	de
	ld	a,(de)
	ld	b,a
;	genAssign (pointer)
;	AOP_STK for _free_prev_header_1_1
;	isBitvar = 0
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,c
	ld	(de),a
	inc	de
	ld	a,b
	ld	(de),a
;free.c:78: if (pthis->next)
;	genIfx
	ld	a,c
	or	a,b
	jp	Z,00105$
;free.c:80: pthis->next->prev = prev_header;
;	genPlus
;	genPlusIncr
	inc	bc
	inc	bc
;	genAssign (pointer)
;	AOP_STK for _free_prev_header_1_1
;	isBitvar = 0
	ld	e,c
	ld	d,b
	dec	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
;	genGoto
	jp	00105$
;	genLabel
00104$:
;free.c:85: pthis->len = 0; //For the first header
;	genPlus
;	AOP_STK for _free_pthis_1_1
;	genPlusIncr
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0004
	add	hl,de
	ld	c,l
	ld	b,h
;	genAssign (pointer)
;	isBitvar = 0
	ld	e,c
	ld	d,b
	ld	a,#0x00
	ld	(de),a
	inc	de
	ld	a,#0x00
	ld	(de),a
;	genLabel
00105$:
;	genEndCritical
	ei
;	genLabel
00108$:
;	genEndFunction
	lda	sp,4(sp)
	ret
_free_end::
	.area _CODE
	.area _CABS
