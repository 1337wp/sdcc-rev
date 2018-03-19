;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module realloc
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _realloc
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
;realloc.c:76: void __xdata * realloc (void * p, size_t size)
;	genLabel
;	genFunction
;	---------------------------------
; Function realloc
; ---------------------------------
_realloc_start::
_realloc:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-8
	add	hl,sp
	ld	sp,hl
;realloc.c:134: }
;	genCritical
	ld	a,i
	di
	push	af
;realloc.c:84: pthis = _sdcc_find_memheader(p);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	ld	l,4(ix)
	ld	h,5(ix)
	push	hl
;	genCall
	call	__sdcc_find_memheader
	ld	b,h
	ld	c,l
	pop	af
;	genAssign
	ld	e,c
	ld	d,b
;realloc.c:85: if (pthis)
;	genIfx
	ld	a,e
	or	a,d
	jp	Z,00114$
;realloc.c:87: if (size > (0xFFFF-HEADER_SIZE))
;	genCmpGt
;	AOP_STK for 
	ld	a,#0xF9
	sub	a,6(ix)
	ld	a,#0xFF
	sbc	a,7(ix)
	jr	NC,00111$
;realloc.c:89: ret = (void __xdata *) NULL; //To prevent overflow in next line
;	genAssign
;	AOP_STK for _realloc_ret_1_1
	ld	-4(ix),#0x00
	ld	-3(ix),#0x00
;	genGoto
	jp	00115$
;	genLabel
00111$:
;realloc.c:93: size += HEADER_SIZE; //We need a memory for header too
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	ld	a,6(ix)
	add	a,#0x06
	ld	6(ix),a
	ld	a,7(ix)
	adc	a,#0x00
	ld	7(ix),a
;realloc.c:95: if ((((unsigned int)pthis->next) - ((unsigned int)pthis)) >= size)
;	genPointerGet
;	AOP_STK for _realloc__1_0
	ld	l,e
	ld	h,d
	ld	a,(hl)
	ld	-6(ix),a
	inc	hl
	ld	a,(hl)
	ld	-5(ix),a
;	genCast
;	AOP_STK for _realloc__1_0
;	AOP_STK for _realloc__1_0
	ld	a,-6(ix)
	ld	-8(ix),a
	ld	a,-5(ix)
	ld	-7(ix),a
;	genCast
	ld	c,e
	ld	b,d
;	genMinus
;	AOP_STK for _realloc__1_0
	ld	a,-8(ix)
	sub	a,c
	ld	c,a
	ld	a,-7(ix)
	sbc	a,b
	ld	b,a
;	genCmpLt
;	AOP_STK for 
	ld	a,c
	sub	a,6(ix)
	ld	a,b
	sbc	a,7(ix)
	jr	C,00108$
;realloc.c:97: pthis->len = size;
;	genPlus
;	genPlusIncr
	ld	a,e
	add	a,#0x04
	ld	c,a
	ld	a,d
	adc	a,#0x00
	ld	b,a
;	genAssign (pointer)
;	AOP_STK for 
;	isBitvar = 0
	ld	l,c
	ld	h,b
	ld	a,6(ix)
	ld	(hl),a
	inc	hl
	ld	a,7(ix)
	ld	(hl),a
;realloc.c:98: ret = p;
;	genAssign
;	AOP_STK for 
;	AOP_STK for _realloc_ret_1_1
	ld	a,4(ix)
	ld	-4(ix),a
	ld	a,5(ix)
	ld	-3(ix),a
;	genGoto
	jp	00115$
;	genLabel
00108$:
;realloc.c:102: if ((_sdcc_prev_memheader) &&
;	genIfx
	ld	iy,#__sdcc_prev_memheader
	ld	a,0(iy)
	or	a,1(iy)
	jp	Z,00104$
;realloc.c:103: ((((unsigned int)pthis->next) -
;	genAssign
;	AOP_STK for _realloc__1_0
	ld	c,-6(ix)
	ld	b,-5(ix)
;	genCast
;	AOP_STK for _realloc__1_0
	ld	-8(ix),c
	ld	-7(ix),b
;realloc.c:104: ((unsigned int)_sdcc_prev_memheader) -
;	genCast
	ld	c,0(iy)
	ld	b,1(iy)
;	genMinus
;	AOP_STK for _realloc__1_0
	ld	a,-8(ix)
	sub	a,c
	ld	-8(ix),a
	ld	a,-7(ix)
	sbc	a,b
	ld	-7(ix),a
;realloc.c:105: _sdcc_prev_memheader->len) >= size))
;	genAssign
	ld	bc,(__sdcc_prev_memheader)
;	genPlus
;	genPlusIncr
	inc	bc
	inc	bc
	inc	bc
	inc	bc
;	genPointerGet
	ld	l,c
	ld	h,b
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genMinus
;	AOP_STK for _realloc__1_0
	ld	a,-8(ix)
	sub	a,c
	ld	c,a
	ld	a,-7(ix)
	sbc	a,b
	ld	b,a
;	genCmpLt
;	AOP_STK for 
	ld	a,c
	sub	a,6(ix)
	ld	a,b
	sbc	a,7(ix)
	jp	C,00104$
;realloc.c:107: pnew = (MEMHEADER __xdata * )((char __xdata *)_sdcc_prev_memheader + _sdcc_prev_memheader->len);
;	genAssign
;	(operands are equal 3)
;	genAssign
	ld	bc,(__sdcc_prev_memheader)
;	genPlus
;	genPlusIncr
	inc	bc
	inc	bc
	inc	bc
	inc	bc
