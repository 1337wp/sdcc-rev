;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:27 2018
;--------------------------------------------------------
	.module _ltoa
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __ltoa
	.globl __ultoa
	.globl __ltoa_PARM_3
	.globl __ltoa_PARM_2
	.globl __ultoa_PARM_3
	.globl __ultoa_PARM_2
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
__ultoa_sloc0_1_0:
	.ds 4
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
__ultoa_PARM_2:
	.ds 3
__ultoa_PARM_3:
	.ds 1
__ultoa_value_1_1:
	.ds 4
__ultoa_buffer_1_1:
	.ds 32
__ultoa_c_2_2:
	.ds 1
__ltoa_PARM_2:
	.ds 3
__ltoa_PARM_3:
	.ds 1
__ltoa_value_1_1:
	.ds 4
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
;Allocation info for local variables in function '_ultoa'
;------------------------------------------------------------
;sloc0                     Allocated with name '__ultoa_sloc0_1_0'
;string                    Allocated with name '__ultoa_PARM_2'
;radix                     Allocated with name '__ultoa_PARM_3'
;value                     Allocated with name '__ultoa_value_1_1'
;buffer                    Allocated with name '__ultoa_buffer_1_1'
;index                     Allocated with name '__ultoa_index_1_1'
;c                         Allocated with name '__ultoa_c_2_2'
;------------------------------------------------------------
;	_ltoa.c:32: void _ultoa(unsigned long value, char* string, unsigned char radix)
;	-----------------------------------------
;	 function _ultoa
;	-----------------------------------------
__ultoa:
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
	mov	dptr,#__ultoa_value_1_1
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
;	_ltoa.c:37: do {
	mov	dptr,#__ultoa_PARM_3
	movx	a,@dptr
	mov	r2,a
	mov	r3,#0x20
00103$:
;	_ltoa.c:38: unsigned char c = '0' + (value % radix);
	mov	dptr,#__ultoa_value_1_1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	__ultoa_sloc0_1_0,r2
	mov	(__ultoa_sloc0_1_0 + 1),#0x00
	mov	(__ultoa_sloc0_1_0 + 2),#0x00
	mov	(__ultoa_sloc0_1_0 + 3),#0x00
	mov	dptr,#__modulong_PARM_2
	mov	a,__ultoa_sloc0_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(__ultoa_sloc0_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(__ultoa_sloc0_1_0 + 2)
	movx	@dptr,a
	inc	dptr
	mov	a,(__ultoa_sloc0_1_0 + 3)
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	push	ar2
	push	ar3
	lcall	__modulong
	mov	r4,dpl
	mov	r6,b
	mov	r7,a
	pop	ar3
	pop	ar2
	mov	a,#0x30
	add	a,r4
	mov	r5,a
	mov	dptr,#__ultoa_c_2_2
	movx	@dptr,a
;	_ltoa.c:39: if (c > '9') 
	mov	a,r5
	add	a,#0xff - 0x39
	jnc	00102$
;	_ltoa.c:40: c += 'A' - '9' - 1;
	mov	dptr,#__ultoa_c_2_2
	mov	a,#0x37
	add	a,r4
	movx	@dptr,a
00102$:
;	_ltoa.c:41: buffer[--index] = c;
	dec	r3
	mov	a,r3
	add	a,#__ultoa_buffer_1_1
	mov	r4,a
	clr	a
	addc	a,#(__ultoa_buffer_1_1 >> 8)
	mov	r5,a
	mov	dptr,#__ultoa_c_2_2
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	movx	@dptr,a
;	_ltoa.c:42: value /= radix;
	mov	dptr,#__ultoa_value_1_1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__divulong_PARM_2
	mov	a,__ultoa_sloc0_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(__ultoa_sloc0_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(__ultoa_sloc0_1_0 + 2)
	movx	@dptr,a
	inc	dptr
	mov	a,(__ultoa_sloc0_1_0 + 3)
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	push	ar2
	push	ar3
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	pop	ar3
	pop	ar2
	mov	dptr,#__ultoa_value_1_1
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	_ltoa.c:43: } while (value);
	mov	dptr,#__ultoa_value_1_1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jz	00118$
	ljmp	00103$
00118$:
;	_ltoa.c:45: do {
	mov	dptr,#__ultoa_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
00106$:
;	_ltoa.c:46: *string++ = buffer[index];
	mov	a,r3
	add	a,#__ultoa_buffer_1_1
	mov	dpl,a
	clr	a
	addc	a,#(__ultoa_buffer_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r2
	mov	dph,r4
	mov	b,r5
	lcall	__gptrput
	inc	dptr
	mov	r2,dpl
	mov	r4,dph
;	_ltoa.c:47: } while ( ++index != NUMBER_OF_DIGITS );
	inc	r3
	cjne	r3,#0x20,00106$
;	_ltoa.c:49: *string = 0;  /* string terminator */
	mov	dpl,r2
	mov	dph,r4
	mov	b,r5
	clr	a
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function '_ltoa'
;------------------------------------------------------------
;string                    Allocated with name '__ltoa_PARM_2'
;radix                     Allocated with name '__ltoa_PARM_3'
;value                     Allocated with name '__ltoa_value_1_1'
;------------------------------------------------------------
;	_ltoa.c:52: void _ltoa(long value, char* string, unsigned char radix)
;	-----------------------------------------
;	 function _ltoa
;	-----------------------------------------
__ltoa:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	dptr,#__ltoa_value_1_1
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
;	_ltoa.c:54: if (value < 0 && radix == 10) {
	mov	dptr,#__ltoa_value_1_1
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
	jnb	acc.7,00102$
	mov	dptr,#__ltoa_PARM_3
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x0A,00102$
;	_ltoa.c:55: *string++ = '-';
	mov	dptr,#__ltoa_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,#0x2D
	lcall	__gptrput
	mov	dptr,#__ltoa_PARM_2
	mov	a,#0x01
	add	a,r6
	movx	@dptr,a
	clr	a
	addc	a,r7
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
;	_ltoa.c:56: value = -value;
	mov	dptr,#__ltoa_value_1_1
	clr	c
	clr	a
	subb	a,r2
	movx	@dptr,a
	clr	a
	subb	a,r3
	inc	dptr
	movx	@dptr,a
	clr	a
	subb	a,r4
	inc	dptr
	movx	@dptr,a
	clr	a
	subb	a,r5
	inc	dptr
	movx	@dptr,a
00102$:
;	_ltoa.c:58: _ultoa(value, string, radix);
	mov	dptr,#__ltoa_value_1_1
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
	mov	dptr,#__ltoa_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	mov	dptr,#__ltoa_PARM_3
	movx	a,@dptr
	mov	r1,a
	mov	dptr,#__ultoa_PARM_2
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	mov	dptr,#__ultoa_PARM_3
	mov	a,r1
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	ljmp	__ultoa
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
