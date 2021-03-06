;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:25 2018
;--------------------------------------------------------
	.module sincoshf
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sincoshf
	.globl _sincoshf_PARM_2
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
_sincoshf_PARM_2:
	.ds 2
_sincoshf_x_1_1:
	.ds 4
_sincoshf_y_1_1:
	.ds 4
_sincoshf_w_1_1:
	.ds 4
_sincoshf_z_1_1:
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
_sincoshf_sign_1_1:
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
;Allocation info for local variables in function 'sincoshf'
;------------------------------------------------------------
;iscosh                    Allocated with name '_sincoshf_PARM_2'
;x                         Allocated with name '_sincoshf_x_1_1'
;y                         Allocated with name '_sincoshf_y_1_1'
;w                         Allocated with name '_sincoshf_w_1_1'
;z                         Allocated with name '_sincoshf_z_1_1'
;------------------------------------------------------------
;	sincoshf.c:46: float sincoshf(const float x, const int iscosh)
;	-----------------------------------------
;	 function sincoshf
;	-----------------------------------------
_sincoshf:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov	_sincoshf_x_1_1,dpl
	mov	(_sincoshf_x_1_1 + 1),dph
	mov	(_sincoshf_x_1_1 + 2),b
	mov	(_sincoshf_x_1_1 + 3),a
;	sincoshf.c:51: if (x<0.0) { y=-x; sign=1; }
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	dpl,_sincoshf_x_1_1
	mov	dph,(_sincoshf_x_1_1 + 1)
	mov	b,(_sincoshf_x_1_1 + 2)
	mov	a,(_sincoshf_x_1_1 + 3)
	lcall	___fslt
	mov	r6,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r6
	jz	00102$
	mov	_sincoshf_y_1_1,_sincoshf_x_1_1
	mov	(_sincoshf_y_1_1 + 1),(_sincoshf_x_1_1 + 1)
	mov	(_sincoshf_y_1_1 + 2),(_sincoshf_x_1_1 + 2)
	mov	a,(_sincoshf_x_1_1 + 3)
	cpl	acc.7
	mov	(_sincoshf_y_1_1 + 3),a
	setb	_sincoshf_sign_1_1
	sjmp	00103$
00102$:
;	sincoshf.c:52: else { y=x;  sign=0; }
	mov	_sincoshf_y_1_1,_sincoshf_x_1_1
	mov	(_sincoshf_y_1_1 + 1),(_sincoshf_x_1_1 + 1)
	mov	(_sincoshf_y_1_1 + 2),(_sincoshf_x_1_1 + 2)
	mov	(_sincoshf_y_1_1 + 3),(_sincoshf_x_1_1 + 3)
	clr	_sincoshf_sign_1_1
00103$:
;	sincoshf.c:54: if ((y>1.0) || iscosh)
	clr	a
	push	acc
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#0x3F
	push	acc
	mov	dpl,_sincoshf_y_1_1
	mov	dph,(_sincoshf_y_1_1 + 1)
	mov	b,(_sincoshf_y_1_1 + 2)
	mov	a,(_sincoshf_y_1_1 + 3)
	lcall	___fsgt
	mov	r6,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r6
	jnz	00117$
	mov	a,_sincoshf_PARM_2
	orl	a,(_sincoshf_PARM_2 + 1)
	jnz	00132$
	ljmp	00118$
00132$:
00117$:
;	sincoshf.c:56: if(y>YBAR)
	clr	a
	push	acc
	push	acc
	mov	a,#0x10
	push	acc
	mov	a,#0x41
	push	acc
	mov	dpl,_sincoshf_y_1_1
	mov	dph,(_sincoshf_y_1_1 + 1)
	mov	b,(_sincoshf_y_1_1 + 2)
	mov	a,(_sincoshf_y_1_1 + 3)
	lcall	___fsgt
	mov	r6,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r6
	jnz	00133$
	ljmp	00110$
