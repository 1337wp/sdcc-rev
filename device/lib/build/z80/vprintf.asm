;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module vprintf
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _vprintf
	.globl _printf
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
;vprintf.c:29: static void put_char_to_stdout( char c, void* p ) _REENTRANT
;	genLabel
;	genFunction
;	---------------------------------
; Function put_char_to_stdout
; ---------------------------------
_put_char_to_stdout:
	push	ix
	ld	ix,#0
	add	ix,sp
;vprintf.c:32: putchar( c );
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	ld	a,4(ix)
	push	af
	inc	sp
;	genCall
	call	_putchar
	inc	sp
;	genLabel
;	genEndFunction
	pop	ix
	ret
;vprintf.c:35: int vprintf (const char *format, va_list ap)
;	genLabel
;	genFunction
;	---------------------------------
; Function vprintf
; ---------------------------------
_vprintf_start::
_vprintf:
	push	ix
	ld	ix,#0
	add	ix,sp
;vprintf.c:37: return _print_format( put_char_to_stdout, NULL, format, ap );
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	ld	l,6(ix)
	ld	h,7(ix)
	push	hl
;	genIpush
;	AOP_STK for 
	ld	l,4(ix)
	ld	h,5(ix)
	push	hl
;	genIpush
	ld	hl,#0x0000
	push	hl
;	genIpush
	ld	hl,#_put_char_to_stdout
	push	hl
;	genCall
	call	__print_format
	pop	af
	pop	af
	pop	af
	pop	af
;	genRet
; Dump of IC_LEFT: type AOP_STR size 2
;	genLabel
;	genEndFunction
	pop	ix
	ret
_vprintf_end::
;vprintf.c:40: int printf (const char *format, ...)
;	genLabel
;	genFunction
;	---------------------------------
; Function printf
; ---------------------------------
_printf_start::
_printf:
	push	ix
	ld	ix,#0
	add	ix,sp
;vprintf.c:45: va_start (arg, format);
;	genAddrOf
	ld	hl,#0x0004
	add	hl,sp
	ld	c,l
	ld	b,h
;	genPlus
;	genPlusIncr
	inc	bc
	inc	bc
;vprintf.c:46: i = _print_format( put_char_to_stdout, NULL, format, arg );
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	push	bc
;	genIpush
;	AOP_STK for 
	ld	l,4(ix)
	ld	h,5(ix)
	push	hl
;	genIpush
	ld	hl,#0x0000
	push	hl
;	genIpush
	ld	hl,#_put_char_to_stdout
	push	hl
;	genCall
	call	__print_format
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	pop	af
	pop	af
;	genAssign
	ld	l,c
	ld	h,b
;vprintf.c:49: return i;
;	genRet
; Dump of IC_LEFT: type AOP_STR size 2
;	genLabel
;	genEndFunction
	pop	ix
	ret
_printf_end::
	.area _CODE
	.area _CABS
