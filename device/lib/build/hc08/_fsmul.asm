;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:24 2018
;--------------------------------------------------------
	.module _fsmul
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
	.globl ___fsmul_PARM_2
	.globl ___fsmul_PARM_1
	.globl ___fsmul
;--------------------------------------------------------
;  ram data
;--------------------------------------------------------
	.area DSEG
___fsmul_sloc0_1_0:
	.ds 4
___fsmul_sloc1_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in  ram 
;--------------------------------------------------------
	.area OSEG    (OVR)
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
___fsmul_PARM_1:
	.ds 4
___fsmul_PARM_2:
	.ds 4
___fsmul_fl1_1_1:
	.ds 4
___fsmul_fl2_1_1:
	.ds 4
___fsmul_result_1_1:
	.ds 4
___fsmul_exp_1_1:
	.ds 2
___fsmul_sign_1_1:
	.ds 1
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
;Allocation info for local variables in function '__fsmul'
;------------------------------------------------------------
;sloc0                     Allocated with name '___fsmul_sloc0_1_0'
;sloc1                     Allocated with name '___fsmul_sloc1_1_0'
;a1                        Allocated with name '___fsmul_PARM_1'
;a2                        Allocated with name '___fsmul_PARM_2'
;fl1                       Allocated with name '___fsmul_fl1_1_1'
;fl2                       Allocated with name '___fsmul_fl2_1_1'
;result                    Allocated with name '___fsmul_result_1_1'
;exp                       Allocated with name '___fsmul_exp_1_1'
;sign                      Allocated with name '___fsmul_sign_1_1'
;------------------------------------------------------------
;_fsmul.c:231: float __fsmul (float a1, float a2) {
;	-----------------------------------------
;	 function __fsmul
;	-----------------------------------------
___fsmul:
;_fsmul.c:237: fl1.f = a1;
	lda	___fsmul_PARM_1
	sta	___fsmul_fl1_1_1
	lda	(___fsmul_PARM_1 + 1)
	sta	(___fsmul_fl1_1_1 + 1)
	lda	(___fsmul_PARM_1 + 2)
	sta	(___fsmul_fl1_1_1 + 2)
	lda	(___fsmul_PARM_1 + 3)
	sta	(___fsmul_fl1_1_1 + 3)
;_fsmul.c:238: fl2.f = a2;
	lda	___fsmul_PARM_2
	sta	___fsmul_fl2_1_1
	lda	(___fsmul_PARM_2 + 1)
	sta	(___fsmul_fl2_1_1 + 1)
	lda	(___fsmul_PARM_2 + 2)
	sta	(___fsmul_fl2_1_1 + 2)
	lda	(___fsmul_PARM_2 + 3)
	sta	(___fsmul_fl2_1_1 + 3)
;_fsmul.c:240: if (!fl1.l || !fl2.l)
	lda	___fsmul_fl1_1_1
	sta	*___fsmul_sloc0_1_0
	lda	(___fsmul_fl1_1_1 + 1)
	sta	*(___fsmul_sloc0_1_0 + 1)
	lda	(___fsmul_fl1_1_1 + 2)
	sta	*(___fsmul_sloc0_1_0 + 2)
	lda	(___fsmul_fl1_1_1 + 3)
	sta	*(___fsmul_sloc0_1_0 + 3)
	ora	*(___fsmul_sloc0_1_0 + 2)
	ora	*(___fsmul_sloc0_1_0 + 1)
	ora	*___fsmul_sloc0_1_0
	beq	00101$
00125$:
	lda	___fsmul_fl2_1_1
	sta	*___fsmul_sloc0_1_0
	lda	(___fsmul_fl2_1_1 + 1)
	sta	*(___fsmul_sloc0_1_0 + 1)
	lda	(___fsmul_fl2_1_1 + 2)
	sta	*(___fsmul_sloc0_1_0 + 2)
	lda	(___fsmul_fl2_1_1 + 3)
	sta	*(___fsmul_sloc0_1_0 + 3)
	ora	*(___fsmul_sloc0_1_0 + 2)
	ora	*(___fsmul_sloc0_1_0 + 1)
	ora	*___fsmul_sloc0_1_0
	bne	00102$
00126$:
00101$:
;_fsmul.c:241: return (0);
	clr	*__ret3
	clr	*__ret2
	clrx
	clra
	rts
00102$:
;_fsmul.c:244: sign = SIGN (fl1.l) ^ SIGN (fl2.l);
	lda	___fsmul_fl1_1_1
	sta	*___fsmul_sloc0_1_0
	lda	(___fsmul_fl1_1_1 + 1)
	sta	*(___fsmul_sloc0_1_0 + 1)
	lda	(___fsmul_fl1_1_1 + 2)
	sta	*(___fsmul_sloc0_1_0 + 2)
	lda	(___fsmul_fl1_1_1 + 3)
	sta	*(___fsmul_sloc0_1_0 + 3)
	lda	*___fsmul_sloc0_1_0
	rola
	clra
	rola
	sta	*___fsmul_sloc0_1_0
	lda	___fsmul_fl2_1_1
	sta	*___fsmul_sloc1_1_0
	lda	(___fsmul_fl2_1_1 + 1)
	sta	*(___fsmul_sloc1_1_0 + 1)
	lda	(___fsmul_fl2_1_1 + 2)
	sta	*(___fsmul_sloc1_1_0 + 2)
	lda	(___fsmul_fl2_1_1 + 3)
	sta	*(___fsmul_sloc1_1_0 + 3)
	lda	*___fsmul_sloc1_1_0
	rola
	clra
	rola
	eor	*___fsmul_sloc0_1_0
	sta	___fsmul_sign_1_1
;_fsmul.c:245: exp = EXP (fl1.l) - EXCESS;
	lda	___fsmul_fl1_1_1
	sta	*___fsmul_sloc1_1_0
	lda	(___fsmul_fl1_1_1 + 1)
	sta	*(___fsmul_sloc1_1_0 + 1)
	lda	(___fsmul_fl1_1_1 + 2)
	sta	*(___fsmul_sloc1_1_0 + 2)
	lda	(___fsmul_fl1_1_1 + 3)
	sta	*(___fsmul_sloc1_1_0 + 3)
	lda	*(___fsmul_sloc1_1_0 + 1)
	ldx	*___fsmul_sloc1_1_0
	lsla
	txa
	rola
	clrx
	rolx
	sta	*(___fsmul_sloc1_1_0 + 3)
	stx	*(___fsmul_sloc1_1_0 + 2)
	clr	*(___fsmul_sloc1_1_0 + 1)
	clr	*___fsmul_sloc1_1_0
	clr	*(___fsmul_sloc1_1_0 + 2)
	clr	*(___fsmul_sloc1_1_0 + 1)
	clr	*___fsmul_sloc1_1_0
	lda	*(___fsmul_sloc1_1_0 + 3)
	sub	#0x7E
	sta	*(___fsmul_sloc1_1_0 + 3)
	lda	*(___fsmul_sloc1_1_0 + 2)
	sbc	#0x00
	sta	*(___fsmul_sloc1_1_0 + 2)
	lda	*(___fsmul_sloc1_1_0 + 1)
	sbc	#0x00
	sta	*(___fsmul_sloc1_1_0 + 1)
	lda	*___fsmul_sloc1_1_0
	sbc	#0x00
	sta	*___fsmul_sloc1_1_0
	lda	*(___fsmul_sloc1_1_0 + 3)
	sta	(___fsmul_exp_1_1 + 1)
	lda	*(___fsmul_sloc1_1_0 + 2)
	sta	___fsmul_exp_1_1
;_fsmul.c:246: exp += EXP (fl2.l);
	lda	___fsmul_fl2_1_1
	sta	*___fsmul_sloc1_1_0
	lda	(___fsmul_fl2_1_1 + 1)
	sta	*(___fsmul_sloc1_1_0 + 1)
	lda	(___fsmul_fl2_1_1 + 2)
	sta	*(___fsmul_sloc1_1_0 + 2)
	lda	(___fsmul_fl2_1_1 + 3)
	sta	*(___fsmul_sloc1_1_0 + 3)
	lda	*(___fsmul_sloc1_1_0 + 1)
	ldx	*___fsmul_sloc1_1_0
	lsla
	txa
	rola
	clrx
	rolx
	sta	*(___fsmul_sloc1_1_0 + 3)
	stx	*(___fsmul_sloc1_1_0 + 2)
	clr	*(___fsmul_sloc1_1_0 + 1)
	clr	*___fsmul_sloc1_1_0
	clr	*(___fsmul_sloc1_1_0 + 2)
	clr	*(___fsmul_sloc1_1_0 + 1)
	clr	*___fsmul_sloc1_1_0
	lda	(___fsmul_exp_1_1 + 1)
	sta	*(___fsmul_sloc0_1_0 + 3)
	lda	___fsmul_exp_1_1
	sta	*(___fsmul_sloc0_1_0 + 2)
	lda	___fsmul_exp_1_1
	rola	
	clra	
	sbc	#0x00
	sta	*(___fsmul_sloc0_1_0 + 1)
	sta	*___fsmul_sloc0_1_0
	lda	*(___fsmul_sloc0_1_0 + 3)
	add	*(___fsmul_sloc1_1_0 + 3)
	sta	*(___fsmul_sloc1_1_0 + 3)
	lda	*(___fsmul_sloc0_1_0 + 2)
	adc	*(___fsmul_sloc1_1_0 + 2)
	sta	*(___fsmul_sloc1_1_0 + 2)
	lda	*(___fsmul_sloc0_1_0 + 1)
	adc	*(___fsmul_sloc1_1_0 + 1)
	sta	*(___fsmul_sloc1_1_0 + 1)
	lda	*___fsmul_sloc0_1_0
	adc	*___fsmul_sloc1_1_0
	sta	*___fsmul_sloc1_1_0
	lda	*(___fsmul_sloc1_1_0 + 3)
	sta	(___fsmul_exp_1_1 + 1)
	lda	*(___fsmul_sloc1_1_0 + 2)
	sta	___fsmul_exp_1_1
;_fsmul.c:248: fl1.l = MANT (fl1.l);
	lda	___fsmul_fl1_1_1
	sta	*___fsmul_sloc1_1_0
	lda	(___fsmul_fl1_1_1 + 1)
	sta	*(___fsmul_sloc1_1_0 + 1)
	lda	(___fsmul_fl1_1_1 + 2)
	sta	*(___fsmul_sloc1_1_0 + 2)
	lda	(___fsmul_fl1_1_1 + 3)
	sta	*(___fsmul_sloc1_1_0 + 3)
	lda	*(___fsmul_sloc1_1_0 + 1)
	and	#0x7F
	sta	*(___fsmul_sloc1_1_0 + 1)
	clr	*___fsmul_sloc1_1_0
	bset	#7,*(___fsmul_sloc1_1_0 + 1)
	lda	*___fsmul_sloc1_1_0
	sta	___fsmul_fl1_1_1
	lda	*(___fsmul_sloc1_1_0 + 1)
	sta	(___fsmul_fl1_1_1 + 1)
	lda	*(___fsmul_sloc1_1_0 + 2)
	sta	(___fsmul_fl1_1_1 + 2)
	lda	*(___fsmul_sloc1_1_0 + 3)
	sta	(___fsmul_fl1_1_1 + 3)
;_fsmul.c:249: fl2.l = MANT (fl2.l);
	lda	___fsmul_fl2_1_1
	sta	*___fsmul_sloc1_1_0
	lda	(___fsmul_fl2_1_1 + 1)
	sta	*(___fsmul_sloc1_1_0 + 1)
	lda	(___fsmul_fl2_1_1 + 2)
	sta	*(___fsmul_sloc1_1_0 + 2)
	lda	(___fsmul_fl2_1_1 + 3)
	sta	*(___fsmul_sloc1_1_0 + 3)
	lda	*(___fsmul_sloc1_1_0 + 1)
	and	#0x7F
	sta	*(___fsmul_sloc1_1_0 + 1)
	clr	*___fsmul_sloc1_1_0
	bset	#7,*(___fsmul_sloc1_1_0 + 1)
	lda	*___fsmul_sloc1_1_0
	sta	___fsmul_fl2_1_1
	lda	*(___fsmul_sloc1_1_0 + 1)
	sta	(___fsmul_fl2_1_1 + 1)
	lda	*(___fsmul_sloc1_1_0 + 2)
	sta	(___fsmul_fl2_1_1 + 2)
	lda	*(___fsmul_sloc1_1_0 + 3)
	sta	(___fsmul_fl2_1_1 + 3)
;_fsmul.c:252: result = (fl1.l >> 8) * (fl2.l >> 8);
	lda	___fsmul_fl1_1_1
	sta	*___fsmul_sloc1_1_0
	lda	(___fsmul_fl1_1_1 + 1)
	sta	*(___fsmul_sloc1_1_0 + 1)
	lda	(___fsmul_fl1_1_1 + 2)
	sta	*(___fsmul_sloc1_1_0 + 2)
	lda	(___fsmul_fl1_1_1 + 3)
	sta	*(___fsmul_sloc1_1_0 + 3)
	lda	*(___fsmul_sloc1_1_0 + 2)
	sta	(__mullong_PARM_1 + 3)
	lda	*(___fsmul_sloc1_1_0 + 1)
	sta	(__mullong_PARM_1 + 2)
	lda	*___fsmul_sloc1_1_0
	sta	(__mullong_PARM_1 + 1)
	rola
	clra
	sbc	#0
	sta	__mullong_PARM_1
	lda	___fsmul_fl2_1_1
	sta	*___fsmul_sloc1_1_0
	lda	(___fsmul_fl2_1_1 + 1)
	sta	*(___fsmul_sloc1_1_0 + 1)
	lda	(___fsmul_fl2_1_1 + 2)
	sta	*(___fsmul_sloc1_1_0 + 2)
	lda	(___fsmul_fl2_1_1 + 3)
	sta	*(___fsmul_sloc1_1_0 + 3)
	lda	*(___fsmul_sloc1_1_0 + 2)
	sta	(__mullong_PARM_2 + 3)
	lda	*(___fsmul_sloc1_1_0 + 1)
	sta	(__mullong_PARM_2 + 2)
	lda	*___fsmul_sloc1_1_0
	sta	(__mullong_PARM_2 + 1)
	rola
	clra
	sbc	#0
	sta	__mullong_PARM_2
	jsr	__mullong
	sta	(___fsmul_result_1_1 + 3)
	stx	(___fsmul_result_1_1 + 2)
	lda	*__ret2
	sta	(___fsmul_result_1_1 + 1)
	lda	*__ret3
	sta	___fsmul_result_1_1
;_fsmul.c:253: result += ((fl1.l & (unsigned long) 0xFF) * (fl2.l >> 8)) >> 8;
	lda	___fsmul_fl1_1_1
	sta	*___fsmul_sloc1_1_0
	lda	(___fsmul_fl1_1_1 + 1)
	sta	*(___fsmul_sloc1_1_0 + 1)
	lda	(___fsmul_fl1_1_1 + 2)
	sta	*(___fsmul_sloc1_1_0 + 2)
	lda	(___fsmul_fl1_1_1 + 3)
	sta	*(___fsmul_sloc1_1_0 + 3)
	sta	(__mullong_PARM_1 + 3)
	clra
	sta	(__mullong_PARM_1 + 2)
	sta	(__mullong_PARM_1 + 1)
	sta	__mullong_PARM_1
	lda	___fsmul_fl2_1_1
	sta	*___fsmul_sloc1_1_0
	lda	(___fsmul_fl2_1_1 + 1)
	sta	*(___fsmul_sloc1_1_0 + 1)
	lda	(___fsmul_fl2_1_1 + 2)
	sta	*(___fsmul_sloc1_1_0 + 2)
	lda	(___fsmul_fl2_1_1 + 3)
	sta	*(___fsmul_sloc1_1_0 + 3)
	lda	*(___fsmul_sloc1_1_0 + 2)
	sta	(__mullong_PARM_2 + 3)
	lda	*(___fsmul_sloc1_1_0 + 1)
	sta	(__mullong_PARM_2 + 2)
	lda	*___fsmul_sloc1_1_0
	sta	(__mullong_PARM_2 + 1)
	rola
	clra
	sbc	#0
	sta	__mullong_PARM_2
	jsr	__mullong
	sta	*(___fsmul_sloc1_1_0 + 3)
	stx	*(___fsmul_sloc1_1_0 + 2)
	mov	*__ret2,*(___fsmul_sloc1_1_0 + 1)
	mov	*__ret3,*___fsmul_sloc1_1_0
	mov	*(___fsmul_sloc1_1_0 + 2),*(___fsmul_sloc1_1_0 + 3)
	mov	*(___fsmul_sloc1_1_0 + 1),*(___fsmul_sloc1_1_0 + 2)
	lda	*___fsmul_sloc1_1_0
	sta	*(___fsmul_sloc1_1_0 + 1)
	clr	*___fsmul_sloc1_1_0
	lda	(___fsmul_result_1_1 + 3)
	add	*(___fsmul_sloc1_1_0 + 3)
	sta	(___fsmul_result_1_1 + 3)
	lda	(___fsmul_result_1_1 + 2)
	adc	*(___fsmul_sloc1_1_0 + 2)
	sta	(___fsmul_result_1_1 + 2)
	lda	(___fsmul_result_1_1 + 1)
	adc	*(___fsmul_sloc1_1_0 + 1)
	sta	(___fsmul_result_1_1 + 1)
	lda	___fsmul_result_1_1
	adc	*___fsmul_sloc1_1_0
	sta	___fsmul_result_1_1
;_fsmul.c:254: result += ((fl2.l & (unsigned long) 0xFF) * (fl1.l >> 8)) >> 8;
	lda	___fsmul_fl2_1_1
	sta	*___fsmul_sloc1_1_0
	lda	(___fsmul_fl2_1_1 + 1)
	sta	*(___fsmul_sloc1_1_0 + 1)
	lda	(___fsmul_fl2_1_1 + 2)
	sta	*(___fsmul_sloc1_1_0 + 2)
	lda	(___fsmul_fl2_1_1 + 3)
	sta	*(___fsmul_sloc1_1_0 + 3)
	sta	(__mullong_PARM_1 + 3)
	clra
	sta	(__mullong_PARM_1 + 2)
	sta	(__mullong_PARM_1 + 1)
	sta	__mullong_PARM_1
	lda	___fsmul_fl1_1_1
	sta	*___fsmul_sloc1_1_0
	lda	(___fsmul_fl1_1_1 + 1)
	sta	*(___fsmul_sloc1_1_0 + 1)
	lda	(___fsmul_fl1_1_1 + 2)
	sta	*(___fsmul_sloc1_1_0 + 2)
	lda	(___fsmul_fl1_1_1 + 3)
	sta	*(___fsmul_sloc1_1_0 + 3)
	lda	*(___fsmul_sloc1_1_0 + 2)
	sta	(__mullong_PARM_2 + 3)
	lda	*(___fsmul_sloc1_1_0 + 1)
	sta	(__mullong_PARM_2 + 2)
	lda	*___fsmul_sloc1_1_0
	sta	(__mullong_PARM_2 + 1)
	rola
	clra
	sbc	#0
	sta	__mullong_PARM_2
	jsr	__mullong
	sta	*(___fsmul_sloc1_1_0 + 3)
	stx	*(___fsmul_sloc1_1_0 + 2)
	mov	*__ret2,*(___fsmul_sloc1_1_0 + 1)
	mov	*__ret3,*___fsmul_sloc1_1_0
	mov	*(___fsmul_sloc1_1_0 + 2),*(___fsmul_sloc1_1_0 + 3)
	mov	*(___fsmul_sloc1_1_0 + 1),*(___fsmul_sloc1_1_0 + 2)
	lda	*___fsmul_sloc1_1_0
	sta	*(___fsmul_sloc1_1_0 + 1)
	clr	*___fsmul_sloc1_1_0
	lda	(___fsmul_result_1_1 + 3)
	add	*(___fsmul_sloc1_1_0 + 3)
	sta	(___fsmul_result_1_1 + 3)
	lda	(___fsmul_result_1_1 + 2)
	adc	*(___fsmul_sloc1_1_0 + 2)
	sta	(___fsmul_result_1_1 + 2)
	lda	(___fsmul_result_1_1 + 1)
	adc	*(___fsmul_sloc1_1_0 + 1)
	sta	(___fsmul_result_1_1 + 1)
	lda	___fsmul_result_1_1
	adc	*___fsmul_sloc1_1_0
	sta	___fsmul_result_1_1
;_fsmul.c:256: if (result & SIGNBIT)
	clra
	psha
	lda	(___fsmul_result_1_1 + 3)
	and	#0x00
	ora	1,s
	sta	1,s
	lda	(___fsmul_result_1_1 + 2)
	and	#0x00
	ora	1,s
	sta	1,s
	lda	(___fsmul_result_1_1 + 1)
	and	#0x00
	ora	1,s
	sta	1,s
	lda	___fsmul_result_1_1
	and	#0x80
	ora	1,s
	sta	1,s
	pula
	tsta
	beq	00105$
00127$:
;_fsmul.c:259: result += 0x80;
	lda	(___fsmul_result_1_1 + 3)
	add	#0x80
	sta	(___fsmul_result_1_1 + 3)
	bcc	00128$
	lda	(___fsmul_result_1_1 + 2)
	inca
	sta	(___fsmul_result_1_1 + 2)
	bne	00128$
	lda	(___fsmul_result_1_1 + 1)
	inca
	sta	(___fsmul_result_1_1 + 1)
	bne	00128$
	lda	___fsmul_result_1_1
	inca
	sta	___fsmul_result_1_1
00128$:
;_fsmul.c:260: result >>= 8;
	lda	(___fsmul_result_1_1 + 2)
	sta	(___fsmul_result_1_1 + 3)
	lda	(___fsmul_result_1_1 + 1)
	sta	(___fsmul_result_1_1 + 2)
	lda	___fsmul_result_1_1
	sta	(___fsmul_result_1_1 + 1)
	clra
	sta	___fsmul_result_1_1
	jmp	00106$
00105$:
;_fsmul.c:265: result += 0x40;
	lda	(___fsmul_result_1_1 + 3)
	add	#0x40
	sta	(___fsmul_result_1_1 + 3)
	bcc	00129$
	lda	(___fsmul_result_1_1 + 2)
	inca
	sta	(___fsmul_result_1_1 + 2)
	bne	00129$
	lda	(___fsmul_result_1_1 + 1)
	inca
	sta	(___fsmul_result_1_1 + 1)
	bne	00129$
	lda	___fsmul_result_1_1
	inca
	sta	___fsmul_result_1_1
00129$:
;_fsmul.c:266: result >>= 7;
	lda	(___fsmul_result_1_1 + 3)
	ldx	(___fsmul_result_1_1 + 2)
	lsla
	txa
	rola
	clrx
	rolx
	sta	(___fsmul_result_1_1 + 3)
	stx	(___fsmul_result_1_1 + 2)
	lda	(___fsmul_result_1_1 + 1)
	lsla	
	ora	(___fsmul_result_1_1 + 2)
	sta	(___fsmul_result_1_1 + 2)
	lda	(___fsmul_result_1_1 + 1)
	ldx	___fsmul_result_1_1
	lsla
	txa
	rola
	clrx
	rolx
	sta	(___fsmul_result_1_1 + 1)
	stx	___fsmul_result_1_1
;_fsmul.c:267: exp--;
	lda	(___fsmul_exp_1_1 + 1)
	sub	#0x01
	sta	(___fsmul_exp_1_1 + 1)
	lda	___fsmul_exp_1_1
	sbc	#0x00
	sta	___fsmul_exp_1_1
00106$:
;_fsmul.c:270: result &= ~HIDDEN;
	lda	(___fsmul_result_1_1 + 3)
	sta	(___fsmul_result_1_1 + 3)
	lda	(___fsmul_result_1_1 + 2)
	sta	(___fsmul_result_1_1 + 2)
	lda	(___fsmul_result_1_1 + 1)
	and	#0x7F
	sta	(___fsmul_result_1_1 + 1)
	lda	___fsmul_result_1_1
	sta	___fsmul_result_1_1
;_fsmul.c:273: if (exp >= 0x100)
	lda	(___fsmul_exp_1_1 + 1)
	sub	#0x00
	lda	___fsmul_exp_1_1
	sbc	#0x01
	blt	00111$
00130$:
;_fsmul.c:274: fl1.l = (sign ? SIGNBIT : 0) | 0x7F800000;
	lda	___fsmul_sign_1_1
	beq	00115$
00131$:
	mov	#0x80,*___fsmul_sloc1_1_0
	clr	*(___fsmul_sloc1_1_0 + 1)
	clr	*(___fsmul_sloc1_1_0 + 2)
	clr	*(___fsmul_sloc1_1_0 + 3)
	bra	00116$
00115$:
	clr	*___fsmul_sloc1_1_0
	clr	*(___fsmul_sloc1_1_0 + 1)
	clr	*(___fsmul_sloc1_1_0 + 2)
	clr	*(___fsmul_sloc1_1_0 + 3)
00116$:
	lda	*(___fsmul_sloc1_1_0 + 1)
	ora	#0x80
	sta	*(___fsmul_sloc1_1_0 + 1)
	lda	*___fsmul_sloc1_1_0
	ora	#0x7F
	sta	*___fsmul_sloc1_1_0
	sta	___fsmul_fl1_1_1
	lda	*(___fsmul_sloc1_1_0 + 1)
	sta	(___fsmul_fl1_1_1 + 1)
	lda	*(___fsmul_sloc1_1_0 + 2)
	sta	(___fsmul_fl1_1_1 + 2)
	lda	*(___fsmul_sloc1_1_0 + 3)
	sta	(___fsmul_fl1_1_1 + 3)
	jmp	00112$
00111$:
;_fsmul.c:275: else if (exp < 0)
	lda	(___fsmul_exp_1_1 + 1)
	sub	#0x00
	lda	___fsmul_exp_1_1
	sbc	#0x00
	bge	00108$
00132$:
;_fsmul.c:276: fl1.l = 0;
	clra
	sta	___fsmul_fl1_1_1
	sta	(___fsmul_fl1_1_1 + 1)
	sta	(___fsmul_fl1_1_1 + 2)
	sta	(___fsmul_fl1_1_1 + 3)
	jmp	00112$
00108$:
;_fsmul.c:278: fl1.l = PACK (sign ? SIGNBIT : 0 , exp, result);
	lda	___fsmul_sign_1_1
	beq	00117$
00133$:
	mov	#0x80,*___fsmul_sloc1_1_0
	clr	*(___fsmul_sloc1_1_0 + 1)
	clr	*(___fsmul_sloc1_1_0 + 2)
	clr	*(___fsmul_sloc1_1_0 + 3)
	bra	00118$
00117$:
	clr	*___fsmul_sloc1_1_0
	clr	*(___fsmul_sloc1_1_0 + 1)
	clr	*(___fsmul_sloc1_1_0 + 2)
	clr	*(___fsmul_sloc1_1_0 + 3)
00118$:
	lda	(___fsmul_exp_1_1 + 1)
	sta	*(___fsmul_sloc0_1_0 + 3)
	lda	___fsmul_exp_1_1
	sta	*(___fsmul_sloc0_1_0 + 2)
	lda	___fsmul_exp_1_1
	rola	
	clra	
	sbc	#0x00
	sta	*(___fsmul_sloc0_1_0 + 1)
	sta	*___fsmul_sloc0_1_0
	lda	*(___fsmul_sloc0_1_0 + 3)
	ldx	*(___fsmul_sloc0_1_0 + 2)
	lsrx
	rora
	tax
	clra
	rora
	sta	*(___fsmul_sloc0_1_0 + 1)
	stx	*___fsmul_sloc0_1_0
	clr	*(___fsmul_sloc0_1_0 + 3)
	clr	*(___fsmul_sloc0_1_0 + 2)
	lda	*(___fsmul_sloc1_1_0 + 3)
	ora	*(___fsmul_sloc0_1_0 + 3)
	sta	*(___fsmul_sloc1_1_0 + 3)
	lda	*(___fsmul_sloc1_1_0 + 2)
	ora	*(___fsmul_sloc0_1_0 + 2)
	sta	*(___fsmul_sloc1_1_0 + 2)
	lda	*(___fsmul_sloc1_1_0 + 1)
	ora	*(___fsmul_sloc0_1_0 + 1)
	sta	*(___fsmul_sloc1_1_0 + 1)
	lda	*___fsmul_sloc1_1_0
	ora	*___fsmul_sloc0_1_0
	sta	*___fsmul_sloc1_1_0
	lda	*(___fsmul_sloc1_1_0 + 3)
	ora	(___fsmul_result_1_1 + 3)
	sta	*(___fsmul_sloc1_1_0 + 3)
	lda	*(___fsmul_sloc1_1_0 + 2)
	ora	(___fsmul_result_1_1 + 2)
	sta	*(___fsmul_sloc1_1_0 + 2)
	lda	*(___fsmul_sloc1_1_0 + 1)
	ora	(___fsmul_result_1_1 + 1)
	sta	*(___fsmul_sloc1_1_0 + 1)
	lda	*___fsmul_sloc1_1_0
	ora	___fsmul_result_1_1
	sta	*___fsmul_sloc1_1_0
	sta	___fsmul_fl1_1_1
	lda	*(___fsmul_sloc1_1_0 + 1)
	sta	(___fsmul_fl1_1_1 + 1)
	lda	*(___fsmul_sloc1_1_0 + 2)
	sta	(___fsmul_fl1_1_1 + 2)
	lda	*(___fsmul_sloc1_1_0 + 3)
	sta	(___fsmul_fl1_1_1 + 3)
00112$:
;_fsmul.c:279: return (fl1.f);
	lda	___fsmul_fl1_1_1
	sta	*___fsmul_sloc1_1_0
	lda	(___fsmul_fl1_1_1 + 1)
	sta	*(___fsmul_sloc1_1_0 + 1)
	lda	(___fsmul_fl1_1_1 + 2)
	sta	*(___fsmul_sloc1_1_0 + 2)
	lda	(___fsmul_fl1_1_1 + 3)
	sta	*(___fsmul_sloc1_1_0 + 3)
	mov	*___fsmul_sloc1_1_0,*__ret3
	mov	*(___fsmul_sloc1_1_0 + 1),*__ret2
	ldx	*(___fsmul_sloc1_1_0 + 2)
	lda	*(___fsmul_sloc1_1_0 + 3)
00113$:
	rts
	.area CSEG (CODE)
	.area CONST   (CODE)
	.area XINIT
	.area CABS    (ABS,CODE)
