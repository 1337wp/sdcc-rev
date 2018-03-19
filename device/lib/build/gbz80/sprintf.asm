;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module sprintf
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _vsprintf
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
;sprintf.c:29: static void put_char_to_string( char c, void* p ) _REENTRANT
;	genLabel
;	genFunction
;	---------------------------------
; Function put_char_to_string
; ---------------------------------
_put_char_to_string:
	lda	sp,-2(sp)
;sprintf.c:31: char **buf = (char **)p;
;	genAssign
;	(operands are equal 3)
;sprintf.c:32: *(*buf)++ = c;
;	genPointerGet
;	AOP_STK for 
;	AOP_STK for _put_char_to_string__1_0
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
;	AOP_STK for _put_char_to_string__1_0
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
;	AOP_STK for _put_char_to_string__1_0
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
;sprintf.c:35: int vsprintf (char *buf, const char *format, va_list ap)
;	genLabel
;	genFunction
;	---------------------------------
; Function vsprintf
; ---------------------------------
_vsprintf_start::
_vsprintf:
	lda	sp,-2(sp)
;sprintf.c:38: i = _print_format( put_char_to_string, &buf, format, ap );
;	genAddrOf
	lda	hl,4(sp)
	ld	c,l
	ld	b,h
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
	push	bc
;	genIpush
	ld	hl,#_put_char_to_string
	push	hl
;	genCall
	call	__print_format
	ld	b,d
	ld	c,e
	lda	sp,8(sp)
;	genAssign
;	AOP_STK for _vsprintf_i_1_1
	lda	hl,0(sp)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;sprintf.c:39: *buf = 0;
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
;sprintf.c:40: return i;
;	genRet
;	AOP_STK for _vsprintf_i_1_1
; Dump of IC_LEFT: type AOP_STK size 2
;	 aop_stk -2
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genLabel
00101$:
;	genEndFunction
	lda	sp,2(sp)
	ret
_vsprintf_end::
;sprintf.c:43: int sprintf (char *buf, const char *format, ...)
;	genLabel
;	genFunction
;	---------------------------------
; Function sprintf
; ---------------------------------
_sprintf_start::
_sprintf:
	lda	sp,-4(sp)
;sprintf.c:48: va_start (arg, format);
;	genAddrOf
	lda	hl,8(sp)
	ld	c,l
	ld	b,h
;	genPlus
;	AOP_STK for _sprintf_arg_1_1
;	genPlusIncr
	ld	hl,#0x0002
	add	hl,bc
	ld	a,l
	ld	d,h
	lda	hl,2(sp)
	ld	(hl+),a
	ld	(hl),d
;sprintf.c:49: i = _print_format( put_char_to_string, &buf, format, arg );
;	genAddrOf
	lda	hl,6(sp)
	ld	c,l
	ld	b,h
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _sprintf_arg_1_1
	lda	hl,2(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for 
	lda	hl,10(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
	push	bc
;	genIpush
	ld	hl,#_put_char_to_string
	push	hl
;	genCall
	call	__print_format
	ld	b,d
	ld	c,e
	lda	sp,8(sp)
;	genAssign
;	AOP_STK for _sprintf_i_1_1
	lda	hl,0(sp)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;sprintf.c:50: *buf = 0;
;	genAssign
;	AOP_STK for 
	lda	hl,6(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genAssign (pointer)
;	isBitvar = 0
	ld	a,#0x00
	ld	(bc),a
;sprintf.c:53: return i;
;	genRet
;	AOP_STK for _sprintf_i_1_1
; Dump of IC_LEFT: type AOP_STK size 2
;	 aop_stk -4
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genLabel
00101$:
;	genEndFunction
	lda	sp,4(sp)
	ret
_sprintf_end::
	.area _CODE
	.area _CABS
