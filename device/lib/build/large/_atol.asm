;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:27 2018
;--------------------------------------------------------
	.module _atol
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _atol
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
_atol_rv_1_1:
	.ds 4
_atol_sloc0_1_0:
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
_atol_s_1_1:
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
;Allocation info for local variables in function 'atol'
;------------------------------------------------------------
;rv                        Allocated with name '_atol_rv_1_1'
;sign                      Allocated to registers r3 
;sloc0                     Allocated with name '_atol_sloc0_1_0'
;s                         Allocated with name '_atol_s_1_1'
;------------------------------------------------------------
;	_atol.c:25: long atol(char * s)
;	-----------------------------------------
;	 function atol
;	-----------------------------------------
_atol:
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
	mov	dptr,#_atol_s_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
;	_atol.c:27: register long rv=0; 
	clr	a
	mov	_atol_rv_1_1,a
	mov	(_atol_rv_1_1 + 1),a
	mov	(_atol_rv_1_1 + 2),a
	mov	(_atol_rv_1_1 + 3),a
;	_atol.c:31: while (*s) {
	mov	dptr,#_atol_s_1_1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
00107$:
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
	mov	r1,a
	jz	00133$
;	_atol.c:32: if (*s <= '9' && *s >= '0')
	clr	c
	mov	a,#(0x39 ^ 0x80)
	mov	b,r1
	xrl	b,#0x80
	subb	a,b
	jc	00102$
	mov	a,r1
	xrl	a,#0x80
	subb	a,#0xb0
	jnc	00133$
;	_atol.c:33: break;
00102$:
;	_atol.c:34: if (*s == '-' || *s == '+') 
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
	mov	r1,a
	cjne	r1,#0x2D,00138$
	sjmp	00133$
00138$:
	cjne	r1,#0x2B,00139$
	sjmp	00133$
00139$:
;	_atol.c:36: s++;
	inc	r6
	cjne	r6,#0x00,00140$
	inc	r7
00140$:
	mov	dptr,#_atol_s_1_1
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	sjmp	00107$
00133$:
	mov	dptr,#_atol_s_1_1
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
;	_atol.c:39: sign = (*s == '-');
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
	mov	r1,a
	clr	a
	cjne	r1,#0x2D,00141$
	inc	a
00141$:
;	_atol.c:40: if (*s == '-' || *s == '+') s++;
	mov	r2,a
	mov	r3,a
	jnz	00110$
	cjne	r1,#0x2B,00131$
00110$:
	mov	dptr,#_atol_s_1_1
	mov	a,#0x01
	add	a,r6
	movx	@dptr,a
	clr	a
	addc	a,r7
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
;	_atol.c:42: while (*s && *s >= '0' && *s <= '9') {
00131$:
	mov	dptr,#_atol_s_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
00115$:
	mov	dpl,r2
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r6,a
	jnz	00146$
	ljmp	00134$
00146$:
	clr	c
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0xb0
	jnc	00147$
	ljmp	00134$
00147$:
	clr	c
	mov	a,#(0x39 ^ 0x80)
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jnc	00148$
	ljmp	00134$
00148$:
;	_atol.c:43: rv = (rv * 10) + (*s - '0');
	push	ar3
	mov	dptr,#__mullong_PARM_2
	mov	a,_atol_rv_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,(_atol_rv_1_1 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_atol_rv_1_1 + 2)
	movx	@dptr,a
	inc	dptr
	mov	a,(_atol_rv_1_1 + 3)
	movx	@dptr,a
	mov	dptr,#(0x0A&0x00ff)
	clr	a
	mov	b,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	__mullong
	mov	_atol_sloc0_1_0,dpl
	mov	(_atol_sloc0_1_0 + 1),dph
	mov	(_atol_sloc0_1_0 + 2),b
	mov	(_atol_sloc0_1_0 + 3),a
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,r6
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	a,r6
	add	a,#0xd0
	mov	r6,a
	mov	a,r3
	addc	a,#0xff
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	r0,a
	mov	a,r6
	add	a,_atol_sloc0_1_0
	mov	_atol_rv_1_1,a
	mov	a,r3
	addc	a,(_atol_sloc0_1_0 + 1)
	mov	(_atol_rv_1_1 + 1),a
	mov	a,r7
	addc	a,(_atol_sloc0_1_0 + 2)
	mov	(_atol_rv_1_1 + 2),a
	mov	a,r0
	addc	a,(_atol_sloc0_1_0 + 3)
	mov	(_atol_rv_1_1 + 3),a
;	_atol.c:44: s++;
	inc	r2
	cjne	r2,#0x00,00149$
	inc	r4
00149$:
	mov	dptr,#_atol_s_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	pop	ar3
	ljmp	00115$
00134$:
	mov	dptr,#_atol_s_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
;	_atol.c:47: return (sign ? -rv : rv);
	mov	a,r3
	jz	00120$
	clr	c
	clr	a
	subb	a,_atol_rv_1_1
	mov	r2,a
	clr	a
	subb	a,(_atol_rv_1_1 + 1)
	mov	r3,a
	clr	a
	subb	a,(_atol_rv_1_1 + 2)
	mov	r4,a
	clr	a
	subb	a,(_atol_rv_1_1 + 3)
	mov	r5,a
	sjmp	00121$
00120$:
	mov	r2,_atol_rv_1_1
	mov	r3,(_atol_rv_1_1 + 1)
	mov	r4,(_atol_rv_1_1 + 2)
	mov	r5,(_atol_rv_1_1 + 3)
00121$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
