;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:25 2018
;--------------------------------------------------------
	.module asincosf
	.optsdcc -mmcs51 --model-small
	
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
;isacos                    Allocated with name '_asincosf_PARM_2'
;x                         Allocated with name '_asincosf_x_1_1'
;y                         Allocated with name '_asincosf_y_1_1'
;g                         Allocated with name '_asincosf_g_1_1'
;r                         Allocated to registers r4 r5 r2 r3 
;i                         Allocated with name '_asincosf_i_1_1'
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
;	asincosf.c:50: y=fabsf(x);
	mov	_asincosf_x_1_1,dpl
	mov	(_asincosf_x_1_1 + 1),dph
	mov	(_asincosf_x_1_1 + 2),b
	mov	(_asincosf_x_1_1 + 3),a
	lcall	_fabsf
	mov	_asincosf_y_1_1,dpl
	mov	(_asincosf_y_1_1 + 1),dph
	mov	(_asincosf_y_1_1 + 2),b
	mov	(_asincosf_y_1_1 + 3),a
;	asincosf.c:51: i=isacos;
	mov	_asincosf_i_1_1,_asincosf_PARM_2
	mov	(_asincosf_i_1_1 + 1),(_asincosf_PARM_2 + 1)
;	asincosf.c:52: if (y < EPS) r=y;
	clr	a
	push	acc
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#0x39
	push	acc
	mov	dpl,_asincosf_y_1_1
	mov	dph,(_asincosf_y_1_1 + 1)
	mov	b,(_asincosf_y_1_1 + 2)
	mov	a,(_asincosf_y_1_1 + 3)
	lcall	___fslt
	mov	r4,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r4
	jz	00107$
	mov	r4,_asincosf_y_1_1
	mov	r5,(_asincosf_y_1_1 + 1)
	mov	r2,(_asincosf_y_1_1 + 2)
	mov	r3,(_asincosf_y_1_1 + 3)
	ljmp	00108$
00107$:
;	asincosf.c:55: if (y > 0.5)
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#0x3F
	push	acc
	mov	dpl,_asincosf_y_1_1
	mov	dph,(_asincosf_y_1_1 + 1)
	mov	b,(_asincosf_y_1_1 + 2)
	mov	a,(_asincosf_y_1_1 + 3)
	lcall	___fsgt
	mov	r6,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r6
	jnz	00126$
	ljmp	00104$
00126$:
;	asincosf.c:57: i=1-i;
	mov	a,#0x01
	clr	c
	subb	a,_asincosf_i_1_1
	mov	_asincosf_i_1_1,a
	clr	a
	subb	a,(_asincosf_i_1_1 + 1)
	mov	(_asincosf_i_1_1 + 1),a
;	asincosf.c:58: if (y > 1.0)
	clr	a
	push	acc
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#0x3F
	push	acc
	mov	dpl,_asincosf_y_1_1
	mov	dph,(_asincosf_y_1_1 + 1)
	mov	b,(_asincosf_y_1_1 + 2)
	mov	a,(_asincosf_y_1_1 + 3)
	lcall	___fsgt
	mov	r6,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r6
	jz	00102$
;	asincosf.c:60: errno=EDOM;
	mov	_errno,#0x21
	clr	a
	mov	(_errno + 1),a
