;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:25 2018
;--------------------------------------------------------
	.module malloc
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __sdcc_first_memheader
	.globl _malloc
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (DATA)
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (DATA)
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
__sdcc_first_memheader::
	.ds 2
_malloc_size_1_1:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;	malloc.c:153: MEMHEADER __xdata * _sdcc_first_memheader = NULL;
	clr	a
	mov	__sdcc_first_memheader,a
	mov	(__sdcc_first_memheader + 1),a
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'init_dynamic_memory'
;------------------------------------------------------------
;heap                      Allocated to registers r2 r3 
;size                      Allocated to registers r4 r5 
;------------------------------------------------------------
;	malloc.c:158: static void init_dynamic_memory(void)
;	-----------------------------------------
;	 function init_dynamic_memory
;	-----------------------------------------
_init_dynamic_memory:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	malloc.c:160: char __xdata * heap = (char __xdata *)_sdcc_heap;
	mov	r2,#__sdcc_heap
	mov	r3,#(__sdcc_heap >> 8)
;	malloc.c:161: unsigned int size = _sdcc_heap_size;
	mov	dptr,#__sdcc_heap_size
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r5,a
;	malloc.c:163: if ( !heap ) //Reserved memory starts at 0x0000 but that's NULL...
	mov	a,r2
	orl	a,r3
	jnz	00102$
;	malloc.c:165: heap++;
	inc	r2
	cjne	r2,#0x00,00107$
	inc	r3
00107$:
;	malloc.c:166: size--;
	dec	r4
	cjne	r4,#0xff,00108$
	dec	r5
00108$:
00102$:
;	malloc.c:168: _sdcc_first_memheader = (MEMHEADER __xdata * ) heap;
	mov	__sdcc_first_memheader,r2
	mov	(__sdcc_first_memheader + 1),r3
;	malloc.c:170: _sdcc_first_memheader->next = (MEMHEADER __xdata * )(heap + size - sizeof(MEMHEADER __xdata *));
	mov	dpl,__sdcc_first_memheader
	mov	dph,(__sdcc_first_memheader + 1)
	mov	a,r4
	add	a,r2
	mov	r2,a
	mov	a,r5
	addc	a,r3
	mov	r3,a
	mov	a,r2
	add	a,#0xfe
	mov	r2,a
	mov	a,r3
	addc	a,#0xff
	mov	r3,a
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
;	malloc.c:171: _sdcc_first_memheader->next->next = (MEMHEADER __xdata * ) NULL; //And mark it as last
	mov	dpl,__sdcc_first_memheader
	mov	dph,(__sdcc_first_memheader + 1)
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	malloc.c:172: _sdcc_first_memheader->len        = 0;    //Empty and ready.
	mov	dpl,__sdcc_first_memheader
	mov	dph,(__sdcc_first_memheader + 1)
	inc	dptr
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'malloc'
;------------------------------------------------------------
;size                      Allocated with name '_malloc_size_1_1'
;current_header            Allocated to registers r4 r5 
;new_header                Allocated to registers r0 r1 
;ret                       Allocated to registers r2 r3 
;------------------------------------------------------------
;	malloc.c:175: void __xdata * malloc (unsigned int size)
;	-----------------------------------------
;	 function malloc
;	-----------------------------------------
_malloc:
	mov	_malloc_size_1_1,dpl
	mov	(_malloc_size_1_1 + 1),dph
;	malloc.c:181: if (size>(0xFFFF-HEADER_SIZE))
	clr	c
	mov	a,#0xFB
	subb	a,_malloc_size_1_1
	mov	a,#0xFF
	subb	a,(_malloc_size_1_1 + 1)
	jnc	00102$
;	malloc.c:182: return (void __xdata *) NULL; //To prevent overflow in next line
	mov	dptr,#0x0000
	ret
