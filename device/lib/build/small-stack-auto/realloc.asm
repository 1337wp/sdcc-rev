;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:28 2018
;--------------------------------------------------------
	.module realloc
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _realloc
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
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area OSEG    (OVR,DATA)
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
;Allocation info for local variables in function 'realloc'
;------------------------------------------------------------
;size                      Allocated to stack - offset -4
;p                         Allocated to stack - offset 1
;pthis                     Allocated to stack - offset 4
;pnew                      Allocated to stack - offset 6
;ret                       Allocated to stack - offset 8
;sloc0                     Allocated to stack - offset 10
;------------------------------------------------------------
;	realloc.c:76: void __xdata * realloc (void * p, size_t size)
;	-----------------------------------------
;	 function realloc
;	-----------------------------------------
_realloc:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x0b
	mov	sp,a
;	realloc.c:134: }
	setb	c
	jbc	ea,00124$
	clr	c
00124$:
	push	psw
;	realloc.c:84: pthis = _sdcc_find_memheader(p);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	__sdcc_find_memheader
	mov	r5,dpl
	mov	r6,dph
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
;	realloc.c:85: if (pthis)
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00125$
	ljmp	00114$
00125$:
;	realloc.c:87: if (size > (0xFFFF-HEADER_SIZE))
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	clr	c
	mov	a,#0xFB
	subb	a,@r0
	mov	a,#0xFF
	inc	r0
	subb	a,@r0
	jnc	00111$
;	realloc.c:89: ret = (void __xdata *) NULL; //To prevent overflow in next line
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	ljmp	00115$
00111$:
;	realloc.c:93: size += HEADER_SIZE; //We need a memory for header too
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,#0x04
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	realloc.c:95: if ((((unsigned int)pthis->next) - ((unsigned int)pthis)) >= size)
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	ar3,r7
	mov	ar4,r2
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	mov	a,r3
	clr	c
	subb	a,r5
	mov	r3,a
	mov	a,r4
	subb	a,r6
	mov	r4,a
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	clr	c
	mov	a,r3
	subb	a,@r0
	mov	a,r4
	inc	r0
	subb	a,@r0
	jc	00108$
;	realloc.c:97: pthis->len = size;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	dptr
	inc	dptr
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	movx	@dptr,a
	inc	dptr
	inc	r0
	mov	a,@r0
	movx	@dptr,a
;	realloc.c:98: ret = p;
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x08
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	ljmp	00115$
00108$:
;	realloc.c:102: if ((_sdcc_prev_memheader) &&
	mov	a,__sdcc_prev_memheader
	orl	a,(__sdcc_prev_memheader + 1)
	jnz	00128$
	ljmp	00104$
00128$:
;	realloc.c:103: ((((unsigned int)pthis->next) -
;	realloc.c:104: ((unsigned int)_sdcc_prev_memheader) -
	mov	r3,__sdcc_prev_memheader
	mov	r4,(__sdcc_prev_memheader + 1)
	mov	a,r7
	clr	c
	subb	a,r3
	mov	r7,a
	mov	a,r2
	subb	a,r4
	mov	r2,a
;	realloc.c:105: _sdcc_prev_memheader->len) >= size))
	mov	dpl,__sdcc_prev_memheader
	mov	dph,(__sdcc_prev_memheader + 1)
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r7
	clr	c
	subb	a,r3
	mov	r7,a
	mov	a,r2
	subb	a,r4
	mov	r2,a
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	clr	c
	mov	a,r7
	subb	a,@r0
	mov	a,r2
	inc	r0
	subb	a,@r0
	jnc	00129$
	ljmp	00104$
00129$:
;	realloc.c:107: pnew = (MEMHEADER __xdata * )((char __xdata *)_sdcc_prev_memheader + _sdcc_prev_memheader->len);
	mov	dpl,__sdcc_prev_memheader
	mov	dph,(__sdcc_prev_memheader + 1)
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r2
	add	a,__sdcc_prev_memheader
	mov	r2,a
	mov	a,r3
	addc	a,(__sdcc_prev_memheader + 1)
	mov	r3,a
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
;	realloc.c:108: _sdcc_prev_memheader->next = pnew;
	mov	dpl,__sdcc_prev_memheader
	mov	dph,(__sdcc_prev_memheader + 1)
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,@r0
	movx	@dptr,a
	inc	dptr
	inc	r0
	mov	a,@r0
	movx	@dptr,a
;	realloc.c:114: memmove(pnew, pthis, pthis->len);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	dptr
	inc	dptr
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	movx	a,@dptr
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	r2,#0x00
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	r5,#0x00
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar6
	push	ar7
	push	ar2
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	_memmove
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	realloc.c:115: pnew->len = size;
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	dptr
	inc	dptr
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	movx	@dptr,a
	inc	dptr
	inc	r0
	mov	a,@r0
	movx	@dptr,a
;	realloc.c:116: ret = MEM(pnew);
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,_bp
	add	a,#0x08
	mov	r1,a
	mov	a,#0x04
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	ljmp	00115$
00104$:
;	realloc.c:120: ret = malloc(size - HEADER_SIZE);
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	add	a,#0xfc
	mov	dpl,a
	inc	r0
	mov	a,@r0
	addc	a,#0xff
	mov	dph,a
	lcall	_malloc
	mov	r2,dpl
	mov	r3,dph
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
;	realloc.c:121: if (ret)
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00130$
	ljmp	00115$
00130$:
;	realloc.c:123: memcpy(ret, MEM(pthis), pthis->len - HEADER_SIZE);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	a,r2
	add	a,#0xfc
	mov	@r0,a
	mov	a,r3
	addc	a,#0xff
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x04
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	mov	r6,#0x00
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	ar7,@r0
	inc	r0
	mov	ar2,@r0
	mov	r3,#0x00
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar4
	push	ar5
	push	ar6
	mov	dpl,r7
	mov	dph,r2
	mov	b,r3
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	realloc.c:124: free(p);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_free
	sjmp	00115$
00114$:
;	realloc.c:132: ret = malloc(size);
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_malloc
	mov	r2,dpl
	mov	r3,dph
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
00115$:
	pop	psw
	mov	ea,c
;	realloc.c:135: return ret;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
