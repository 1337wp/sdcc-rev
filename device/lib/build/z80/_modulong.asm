;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:00 2018
;--------------------------------------------------------
	.module _modulong
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __modulong
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
;_modulong.c:337: _modulong (unsigned long a, unsigned long b)
;	genLabel
;	genFunction
;	---------------------------------
; Function _modulong
; ---------------------------------
__modulong_start::
__modulong:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-2
	add	hl,sp
	ld	sp,hl
;_modulong.c:339: unsigned char count = 0;
;	genAssign
;	AOP_STK for __modulong__1_0
	ld	-2(ix),#0x00
;_modulong.c:341: while (!MSB_SET(b))
;	genAssign
;	AOP_STK for __modulong_count_1_1
	ld	-1(ix),#0x00
;	genLabel
00103$:
;	genGetHBIT
;	AOP_STK for 
	ld	a,11(ix)
	rlc	a
;	genIfx
	and	a,#0x01
	jp	NZ,00117$
;_modulong.c:343: b <<= 1;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,#0x01
	push	af
	inc	sp
;	genIpush
;	AOP_STK for 
	ld	l,10(ix)
	ld	h,11(ix)
	push	hl
	ld	l,8(ix)
	ld	h,9(ix)
	push	hl
;	genCall
	call	__rlulong_rrx_s
	ld	c,d
	ld	b,e
	ld	d,h
	ld	e,l
	pop	af
	pop	af
	inc	sp
;	genAssign
;	AOP_STK for 
	ld	8(ix),e
	ld	9(ix),d
	ld	10(ix),b
	ld	11(ix),c
;_modulong.c:344: if (b > a)
;	genCmpGt
;	AOP_STK for 
;	AOP_STK for 
	ld	a,4(ix)
	sub	a,8(ix)
	ld	a,5(ix)
	sbc	a,9(ix)
	ld	a,6(ix)
	sbc	a,10(ix)
	ld	a,7(ix)
	sbc	a,11(ix)
	jr	NC,00102$
;_modulong.c:346: b >>=1;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,#0x01
	push	af
	inc	sp
;	genIpush
;	AOP_STK for 
	ld	l,10(ix)
	ld	h,11(ix)
	push	hl
	ld	l,8(ix)
	ld	h,9(ix)
	push	hl
;	genCall
	call	__rrulong_rrx_s
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	inc	sp
;	genAssign
;	AOP_STK for 
	ld	8(ix),c
	ld	9(ix),b
	ld	10(ix),e
	ld	11(ix),d
;_modulong.c:347: break;
;	genGoto
	jr	00117$
;	genLabel
00102$:
;_modulong.c:349: count++;
;	genPlus
;	AOP_STK for __modulong_count_1_1
;	genPlusIncr
	inc	-1(ix)
;	genAssign
;	AOP_STK for __modulong_count_1_1
;	AOP_STK for __modulong__1_0
	ld	a,-1(ix)
	ld	-2(ix),a
;	genGoto
	jp	00103$
;_modulong.c:351: do
;	genLabel
00117$:
;	genAssign
;	AOP_STK for __modulong__1_0
;	(registers are the same)
;	genLabel
00108$:
;_modulong.c:353: if (a >= b)
;	genCmpLt
;	AOP_STK for 
;	AOP_STK for 
	ld	a,4(ix)
	sub	a,8(ix)
	ld	a,5(ix)
	sbc	a,9(ix)
	ld	a,6(ix)
	sbc	a,10(ix)
	ld	a,7(ix)
	sbc	a,11(ix)
	jr	C,00107$
;_modulong.c:354: a -= b;
;	genMinus
;	AOP_STK for 
;	AOP_STK for 
	ld	a,4(ix)
	sub	a,8(ix)
	ld	4(ix),a
	ld	a,5(ix)
	sbc	a,9(ix)
	ld	5(ix),a
	ld	a,6(ix)
	sbc	a,10(ix)
	ld	6(ix),a
	ld	a,7(ix)
	sbc	a,11(ix)
	ld	7(ix),a
;	genLabel
00107$:
;_modulong.c:355: b >>= 1;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,#0x01
	push	af
	inc	sp
;	genIpush
;	AOP_STK for 
	ld	l,10(ix)
	ld	h,11(ix)
	push	hl
	ld	l,8(ix)
	ld	h,9(ix)
	push	hl
;	genCall
	call	__rrulong_rrx_s
	ld	c,d
	ld	d,e
	ld	e,h
	ld	b,l
	pop	af
	pop	af
	inc	sp
;	genAssign
;	AOP_STK for 
	ld	8(ix),b
	ld	9(ix),e
	ld	10(ix),d
	ld	11(ix),c
;_modulong.c:357: while (count--);
;	genAssign
;	AOP_STK for __modulong__1_0
	ld	c,-2(ix)
;	genMinus
;	AOP_STK for __modulong__1_0
	dec	-2(ix)
;	genIfx
	xor	a,a
	or	a,c
	jp	NZ,00108$
;_modulong.c:359: return a;
;	genRet
;	AOP_STK for 
; Dump of IC_LEFT: type AOP_STK size 4
;	 aop_stk 4
	ld	l,4(ix)
	ld	h,5(ix)
	ld	e,6(ix)
	ld	d,7(ix)
;	genLabel
;	genEndFunction
	ld	sp,ix
	pop	ix
	ret
__modulong_end::
	.area _CODE
	.area _CABS
