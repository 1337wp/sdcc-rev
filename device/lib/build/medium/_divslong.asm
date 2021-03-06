;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:26 2018
;--------------------------------------------------------
	.module _divslong
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __divslong_PARM_2
	.globl __divslong
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
__divslong_sloc0_1_0:
	.ds 4
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
__divslong_PARM_2:
	.ds 4
__divslong_r_1_1:
	.ds 4
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
;Allocation info for local variables in function '_divslong'
;------------------------------------------------------------
;sloc0                     Allocated with name '__divslong_sloc0_1_0'
;------------------------------------------------------------
;	_divslong.c:255: _divslong (long x, long y)
;	-----------------------------------------
;	 function _divslong
;	-----------------------------------------
__divslong:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	_divslong.c:259: r = _divulong((x < 0 ? -x : x),
	mov	r5,a
	rlc	a
	clr	a
	rlc	a
	mov	r6,a
	jz	00106$
	clr	c
	clr	a
	subb	a,r2
	mov	__divslong_sloc0_1_0,a
	clr	a
	subb	a,r3
	mov	(__divslong_sloc0_1_0 + 1),a
	clr	a
	subb	a,r4
	mov	(__divslong_sloc0_1_0 + 2),a
	clr	a
	subb	a,r5
	mov	(__divslong_sloc0_1_0 + 3),a
	sjmp	00107$
00106$:
	mov	__divslong_sloc0_1_0,r2
	mov	(__divslong_sloc0_1_0 + 1),r3
	mov	(__divslong_sloc0_1_0 + 2),r4
	mov	(__divslong_sloc0_1_0 + 3),r5
00107$:
	mov	r2,__divslong_sloc0_1_0
	mov	r3,(__divslong_sloc0_1_0 + 1)
	mov	r4,(__divslong_sloc0_1_0 + 2)
	mov	r5,(__divslong_sloc0_1_0 + 3)
;	_divslong.c:260: (y < 0 ? -y : y));
	mov	r0,#(__divslong_PARM_2 + 3)
	movx	a,@r0
	rlc	a
	clr	a
	rlc	a
	mov	r7,a
	jz	00108$
	mov	r0,#__divslong_PARM_2
	movx	a,@r0
	setb	c
	cpl	a
	addc	a,#0x00
	mov	__divslong_sloc0_1_0,a
	inc	r0
	movx	a,@r0
	cpl	a
	addc	a,#0x00
	mov	(__divslong_sloc0_1_0 + 1),a
	inc	r0
	movx	a,@r0
	cpl	a
	addc	a,#0x00
	mov	(__divslong_sloc0_1_0 + 2),a
	inc	r0
	movx	a,@r0
	cpl	a
	addc	a,#0x00
	mov	(__divslong_sloc0_1_0 + 3),a
	sjmp	00109$
00108$:
	mov	r0,#__divslong_PARM_2
	movx	a,@r0
	mov	__divslong_sloc0_1_0,a
	inc	r0
	movx	a,@r0
	mov	(__divslong_sloc0_1_0 + 1),a
	inc	r0
	movx	a,@r0
	mov	(__divslong_sloc0_1_0 + 2),a
	inc	r0
	movx	a,@r0
	mov	(__divslong_sloc0_1_0 + 3),a
00109$:
	mov	r0,#__divulong_PARM_2
	mov	a,__divslong_sloc0_1_0
	movx	@r0,a
	inc	r0
	mov	a,(__divslong_sloc0_1_0 + 1)
	movx	@r0,a
	inc	r0
	mov	a,(__divslong_sloc0_1_0 + 2)
	movx	@r0,a
	inc	r0
	mov	a,(__divslong_sloc0_1_0 + 3)
	movx	@r0,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	push	ar6
	push	ar7
	lcall	__divulong
	mov	r0,#__divslong_r_1_1
	push	acc
	mov	a,dpl
	movx	@r0,a
	inc	r0
	mov	a,dph
	movx	@r0,a
	inc	r0
	mov	a,b
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
	pop	ar7
	pop	ar6
;	_divslong.c:261: if ( (x < 0) ^ (y < 0))
	mov	a,r7
	xrl	a,r6
	jz	00102$
;	_divslong.c:262: return -r;
	mov	r0,#__divslong_r_1_1
	movx	a,@r0
	setb	c
	cpl	a
	addc	a,#0x00
	mov	r6,a
	inc	r0
	movx	a,@r0
	cpl	a
	addc	a,#0x00
	mov	r7,a
	inc	r0
	movx	a,@r0
	cpl	a
	addc	a,#0x00
	mov	r2,a
	inc	r0
	movx	a,@r0
	cpl	a
	addc	a,#0x00
	mov	dpl,r6
	mov	dph,r7
	mov	b,r2
	ret
00102$:
;	_divslong.c:264: return r;
	mov	r0,#__divslong_r_1_1
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
