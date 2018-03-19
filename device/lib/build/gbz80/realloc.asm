;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module realloc
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _realloc
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
;realloc.c:76: void __xdata * realloc (void * p, size_t size)
;	genLabel
;	genFunction
;	---------------------------------
; Function realloc
; ---------------------------------
_realloc_start::
_realloc:
	lda	sp,-10(sp)
;realloc.c:134: }
;	genCritical
	di
;realloc.c:84: pthis = _sdcc_find_memheader(p);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	lda	hl,12(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__sdcc_find_memheader
	ld	b,d
	ld	c,e
	lda	sp,2(sp)
;	genAssign
;	AOP_STK for _realloc_pthis_1_1
	lda	hl,8(sp)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;realloc.c:85: if (pthis)
;	genIfx
;	AOP_STK for _realloc_pthis_1_1
	dec	hl
	ld	a,(hl+)
	or	a,(hl)
	jp	Z,00114$
;realloc.c:87: if (size > (0xFFFF-HEADER_SIZE))
;	genCmpGt
;	AOP_STK for 
	ld	a,#0xF9
	lda	hl,14(sp)
	sub	a,(hl)
	ld	a,#0xFF
	inc	hl
	sbc	a,(hl)
	jp	NC,00111$
;realloc.c:89: ret = (void __xdata *) NULL; //To prevent overflow in next line
;	genAssign
;	AOP_STK for _realloc_ret_1_1
	lda	hl,4(sp)
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;	genGoto
	jp	00115$
;	genLabel
00111$:
;realloc.c:93: size += HEADER_SIZE; //We need a memory for header too
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	lda	hl,14(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0006
	add	hl,de
	ld	a,l
	ld	d,h
	lda	hl,14(sp)
	ld	(hl+),a
	ld	(hl),d
;realloc.c:95: if ((((unsigned int)pthis->next) - ((unsigned int)pthis)) >= size)
;	genPointerGet
;	AOP_STK for _realloc_pthis_1_1
;	AOP_STK for _realloc__1_0
	lda	hl,8(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	lda	hl,2(sp)
	ld	(hl+),a
	inc	de
	ld	a,(de)
;	genCast
;	AOP_STK for _realloc__1_0
;	AOP_STK for _realloc__1_0
	ld	(hl-),a
	ld	a,(hl)
	dec	hl
	dec	hl
	ld	(hl),a
	lda	hl,3(sp)
	ld	a,(hl)
	dec	hl
	dec	hl
	ld	(hl),a
;	genCast
;	AOP_STK for _realloc_pthis_1_1
	lda	hl,8(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genMinus
;	AOP_STK for _realloc__1_0
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	sub	a,c
	ld	e,a
	ld	a,d
	sbc	a,b
	ld	b,a
	ld	c,e
;	genCmpLt
;	AOP_STK for 
	ld	a,c
	lda	hl,14(sp)
	sub	a,(hl)
	ld	a,b
	inc	hl
	sbc	a,(hl)
	jp	C,00108$
;realloc.c:97: pthis->len = size;
;	genPlus
;	AOP_STK for _realloc_pthis_1_1
;	genPlusIncr
	lda	hl,8(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0004
	add	hl,de
	ld	c,l
	ld	b,h
;	genAssign (pointer)
;	AOP_STK for 
;	isBitvar = 0
	ld	e,c
	ld	d,b
	lda	hl,14(sp)
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
;realloc.c:98: ret = p;
;	genAssign
;	AOP_STK for 
;	AOP_STK for _realloc_ret_1_1
	lda	hl,12(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,4(sp)
	ld	(hl+),a
	ld	(hl),e
;	genGoto
	jp	00115$
;	genLabel
00108$:
;realloc.c:102: if ((_sdcc_prev_memheader) &&
;	genIfx
;	AOP_HL for __sdcc_prev_memheader
	ld	hl,#__sdcc_prev_memheader
	ld	a,(hl+)
	or	a,(hl)
	jp	Z,00104$
;realloc.c:103: ((((unsigned int)pthis->next) -
;	genAssign
;	AOP_STK for _realloc__1_0
	lda	hl,2(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genCast
;	AOP_STK for _realloc__1_0
	lda	hl,0(sp)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;realloc.c:104: ((unsigned int)_sdcc_prev_memheader) -
;	genCast
;	AOP_HL for __sdcc_prev_memheader
	ld	hl,#__sdcc_prev_memheader
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genMinus
;	AOP_STK for _realloc__1_0
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	sub	a,c
	ld	e,a
	ld	a,d
	sbc	a,b
	ld	(hl-),a
	ld	(hl),e
;realloc.c:105: _sdcc_prev_memheader->len) >= size))
;	genAssign
;	AOP_HL for __sdcc_prev_memheader
	ld	hl,#__sdcc_prev_memheader
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPlus
;	genPlusIncr
	inc	bc
	inc	bc
	inc	bc
	inc	bc
;	genPointerGet
	ld	e,c
	ld	d,b
	ld	a,(de)
	ld	c,a
	inc	de
	ld	a,(de)
	ld	b,a
;	genMinus
;	AOP_STK for _realloc__1_0
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	sub	a,c
	ld	e,a
	ld	a,d
	sbc	a,b
	ld	b,a
	ld	c,e
;	genCmpLt
;	AOP_STK for 
	ld	a,c
	lda	hl,14(sp)
	sub	a,(hl)
	ld	a,b
	inc	hl
	sbc	a,(hl)
	jp	C,00104$
;realloc.c:107: pnew = (MEMHEADER __xdata * )((char __xdata *)_sdcc_prev_memheader + _sdcc_prev_memheader->len);
;	genAssign
;	(operands are equal 3)
;	genAssign
;	AOP_HL for __sdcc_prev_memheader
	ld	hl,#__sdcc_prev_memheader
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPlus
;	genPlusIncr
	inc	bc
	inc	bc
	inc	bc
	inc	bc
;	genPointerGet
	ld	e,c
	ld	d,b
	ld	a,(de)
	ld	c,a
	inc	de
	ld	a,(de)
	ld	b,a
;	genPlus
;	AOP_HL for __sdcc_prev_memheader
	dec	hl
	ld	a,(hl)
	add	a,c
	inc	hl
	ld	c,a
	ld	a,(hl)
	adc	a,b
	ld	b,a
;	genAssign
;	AOP_STK for _realloc_pnew_1_1
	lda	hl,6(sp)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;realloc.c:108: _sdcc_prev_memheader->next = pnew;
;	genAssign
;	AOP_HL for __sdcc_prev_memheader
	ld	hl,#__sdcc_prev_memheader
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genAssign (pointer)
;	AOP_STK for _realloc_pnew_1_1
;	isBitvar = 0
	ld	e,c
	ld	d,b
	lda	hl,6(sp)
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
;realloc.c:111: pthis->next->prev = pnew;
;	genPlus
;	AOP_STK for _realloc__1_0
;	genPlusIncr
	lda	hl,2(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	inc	bc
;	genAssign (pointer)
;	AOP_STK for _realloc_pnew_1_1
;	isBitvar = 0
	ld	e,c
	ld	d,b
	lda	hl,6(sp)
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
;realloc.c:114: memmove(pnew, pthis, pthis->len);
;	genPlus
;	AOP_STK for _realloc_pthis_1_1
;	genPlusIncr
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0004
	add	hl,de
	ld	c,l
	ld	b,h
;	genPointerGet
	ld	e,c
	ld	d,b
	ld	a,(de)
	ld	c,a
	inc	de
	ld	a,(de)
	ld	b,a
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	push	bc
;	genIpush
;	AOP_STK for _realloc_pthis_1_1
	lda	hl,10(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for _realloc_pnew_1_1
	lda	hl,10(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	_memmove
	lda	sp,6(sp)
;realloc.c:115: pnew->len = size;
;	genPlus
;	AOP_STK for _realloc_pnew_1_1
;	genPlusIncr
	lda	hl,6(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0004
	add	hl,de
	ld	c,l
	ld	b,h
;	genAssign (pointer)
;	AOP_STK for 
;	isBitvar = 0
	ld	e,c
	ld	d,b
	lda	hl,14(sp)
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
;realloc.c:116: ret = MEM(pnew);
;	genPlus
;	AOP_STK for _realloc_pnew_1_1
;	AOP_STK for _realloc_ret_1_1
;	genPlusIncr
	lda	hl,6(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0006
	add	hl,de
	ld	a,l
	ld	d,h
	lda	hl,4(sp)
	ld	(hl+),a
	ld	(hl),d
;	genGoto
	jp	00115$
;	genLabel
00104$:
;realloc.c:120: ret = malloc(size - HEADER_SIZE);
;	genMinus
;	AOP_STK for 
	lda	hl,14(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0006
	ld	a,e
	sub	a,l
	ld	e,a
	ld	a,d
	sbc	a,h
	ld	b,a
	ld	c,e
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	push	bc
;	genCall
	call	_malloc
	ld	b,d
	ld	c,e
	lda	sp,2(sp)
;	genAssign
;	AOP_STK for _realloc_ret_1_1
	lda	hl,4(sp)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;realloc.c:121: if (ret)
;	genIfx
;	AOP_STK for _realloc_ret_1_1
	dec	hl
	ld	a,(hl+)
	or	a,(hl)
	jp	Z,00115$
;realloc.c:123: memcpy(ret, MEM(pthis), pthis->len - HEADER_SIZE);
;	genPlus
;	AOP_STK for _realloc_pthis_1_1
;	genPlusIncr
	lda	hl,8(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0004
	add	hl,de
	ld	c,l
	ld	b,h
;	genPointerGet
	ld	e,c
	ld	d,b
	ld	a,(de)
	ld	c,a
	inc	de
	ld	a,(de)
	ld	b,a
;	genMinus
;	AOP_STK for _realloc__1_0
	ld	de,#0x0006
	ld	a,c
	sub	a,e
	ld	e,a
	ld	a,b
	sbc	a,d
	lda	hl,1(sp)
	ld	(hl-),a
	ld	(hl),e
;	genPlus
;	AOP_STK for _realloc_pthis_1_1
;	genPlusIncr
	lda	hl,8(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0006
	add	hl,de
	ld	c,l
	ld	b,h
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _realloc__1_0
	lda	hl,0(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
	push	bc
;	genIpush
;	AOP_STK for _realloc_ret_1_1
	lda	hl,8(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	_memcpy
	lda	sp,6(sp)
;realloc.c:124: free(p);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	lda	hl,12(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	_free
	lda	sp,2(sp)
;	genGoto
	jp	00115$
;	genLabel
00114$:
;realloc.c:132: ret = malloc(size);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	lda	hl,14(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	_malloc
	ld	b,d
	ld	c,e
	lda	sp,2(sp)
;	genAssign
;	AOP_STK for _realloc_ret_1_1
	lda	hl,4(sp)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;	genLabel
00115$:
;	genEndCritical
	ei
;realloc.c:135: return ret;
;	genRet
;	AOP_STK for _realloc_ret_1_1
; Dump of IC_LEFT: type AOP_STK size 2
;	 aop_stk -6
	lda	hl,4(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genLabel
00116$:
;	genEndFunction
	lda	sp,10(sp)
	ret
_realloc_end::
	.area _CODE
	.area _CABS
