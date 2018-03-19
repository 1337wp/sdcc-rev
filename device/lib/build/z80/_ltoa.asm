;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:00 2018
;--------------------------------------------------------
	.module _ltoa
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __ltoa
	.globl __ultoa
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
;  ram data
;--------------------------------------------------------
	.area _DATA
;--------------------------------------------------------
; overlayable items in  ram 
;--------------------------------------------------------
	.area _OVERLAY
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;_ltoa.c:32: void _ultoa(unsigned long value, char* string, unsigned char radix)
;	genLabel
;	genFunction
;	---------------------------------
; Function _ultoa
; ---------------------------------
__ultoa_start::
__ultoa:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-39
	add	hl,sp
	ld	sp,hl
;_ltoa.c:37: do {
;	genAddrOf
;	AOP_STK for __ultoa__1_0
	ld	hl,#0x0007
	add	hl,sp
	ld	-39(ix),l
	ld	-38(ix),h
;	genAssign
;	AOP_STK for __ultoa_index_1_1
	ld	-33(ix),#0x20
;	genLabel
00103$:
;_ltoa.c:38: unsigned char c = '0' + (value % radix);
;	genCast
;	AOP_STK for 
;	AOP_STK for __ultoa__1_0
	ld	a,10(ix)
	ld	-37(ix),a
	ld	-36(ix),#0x00
	ld	-35(ix),#0x00
	ld	-34(ix),#0x00
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for __ultoa__1_0
	ld	l,-35(ix)
	ld	h,-34(ix)
	push	hl
	ld	l,-37(ix)
	ld	h,-36(ix)
	push	hl
;	genIpush
;	AOP_STK for 
	ld	l,6(ix)
	ld	h,7(ix)
	push	hl
	ld	l,4(ix)
	ld	h,5(ix)
	push	hl
;	genCall
	call	__modulong_rrx_s
	ld	b,d
	ld	c,e
	ld	e,h
	ld	d,l
	pop	af
	pop	af
	pop	af
	pop	af
;	genCast
;	genPlus
;	genPlusIncr
	ld	a,d
	add	a,#0x30
	ld	c,a
;_ltoa.c:39: if (c > '9') 
;	genCmpGt
	ld	a,#0x39
	sub	a,c
	jr	NC,00102$
;_ltoa.c:40: c += 'A' - '9' - 1;
;	genPlus
;	genPlusIncr
	ld	a,c
	add	a,#0x07
	ld	c,a
;	genLabel
00102$:
;_ltoa.c:41: buffer[--index] = c;
;	genMinus
;	AOP_STK for __ultoa_index_1_1
	dec	-33(ix)
;	genPlus
;	AOP_STK for __ultoa__1_0
;	AOP_STK for __ultoa_index_1_1
	ld	a,-39(ix)
	add	a,-33(ix)
	ld	e,a
	ld	a,-38(ix)
	adc	a,#0x00
	ld	d,a
;	genAssign (pointer)
;	isBitvar = 0
	ld	a,c
	ld	(de),a
;_ltoa.c:42: value /= radix;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for __ultoa__1_0
	ld	l,-35(ix)
	ld	h,-34(ix)
	push	hl
	ld	l,-37(ix)
	ld	h,-36(ix)
	push	hl
;	genIpush
;	AOP_STK for 
	ld	l,6(ix)
	ld	h,7(ix)
	push	hl
	ld	l,4(ix)
	ld	h,5(ix)
	push	hl
;	genCall
	call	__divulong_rrx_s
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	pop	af
	pop	af
;	genAssign
;	AOP_STK for 
	ld	4(ix),c
	ld	5(ix),b
	ld	6(ix),e
	ld	7(ix),d
;_ltoa.c:43: } while (value);
;	genIfx
;	AOP_STK for 
	ld	a,4(ix)
	or	a,5(ix)
	or	a,6(ix)
	or	a,7(ix)
	jp	NZ,00103$
