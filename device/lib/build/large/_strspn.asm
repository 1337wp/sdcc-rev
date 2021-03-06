;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:27 2018
;--------------------------------------------------------
	.module _strspn
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strspn_PARM_2
	.globl _strspn
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
_strspn_count_1_1:
	.ds 2
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
_strspn_PARM_2:
	.ds 3
_strspn_string_1_1:
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
;Allocation info for local variables in function 'strspn'
;------------------------------------------------------------
;count                     Allocated with name '_strspn_count_1_1'
;ch                        Allocated to registers r0 
;control                   Allocated with name '_strspn_PARM_2'
;string                    Allocated with name '_strspn_string_1_1'
;------------------------------------------------------------
;	_strspn.c:26: int strspn (
;	-----------------------------------------
;	 function strspn
;	-----------------------------------------
_strspn:
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
	mov	dptr,#_strspn_string_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
;	_strspn.c:34: while (ch = *string) {
	clr	a
	mov	_strspn_count_1_1,a
	mov	(_strspn_count_1_1 + 1),a
	mov	dptr,#_strspn_string_1_1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
00104$:
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r7,a
	mov	r0,a
	jz	00112$
;	_strspn.c:35: if ( strchr(control,ch) )
	mov	dptr,#_strspn_PARM_2
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#_strchr_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	dpl,r7
	mov	dph,r1
	mov	b,r2
	push	ar4
	push	ar5
	push	ar6
	lcall	_strchr
	mov	r2,dpl
	mov	r3,dph
	mov	r7,b
	pop	ar6
	pop	ar5
	pop	ar4
	mov	a,r2
	orl	a,r3
	orl	a,r7
	jz	00112$
;	_strspn.c:36: count++ ;
	inc	_strspn_count_1_1
	clr	a
	cjne	a,_strspn_count_1_1,00115$
	inc	(_strspn_count_1_1 + 1)
00115$:
;	_strspn.c:39: string++ ;
	inc	r4
	cjne	r4,#0x00,00116$
	inc	r5
00116$:
	mov	dptr,#_strspn_string_1_1
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	sjmp	00104$
00112$:
	mov	dptr,#_strspn_string_1_1
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
;	_strspn.c:42: return count ;
	mov	dpl,_strspn_count_1_1
	mov	dph,(_strspn_count_1_1 + 1)
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
