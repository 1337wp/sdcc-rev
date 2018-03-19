;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module assert
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __assert
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
;assert.c:4: void _assert(char *expr, const char *filename, unsigned int linenumber)
;	genLabel
;	genFunction
;	---------------------------------
; Function _assert
; ---------------------------------
__assert_start::
__assert:
	push	ix
	ld	ix,#0
	add	ix,sp
;assert.c:6: printf("Assert(%s) failed at line %u in file %s.\n",
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	ld	l,6(ix)
	ld	h,7(ix)
	push	hl
;	genIpush
;	AOP_STK for 
	ld	l,8(ix)
	ld	h,9(ix)
	push	hl
;	genIpush
;	AOP_STK for 
	ld	l,4(ix)
	ld	h,5(ix)
	push	hl
;	genIpush
	ld	hl,#__str_0
	push	hl
;	genCall
	call	_printf
	pop	af
	pop	af
	pop	af
	pop	af
;assert.c:8: while(1);
;	genLabel
00102$:
;	genGoto
	jr	00102$
;	genLabel
;	genEndFunction
	pop	ix
	ret
__assert_end::
__str_0:
	.ascii "Assert(%s) failed at line %u in file %s."
	.db 0x0A
	.db 0x00
	.area _CODE
	.area _CABS
