;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module _atol
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _atol
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
	lda	sp,-17(sp)
;_atol.c:27: register long rv=0; 
;	genAssign
;	AOP_STK for _atol_rv_1_1
	xor	a,a
	lda	hl,13(sp)
	ld	(hl+),a
	ld	(hl+),a
	ld	(hl+),a
	ld	(hl),a
;_atol.c:31: while (*s) {
;	genAssign
;	AOP_STK for 
	lda	hl,19(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genLabel
00107$:
;	genPointerGet
;	AOP_STK for _atol__1_0
	ld	a,(bc)
	lda	hl,11(sp)
;	genIfx
;	AOP_STK for _atol__1_0
	ld	(hl),a
	or	a,a
	jp	Z,00133$
;_atol.c:32: if (*s <= '9' && *s >= '0')
;	genCmpGt
;	AOP_STK for _atol__1_0
	ld	a,#0x39
	sub	a,(hl)
	rlca
	jp	C,00102$
;	genCmpLt
;	AOP_STK for _atol__1_0
	ld	a,(hl)
	sub	a,#0x30
	rlca
	jp	NC,00133$
;_atol.c:33: break;
;	genLabel
00102$:
;_atol.c:34: if (*s == '-' || *s == '+') 
;	genPointerGet
;	AOP_STK for _atol__1_0
	ld	a,(bc)
	lda	hl,11(sp)
;	genCmpEq
;	AOP_STK for _atol__1_0
; genCmpEq: left 1, right 1, result 0
	ld	(hl),a
	sub	a,#0x2D
	jp	Z,00133$
00135$:
;	genCmpEq
;	AOP_STK for _atol__1_0
; genCmpEq: left 1, right 1, result 0
	lda	hl,11(sp)
	ld	a,(hl)
	sub	a,#0x2B
	jp	Z,00133$
00136$:
;_atol.c:36: s++;
;	genPlus
;	genPlusIncr
	inc	bc
;	genGoto
	jp	00107$
;	genLabel
00133$:
;	genAssign
;	AOP_STK for 
	lda	hl,19(sp)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;_atol.c:39: sign = (*s == '-');
;	genPointerGet
;	AOP_STK for _atol__1_0
	ld	a,(bc)
	lda	hl,11(sp)
;	genCmpEq
;	AOP_STK for _atol__1_0
;	AOP_STK for _atol_sign_1_1
; genCmpEq: left 1, right 1, result 1
;4
	ld	(hl),a
	sub	a,#0x2D
	jp	NZ,00137$
	ld	a,#0x01
	jr	00138$
00137$:
	xor	a,a
00138$:
;6
	lda	hl,12(sp)
;	genAssign
;	AOP_STK for _atol_sign_1_1
;	AOP_STK for _atol__1_0
	ld	(hl-),a
	dec	hl
	ld	(hl),a
;_atol.c:40: if (*s == '-' || *s == '+') s++;
;	genIfx
;	AOP_STK for _atol_sign_1_1
	xor	a,a
	inc	hl
	inc	hl
	or	a,(hl)
	jp	NZ,00110$
;	genCmpEq
;	AOP_STK for _atol__1_0
; genCmpEq: left 1, right 1, result 0
	dec	hl
	ld	a,(hl)
	sub	a,#0x2B
	jp	NZ,00139$
	jr	00140$
00139$:
	jp	00131$
00140$:
;	genLabel
00110$:
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	ld	hl,#0x0001
	add	hl,bc
	ld	a,l
	ld	d,h
	lda	hl,19(sp)
	ld	(hl+),a
	ld	(hl),d
;_atol.c:42: while (*s && *s >= '0' && *s <= '9') {
;	genLabel
00131$:
;	genAssign
;	AOP_STK for 
;	AOP_STK for _atol__1_0
	lda	hl,19(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,8(sp)
	ld	(hl+),a
	ld	(hl),e
;	genLabel
00115$:
;	genPointerGet
;	AOP_STK for _atol__1_0
	lda	hl,8(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genIfx
	ld	c,a
	or	a,a
	jp	Z,00117$
;	genCmpLt
	ld	a,c
	sub	a,#0x30
	rlca
	jp	C,00117$
;	genCmpGt
	ld	a,#0x39
	sub	a,c
	rlca
	jp	C,00117$
;_atol.c:43: rv = (rv * 10) + (*s - '0');
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
;	AOP_STK for _atol_rv_1_1
	lda	hl,17(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,17(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x000A
	push	hl
;	genCall
	call	__mullong_rrx_s
;	AOP_STK for _atol__1_0
	push	hl
	lda	hl,16(sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	lda	sp,8(sp)
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
	ld	b,a
;	genCast
;	AOP_STK for _atol__1_0
	lda	hl,0(sp)
	ld	(hl),c
	inc	hl
	ld	(hl),b
	ld	a,b
	rla	
	sbc	a,a
	inc	hl
	ld	(hl+),a
;	genPlus
;	AOP_STK for _atol__1_0
;	AOP_STK for _atol__1_0
	ld	(hl+),a
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	lda	hl,0(sp)
	add	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a,(hl)
	push	af
	ld	(hl-),a
	ld	(hl),e
	lda	hl,8(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	lda	hl,4(sp)
	pop	af
	ld	a,e
	adc	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a,(hl)
	ld	(hl-),a
	ld	(hl),e
;	genAssign
;	AOP_STK for _atol__1_0
;	AOP_STK for _atol_rv_1_1
	dec	hl
	dec	hl
	ld	d,h
	ld	e,l
	lda	hl,13(sp)
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
;_atol.c:44: s++;
;	genPlus
;	AOP_STK for _atol__1_0
;	genPlusIncr
	lda	hl,8(sp)
	inc	(hl)
	jr	NZ,00141$
	inc	hl
	inc	(hl)
00141$:
;	genGoto
	jp	00115$
;	genLabel
00117$:
;_atol.c:47: return (sign ? -rv : rv);
;	genIfx
;	AOP_STK for _atol__1_0
	xor	a,a
	lda	hl,10(sp)
	or	a,(hl)
	jp	Z,00120$
;	genUminus
;	AOP_STK for _atol_rv_1_1
;	AOP_STK for _atol__1_0
	ld	de,#0x0000
	ld	a,e
	lda	hl,13(sp)
	sub	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a,(hl)
	push	af
	lda	hl,3(sp)
	ld	(hl-),a
	ld	(hl),e
	ld	de,#0x0000
	lda	hl,17(sp)
	pop	af
	ld	a,e
	sbc	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a,(hl)
	lda	hl,3(sp)
	ld	(hl-),a
	ld	(hl),e
;	genGoto
	jp	00121$
;	genLabel
00120$:
;	genAssign
;	AOP_STK for _atol_rv_1_1
;	AOP_STK for _atol__1_0
	lda	hl,13(sp)
	ld	d,h
	ld	e,l
	lda	hl,0(sp)
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
;	genLabel
00121$:
;	genRet
;	AOP_STK for _atol__1_0
; Dump of IC_LEFT: type AOP_STK size 4
;	 aop_stk -17
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
;	genLabel
00118$:
;	genEndFunction
	lda	sp,17(sp)
	ret
_atol_end::
	.area _CODE
	.area _CABS
