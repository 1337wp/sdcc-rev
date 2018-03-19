;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:24 2018
;--------------------------------------------------------
	.module _strspn
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
	.globl _strspn_PARM_2
	.globl _strspn
;--------------------------------------------------------
;  ram data
;--------------------------------------------------------
	.area DSEG
_strspn_count_1_1:
	.ds 2
_strspn_ch_1_1:
	.ds 1
_strspn_sloc0_1_0:
	.ds 2
_strspn_sloc1_1_0:
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
_strspn_PARM_2:
	.ds 2
_strspn_string_1_1:
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
;Allocation info for local variables in function 'strspn'
;------------------------------------------------------------
;count                     Allocated with name '_strspn_count_1_1'
;ch                        Allocated with name '_strspn_ch_1_1'
;sloc0                     Allocated with name '_strspn_sloc0_1_0'
;sloc1                     Allocated with name '_strspn_sloc1_1_0'
;control                   Allocated with name '_strspn_PARM_2'
;string                    Allocated with name '_strspn_string_1_1'
;------------------------------------------------------------
;_strspn.c:26: int strspn (
;	-----------------------------------------
;	 function strspn
;	-----------------------------------------
_strspn:
	sta	(_strspn_string_1_1 + 1)
	stx	_strspn_string_1_1
;_strspn.c:34: while (ch = *string) {
	clr	*_strspn_count_1_1
	clr	*(_strspn_count_1_1 + 1)
	lda	_strspn_string_1_1
	sta	*_strspn_sloc0_1_0
	lda	(_strspn_string_1_1 + 1)
	sta	*(_strspn_sloc0_1_0 + 1)
00104$:
	ldhx	*_strspn_sloc0_1_0
	lda	,x
	sta	*_strspn_ch_1_1
	mov	*_strspn_ch_1_1,*_strspn_sloc1_1_0
	tst	*_strspn_ch_1_1
	beq	00106$
00113$:
;_strspn.c:35: if ( strchr(control,ch) )
	lda	*_strspn_sloc1_1_0
	sta	_strchr_PARM_2
	ldx	_strspn_PARM_2
	lda	(_strspn_PARM_2 + 1)
	jsr	_strchr
	tsta
	bne	00114$
	tstx
00114$:
	beq	00106$
00115$:
;_strspn.c:36: count++ ;
	ldhx	*_strspn_count_1_1
	aix	#1
	sthx	*_strspn_count_1_1
;_strspn.c:39: string++ ;
	ldhx	*_strspn_sloc0_1_0
	aix	#1
	sthx	*_strspn_sloc0_1_0
	bra	00104$
00106$:
;_strspn.c:42: return count ;
	ldx	*_strspn_count_1_1
	lda	*(_strspn_count_1_1 + 1)
00107$:
	rts
	.area CSEG (CODE)
	.area CONST   (CODE)
	.area XINIT
	.area CABS    (ABS,CODE)
