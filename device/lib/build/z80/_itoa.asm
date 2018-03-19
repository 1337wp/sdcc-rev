;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:00 2018
;--------------------------------------------------------
	.module _itoa
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __itoa
	.globl __uitoa
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
;_itoa.c:16: void _uitoa(unsigned int value, char* string, unsigned char radix)
;	genLabel
;	genFunction
;	---------------------------------
; Function _uitoa
; ---------------------------------
__uitoa_start::
__uitoa:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-4
	add	hl,sp
	ld	sp,hl
;_itoa.c:21: do {
;	genAssign
;	AOP_STK for __uitoa_index_1_1
	ld	-1(ix),#0x00
;	genLabel
00103$:
;_itoa.c:22: string[index] = '0' + (value % radix);
;	genPlus
;	AOP_STK for 
;	AOP_STK for __uitoa_index_1_1
	ld	a,6(ix)
	add	a,-1(ix)
	ld	e,a
	ld	a,7(ix)
	adc	a,#0x00
	ld	d,a
;	genCast
;	AOP_STK for 
;	AOP_STK for __uitoa__1_0
	ld	a,8(ix)
	ld	-4(ix),a
	ld	-3(ix),#0x00
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 1 bcInUse: 0 deSending: 0
	push	de
;	AOP_STK for __uitoa__1_0
	ld	l,-4(ix)
	ld	h,-3(ix)
	push	hl
;	genIpush
;	AOP_STK for 
	ld	l,4(ix)
	ld	h,5(ix)
	push	hl
;	genCall
	call	__moduint_rrx_s
	ld	c,h
	ld	b,l
	pop	af
	pop	af
	pop	de
;	genCast
;	genPlus
;	genPlusIncr
	ld	a,b
	add	a,#0x30
;	genAssign (pointer)
;	isBitvar = 0
	ld	(de),a
;_itoa.c:23: if (string[index] > '9')
;	genPointerGet
	ld	a,(de)
	ld	c,a
;	genCmpGt
	ld	a,#0x39
	sub	a,c
	jp	P,00102$
;_itoa.c:24: string[index] += 'A' - '9' - 1;
;	genPointerGet
	ld	a,(de)
;	genPlus
;	genPlusIncr
	ld	c,a
	add	a,#0x07
;	genAssign (pointer)
;	isBitvar = 0
	ld	(de),a
;	genLabel
00102$:
;_itoa.c:25: value /= radix;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for __uitoa__1_0
	ld	l,-4(ix)
	ld	h,-3(ix)
	push	hl
;	genIpush
;	AOP_STK for 
	ld	l,4(ix)
	ld	h,5(ix)
	push	hl
;	genCall
	call	__divuint_rrx_s
	ld	b,h
	ld	c,l
	pop	af
	pop	af
;	genAssign
;	AOP_STK for 
	ld	4(ix),c
	ld	5(ix),b
;_itoa.c:26: ++index;
;	genPlus
;	AOP_STK for __uitoa_index_1_1
;	genPlusIncr
	inc	-1(ix)
;_itoa.c:27: } while (value != 0);
;	genIfx
;	AOP_STK for 
	ld	a,4(ix)
	or	a,5(ix)
	jp	NZ,00103$
;_itoa.c:30: string[index--] = '\0';
;	genMinus
;	AOP_STK for __uitoa_index_1_1
	ld	a,-1(ix)
	add	a,#0xFF
	ld	c,a
;	genPlus
;	AOP_STK for 
;	AOP_STK for __uitoa_index_1_1
	ld	a,6(ix)
	add	a,-1(ix)
	ld	e,a
	ld	a,7(ix)
	adc	a,#0x00
	ld	d,a
;	genAssign (pointer)
;	isBitvar = 0
	ld	a,#0x00
	ld	(de),a
