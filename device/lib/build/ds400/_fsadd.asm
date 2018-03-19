;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:23 2018
;--------------------------------------------------------
	.module _fsadd
	.optsdcc -mds400 --model-flat24
	
;--------------------------------------------------------
; CPU specific extensions
;--------------------------------------------------------
.flat24 on		; 24 bit flat addressing
dpl1	=	0x84
dph1	=	0x85
dps	=	0x86
dpx	=	0x93
dpx1	=	0x95
esp	=	0x9B
ap	=	0x9C
_ap	=	0x9C
mcnt0	=	0xD1
mcnt1	=	0xD2
ma	=	0xD3
mb	=	0xD4
mc	=	0xD5
F1	=	0xD1	; user flag
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fsadd_PARM_2
	.globl ___fsadd
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
	.area REG_BANK_3	(REL,OVR,DATA)
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
___fsadd_PARM_2:
	.ds 4
___fsadd_mant1_1_1:
	.ds 4
___fsadd_mant2_1_1:
	.ds 4
___fsadd_fl1_1_1:
	.ds 4
___fsadd_fl2_1_1:
	.ds 4
___fsadd_exp1_1_1:
	.ds 2
___fsadd_exp2_1_1:
	.ds 2
___fsadd_sign_1_1:
	.ds 4
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
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
;Allocation info for local variables in function '__fsadd'
;------------------------------------------------------------
;a2                        Allocated with name '___fsadd_PARM_2'
;a1                        Allocated to registers r2 r3 r4 r5 
;mant1                     Allocated with name '___fsadd_mant1_1_1'
;mant2                     Allocated with name '___fsadd_mant2_1_1'
;fl1                       Allocated with name '___fsadd_fl1_1_1'
;fl2                       Allocated with name '___fsadd_fl2_1_1'
;exp1                      Allocated with name '___fsadd_exp1_1_1'
;exp2                      Allocated with name '___fsadd_exp2_1_1'
;sign                      Allocated with name '___fsadd_sign_1_1'
;------------------------------------------------------------
;	_fsadd.c:160: float __fsadd (float a1, float a2)
;	-----------------------------------------
;	 function __fsadd
;	-----------------------------------------
___fsadd:
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
	mov	r4,dpx
	mov	r5,b
;	_fsadd.c:165: volatile unsigned long sign = 0;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsadd_sign_1_1
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	_fsadd.c:167: fl1.f = a1;
	mov	dptr,#___fsadd_fl1_1_1
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
;	_fsadd.c:168: fl2.f = a2;
	mov	dptr,#___fsadd_fl2_1_1
	mov     dps, #1
	mov     dptr, #___fsadd_PARM_2
	movx	a,@dptr
	dec	dps
	movx	@dptr,a
	inc	dptr
	inc	dps
	inc	dptr
	movx	a,@dptr
	dec	dps
	movx	@dptr,a
	inc	dptr
	inc	dps
	inc	dptr
	movx	a,@dptr
	dec	dps
	movx	@dptr,a
	inc	dptr
	inc	dps
	inc	dptr
	movx	a,@dptr
	dec	dps
	movx	@dptr,a
;	_fsadd.c:171: if (!fl1.l)
	mov	dptr,#___fsadd_fl1_1_1
	movx	a,@dptr
	inc	dptr
	mov	r2,a
	movx	a,@dptr
	inc	dptr
	mov	r3,a
	movx	a,@dptr
	inc	dptr
	mov	r4,a
	movx	a,@dptr
	mov	r5,a
	mov	a,r2
	orl	a,r3
	orl	a,r4
	orl	a,r5
	jnz  00102$
00145$:
;	_fsadd.c:172: return (fl2.f);
	mov	dptr,#___fsadd_fl2_1_1
	movx	a,@dptr
	inc	dptr
	mov	r2,a
	movx	a,@dptr
	inc	dptr
	mov	r3,a
	movx	a,@dptr
	inc	dptr
	mov	r4,a
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	ljmp	00129$
00102$:
;	_fsadd.c:173: if (!fl2.l)
	mov	dptr,#___fsadd_fl2_1_1
	movx	a,@dptr
	inc	dptr
	mov	r2,a
	movx	a,@dptr
	inc	dptr
	mov	r3,a
	movx	a,@dptr
	inc	dptr
	mov	r4,a
	movx	a,@dptr
	mov	r5,a
	mov	a,r2
	orl	a,r3
	orl	a,r4
	orl	a,r5
	jnz  00104$
