;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:27 2018
;--------------------------------------------------------
	.module _itoa
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __itoa
	.globl __uitoa
	.globl __itoa_PARM_3
	.globl __itoa_PARM_2
	.globl __uitoa_PARM_3
	.globl __uitoa_PARM_2
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
__uitoa_sloc0_1_0:
	.ds 1
__uitoa_sloc1_1_0:
	.ds 2
__uitoa_sloc2_1_0:
	.ds 3
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
__uitoa_PARM_2:
	.ds 3
__uitoa_PARM_3:
	.ds 1
__uitoa_value_1_1:
	.ds 2
__uitoa_index_1_1:
	.ds 1
__itoa_PARM_2:
	.ds 3
__itoa_PARM_3:
	.ds 1
__itoa_value_1_1:
	.ds 2
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
;Allocation info for local variables in function '_uitoa'
;------------------------------------------------------------
;sloc0                     Allocated with name '__uitoa_sloc0_1_0'
;sloc1                     Allocated with name '__uitoa_sloc1_1_0'
;sloc2                     Allocated with name '__uitoa_sloc2_1_0'
;string                    Allocated with name '__uitoa_PARM_2'
;radix                     Allocated with name '__uitoa_PARM_3'
;value                     Allocated with name '__uitoa_value_1_1'
;index                     Allocated with name '__uitoa_index_1_1'
;i                         Allocated with name '__uitoa_i_1_1'
;tmp                       Allocated with name '__uitoa_tmp_2_3'
;------------------------------------------------------------
;	_itoa.c:16: void _uitoa(unsigned int value, char* string, unsigned char radix)
;	-----------------------------------------
;	 function _uitoa
;	-----------------------------------------
__uitoa:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov	r2,dph
	mov	a,dpl
	mov	dptr,#__uitoa_value_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
;	_itoa.c:21: do {
	mov	dptr,#__uitoa_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#__uitoa_PARM_3
	movx	a,@dptr
	mov	__uitoa_sloc0_1_0,a
	mov	r6,#0x00
00103$:
;	_itoa.c:22: string[index] = '0' + (value % radix);
	mov	a,r6
	add	a,r2
	mov	r7,a
	clr	a
	addc	a,r3
	mov	r0,a
	mov	ar1,r4
	push	ar6
	mov	dptr,#__uitoa_value_1_1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	__uitoa_sloc1_1_0,__uitoa_sloc0_1_0
	mov	(__uitoa_sloc1_1_0 + 1),#0x00
	mov	dptr,#__moduint_PARM_2
	mov	a,__uitoa_sloc1_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(__uitoa_sloc1_1_0 + 1)
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r5
	push	ar2
	push	ar3
	push	ar4
	push	ar7
	push	ar0
	push	ar1
	lcall	__moduint
	mov	r5,dpl
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,#0x30
	add	a,r5
	mov	dpl,r7
	mov	dph,r0
	mov	b,r1
	lcall	__gptrput
;	_itoa.c:23: if (string[index] > '9')
	mov	dpl,r7
	mov	dph,r0
	mov	b,r1
	lcall	__gptrget
	mov	r5,a
	clr	c
	mov	a,#(0x39 ^ 0x80)
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	clr	a
	rlc	a
	pop	ar6
	jz	00102$
;	_itoa.c:24: string[index] += 'A' - '9' - 1;
	mov	dpl,r7
	mov	dph,r0
	mov	b,r1
	lcall	__gptrget
	mov	r5,a
	mov	a,#0x07
	add	a,r5
	mov	r5,a
	mov	dpl,r7
	mov	dph,r0
	mov	b,r1
	lcall	__gptrput
00102$:
;	_itoa.c:25: value /= radix;
	mov	dptr,#__uitoa_value_1_1
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__divuint_PARM_2
	mov	a,__uitoa_sloc1_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(__uitoa_sloc1_1_0 + 1)
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r7
	push	ar2
	push	ar3
	push	ar4
	push	ar6
	lcall	__divuint
	mov	a,dpl
	mov	b,dph
	pop	ar6
	pop	ar4
	pop	ar3
	pop	ar2
	mov	dptr,#__uitoa_value_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,b
	movx	@dptr,a
;	_itoa.c:26: ++index;
	inc	r6
;	_itoa.c:27: } while (value != 0);
	mov	dptr,#__uitoa_value_1_1
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r5
	jz	00119$
	ljmp	00103$
