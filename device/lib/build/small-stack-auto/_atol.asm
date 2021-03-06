;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:28 2018
;--------------------------------------------------------
	.module _atol
	.optsdcc -mmcs51 --model-small
	
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
;Allocation info for local variables in function 'atol'
;------------------------------------------------------------
;s                         Allocated to registers r5 r6 r7 
;rv                        Allocated to stack - offset 1
;sign                      Allocated to registers r4 
;sloc0                     Allocated to stack - offset 5
;sloc1                     Allocated to stack - offset 8
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
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x0b
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	_atol.c:27: register long rv=0; 
	mov	r0,_bp
	inc	r0
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	_atol.c:31: while (*s) {
	mov	ar3,r5
	mov	ar4,r6
	mov	ar2,r7
00107$:
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	lcall	__gptrget
	mov	r5,a
	jz	00133$
;	_atol.c:32: if (*s <= '9' && *s >= '0')
	clr	c
	mov	a,#(0x39 ^ 0x80)
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jc	00102$
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0xb0
	jnc	00133$
;	_atol.c:33: break;
00102$:
;	_atol.c:34: if (*s == '-' || *s == '+') 
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	lcall	__gptrget
	mov	r5,a
	cjne	r5,#0x2D,00138$
	sjmp	00133$
00138$:
	cjne	r5,#0x2B,00139$
	sjmp	00133$
00139$:
;	_atol.c:36: s++;
	inc	r3
	cjne	r3,#0x00,00107$
	inc	r4
	sjmp	00107$
00133$:
	mov	ar5,r3
	mov	ar6,r4
	mov	ar7,r2
;	_atol.c:39: sign = (*s == '-');
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	lcall	__gptrget
	mov	r2,a
	clr	a
	cjne	r2,#0x2D,00141$
	inc	a
00141$:
;	_atol.c:40: if (*s == '-' || *s == '+') s++;
	mov	r3,a
	mov	r4,a
	jnz	00110$
	cjne	r2,#0x2B,00131$
00110$:
	inc	r5
	cjne	r5,#0x00,00146$
	inc	r6
00146$:
;	_atol.c:42: while (*s && *s >= '0' && *s <= '9') {
00131$:
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
00115$:
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r6,a
	jnz	00147$
	ljmp	00117$
00147$:
	clr	c
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0xb0
	jnc	00148$
	ljmp	00117$
00148$:
	clr	c
	mov	a,#(0x39 ^ 0x80)
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jnc	00149$
	ljmp	00117$
00149$:
;	_atol.c:43: rv = (rv * 10) + (*s - '0');
	push	ar4
	push	ar4
	push	ar6
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dptr,#(0x0A&0x00ff)
	clr	a
	mov	b,a
	lcall	__mullong
	push	acc
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	pop	acc
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
	pop	ar4
	mov	a,r6
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	a,r6
	add	a,#0xd0
	mov	r6,a
	mov	a,r5
	addc	a,#0xff
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r2,a
	mov	r3,a
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,r6
	add	a,@r0
	mov	r6,a
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	r5,a
	mov	a,r2
	inc	r0
	addc	a,@r0
	mov	r2,a
	mov	a,r3
	inc	r0
	addc	a,@r0
	mov	r3,a
	mov	r0,_bp
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
;	_atol.c:44: s++;
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00150$
	inc	r0
	inc	@r0
00150$:
	pop	ar4
	ljmp	00115$
00117$:
;	_atol.c:47: return (sign ? -rv : rv);
	mov	a,r4
	jz	00120$
	mov	r0,_bp
	inc	r0
	clr	c
	clr	a
	subb	a,@r0
	mov	r2,a
	inc	r0
	clr	a
	subb	a,@r0
	mov	r3,a
	inc	r0
	clr	a
	subb	a,@r0
	mov	r4,a
	inc	r0
	clr	a
	subb	a,@r0
	mov	r5,a
	sjmp	00121$
00120$:
	mov	r0,_bp
	inc	r0
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
00121$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
