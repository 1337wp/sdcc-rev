;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:24 2018
;--------------------------------------------------------
	.module _fsneq
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
	.globl ___fsneq_PARM_2
	.globl ___fsneq_PARM_1
	.globl ___fsneq
;--------------------------------------------------------
;  ram data
;--------------------------------------------------------
	.area DSEG
;--------------------------------------------------------
; overlayable items in  ram 
;--------------------------------------------------------
	.area	OSEG    (OVR)
___fsneq_sloc0_1_0::
	.ds 4
___fsneq_sloc1_1_0::
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
___fsneq_PARM_1:
	.ds 4
___fsneq_PARM_2:
	.ds 4
___fsneq_fl1_1_1:
	.ds 4
___fsneq_fl2_1_1:
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
;Allocation info for local variables in function '__fsneq'
;------------------------------------------------------------
;a1                        Allocated with name '___fsneq_PARM_1'
;a2                        Allocated with name '___fsneq_PARM_2'
;fl1                       Allocated with name '___fsneq_fl1_1_1'
;fl2                       Allocated with name '___fsneq_fl2_1_1'
;sloc0                     Allocated with name '___fsneq_sloc0_1_0'
;sloc1                     Allocated with name '___fsneq_sloc1_1_0'
;------------------------------------------------------------
;_fsneq.c:70: char __fsneq (float a1, float a2)
;	-----------------------------------------
;	 function __fsneq
;	-----------------------------------------
___fsneq:
;_fsneq.c:74: fl1.f = a1;
	lda	___fsneq_PARM_1
	sta	___fsneq_fl1_1_1
	lda	(___fsneq_PARM_1 + 1)
	sta	(___fsneq_fl1_1_1 + 1)
	lda	(___fsneq_PARM_1 + 2)
	sta	(___fsneq_fl1_1_1 + 2)
	lda	(___fsneq_PARM_1 + 3)
	sta	(___fsneq_fl1_1_1 + 3)
;_fsneq.c:75: fl2.f = a2;
	lda	___fsneq_PARM_2
	sta	___fsneq_fl2_1_1
	lda	(___fsneq_PARM_2 + 1)
	sta	(___fsneq_fl2_1_1 + 1)
	lda	(___fsneq_PARM_2 + 2)
	sta	(___fsneq_fl2_1_1 + 2)
	lda	(___fsneq_PARM_2 + 3)
	sta	(___fsneq_fl2_1_1 + 3)
;_fsneq.c:85: if (fl1.l == fl2.l)
	lda	___fsneq_fl1_1_1
	sta	*___fsneq_sloc0_1_0
	lda	(___fsneq_fl1_1_1 + 1)
	sta	*(___fsneq_sloc0_1_0 + 1)
	lda	(___fsneq_fl1_1_1 + 2)
	sta	*(___fsneq_sloc0_1_0 + 2)
	lda	(___fsneq_fl1_1_1 + 3)
	sta	*(___fsneq_sloc0_1_0 + 3)
	lda	___fsneq_fl2_1_1
	sta	*___fsneq_sloc1_1_0
	lda	(___fsneq_fl2_1_1 + 1)
	sta	*(___fsneq_sloc1_1_0 + 1)
	lda	(___fsneq_fl2_1_1 + 2)
	sta	*(___fsneq_sloc1_1_0 + 2)
	lda	(___fsneq_fl2_1_1 + 3)
	sta	*(___fsneq_sloc1_1_0 + 3)
	lda	*(___fsneq_sloc0_1_0 + 3)
	cmp	*(___fsneq_sloc1_1_0 + 3)
	bne	00106$
	lda	*(___fsneq_sloc0_1_0 + 2)
	cmp	*(___fsneq_sloc1_1_0 + 2)
	bne	00106$
	lda	*(___fsneq_sloc0_1_0 + 1)
	cmp	*(___fsneq_sloc1_1_0 + 1)
	bne	00106$
	lda	*___fsneq_sloc0_1_0
	cmp	*___fsneq_sloc1_1_0
	beq	00107$
00106$:
	bra	00102$
00107$:
;_fsneq.c:86: return (0);
	clra
	rts
00102$:
;_fsneq.c:87: return (1);
	lda	#0x01
00103$:
	rts
	.area CSEG (CODE)
	.area CONST   (CODE)
	.area XINIT
	.area CABS    (ABS,CODE)
