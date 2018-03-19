;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:24 2018
;--------------------------------------------------------
	.module _fssub
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
	.globl ___fssub_PARM_2
	.globl ___fssub_PARM_1
	.globl ___fssub
;--------------------------------------------------------
;  ram data
;--------------------------------------------------------
	.area DSEG
___fssub_sloc0_1_0:
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
___fssub_PARM_1:
	.ds 4
___fssub_PARM_2:
	.ds 4
___fssub_fl1_1_1:
	.ds 4
___fssub_fl2_1_1:
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
;Allocation info for local variables in function '__fssub'
;------------------------------------------------------------
;sloc0                     Allocated with name '___fssub_sloc0_1_0'
;a1                        Allocated with name '___fssub_PARM_1'
;a2                        Allocated with name '___fssub_PARM_2'
;fl1                       Allocated with name '___fssub_fl1_1_1'
;fl2                       Allocated with name '___fssub_fl2_1_1'
;------------------------------------------------------------
;_fssub.c:69: float __fssub (float a1, float a2)
;	-----------------------------------------
;	 function __fssub
;	-----------------------------------------
___fssub:
;_fssub.c:73: fl1.f = a1;
	lda	___fssub_PARM_1
	sta	___fssub_fl1_1_1
	lda	(___fssub_PARM_1 + 1)
	sta	(___fssub_fl1_1_1 + 1)
	lda	(___fssub_PARM_1 + 2)
	sta	(___fssub_fl1_1_1 + 2)
	lda	(___fssub_PARM_1 + 3)
	sta	(___fssub_fl1_1_1 + 3)
;_fssub.c:74: fl2.f = a2;
	lda	___fssub_PARM_2
	sta	___fssub_fl2_1_1
	lda	(___fssub_PARM_2 + 1)
	sta	(___fssub_fl2_1_1 + 1)
	lda	(___fssub_PARM_2 + 2)
	sta	(___fssub_fl2_1_1 + 2)
	lda	(___fssub_PARM_2 + 3)
	sta	(___fssub_fl2_1_1 + 3)
;_fssub.c:77: if (!fl2.l)
	lda	___fssub_fl2_1_1
	sta	*___fssub_sloc0_1_0
	lda	(___fssub_fl2_1_1 + 1)
	sta	*(___fssub_sloc0_1_0 + 1)
	lda	(___fssub_fl2_1_1 + 2)
	sta	*(___fssub_sloc0_1_0 + 2)
	lda	(___fssub_fl2_1_1 + 3)
	sta	*(___fssub_sloc0_1_0 + 3)
	ora	*(___fssub_sloc0_1_0 + 2)
	ora	*(___fssub_sloc0_1_0 + 1)
	ora	*___fssub_sloc0_1_0
	bne	00102$
00109$:
;_fssub.c:78: return (fl1.f);
	lda	___fssub_fl1_1_1
	sta	*___fssub_sloc0_1_0
	lda	(___fssub_fl1_1_1 + 1)
	sta	*(___fssub_sloc0_1_0 + 1)
	lda	(___fssub_fl1_1_1 + 2)
	sta	*(___fssub_sloc0_1_0 + 2)
	lda	(___fssub_fl1_1_1 + 3)
	sta	*(___fssub_sloc0_1_0 + 3)
	mov	*___fssub_sloc0_1_0,*__ret3
	mov	*(___fssub_sloc0_1_0 + 1),*__ret2
	ldx	*(___fssub_sloc0_1_0 + 2)
	lda	*(___fssub_sloc0_1_0 + 3)
	rts
00102$:
;_fssub.c:79: if (!fl1.l)
	lda	___fssub_fl1_1_1
	sta	*___fssub_sloc0_1_0
	lda	(___fssub_fl1_1_1 + 1)
	sta	*(___fssub_sloc0_1_0 + 1)
	lda	(___fssub_fl1_1_1 + 2)
	sta	*(___fssub_sloc0_1_0 + 2)
	lda	(___fssub_fl1_1_1 + 3)
	sta	*(___fssub_sloc0_1_0 + 3)
	ora	*(___fssub_sloc0_1_0 + 2)
	ora	*(___fssub_sloc0_1_0 + 1)
	ora	*___fssub_sloc0_1_0
	bne	00104$
