;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:25 2018
;--------------------------------------------------------
	.module _atof
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _atof
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
_atof_sloc0_1_0:
	.ds 3
_atof_sloc1_1_0:
	.ds 4
_atof_sloc2_1_0:
	.ds 2
_atof_sloc3_1_0:
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
_atof_sign_1_1:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
_atof_s_1_1:
	.ds 3
_atof_value_1_1:
	.ds 4
_atof_fraction_1_1:
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
;Allocation info for local variables in function 'atof'
;------------------------------------------------------------
;sloc0                     Allocated with name '_atof_sloc0_1_0'
;sloc1                     Allocated with name '_atof_sloc1_1_0'
;sloc2                     Allocated with name '_atof_sloc2_1_0'
;sloc3                     Allocated with name '_atof_sloc3_1_0'
;------------------------------------------------------------
;	_atof.c:23: float atof(char * s)
;	-----------------------------------------
;	 function atof
;	-----------------------------------------
_atof:
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
	mov	r0,#_atof_s_1_1
	movx	@r0,a
	inc	r0
	mov	a,r3
	movx	@r0,a
	inc	r0
	mov	a,r2
	movx	@r0,a
;	_atof.c:30: while (isspace(*s)) s++;
	mov	r0,#_atof_s_1_1
	movx	a,@r0
	mov	r5,a
	inc	r0
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	dpl,a
	push	ar5
	push	ar6
	push	ar7
	lcall	_isspace
	mov	a,dpl
	pop	ar7
	pop	ar6
	pop	ar5
	jz	00148$
	inc	r5
	cjne	r5,#0x00,00101$
	inc	r6
	sjmp	00101$
00148$:
	mov	r0,#_atof_s_1_1
	mov	a,r5
	movx	@r0,a
	inc	r0
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
;	_atof.c:33: if (*s == '-')
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	cjne	r0,#0x2D,00107$
;	_atof.c:35: sign=1;
	setb	_atof_sign_1_1
;	_atof.c:36: s++;
	mov	r0,#_atof_s_1_1
	mov	a,#0x01
	add	a,r5
	movx	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
	sjmp	00108$
00107$:
;	_atof.c:40: sign=0;
	clr	_atof_sign_1_1
;	_atof.c:41: if (*s == '+') s++;
	cjne	r0,#0x2B,00108$
	mov	r0,#_atof_s_1_1
	mov	a,#0x01
	add	a,r5
	movx	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
00108$:
;	_atof.c:45: for (value=0.0; isdigit(*s); s++)
	mov	r0,#_atof_value_1_1
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	mov	r0,#_atof_s_1_1
	movx	a,@r0
	mov	_atof_sloc0_1_0,a
	inc	r0
	movx	a,@r0
	mov	(_atof_sloc0_1_0 + 1),a
	inc	r0
	movx	a,@r0
	mov	(_atof_sloc0_1_0 + 2),a