00133$:
;	sincoshf.c:58: w=y-K1;
	clr	a
	push	acc
	mov	a,#0x73
	push	acc
	mov	a,#0x31
	push	acc
	mov	a,#0x3F
	push	acc
	mov	dpl,_sincoshf_y_1_1
	mov	dph,(_sincoshf_y_1_1 + 1)
	mov	b,(_sincoshf_y_1_1 + 2)
	mov	a,(_sincoshf_y_1_1 + 3)
	lcall	___fssub
	mov	_sincoshf_w_1_1,dpl
	mov	(_sincoshf_w_1_1 + 1),dph
	mov	(_sincoshf_w_1_1 + 2),b
	mov	(_sincoshf_w_1_1 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	sincoshf.c:59: if (w>WMAX)
	mov	a,#0xCF
	push	acc
	mov	a,#0xBD
	push	acc
	mov	a,#0x33
	push	acc
	mov	a,#0x42
	push	acc
	mov	dpl,_sincoshf_w_1_1
	mov	dph,(_sincoshf_w_1_1 + 1)
	mov	b,(_sincoshf_w_1_1 + 2)
	mov	a,(_sincoshf_w_1_1 + 3)
	lcall	___fsgt
	mov	r6,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r6
	jz	00105$
;	sincoshf.c:61: errno=ERANGE;
	mov	_errno,#0x22
	clr	a
	mov	(_errno + 1),a
;	sincoshf.c:62: z=HUGE_VALF;
	mov	_sincoshf_z_1_1,#0xFF
	mov	(_sincoshf_z_1_1 + 1),#0xFF
	mov	(_sincoshf_z_1_1 + 2),#0x7F
	mov	(_sincoshf_z_1_1 + 3),#0x7F
	ljmp	00111$
00105$:
;	sincoshf.c:66: z=expf(w);
	mov	dpl,_sincoshf_w_1_1
	mov	dph,(_sincoshf_w_1_1 + 1)
	mov	b,(_sincoshf_w_1_1 + 2)
	mov	a,(_sincoshf_w_1_1 + 3)
	lcall	_expf
	mov	_sincoshf_z_1_1,dpl
	mov	(_sincoshf_z_1_1 + 1),dph
	mov	(_sincoshf_z_1_1 + 2),b
	mov	(_sincoshf_z_1_1 + 3),a
;	sincoshf.c:67: z+=K3*z;
	push	_sincoshf_z_1_1
	push	(_sincoshf_z_1_1 + 1)
	push	(_sincoshf_z_1_1 + 2)
	push	(_sincoshf_z_1_1 + 3)
	mov	dptr,#0x0897
	mov	b,#0x68
	mov	a,#0x37
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
	mov	dpl,_sincoshf_z_1_1
	mov	dph,(_sincoshf_z_1_1 + 1)
	mov	b,(_sincoshf_z_1_1 + 2)
	mov	a,(_sincoshf_z_1_1 + 3)
	lcall	___fsadd
	mov	_sincoshf_z_1_1,dpl
	mov	(_sincoshf_z_1_1 + 1),dph
	mov	(_sincoshf_z_1_1 + 2),b
	mov	(_sincoshf_z_1_1 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	ljmp	00111$
00110$:
;	sincoshf.c:72: z=expf(y);
	mov	dpl,_sincoshf_y_1_1
	mov	dph,(_sincoshf_y_1_1 + 1)
	mov	b,(_sincoshf_y_1_1 + 2)
	mov	a,(_sincoshf_y_1_1 + 3)
	lcall	_expf
	mov	_sincoshf_z_1_1,dpl
	mov	(_sincoshf_z_1_1 + 1),dph
	mov	(_sincoshf_z_1_1 + 2),b
	mov	(_sincoshf_z_1_1 + 3),a
;	sincoshf.c:73: w=1.0/z;
	push	_sincoshf_z_1_1
	push	(_sincoshf_z_1_1 + 1)
	push	(_sincoshf_z_1_1 + 2)
	push	(_sincoshf_z_1_1 + 3)
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x3F
	lcall	___fsdiv
	mov	_sincoshf_w_1_1,dpl
	mov	(_sincoshf_w_1_1 + 1),dph
	mov	(_sincoshf_w_1_1 + 2),b
	mov	(_sincoshf_w_1_1 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	sincoshf.c:74: if(!iscosh) w=-w;
	mov	a,_sincoshf_PARM_2
	orl	a,(_sincoshf_PARM_2 + 1)
	jnz	00108$
	mov	a,(_sincoshf_w_1_1 + 3)
	cpl	acc.7
	mov	(_sincoshf_w_1_1 + 3),a
00108$:
;	sincoshf.c:75: z=(z+w)*0.5;
	push	_sincoshf_w_1_1
	push	(_sincoshf_w_1_1 + 1)
	push	(_sincoshf_w_1_1 + 2)
	push	(_sincoshf_w_1_1 + 3)
	mov	dpl,_sincoshf_z_1_1
	mov	dph,(_sincoshf_z_1_1 + 1)
	mov	b,(_sincoshf_z_1_1 + 2)
	mov	a,(_sincoshf_z_1_1 + 3)
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
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	mov	a,#0x3F
	lcall	___fsmul
	mov	_sincoshf_z_1_1,dpl
	mov	(_sincoshf_z_1_1 + 1),dph
	mov	(_sincoshf_z_1_1 + 2),b
	mov	(_sincoshf_z_1_1 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00111$:
;	sincoshf.c:77: if(sign) z=-z;
	jb	_sincoshf_sign_1_1,00136$
	ljmp	00119$
00136$:
	mov	a,(_sincoshf_z_1_1 + 3)
	cpl	acc.7
	mov	(_sincoshf_z_1_1 + 3),a
	ljmp	00119$
00118$:
;	sincoshf.c:81: if (y<EPS)
	clr	a
	push	acc
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#0x39
	push	acc
	mov	dpl,_sincoshf_y_1_1
	mov	dph,(_sincoshf_y_1_1 + 1)
	mov	b,(_sincoshf_y_1_1 + 2)
	mov	a,(_sincoshf_y_1_1 + 3)
	lcall	___fslt
	mov	r6,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r6
	jz	00115$
;	sincoshf.c:82: z=x;
	mov	_sincoshf_z_1_1,_sincoshf_x_1_1
	mov	(_sincoshf_z_1_1 + 1),(_sincoshf_x_1_1 + 1)
	mov	(_sincoshf_z_1_1 + 2),(_sincoshf_x_1_1 + 2)
	mov	(_sincoshf_z_1_1 + 3),(_sincoshf_x_1_1 + 3)
	ljmp	00119$
00115$:
;	sincoshf.c:85: z=x*x;
	push	_sincoshf_x_1_1
	push	(_sincoshf_x_1_1 + 1)
	push	(_sincoshf_x_1_1 + 2)
	push	(_sincoshf_x_1_1 + 3)
	mov	dpl,_sincoshf_x_1_1
	mov	dph,(_sincoshf_x_1_1 + 1)
	mov	b,(_sincoshf_x_1_1 + 2)
	mov	a,(_sincoshf_x_1_1 + 3)
	lcall	___fsmul
	mov	_sincoshf_z_1_1,dpl
	mov	(_sincoshf_z_1_1 + 1),dph
	mov	(_sincoshf_z_1_1 + 2),b
	mov	(_sincoshf_z_1_1 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	sincoshf.c:86: z=x+x*z*P(z)/Q(z);
	push	_sincoshf_z_1_1
	push	(_sincoshf_z_1_1 + 1)
	push	(_sincoshf_z_1_1 + 2)
	push	(_sincoshf_z_1_1 + 3)
	mov	dpl,_sincoshf_x_1_1
	mov	dph,(_sincoshf_x_1_1 + 1)
	mov	b,(_sincoshf_x_1_1 + 2)
	mov	a,(_sincoshf_x_1_1 + 3)
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
	push	_sincoshf_z_1_1
	push	(_sincoshf_z_1_1 + 1)
	push	(_sincoshf_z_1_1 + 2)
	push	(_sincoshf_z_1_1 + 3)
	mov	dptr,#0xE6EA
	mov	b,#0x42
	mov	a,#0xBE
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
	mov	a,#0x69
	push	acc
	mov	a,#0xE4
	push	acc
	mov	a,#0xC0
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
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
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
	mov	a,#0x93
	push	acc
	mov	a,#0x4F
	push	acc
	mov	a,#0x2B
	push	acc
	mov	a,#0xC2
	push	acc
	mov	dpl,_sincoshf_z_1_1
	mov	dph,(_sincoshf_z_1_1 + 1)
	mov	b,(_sincoshf_z_1_1 + 2)
	mov	a,(_sincoshf_z_1_1 + 3)
	lcall	___fsadd
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
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
	mov	dpl,_sincoshf_x_1_1
	mov	dph,(_sincoshf_x_1_1 + 1)
	mov	b,(_sincoshf_x_1_1 + 2)
	mov	a,(_sincoshf_x_1_1 + 3)
	lcall	___fsadd
	mov	_sincoshf_z_1_1,dpl
	mov	(_sincoshf_z_1_1 + 1),dph
	mov	(_sincoshf_z_1_1 + 2),b
	mov	(_sincoshf_z_1_1 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00119$:
;	sincoshf.c:89: return z;
	mov	dpl,_sincoshf_z_1_1
	mov	dph,(_sincoshf_z_1_1 + 1)
	mov	b,(_sincoshf_z_1_1 + 2)
	mov	a,(_sincoshf_z_1_1 + 3)
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
