;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module vprintf
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _vprintf
	.globl _printf
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
	
;vprintf.c:32: putchar( c );
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
;vprintf.c:35: int vprintf (const char *format, va_list ap)
;	genLabel
;	genFunction
;	---------------------------------
; Function vprintf
; ---------------------------------
_vprintf_start::
_vprintf:
	
;vprintf.c:37: return _print_format( put_char_to_stdout, NULL, format, ap );
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
;	genIpush
	ld	hl,#0x0000
	push	hl
;	genIpush
	ld	hl,#_put_char_to_stdout
	push	hl
;	genCall
	call	__print_format
	lda	sp,8(sp)
;	genRet
; Dump of IC_LEFT: type AOP_STR size 2
;	genLabel
00101$:
;	genEndFunction
	
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
	
;vprintf.c:45: va_start (arg, format);
;	genAddrOf
	lda	hl,2(sp)
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
	lda	hl,4(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
	ld	hl,#0x0000
	push	hl
;	genIpush
	ld	hl,#_put_char_to_stdout
	push	hl
;	genCall
	call	__print_format
	ld	b,d
	ld	c,e
	lda	sp,8(sp)
;	genAssign
	ld	e,c
	ld	d,b
;vprintf.c:49: return i;
;	genRet
; Dump of IC_LEFT: type AOP_STR size 2
;	genLabel
00101$:
;	genEndFunction
	
	ret
_printf_end::
	.area _CODE
	.area _CABS