00146$:
;	_fsadd.c:174: return (fl1.f);
	mov	dptr,#___fsadd_fl1_1_1
	movx	a,@dptr
	inc	dptr
	mov	r2,a
	movx	a,@dptr
	inc	dptr
	mov	r3,a
	movx	a,@dptr
	inc	dptr
	mov	r4,a
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	ljmp	00129$
00104$:
;	_fsadd.c:176: exp1 = EXP (fl1.l);
	mov	dptr,#___fsadd_fl1_1_1
	movx	a,@dptr
	inc	dptr
	mov	r2,a
	movx	a,@dptr
	inc	dptr
	mov	r3,a
	movx	a,@dptr
	inc	dptr
	mov	r4,a
	movx	a,@dptr
	mov	r5,a
	mov	ar2,r4
	mov	a,r5
	mov	c,acc.7
	xch	a,r2
	rlc	a
	xch	a,r2
	rlc	a
	xch	a,r2
	anl	a,#0x01
	mov	r3,a
	mov	r4,#0
	mov	r5,#0
	mov	r3,#0
	mov	r4,#0
	mov	r5,#0
	mov	dptr,#___fsadd_exp1_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
;	_fsadd.c:177: exp2 = EXP (fl2.l);
	mov	dptr,#___fsadd_fl2_1_1
	movx	a,@dptr
	inc	dptr
	mov	r2,a
	movx	a,@dptr
	inc	dptr
	mov	r3,a
	movx	a,@dptr
	inc	dptr
	mov	r4,a
	movx	a,@dptr
	mov	r5,a
	mov	ar2,r4
	mov	a,r5
	mov	c,acc.7
	xch	a,r2
	rlc	a
	xch	a,r2
	rlc	a
	xch	a,r2
	anl	a,#0x01
	mov	r3,a
	mov	r4,#0
	mov	r5,#0
	mov	r3,#0
	mov	r4,#0
	mov	r5,#0
	mov	dptr,#___fsadd_exp2_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
;	_fsadd.c:179: if (exp1 > exp2 + 25)
	mov	dptr,#___fsadd_exp2_1_1
	movx	a,@dptr
	add	a,#0x19
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	mov	r3,a
	mov	dptr,#___fsadd_exp1_1_1
	clr	c
	mov	a,r2
	xch	a, b
	movx	a,@dptr
	xch	a, b
	subb	a,b
	mov	a,r3
	xrl	a,#0x80
	xch	a, b
	inc	dptr
	movx	a,@dptr
	xch	a, b
	xrl	b,#0x80
	subb	a,b
	jnc  00106$
00147$:
;	_fsadd.c:180: return (fl1.f);
	mov	dptr,#___fsadd_fl1_1_1
	movx	a,@dptr
	inc	dptr
	mov	r2,a
	movx	a,@dptr
	inc	dptr
	mov	r3,a
	movx	a,@dptr
	inc	dptr
	mov	r4,a
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	ljmp	00129$
00106$:
;	_fsadd.c:181: if (exp2 > exp1 + 25)
	mov	dptr,#___fsadd_exp1_1_1
	movx	a,@dptr
	add	a,#0x19
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	mov	r3,a
	mov	dptr,#___fsadd_exp2_1_1
	clr	c
	mov	a,r2
	xch	a, b
	movx	a,@dptr
	xch	a, b
	subb	a,b
	mov	a,r3
	xrl	a,#0x80
	xch	a, b
	inc	dptr
	movx	a,@dptr
	xch	a, b
	xrl	b,#0x80
	subb	a,b
	jnc  00108$
