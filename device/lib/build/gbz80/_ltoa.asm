;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module _ltoa
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __ltoa
	.globl __ultoa
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
	lda	sp,-44(sp)
;_ltoa.c:37: do {
;	genAddrOf
;	AOP_STK for __ultoa__1_0
	lda	hl,12(sp)
	ld	a,l
	ld	d,h
	lda	hl,8(sp)
	ld	(hl+),a
	ld	(hl),d
;	genAssign
;	AOP_STK for __ultoa_index_1_1
	inc	hl
	inc	hl
	ld	(hl),#0x20
;	genLabel
00103$:
;_ltoa.c:38: unsigned char c = '0' + (value % radix);
;	genCast
;	AOP_STK for 
;	AOP_STK for __ultoa__1_0
	lda	hl,52(sp)
	ld	a,(hl)
	lda	hl,4(sp)
	ld	(hl+),a
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for __ultoa__1_0
	dec	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,6(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for 
	lda	hl,52(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,52(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__modulong_rrx_s
;	AOP_STK for __ultoa__1_0
	push	hl
	lda	hl,10(sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	lda	sp,8(sp)
;	genCast
;	AOP_STK for __ultoa__1_0
	lda	hl,0(sp)
	ld	c,(hl)
;	genPlus
;	AOP_STK for __ultoa_c_2_2
;	genPlusIncr
	ld	a,c
	add	a,#0x30
	lda	hl,10(sp)
	ld	(hl),a
;_ltoa.c:39: if (c > '9') 
;	genCmpGt
;	AOP_STK for __ultoa_c_2_2
	ld	a,#0x39
	sub	a,(hl)
	jp	NC,00102$
;_ltoa.c:40: c += 'A' - '9' - 1;
;	genPlus
;	AOP_STK for __ultoa_c_2_2
;	genPlusIncr
	ld	a,(hl)
	add	a,#0x07
	ld	(hl),a
;	genLabel
00102$:
;_ltoa.c:41: buffer[--index] = c;
;	genMinus
;	AOP_STK for __ultoa_index_1_1
	lda	hl,11(sp)
	dec	(hl)
;	genPlus
;	AOP_STK for __ultoa__1_0
;	AOP_STK for __ultoa_index_1_1
	lda	hl,8(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	inc	hl
	ld	l,(hl)
	ld	h,#0x00
	add	hl,de
	ld	b,l
	ld	c,h
;	genAssign (pointer)
;	AOP_STK for __ultoa_c_2_2
;	isBitvar = 0
	ld	e,b
	ld	d,c
	lda	hl,10(sp)
	ld	a,(hl)
	ld	(de),a
;_ltoa.c:42: value /= radix;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for __ultoa__1_0
	lda	hl,6(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,6(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for 
	lda	hl,52(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,52(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__divulong_rrx_s
;	AOP_STK for __ultoa__1_0
	push	hl
	lda	hl,10(sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	lda	sp,8(sp)
;	genAssign
;	AOP_STK for __ultoa__1_0
;	AOP_STK for 
	lda	hl,0(sp)
	ld	d,h
	ld	e,l
	lda	hl,46(sp)
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
;_ltoa.c:43: } while (value);
;	genIfx
;	AOP_STK for 
	lda	hl,46(sp)
	ld	a,(hl+)
	or	a,(hl)
	inc	hl
	or	a,(hl)
	inc	hl
	or	a,(hl)
	jp	NZ,00103$
;_ltoa.c:45: do {
;	genAssign
;	AOP_STK for 
;	AOP_STK for __ultoa__1_0
	inc	hl
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,0(sp)
	ld	(hl+),a
	ld	(hl),e
;	genAssign
;	AOP_STK for __ultoa_index_1_1
;	(registers are the same)
;	genLabel
00106$:
;_ltoa.c:46: *string++ = buffer[index];
;	genPlus
;	AOP_STK for __ultoa__1_0
;	AOP_STK for __ultoa_index_1_1
	lda	hl,8(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	inc	hl
	ld	l,(hl)
	ld	h,#0x00
	add	hl,de
	ld	b,l
	ld	c,h
;	genPointerGet
	ld	e,b
	ld	d,c
	ld	a,(de)
;	genAssign (pointer)
;	AOP_STK for __ultoa__1_0
;	isBitvar = 0
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	(de),a
;	genPlus
;	AOP_STK for __ultoa__1_0
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	NZ,00117$
	inc	hl
	inc	(hl)
00117$:
;_ltoa.c:47: } while ( ++index != NUMBER_OF_DIGITS );
;	genPlus
;	AOP_STK for __ultoa_index_1_1
;	genPlusIncr
	lda	hl,11(sp)
	inc	(hl)
;	genCmpEq
;	AOP_STK for __ultoa_index_1_1
; genCmpEq: left 1, right 1, result 0
	ld	a,(hl)
	sub	a,#0x20
	jp	NZ,00118$
	jr	00119$
00118$:
	jp	00106$
00119$:
;_ltoa.c:49: *string = 0;  /* string terminator */
;	genAssign (pointer)
;	AOP_STK for __ultoa__1_0
;	isBitvar = 0
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,#0x00
	ld	(de),a
;	genLabel
00109$:
;	genEndFunction
	lda	sp,44(sp)
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
	
;_ltoa.c:54: if (value < 0 && radix == 10) {
;	genCmpLt
;	AOP_STK for 
	lda	hl,5(sp)
	ld	a,(hl)
	bit	7,a
	jp	Z,00102$
;	genCmpEq
;	AOP_STK for 
; genCmpEq: left 1, right 1, result 0
	lda	hl,8(sp)
	ld	a,(hl)
	sub	a,#0x0A
	jp	NZ,00108$
	jr	00109$
00108$:
	jp	00102$
00109$:
;_ltoa.c:55: *string++ = '-';
;	genAssign
;	AOP_STK for 
	lda	hl,6(sp)
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
	lda	hl,6(sp)
	ld	(hl+),a
	ld	(hl),d
;_ltoa.c:56: value = -value;
;	genUminus
;	AOP_STK for 
	ld	de,#0x0000
	ld	a,e
	lda	hl,2(sp)
	sub	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a,(hl)
	push	af
	ld	(hl-),a
	ld	(hl),e
	ld	de,#0x0000
	inc	hl
	inc	hl
	pop	af
	ld	a,e
	sbc	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a,(hl)
	ld	(hl-),a
	ld	(hl),e
;	genLabel
00102$:
;_ltoa.c:58: _ultoa(value, string, radix);
;	genAssign
;	(operands are equal 3)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	lda	hl,8(sp)
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
;	AOP_STK for 
	lda	hl,7(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,7(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__ultoa
	lda	sp,7(sp)
;	genLabel
00104$:
;	genEndFunction
	
	ret
__ltoa_end::
	.area _CODE
	.area _CABS
