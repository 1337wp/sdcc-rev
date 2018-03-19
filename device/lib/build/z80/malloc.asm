;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module malloc
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __sdcc_heap_init
	.globl _malloc
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
;malloc.c:51: _sdcc_heap_init(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function _sdcc_heap_init
; ---------------------------------
__sdcc_heap_init_start::
__sdcc_heap_init:
;malloc.c:53: MEMHEADER *pbase = &_sdcc_heap_start;
;malloc.c:54: unsigned int size = &_sdcc_heap_end - (char *)pbase;
;	genMinus
	ld	a,#<__sdcc_heap_end
	sub	a,#<__sdcc_heap_start
	ld	c,a
	ld	a,#>__sdcc_heap_end
	sbc	a,#>__sdcc_heap_start
	ld	b,a
;	genAssign
;	(registers are the same)
;malloc.c:56: pbase->next = (MEMHEADER *)((char *)pbase + size - HEADER_SIZE);
;	genPlus
	ld	hl,#__sdcc_heap_start
	add	hl,bc
	ld	c,l
	ld	b,h
;	genMinus
	ld	a,c
	add	a,#0xFA
	ld	c,a
	ld	a,b
	adc	a,#0xFF
	ld	b,a
;	genAssign (pointer)
;	isBitvar = 0
	ld	hl,#__sdcc_heap_start
	ld	(hl),c
	inc	hl
	ld	(hl),b
;malloc.c:57: pbase->next->next = NULL; //And mark it as last
;	genAssign (pointer)
;	isBitvar = 0
	ld	l,c
	ld	h,b
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;malloc.c:58: pbase->prev       = NULL; //and mark first as first
;	genPlus
;	genPlusIncr
	ld	bc,#__sdcc_heap_start + 2
;	genAssign (pointer)
;	isBitvar = 0
	ld	l,c
	ld	h,b
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;malloc.c:59: pbase->len        = 0;    //Empty and ready.
;	genPlus
;	genPlusIncr
	ld	bc,#__sdcc_heap_start + 4
;	genAssign (pointer)
;	isBitvar = 0
	ld	l,c
	ld	h,b
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;	genLabel
;	genEndFunction
	ret
__sdcc_heap_init_end::
;malloc.c:63: malloc (unsigned int size)
;	genLabel
;	genFunction
;	---------------------------------
; Function malloc
; ---------------------------------
_malloc_start::
_malloc:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-6
	add	hl,sp
	ld	sp,hl
;malloc.c:69: if (size>(0xFFFF-HEADER_SIZE))
;	genCmpGt
;	AOP_STK for 
	ld	a,#0xF9
	sub	a,4(ix)
	ld	a,#0xFF
	sbc	a,5(ix)
	jr	NC,00102$
;malloc.c:71: return NULL; //To prevent overflow in next line
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 2
	ld	hl,#0x0000
	jp	00117$
;	genLabel
00102$:
;malloc.c:74: size += HEADER_SIZE; //We need a memory for header too
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	ld	a,4(ix)
	add	a,#0x06
	ld	4(ix),a
	ld	a,5(ix)
	adc	a,#0x00
	ld	5(ix),a
;malloc.c:75: current_header = &_sdcc_heap_start;
;	genAssign
;	AOP_STK for _malloc_current_header_1_1
	ld	-2(ix),#<__sdcc_heap_start
	ld	-1(ix),#>__sdcc_heap_start
;malloc.c:124: }
;	genCritical
	ld	a,i
	di
	push	af
;malloc.c:79: while (1)
;	genLabel
00108$:
;malloc.c:88: if ((((unsigned int)current_header->next) -
;	genPointerGet
;	AOP_STK for _malloc_current_header_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genCast
;	AOP_STK for _malloc__1_0
	ld	-6(ix),e
	ld	-5(ix),d
;malloc.c:89: ((unsigned int)current_header) -
;	genCast
;	AOP_STK for _malloc_current_header_1_1
	ld	c,-2(ix)
	ld	b,-1(ix)
;	genMinus
;	AOP_STK for _malloc__1_0
	ld	a,-6(ix)
	sub	a,c
	ld	-6(ix),a
	ld	a,-5(ix)
	sbc	a,b
	ld	-5(ix),a
;malloc.c:90: current_header->len) >= size)
;	genPlus
;	AOP_STK for _malloc_current_header_1_1
;	genPlusIncr
	ld	a,-2(ix)
	add	a,#0x04
	ld	c,a
	ld	a,-1(ix)
	adc	a,#0x00
	ld	b,a
;	genPointerGet
	ld	l,c
	ld	h,b
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genMinus
;	AOP_STK for _malloc__1_0
	ld	a,-6(ix)
	sub	a,c
	ld	c,a
	ld	a,-5(ix)
	sbc	a,b
	ld	b,a
;	genCmpLt
;	AOP_STK for 
	ld	a,c
	sub	a,4(ix)
	ld	a,b
	sbc	a,5(ix)
	jr	C,00104$
;malloc.c:92: ret = &current_header->mem;
;	genPlus
;	AOP_STK for _malloc_current_header_1_1
;	genPlusIncr
	ld	a,-2(ix)
	add	a,#0x06
	ld	c,a
	ld	a,-1(ix)
	adc	a,#0x00
	ld	b,a
;malloc.c:93: break;
;	genGoto
	jr	00109$
;	genLabel
00104$:
;malloc.c:95: current_header = current_header->next;    //else try next
;	genAssign
;	(registers are the same)
;	genAssign
;	AOP_STK for _malloc_current_header_1_1
	ld	-2(ix),e
	ld	-1(ix),d
