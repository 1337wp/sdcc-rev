;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:26 2018
;--------------------------------------------------------
	.module ldexpf
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ldexpf_PARM_2
	.globl _ldexpf
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
	.area	OSEG    (OVR,DATA)
_ldexpf_sloc0_1_0::
	.ds 4
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
_ldexpf_PARM_2:
	.ds 2
_ldexpf_fl_1_1:
	.ds 4
_ldexpf_e_1_1:
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
;Allocation info for local variables in function 'ldexpf'
;------------------------------------------------------------
;sloc0                     Allocated with name '_ldexpf_sloc0_1_0'
;------------------------------------------------------------
;	ldexpf.c:24: float ldexpf(const float x, const int pw2)
;	-----------------------------------------
;	 function ldexpf
;	-----------------------------------------
_ldexpf:
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
	mov	r4,b
	mov	r5,a
;	ldexpf.c:29: fl.f = x;
	mov	r0,#_ldexpf_fl_1_1
	mov	a,r2
	movx	@r0,a
	inc	r0
	mov	a,r3
	movx	@r0,a
	inc	r0
	mov	a,r4
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
;	ldexpf.c:31: e=(fl.l >> 23) & 0x000000ff;
	mov	r0,#_ldexpf_fl_1_1
	movx	a,@r0
	inc	r0
	movx	a,@r0
	mov	r3,a
	inc	r0
	movx	a,@r0
	mov	r4,a
	inc	r0
	movx	a,@r0
	mov	r5,a
	mov	ar2,r4
	mov	c,acc.7
	xch	a,r2
	rlc	a
	xch	a,r2
	rlc	a
	xch	a,r2
	anl	a,#0x01
	jnb	acc.0,00103$
	orl	a,#0xfe
00103$:
	rlc	a
	subb	a,acc
	mov	r0,#_ldexpf_e_1_1
	mov	a,r2
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
;	ldexpf.c:32: e+=pw2;
	mov	r0,#_ldexpf_PARM_2
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	movx	a,@r0
	rlc	a
	subb	a,acc
	mov	r2,a
	mov	r3,a
	mov	r0,#_ldexpf_e_1_1
	movx	a,@r0
	add	a,r6
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,r7
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,r2
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,r3
	movx	@r0,a
;	ldexpf.c:33: fl.l= ((e & 0xff) << 23) | (fl.l & 0x807fffff);
	mov	r0,#_ldexpf_e_1_1
	movx	a,@r0
	anl	a,#0xFF
	mov	r2,a
	inc	r0
	movx	a,@r0
	anl	a,#0x00
	mov	r3,a
	inc	r0
	movx	a,@r0
	anl	a,#0x00
	inc	r0
	movx	a,@r0
	anl	a,#0x00
	mov	(_ldexpf_sloc0_1_0 + 2),r2
	mov	a,r3
	anl	a,#0x01
	mov	c,acc.0
	xch	a,(_ldexpf_sloc0_1_0 + 2)
	rrc	a
	xch	a,(_ldexpf_sloc0_1_0 + 2)
	rrc	a
	xch	a,(_ldexpf_sloc0_1_0 + 2)
	mov	(_ldexpf_sloc0_1_0 + 3),a
	mov	(_ldexpf_sloc0_1_0 + 1),#0x00
	mov	_ldexpf_sloc0_1_0,#0x00
	mov	r0,#_ldexpf_fl_1_1
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	inc	r0
	movx	a,@r0
	mov	r2,a
	inc	r0
	movx	a,@r0
	mov	r3,a
	anl	ar2,#0x7F
	anl	ar3,#0x80
	mov	a,_ldexpf_sloc0_1_0
	orl	ar6,a
	mov	a,(_ldexpf_sloc0_1_0 + 1)
	orl	ar7,a
	mov	a,(_ldexpf_sloc0_1_0 + 2)
	orl	ar2,a
	mov	a,(_ldexpf_sloc0_1_0 + 3)
	orl	ar3,a
	mov	r0,#_ldexpf_fl_1_1
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
	inc	r0
	mov	a,r2
	movx	@r0,a
	inc	r0
	mov	a,r3
	movx	@r0,a
;	ldexpf.c:35: return(fl.f);
	mov	r0,#_ldexpf_fl_1_1
	movx	a,@r0
	mov	r2,a
	inc	r0
	movx	a,@r0
	mov	r3,a
	inc	r0
	movx	a,@r0
	mov	r4,a
	inc	r0
	movx	a,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