00119$:
;	_itoa.c:30: string[index--] = '\0';
	mov	a,r6
	dec	a
	mov	dptr,#__uitoa_index_1_1
	movx	@dptr,a
	mov	a,r6
	add	a,r2
	mov	r6,a
	clr	a
	addc	a,r3
	mov	r5,a
	mov	ar7,r4
	mov	dpl,r6
	mov	dph,r5
	mov	b,r7
	clr	a
	lcall	__gptrput
;	_itoa.c:33: while (index > i) {
	mov	r5,#0x00
	mov	dptr,#__uitoa_index_1_1
	movx	a,@dptr
	mov	r6,a
00106$:
	clr	c
	mov	a,r5
	xrl	a,#0x80
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jnc	00109$
;	_itoa.c:34: char tmp = string[i];
	mov	a,r5
	add	a,r2
	mov	__uitoa_sloc2_1_0,a
	clr	a
	addc	a,r3
	mov	(__uitoa_sloc2_1_0 + 1),a
	mov	(__uitoa_sloc2_1_0 + 2),r4
	mov	dpl,__uitoa_sloc2_1_0
	mov	dph,(__uitoa_sloc2_1_0 + 1)
	mov	b,(__uitoa_sloc2_1_0 + 2)
	lcall	__gptrget
	mov	__uitoa_sloc1_1_0,a
;	_itoa.c:35: string[i] = string[index];
	mov	a,r6
	add	a,r2
	mov	r0,a
	clr	a
	addc	a,r3
	mov	r1,a
	mov	ar7,r4
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	mov	dpl,__uitoa_sloc2_1_0
	mov	dph,(__uitoa_sloc2_1_0 + 1)
	mov	b,(__uitoa_sloc2_1_0 + 2)
	lcall	__gptrput
;	_itoa.c:36: string[index] = tmp;
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	mov	a,__uitoa_sloc1_1_0
	lcall	__gptrput
;	_itoa.c:37: ++i;
	inc	r5
;	_itoa.c:38: --index;
	dec	r6
	pop	ar4
	pop	ar3
	pop	ar2
	sjmp	00106$
00109$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_itoa'
;------------------------------------------------------------
;string                    Allocated with name '__itoa_PARM_2'
;radix                     Allocated with name '__itoa_PARM_3'
;value                     Allocated with name '__itoa_value_1_1'
;------------------------------------------------------------
;	_itoa.c:42: void _itoa(int value, char* string, unsigned char radix)
;	-----------------------------------------
;	 function _itoa
;	-----------------------------------------
__itoa:
	mov	r2,dph
	mov	a,dpl
	mov	dptr,#__itoa_value_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
;	_itoa.c:44: if (value < 0 && radix == 10) {
	mov	dptr,#__itoa_value_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	jnb	acc.7,00102$
	mov	dptr,#__itoa_PARM_3
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x0A,00102$
;	_itoa.c:45: *string++ = '-';
	mov	dptr,#__itoa_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,#0x2D
	lcall	__gptrput
	mov	dptr,#__itoa_PARM_2
	mov	a,#0x01
	add	a,r4
	movx	@dptr,a
	clr	a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
;	_itoa.c:46: value = -value;
	mov	dptr,#__itoa_value_1_1
	clr	c
	clr	a
	subb	a,r2
	movx	@dptr,a
	clr	a
	subb	a,r3
	inc	dptr
	movx	@dptr,a
00102$:
;	_itoa.c:48: _uitoa(value, string, radix);
	mov	dptr,#__itoa_value_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#__itoa_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#__itoa_PARM_3
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__uitoa_PARM_2
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	mov	dptr,#__uitoa_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	ljmp	__uitoa
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
