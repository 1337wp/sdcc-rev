;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:27 2018
;--------------------------------------------------------
	.module realloc
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _realloc_PARM_2
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
_realloc_sloc0_1_0:
	.ds 2
_realloc_sloc1_1_0:
	.ds 3
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
_realloc_PARM_2:
	.ds 2
_realloc_p_1_1:
	.ds 3
_realloc_pnew_1_1:
	.ds 2
_realloc_ret_1_1:
	.ds 2
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
;sloc0                     Allocated with name '_realloc_sloc0_1_0'
;sloc1                     Allocated with name '_realloc_sloc1_1_0'
;size                      Allocated with name '_realloc_PARM_2'
;p                         Allocated with name '_realloc_p_1_1'
;pthis                     Allocated with name '_realloc_pthis_1_1'
;pnew                      Allocated with name '_realloc_pnew_1_1'
;ret                       Allocated with name '_realloc_ret_1_1'
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
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_realloc_p_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
;	realloc.c:84: pthis = _sdcc_find_memheader(p);
	mov	dptr,#_realloc_p_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	ar5,r2
	mov	ar6,r3
	mov	dpl,r5
	mov	dph,r6
	push	ar2
	push	ar3
	push	ar4
	lcall	__sdcc_find_memheader
	mov	r5,dpl
	mov	r6,dph
	pop	ar4
	pop	ar3
	pop	ar2
;	realloc.c:85: if (pthis)
	mov	a,r5
	orl	a,r6
	jnz	00124$
	ljmp	00114$
00124$:
;	realloc.c:87: if (size > (0xFFFF-HEADER_SIZE))
	mov	dptr,#_realloc_PARM_2
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	clr	c
	mov	a,#0xFB
	subb	a,r7
	mov	a,#0xFF
	subb	a,r0
	jnc	00111$
;	realloc.c:89: ret = (void __xdata *) NULL; //To prevent overflow in next line
	mov	dptr,#_realloc_ret_1_1
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	ljmp	00115$
00111$:
;	realloc.c:93: size += HEADER_SIZE; //We need a memory for header too
	push	ar2
	push	ar3
	push	ar4
	mov	dptr,#_realloc_PARM_2
	mov	a,#0x04
	add	a,r7
	movx	@dptr,a
	clr	a
	addc	a,r0
	inc	dptr
	movx	@dptr,a
;	realloc.c:95: if ((((unsigned int)pthis->next) - ((unsigned int)pthis)) >= size)
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	mov	ar1,r7
	mov	ar2,r0
	mov	ar3,r5
	mov	ar4,r6
	mov	a,r1
	clr	c
	subb	a,r3
	mov	r1,a
	mov	a,r2
	subb	a,r4
	mov	r2,a
	mov	dptr,#_realloc_PARM_2
	movx	a,@dptr
	mov	_realloc_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_realloc_sloc0_1_0 + 1),a
	clr	c
	mov	a,r1
	subb	a,_realloc_sloc0_1_0
	mov	a,r2
	subb	a,(_realloc_sloc0_1_0 + 1)
	pop	ar4
	pop	ar3
	pop	ar2
	jc	00108$
;	realloc.c:97: pthis->len = size;
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	inc	dptr
	mov	a,_realloc_sloc0_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_realloc_sloc0_1_0 + 1)
	movx	@dptr,a
;	realloc.c:98: ret = p;
	mov	dptr,#_realloc_ret_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	ljmp	00115$
00108$:
;	realloc.c:102: if ((_sdcc_prev_memheader) &&
	mov	dptr,#__sdcc_prev_memheader
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	orl	a,r2
	jnz	00127$
	ljmp	00104$
00127$:
;	realloc.c:103: ((((unsigned int)pthis->next) -
;	realloc.c:104: ((unsigned int)_sdcc_prev_memheader) -
	mov	ar4,r2
	mov	ar1,r3
	mov	a,r7
	clr	c
	subb	a,r4
	mov	r7,a
	mov	a,r0
	subb	a,r1
	mov	r0,a
;	realloc.c:105: _sdcc_prev_memheader->len) >= size))
	mov	dpl,r2
	mov	dph,r3
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	a,r7
	clr	c
	subb	a,r4
	mov	r7,a
	mov	a,r0
	subb	a,r1
	mov	r0,a
	clr	c
	mov	a,r7
	subb	a,_realloc_sloc0_1_0
	mov	a,r0
	subb	a,(_realloc_sloc0_1_0 + 1)
	jc	00104$
;	realloc.c:107: pnew = (MEMHEADER __xdata * )((char __xdata *)_sdcc_prev_memheader + _sdcc_prev_memheader->len);
	mov	a,r4
	add	a,r2
	mov	r4,a
	mov	a,r1
	addc	a,r3
	mov	r1,a
	mov	dptr,#_realloc_pnew_1_1
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
;	realloc.c:108: _sdcc_prev_memheader->next = pnew;
	mov	dpl,r2
	mov	dph,r3
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
;	realloc.c:114: memmove(pnew, pthis, pthis->len);
	mov	r2,#0x00
	mov	ar3,r5
	mov	ar7,r6
	mov	_realloc_sloc1_1_0,r3
	mov	(_realloc_sloc1_1_0 + 1),r7
	mov	(_realloc_sloc1_1_0 + 2),#0x00
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_memmove_PARM_2
	mov	a,_realloc_sloc1_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_realloc_sloc1_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_realloc_sloc1_1_0 + 2)
	movx	@dptr,a
	mov	dptr,#_memmove_PARM_3
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r1
	mov	b,r2
	lcall	_memmove
;	realloc.c:115: pnew->len = size;
	mov	dptr,#_realloc_pnew_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	inc	dptr
	inc	dptr
	mov	a,_realloc_sloc0_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_realloc_sloc0_1_0 + 1)
	movx	@dptr,a
;	realloc.c:116: ret = MEM(pnew);
	mov	dptr,#_realloc_ret_1_1
	mov	a,#0x04
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	ljmp	00115$
00104$:
;	realloc.c:120: ret = malloc(size - HEADER_SIZE);
	mov	dptr,#_realloc_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r2
	add	a,#0xfc
	mov	r2,a
	mov	a,r3
	addc	a,#0xff
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	push	ar5
	push	ar6
	lcall	_malloc
	mov	r2,dpl
	mov	r3,dph
	pop	ar6
	pop	ar5
	mov	dptr,#_realloc_ret_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
;	realloc.c:121: if (ret)
	mov	a,r2
	orl	a,r3
	jz	00115$
;	realloc.c:123: memcpy(ret, MEM(pthis), pthis->len - HEADER_SIZE);
	mov	r4,#0x00
	mov	a,#0x04
	add	a,r5
	mov	r7,a
	clr	a
	addc	a,r6
	mov	r0,a
	mov	r1,#0x00
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,r5
	add	a,#0xfc
	mov	r5,a
	mov	a,r6
	addc	a,#0xff
	mov	r6,a
	mov	dptr,#_memcpy_PARM_2
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	mov	dptr,#_memcpy_PARM_3
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_memcpy
;	realloc.c:124: free(p);
	mov	dptr,#_realloc_p_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_free
	sjmp	00115$
00114$:
;	realloc.c:132: ret = malloc(size);
	mov	dptr,#_realloc_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	lcall	_malloc
	mov	a,dpl
	mov	b,dph
	mov	dptr,#_realloc_ret_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,b
	movx	@dptr,a
00115$:
;	realloc.c:135: return ret;
	mov	dptr,#_realloc_ret_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r2
	mov	dph,a
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