00148$:
;	_fsadd.c:182: return (fl2.f);
	mov	dptr,#___fsadd_fl2_1_1
	movx	a,@dptr
	inc	dptr
	mov	r2,a
	movx	a,@dptr
	inc	dptr
	mov	r3,a
	movx	a,@dptr
	inc	dptr
	mov	r4,a
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	ljmp	00129$
00108$:
;	_fsadd.c:184: mant1 = MANT (fl1.l);
	mov	dptr,#___fsadd_fl1_1_1
	movx	a,@dptr
	inc	dptr
	mov	r2,a
	movx	a,@dptr
	inc	dptr
	mov	r3,a
	movx	a,@dptr
	inc	dptr
	mov	r4,a
	movx	a,@dptr
	mov	r5,a
	anl	ar4,#0x7F
	mov	r5,#0
	mov	dptr,#___fsadd_mant1_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	mov	a,#0x80
	orl	a,r4
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
;	_fsadd.c:185: mant2 = MANT (fl2.l);
	mov	dptr,#___fsadd_fl2_1_1
	movx	a,@dptr
	inc	dptr
	mov	r2,a
	movx	a,@dptr
	inc	dptr
	mov	r3,a
	movx	a,@dptr
	inc	dptr
	mov	r4,a
	movx	a,@dptr
	mov	r5,a
	anl	ar4,#0x7F
	mov	r5,#0
	mov	dptr,#___fsadd_mant2_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	mov	a,#0x80
	orl	a,r4
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
;	_fsadd.c:187: if (SIGN (fl1.l))
	mov	dptr,#___fsadd_fl1_1_1
	movx	a,@dptr
	inc	dptr
	mov	r2,a
	movx	a,@dptr
	inc	dptr
	mov	r3,a
	movx	a,@dptr
	inc	dptr
	mov	r4,a
	movx	a,@dptr
	mov  r5,a
	rl	a
	anl	a,#1
	mov  r2,a
	jz  00110$
00149$:
;	_fsadd.c:188: mant1 = -mant1;
	mov	dptr,#___fsadd_mant1_1_1
	mov	dps, #1
	mov	dptr, #___fsadd_mant1_1_1
	dec	dps
	movx	a,@dptr
	setb	c
	cpl	a
	addc	a,#0
	inc	dps
	movx	@dptr,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	cpl	a
	addc	a,#0
	inc	dps
	inc	dptr
	movx	@dptr,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	cpl	a
	addc	a,#0
	inc	dps
	inc	dptr
	movx	@dptr,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	cpl	a
	addc	a,#0
	inc	dps
	inc	dptr
	movx	@dptr,a
	mov	dps,#0
00110$:
;	_fsadd.c:189: if (SIGN (fl2.l))
	mov	dptr,#___fsadd_fl2_1_1
	movx	a,@dptr
	inc	dptr
	mov	r2,a
	movx	a,@dptr
	inc	dptr
	mov	r3,a
	movx	a,@dptr
	inc	dptr
	mov	r4,a
	movx	a,@dptr
	mov  r5,a
	rl	a
	anl	a,#1
	mov  r2,a
	jz  00112$
00150$:
;	_fsadd.c:190: mant2 = -mant2;
	mov	dptr,#___fsadd_mant2_1_1
	mov	dps, #1
	mov	dptr, #___fsadd_mant2_1_1
	dec	dps
	movx	a,@dptr
	setb	c
	cpl	a
	addc	a,#0
	inc	dps
	movx	@dptr,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	cpl	a
	addc	a,#0
	inc	dps
	inc	dptr
	movx	@dptr,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	cpl	a
	addc	a,#0
	inc	dps
	inc	dptr
	movx	@dptr,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	cpl	a
	addc	a,#0
	inc	dps
	inc	dptr
	movx	@dptr,a
	mov	dps,#0
00112$:
;	_fsadd.c:192: if (exp1 > exp2)
	mov	dptr,#___fsadd_exp2_1_1
	mov	dps, #1
	mov	dptr, #___fsadd_exp1_1_1
	dec	dps
	clr	c
	movx	a,@dptr
	mov	dps,#1
	xch	a, b
	movx	a,@dptr
	mov	dps,#0
	xch	a, b
	subb	a,b
	inc	dptr
	movx	a,@dptr
	xrl	a,#0x80
	mov	dps,#1
	xch	a, b
	inc	dptr
	movx	a,@dptr
	mov	dps,#0
	xch	a, b
	xrl	b,#0x80
	subb	a,b
	jnc  00114$
00151$:
;	_fsadd.c:194: mant2 >>= exp1 - exp2;
	mov	dptr,#___fsadd_exp2_1_1
	mov	dps, #1
	mov	dptr, #___fsadd_exp1_1_1
	dec	dps
	clr	c
	movx	a,@dptr
	mov	b,a
	inc	dps
	movx	a,@dptr
	subb	a,b
	mov	r2,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r3,a
	mov	dps,#0
	mov	b,r2
	inc	b
	mov	dptr,#___fsadd_mant2_1_1
	movx	a,@dptr
	mov     r2,a
	inc	dptr
	movx	a,@dptr
	mov     r3,a
	inc	dptr
	movx	a,@dptr
	mov     r4,a
	inc	dptr
	movx	a,@dptr
	mov     r5,a
	movx	a,@dptr
	rlc	a
	mov	ov,c
	sjmp	00153$
