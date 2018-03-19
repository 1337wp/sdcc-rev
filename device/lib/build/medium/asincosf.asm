;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:26 2018
;--------------------------------------------------------
	.module asincosf
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _asincosf
	.globl _asincosf_PARM_2
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
_asincosf_sloc0_1_0:
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
_asincosf_PARM_2:
	.ds 2
_asincosf_x_1_1:
	.ds 4
_asincosf_y_1_1:
	.ds 4
_asincosf_g_1_1:
	.ds 4
_asincosf_i_1_1:
	.ds 2
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
;Allocation info for local variables in function 'asincosf'
;------------------------------------------------------------
;sloc0                     Allocated with name '_asincosf_sloc0_1_0'
;------------------------------------------------------------
;	asincosf.c:42: float asincosf(const float x, const int isacos)
;	-----------------------------------------
;	 function asincosf
;	-----------------------------------------
_asincosf:
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
	mov	r5,a
	mov	r0,#_asincosf_x_1_1
	mov	a,r2
	movx	@r0,a
	inc	r0
	mov	a,r3
	movx	@r0,a
	inc	r0
	mov	a,r4
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
;	asincosf.c:50: y=fabsf(x);
	mov	r0,#_asincosf_x_1_1
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
	lcall	_fabsf
	mov	r0,#_asincosf_y_1_1
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
;	asincosf.c:51: i=isacos;
	mov	r0,#_asincosf_PARM_2
	mov	r1,#_asincosf_i_1_1
	movx	a,@r0
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
;	asincosf.c:52: if (y < EPS) r=y;
	clr	a
	push	acc
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#0x39
	push	acc
	mov	r0,#_asincosf_y_1_1
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
	lcall	___fslt
	mov	r4,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r4
	jz	00107$
	mov	r0,#_asincosf_y_1_1
	movx	a,@r0
	mov	r4,a
	inc	r0
	movx	a,@r0
	mov	r5,a
	inc	r0
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	ljmp	00108$
00107$:
;	asincosf.c:55: if (y > 0.5)
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#0x3F
	push	acc
	mov	r0,#_asincosf_y_1_1
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
	lcall	___fsgt
	mov	r4,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r4
	jnz	00126$
	ljmp	00104$
00126$:
;	asincosf.c:57: i=1-i;
	mov	r0,#_asincosf_i_1_1
	setb	c
	movx	a,@r0
	subb	a,#0x01
	cpl	a
	cpl	c
	movx	@r0,a
	cpl	c
	inc	r0
	movx	a,@r0
	subb	a,#0x00
	cpl	a
	movx	@r0,a
;	asincosf.c:58: if (y > 1.0)
	clr	a
	push	acc
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#0x3F
	push	acc
	mov	r0,#_asincosf_y_1_1
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
	lcall	___fsgt
	mov	r4,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r4
	jz	00102$
;	asincosf.c:60: errno=EDOM;
	mov	r0,#_errno
	mov	a,#0x21
	movx	@r0,a
	clr	a
	inc	r0
	movx	@r0,a
