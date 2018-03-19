;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module _itoa
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __itoa
	.globl __uitoa
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
	lda	sp,-7(sp)
;_itoa.c:21: do {
;	genAssign
;	AOP_STK for __uitoa_index_1_1
	lda	hl,6(sp)
	ld	(hl),#0x00
;	genLabel
00103$:
;_itoa.c:22: string[index] = '0' + (value % radix);
;	genPlus
;	AOP_STK for 
;	AOP_STK for __uitoa_index_1_1
;	AOP_STK for __uitoa__1_0
	lda	hl,11(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	lda	hl,6(sp)
	ld	l,(hl)
	ld	h,#0x00
	add	hl,de
	ld	a,l
	ld	d,h
	lda	hl,0(sp)
	ld	(hl+),a
	ld	(hl),d
;	genCast
;	AOP_STK for 
;	AOP_STK for __uitoa__1_0
	lda	hl,13(sp)
	ld	a,(hl)
	lda	hl,2(sp)
	ld	(hl+),a
	ld	(hl),#0x00
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for __uitoa__1_0
	dec	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for 
	lda	hl,11(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__moduint_rrx_s
	ld	b,d
	ld	c,e
	lda	sp,4(sp)
;	genCast
;	genPlus
;	genPlusIncr
	ld	a,c
	add	a,#0x30
;	genAssign (pointer)
;	AOP_STK for __uitoa__1_0
;	isBitvar = 0
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	(de),a
;_itoa.c:23: if (string[index] > '9')
;	genPointerGet
;	AOP_STK for __uitoa__1_0
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	c,a
;	genCmpGt
	ld	a,#0x39
	sub	a,c
	rlca
	jp	NC,00102$
;_itoa.c:24: string[index] += 'A' - '9' - 1;
;	genPointerGet
;	AOP_STK for __uitoa__1_0
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genPlus
;	genPlusIncr
	ld	c,a
	add	a,#0x07
;	genAssign (pointer)
;	AOP_STK for __uitoa__1_0
;	isBitvar = 0
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	(de),a
;	genLabel
00102$:
;_itoa.c:25: value /= radix;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for __uitoa__1_0
	lda	hl,2(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for 
	lda	hl,11(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__divuint_rrx_s
	ld	b,d
	ld	c,e
	lda	sp,4(sp)
;	genAssign
;	AOP_STK for 
	lda	hl,9(sp)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;_itoa.c:26: ++index;
;	genPlus
;	AOP_STK for __uitoa_index_1_1
;	genPlusIncr
	lda	hl,6(sp)
	inc	(hl)
;_itoa.c:27: } while (value != 0);
;	genIfx
;	AOP_STK for 
	lda	hl,9(sp)
	ld	a,(hl+)
	or	a,(hl)
	jp	NZ,00103$
;_itoa.c:30: string[index--] = '\0';
;	genMinus
;	AOP_STK for __uitoa_index_1_1
;	AOP_STK for __uitoa__1_0
	lda	hl,6(sp)
	ld	a,(hl)
	add	a,#0xFF
	lda	hl,0(sp)
	ld	(hl),a
;	genPlus
;	AOP_STK for 
;	AOP_STK for __uitoa_index_1_1
	lda	hl,11(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	lda	hl,6(sp)
	ld	l,(hl)
	ld	h,#0x00
	add	hl,de
	ld	b,l
	ld	c,h
;	genAssign (pointer)
;	isBitvar = 0
	ld	e,b
	ld	d,c
	ld	a,#0x00
	ld	(de),a
;_itoa.c:33: while (index > i) {
;	genAssign
;	AOP_STK for __uitoa_i_1_1
	lda	hl,5(sp)
	ld	(hl),#0x00
;	genAssign
;	AOP_STK for __uitoa__1_0
;	AOP_STK for __uitoa__1_0
	lda	hl,0(sp)
	ld	a,(hl)
	ld	(hl),a
;	genLabel
00106$:
;	genCmpGt
;	AOP_STK for __uitoa__1_0
;	AOP_STK for __uitoa_i_1_1
	lda	hl,5(sp)
	ld	a,(hl)
	lda	hl,0(sp)
	sub	a,(hl)
	rlca
	jp	NC,00109$
;_itoa.c:34: char tmp = string[i];
;	genPlus
;	AOP_STK for 
;	AOP_STK for __uitoa_i_1_1
;	AOP_STK for __uitoa__1_0
	lda	hl,11(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	lda	hl,5(sp)
	ld	l,(hl)
	ld	h,#0x00
	add	hl,de
	ld	a,l
	ld	d,h
	lda	hl,2(sp)
;	genPointerGet
;	AOP_STK for __uitoa__1_0
	ld	(hl+),a
	ld	(hl),d
	ld	e,a
	ld	a,(de)
	ld	c,a
;	genAssign
;	AOP_STK for __uitoa_tmp_2_3
	inc	hl
	ld	(hl),c
;_itoa.c:35: string[i] = string[index];
;	genPlus
;	AOP_STK for 
;	AOP_STK for __uitoa__1_0
	lda	hl,11(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	lda	hl,0(sp)
	ld	l,(hl)
	ld	h,#0x00
	add	hl,de
	ld	c,l
	ld	b,h
;	genPointerGet
	ld	a,(bc)
;	genAssign (pointer)
;	AOP_STK for __uitoa__1_0
;	isBitvar = 0
	lda	hl,2(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	(de),a
;_itoa.c:36: string[index] = tmp;
;	genAssign (pointer)
;	AOP_STK for __uitoa_tmp_2_3
;	isBitvar = 0
	inc	hl
	ld	a,(hl)
	ld	(bc),a
;_itoa.c:37: ++i;
;	genPlus
;	AOP_STK for __uitoa_i_1_1
;	genPlusIncr
	inc	hl
	inc	(hl)
;_itoa.c:38: --index;
;	genMinus
;	AOP_STK for __uitoa__1_0
	lda	hl,0(sp)
	dec	(hl)
;	genGoto
	jp	00106$
;	genLabel
00109$:
;	genEndFunction
	lda	sp,7(sp)
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
	
;_itoa.c:44: if (value < 0 && radix == 10) {
;	genCmpLt
;	AOP_STK for 
	lda	hl,3(sp)
	ld	a,(hl)
	bit	7,a
	jp	Z,00102$
;	genCmpEq
;	AOP_STK for 
; genCmpEq: left 1, right 1, result 0
	lda	hl,6(sp)
	ld	a,(hl)
	sub	a,#0x0A
	jp	NZ,00108$
	jr	00109$
00108$:
	jp	00102$
00109$:
;_itoa.c:45: *string++ = '-';
;	genAssign
;	AOP_STK for 
	lda	hl,4(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genAssign (pointer)
;	isBitvar = 0
	ld	a,#0x2D
	ld	(bc),a
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	ld	hl,#0x0001
	add	hl,bc
	ld	a,l
	ld	d,h
	lda	hl,4(sp)
	ld	(hl+),a
	ld	(hl),d
;_itoa.c:46: value = -value;
;	genUminus
;	AOP_STK for 
	xor	a,a
	lda	hl,2(sp)
	ld	a,#0x00
	sbc	a,(hl)
	ld	(hl+),a
	ld	a,#0x00
	sbc	a,(hl)
	ld	(hl),a
;	genLabel
00102$:
;_itoa.c:48: _uitoa(value, string, radix);
;	genAssign
;	AOP_STK for 
	lda	hl,2(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	lda	hl,6(sp)
	ld	a,(hl)
	push	af
	inc	sp
;	genIpush
;	AOP_STK for 
	dec	hl
	dec	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
	push	bc
;	genCall
	call	__uitoa
	lda	sp,5(sp)
;	genLabel
00104$:
;	genEndFunction
	
	ret
__itoa_end::
	.area _CODE
	.area _CABS