00121$:
	mov	dpl,_atof_sloc0_1_0
	mov	dph,(_atof_sloc0_1_0 + 1)
	mov	b,(_atof_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	dpl,a
	lcall	_isdigit
	mov	a,dpl
	jnz	00156$
	ljmp	00149$
00156$:
;	_atof.c:47: value=10.0*value+(*s-'0');
	mov	r0,#_atof_value_1_1
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
	mov	b,#0x20
	mov	a,#0x41
	lcall	___fsmul
	mov	_atof_sloc1_1_0,dpl
	mov	(_atof_sloc1_1_0 + 1),dph
	mov	(_atof_sloc1_1_0 + 2),b
	mov	(_atof_sloc1_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,_atof_sloc0_1_0
	mov	dph,(_atof_sloc0_1_0 + 1)
	mov	b,(_atof_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	mov	_atof_sloc0_1_0,dpl
	mov	(_atof_sloc0_1_0 + 1),dph
	mov	a,r7
	mov	_atof_sloc2_1_0,a
	rlc	a
	subb	a,acc
	mov	(_atof_sloc2_1_0 + 1),a
	mov	a,_atof_sloc2_1_0
	add	a,#0xd0
	mov	_atof_sloc2_1_0,a
	mov	a,(_atof_sloc2_1_0 + 1)
	addc	a,#0xff
	mov	(_atof_sloc2_1_0 + 1),a
	mov	dpl,_atof_sloc2_1_0
	mov	dph,(_atof_sloc2_1_0 + 1)
	lcall	___sint2fs
	mov	_atof_sloc3_1_0,dpl
	mov	(_atof_sloc3_1_0 + 1),dph
	mov	(_atof_sloc3_1_0 + 2),b
	mov	(_atof_sloc3_1_0 + 3),a
	push	_atof_sloc3_1_0
	push	(_atof_sloc3_1_0 + 1)
	push	(_atof_sloc3_1_0 + 2)
	push	(_atof_sloc3_1_0 + 3)
	mov	dpl,_atof_sloc1_1_0
	mov	dph,(_atof_sloc1_1_0 + 1)
	mov	b,(_atof_sloc1_1_0 + 2)
	mov	a,(_atof_sloc1_1_0 + 3)
	lcall	___fsadd
	mov	r0,#_atof_value_1_1
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
;	_atof.c:45: for (value=0.0; isdigit(*s); s++)
	ljmp	00121$
00149$:
	mov	r0,#_atof_s_1_1
	mov	a,_atof_sloc0_1_0
	movx	@r0,a
	inc	r0
	mov	a,(_atof_sloc0_1_0 + 1)
	movx	@r0,a
	inc	r0
	mov	a,(_atof_sloc0_1_0 + 2)
	movx	@r0,a
;	_atof.c:51: if (*s == '.')
	mov	dpl,_atof_sloc0_1_0
	mov	dph,(_atof_sloc0_1_0 + 1)
	mov	b,(_atof_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r7,a
	cjne	r7,#0x2E,00157$
	sjmp	00158$
00157$:
	ljmp	00110$
00158$:
;	_atof.c:53: s++;
	mov	r0,#_atof_s_1_1
	mov	a,#0x01
	add	a,_atof_sloc0_1_0
	movx	@r0,a
	clr	a
	addc	a,(_atof_sloc0_1_0 + 1)
	inc	r0
	movx	@r0,a
	inc	r0
	mov	a,(_atof_sloc0_1_0 + 2)
	movx	@r0,a
;	_atof.c:54: for (fraction=0.1; isdigit(*s); s++)
	mov	r0,#_atof_fraction_1_1
	mov	a,#0xCD
	movx	@r0,a
	inc	r0
	mov	a,#0xCC
	movx	@r0,a
	inc	r0
	mov	a,#0xCC
	movx	@r0,a
	inc	r0
	mov	a,#0x3D
	movx	@r0,a
	mov	r0,#_atof_s_1_1
	movx	a,@r0
	mov	_atof_sloc3_1_0,a
	inc	r0
	movx	a,@r0
	mov	(_atof_sloc3_1_0 + 1),a
	inc	r0
	movx	a,@r0
	mov	(_atof_sloc3_1_0 + 2),a
00125$:
	mov	dpl,_atof_sloc3_1_0
	mov	dph,(_atof_sloc3_1_0 + 1)
	mov	b,(_atof_sloc3_1_0 + 2)
	lcall	__gptrget
	mov	dpl,a
	lcall	_isdigit
	mov	a,dpl
	jnz	00159$
	ljmp	00150$
00159$:
;	_atof.c:56: value+=(*s-'0')*fraction;
	mov	dpl,_atof_sloc3_1_0
	mov	dph,(_atof_sloc3_1_0 + 1)
	mov	b,(_atof_sloc3_1_0 + 2)
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	mov	_atof_sloc3_1_0,dpl
	mov	(_atof_sloc3_1_0 + 1),dph
	mov	a,r4
	rlc	a
	subb	a,acc
	mov	r2,a
	mov	a,r4
	add	a,#0xd0
	mov	r4,a
	mov	a,r2
	addc	a,#0xff
	mov	r2,a
	mov	dpl,r4
	mov	dph,r2
	lcall	___sint2fs
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r7,a
	mov	r0,#_atof_fraction_1_1
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
	mov	a,r7
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar2
	push	ar3
	push	ar4
	push	ar7
	mov	r0,#_atof_value_1_1
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
	mov	r0,#_atof_value_1_1
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
;	_atof.c:57: fraction*=0.1;
	mov	r0,#_atof_fraction_1_1
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
	mov	dptr,#0xCCCD
	mov	b,#0xCC
	mov	a,#0x3D
	lcall	___fsmul
	mov	r0,#_atof_fraction_1_1
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
;	_atof.c:54: for (fraction=0.1; isdigit(*s); s++)
	ljmp	00125$
00150$:
	mov	r0,#_atof_s_1_1
	mov	a,_atof_sloc3_1_0
	movx	@r0,a
	inc	r0
	mov	a,(_atof_sloc3_1_0 + 1)
	movx	@r0,a
	inc	r0
	mov	a,(_atof_sloc3_1_0 + 2)
	movx	@r0,a
00110$:
;	_atof.c:62: if (toupper(*s)=='E')
	mov	r0,#_atof_s_1_1
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	lcall	__gptrget
	mov	dpl,a
	lcall	_islower
	mov	a,dpl
	jz	00131$
	mov	r0,#_atof_s_1_1
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	lcall	__gptrget
	mov	r2,a
	rlc	a
	subb	a,acc
	mov	r3,a
	anl	ar2,#0xDF
	sjmp	00132$
00131$:
	mov	r0,#_atof_s_1_1
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	lcall	__gptrget
	mov	r4,a
	mov	r2,a
	rlc	a
	subb	a,acc
	mov	r3,a
00132$:
	cjne	r2,#0x45,00161$
	cjne	r3,#0x00,00161$
	sjmp	00162$
00161$:
	ljmp	00118$
00162$:
;	_atof.c:64: s++;
	mov	r0,#_atof_s_1_1
	movx	a,@r0
	add	a,#0x01
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	movx	@r0,a
;	_atof.c:65: iexp=(char)atoi(s);
	mov	r0,#_atof_s_1_1
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	lcall	_atoi
	mov	r2,dpl
	mov	r3,dph
;	_atof.c:67: while(iexp!=0)
00114$:
	mov	a,r2
	jnz	00163$
	ljmp	00118$
00163$:
;	_atof.c:69: if(iexp<0)
	mov	a,r2
	jnb	acc.7,00112$
;	_atof.c:71: value*=0.1;
	push	ar2
	mov	r0,#_atof_value_1_1
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
	mov	dptr,#0xCCCD
	mov	b,#0xCC
	mov	a,#0x3D
	lcall	___fsmul
	mov	r0,#_atof_value_1_1
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
	pop	ar2
;	_atof.c:72: iexp++;
	inc	r2
	sjmp	00114$
00112$:
;	_atof.c:76: value*=10.0;
	push	ar2
	mov	r0,#_atof_value_1_1
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
	mov	b,#0x20
	mov	a,#0x41
	lcall	___fsmul
	mov	r0,#_atof_value_1_1
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
	pop	ar2
;	_atof.c:77: iexp--;
	dec	r2
	ljmp	00114$
00118$:
;	_atof.c:83: if(sign) value*=-1.0;
	jnb	_atof_sign_1_1,00120$
	mov	r0,#_atof_value_1_1
	movx	a,@r0
	movx	@r0,a
	inc	r0
	movx	a,@r0
	movx	@r0,a
	inc	r0
	movx	a,@r0
	movx	@r0,a
	inc	r0
	movx	a,@r0
	cpl	acc.7
	movx	@r0,a
00120$:
;	_atof.c:84: return (value);
	mov	r0,#_atof_value_1_1
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
