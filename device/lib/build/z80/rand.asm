;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:00 2018
;--------------------------------------------------------
	.module rand
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _rand
	.globl _srand
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
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
	ld	iy,#_next
	ld	0(iy),#0x01
	xor	a,a
	ld	1(iy),a
	ld	2(iy),a
	ld	3(iy),a
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
;rand.c:31: next = next * 1103515245UL + 12345;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,(_next + 2)
	push	hl
	ld	hl,(_next)
	push	hl
;	genIpush
	ld	hl,#0x41C6
	push	hl
	ld	hl,#0x41C64E6D
	push	hl
;	genCall
	call	__mullong_rrx_s
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	pop	af
	pop	af
;	genPlus
;	genPlusIncr
;	Shift into pair idx 0
	ld	hl,#_next
	ld	a,c
	add	a,#0x39
	ld	(hl),a
	ld	a,b
	adc	a,#0x30
	inc	hl
	ld	(hl),a
	ld	a,e
	adc	a,#0x00
	inc	hl
	ld	(hl),a
	ld	a,d
	adc	a,#0x00
	inc	hl
	ld	(hl),a
;rand.c:32: return (unsigned int)(next/65536) % (RAND_MAX + 1U);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,#0x10
	push	af
	inc	sp
;	genIpush
	ld	hl,(_next + 2)
	push	hl
	ld	hl,(_next)
	push	hl
;	genCall
	call	__rrulong_rrx_s
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	inc	sp
;	genCast
;	genAnd
	ld	l,c
	ld	a,b
	and	a,#0x7F
	ld	h,a
;	genRet
; Dump of IC_LEFT: type AOP_STR size 2
;	genLabel
;	genEndFunction
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
	push	ix
	ld	ix,#0
	add	ix,sp
;rand.c:37: next = seed;
;	genCast
;	AOP_STK for 
	ld	a,4(ix)
	ld	iy,#_next
	ld	0(iy),a
	ld	a,5(ix)
	ld	1(iy),a
	ld	2(iy),#0x00
	ld	3(iy),#0x00
;	genLabel
;	genEndFunction
	pop	ix
	ret
_srand_end::
	.area _CODE
	.area _CABS
