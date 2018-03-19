;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module malloc
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __sdcc_heap_init
	.globl _malloc
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
	ld	de,#__sdcc_heap_start
	ld	a,c
	ld	(de),a
	inc	de
	ld	a,b
	ld	(de),a
;malloc.c:57: pbase->next->next = NULL; //And mark it as last
;	genAssign (pointer)
;	isBitvar = 0
	ld	e,c
	ld	d,b
	ld	a,#0x00
	ld	(de),a
	inc	de
	ld	a,#0x00
	ld	(de),a
;malloc.c:58: pbase->prev       = NULL; //and mark first as first
;	genPlus
;	genPlusIncr
	ld	bc,#__sdcc_heap_start + 2
;	genAssign (pointer)
;	isBitvar = 0
	ld	e,c
	ld	d,b
	ld	a,#0x00
	ld	(de),a
	inc	de
	ld	a,#0x00
	ld	(de),a
;malloc.c:59: pbase->len        = 0;    //Empty and ready.
;	genPlus
;	genPlusIncr
	ld	bc,#__sdcc_heap_start + 4
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
00101$:
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
	lda	sp,-10(sp)
;malloc.c:69: if (size>(0xFFFF-HEADER_SIZE))
;	genCmpGt
;	AOP_STK for 
	ld	a,#0xF9
	lda	hl,12(sp)
	sub	a,(hl)
	ld	a,#0xFF
	inc	hl
	sbc	a,(hl)
	jp	NC,00102$
;malloc.c:71: return NULL; //To prevent overflow in next line
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 2
	ld	de,#0x0000
	jp	00117$
;	genLabel
00102$:
;malloc.c:74: size += HEADER_SIZE; //We need a memory for header too
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	lda	hl,12(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0006
	add	hl,de
	ld	a,l
	ld	d,h
	lda	hl,12(sp)
	ld	(hl+),a
	ld	(hl),d
;malloc.c:75: current_header = &_sdcc_heap_start;
;	genAssign
;	AOP_STK for _malloc_current_header_1_1
	lda	hl,8(sp)
	ld	(hl),#<__sdcc_heap_start
	inc	hl
	ld	(hl),#>__sdcc_heap_start
;malloc.c:124: }
;	genCritical
	di