;	asincosf.c:61: return 0.0;
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	ret
00102$:
;	asincosf.c:63: g=(0.5-y)+0.5;
	push	_asincosf_y_1_1
	push	(_asincosf_y_1_1 + 1)
	push	(_asincosf_y_1_1 + 2)
	push	(_asincosf_y_1_1 + 3)
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x3F
	lcall	___fssub
	mov	_asincosf_g_1_1,dpl
	mov	(_asincosf_g_1_1 + 1),dph
	mov	(_asincosf_g_1_1 + 2),b
	mov	(_asincosf_g_1_1 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	asincosf.c:64: g=ldexpf(g,-1);
	mov	_ldexpf_PARM_2,#0xFF
	mov	(_ldexpf_PARM_2 + 1),#0xFF
	mov	dpl,_asincosf_g_1_1
	mov	dph,(_asincosf_g_1_1 + 1)
	mov	b,(_asincosf_g_1_1 + 2)
	mov	a,(_asincosf_g_1_1 + 3)
	lcall	_ldexpf
;	asincosf.c:65: y=sqrtf(g);
	mov	_asincosf_g_1_1,dpl
	mov	(_asincosf_g_1_1 + 1),dph
	mov	(_asincosf_g_1_1 + 2),b
	mov	(_asincosf_g_1_1 + 3),a
	lcall	_sqrtf
	mov	_asincosf_y_1_1,dpl
	mov	(_asincosf_y_1_1 + 1),dph
	mov	(_asincosf_y_1_1 + 2),b
	mov	(_asincosf_y_1_1 + 3),a
;	asincosf.c:66: y=-(y+y);
	push	_asincosf_y_1_1
	push	(_asincosf_y_1_1 + 1)
	push	(_asincosf_y_1_1 + 2)
	push	(_asincosf_y_1_1 + 3)
	mov	dpl,_asincosf_y_1_1
	mov	dph,(_asincosf_y_1_1 + 1)
	mov	b,(_asincosf_y_1_1 + 2)
	mov	a,(_asincosf_y_1_1 + 3)
	lcall	___fsadd
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	_asincosf_y_1_1,r6
	mov	(_asincosf_y_1_1 + 1),r7
	mov	(_asincosf_y_1_1 + 2),r0
	mov	a,r1
	cpl	acc.7
	mov	(_asincosf_y_1_1 + 3),a
	sjmp	00105$
00104$:
;	asincosf.c:70: g=y*y;
	push	_asincosf_y_1_1
	push	(_asincosf_y_1_1 + 1)
	push	(_asincosf_y_1_1 + 2)
	push	(_asincosf_y_1_1 + 3)
	mov	dpl,_asincosf_y_1_1
	mov	dph,(_asincosf_y_1_1 + 1)
	mov	b,(_asincosf_y_1_1 + 2)
	mov	a,(_asincosf_y_1_1 + 3)
	lcall	___fsmul
	mov	_asincosf_g_1_1,dpl
	mov	(_asincosf_g_1_1 + 1),dph
	mov	(_asincosf_g_1_1 + 2),b
	mov	(_asincosf_g_1_1 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00105$:
;	asincosf.c:72: r=y+y*((P(g)*g)/Q(g));
	push	_asincosf_g_1_1
	push	(_asincosf_g_1_1 + 1)
	push	(_asincosf_g_1_1 + 2)
	push	(_asincosf_g_1_1 + 3)
	mov	dptr,#0x2065
	mov	b,#0x01
	mov	a,#0xBF
	lcall	___fsmul
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
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
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	lcall	___fsadd
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_asincosf_g_1_1
	push	(_asincosf_g_1_1 + 1)
	push	(_asincosf_g_1_1 + 2)
	push	(_asincosf_g_1_1 + 3)
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
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
	mov	dpl,_asincosf_g_1_1
	mov	dph,(_asincosf_g_1_1 + 1)
	mov	b,(_asincosf_g_1_1 + 2)
	mov	a,(_asincosf_g_1_1 + 3)
	lcall	___fsadd
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_asincosf_g_1_1
	push	(_asincosf_g_1_1 + 1)
	push	(_asincosf_g_1_1 + 2)
	push	(_asincosf_g_1_1 + 3)
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	lcall	___fsmul
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
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
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	lcall	___fsadd
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dpl,_asincosf_sloc0_1_0
	mov	dph,(_asincosf_sloc0_1_0 + 1)
	mov	b,(_asincosf_sloc0_1_0 + 2)
	mov	a,(_asincosf_sloc0_1_0 + 3)
	lcall	___fsdiv
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dpl,_asincosf_y_1_1
	mov	dph,(_asincosf_y_1_1 + 1)
	mov	b,(_asincosf_y_1_1 + 2)
	mov	a,(_asincosf_y_1_1 + 3)
	lcall	___fsmul
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dpl,_asincosf_y_1_1
	mov	dph,(_asincosf_y_1_1 + 1)
	mov	b,(_asincosf_y_1_1 + 2)
	mov	a,(_asincosf_y_1_1 + 3)
	lcall	___fsadd
	mov	r4,dpl
	mov	r5,dph
	mov	r2,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00108$:
;	asincosf.c:74: if (isacos)
	mov	a,_asincosf_PARM_2
	orl	a,(_asincosf_PARM_2 + 1)
	jnz	00128$
	ljmp	00115$
00128$:
;	asincosf.c:76: if (x < 0.0)
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	dpl,_asincosf_x_1_1
	mov	dph,(_asincosf_x_1_1 + 1)
	mov	b,(_asincosf_x_1_1 + 2)
	mov	a,(_asincosf_x_1_1 + 3)
	lcall	___fslt
	mov	r6,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,r6
	jz	00110$
;	asincosf.c:77: r=(b[i]+r)+b[i];
	mov	r6,_asincosf_i_1_1
	mov	a,(_asincosf_i_1_1 + 1)
	xch	a,r6
	add	a,acc
	xch	a,r6
	rlc	a
	xch	a,r6
	add	a,acc
	xch	a,r6
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,#_asincosf_b_1_1
	mov	dpl,a
	mov	a,r7
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
	push	ar2
	push	ar3
	mov	dpl,_asincosf_sloc0_1_0
	mov	dph,(_asincosf_sloc0_1_0 + 1)
	mov	b,(_asincosf_sloc0_1_0 + 2)
	mov	a,(_asincosf_sloc0_1_0 + 3)
	lcall	___fsadd
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_asincosf_sloc0_1_0
	push	(_asincosf_sloc0_1_0 + 1)
	push	(_asincosf_sloc0_1_0 + 2)
	push	(_asincosf_sloc0_1_0 + 3)
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	lcall	___fsadd
	mov	r4,dpl
	mov	r5,dph
	mov	r2,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	ljmp	00116$
00110$:
;	asincosf.c:79: r=(a[i]-r)+a[i];
	mov	r6,_asincosf_i_1_1
	mov	a,(_asincosf_i_1_1 + 1)
	xch	a,r6
	add	a,acc
	xch	a,r6
	rlc	a
	xch	a,r6
	add	a,acc
	xch	a,r6
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,#_asincosf_a_1_1
	mov	dpl,a
	mov	a,r7
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
	push	ar2
	push	ar3
	mov	dpl,_asincosf_sloc0_1_0
	mov	dph,(_asincosf_sloc0_1_0 + 1)
	mov	b,(_asincosf_sloc0_1_0 + 2)
	mov	a,(_asincosf_sloc0_1_0 + 3)
	lcall	___fssub
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_asincosf_sloc0_1_0
	push	(_asincosf_sloc0_1_0 + 1)
	push	(_asincosf_sloc0_1_0 + 2)
	push	(_asincosf_sloc0_1_0 + 3)
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	lcall	___fsadd
	mov	r4,dpl
	mov	r5,dph
	mov	r2,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	ljmp	00116$
00115$:
;	asincosf.c:83: r=(a[i]+r)+a[i];
	mov	r6,_asincosf_i_1_1
	mov	a,(_asincosf_i_1_1 + 1)
	xch	a,r6
	add	a,acc
	xch	a,r6
	rlc	a
	xch	a,r6
	add	a,acc
	xch	a,r6
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,#_asincosf_a_1_1
	mov	dpl,a
	mov	a,r7
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
	push	ar2
	push	ar3
	mov	dpl,_asincosf_sloc0_1_0
	mov	dph,(_asincosf_sloc0_1_0 + 1)
	mov	b,(_asincosf_sloc0_1_0 + 2)
	mov	a,(_asincosf_sloc0_1_0 + 3)
	lcall	___fsadd
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_asincosf_sloc0_1_0
	push	(_asincosf_sloc0_1_0 + 1)
	push	(_asincosf_sloc0_1_0 + 2)
	push	(_asincosf_sloc0_1_0 + 3)
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	lcall	___fsadd
	mov	r4,dpl
	mov	r5,dph
	mov	r2,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	asincosf.c:84: if (x<0.0) r=-r;
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	dpl,_asincosf_x_1_1
	mov	dph,(_asincosf_x_1_1 + 1)
	mov	b,(_asincosf_x_1_1 + 2)
	mov	a,(_asincosf_x_1_1 + 3)
	lcall	___fslt
	mov	r6,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,r6
	jz	00116$
	mov	a,r3
	cpl	acc.7
	mov	r3,a
00116$:
;	asincosf.c:86: return r;
	mov	dpl,r4
	mov	dph,r5
	mov	b,r2
	mov	a,r3
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
