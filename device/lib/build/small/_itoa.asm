;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:24 2018
;--------------------------------------------------------
	.module _itoa
	.optsdcc -mmcs51 --model-small
	
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
__uitoa_PARM_2:
	.ds 3
__uitoa_PARM_3:
	.ds 1
__uitoa_value_1_1:
	.ds 2
__uitoa_index_1_1:
	.ds 1
__uitoa_i_1_1:
	.ds 1
__uitoa_tmp_2_3:
	.ds 1
__itoa_PARM_2:
	.ds 3
__itoa_PARM_3:
	.ds 1
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
	mov	__uitoa_value_1_1,dpl
	mov	(__uitoa_value_1_1 + 1),dph
;	_itoa.c:21: do {
	mov	__uitoa_index_1_1,#0x00
00103$:
;	_itoa.c:22: string[index] = '0' + (value % radix);
	mov	a,__uitoa_index_1_1
	add	a,__uitoa_PARM_2
	mov	r5,a
	clr	a
	addc	a,(__uitoa_PARM_2 + 1)
	mov	r6,a
	mov	r7,(__uitoa_PARM_2 + 2)
	mov	r0,__uitoa_PARM_3
	mov	r1,#0x00
	mov	__moduint_PARM_2,r0
	mov	(__moduint_PARM_2 + 1),r1
	mov	dpl,__uitoa_value_1_1
	mov	dph,(__uitoa_value_1_1 + 1)
	push	ar5
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	lcall	__moduint
	mov	r4,dpl
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar5
	mov	a,#0x30
	add	a,r4
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	_itoa.c:23: if (string[index] > '9')
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	clr	c
	mov	a,#(0x39 ^ 0x80)
	mov	b,r2
	xrl	b,#0x80
	subb	a,b
	jnc	00102$
;	_itoa.c:24: string[index] += 'A' - '9' - 1;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	mov	a,#0x07
	add	a,r2
	mov	r2,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
00102$:
;	_itoa.c:25: value /= radix;
	mov	__divuint_PARM_2,r0
	mov	(__divuint_PARM_2 + 1),r1
	mov	dpl,__uitoa_value_1_1
	mov	dph,(__uitoa_value_1_1 + 1)
	lcall	__divuint
	mov	__uitoa_value_1_1,dpl
	mov	(__uitoa_value_1_1 + 1),dph
;	_itoa.c:26: ++index;
	inc	__uitoa_index_1_1
;	_itoa.c:27: } while (value != 0);
	mov	a,__uitoa_value_1_1
	orl	a,(__uitoa_value_1_1 + 1)
	jz	00119$
	ljmp	00103$
00119$:
;	_itoa.c:30: string[index--] = '\0';
	mov	a,__uitoa_index_1_1
	dec	a
	mov	r2,a
	mov	a,__uitoa_index_1_1
	add	a,__uitoa_PARM_2
	mov	r3,a
	clr	a
	addc	a,(__uitoa_PARM_2 + 1)
	mov	r4,a
	mov	r5,(__uitoa_PARM_2 + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	clr	a
	lcall	__gptrput
;	_itoa.c:33: while (index > i) {
	mov	__uitoa_i_1_1,#0x00
00106$:
	clr	c
	mov	a,__uitoa_i_1_1
	xrl	a,#0x80
	mov	b,r2
	xrl	b,#0x80
	subb	a,b
	jnc	00109$
;	_itoa.c:34: char tmp = string[i];
	mov	a,__uitoa_i_1_1
	add	a,__uitoa_PARM_2
	mov	r4,a
	clr	a
	addc	a,(__uitoa_PARM_2 + 1)
	mov	r5,a
	mov	r6,(__uitoa_PARM_2 + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	__uitoa_tmp_2_3,a
;	_itoa.c:35: string[i] = string[index];
	mov	a,r2
	add	a,__uitoa_PARM_2
	mov	r0,a
	clr	a
	addc	a,(__uitoa_PARM_2 + 1)
	mov	r1,a
	mov	r7,(__uitoa_PARM_2 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrput
;	_itoa.c:36: string[index] = tmp;
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	mov	a,__uitoa_tmp_2_3
	lcall	__gptrput
;	_itoa.c:37: ++i;
	inc	__uitoa_i_1_1
;	_itoa.c:38: --index;
	dec	r2
	sjmp	00106$
00109$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_itoa'
;------------------------------------------------------------
;string                    Allocated with name '__itoa_PARM_2'
;radix                     Allocated with name '__itoa_PARM_3'
;value                     Allocated to registers r2 r3 
;------------------------------------------------------------
;	_itoa.c:42: void _itoa(int value, char* string, unsigned char radix)
;	-----------------------------------------
;	 function _itoa
;	-----------------------------------------
__itoa:
	mov	r2,dpl
;	_itoa.c:44: if (value < 0 && radix == 10) {
	mov	a,dph
	mov	r3,a
	jnb	acc.7,00102$
	mov	a,#0x0A
	cjne	a,__itoa_PARM_3,00102$
;	_itoa.c:45: *string++ = '-';
	mov	r4,__itoa_PARM_2
	mov	r5,(__itoa_PARM_2 + 1)
	mov	r6,(__itoa_PARM_2 + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,#0x2D
	lcall	__gptrput
	mov	a,#0x01
	add	a,r4
	mov	__itoa_PARM_2,a
	clr	a
	addc	a,r5
	mov	(__itoa_PARM_2 + 1),a
	mov	(__itoa_PARM_2 + 2),r6
;	_itoa.c:46: value = -value;
	clr	c
	clr	a
	subb	a,r2
	mov	r2,a
	clr	a
	subb	a,r3
	mov	r3,a
00102$:
;	_itoa.c:48: _uitoa(value, string, radix);
	mov	__uitoa_PARM_2,__itoa_PARM_2
	mov	(__uitoa_PARM_2 + 1),(__itoa_PARM_2 + 1)
	mov	(__uitoa_PARM_2 + 2),(__itoa_PARM_2 + 2)
	mov	__uitoa_PARM_3,__itoa_PARM_3
	mov	dpl,r2
	mov	dph,r3
	ljmp	__uitoa
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
