;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module puts
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _puts
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
;puts.c:27: int puts (char *s)
;	genLabel
;	genFunction
;	---------------------------------
; Function puts
; ---------------------------------
_puts_start::
_puts:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-2
	add	hl,sp
	ld	sp,hl
;puts.c:30: while (*s){
;	genAssign
;	AOP_STK for 
	ld	c,4(ix)
	ld	b,5(ix)
;	genAssign
;	AOP_STK for _puts_i_1_1
	ld	-2(ix),#0x00
	ld	-1(ix),#0x00
;	genLabel
00101$:
;	genPointerGet
	ld	a,(bc)
;	genIfx
	ld	e,a
	or	a,a
	jr	Z,00103$
;puts.c:31: putchar(*s++);
;	genAssign
;	(registers are the same)
;	genPlus
;	genPlusIncr
	inc	bc
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
	ld	a,e
	push	af
	inc	sp
;	genCall
	call	_putchar
	inc	sp
	pop	bc
;puts.c:32: i++;
;	genPlus
;	AOP_STK for _puts_i_1_1
;	genPlusIncr
	inc	-2(ix)
	jr	NZ,00109$
	inc	-1(ix)
00109$:
;	genGoto
	jr	00101$
;	genLabel
00103$:
;puts.c:34: putchar('\n');
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,#0x0A
	push	af
	inc	sp
;	genCall
	call	_putchar
	inc	sp
;puts.c:35: return i+1;
;	genPlus
;	AOP_STK for _puts_i_1_1
;	genPlusIncr
	ld	l,-2(ix)
	ld	h,-1(ix)
	inc	hl
;	genRet
; Dump of IC_LEFT: type AOP_STR size 2
;	genLabel
;	genEndFunction
	ld	sp,ix
	pop	ix
	ret
_puts_end::
	.area _CODE
	.area _CABS