;malloc.c:96: if (!current_header->next)
;	genPointerGet
;	AOP_STK for _malloc_current_header_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genIfx
	ld	a,e
	or	a,d
	jp	NZ,00108$
;malloc.c:98: ret = NULL;
;	genAssign
	ld	bc,#0x0000
;malloc.c:99: break;
;	genLabel
00109$:
;malloc.c:103: if (ret)
;	genIfx
	ld	a,c
	or	a,b
	jp	Z,00116$
;malloc.c:105: if (!current_header->len)
;	genPlus
;	AOP_STK for _malloc_current_header_1_1
;	genPlusIncr
	ld	a,-2(ix)
	add	a,#0x04
	ld	e,a
	ld	a,-1(ix)
	adc	a,#0x00
	ld	d,a
;	genPointerGet
;	AOP_STK for _malloc__1_0
	ld	l,e
	ld	h,d
	ld	a,(hl)
	ld	-6(ix),a
	inc	hl
	ld	a,(hl)
	ld	-5(ix),a
;	genIfx
;	AOP_STK for _malloc__1_0
	ld	a,-6(ix)
	or	a,-5(ix)
	jr	NZ,00113$
;malloc.c:107: current_header->len = size; //for first allocation
;	genAssign (pointer)
;	AOP_STK for 
;	isBitvar = 0
	ld	l,e
	ld	h,d
	ld	a,4(ix)
	ld	(hl),a
	inc	hl
	ld	a,5(ix)
	ld	(hl),a
;	genGoto
	jp	00116$
;	genLabel
00113$:
;malloc.c:112: new_header = (MEMHEADER * )((char *)current_header + current_header->len);
;	genPlus
;	AOP_STK for _malloc_current_header_1_1
;	AOP_STK for _malloc__1_0
	ld	a,-2(ix)
	add	a,-6(ix)
	ld	e,a
	ld	a,-1(ix)
	adc	a,-5(ix)
	ld	d,a
;	genAssign
;	AOP_STK for _malloc_new_header_1_1
	ld	-4(ix),e
	ld	-3(ix),d
;malloc.c:113: new_header->next = current_header->next; //and plug it into the chain
;	genPointerGet
;	AOP_STK for _malloc_current_header_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genAssign (pointer)
;	AOP_STK for _malloc_new_header_1_1
;	isBitvar = 0
	ld	l,-4(ix)
	ld	h,-3(ix)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;malloc.c:114: new_header->prev = current_header;
;	genPlus
;	AOP_STK for _malloc_new_header_1_1
;	genPlusIncr
	ld	e,-4(ix)
	ld	d,-3(ix)
	inc	de
	inc	de
;	genAssign (pointer)
;	AOP_STK for _malloc_current_header_1_1
;	isBitvar = 0
	ld	l,e
	ld	h,d
	ld	a,-2(ix)
	ld	(hl),a
	inc	hl
	ld	a,-1(ix)
	ld	(hl),a
;malloc.c:115: current_header->next  = new_header;
;	genAssign (pointer)
;	AOP_STK for _malloc_current_header_1_1
;	AOP_STK for _malloc_new_header_1_1
;	isBitvar = 0
	ld	l,-2(ix)
	ld	h,-1(ix)
	ld	a,-4(ix)
	ld	(hl),a
	inc	hl
	ld	a,-3(ix)
	ld	(hl),a
;malloc.c:116: if (new_header->next)
;	genIfx
	ld	a,c
	or	a,b
	jr	Z,00111$
;malloc.c:118: new_header->next->prev = new_header;
;	genPointerGet
;	AOP_STK for _malloc_new_header_1_1
	ld	l,-4(ix)
	ld	h,-3(ix)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genPlus
;	genPlusIncr
	inc	de
	inc	de
;	genAssign (pointer)
;	AOP_STK for _malloc_new_header_1_1
;	isBitvar = 0
	ld	l,e
	ld	h,d
	ld	a,-4(ix)
	ld	(hl),a
	inc	hl
	ld	a,-3(ix)
	ld	(hl),a
;	genLabel
00111$:
;malloc.c:120: new_header->len  = size; //mark as used
;	genPlus
;	AOP_STK for _malloc_new_header_1_1
;	genPlusIncr
	ld	a,-4(ix)
	add	a,#0x04
	ld	e,a
	ld	a,-3(ix)
	adc	a,#0x00
	ld	d,a
;	genAssign (pointer)
;	AOP_STK for 
;	isBitvar = 0
	ld	l,e
	ld	h,d
	ld	a,4(ix)
	ld	(hl),a
	inc	hl
	ld	a,5(ix)
	ld	(hl),a
;malloc.c:121: ret = &new_header->mem;
;	genPlus
;	AOP_STK for _malloc_new_header_1_1
;	genPlusIncr
	ld	a,-4(ix)
	add	a,#0x06
	ld	c,a
	ld	a,-3(ix)
	adc	a,#0x00
	ld	b,a
;	genLabel
00116$:
;	genEndCritical
	pop	af
	jp	PO,00127$
	ei
00127$:
;malloc.c:125: return ret;
;	genRet
; Dump of IC_LEFT: type AOP_REG size 2
;	 reg = bc
	ld	l,c
	ld	h,b
;	genLabel
00117$:
;	genEndFunction
	ld	sp,ix
	pop	ix
	ret
_malloc_end::
	.area _CODE
	.area _CABS
