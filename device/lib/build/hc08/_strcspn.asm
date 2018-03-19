;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:24 2018
;--------------------------------------------------------
	.module _strcspn
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
	.globl _strcspn_PARM_2
	.globl _strcspn
;--------------------------------------------------------
;  ram data
;--------------------------------------------------------
	.area DSEG
_strcspn_count_1_1:
	.ds 2
_strcspn_ch_1_1:
	.ds 1
_strcspn_sloc0_1_0:
	.ds 1
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
_strcspn_PARM_2:
	.ds 2
_strcspn_string_1_1:
	.ds 2
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
;Allocation info for local variables in function 'strcspn'
;------------------------------------------------------------
;count                     Allocated with name '_strcspn_count_1_1'
;ch                        Allocated with name '_strcspn_ch_1_1'
;sloc0                     Allocated with name '_strcspn_sloc0_1_0'
;control                   Allocated with name '_strcspn_PARM_2'
;string                    Allocated with name '_strcspn_string_1_1'
;------------------------------------------------------------
;_strcspn.c:26: int strcspn ( 
;	-----------------------------------------
;	 function strcspn
;	-----------------------------------------
_strcspn:
	sta	(_strcspn_string_1_1 + 1)
	stx	_strcspn_string_1_1
;_strcspn.c:34: while (ch = *string) {
	clr	*_strcspn_count_1_1
	clr	*(_strcspn_count_1_1 + 1)
00104$:
	lda	_strcspn_string_1_1
	ldx	(_strcspn_string_1_1 + 1)
	psha
	pulh
	lda	,x
	sta	*_strcspn_ch_1_1
	mov	*_strcspn_ch_1_1,*_strcspn_sloc0_1_0
	tst	*_strcspn_ch_1_1
	beq	00106$
00113$:
;_strcspn.c:35: if (strchr(control,ch))
	lda	*_strcspn_sloc0_1_0
	sta	_strchr_PARM_2
	ldx	_strcspn_PARM_2
	lda	(_strcspn_PARM_2 + 1)
	jsr	_strchr
	tsta
	bne	00114$
	tstx
00114$:
	bne	00106$
00115$:
;_strcspn.c:38: count++ ;
	ldhx	*_strcspn_count_1_1
	aix	#1
	sthx	*_strcspn_count_1_1
	bra	00104$
00106$:
;_strcspn.c:41: return count ;
	ldx	*_strcspn_count_1_1
	lda	*(_strcspn_count_1_1 + 1)
00107$:
	rts
	.area CSEG (CODE)
	.area CONST   (CODE)
	.area XINIT
	.area CABS    (ABS,CODE)
