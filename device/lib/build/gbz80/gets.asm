;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module gets
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _gets
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
	lda	sp,-5(sp)
;gets.c:5: unsigned int count=0;
;	genAssign
;	AOP_STK for _gets_count_1_1
	lda	hl,2(sp)
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;gets.c:7: while (1) {
;	genLabel
00109$:
;gets.c:8: c=getchar();
;	genCall
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	call	_getchar
	ld	c,e
;	genAssign
;	AOP_STK for _gets_c_1_1
	lda	hl,4(sp)
	ld	(hl),c
;gets.c:9: switch(c) {
;	genCmpEq
;	AOP_STK for _gets_c_1_1
; genCmpEq: left 1, right 1, result 0
	ld	a,(hl)
	sub	a,#0x08
	jp	Z,00101$
00118$:
;	genCmpEq
;	AOP_STK for _gets_c_1_1
; genCmpEq: left 1, right 1, result 0
	lda	hl,4(sp)
	ld	a,(hl)
	sub	a,#0x0A
	jp	Z,00105$
00119$:
;	genCmpEq
;	AOP_STK for _gets_c_1_1
; genCmpEq: left 1, right 1, result 0
	lda	hl,4(sp)
	ld	a,(hl)
	sub	a,#0x0D
	jp	Z,00105$
00120$:
;	genGoto
	jp	00106$
;gets.c:10: case '\b': // backspace
;	genLabel
00101$:
;gets.c:11: if (count) {
;	genIfx
;	AOP_STK for _gets_count_1_1
	lda	hl,2(sp)
	ld	a,(hl+)
	or	a,(hl)
	jp	Z,00109$
;gets.c:12: putchar ('\b');
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,#0x08
	push	af
	inc	sp
;	genCall
	call	_putchar
	lda	sp,1(sp)
;gets.c:13: putchar (' ');
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,#0x20
	push	af
	inc	sp
;	genCall
	call	_putchar
	lda	sp,1(sp)
;gets.c:14: putchar ('\b');
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,#0x08
	push	af
	inc	sp
;	genCall
	call	_putchar
	lda	sp,1(sp)
;gets.c:15: s--;
;	genAssign
;	AOP_STK for 
	lda	hl,7(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genMinus
;	AOP_STK for 
	ld	de,#0x0001
	ld	a,c
	sub	a,e
	ld	e,a
	ld	a,b
	sbc	a,d
	ld	(hl-),a
	ld	(hl),e
;gets.c:16: count--;
;	genMinus
;	AOP_STK for _gets_count_1_1
	lda	hl,2(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	dec	de
	dec	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
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
	lda	sp,1(sp)
;gets.c:22: putchar('\n');
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,#0x0A
	push	af
	inc	sp
;	genCall
	call	_putchar
	lda	sp,1(sp)
;gets.c:23: *s=0;
;	genAssign
;	AOP_STK for 
;	AOP_STK for _gets__1_0
	lda	hl,7(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,0(sp)
	ld	(hl+),a
	ld	(hl),e
;	genAssign (pointer)
;	AOP_STK for _gets__1_0
;	isBitvar = 0
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,#0x00
	ld	(de),a
;gets.c:24: return s;
;	genRet
;	AOP_STK for _gets__1_0
; Dump of IC_LEFT: type AOP_STK size 2
;	 aop_stk -5
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	jp	00111$
;gets.c:25: default:
;	genLabel
00106$:
;gets.c:26: *s++=c;
;	genAssign
;	AOP_STK for 
	lda	hl,7(sp)
	ld	b,(hl)
	inc	hl
	ld	c,(hl)
;	genAssign (pointer)
;	AOP_STK for _gets_c_1_1
;	isBitvar = 0
	ld	e,b
	ld	d,c
	lda	hl,4(sp)
	ld	a,(hl)
	ld	(de),a
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	ld	e,b
	ld	d,c
	ld	hl,#0x0001
	add	hl,de
	ld	a,l
	ld	d,h
	lda	hl,7(sp)
	ld	(hl+),a
	ld	(hl),d
;gets.c:27: count++;
;	genPlus
;	AOP_STK for _gets_count_1_1
;	genPlusIncr
	lda	hl,2(sp)
	inc	(hl)
	jr	NZ,00121$
	inc	hl
	inc	(hl)
00121$:
;gets.c:28: putchar(c);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _gets_c_1_1
	lda	hl,4(sp)
	ld	a,(hl)
	push	af
	inc	sp
;	genCall
	call	_putchar
	lda	sp,1(sp)
;gets.c:30: }
;	genGoto
	jp	00109$
;	genLabel
00111$:
;	genEndFunction
	lda	sp,5(sp)
	ret
_gets_end::
	.area _CODE
	.area _CABS
