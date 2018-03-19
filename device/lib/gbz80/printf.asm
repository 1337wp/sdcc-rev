;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:02 2018
;--------------------------------------------------------
	.module printf
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __buf_emitter
	.globl __char_emitter
	.globl __printf
	.globl _printf
	.globl _sprintf
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
;printf.c:10: static void _printn(unsigned u, unsigned base, char issigned, void (*emitter)(char, void *), void *pData)
;	genLabel
;	genFunction
;	---------------------------------
; Function _printn
; ---------------------------------
__printn:
	
;printf.c:12: const char *_hex = "0123456789ABCDEF";
;printf.c:13: if (issigned && ((int)u < 0)) {
;	genIfx
;	AOP_STK for 
	xor	a,a
	lda	hl,6(sp)
	or	a,(hl)
	jp	Z,00102$
;	genAssign
;	AOP_STK for 
	lda	hl,2(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genCmpLt
	ld	a,b
	bit	7,a
	jp	Z,00102$
;printf.c:14: (*emitter)('-', pData);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
;	AOP_STK for 
	lda	hl,11(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
	ld	a,#0x2D
	push	af
	inc	sp
;	genPcall
;	AOP_STK for 
	ld	hl,#00111$
	push	hl
	lda	hl,14(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	jp	(hl)
00111$:
	lda	sp,3(sp)
	pop	bc
;printf.c:15: u = (unsigned)-((int)u);
;	genAssign
;	(registers are the same)
;	genUminus
	xor	a,a
	sbc	a,c
	ld	c,a
	ld	a,#0x00
	sbc	a,b
	ld	b,a
;	genAssign
;	AOP_STK for 
	lda	hl,2(sp)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;	genLabel
00102$:
;printf.c:17: if (u >= base)
;	genCmpLt
;	AOP_STK for 
;	AOP_STK for 
	lda	hl,2(sp)
	ld	d,h
	ld	e,l
	inc	hl
	inc	hl
	ld	a,(de)
	sub	a,(hl)
	inc	hl
	inc	de
	ld	a,(de)
	sbc	a,(hl)
	jp	C,00105$
;printf.c:18: _printn(u/base, base, 0, emitter, pData);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	lda	hl,4(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for 
	lda	hl,4(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__divuint_rrx_s
	ld	b,d
	ld	c,e
	lda	sp,4(sp)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	lda	hl,9(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for 
	lda	hl,9(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
	ld	a,#0x00
	push	af
	inc	sp
;	genIpush
;	AOP_STK for 
	lda	hl,9(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
	push	bc
;	genCall
	call	__printn
	lda	sp,9(sp)
;	genLabel
00105$:
;printf.c:19: (*emitter)(_hex[u%base], pData);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	lda	hl,4(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for 
	lda	hl,4(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__moduint_rrx_s
	ld	b,d
	ld	c,e
	lda	sp,4(sp)
;	genPlus
	ld	hl,#__str_0
	add	hl,bc
	ld	c,l
	ld	b,h
;	genPointerGet
	ld	a,(bc)
	ld	c,a
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	lda	hl,9(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
	ld	a,c
	push	af
	inc	sp
;	genPcall
;	AOP_STK for 
	ld	hl,#00112$
	push	hl
	lda	hl,12(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	jp	(hl)
00112$:
	lda	sp,3(sp)
;	genLabel
00106$:
;	genEndFunction
	
	ret
__str_0:
	.ascii "0123456789ABCDEF"
	.db 0x00
;printf.c:22: STATIC void _printf(const char *format, void (*emitter)(char, void *), void *pData, va_list va)
;	genLabel
;	genFunction
;	---------------------------------
; Function _printf
; ---------------------------------
__printf_start::
__printf:
	lda	sp,-2(sp)
;printf.c:24: while (*format) {
;	genLabel
00113$:
;	genAssign
;	AOP_STK for 
	lda	hl,4(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPointerGet
;	AOP_STK for __printf__1_0
	ld	a,(bc)
	lda	hl,1(sp)
;	genIfx
;	AOP_STK for __printf__1_0
	ld	(hl),a
	or	a,a
	jp	Z,00116$
;printf.c:25: if (*format == '%') {
;	genCmpEq
;	AOP_STK for __printf__1_0
; genCmpEq: left 1, right 1, result 0
	ld	a,(hl)
	sub	a,#0x25
	jp	NZ,00129$
	jr	00130$
00129$:
	jp	00111$
00130$:
;printf.c:26: switch (*++format) {
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
;	genAssign
;	AOP_STK for 
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPointerGet
	ld	a,(bc)
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	c,a
	sub	a,#0x63
	jp	Z,00101$
00131$:
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	a,c
	sub	a,#0x64
	jp	Z,00103$
00132$:
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	a,c
	sub	a,#0x73
	jp	Z,00105$
00133$:
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	a,c
	sub	a,#0x75
	jp	Z,00102$
00134$:
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	a,c
	sub	a,#0x78
	jp	Z,00104$
00135$:
;	genGoto
	jp	00112$
;printf.c:27: case 'c': {
;	genLabel
00101$:
;printf.c:28: char c = (char)va_arg(va, int);
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	lda	hl,10(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	inc	bc
;	genAssign
;	AOP_STK for 
	dec	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
;	genMinus
	dec	bc
	dec	bc
;	genPointerGet
	ld	e,c
	ld	d,b
	ld	a,(de)
	ld	c,a
	inc	de
	ld	a,(de)
	ld	b,a
;	genCast
;printf.c:29: (*emitter)(c, pData);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	lda	hl,8(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
	ld	a,c
	push	af
	inc	sp
;	genPcall
;	AOP_STK for 
	ld	hl,#00136$
	push	hl
	lda	hl,11(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	jp	(hl)
00136$:
	lda	sp,3(sp)
;printf.c:30: break;
;	genGoto
	jp	00112$
;printf.c:32: case 'u':
;	genLabel
00102$:
;printf.c:34: unsigned u = va_arg(va, unsigned);
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	lda	hl,10(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	inc	bc
;	genAssign
;	AOP_STK for 
	dec	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
;	genMinus
	dec	bc
	dec	bc
;	genPointerGet
	ld	e,c
	ld	d,b
	ld	a,(de)
	ld	c,a
	inc	de
	ld	a,(de)
	ld	b,a
;	genAssign
;	(registers are the same)
;printf.c:35: _printn(u, 10, 0, emitter, pData);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	lda	hl,8(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for 
	lda	hl,8(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
	ld	a,#0x00
	push	af
	inc	sp
;	genIpush
	ld	hl,#0x000A
	push	hl
;	genIpush
	push	bc
;	genCall
	call	__printn
	lda	sp,9(sp)
;printf.c:36: break;
;	genGoto
	jp	00112$
;printf.c:38: case 'd':
;	genLabel
00103$:
;printf.c:40: unsigned u = va_arg(va, unsigned);
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	lda	hl,10(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	inc	bc
;	genAssign
;	AOP_STK for 
	dec	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
;	genMinus
	dec	bc
	dec	bc
;	genPointerGet
	ld	e,c
	ld	d,b
	ld	a,(de)
	ld	c,a
	inc	de
	ld	a,(de)
	ld	b,a
;	genAssign
;	(registers are the same)
;printf.c:41: _printn(u, 10, 1, emitter, pData);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	lda	hl,8(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for 
	lda	hl,8(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
	ld	a,#0x01
	push	af
	inc	sp
;	genIpush
	ld	hl,#0x000A
	push	hl
;	genIpush
	push	bc
;	genCall
	call	__printn
	lda	sp,9(sp)
;printf.c:42: break;
;	genGoto
	jp	00112$
;printf.c:44: case 'x':
;	genLabel
00104$:
;printf.c:46: unsigned u = va_arg(va, unsigned);
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	lda	hl,10(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	inc	bc
;	genAssign
;	AOP_STK for 
	dec	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
;	genMinus
	dec	bc
	dec	bc
;	genPointerGet
	ld	e,c
	ld	d,b
	ld	a,(de)
	ld	c,a
	inc	de
	ld	a,(de)
	ld	b,a
;	genAssign
;	(registers are the same)
;printf.c:47: _printn(u, 16, 0, emitter, pData);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	lda	hl,8(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for 
	lda	hl,8(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
	ld	a,#0x00
	push	af
	inc	sp
;	genIpush
	ld	hl,#0x0010
	push	hl
;	genIpush
	push	bc
;	genCall
	call	__printn
	lda	sp,9(sp)
;printf.c:48: break;
;	genGoto
	jp	00112$
;printf.c:50: case 's':
;	genLabel
00105$:
;printf.c:52: char *s = va_arg(va, char *);
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	lda	hl,10(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	inc	bc
;	genAssign
;	AOP_STK for 
	dec	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
;	genMinus
	dec	bc
	dec	bc
;	genPointerGet
	ld	e,c
	ld	d,b
	ld	a,(de)
	ld	c,a
	inc	de
	ld	a,(de)
	ld	b,a
;	genAssign
;	(registers are the same)
;printf.c:53: while (*s) {
;	genAssign
;	(registers are the same)
;	genLabel
00106$:
;	genPointerGet
;	AOP_STK for __printf__1_0
	ld	a,(bc)
	lda	hl,0(sp)
;	genIfx
;	AOP_STK for __printf__1_0
	ld	(hl),a
	or	a,a
	jp	Z,00112$
;printf.c:54: (*emitter)(*s, pData);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
;	AOP_STK for 
	lda	hl,10(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for __printf__1_0
	lda	hl,4(sp)
	ld	a,(hl)
	push	af
	inc	sp
;	genPcall
;	AOP_STK for 
	ld	hl,#00137$
	push	hl
	lda	hl,13(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	jp	(hl)
00137$:
	lda	sp,3(sp)
	pop	bc
;printf.c:55: s++;
;	genPlus
;	genPlusIncr
	inc	bc
;	genGoto
	jp	00106$
;printf.c:58: }
;	genLabel
00111$:
;printf.c:61: (*emitter)(*format, pData);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	lda	hl,8(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for __printf__1_0
	lda	hl,3(sp)
	ld	a,(hl)
	push	af
	inc	sp
;	genPcall
;	AOP_STK for 
	ld	hl,#00138$
	push	hl
	lda	hl,11(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	jp	(hl)
00138$:
	lda	sp,3(sp)
;	genLabel
00112$:
;printf.c:63: format++;
;	genAssign
;	AOP_STK for 
	lda	hl,4(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
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
;	genGoto
	jp	00113$
;	genLabel
00116$:
;	genEndFunction
	lda	sp,2(sp)
	ret
__printf_end::
;printf.c:69: STATIC void _char_emitter(char c, void *pData)
;	genLabel
;	genFunction
;	---------------------------------
; Function _char_emitter
; ---------------------------------
__char_emitter_start::
__char_emitter:
	
;printf.c:74: putchar(c);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	lda	hl,2(sp)
	ld	a,(hl)
	push	af
	inc	sp
;	genCall
	call	_putchar
	lda	sp,1(sp)
;	genLabel
00101$:
;	genEndFunction
	
	ret
__char_emitter_end::
;printf.c:77: int printf(const char *format, ...)
;	genLabel
;	genFunction
;	---------------------------------
; Function printf
; ---------------------------------
_printf_start::
_printf:
	
;printf.c:80: va_start(va, format);
;	genAddrOf
	lda	hl,2(sp)
	ld	c,l
	ld	b,h
;	genPlus
;	genPlusIncr
	inc	bc
	inc	bc
;printf.c:82: _printf(format, _char_emitter, NULL, va);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	push	bc
;	genIpush
	ld	hl,#0x0000
	push	hl
;	genIpush
	ld	hl,#__char_emitter
	push	hl
;	genIpush
;	AOP_STK for 
	lda	hl,8(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__printf
	lda	sp,8(sp)
;printf.c:85: return 0;
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 2
	ld	de,#0x0000
;	genLabel
00101$:
;	genEndFunction
	
	ret
_printf_end::
;printf.c:88: STATIC void _buf_emitter(char c, void *pData)
;	genLabel
;	genFunction
;	---------------------------------
; Function _buf_emitter
; ---------------------------------
__buf_emitter_start::
__buf_emitter:
	lda	sp,-2(sp)
;printf.c:90: *((*((char **)pData)))++ = c;
;	genAssign
;	(operands are equal 3)
;	genPointerGet
;	AOP_STK for 
;	AOP_STK for __buf_emitter__1_0
	lda	hl,5(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	lda	hl,0(sp)
	ld	(hl+),a
	inc	de
	ld	a,(de)
;	genPlus
;	AOP_STK for __buf_emitter__1_0
;	genPlusIncr
	ld	(hl-),a
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
;	genAssign (pointer)
;	AOP_STK for 
;	isBitvar = 0
	lda	hl,5(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,c
	ld	(de),a
	inc	de
	ld	a,b
	ld	(de),a
;	genAssign (pointer)
;	AOP_STK for __buf_emitter__1_0
;	AOP_STK for 
;	isBitvar = 0
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	lda	hl,4(sp)
	ld	a,(hl)
	ld	(de),a
;	genLabel
00101$:
;	genEndFunction
	lda	sp,2(sp)
	ret
__buf_emitter_end::
;printf.c:93: int sprintf(char *pInto, const char *format, ...)
;	genLabel
;	genFunction
;	---------------------------------
; Function sprintf
; ---------------------------------
_sprintf_start::
_sprintf:
	lda	sp,-2(sp)
;printf.c:96: va_start(va, format);
;	genAddrOf
	lda	hl,6(sp)
	ld	c,l
	ld	b,h
;	genPlus
;	AOP_STK for _sprintf_va_1_1
;	genPlusIncr
	ld	hl,#0x0002
	add	hl,bc
	ld	a,l
	ld	d,h
	lda	hl,0(sp)
	ld	(hl+),a
	ld	(hl),d
;printf.c:98: _printf(format, _buf_emitter, &pInto, va);
;	genAddrOf
	lda	hl,4(sp)
	ld	c,l
	ld	b,h
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _sprintf_va_1_1
	lda	hl,0(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
	push	bc
;	genIpush
	ld	hl,#__buf_emitter
	push	hl
;	genIpush
;	AOP_STK for 
	lda	hl,12(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__printf
	lda	sp,8(sp)
;printf.c:99: *pInto++ = '\0';
;	genAssign
;	AOP_STK for 
	lda	hl,4(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genAssign (pointer)
;	isBitvar = 0
	ld	a,#0x00
	ld	(bc),a
;printf.c:102: return 0;
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 2
	ld	de,#0x0000
;	genLabel
00101$:
;	genEndFunction
	lda	sp,2(sp)
	ret
_sprintf_end::
	.area _CODE
	.area _CABS