00102$:
;	malloc.c:183: size += HEADER_SIZE; //We need a memory for header too
	mov	a,#0x04
	add	a,_malloc_size_1_1
	mov	_malloc_size_1_1,a
	clr	a
	addc	a,(_malloc_size_1_1 + 1)
	mov	(_malloc_size_1_1 + 1),a
;	malloc.c:185: if (!_sdcc_first_memheader)
	mov	a,__sdcc_first_memheader
	orl	a,(__sdcc_first_memheader + 1)
	jnz	00104$
;	malloc.c:186: init_dynamic_memory();
	lcall	_init_dynamic_memory
00104$:
;	malloc.c:188: current_header = _sdcc_first_memheader;
	mov	r4,__sdcc_first_memheader
	mov	r5,(__sdcc_first_memheader + 1)
;	malloc.c:191: while (1)
00110$:
;	malloc.c:201: if ((((unsigned int)current_header->next) -
	mov	dpl,r4
	mov	dph,r5
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar0,r6
	mov	ar1,r7
;	malloc.c:202: ((unsigned int)current_header) -
	mov	ar2,r4
	mov	ar3,r5
	mov	a,r0
	clr	c
	subb	a,r2
	mov	r0,a
	mov	a,r1
	subb	a,r3
	mov	r1,a
;	malloc.c:203: current_header->len) >= size)
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r0
	clr	c
	subb	a,r2
	mov	r0,a
	mov	a,r1
	subb	a,r3
	mov	r1,a
	clr	c
	mov	a,r0
	subb	a,_malloc_size_1_1
	mov	a,r1
	subb	a,(_malloc_size_1_1 + 1)
	jc	00106$
;	malloc.c:205: ret = current_header->mem;
	mov	a,#0x04
	add	a,r4
	mov	r2,a
	clr	a
	addc	a,r5
	mov	r3,a
;	malloc.c:206: break;
	sjmp	00111$
00106$:
;	malloc.c:208: current_header = current_header->next;    //else try next
	mov	ar4,r6
	mov	ar5,r7
;	malloc.c:209: if (!current_header->next)
	mov	dpl,r4
	mov	dph,r5
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
;	malloc.c:211: ret = (void __xdata *) NULL;
	jnz	00110$
	mov	r2,a
	mov	r3,a
;	malloc.c:212: break;
00111$:
;	malloc.c:215: if (ret)
	mov	a,r2
	orl	a,r3
	jz	00116$
;	malloc.c:217: if (!current_header->len)
	mov	a,#0x02
	add	a,r4
	mov	r6,a
	clr	a
	addc	a,r5
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	orl	a,r0
	jnz	00113$
;	malloc.c:219: current_header->len = size; //for first allocation
	mov	dpl,r6
	mov	dph,r7
	mov	a,_malloc_size_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,(_malloc_size_1_1 + 1)
	movx	@dptr,a
	sjmp	00116$
00113$:
;	malloc.c:223: new_header = (MEMHEADER __xdata * )((char __xdata *)current_header + current_header->len);
	mov	a,r0
	add	a,r4
	mov	r0,a
	mov	a,r1
	addc	a,r5
	mov	r1,a
;	malloc.c:224: new_header->next = current_header->next; //and plug it into the chain
	mov	dpl,r4
	mov	dph,r5
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r0
	mov	dph,r1
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	malloc.c:225: current_header->next  = new_header;
	mov	dpl,r4
	mov	dph,r5
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
;	malloc.c:226: new_header->len  = size; //mark as used
	mov	dpl,r0
	mov	dph,r1
	inc	dptr
	inc	dptr
	mov	a,_malloc_size_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,(_malloc_size_1_1 + 1)
	movx	@dptr,a
;	malloc.c:227: ret = new_header->mem;
	mov	a,#0x04
	add	a,r0
	mov	r2,a
	clr	a
	addc	a,r1
	mov	r3,a
00116$:
;	malloc.c:231: return ret;
	mov	dpl,r2
	mov	dph,r3
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
