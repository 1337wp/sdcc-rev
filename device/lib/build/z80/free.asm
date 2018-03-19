;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module free
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __sdcc_find_memheader
	.globl __sdcc_prev_memheader
	.globl _free
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
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
	push	ix
	ld	ix,#0
	add	ix,sp
;free.c:57: if (!p)
;	genIfx
;	AOP_STK for 
	ld	a,4(ix)
	or	a,5(ix)
	jr	NZ,00102$
;free.c:58: return NULL;
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 2
	ld	hl,#0x0000
	jr	00103$
;	genLabel
00102$:
;free.c:59: pthis = (MEMHEADER * )((char *)  p - HEADER_SIZE); //to start of header
;	genAssign
;	AOP_STK for 
	ld	c,4(ix)
	ld	b,5(ix)
;	genMinus
	ld	a,c
	add	a,#0xFA
	ld	c,a
	ld	a,b
	adc	a,#0xFF
	ld	b,a
;free.c:60: _sdcc_prev_memheader = pthis->prev;
;	genPlus
;	genPlusIncr
	ld	e,c
	ld	d,b
	inc	de
	inc	de
;	genPointerGet
	ld	l,e
	ld	h,d
	ld	a,(hl)
	ld	iy,#__sdcc_prev_memheader
	ld	0(iy),a
	inc	hl
	ld	a,(hl)
	ld	1(iy),a
;free.c:62: return (pthis);
;	genRet
; Dump of IC_LEFT: type AOP_REG size 2
;	 reg = bc
	ld	l,c
	ld	h,b
;	genLabel
00103$:
;	genEndFunction
	pop	ix
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
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-2
	add	hl,sp
	ld	sp,hl
;free.c:70: if ( p ) //For allocated pointers only!
;	genIfx
;	AOP_STK for 
	ld	a,4(ix)
	or	a,5(ix)
	jp	Z,00108$
;free.c:87: }
;	genCritical
	ld	a,i
	di
	push	af
;free.c:73: pthis = (MEMHEADER * )((char *)  p - HEADER_SIZE); //to start of header
;	genAssign
;	AOP_STK for 
	ld	c,4(ix)
	ld	b,5(ix)
;	genMinus
	ld	a,c
	add	a,#0xFA
	ld	c,a
	ld	a,b
	adc	a,#0xFF
	ld	b,a
;free.c:74: if ( pthis->prev ) // For the regular header
;	genPlus
;	genPlusIncr
	ld	e,c
	ld	d,b
	inc	de
	inc	de
;	genPointerGet
	ld	l,e
	ld	h,d
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genIfx
	ld	a,e
	or	a,d
	jr	Z,00104$
;free.c:76: prev_header = pthis->prev;
;	genAssign
;	(registers are the same)
;	genAssign
;	AOP_STK for _free_prev_header_1_1
	ld	-2(ix),e
	ld	-1(ix),d
;free.c:77: prev_header->next = pthis->next;
;	genPointerGet
	ld	l,c
	ld	h,b
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genAssign (pointer)
;	AOP_STK for _free_prev_header_1_1
;	isBitvar = 0
	ld	l,-2(ix)
	ld	h,-1(ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
;free.c:78: if (pthis->next)
;	genIfx
	ld	a,e
	or	a,d
	jr	Z,00105$
;free.c:80: pthis->next->prev = prev_header;
;	genPlus
;	genPlusIncr
	inc	de
	inc	de
;	genAssign (pointer)
;	AOP_STK for _free_prev_header_1_1
;	isBitvar = 0
	ld	l,e
	ld	h,d
	ld	a,-2(ix)
	ld	(hl),a
	inc	hl
	ld	a,-1(ix)
	ld	(hl),a
;	genGoto
	jr	00105$
;	genLabel
00104$:
;free.c:85: pthis->len = 0; //For the first header
;	genPlus
;	genPlusIncr
	inc	bc
	inc	bc
	inc	bc
	inc	bc
;	genAssign (pointer)
;	isBitvar = 0
	ld	l,c
	ld	h,b
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;	genLabel
00105$:
;	genEndCritical
	pop	af
	jp	PO,00114$
	ei
00114$:
;	genLabel
00108$:
;	genEndFunction
	ld	sp,ix
	pop	ix
	ret
_free_end::
	.area _CODE
	.area _CABS
