;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:25 2018
;--------------------------------------------------------
	.module sincosf
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sincosf
	.globl _sincosf_PARM_2
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
_sincosf_PARM_2:
	.ds 2
_sincosf_x_1_1:
	.ds 4
_sincosf_f_1_1:
	.ds 4
_sincosf_r_1_1:
	.ds 4
_sincosf_XN_1_1:
	.ds 4
_sincosf_sloc0_1_0:
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
_sincosf_sign_1_1:
	.ds 1
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
;Allocation info for local variables in function 'sincosf'
;------------------------------------------------------------
;iscos                     Allocated with name '_sincosf_PARM_2'
;x                         Allocated with name '_sincosf_x_1_1'
;y                         Allocated to registers r6 r7 r0 r1 
;f                         Allocated with name '_sincosf_f_1_1'
;r                         Allocated with name '_sincosf_r_1_1'
;g                         Allocated to registers r6 r7 r0 r1 
;XN                        Allocated with name '_sincosf_XN_1_1'
;N                         Allocated to registers r2 r3 
;sloc0                     Allocated with name '_sincosf_sloc0_1_0'
;------------------------------------------------------------
;	sincosf.c:40: float sincosf(const float x, const int iscos)
;	-----------------------------------------
;	 function sincosf
;	-----------------------------------------
_sincosf:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov	_sincosf_x_1_1,dpl
	mov	(_sincosf_x_1_1 + 1),dph
	mov	(_sincosf_x_1_1 + 2),b
	mov	(_sincosf_x_1_1 + 3),a
;	sincosf.c:46: if(iscos)
	mov	a,_sincosf_PARM_2
	orl	a,(_sincosf_PARM_2 + 1)
	jz	00105$
;	sincosf.c:48: y=fabsf(x)+HALF_PI;
	mov	dpl,_sincosf_x_1_1
	mov	dph,(_sincosf_x_1_1 + 1)
	mov	b,(_sincosf_x_1_1 + 2)
	mov	a,(_sincosf_x_1_1 + 3)
	lcall	_fabsf
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	mov	a,#0xDB
	push	acc
	mov	a,#0x0F
	push	acc
	mov	a,#0xC9
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
;	sincosf.c:49: sign=0;
	clr	_sincosf_sign_1_1
	sjmp	00106$
00105$:
;	sincosf.c:53: if(x<0.0)
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	dpl,_sincosf_x_1_1
	mov	dph,(_sincosf_x_1_1 + 1)
	mov	b,(_sincosf_x_1_1 + 2)
	mov	a,(_sincosf_x_1_1 + 3)
	lcall	___fslt
	mov	r2,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r2
	jz	00102$
;	sincosf.c:54: { y=-x; sign=1; }
	mov	r6,_sincosf_x_1_1
	mov	r7,(_sincosf_x_1_1 + 1)
	mov	r0,(_sincosf_x_1_1 + 2)
	mov	a,(_sincosf_x_1_1 + 3)
	cpl	acc.7
	mov	r1,a
	setb	_sincosf_sign_1_1
	sjmp	00106$
00102$:
;	sincosf.c:56: { y=x; sign=0; }
	mov	r6,_sincosf_x_1_1
	mov	r7,(_sincosf_x_1_1 + 1)
	mov	r0,(_sincosf_x_1_1 + 2)
	mov	r1,(_sincosf_x_1_1 + 3)
	clr	_sincosf_sign_1_1
00106$:
;	sincosf.c:59: if(y>YMAX)
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	clr	a
	push	acc
	mov	a,#0x0C
	push	acc
	mov	a,#0x49
	push	acc
	mov	a,#0x46
	push	acc
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	lcall	___fsgt
	mov	r2,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	mov	a,r2
	jz	00108$
;	sincosf.c:61: errno=ERANGE;
	mov	_errno,#0x22
	clr	a
	mov	(_errno + 1),a
;	sincosf.c:62: return 0.0;
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	ret
00108$:
;	sincosf.c:66: N=((y*iPI)+0.5); /*y is positive*/
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dptr,#0xF983
	mov	b,#0xA2
	mov	a,#0x3E
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#0x3F
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fs2sint
	mov	r2,dpl
	mov	r3,dph
;	sincosf.c:69: if(N&1) sign=!sign;
	mov	a,r2
	jnb	acc.0,00110$
	cpl	_sincosf_sign_1_1
00110$:
;	sincosf.c:71: XN=N;
	mov	dpl,r2
	mov	dph,r3
	lcall	___sint2fs
	mov	_sincosf_XN_1_1,dpl
	mov	(_sincosf_XN_1_1 + 1),dph
	mov	(_sincosf_XN_1_1 + 2),b
	mov	(_sincosf_XN_1_1 + 3),a
