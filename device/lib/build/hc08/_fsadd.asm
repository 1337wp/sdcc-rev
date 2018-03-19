;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:24 2018
;--------------------------------------------------------
	.module _fsadd
	.optsdcc -mhc08
	
	.area HOME (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT (CODE)
	.area GSFINAL (CODE)
	.area CSEG (CODE)
	.area XINIT
	.area CONST   (CODE)
	.area DSEG
	.area OSEG    (OVR)
	.area BSEG
	.area XSEG
	.area XISEG
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fsadd_PARM_2
	.globl ___fsadd_PARM_1
	.globl ___fsadd
;--------------------------------------------------------
;  ram data
;--------------------------------------------------------
	.area DSEG
;--------------------------------------------------------
; overlayable items in  ram 
;--------------------------------------------------------
	.area	OSEG    (OVR)
___fsadd_sloc0_1_0::
	.ds 4
___fsadd_sloc1_1_0::
	.ds 4
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG
;--------------------------------------------------------
; extended address mode data
;--------------------------------------------------------
	.area XSEG
___fsadd_PARM_1:
	.ds 4
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME (CODE)
	.area GSINIT (CODE)
	.area GSFINAL (CODE)
	.area GSINIT (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME (CODE)
	.area HOME (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function '__fsadd'
;------------------------------------------------------------
;a1                        Allocated with name '___fsadd_PARM_1'
;a2                        Allocated with name '___fsadd_PARM_2'
;mant1                     Allocated with name '___fsadd_mant1_1_1'
;mant2                     Allocated with name '___fsadd_mant2_1_1'
;fl1                       Allocated with name '___fsadd_fl1_1_1'
;fl2                       Allocated with name '___fsadd_fl2_1_1'
;exp1                      Allocated with name '___fsadd_exp1_1_1'
;exp2                      Allocated with name '___fsadd_exp2_1_1'
;sign                      Allocated with name '___fsadd_sign_1_1'
;sloc0                     Allocated with name '___fsadd_sloc0_1_0'
;sloc1                     Allocated with name '___fsadd_sloc1_1_0'
;------------------------------------------------------------
;_fsadd.c:160: float __fsadd (float a1, float a2)
;	-----------------------------------------
;	 function __fsadd
;	-----------------------------------------
___fsadd:
;_fsadd.c:165: volatile unsigned long sign = 0;
	clra
	sta	___fsadd_sign_1_1
	sta	(___fsadd_sign_1_1 + 1)
	sta	(___fsadd_sign_1_1 + 2)
	sta	(___fsadd_sign_1_1 + 3)
;_fsadd.c:167: fl1.f = a1;
	lda	___fsadd_PARM_1
	sta	___fsadd_fl1_1_1
	lda	(___fsadd_PARM_1 + 1)
	sta	(___fsadd_fl1_1_1 + 1)
	lda	(___fsadd_PARM_1 + 2)
	sta	(___fsadd_fl1_1_1 + 2)
	lda	(___fsadd_PARM_1 + 3)
	sta	(___fsadd_fl1_1_1 + 3)
;_fsadd.c:168: fl2.f = a2;
	lda	___fsadd_PARM_2
	sta	___fsadd_fl2_1_1
	lda	(___fsadd_PARM_2 + 1)
	sta	(___fsadd_fl2_1_1 + 1)
	lda	(___fsadd_PARM_2 + 2)
	sta	(___fsadd_fl2_1_1 + 2)
	lda	(___fsadd_PARM_2 + 3)
	sta	(___fsadd_fl2_1_1 + 3)
;_fsadd.c:171: if (!fl1.l)
	lda	___fsadd_fl1_1_1
	sta	*___fsadd_sloc0_1_0
	lda	(___fsadd_fl1_1_1 + 1)
	sta	*(___fsadd_sloc0_1_0 + 1)
	lda	(___fsadd_fl1_1_1 + 2)
	sta	*(___fsadd_sloc0_1_0 + 2)
	lda	(___fsadd_fl1_1_1 + 3)
	sta	*(___fsadd_sloc0_1_0 + 3)
	ora	*(___fsadd_sloc0_1_0 + 2)
	ora	*(___fsadd_sloc0_1_0 + 1)
	ora	*___fsadd_sloc0_1_0
	bne	00102$
00145$:
;_fsadd.c:172: return (fl2.f);
	lda	___fsadd_fl2_1_1
	sta	*___fsadd_sloc0_1_0
	lda	(___fsadd_fl2_1_1 + 1)
	sta	*(___fsadd_sloc0_1_0 + 1)
	lda	(___fsadd_fl2_1_1 + 2)
	sta	*(___fsadd_sloc0_1_0 + 2)
	lda	(___fsadd_fl2_1_1 + 3)
	sta	*(___fsadd_sloc0_1_0 + 3)
	mov	*___fsadd_sloc0_1_0,*__ret3
	mov	*(___fsadd_sloc0_1_0 + 1),*__ret2
	ldx	*(___fsadd_sloc0_1_0 + 2)
	lda	*(___fsadd_sloc0_1_0 + 3)
	rts
00102$:
;_fsadd.c:173: if (!fl2.l)
	lda	___fsadd_fl2_1_1
	sta	*___fsadd_sloc0_1_0
	lda	(___fsadd_fl2_1_1 + 1)
	sta	*(___fsadd_sloc0_1_0 + 1)
	lda	(___fsadd_fl2_1_1 + 2)
	sta	*(___fsadd_sloc0_1_0 + 2)
	lda	(___fsadd_fl2_1_1 + 3)
	sta	*(___fsadd_sloc0_1_0 + 3)
	ora	*(___fsadd_sloc0_1_0 + 2)
	ora	*(___fsadd_sloc0_1_0 + 1)
	ora	*___fsadd_sloc0_1_0
	bne	00104$
00146$:
;_fsadd.c:174: return (fl1.f);
	lda	___fsadd_fl1_1_1
	sta	*___fsadd_sloc0_1_0
	lda	(___fsadd_fl1_1_1 + 1)
	sta	*(___fsadd_sloc0_1_0 + 1)
	lda	(___fsadd_fl1_1_1 + 2)
	sta	*(___fsadd_sloc0_1_0 + 2)
	lda	(___fsadd_fl1_1_1 + 3)
	sta	*(___fsadd_sloc0_1_0 + 3)
	mov	*___fsadd_sloc0_1_0,*__ret3
	mov	*(___fsadd_sloc0_1_0 + 1),*__ret2
	ldx	*(___fsadd_sloc0_1_0 + 2)
	lda	*(___fsadd_sloc0_1_0 + 3)
	rts
00104$:
;_fsadd.c:176: exp1 = EXP (fl1.l);
	lda	___fsadd_fl1_1_1
	sta	*___fsadd_sloc0_1_0
	lda	(___fsadd_fl1_1_1 + 1)
	sta	*(___fsadd_sloc0_1_0 + 1)
	lda	(___fsadd_fl1_1_1 + 2)
	sta	*(___fsadd_sloc0_1_0 + 2)
	lda	(___fsadd_fl1_1_1 + 3)
	sta	*(___fsadd_sloc0_1_0 + 3)
	lda	*(___fsadd_sloc0_1_0 + 1)
	ldx	*___fsadd_sloc0_1_0
	lsla
	txa
	rola
	clrx
	rolx
	sta	*(___fsadd_sloc0_1_0 + 3)
	stx	*(___fsadd_sloc0_1_0 + 2)
	clr	*(___fsadd_sloc0_1_0 + 1)
	clr	*___fsadd_sloc0_1_0
	clr	*(___fsadd_sloc0_1_0 + 2)
	clr	*(___fsadd_sloc0_1_0 + 1)
	clr	*___fsadd_sloc0_1_0
	lda	*(___fsadd_sloc0_1_0 + 3)
	sta	(___fsadd_exp1_1_1 + 1)
	lda	*(___fsadd_sloc0_1_0 + 2)
	sta	___fsadd_exp1_1_1
;_fsadd.c:177: exp2 = EXP (fl2.l);
	lda	___fsadd_fl2_1_1
	sta	*___fsadd_sloc0_1_0
	lda	(___fsadd_fl2_1_1 + 1)
	sta	*(___fsadd_sloc0_1_0 + 1)
	lda	(___fsadd_fl2_1_1 + 2)
	sta	*(___fsadd_sloc0_1_0 + 2)
	lda	(___fsadd_fl2_1_1 + 3)
	sta	*(___fsadd_sloc0_1_0 + 3)
	lda	*(___fsadd_sloc0_1_0 + 1)
	ldx	*___fsadd_sloc0_1_0
	lsla
	txa
	rola
	clrx
	rolx
	sta	*(___fsadd_sloc0_1_0 + 3)
	stx	*(___fsadd_sloc0_1_0 + 2)
	clr	*(___fsadd_sloc0_1_0 + 1)
	clr	*___fsadd_sloc0_1_0
	clr	*(___fsadd_sloc0_1_0 + 2)
	clr	*(___fsadd_sloc0_1_0 + 1)
	clr	*___fsadd_sloc0_1_0
	lda	*(___fsadd_sloc0_1_0 + 3)
	sta	(___fsadd_exp2_1_1 + 1)
	lda	*(___fsadd_sloc0_1_0 + 2)
	sta	___fsadd_exp2_1_1
;_fsadd.c:179: if (exp1 > exp2 + 25)
	lda	(___fsadd_exp2_1_1 + 1)
	add	#0x19
	sta	*(___fsadd_sloc0_1_0 + 1)
	lda	___fsadd_exp2_1_1
	adc	#0x00
	sta	*___fsadd_sloc0_1_0
	lda	*(___fsadd_sloc0_1_0 + 1)
	sub	(___fsadd_exp1_1_1 + 1)
	lda	*___fsadd_sloc0_1_0
	sbc	___fsadd_exp1_1_1
	bge	00106$
00147$:
;_fsadd.c:180: return (fl1.f);
	lda	___fsadd_fl1_1_1
	sta	*___fsadd_sloc0_1_0
	lda	(___fsadd_fl1_1_1 + 1)
	sta	*(___fsadd_sloc0_1_0 + 1)
	lda	(___fsadd_fl1_1_1 + 2)
	sta	*(___fsadd_sloc0_1_0 + 2)
	lda	(___fsadd_fl1_1_1 + 3)
	sta	*(___fsadd_sloc0_1_0 + 3)
	mov	*___fsadd_sloc0_1_0,*__ret3
	mov	*(___fsadd_sloc0_1_0 + 1),*__ret2
	ldx	*(___fsadd_sloc0_1_0 + 2)
	lda	*(___fsadd_sloc0_1_0 + 3)
	rts
00106$:
;_fsadd.c:181: if (exp2 > exp1 + 25)
	lda	(___fsadd_exp1_1_1 + 1)
	add	#0x19
	sta	*(___fsadd_sloc0_1_0 + 1)
	lda	___fsadd_exp1_1_1
	adc	#0x00
	sta	*___fsadd_sloc0_1_0
	lda	*(___fsadd_sloc0_1_0 + 1)
	sub	(___fsadd_exp2_1_1 + 1)
	lda	*___fsadd_sloc0_1_0
	sbc	___fsadd_exp2_1_1
	bge	00108$
00148$:
;_fsadd.c:182: return (fl2.f);
	lda	___fsadd_fl2_1_1
	sta	*___fsadd_sloc0_1_0
	lda	(___fsadd_fl2_1_1 + 1)
	sta	*(___fsadd_sloc0_1_0 + 1)
	lda	(___fsadd_fl2_1_1 + 2)
	sta	*(___fsadd_sloc0_1_0 + 2)
	lda	(___fsadd_fl2_1_1 + 3)
	sta	*(___fsadd_sloc0_1_0 + 3)
	mov	*___fsadd_sloc0_1_0,*__ret3
	mov	*(___fsadd_sloc0_1_0 + 1),*__ret2
	ldx	*(___fsadd_sloc0_1_0 + 2)
	lda	*(___fsadd_sloc0_1_0 + 3)
	rts
00108$:
;_fsadd.c:184: mant1 = MANT (fl1.l);
	lda	___fsadd_fl1_1_1
	sta	*___fsadd_sloc0_1_0
	lda	(___fsadd_fl1_1_1 + 1)
	sta	*(___fsadd_sloc0_1_0 + 1)
	lda	(___fsadd_fl1_1_1 + 2)
	sta	*(___fsadd_sloc0_1_0 + 2)
	lda	(___fsadd_fl1_1_1 + 3)
	sta	*(___fsadd_sloc0_1_0 + 3)
	lda	*(___fsadd_sloc0_1_0 + 1)
	and	#0x7F
	sta	*(___fsadd_sloc0_1_0 + 1)
	clr	*___fsadd_sloc0_1_0
	lda	*(___fsadd_sloc0_1_0 + 3)
	sta	(___fsadd_mant1_1_1 + 3)
	lda	*(___fsadd_sloc0_1_0 + 2)
	sta	(___fsadd_mant1_1_1 + 2)
	lda	*(___fsadd_sloc0_1_0 + 1)
	ora	#0x80
	sta	(___fsadd_mant1_1_1 + 1)
	lda	*___fsadd_sloc0_1_0
	sta	___fsadd_mant1_1_1
;_fsadd.c:185: mant2 = MANT (fl2.l);
	lda	___fsadd_fl2_1_1
	sta	*___fsadd_sloc0_1_0
	lda	(___fsadd_fl2_1_1 + 1)
	sta	*(___fsadd_sloc0_1_0 + 1)
	lda	(___fsadd_fl2_1_1 + 2)
	sta	*(___fsadd_sloc0_1_0 + 2)
	lda	(___fsadd_fl2_1_1 + 3)
	sta	*(___fsadd_sloc0_1_0 + 3)
	lda	*(___fsadd_sloc0_1_0 + 1)
	and	#0x7F
	sta	*(___fsadd_sloc0_1_0 + 1)
	clr	*___fsadd_sloc0_1_0
	lda	*(___fsadd_sloc0_1_0 + 3)
	sta	(___fsadd_mant2_1_1 + 3)
	lda	*(___fsadd_sloc0_1_0 + 2)
	sta	(___fsadd_mant2_1_1 + 2)
	lda	*(___fsadd_sloc0_1_0 + 1)
	ora	#0x80
	sta	(___fsadd_mant2_1_1 + 1)
	lda	*___fsadd_sloc0_1_0
	sta	___fsadd_mant2_1_1
;_fsadd.c:187: if (SIGN (fl1.l))
	lda	___fsadd_fl1_1_1
	sta	*___fsadd_sloc0_1_0
	lda	(___fsadd_fl1_1_1 + 1)
	sta	*(___fsadd_sloc0_1_0 + 1)
	lda	(___fsadd_fl1_1_1 + 2)
	sta	*(___fsadd_sloc0_1_0 + 2)
	lda	(___fsadd_fl1_1_1 + 3)
	sta	*(___fsadd_sloc0_1_0 + 3)
	lda	*___fsadd_sloc0_1_0
	rola
	clra
	rola
	tsta
	beq	00110$
00149$:
;_fsadd.c:188: mant1 = -mant1;
	clra
	sub	(___fsadd_mant1_1_1 + 3)
	sta	(___fsadd_mant1_1_1 + 3)
	clra
	sbc	(___fsadd_mant1_1_1 + 2)
	sta	(___fsadd_mant1_1_1 + 2)
	clra
	sbc	(___fsadd_mant1_1_1 + 1)
	sta	(___fsadd_mant1_1_1 + 1)
	clra
	sbc	___fsadd_mant1_1_1
	sta	___fsadd_mant1_1_1
00110$:
;_fsadd.c:189: if (SIGN (fl2.l))
	lda	___fsadd_fl2_1_1
	sta	*___fsadd_sloc0_1_0
	lda	(___fsadd_fl2_1_1 + 1)
	sta	*(___fsadd_sloc0_1_0 + 1)
	lda	(___fsadd_fl2_1_1 + 2)
	sta	*(___fsadd_sloc0_1_0 + 2)
	lda	(___fsadd_fl2_1_1 + 3)
	sta	*(___fsadd_sloc0_1_0 + 3)
	lda	*___fsadd_sloc0_1_0
	rola
	clra
	rola
	tsta
	beq	00112$
00150$:
;_fsadd.c:190: mant2 = -mant2;
	clra
	sub	(___fsadd_mant2_1_1 + 3)
	sta	(___fsadd_mant2_1_1 + 3)
	clra
	sbc	(___fsadd_mant2_1_1 + 2)
	sta	(___fsadd_mant2_1_1 + 2)
	clra
	sbc	(___fsadd_mant2_1_1 + 1)
	sta	(___fsadd_mant2_1_1 + 1)
	clra
	sbc	___fsadd_mant2_1_1
	sta	___fsadd_mant2_1_1
00112$:
;_fsadd.c:192: if (exp1 > exp2)
	lda	(___fsadd_exp2_1_1 + 1)
	sub	(___fsadd_exp1_1_1 + 1)
	lda	___fsadd_exp2_1_1
	sbc	___fsadd_exp1_1_1
	bge	00114$
00151$:
;_fsadd.c:194: mant2 >>= exp1 - exp2;
	lda	(___fsadd_exp1_1_1 + 1)
	sub	(___fsadd_exp2_1_1 + 1)
	sta	*(___fsadd_sloc0_1_0 + 1)
	lda	___fsadd_exp1_1_1
	sbc	___fsadd_exp2_1_1
	sta	*___fsadd_sloc0_1_0
	lda	(___fsadd_mant2_1_1 + 3)
	psha
	lda	(___fsadd_mant2_1_1 + 2)
	psha
	lda	(___fsadd_mant2_1_1 + 1)
	psha
	lda	___fsadd_mant2_1_1
	psha
	ldx	*(___fsadd_sloc0_1_0 + 1)
	beq	00153$
00152$:
	asr	1,s
	ror	2,s
	ror	3,s
	ror	4,s
	decx
	bne	00152$
00153$:
	lda	4,s
	sta	(___fsadd_mant2_1_1 + 3)
	lda	3,s
	sta	(___fsadd_mant2_1_1 + 2)
	lda	2,s
	sta	(___fsadd_mant2_1_1 + 1)
	lda	1,s
	sta	___fsadd_mant2_1_1
	ais	#4
	bra	00115$
00114$:
;_fsadd.c:198: mant1 >>= exp2 - exp1;
	lda	(___fsadd_exp2_1_1 + 1)
	sub	(___fsadd_exp1_1_1 + 1)
	sta	*(___fsadd_sloc0_1_0 + 1)
	lda	___fsadd_exp2_1_1
	sbc	___fsadd_exp1_1_1
	sta	*___fsadd_sloc0_1_0
	lda	(___fsadd_mant1_1_1 + 3)
	psha
	lda	(___fsadd_mant1_1_1 + 2)
	psha
	lda	(___fsadd_mant1_1_1 + 1)
	psha
	lda	___fsadd_mant1_1_1
	psha
	ldx	*(___fsadd_sloc0_1_0 + 1)
	beq	00155$
00154$:
	asr	1,s
	ror	2,s
	ror	3,s
	ror	4,s
	decx
	bne	00154$
00155$:
	lda	4,s
	sta	(___fsadd_mant1_1_1 + 3)
	lda	3,s
	sta	(___fsadd_mant1_1_1 + 2)
	lda	2,s
	sta	(___fsadd_mant1_1_1 + 1)
	lda	1,s
	sta	___fsadd_mant1_1_1
	ais	#4
;_fsadd.c:199: exp1 = exp2;
	lda	___fsadd_exp2_1_1
	sta	___fsadd_exp1_1_1
	lda	(___fsadd_exp2_1_1 + 1)
	sta	(___fsadd_exp1_1_1 + 1)
00115$:
;_fsadd.c:201: mant1 += mant2;
	lda	(___fsadd_mant1_1_1 + 3)
	add	(___fsadd_mant2_1_1 + 3)
	sta	(___fsadd_mant1_1_1 + 3)
	lda	(___fsadd_mant1_1_1 + 2)
	adc	(___fsadd_mant2_1_1 + 2)
	sta	(___fsadd_mant1_1_1 + 2)
	lda	(___fsadd_mant1_1_1 + 1)
	adc	(___fsadd_mant2_1_1 + 1)
	sta	(___fsadd_mant1_1_1 + 1)
	lda	___fsadd_mant1_1_1
	adc	___fsadd_mant2_1_1
	sta	___fsadd_mant1_1_1
;_fsadd.c:203: if (mant1 < 0)
	lda	(___fsadd_mant1_1_1 + 3)
	sub	#0x00
	lda	(___fsadd_mant1_1_1 + 2)
	sbc	#0x00
	lda	(___fsadd_mant1_1_1 + 1)
	sbc	#0x00
	lda	___fsadd_mant1_1_1
	sbc	#0x00
	bge	00119$
00156$:
;_fsadd.c:205: mant1 = -mant1;
	clra
	sub	(___fsadd_mant1_1_1 + 3)
	sta	(___fsadd_mant1_1_1 + 3)
	clra
	sbc	(___fsadd_mant1_1_1 + 2)
	sta	(___fsadd_mant1_1_1 + 2)
	clra
	sbc	(___fsadd_mant1_1_1 + 1)
	sta	(___fsadd_mant1_1_1 + 1)
	clra
	sbc	___fsadd_mant1_1_1
	sta	___fsadd_mant1_1_1
;_fsadd.c:206: sign = SIGNBIT;
	lda	#0x80
	sta	___fsadd_sign_1_1
	clra
	sta	(___fsadd_sign_1_1 + 1)
	sta	(___fsadd_sign_1_1 + 2)
	sta	(___fsadd_sign_1_1 + 3)
	bra	00121$
00119$:
;_fsadd.c:208: else if (!mant1)
	lda	(___fsadd_mant1_1_1 + 3)
	ora	(___fsadd_mant1_1_1 + 2)
	ora	(___fsadd_mant1_1_1 + 1)
	ora	___fsadd_mant1_1_1
	bne	00121$
00157$:
;_fsadd.c:209: return (0);
	clr	*__ret3
	clr	*__ret2
	clrx
	clra
	rts
;_fsadd.c:212: while (mant1<HIDDEN) {
00121$:
	lda	___fsadd_mant1_1_1
	sta	*___fsadd_sloc0_1_0
	lda	(___fsadd_mant1_1_1 + 1)
	sta	*(___fsadd_sloc0_1_0 + 1)
	lda	(___fsadd_mant1_1_1 + 2)
	sta	*(___fsadd_sloc0_1_0 + 2)
	lda	(___fsadd_mant1_1_1 + 3)
	sta	*(___fsadd_sloc0_1_0 + 3)
	lda	*(___fsadd_sloc0_1_0 + 1)
	sub	#0x80
	lda	*___fsadd_sloc0_1_0
	sbc	#0x00
	bcc	00126$
00158$:
;_fsadd.c:213: mant1 <<= 1;
	lda	(___fsadd_mant1_1_1 + 3)
	ldx	(___fsadd_mant1_1_1 + 2)
	lsla
	rolx
	sta	(___fsadd_mant1_1_1 + 3)
	stx	(___fsadd_mant1_1_1 + 2)
	lda	(___fsadd_mant1_1_1 + 1)
	ldx	___fsadd_mant1_1_1
	rola
	rolx
	sta	(___fsadd_mant1_1_1 + 1)
	stx	___fsadd_mant1_1_1
;_fsadd.c:214: exp1--;
	lda	(___fsadd_exp1_1_1 + 1)
	sub	#0x01
	sta	(___fsadd_exp1_1_1 + 1)
	lda	___fsadd_exp1_1_1
	sbc	#0x00
	sta	___fsadd_exp1_1_1
	bra	00121$
;_fsadd.c:218: while (mant1 & 0xff000000) {
00126$:
	lda	___fsadd_mant1_1_1
	sta	*___fsadd_sloc0_1_0
	lda	(___fsadd_mant1_1_1 + 1)
	sta	*(___fsadd_sloc0_1_0 + 1)
	lda	(___fsadd_mant1_1_1 + 2)
	sta	*(___fsadd_sloc0_1_0 + 2)
	lda	(___fsadd_mant1_1_1 + 3)
	sta	*(___fsadd_sloc0_1_0 + 3)
	tst	*___fsadd_sloc0_1_0
	bne	00159$
	jmp	00128$
00159$:
;_fsadd.c:219: if (mant1&1)
	clra
	psha
	lda	(___fsadd_mant1_1_1 + 3)
	and	#0x01
	ora	1,s
	sta	1,s
	lda	(___fsadd_mant1_1_1 + 2)
	and	#0x00
	ora	1,s
	sta	1,s
	lda	(___fsadd_mant1_1_1 + 1)
	and	#0x00
	ora	1,s
	sta	1,s
	lda	___fsadd_mant1_1_1
	and	#0x00
	ora	1,s
	sta	1,s
	pula
	tsta
	beq	00125$
00160$:
;_fsadd.c:220: mant1 += 2;
	lda	(___fsadd_mant1_1_1 + 3)
	add	#0x02
	sta	(___fsadd_mant1_1_1 + 3)
	bcc	00161$
	lda	(___fsadd_mant1_1_1 + 2)
	inca
	sta	(___fsadd_mant1_1_1 + 2)
	bne	00161$
	lda	(___fsadd_mant1_1_1 + 1)
	inca
	sta	(___fsadd_mant1_1_1 + 1)
	bne	00161$
	lda	___fsadd_mant1_1_1
	inca
	sta	___fsadd_mant1_1_1
00161$:
00125$:
;_fsadd.c:221: mant1 >>= 1 ;
	lda	(___fsadd_mant1_1_1 + 1)
	ldx	___fsadd_mant1_1_1
	asrx
	rora
	sta	(___fsadd_mant1_1_1 + 1)
	stx	___fsadd_mant1_1_1
	lda	(___fsadd_mant1_1_1 + 3)
	ldx	(___fsadd_mant1_1_1 + 2)
	rorx
	rora
	sta	(___fsadd_mant1_1_1 + 3)
	stx	(___fsadd_mant1_1_1 + 2)
;_fsadd.c:222: exp1++;
	lda	(___fsadd_exp1_1_1 + 1)
	inca
	sta	(___fsadd_exp1_1_1 + 1)
	bne	00162$
	lda	___fsadd_exp1_1_1
	inca
	sta	___fsadd_exp1_1_1
00162$:
	jmp	00126$
00128$:
;_fsadd.c:226: mant1 &= ~HIDDEN;
	lda	___fsadd_mant1_1_1
	sta	*___fsadd_sloc0_1_0
	lda	(___fsadd_mant1_1_1 + 1)
	sta	*(___fsadd_sloc0_1_0 + 1)
	lda	(___fsadd_mant1_1_1 + 2)
	sta	*(___fsadd_sloc0_1_0 + 2)
	lda	(___fsadd_mant1_1_1 + 3)
	sta	*(___fsadd_sloc0_1_0 + 3)
	sta	(___fsadd_mant1_1_1 + 3)
	lda	*(___fsadd_sloc0_1_0 + 2)
	sta	(___fsadd_mant1_1_1 + 2)
	lda	*(___fsadd_sloc0_1_0 + 1)
	and	#0x7F
	sta	(___fsadd_mant1_1_1 + 1)
	lda	*___fsadd_sloc0_1_0
	sta	___fsadd_mant1_1_1
;_fsadd.c:229: fl1.l = PACK (sign, (unsigned long) exp1, mant1);
	lda	(___fsadd_exp1_1_1 + 1)
	sta	*(___fsadd_sloc0_1_0 + 3)
	lda	___fsadd_exp1_1_1
	sta	*(___fsadd_sloc0_1_0 + 2)
	lda	___fsadd_exp1_1_1
	rola	
	clra	
	sbc	#0x00
	sta	*(___fsadd_sloc0_1_0 + 1)
	sta	*___fsadd_sloc0_1_0
	lda	*(___fsadd_sloc0_1_0 + 3)
	ldx	*(___fsadd_sloc0_1_0 + 2)
	lsrx
	rora
	tax
	clra
	rora
	sta	*(___fsadd_sloc0_1_0 + 1)
	stx	*___fsadd_sloc0_1_0
	clr	*(___fsadd_sloc0_1_0 + 3)
	clr	*(___fsadd_sloc0_1_0 + 2)
	lda	(___fsadd_sign_1_1 + 3)
	ora	*(___fsadd_sloc0_1_0 + 3)
	sta	*(___fsadd_sloc0_1_0 + 3)
	lda	(___fsadd_sign_1_1 + 2)
	ora	*(___fsadd_sloc0_1_0 + 2)
	sta	*(___fsadd_sloc0_1_0 + 2)
	lda	(___fsadd_sign_1_1 + 1)
	ora	*(___fsadd_sloc0_1_0 + 1)
	sta	*(___fsadd_sloc0_1_0 + 1)
	lda	___fsadd_sign_1_1
	ora	*___fsadd_sloc0_1_0
	sta	*___fsadd_sloc0_1_0
	lda	___fsadd_mant1_1_1
	sta	*___fsadd_sloc1_1_0
	lda	(___fsadd_mant1_1_1 + 1)
	sta	*(___fsadd_sloc1_1_0 + 1)
	lda	(___fsadd_mant1_1_1 + 2)
	sta	*(___fsadd_sloc1_1_0 + 2)
	lda	(___fsadd_mant1_1_1 + 3)
	sta	*(___fsadd_sloc1_1_0 + 3)
	lda	*(___fsadd_sloc0_1_0 + 3)
	ora	*(___fsadd_sloc1_1_0 + 3)
	sta	*(___fsadd_sloc1_1_0 + 3)
	lda	*(___fsadd_sloc0_1_0 + 2)
	ora	*(___fsadd_sloc1_1_0 + 2)
	sta	*(___fsadd_sloc1_1_0 + 2)
	lda	*(___fsadd_sloc0_1_0 + 1)
	ora	*(___fsadd_sloc1_1_0 + 1)
	sta	*(___fsadd_sloc1_1_0 + 1)
	lda	*___fsadd_sloc0_1_0
	ora	*___fsadd_sloc1_1_0
	sta	*___fsadd_sloc1_1_0
	sta	___fsadd_fl1_1_1
	lda	*(___fsadd_sloc1_1_0 + 1)
	sta	(___fsadd_fl1_1_1 + 1)
	lda	*(___fsadd_sloc1_1_0 + 2)
	sta	(___fsadd_fl1_1_1 + 2)
	lda	*(___fsadd_sloc1_1_0 + 3)
	sta	(___fsadd_fl1_1_1 + 3)
;_fsadd.c:231: return (fl1.f);
	lda	___fsadd_fl1_1_1
	sta	*___fsadd_sloc1_1_0
	lda	(___fsadd_fl1_1_1 + 1)
	sta	*(___fsadd_sloc1_1_0 + 1)
	lda	(___fsadd_fl1_1_1 + 2)
	sta	*(___fsadd_sloc1_1_0 + 2)
	lda	(___fsadd_fl1_1_1 + 3)
	sta	*(___fsadd_sloc1_1_0 + 3)
	mov	*___fsadd_sloc1_1_0,*__ret3
	mov	*(___fsadd_sloc1_1_0 + 1),*__ret2
	ldx	*(___fsadd_sloc1_1_0 + 2)
	lda	*(___fsadd_sloc1_1_0 + 3)
00129$:
	rts
	.area CSEG (CODE)
	.area CONST   (CODE)
	.area XINIT
	.area CABS    (ABS,CODE)