;_itoa.c:33: while (index > i) {
;	genAssign
;	AOP_STK for __uitoa_i_1_1
	ld	-2(ix),#0x00
;	genAssign
;	(registers are the same)
;	genLabel
00106$:
;	genCmpGt
;	AOP_STK for __uitoa_i_1_1
	ld	a,-2(ix)
	sub	a,c
	jp	P,00109$
;_itoa.c:34: char tmp = string[i];
;	genPlus
;	AOP_STK for 
;	AOP_STK for __uitoa_i_1_1
;	AOP_STK for __uitoa__1_0
	ld	a,6(ix)
	add	a,-2(ix)
	ld	-4(ix),a
	ld	a,7(ix)
	adc	a,#0x00
	ld	-3(ix),a
;	genPointerGet
;	AOP_STK for __uitoa__1_0
	ld	l,-4(ix)
	ld	h,-3(ix)
	ld	b,(hl)
;	genAssign
	ld	d,b
;_itoa.c:35: string[i] = string[index];
;	genPlus
;	AOP_STK for 
	ld	a,6(ix)
	add	a,c
	ld	b,a
	ld	a,7(ix)
	adc	a,#0x00
	ld	e,a
;	genPointerGet
	ld	l,b
	ld	h,e
	ld	a,(hl)
;	genAssign (pointer)
;	AOP_STK for __uitoa__1_0
;	isBitvar = 0
	ld	l,-4(ix)
	ld	h,-3(ix)
	ld	(hl),a
;_itoa.c:36: string[index] = tmp;
;	genAssign (pointer)
;	isBitvar = 0
	ld	l,b
	ld	h,e
	ld	(hl),d
;_itoa.c:37: ++i;
;	genPlus
;	AOP_STK for __uitoa_i_1_1
;	genPlusIncr
	inc	-2(ix)
;_itoa.c:38: --index;
;	genMinus
	dec	c
;	genGoto
	jr	00106$
;	genLabel
00109$:
;	genEndFunction
	ld	sp,ix
	pop	ix
	ret
__uitoa_end::
;_itoa.c:42: void _itoa(int value, char* string, unsigned char radix)
;	genLabel
;	genFunction
;	---------------------------------
; Function _itoa
; ---------------------------------
__itoa_start::
__itoa:
	push	ix
	ld	ix,#0
	add	ix,sp
;_itoa.c:44: if (value < 0 && radix == 10) {
;	genCmpLt
;	AOP_STK for 
	ld	a,5(ix)
	bit	7,a
	jr	Z,00102$
;	genCmpEq
;	AOP_STK for 
; genCmpEq: left 1, right 1, result 0
	ld	a,8(ix)
	sub	a,#0x0A
	jr	Z,00109$
	jr	00102$
00109$:
;_itoa.c:45: *string++ = '-';
;	genAssign
;	AOP_STK for 
	ld	c,6(ix)
	ld	b,7(ix)
;	genAssign (pointer)
;	isBitvar = 0
	ld	a,#0x2D
	ld	(bc),a
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	ld	a,c
	add	a,#0x01
	ld	6(ix),a
	ld	a,b
	adc	a,#0x00
	ld	7(ix),a
;_itoa.c:46: value = -value;
;	genUminus
;	AOP_STK for 
	xor	a,a
	sbc	a,4(ix)
	ld	4(ix),a
	ld	a,#0x00
	sbc	a,5(ix)
	ld	5(ix),a
;	genLabel
00102$:
;_itoa.c:48: _uitoa(value, string, radix);
;	genAssign
;	AOP_STK for 
	ld	c,4(ix)
	ld	b,5(ix)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	ld	a,8(ix)
	push	af
	inc	sp
;	genIpush
;	AOP_STK for 
	ld	l,6(ix)
	ld	h,7(ix)
	push	hl
;	genIpush
	push	bc
;	genCall
	call	__uitoa
	pop	af
	pop	af
	inc	sp
;	genLabel
;	genEndFunction
	pop	ix
	ret
__itoa_end::
	.area _CODE
	.area _CABS
