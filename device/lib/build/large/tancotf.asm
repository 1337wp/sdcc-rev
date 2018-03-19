;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:28 2018
;--------------------------------------------------------
	.module tancotf
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _tancotf
	.globl _tancotf_PARM_2
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
_tancotf_sloc0_1_0:
	.ds 4
_tancotf_sloc1_1_0:
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
_tancotf_PARM_2:
	.ds 2
_tancotf_x_1_1:
	.ds 4
_tancotf_xnum_1_1:
	.ds 4
_tancotf_xden_1_1:
	.ds 4
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
;Allocation info for local variables in function 'tancotf'
;------------------------------------------------------------
;sloc0                     Allocated with name '_tancotf_sloc0_1_0'
;sloc1                     Allocated with name '_tancotf_sloc1_1_0'
;iscotan                   Allocated with name '_tancotf_PARM_2'
;x                         Allocated with name '_tancotf_x_1_1'
;f                         Allocated with name '_tancotf_f_1_1'
;g                         Allocated with name '_tancotf_g_1_1'
;xn                        Allocated with name '_tancotf_xn_1_1'
;xnum                      Allocated with name '_tancotf_xnum_1_1'
;xden                      Allocated with name '_tancotf_xden_1_1'
;n                         Allocated with name '_tancotf_n_1_1'
;------------------------------------------------------------
;	tancotf.c:42: float tancotf(const float x, const int iscotan)
;	-----------------------------------------
;	 function tancotf
;	-----------------------------------------
_tancotf:
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
	mov	dptr,#_tancotf_x_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
;	tancotf.c:47: if (fabsf(x) > YMAX)
	mov	dptr,#_tancotf_x_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_fabsf
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	clr	a
	push	acc
	mov	a,#0x08
	push	acc
	mov	a,#0xC9
	push	acc
	mov	a,#0x45
	push	acc
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	lcall	___fsgt
	mov	r6,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,r6
	jz	00102$
;	tancotf.c:49: errno = ERANGE;
	mov	dptr,#_errno
	mov	a,#0x22
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	tancotf.c:50: return 0.0;
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	ret
00102$:
;	tancotf.c:54: n=(x*TWO_O_PI+(x>0.0?0.5:-0.5)); /*works for +-x*/
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0xF983
	mov	b,#0x22
	mov	a,#0x3F
	lcall	___fsmul
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
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
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
	jz	00117$
	mov	r2,#0x00
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0x3F
	sjmp	00118$
00117$:
	mov	r2,#0x00
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0xBF
00118$:
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
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
;	tancotf.c:55: xn=n;
	mov	r2,dpl
	mov  r3,dph
	push	ar2
	push	ar3
	lcall	___sint2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	tancotf.c:57: xnum=(int)x;
	mov	dptr,#_tancotf_x_1_1
	movx	a,@dptr
	mov	_tancotf_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_tancotf_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_tancotf_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_tancotf_sloc0_1_0 + 3),a
	mov	dpl,_tancotf_sloc0_1_0
	mov	dph,(_tancotf_sloc0_1_0 + 1)
	mov	b,(_tancotf_sloc0_1_0 + 2)
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	___fs2sint
	mov	r2,dpl
	mov	r3,dph
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	mov	dpl,r2
	mov	dph,r3
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	___sint2fs
	mov	_tancotf_sloc1_1_0,dpl
	mov	(_tancotf_sloc1_1_0 + 1),dph
	mov	(_tancotf_sloc1_1_0 + 2),b
	mov	(_tancotf_sloc1_1_0 + 3),a
;	tancotf.c:58: xden=x-xnum;
	push	_tancotf_sloc1_1_0
	push	(_tancotf_sloc1_1_0 + 1)
	push	(_tancotf_sloc1_1_0 + 2)
	push	(_tancotf_sloc1_1_0 + 3)