;malloc.c:79: while (1)
;	genLabel
00108$:
;malloc.c:88: if ((((unsigned int)current_header->next) -
;	genPointerGet
;	AOP_STK for _malloc_current_header_1_1
;	AOP_STK for _malloc__1_0
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
;	AOP_STK for _malloc__1_0
;	AOP_STK for _malloc__1_0
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
;malloc.c:89: ((unsigned int)current_header) -
;	genCast
;	AOP_STK for _malloc_current_header_1_1
	lda	hl,8(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genMinus
;	AOP_STK for _malloc__1_0
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
;malloc.c:90: current_header->len) >= size)
;	genPlus
;	AOP_STK for _malloc_current_header_1_1
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
;	AOP_STK for _malloc__1_0
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
	lda	hl,12(sp)
	sub	a,(hl)
	ld	a,b
	inc	hl
	sbc	a,(hl)
	jp	C,00104$
;malloc.c:92: ret = &current_header->mem;
;	genPlus
;	AOP_STK for _malloc_current_header_1_1
;	AOP_STK for _malloc_ret_1_1
;	genPlusIncr
	lda	hl,8(sp)
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
;malloc.c:93: break;
;	genGoto
	jp	00109$
;	genLabel
00104$:
;malloc.c:95: current_header = current_header->next;    //else try next
;	genAssign
;	AOP_STK for _malloc__1_0
	lda	hl,2(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genAssign
;	AOP_STK for _malloc_current_header_1_1
	lda	hl,8(sp)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;malloc.c:96: if (!current_header->next)
;	genPointerGet
;	AOP_STK for _malloc_current_header_1_1
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	c,a
	inc	de
	ld	a,(de)
;	genIfx
	ld	b,a
	or	a,c
	jp	NZ,00108$
;malloc.c:98: ret = NULL;
;	genAssign
;	AOP_STK for _malloc_ret_1_1
	lda	hl,4(sp)
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;malloc.c:99: break;
;	genLabel
00109$:
;malloc.c:103: if (ret)
;	genIfx
;	AOP_STK for _malloc_ret_1_1
	lda	hl,4(sp)
	ld	a,(hl+)
	or	a,(hl)
	jp	Z,00116$
;malloc.c:105: if (!current_header->len)
;	genPlus
;	AOP_STK for _malloc_current_header_1_1
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
;	AOP_STK for _malloc__1_0
	ld	e,c
	ld	d,b
	ld	a,(de)
	lda	hl,0(sp)
	ld	(hl+),a
	inc	de
	ld	a,(de)
;	genIfx
;	AOP_STK for _malloc__1_0
	ld	(hl-),a
	ld	a,(hl+)
	or	a,(hl)
	jp	NZ,00113$
;malloc.c:107: current_header->len = size; //for first allocation
;	genAssign (pointer)
;	AOP_STK for 
;	isBitvar = 0
	ld	e,c
	ld	d,b
	lda	hl,12(sp)
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
;	genGoto
	jp	00116$
;	genLabel
00113$:
;malloc.c:112: new_header = (MEMHEADER * )((char *)current_header + current_header->len);
;	genPlus
;	AOP_STK for _malloc_current_header_1_1
;	AOP_STK for _malloc__1_0
	lda	hl,8(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	lda	hl,0(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	add	hl,de
	ld	c,l
	ld	b,h
;	genAssign
;	AOP_STK for _malloc_new_header_1_1
	lda	hl,6(sp)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;malloc.c:113: new_header->next = current_header->next; //and plug it into the chain
;	genPointerGet
;	AOP_STK for _malloc_current_header_1_1
;	AOP_STK for _malloc__1_0
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	lda	hl,0(sp)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
;	genAssign (pointer)
;	AOP_STK for _malloc_new_header_1_1
;	AOP_STK for _malloc__1_0
;	isBitvar = 0
	lda	hl,6(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	lda	hl,0(sp)
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
;malloc.c:114: new_header->prev = current_header;
;	genPlus
;	AOP_STK for _malloc_new_header_1_1
;	genPlusIncr
	lda	hl,6(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	inc	bc
;	genAssign (pointer)
;	AOP_STK for _malloc_current_header_1_1
;	isBitvar = 0
	ld	e,c
	ld	d,b
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
;malloc.c:115: current_header->next  = new_header;
;	genAssign (pointer)
;	AOP_STK for _malloc_current_header_1_1
;	AOP_STK for _malloc_new_header_1_1
;	isBitvar = 0
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	lda	hl,6(sp)
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
;malloc.c:116: if (new_header->next)
;	genIfx
;	AOP_STK for _malloc__1_0
	lda	hl,0(sp)
	ld	a,(hl+)
	or	a,(hl)
	jp	Z,00111$
;malloc.c:118: new_header->next->prev = new_header;
;	genPointerGet
;	AOP_STK for _malloc_new_header_1_1
	lda	hl,6(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	c,a
	inc	de
	ld	a,(de)
	ld	b,a
;	genPlus
;	genPlusIncr
	inc	bc
	inc	bc
;	genAssign (pointer)
;	AOP_STK for _malloc_new_header_1_1
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
;	genLabel
00111$:
;malloc.c:120: new_header->len  = size; //mark as used
;	genPlus
;	AOP_STK for _malloc_new_header_1_1
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
	lda	hl,12(sp)
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
;malloc.c:121: ret = &new_header->mem;
;	genPlus
;	AOP_STK for _malloc_new_header_1_1
;	AOP_STK for _malloc_ret_1_1
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
;	genLabel
00116$:
;	genEndCritical
	ei
;malloc.c:125: return ret;
;	genRet
;	AOP_STK for _malloc_ret_1_1
; Dump of IC_LEFT: type AOP_STK size 2
;	 aop_stk -6
	lda	hl,4(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genLabel
00117$:
;	genEndFunction
	lda	sp,10(sp)
	ret
_malloc_end::
	.area _CODE
	.area _CABS