00152$:
	mov	c,ov
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	mov	r4,a
	mov	a,r3
	rrc	a
	mov	r3,a
	mov	a,r2
	rrc	a
	mov	r2,a
00153$:
	djnz	b,00152$
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsadd_mant2_1_1
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
	sjmp 00115$
00114$:
;	_fsadd.c:198: mant1 >>= exp2 - exp1;
	mov	dptr,#___fsadd_exp1_1_1
	mov	dps, #1
	mov	dptr, #___fsadd_exp2_1_1
	dec	dps
	clr	c
	movx	a,@dptr
	mov	b,a
	inc	dps
	movx	a,@dptr
	subb	a,b
	mov	r2,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	mov	b,a
	inc	dps
	inc	dptr
	movx	a,@dptr
	subb	a,b
	mov	r3,a
	mov	dps,#0
	mov	b,r2
	inc	b
	mov	dptr,#___fsadd_mant1_1_1
	movx	a,@dptr
	mov     r2,a
	inc	dptr
	movx	a,@dptr
	mov     r3,a
	inc	dptr
	movx	a,@dptr
	mov     r4,a
	inc	dptr
	movx	a,@dptr
	mov     r5,a
	movx	a,@dptr
	rlc	a
	mov	ov,c
	sjmp	00155$
00154$:
	mov	c,ov
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	mov	r4,a
	mov	a,r3
	rrc	a
	mov	r3,a
	mov	a,r2
	rrc	a
	mov	r2,a
00155$:
	djnz	b,00154$
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsadd_mant1_1_1
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
;	_fsadd.c:199: exp1 = exp2;
	mov	dptr,#___fsadd_exp2_1_1
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#___fsadd_exp1_1_1
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	mov	dps,#0
00115$:
;	_fsadd.c:201: mant1 += mant2;
	mov	dptr,#___fsadd_mant2_1_1
	mov	dps, #1
	mov	dptr, #___fsadd_mant1_1_1
	dec	dps
	movx	a,@dptr
	xch	a, _ap
	inc	dps
	movx	a,@dptr
	xch	a, _ap
	add	a,_ap
	mov	r2,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, _ap
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, _ap
	addc	a,_ap
	mov	r3,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, _ap
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, _ap
	addc	a,_ap
	mov	r4,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	xch	a, _ap
	inc	dps
	inc	dptr
	movx	a,@dptr
	xch	a, _ap
	addc	a,_ap
	mov	r5,a
	mov	dps,#0
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsadd_mant1_1_1
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
;	_fsadd.c:203: if (mant1 < 0)
	mov	dptr,#___fsadd_mant1_1_1
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	jnb  acc.7,00119$
00156$:
;	_fsadd.c:205: mant1 = -mant1;
	mov	dptr,#___fsadd_mant1_1_1
	mov	dps, #1
	mov	dptr, #___fsadd_mant1_1_1
	dec	dps
	movx	a,@dptr
	setb	c
	cpl	a
	addc	a,#0
	inc	dps
	movx	@dptr,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	cpl	a
	addc	a,#0
	inc	dps
	inc	dptr
	movx	@dptr,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	cpl	a
	addc	a,#0
	inc	dps
	inc	dptr
	movx	@dptr,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	cpl	a
	addc	a,#0
	inc	dps
	inc	dptr
	movx	@dptr,a
	mov	dps,#0
;	_fsadd.c:206: sign = SIGNBIT;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsadd_sign_1_1
	clr  a
	movx @dptr,a
	inc  dptr
	movx @dptr,a
	inc	dptr
	clr  a
	movx	@dptr,a
	inc	dptr
	mov	a,#0x80
	movx	@dptr,a
	sjmp 00121$
00119$:
;	_fsadd.c:208: else if (!mant1)
	mov	dptr,#___fsadd_mant1_1_1
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz  00121$
00157$:
;	_fsadd.c:209: return (0);
	mov  dptr,#0x0000
	mov	b,#0x00
	ljmp	00129$