;	tancotf.c:59: f=((xnum-xn*C1)+xden)-xn*C2;
	mov	dpl,_tancotf_sloc0_1_0
	mov	dph,(_tancotf_sloc0_1_0 + 1)
	mov	b,(_tancotf_sloc0_1_0 + 2)
	mov	a,(_tancotf_sloc0_1_0 + 3)
	lcall	___fssub
	mov	_tancotf_sloc0_1_0,dpl
	mov	(_tancotf_sloc0_1_0 + 1),dph
	mov	(_tancotf_sloc0_1_0 + 2),b
	mov	(_tancotf_sloc0_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0x0000
	mov	b,#0xC9
	mov	a,#0x3F
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r0,b
	mov	r1,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar2
	push	ar3
	push	ar0
	push	ar1
	mov	dpl,_tancotf_sloc1_1_0
	mov	dph,(_tancotf_sloc1_1_0 + 1)
	mov	b,(_tancotf_sloc1_1_0 + 2)
	mov	a,(_tancotf_sloc1_1_0 + 3)
	lcall	___fssub
	mov	r2,dpl
	mov	r3,dph
	mov	r0,b
	mov	r1,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_tancotf_sloc0_1_0
	push	(_tancotf_sloc0_1_0 + 1)
	push	(_tancotf_sloc0_1_0 + 2)
	push	(_tancotf_sloc0_1_0 + 3)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r0
	mov	a,r1
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r0,b
	mov	r1,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	push	ar2
	push	ar3
	push	ar0
	push	ar1
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0xAA22
	mov	b,#0xFD
	mov	a,#0x39
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar1
	pop	ar0
	pop	ar3
	pop	ar2
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
;	tancotf.c:61: if (fabsf(f) < EPS)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r0
	mov	a,r1
	lcall	___fssub
	mov	_tancotf_sloc1_1_0,dpl
	mov	(_tancotf_sloc1_1_0 + 1),dph
	mov	(_tancotf_sloc1_1_0 + 2),b
	mov	(_tancotf_sloc1_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar3
	pop	ar2
	mov	dpl,_tancotf_sloc1_1_0
	mov	dph,(_tancotf_sloc1_1_0 + 1)
	mov	b,(_tancotf_sloc1_1_0 + 2)
	mov	a,(_tancotf_sloc1_1_0 + 3)
	lcall	_fabsf
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	push	ar3
	clr	a
	push	acc
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#0x39
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fslt
	mov	r2,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar3
	mov	a,r2
	pop	ar3
	pop	ar2
	jz	00104$
;	tancotf.c:63: xnum = f;
	mov	dptr,#_tancotf_xnum_1_1
	mov	a,_tancotf_sloc1_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_tancotf_sloc1_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_tancotf_sloc1_1_0 + 2)
	movx	@dptr,a
	inc	dptr
	mov	a,(_tancotf_sloc1_1_0 + 3)
	movx	@dptr,a
;	tancotf.c:64: xden = 1.0;
	mov	dptr,#_tancotf_xden_1_1
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,#0x80
	movx	@dptr,a
	inc	dptr
	mov	a,#0x3F
	movx	@dptr,a
	ljmp	00105$
00104$:
;	tancotf.c:68: g = f*f;
	push	ar2
	push	ar3
	push	ar2
	push	ar3
	push	_tancotf_sloc1_1_0
	push	(_tancotf_sloc1_1_0 + 1)
	push	(_tancotf_sloc1_1_0 + 2)
	push	(_tancotf_sloc1_1_0 + 3)
;	tancotf.c:69: xnum = P(f,g);
	mov	dpl,_tancotf_sloc1_1_0
	mov	dph,(_tancotf_sloc1_1_0 + 1)
	mov	b,(_tancotf_sloc1_1_0 + 2)
	mov	a,(_tancotf_sloc1_1_0 + 3)
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar3
	pop	ar2
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0x33B8
	mov	b,#0xC4
	mov	a,#0xBD
	lcall	___fsmul
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_tancotf_sloc1_1_0
	push	(_tancotf_sloc1_1_0 + 1)
	push	(_tancotf_sloc1_1_0 + 2)
	push	(_tancotf_sloc1_1_0 + 3)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r0,b
	mov	r1,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_tancotf_sloc1_1_0
	push	(_tancotf_sloc1_1_0 + 1)
	push	(_tancotf_sloc1_1_0 + 2)
	push	(_tancotf_sloc1_1_0 + 3)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r0
	mov	a,r1
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r0,b
	mov	r1,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	mov	dptr,#_tancotf_xnum_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
;	tancotf.c:70: xden = Q(g);
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0x3375
	mov	b,#0x1F
	mov	a,#0x3C
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r0,b
	mov	r1,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,#0xAF
	push	acc
	mov	a,#0xB7
	push	acc
	mov	a,#0xDB
	push	acc
	mov	a,#0xBE
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r0
	mov	a,r1
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r0,b
	mov	r1,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r2
	mov	dph,r3
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
	clr	a
	push	acc
	push	acc
	mov	a,#0x80
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
	mov	dptr,#_tancotf_xden_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
;	tancotf.c:82: else return (xnum/xden);
	pop	ar3
	pop	ar2
;	tancotf.c:70: xden = Q(g);
00105$:
;	tancotf.c:73: if(n&1)
	mov	a,r2
	jb	acc.0,00128$
	ljmp	00113$
00128$:
;	tancotf.c:76: if(iscotan) return (-xnum/xden);
	mov	dptr,#_tancotf_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	orl	a,r2
	jz	00107$
	mov	dptr,#_tancotf_xnum_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	cpl	acc.7
	mov	r5,a
	mov	dptr,#_tancotf_xden_1_1
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	ret
00107$:
;	tancotf.c:77: else return (-xden/xnum);
	mov	dptr,#_tancotf_xden_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	cpl	acc.7
	mov	r5,a
	mov	dptr,#_tancotf_xnum_1_1
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	ret
00113$:
;	tancotf.c:81: if(iscotan) return (xden/xnum);
	mov	dptr,#_tancotf_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	orl	a,r2
	jz	00110$
	mov	dptr,#_tancotf_xden_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_tancotf_xnum_1_1
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	ret
00110$:
;	tancotf.c:82: else return (xnum/xden);
	mov	dptr,#_tancotf_xnum_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_tancotf_xden_1_1
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
