;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:27 2018
;--------------------------------------------------------
	.module _atoi
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _atoi
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
_atoi_sloc0_1_0:
	.ds 2
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
_atoi_s_1_1:
	.ds 3
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
;Allocation info for local variables in function 'atoi'
;------------------------------------------------------------
;rv                        Allocated to registers r2 r3 
;sign                      Allocated to registers r1 
;sloc0                     Allocated with name '_atoi_sloc0_1_0'
;s                         Allocated with name '_atoi_s_1_1'
;------------------------------------------------------------
;	_atoi.c:25: int atoi(char * s)
;	-----------------------------------------
;	 function atoi
;	-----------------------------------------
_atoi:
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
	mov	dptr,#_atoi_s_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
;	_atoi.c:27: register int rv=0; 
	mov	r2,#0x00
	mov	r3,#0x00
;	_atoi.c:31: while (*s) {
	mov	dptr,#_atoi_s_1_1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
00107$:
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r7,a
	jz	00133$
;	_atoi.c:32: if (*s <= '9' && *s >= '0')
	clr	c
	mov	a,#(0x39 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00102$
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0xb0
	jnc	00133$
;	_atoi.c:33: break;
00102$:
;	_atoi.c:34: if (*s == '-' || *s == '+') 
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r7,a
	cjne	r7,#0x2D,00138$
	sjmp	00133$
00138$:
	cjne	r7,#0x2B,00139$
	sjmp	00133$
00139$:
;	_atoi.c:36: s++;
	inc	r4
	cjne	r4,#0x00,00140$
	inc	r5
00140$:
	mov	dptr,#_atoi_s_1_1
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	sjmp	00107$
00133$:
	mov	dptr,#_atoi_s_1_1
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
;	_atoi.c:39: sign = (*s == '-');
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r7,a
	clr	a
	cjne	r7,#0x2D,00141$
	inc	a
00141$:
;	_atoi.c:40: if (*s == '-' || *s == '+') s++;
	mov	r0,a
	mov	r1,a
	jnz	00110$
	cjne	r7,#0x2B,00131$
00110$:
	mov	dptr,#_atoi_s_1_1
	mov	a,#0x01
	add	a,r4
	movx	@dptr,a
	clr	a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
;	_atoi.c:42: while (*s && *s >= '0' && *s <= '9') {
00131$:
	mov	dptr,#_atoi_s_1_1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
00115$:
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r7,a
	jz	00134$
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0xb0
	jc	00134$
	mov	a,#(0x39 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00134$
;	_atoi.c:43: rv = (rv * 10) + (*s - '0');
	push	ar1
	mov	dptr,#__mulint_PARM_2
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	mov	dptr,#0x000A
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	push	ar1
	lcall	__mulint
	mov	_atoi_sloc0_1_0,dpl
	mov	(_atoi_sloc0_1_0 + 1),dph
	pop	ar1
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	mov	a,r7
	rlc	a
	subb	a,acc
	mov	r0,a
	mov	a,r7
	add	a,#0xd0
	mov	r7,a
	mov	a,r0
	addc	a,#0xff
	mov	r0,a
	mov	a,r7
	add	a,_atoi_sloc0_1_0
	mov	r2,a
	mov	a,r0
	addc	a,(_atoi_sloc0_1_0 + 1)
	mov	r3,a
;	_atoi.c:44: s++;
	inc	r4
	cjne	r4,#0x00,00149$
	inc	r5
00149$:
	mov	dptr,#_atoi_s_1_1
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	pop	ar1
	sjmp	00115$
00134$:
	mov	dptr,#_atoi_s_1_1
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
;	_atoi.c:47: return (sign ? -rv : rv);
	mov	a,r1
	jz	00120$
	clr	c
	clr	a
	subb	a,r2
	mov	r4,a
	clr	a
	subb	a,r3
	mov	r5,a
	sjmp	00121$
00120$:
	mov	ar4,r2
	mov	ar5,r3
00121$:
	mov	dpl,r4
	mov	dph,r5
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