00110$:
;_fssub.c:80: return (-fl2.f);
	lda	___fssub_fl2_1_1
	sta	*___fssub_sloc0_1_0
	lda	(___fssub_fl2_1_1 + 1)
	sta	*(___fssub_sloc0_1_0 + 1)
	lda	(___fssub_fl2_1_1 + 2)
	sta	*(___fssub_sloc0_1_0 + 2)
	lda	(___fssub_fl2_1_1 + 3)
	sta	*(___fssub_sloc0_1_0 + 3)
	lda	*___fssub_sloc0_1_0
	eor	#0x80
	sta	*___fssub_sloc0_1_0
	mov	*___fssub_sloc0_1_0,*__ret3
	mov	*(___fssub_sloc0_1_0 + 1),*__ret2
	ldx	*(___fssub_sloc0_1_0 + 2)
	lda	*(___fssub_sloc0_1_0 + 3)
	rts
00104$:
;_fssub.c:83: fl2.l ^= SIGNBIT;
	lda	___fssub_fl2_1_1
	sta	*___fssub_sloc0_1_0
	lda	(___fssub_fl2_1_1 + 1)
	sta	*(___fssub_sloc0_1_0 + 1)
	lda	(___fssub_fl2_1_1 + 2)
	sta	*(___fssub_sloc0_1_0 + 2)
	lda	(___fssub_fl2_1_1 + 3)
	sta	*(___fssub_sloc0_1_0 + 3)
	eor	#0x00
	sta	*(___fssub_sloc0_1_0 + 3)
	lda	*(___fssub_sloc0_1_0 + 2)
	eor	#0x00
	sta	*(___fssub_sloc0_1_0 + 2)
	lda	*(___fssub_sloc0_1_0 + 1)
	eor	#0x00
	sta	*(___fssub_sloc0_1_0 + 1)
	lda	*___fssub_sloc0_1_0
	eor	#0x80
	sta	*___fssub_sloc0_1_0
	sta	___fssub_fl2_1_1
	lda	*(___fssub_sloc0_1_0 + 1)
	sta	(___fssub_fl2_1_1 + 1)
	lda	*(___fssub_sloc0_1_0 + 2)
	sta	(___fssub_fl2_1_1 + 2)
	lda	*(___fssub_sloc0_1_0 + 3)
	sta	(___fssub_fl2_1_1 + 3)
;_fssub.c:84: return fl1.f + fl2.f; 
	lda	___fssub_fl1_1_1
	sta	___fsadd_PARM_1
	lda	(___fssub_fl1_1_1 + 1)
	sta	(___fsadd_PARM_1 + 1)
	lda	(___fssub_fl1_1_1 + 2)
	sta	(___fsadd_PARM_1 + 2)
	lda	(___fssub_fl1_1_1 + 3)
	sta	(___fsadd_PARM_1 + 3)
	lda	___fssub_fl2_1_1
	sta	___fsadd_PARM_2
	lda	(___fssub_fl2_1_1 + 1)
	sta	(___fsadd_PARM_2 + 1)
	lda	(___fssub_fl2_1_1 + 2)
	sta	(___fsadd_PARM_2 + 2)
	lda	(___fssub_fl2_1_1 + 3)
	sta	(___fsadd_PARM_2 + 3)
	jsr	___fsadd
	sta	*(___fssub_sloc0_1_0 + 3)
	stx	*(___fssub_sloc0_1_0 + 2)
	mov	*__ret2,*(___fssub_sloc0_1_0 + 1)
	mov	*__ret3,*___fssub_sloc0_1_0
	mov	*___fssub_sloc0_1_0,*__ret3
	mov	*(___fssub_sloc0_1_0 + 1),*__ret2
	ldx	*(___fssub_sloc0_1_0 + 2)
	lda	*(___fssub_sloc0_1_0 + 3)
00105$:
	rts
	.area CSEG (CODE)
	.area CONST   (CODE)
	.area XINIT
	.area CABS    (ABS,CODE)