;	_fsadd.c:212: while (mant1<HIDDEN) {
00121$:
	mov	dptr,#___fsadd_mant1_1_1
;	genAssign: resultIsFar = FALSE
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
	clr	c
	mov	a,r2
	subb	a,#0x00
	mov	a,r3
	subb	a,#0x00
	mov	a,r4
	subb	a,#0x80
	mov	a,r5
	subb	a,#0x00
	jnc  00126$
00158$:
;	_fsadd.c:213: mant1 <<= 1;
	mov	b,#0x02
	mov	dptr,#___fsadd_mant1_1_1
	movx	a,@dptr
	mov     r2,a
	inc	dptr
	movx	a,@dptr
	mov     r3,a
	inc	dptr
	movx	a,@dptr
	mov     r4,a
	inc	dptr
	movx	a,@dptr
	mov     r5,a
	sjmp	00160$
00159$:
	mov	a,r2
	add	a,acc
	mov	r2,a
	mov	a,r3
	rlc	a
	mov	r3,a
	mov	a,r4
	rlc	a
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
00160$:
	djnz	b,00159$
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsadd_mant1_1_1
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
;	_fsadd.c:214: exp1--;
	mov	dptr,#___fsadd_exp1_1_1
	movx	a,@dptr
	add	a,#0xFF
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xFF
	mov	r3,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsadd_exp1_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
;	_fsadd.c:218: while (mant1 & 0xff000000) {
	sjmp 00121$
00126$:
	mov	dptr,#___fsadd_mant1_1_1
;	genAssign: resultIsFar = FALSE
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
	mov  r5,a
	jz  00128$
00161$:
;	_fsadd.c:219: if (mant1&1)
	mov	dptr,#___fsadd_mant1_1_1
	movx	a,@dptr
	jnb  acc.0,00125$
00162$:
;	_fsadd.c:220: mant1 += 2;
	mov	dptr,#___fsadd_mant1_1_1
	movx	a,@dptr
	add	a,#0x02
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
00125$:
;	_fsadd.c:221: mant1 >>= 1 ;
	mov	dptr,#___fsadd_mant1_1_1
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	c,acc.7
	rrc	a
	mov	r5,a
	lcall	__decdptr
	movx	a,@dptr
	rrc	a
	mov	r4,a
	lcall	__decdptr
	movx	a,@dptr
	rrc	a
	mov	r3,a
	lcall	__decdptr
	movx	a,@dptr
	rrc	a
;	genAssign: resultIsFar = TRUE
	mov  r2,a
	mov  dptr,#___fsadd_mant1_1_1
	movx @dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
;	_fsadd.c:222: exp1++;
	mov	dptr,#___fsadd_exp1_1_1
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	sjmp 00126$
00128$:
;	_fsadd.c:226: mant1 &= ~HIDDEN;
	mov	dptr,#___fsadd_mant1_1_1
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	anl	a,#0x7F
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
;	_fsadd.c:229: fl1.l = PACK (sign, (unsigned long) exp1, mant1);
	mov	dptr,#___fsadd_exp1_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	movx	a,@dptr
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	r5,a
	mov	b,#0x18
	sjmp	00164$
00163$:
	mov	a,r2
	add	a,acc
	mov	r2,a
	mov	a,r3
	rlc	a
	mov	r3,a
	mov	a,r4
	rlc	a
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
00164$:
	djnz	b,00163$
	mov	dptr,#___fsadd_sign_1_1
	movx	a,@dptr
	orl	ar2,a
	inc	dptr
	movx	a,@dptr
	orl	ar3,a
	inc	dptr
	movx	a,@dptr
	orl	ar4,a
	inc	dptr
	movx	a,@dptr
	orl	ar5,a
	mov	dptr,#___fsadd_mant1_1_1
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	a,r6
	orl	ar2,a
	mov	a,r7
	orl	ar3,a
	mov	a,r0
	orl	ar4,a
	mov	a,r1
	orl	ar5,a
	mov	dptr,#___fsadd_fl1_1_1
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
;	_fsadd.c:231: return (fl1.f);
	mov	dptr,#___fsadd_fl1_1_1
	movx	a,@dptr
	inc	dptr
	mov	r2,a
	movx	a,@dptr
	inc	dptr
	mov	r3,a
	movx	a,@dptr
	inc	dptr
	mov	r4,a
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
00129$:
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
