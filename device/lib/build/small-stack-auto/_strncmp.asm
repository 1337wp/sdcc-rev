;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:28 2018
;--------------------------------------------------------
	.module _strncmp
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strncmp
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
;Allocation info for local variables in function 'strncmp'
;------------------------------------------------------------
;last                      Allocated to stack - offset -5
;count                     Allocated to stack - offset -7
;first                     Allocated to registers r2 r3 r4 
;sloc0                     Allocated to stack - offset 1
;sloc1                     Allocated to stack - offset 3
;------------------------------------------------------------
;	_strncmp.c:26: int strncmp (
;	-----------------------------------------
;	 function strncmp
;	-----------------------------------------
_strncmp:
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
	inc	sp
	inc	sp
	inc	sp
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	_strncmp.c:32: if (!count)
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00114$
;	_strncmp.c:33: return(0);
	mov	dptr,#0x0000
	ljmp	00108$
;	_strncmp.c:35: while (--count && *first && *first == *last) {
00114$:
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	r1,_bp
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
00105$:
	mov	r0,_bp
	inc	r0
	dec	@r0
	cjne	@r0,#0xff,00117$
	inc	r0
	dec	@r0
00117$:
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00107$
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,_bp
	inc	r0
	inc	r0
	inc	r0
	lcall	__gptrget
	mov	@r0,a
	mov	r0,_bp
	inc	r0
	inc	r0
	inc	r0
	mov	a,@r0
	jz	00107$
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	mov	r0,_bp
	inc	r0
	inc	r0
	inc	r0
	mov	a,@r0
	cjne	a,ar2,00120$
	mov	a,#0x01
	sjmp	00121$
00120$:
	clr	a
00121$:
	pop	ar4
	pop	ar3
	pop	ar2
	jz	00107$
;	_strncmp.c:36: first++;
	inc	r2
	cjne	r2,#0x00,00123$
	inc	r3
00123$:
;	_strncmp.c:37: last++;
	inc	r5
	cjne	r5,#0x00,00105$
	inc	r6
	sjmp	00105$
00107$:
;	_strncmp.c:40: return( *first - *last );
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	a,r2
	clr	c
	subb	a,r5
	mov	dpl,a
	mov	a,r3
	subb	a,r4
	mov	dph,a
00108$:
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
