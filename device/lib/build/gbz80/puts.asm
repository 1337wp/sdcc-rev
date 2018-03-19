;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module puts
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _puts
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
	lda	sp,-4(sp)
;puts.c:30: while (*s){
;	genAssign
;	AOP_STK for 
;	AOP_STK for _puts__1_0
	lda	hl,6(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,0(sp)
	ld	(hl+),a
	ld	(hl),e
;	genAssign
;	AOP_STK for _puts_i_1_1
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;	genLabel
00101$:
;	genPointerGet
;	AOP_STK for _puts__1_0
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genIfx
	ld	c,a
	or	a,a
	jp	Z,00103$
;puts.c:31: putchar(*s++);
;	genAssign
;	(registers are the same)
;	genPlus
;	AOP_STK for _puts__1_0
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	NZ,00109$
	inc	hl
	inc	(hl)
00109$:
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,c
	push	af
	inc	sp
;	genCall
	call	_putchar
	lda	sp,1(sp)
;puts.c:32: i++;
;	genPlus
;	AOP_STK for _puts_i_1_1
;	genPlusIncr
	lda	hl,2(sp)
	inc	(hl)
	jr	NZ,00110$
	inc	hl
	inc	(hl)
00110$:
;	genGoto
	jp	00101$
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
	lda	sp,1(sp)
;puts.c:35: return i+1;
;	genPlus
;	AOP_STK for _puts_i_1_1
;	genPlusIncr
	lda	hl,2(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	de
;	genRet
; Dump of IC_LEFT: type AOP_STR size 2
;	genLabel
00104$:
;	genEndFunction
	lda	sp,4(sp)
	ret
_puts_end::
	.area _CODE
	.area _CABS
