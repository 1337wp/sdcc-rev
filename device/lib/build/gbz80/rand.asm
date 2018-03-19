;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module rand
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _rand
	.globl _srand
;--------------------------------------------------------
;  ram data
;--------------------------------------------------------
	.area _DATA
_next:
	.ds 4
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
;rand.c:27: static unsigned long int next = 1;
;	genAssign
;	AOP_HL for _next
	ld	hl,#_next
	ld	(hl),#0x01
	xor	a,a
	inc	hl
	ld	(hl+),a
	ld	(hl+),a
	ld	(hl),a
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;rand.c:29: int rand(void)
;	genLabel
;	genFunction
;	---------------------------------
; Function rand
; ---------------------------------
_rand_start::
_rand:
	lda	sp,-4(sp)
;rand.c:31: next = next * 1103515245UL + 12345;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_HL for _next
	ld	hl,#_next + 2
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,#_next
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
	ld	hl,#0x41C6
	push	hl
	ld	hl,#0x41C64E6D
	push	hl
;	genCall
	call	__mullong_rrx_s
;	AOP_STK for _rand__1_0
	push	hl
	lda	hl,10(sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	lda	sp,8(sp)
;	genPlus
;	AOP_STK for _rand__1_0
;	AOP_HL for _next
;	genPlusIncr
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	add	a,#0x39
	ld	e,a
	ld	a,d
	adc	a,#0x30
	push	af
	ld	hl,#_next + 1
	ld	(hl-),a
	ld	(hl),e
	lda	hl,4(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	pop	af
	ld	a,e
	adc	a,#0x00
	ld	e,a
	ld	a,d
	adc	a,#0x00
	ld	hl,#_next + 3
	ld	(hl-),a
	ld	(hl),e
;rand.c:32: return (unsigned int)(next/65536) % (RAND_MAX + 1U);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,#0x10
	push	af
	inc	sp
;	genIpush
;	AOP_HL for _next
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,#_next
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__rrulong_rrx_s
;	AOP_STK for _rand__1_0
	push	hl
	lda	hl,7(sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	lda	sp,5(sp)
;	genCast
;	AOP_STK for _rand__1_0
	lda	hl,0(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genAnd
	ld	e,c
	ld	a,b
	and	a,#0x7F
	ld	d,a
;	genRet
; Dump of IC_LEFT: type AOP_STR size 2
;	genLabel
00101$:
;	genEndFunction
	lda	sp,4(sp)
	ret
_rand_end::
;rand.c:35: void srand(unsigned int seed)
;	genLabel
;	genFunction
;	---------------------------------
; Function srand
; ---------------------------------
_srand_start::
_srand:
	
;rand.c:37: next = seed;
;	genCast
;	AOP_STK for 
;	AOP_HL for _next
	lda	hl,2(sp)
	ld	a,(hl)
	ld	hl,#_next
	ld	(hl),a
	lda	hl,3(sp)
	ld	a,(hl)
	ld	hl,#_next + 1
	ld	(hl+),a
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;	genLabel
00101$:
;	genEndFunction
	
	ret
_srand_end::
	.area _CODE
	.area _CABS
