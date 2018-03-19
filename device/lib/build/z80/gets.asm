;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module gets
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _gets
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
;gets.c:3: char * gets(char *s) {
;	genLabel
;	genFunction
;	---------------------------------
; Function gets
; ---------------------------------
_gets_start::
_gets:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-2
	add	hl,sp
	ld	sp,hl
;gets.c:5: unsigned int count=0;
;	genAssign
;	AOP_STK for _gets_count_1_1
	ld	-2(ix),#0x00
	ld	-1(ix),#0x00
;gets.c:7: while (1) {
;	genLabel
00109$:
;gets.c:8: c=getchar();
;	genCall
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	call	_getchar
	ld	e,l
;	genAssign
;	(registers are the same)
;gets.c:9: switch(c) {
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	a,e
	sub	a,#0x08
	jr	Z,00101$
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	a,e
	sub	a,#0x0A
	jr	Z,00105$
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	a,e
	sub	a,#0x0D
	jr	Z,00105$
;	genGoto
	jp	00106$
;gets.c:10: case '\b': // backspace
;	genLabel
00101$:
;gets.c:11: if (count) {
;	genIfx
;	AOP_STK for _gets_count_1_1
	ld	a,-2(ix)
	or	a,-1(ix)
	jr	Z,00109$
;gets.c:12: putchar ('\b');
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,#0x08
	push	af
	inc	sp
;	genCall
	call	_putchar
	inc	sp
;gets.c:13: putchar (' ');
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,#0x20
	push	af
	inc	sp
;	genCall
	call	_putchar
	inc	sp
;gets.c:14: putchar ('\b');
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,#0x08
	push	af
	inc	sp
;	genCall
	call	_putchar
	inc	sp
;gets.c:15: s--;
;	genAssign
;	AOP_STK for 
	ld	d,4(ix)
	ld	c,5(ix)
;	genMinus
;	AOP_STK for 
	ld	a,d
	add	a,#0xFF
	ld	4(ix),a
	ld	a,c
	adc	a,#0xFF
	ld	5(ix),a
;gets.c:16: count--;
;	genMinus
;	AOP_STK for _gets_count_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	dec	hl
	ld	-2(ix),l
	ld	-1(ix),h
;gets.c:18: break;
;	genGoto
	jp	00109$
;gets.c:20: case '\r': // CR or LF
;	genLabel
00105$:
;gets.c:21: putchar('\r');
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,#0x0D
	push	af
	inc	sp
;	genCall
	call	_putchar
	inc	sp
;gets.c:22: putchar('\n');
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,#0x0A
	push	af
	inc	sp
;	genCall
	call	_putchar
	inc	sp
;gets.c:23: *s=0;
;	genAssign
;	AOP_STK for 
	ld	c,4(ix)
	ld	b,5(ix)
;	genAssign (pointer)
;	isBitvar = 0
	ld	a,#0x00
	ld	(bc),a
;gets.c:24: return s;
;	genRet
; Dump of IC_LEFT: type AOP_REG size 2
;	 reg = bc
	ld	l,c
	ld	h,b
	jr	00111$
;gets.c:25: default:
;	genLabel
00106$:
;gets.c:26: *s++=c;
;	genAssign
;	AOP_STK for 
	ld	c,4(ix)
	ld	b,5(ix)
;	genAssign (pointer)
;	isBitvar = 0
	ld	a,e
	ld	(bc),a
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	ld	a,c
	add	a,#0x01
	ld	4(ix),a
	ld	a,b
	adc	a,#0x00
	ld	5(ix),a
;gets.c:27: count++;
;	genPlus
;	AOP_STK for _gets_count_1_1
;	genPlusIncr
	inc	-2(ix)
	jr	NZ,00121$
	inc	-1(ix)
00121$:
;gets.c:28: putchar(c);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,e
	push	af
	inc	sp
;	genCall
	call	_putchar
	inc	sp
;gets.c:30: }
;	genGoto
	jp	00109$
;	genLabel
00111$:
;	genEndFunction
	ld	sp,ix
	pop	ix
	ret
_gets_end::
	.area _CODE
	.area _CABS