;	asincosf.c:61: return 0.0;
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	ret
00102$:
;	asincosf.c:63: g=(0.5-y)+0.5;
	mov	r0,#_asincosf_y_1_1
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x3F
	lcall	___fssub
	mov	r0,#_asincosf_g_1_1
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
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	asincosf.c:64: g=ldexpf(g,-1);
	mov	r0,#_ldexpf_PARM_2
	mov	a,#0xFF
	movx	@r0,a
	inc	r0
	mov	a,#0xFF
	movx	@r0,a
	mov	r0,#_asincosf_g_1_1
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
	lcall	_ldexpf
	mov	r0,#_asincosf_g_1_1
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
;	asincosf.c:65: y=sqrtf(g);
	mov	r0,#_asincosf_g_1_1
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
	lcall	_sqrtf
	mov	r0,#_asincosf_y_1_1
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
;	asincosf.c:66: y=-(y+y);
	mov	r0,#_asincosf_y_1_1
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	mov	r0,#_asincosf_y_1_1
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
	lcall	___fsadd
	mov	_asincosf_sloc0_1_0,dpl
	mov	(_asincosf_sloc0_1_0 + 1),dph
	mov	(_asincosf_sloc0_1_0 + 2),b
	mov	(_asincosf_sloc0_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	r0,#_asincosf_y_1_1
	mov	a,_asincosf_sloc0_1_0
	movx	@r0,a
	inc	r0
	mov	a,(_asincosf_sloc0_1_0 + 1)
	movx	@r0,a
	inc	r0
	mov	a,(_asincosf_sloc0_1_0 + 2)
	movx	@r0,a
	mov	a,(_asincosf_sloc0_1_0 + 3)
	cpl	acc.7
	inc	r0
	movx	@r0,a
	sjmp	00105$
00104$:
;	asincosf.c:70: g=y*y;
	mov	r0,#_asincosf_y_1_1
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	mov	r0,#_asincosf_y_1_1
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
	lcall	___fsmul
	mov	r0,#_asincosf_g_1_1
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
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00105$:
;	asincosf.c:72: r=y+y*((P(g)*g)/Q(g));
	mov	r0,#_asincosf_g_1_1
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	mov	dptr,#0x2065
	mov	b,#0x01
	mov	a,#0xBF
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r2,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,#0x6B
	push	acc
	mov	a,#0x16
	push	acc
	mov	a,#0x6F
	push	acc
	mov	a,#0x3F
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r2
	mov	a,r3
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	r0,#_asincosf_g_1_1
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsmul
	mov	_asincosf_sloc0_1_0,dpl
	mov	(_asincosf_sloc0_1_0 + 1),dph
	mov	(_asincosf_sloc0_1_0 + 2),b
	mov	(_asincosf_sloc0_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,#0x0B
	push	acc
	mov	a,#0x8D
	push	acc
	mov	a,#0xB1
	push	acc
	mov	a,#0xC0
	push	acc
	mov	r0,#_asincosf_g_1_1
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
	lcall	___fsadd
	mov	r6,dpl
	mov	r7,dph
	mov	r2,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	r0,#_asincosf_g_1_1
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	mov	dpl,r6
	mov	dph,r7
	mov	b,r2
	mov	a,r3
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,#0xF0
	push	acc
	mov	a,#0x50
	push	acc
	mov	a,#0xB3
	push	acc
	mov	a,#0x40
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dpl,_asincosf_sloc0_1_0
	mov	dph,(_asincosf_sloc0_1_0 + 1)
	mov	b,(_asincosf_sloc0_1_0 + 2)
	mov	a,(_asincosf_sloc0_1_0 + 3)
	lcall	___fsdiv
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	r0,#_asincosf_y_1_1
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
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	r0,#_asincosf_y_1_1
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
	lcall	___fsadd
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00108$:
;	asincosf.c:74: if (isacos)
	mov	r0,#_asincosf_PARM_2
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	orl	a,b
	jnz	00128$
	ljmp	00115$
00128$:
;	asincosf.c:76: if (x < 0.0)
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	r0,#_asincosf_x_1_1
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
	lcall	___fslt
	mov	r2,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	mov	a,r2
	jz	00110$
;	asincosf.c:77: r=(b[i]+r)+b[i];
	mov	r0,#_asincosf_i_1_1
	movx	a,@r0
	mov	r2,a
	inc	r0
	movx	a,@r0
	xch	a,r2
	add	a,acc
	xch	a,r2
	rlc	a
	xch	a,r2
	add	a,acc
	xch	a,r2
	rlc	a
	mov	r3,a
	mov	a,r2
	add	a,#_asincosf_b_1_1
	mov	dpl,a
	mov	a,r3
	addc	a,#(_asincosf_b_1_1 >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	_asincosf_sloc0_1_0,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	(_asincosf_sloc0_1_0 + 1),a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	(_asincosf_sloc0_1_0 + 2),a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	(_asincosf_sloc0_1_0 + 3),a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,_asincosf_sloc0_1_0
	mov	dph,(_asincosf_sloc0_1_0 + 1)
	mov	b,(_asincosf_sloc0_1_0 + 2)
	mov	a,(_asincosf_sloc0_1_0 + 3)
	lcall	___fsadd
	mov	r6,dpl
	mov	r7,dph
	mov	r2,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_asincosf_sloc0_1_0
	push	(_asincosf_sloc0_1_0 + 1)
	push	(_asincosf_sloc0_1_0 + 2)
	push	(_asincosf_sloc0_1_0 + 3)
	mov	dpl,r6
	mov	dph,r7
	mov	b,r2
	mov	a,r3
	lcall	___fsadd
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	ljmp	00116$
00110$:
;	asincosf.c:79: r=(a[i]-r)+a[i];
	mov	r0,#_asincosf_i_1_1
	movx	a,@r0
	mov	r2,a
	inc	r0
	movx	a,@r0
	xch	a,r2
	add	a,acc
	xch	a,r2
	rlc	a
	xch	a,r2
	add	a,acc
	xch	a,r2
	rlc	a
	mov	r3,a
	mov	a,r2
	add	a,#_asincosf_a_1_1
	mov	dpl,a
	mov	a,r3
	addc	a,#(_asincosf_a_1_1 >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	_asincosf_sloc0_1_0,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	(_asincosf_sloc0_1_0 + 1),a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	(_asincosf_sloc0_1_0 + 2),a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	(_asincosf_sloc0_1_0 + 3),a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,_asincosf_sloc0_1_0
	mov	dph,(_asincosf_sloc0_1_0 + 1)
	mov	b,(_asincosf_sloc0_1_0 + 2)
	mov	a,(_asincosf_sloc0_1_0 + 3)
	lcall	___fssub
	mov	r6,dpl
	mov	r7,dph
	mov	r2,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_asincosf_sloc0_1_0
	push	(_asincosf_sloc0_1_0 + 1)
	push	(_asincosf_sloc0_1_0 + 2)
	push	(_asincosf_sloc0_1_0 + 3)
	mov	dpl,r6
	mov	dph,r7
	mov	b,r2
	mov	a,r3
	lcall	___fsadd
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	ljmp	00116$
00115$:
;	asincosf.c:83: r=(a[i]+r)+a[i];
	mov	r0,#_asincosf_i_1_1
	movx	a,@r0
	mov	r2,a
	inc	r0
	movx	a,@r0
	xch	a,r2
	add	a,acc
	xch	a,r2
	rlc	a
	xch	a,r2
	add	a,acc
	xch	a,r2
	rlc	a
	mov	r3,a
	mov	a,r2
	add	a,#_asincosf_a_1_1
	mov	dpl,a
	mov	a,r3
	addc	a,#(_asincosf_a_1_1 >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	_asincosf_sloc0_1_0,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	(_asincosf_sloc0_1_0 + 1),a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	(_asincosf_sloc0_1_0 + 2),a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	(_asincosf_sloc0_1_0 + 3),a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,_asincosf_sloc0_1_0
	mov	dph,(_asincosf_sloc0_1_0 + 1)
	mov	b,(_asincosf_sloc0_1_0 + 2)
	mov	a,(_asincosf_sloc0_1_0 + 3)
	lcall	___fsadd
	mov	r6,dpl
	mov	r7,dph
	mov	r2,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_asincosf_sloc0_1_0
	push	(_asincosf_sloc0_1_0 + 1)
	push	(_asincosf_sloc0_1_0 + 2)
	push	(_asincosf_sloc0_1_0 + 3)
	mov	dpl,r6
	mov	dph,r7
	mov	b,r2
	mov	a,r3
	lcall	___fsadd
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	asincosf.c:84: if (x<0.0) r=-r;
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	r0,#_asincosf_x_1_1
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
	lcall	___fslt
	mov	r2,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	mov	a,r2
	jz	00116$
	mov	a,r7
	cpl	acc.7
	mov	r7,a
00116$:
;	asincosf.c:86: return r;
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_asincosf_a_1_1:
	.byte #0x00,#0x00,#0x00,#0x00
	.byte #0xDB,#0x0F,#0x49,#0x3F
_asincosf_b_1_1:
	.byte #0xDB,#0x0F,#0xC9,#0x3F
	.byte #0xDB,#0x0F,#0x49,#0x3F
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