;	genPointerGet
	ld	l,c
	ld	h,b
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPlus
	ld	a,0(iy)
	add	a,c
	ld	c,a
	ld	a,1(iy)
	adc	a,b
	ld	b,a
;	genAssign
;	AOP_STK for _realloc_pnew_1_1
	ld	-2(ix),c
	ld	-1(ix),b
;realloc.c:108: _sdcc_prev_memheader->next = pnew;
;	genAssign
	ld	bc,(__sdcc_prev_memheader)
;	genAssign (pointer)
;	AOP_STK for _realloc_pnew_1_1
;	isBitvar = 0
	ld	l,c
	ld	h,b
	ld	a,-2(ix)
	ld	(hl),a
	inc	hl
	ld	a,-1(ix)
	ld	(hl),a
;realloc.c:111: pthis->next->prev = pnew;
;	genPlus
;	AOP_STK for _realloc__1_0
;	genPlusIncr
	ld	c,-6(ix)
	ld	b,-5(ix)
	inc	bc
	inc	bc
;	genAssign (pointer)
;	AOP_STK for _realloc_pnew_1_1
;	isBitvar = 0
	ld	l,c
	ld	h,b
	ld	a,-2(ix)
	ld	(hl),a
	inc	hl
	ld	a,-1(ix)
	ld	(hl),a
;realloc.c:114: memmove(pnew, pthis, pthis->len);
;	genPlus
;	genPlusIncr
	ld	a,e
	add	a,#0x04
	ld	c,a
	ld	a,d
	adc	a,#0x00
	ld	b,a
;	genPointerGet
	ld	l,c
	ld	h,b
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	push	bc
;	genIpush
	push	de
;	genIpush
;	AOP_STK for _realloc_pnew_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	push	hl
;	genCall
	call	_memmove
	pop	af
	pop	af
	pop	af
;realloc.c:115: pnew->len = size;
;	genPlus
;	AOP_STK for _realloc_pnew_1_1
;	genPlusIncr
	ld	a,-2(ix)
	add	a,#0x04
	ld	c,a
	ld	a,-1(ix)
	adc	a,#0x00
	ld	b,a
;	genAssign (pointer)
;	AOP_STK for 
;	isBitvar = 0
	ld	l,c
	ld	h,b
	ld	a,6(ix)
	ld	(hl),a
	inc	hl
	ld	a,7(ix)
	ld	(hl),a
;realloc.c:116: ret = MEM(pnew);
;	genPlus
;	AOP_STK for _realloc_pnew_1_1
;	AOP_STK for _realloc_ret_1_1
;	genPlusIncr
	ld	a,-2(ix)
	add	a,#0x06
	ld	-4(ix),a
	ld	a,-1(ix)
	adc	a,#0x00
	ld	-3(ix),a
;	genGoto
	jp	00115$
;	genLabel
00104$:
;realloc.c:120: ret = malloc(size - HEADER_SIZE);
;	genMinus
;	AOP_STK for 
	ld	a,6(ix)
	add	a,#0xFA
	ld	c,a
	ld	a,7(ix)
	adc	a,#0xFF
	ld	b,a
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 1 bcInUse: 0 deSending: 0
	push	de
	push	bc
;	genCall
	call	_malloc
	ld	b,h
	ld	c,l
	pop	af
	pop	de
;	genAssign
;	AOP_STK for _realloc_ret_1_1
	ld	-4(ix),c
	ld	-3(ix),b
;realloc.c:121: if (ret)
;	genIfx
;	AOP_STK for _realloc_ret_1_1
	ld	a,-4(ix)
	or	a,-3(ix)
	jp	Z,00115$
;realloc.c:123: memcpy(ret, MEM(pthis), pthis->len - HEADER_SIZE);
;	genPlus
;	genPlusIncr
	ld	a,e
	add	a,#0x04
	ld	c,a
	ld	a,d
	adc	a,#0x00
	ld	b,a
;	genPointerGet
	ld	l,c
	ld	h,b
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genMinus
	ld	a,c
	add	a,#0xFA
	ld	c,a
	ld	a,b
	adc	a,#0xFF
	ld	b,a
;	genPlus
;	genPlusIncr
	ld	a,e
	add	a,#0x06
	ld	e,a
	ld	a,d
	adc	a,#0x00
	ld	d,a
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	push	bc
;	genIpush
	push	de
;	genIpush
;	AOP_STK for _realloc_ret_1_1
	ld	l,-4(ix)
	ld	h,-3(ix)
	push	hl
;	genCall
	call	_memcpy
	pop	af
	pop	af
	pop	af
;realloc.c:124: free(p);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	ld	l,4(ix)
	ld	h,5(ix)
	push	hl
;	genCall
	call	_free
	pop	af
;	genGoto
	jr	00115$
;	genLabel
00114$:
;realloc.c:132: ret = malloc(size);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	ld	l,6(ix)
	ld	h,7(ix)
	push	hl
;	genCall
	call	_malloc
	ld	b,h
	ld	c,l
	pop	af
;	genAssign
;	AOP_STK for _realloc_ret_1_1
	ld	-4(ix),c
	ld	-3(ix),b
;	genLabel
00115$:
;	genEndCritical
	pop	af
	jp	PO,00125$
	ei
00125$:
;realloc.c:135: return ret;
;	genRet
;	AOP_STK for _realloc_ret_1_1
; Dump of IC_LEFT: type AOP_STK size 2
;	 aop_stk -4
	ld	l,-4(ix)
	ld	h,-3(ix)
;	genLabel
;	genEndFunction
	ld	sp,ix
	pop	ix
	ret
_realloc_end::
	.area _CODE
	.area _CABS
