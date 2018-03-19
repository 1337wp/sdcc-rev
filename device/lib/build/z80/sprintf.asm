;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module sprintf
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _vsprintf
	.globl _sprintf
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
;sprintf.c:29: static void put_char_to_string( char c, void* p ) _REENTRANT
;	genLabel
;	genFunction
;	---------------------------------
; Function put_char_to_string
; ---------------------------------
_put_char_to_string:
	push	ix
	ld	ix,#0
	add	ix,sp
;sprintf.c:31: char **buf = (char **)p;
;	genAssign
;	AOP_STK for 
	ld	c,5(ix)
	ld	b,6(ix)
	push	bc
	pop	iy
;sprintf.c:32: *(*buf)++ = c;
;	genPointerGet
	ld	c,0(iy)
	ld	b,1(iy)
;	genPlus
;	genPlusIncr
	ld	e,c
	ld	d,b
	inc	de
;	genAssign (pointer)
;	isBitvar = 0
	ld	0(iy),e
	ld	1(iy),d
;	genAssign (pointer)
;	AOP_STK for 
;	isBitvar = 0
	ld	a,4(ix)
	ld	(bc),a
;	genLabel
;	genEndFunction
	pop	ix
	ret
;sprintf.c:35: int vsprintf (char *buf, const char *format, va_list ap)
;	genLabel
;	genFunction
;	---------------------------------
; Function vsprintf
; ---------------------------------
_vsprintf_start::
_vsprintf:
	push	ix
	ld	ix,#0
	add	ix,sp
;sprintf.c:38: i = _print_format( put_char_to_string, &buf, format, ap );
;	genAddrOf
	ld	hl,#0x0004
	add	hl,sp
	ld	c,l
	ld	b,h
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	ld	l,8(ix)
	ld	h,9(ix)
	push	hl
;	genIpush
;	AOP_STK for 
	ld	l,6(ix)
	ld	h,7(ix)
	push	hl
;	genIpush
	push	bc
;	genIpush
	ld	hl,#_put_char_to_string
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
;	(registers are the same)
;sprintf.c:39: *buf = 0;
;	genAssign
;	AOP_STK for 
	ld	e,4(ix)
	ld	d,5(ix)
	push	de
	pop	iy
;	genAssign (pointer)
;	isBitvar = 0
	ld	(iy),#0x00
;sprintf.c:40: return i;
;	genRet
; Dump of IC_LEFT: type AOP_REG size 2
;	 reg = bc
	ld	l,c
	ld	h,b
;	genLabel
;	genEndFunction
	pop	ix
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
	push	ix
	ld	ix,#0
	add	ix,sp
;sprintf.c:48: va_start (arg, format);
;	genAddrOf
	ld	hl,#0x0006
	add	hl,sp
	ld	c,l
	ld	b,h
;	genPlus
;	genPlusIncr
	inc	bc
	inc	bc
;sprintf.c:49: i = _print_format( put_char_to_string, &buf, format, arg );
;	genAddrOf
	ld	hl,#0x0004
	add	hl,sp
	ld	e,l
	ld	d,h
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	push	bc
;	genIpush
;	AOP_STK for 
	ld	l,6(ix)
	ld	h,7(ix)
	push	hl
;	genIpush
	push	de
;	genIpush
	ld	hl,#_put_char_to_string
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
;	(registers are the same)
;sprintf.c:50: *buf = 0;
;	genAssign
;	AOP_STK for 
	ld	e,4(ix)
	ld	d,5(ix)
	push	de
	pop	iy
;	genAssign (pointer)
;	isBitvar = 0
	ld	(iy),#0x00
;sprintf.c:53: return i;
;	genRet
; Dump of IC_LEFT: type AOP_REG size 2
;	 reg = bc
	ld	l,c
	ld	h,b
;	genLabel
;	genEndFunction
	pop	ix
	ret
_sprintf_end::
	.area _CODE
	.area _CABS
