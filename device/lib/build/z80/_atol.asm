;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:00 2018
;--------------------------------------------------------
	.module _atol
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _atol
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
;_atol.c:25: long atol(char * s)
;	genLabel
;	genFunction
;	---------------------------------
; Function atol
; ---------------------------------
_atol_start::
_atol:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-11
	add	hl,sp
	ld	sp,hl
;_atol.c:27: register long rv=0; 
;	genAssign
;	AOP_STK for _atol_rv_1_1
	xor	a,a
	ld	-4(ix),a
	ld	-3(ix),a
	ld	-2(ix),a
	ld	-1(ix),a
;_atol.c:31: while (*s) {
;	genAssign
;	AOP_STK for 
	ld	c,4(ix)
	ld	b,5(ix)
;	genLabel
00107$:
;	genPointerGet
	ld	a,(bc)
;	genIfx
	ld	e,a
	or	a,a
	jr	Z,00133$
;_atol.c:32: if (*s <= '9' && *s >= '0')
;	genCmpGt
	ld	a,#0x39
	sub	a,e
	jp	M,00102$
;	genCmpLt
	ld	a,e
	sub	a,#0x30
	jp	P,00133$
;_atol.c:33: break;
;	genLabel
00102$:
;_atol.c:34: if (*s == '-' || *s == '+') 
;	genPointerGet
	ld	a,(bc)
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	e,a
	sub	a,#0x2D
	jr	Z,00133$
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	a,e
	sub	a,#0x2B
	jr	Z,00133$
;_atol.c:36: s++;
;	genPlus
;	genPlusIncr
	inc	bc
;	genGoto
	jr	00107$
;	genLabel
00133$:
;	genAssign
;	AOP_STK for 
	ld	4(ix),c
	ld	5(ix),b
;_atol.c:39: sign = (*s == '-');
;	genPointerGet
	ld	a,(bc)
;	genCmpEq
; genCmpEq: left 1, right 1, result 1
;4
	ld	e,a
	sub	a,#0x2D
	jr	NZ,00137$
	ld	a,#0x01
	jr	00138$
00137$:
	xor	a,a
00138$:
;6
	ld	d,a
;	genAssign
;	AOP_STK for _atol__1_0
	ld	-5(ix),d
;_atol.c:40: if (*s == '-' || *s == '+') s++;
;	genIfx
	xor	a,a
	or	a,d
	jr	NZ,00110$
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	a,e
	sub	a,#0x2B
	jr	Z,00140$
	jr	00131$
00140$:
;	genLabel
00110$:
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	ld	a,c
	add	a,#0x01
	ld	4(ix),a
	ld	a,b
	adc	a,#0x00
	ld	5(ix),a
;_atol.c:42: while (*s && *s >= '0' && *s <= '9') {
;	genLabel
00131$:
;	genAssign
;	AOP_STK for 
;	AOP_STK for _atol__1_0
	ld	a,4(ix)
	ld	-7(ix),a
	ld	a,5(ix)
	ld	-6(ix),a
;	genLabel
00115$:
;	genPointerGet
;	AOP_STK for _atol__1_0
	ld	l,-7(ix)
	ld	h,-6(ix)
	ld	c,(hl)
;	genIfx
	xor	a,a
	or	a,c
	jp	Z,00117$
;	genCmpLt
	ld	a,c
	sub	a,#0x30
	jp	M,00117$
;	genCmpGt
	ld	a,#0x39
	sub	a,c
	jp	M,00117$
;_atol.c:43: rv = (rv * 10) + (*s - '0');
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
;	AOP_STK for _atol_rv_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	push	hl
	ld	l,-4(ix)
	ld	h,-3(ix)
	push	hl
;	genIpush
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x000A
	push	hl
;	genCall
	call	__mullong_rrx_s
;	AOP_STK for _atol__1_0
	ld	-8(ix),d
	ld	-9(ix),e
	ld	-10(ix),h
	ld	-11(ix),l
	pop	af
	pop	af
	pop	af
	pop	af
	pop	bc
;	genCast
	ld	a,c
	rla	
	sbc	a,a
	ld	b,a
;	genMinus
	ld	a,c
	add	a,#0xD0
	ld	c,a
	ld	a,b
	adc	a,#0xFF
;	genCast
	ld	b,a
	rla	
	sbc	a,a
	ld	e,a
	ld	d,a
;	genPlus
;	AOP_STK for _atol__1_0
	ld	a,-11(ix)
	add	a,c
	ld	c,a
	ld	a,-10(ix)
	adc	a,b
	ld	b,a
	ld	a,-9(ix)
	adc	a,e
	ld	e,a
	ld	a,-8(ix)
	adc	a,d
	ld	d,a
;	genAssign
;	AOP_STK for _atol_rv_1_1
	ld	-4(ix),c
	ld	-3(ix),b
	ld	-2(ix),e
	ld	-1(ix),d
;_atol.c:44: s++;
;	genPlus
;	AOP_STK for _atol__1_0
;	genPlusIncr
	inc	-7(ix)
	jr	NZ,00141$
	inc	-6(ix)
00141$:
;	genGoto
	jp	00115$
;	genLabel
00117$:
;_atol.c:47: return (sign ? -rv : rv);
;	genIfx
;	AOP_STK for _atol__1_0
	xor	a,a
	or	a,-5(ix)
	jr	Z,00120$
;	genUminus
;	AOP_STK for _atol_rv_1_1
	xor	a,a
	sbc	a,-4(ix)
	ld	c,a
	ld	a,#0x00
	sbc	a,-3(ix)
	ld	b,a
	ld	a,#0x00
	sbc	a,-2(ix)
	ld	e,a
	ld	a,#0x00
	sbc	a,-1(ix)
	ld	d,a
;	genGoto
	jr	00121$
;	genLabel
00120$:
;	genAssign
;	AOP_STK for _atol_rv_1_1
	ld	c,-4(ix)
	ld	b,-3(ix)
	ld	e,-2(ix)
	ld	d,-1(ix)
;	genLabel
00121$:
;	genRet
; Dump of IC_LEFT: type AOP_REG size 4
;	 reg = debc
	ld	l,c
	ld	h,b
;	genLabel
;	genEndFunction
	ld	sp,ix
	pop	ix
	ret
_atol_end::
	.area _CODE
	.area _CABS