;	sincosf.c:73: if(iscos) XN-=0.5;
	mov	a,_sincosf_PARM_2
	orl	a,(_sincosf_PARM_2 + 1)
	jz	00112$
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#0x3F
	push	acc
	mov	dpl,_sincosf_XN_1_1
	mov	dph,(_sincosf_XN_1_1 + 1)
	mov	b,(_sincosf_XN_1_1 + 2)
	mov	a,(_sincosf_XN_1_1 + 3)
	lcall	___fssub
	mov	_sincosf_XN_1_1,dpl
	mov	(_sincosf_XN_1_1 + 1),dph
	mov	(_sincosf_XN_1_1 + 2),b
	mov	(_sincosf_XN_1_1 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00112$:
;	sincosf.c:75: y=fabsf(x);
	mov	dpl,_sincosf_x_1_1
	mov	dph,(_sincosf_x_1_1 + 1)
	mov	b,(_sincosf_x_1_1 + 2)
	mov	a,(_sincosf_x_1_1 + 3)
	lcall	_fabsf
;	sincosf.c:76: r=(int)y;
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	lcall	___fs2sint
	lcall	___sint2fs
	mov	_sincosf_r_1_1,dpl
	mov	(_sincosf_r_1_1 + 1),dph
	mov	(_sincosf_r_1_1 + 2),b
	mov	(_sincosf_r_1_1 + 3),a
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
;	sincosf.c:77: g=y-r;
	push	_sincosf_r_1_1
	push	(_sincosf_r_1_1 + 1)
	push	(_sincosf_r_1_1 + 2)
	push	(_sincosf_r_1_1 + 3)
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	lcall	___fssub
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	sincosf.c:78: f=((r-XN*C1)+g)-XN*C2;
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	push	_sincosf_XN_1_1
	push	(_sincosf_XN_1_1 + 1)
	push	(_sincosf_XN_1_1 + 2)
	push	(_sincosf_XN_1_1 + 3)
	mov	dptr,#0x0000
	mov	b,#0x49
	mov	a,#0x40
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
	mov	dpl,_sincosf_r_1_1
	mov	dph,(_sincosf_r_1_1 + 1)
	mov	b,(_sincosf_r_1_1 + 2)
	mov	a,(_sincosf_r_1_1 + 3)
	lcall	___fssub
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsadd
	mov	_sincosf_sloc0_1_0,dpl
	mov	(_sincosf_sloc0_1_0 + 1),dph
	mov	(_sincosf_sloc0_1_0 + 2),b
	mov	(_sincosf_sloc0_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_sincosf_XN_1_1
	push	(_sincosf_XN_1_1 + 1)
	push	(_sincosf_XN_1_1 + 2)
	push	(_sincosf_XN_1_1 + 3)
	mov	dptr,#0xAA22
	mov	b,#0x7D
	mov	a,#0x3A
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
	mov	dpl,_sincosf_sloc0_1_0
	mov	dph,(_sincosf_sloc0_1_0 + 1)
	mov	b,(_sincosf_sloc0_1_0 + 2)
	mov	a,(_sincosf_sloc0_1_0 + 3)
	lcall	___fssub
	mov	_sincosf_f_1_1,dpl
	mov	(_sincosf_f_1_1 + 1),dph
	mov	(_sincosf_f_1_1 + 2),b
	mov	(_sincosf_f_1_1 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	sincosf.c:80: g=f*f;
	push	_sincosf_f_1_1
	push	(_sincosf_f_1_1 + 1)
	push	(_sincosf_f_1_1 + 2)
	push	(_sincosf_f_1_1 + 3)
	mov	dpl,_sincosf_f_1_1
	mov	dph,(_sincosf_f_1_1 + 1)
	mov	b,(_sincosf_f_1_1 + 2)
	mov	a,(_sincosf_f_1_1 + 3)
	lcall	___fsmul
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	sincosf.c:81: if(g>EPS2) //Used to be if(fabsf(f)>EPS)
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	a,#0xF3
	push	acc
	mov	a,#0xFF
	push	acc
	mov	a,#0x7F
	push	acc
	mov	a,#0x33
	push	acc
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	lcall	___fsgt
	mov	r2,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	mov	a,r2
	jnz	00131$
	ljmp	00114$
00131$:
;	sincosf.c:83: r=(((r4*g+r3)*g+r2)*g+r1)*g;
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dptr,#0x9C5B
	mov	b,#0x2E
	mov	a,#0x36
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,#0x22
	push	acc
	mov	a,#0xB2
	push	acc
	mov	a,#0x4F
	push	acc
	mov	a,#0xB9
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
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,#0x3E
	push	acc
	mov	a,#0x87
	push	acc
	mov	a,#0x08
	push	acc
	mov	a,#0x3C
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
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,#0xA4
	push	acc
	mov	a,#0xAA
	push	acc
	mov	a,#0x2A
	push	acc
	mov	a,#0xBE
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsmul
	mov	_sincosf_r_1_1,dpl
	mov	(_sincosf_r_1_1 + 1),dph
	mov	(_sincosf_r_1_1 + 2),b
	mov	(_sincosf_r_1_1 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	sincosf.c:84: f+=f*r;
	push	_sincosf_r_1_1
	push	(_sincosf_r_1_1 + 1)
	push	(_sincosf_r_1_1 + 2)
	push	(_sincosf_r_1_1 + 3)
	mov	dpl,_sincosf_f_1_1
	mov	dph,(_sincosf_f_1_1 + 1)
	mov	b,(_sincosf_f_1_1 + 2)
	mov	a,(_sincosf_f_1_1 + 3)
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
	mov	dpl,_sincosf_f_1_1
	mov	dph,(_sincosf_f_1_1 + 1)
	mov	b,(_sincosf_f_1_1 + 2)
	mov	a,(_sincosf_f_1_1 + 3)
	lcall	___fsadd
	mov	_sincosf_f_1_1,dpl
	mov	(_sincosf_f_1_1 + 1),dph
	mov	(_sincosf_f_1_1 + 2),b
	mov	(_sincosf_f_1_1 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00114$:
;	sincosf.c:86: return (sign?-f:f);
	jnb	_sincosf_sign_1_1,00117$
	mov	r2,_sincosf_f_1_1
	mov	r3,(_sincosf_f_1_1 + 1)
	mov	r4,(_sincosf_f_1_1 + 2)
	mov	a,(_sincosf_f_1_1 + 3)
	cpl	acc.7
	mov	r5,a
	sjmp	00118$
00117$:
	mov	r2,_sincosf_f_1_1
	mov	r3,(_sincosf_f_1_1 + 1)
	mov	r4,(_sincosf_f_1_1 + 2)
	mov	r5,(_sincosf_f_1_1 + 3)
00118$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