;_ltoa.c:45: do {
;	genAssign
;	AOP_STK for 
	ld	c,8(ix)
	ld	b,9(ix)
;	genAssign
;	AOP_STK for __ultoa_index_1_1
;	(registers are the same)
;	genLabel
00106$:
;_ltoa.c:46: *string++ = buffer[index];
;	genPlus
;	AOP_STK for __ultoa__1_0
;	AOP_STK for __ultoa_index_1_1
	ld	a,-39(ix)
	add	a,-33(ix)
	ld	d,a
	ld	a,-38(ix)
	adc	a,#0x00
	ld	e,a
;	genPointerGet
	ld	l,d
	ld	h,e
	ld	a,(hl)
;	genAssign (pointer)
;	isBitvar = 0
	ld	(bc),a
;	genPlus
;	genPlusIncr
	inc	bc
;_ltoa.c:47: } while ( ++index != NUMBER_OF_DIGITS );
;	genPlus
;	AOP_STK for __ultoa_index_1_1
;	genPlusIncr
	inc	-33(ix)
;	genCmpEq
;	AOP_STK for __ultoa_index_1_1
; genCmpEq: left 1, right 1, result 0
	ld	a,-33(ix)
	sub	a,#0x20
	jr	Z,00118$
	jr	00106$
00118$:
;_ltoa.c:49: *string = 0;  /* string terminator */
;	genAssign (pointer)
;	isBitvar = 0
	ld	a,#0x00
	ld	(bc),a
;	genLabel
;	genEndFunction
	ld	sp,ix
	pop	ix
	ret
__ultoa_end::
;_ltoa.c:52: void _ltoa(long value, char* string, unsigned char radix)
;	genLabel
;	genFunction
;	---------------------------------
; Function _ltoa
; ---------------------------------
__ltoa_start::
__ltoa:
	push	ix
	ld	ix,#0
	add	ix,sp
;_ltoa.c:54: if (value < 0 && radix == 10) {
;	genCmpLt
;	AOP_STK for 
	ld	a,7(ix)
	bit	7,a
	jr	Z,00102$
;	genCmpEq
;	AOP_STK for 
; genCmpEq: left 1, right 1, result 0
	ld	a,10(ix)
	sub	a,#0x0A
	jr	Z,00109$
	jr	00102$
00109$:
;_ltoa.c:55: *string++ = '-';
;	genAssign
;	AOP_STK for 
	ld	c,8(ix)
	ld	b,9(ix)
;	genAssign (pointer)
;	isBitvar = 0
	ld	a,#0x2D
	ld	(bc),a
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	ld	a,c
	add	a,#0x01
	ld	8(ix),a
	ld	a,b
	adc	a,#0x00
	ld	9(ix),a
;_ltoa.c:56: value = -value;
;	genUminus
;	AOP_STK for 
	xor	a,a
	sbc	a,4(ix)
	ld	4(ix),a
	ld	a,#0x00
	sbc	a,5(ix)
	ld	5(ix),a
	ld	a,#0x00
	sbc	a,6(ix)
	ld	6(ix),a
	ld	a,#0x00
	sbc	a,7(ix)
	ld	7(ix),a
;	genLabel
00102$:
;_ltoa.c:58: _ultoa(value, string, radix);
;	genAssign
;	AOP_STK for 
	ld	c,4(ix)
	ld	b,5(ix)
	ld	e,6(ix)
	ld	d,7(ix)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	ld	a,10(ix)
	push	af
	inc	sp
;	genIpush
;	AOP_STK for 
	ld	l,8(ix)
	ld	h,9(ix)
	push	hl
;	genIpush
	ld	l,e
	ld	h,d
	push	hl
	ld	l,c
	ld	h,b
	push	hl
;	genCall
	call	__ultoa
	pop	af
	pop	af
	pop	af
	inc	sp
;	genLabel
;	genEndFunction
	pop	ix
	ret
__ltoa_end::
	.area _CODE
	.area _CABS
