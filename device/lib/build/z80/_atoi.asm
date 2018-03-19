;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:00 2018
;--------------------------------------------------------
	.module _atoi
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _atoi
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
;_atoi.c:25: int atoi(char * s)
;	genLabel
;	genFunction
;	---------------------------------
; Function atoi
; ---------------------------------
_atoi_start::
_atoi:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-5
	add	hl,sp
	ld	sp,hl
;_atoi.c:27: register int rv=0; 
;	genAssign
;	AOP_STK for _atoi_rv_1_1
	ld	-2(ix),#0x00
	ld	-1(ix),#0x00
;_atoi.c:31: while (*s) {
;	genAssign
;	AOP_STK for 
	ld	e,4(ix)
	ld	d,5(ix)
;	genLabel
00107$:
;	genPointerGet
	ld	a,(de)
;	genIfx
	ld	c,a
	or	a,a
	jr	Z,00133$
;_atoi.c:32: if (*s <= '9' && *s >= '0')
;	genCmpGt
	ld	a,#0x39
	sub	a,c
	jp	M,00102$
;	genCmpLt
	ld	a,c
	sub	a,#0x30
	jp	P,00133$
;_atoi.c:33: break;
;	genLabel
00102$:
;_atoi.c:34: if (*s == '-' || *s == '+') 
;	genPointerGet
	ld	a,(de)
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	c,a
	sub	a,#0x2D
	jr	Z,00133$
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	a,c
	sub	a,#0x2B
	jr	Z,00133$
;_atoi.c:36: s++;
;	genPlus
;	genPlusIncr
	inc	de
;	genGoto
	jr	00107$
;	genLabel
00133$:
;	genAssign
;	AOP_STK for 
	ld	4(ix),e
	ld	5(ix),d
;_atoi.c:39: sign = (*s == '-');
;	genPointerGet
	ld	a,(de)
;	genCmpEq
; genCmpEq: left 1, right 1, result 1
;4
	ld	c,a
	sub	a,#0x2D
	jr	NZ,00137$
	ld	a,#0x01
	jr	00138$
00137$:
	xor	a,a
00138$:
;6
	ld	b,a
;	genAssign
;	AOP_STK for _atoi__1_0
	ld	-3(ix),b
;_atoi.c:40: if (*s == '-' || *s == '+') s++;
;	genIfx
	xor	a,a
	or	a,b
	jr	NZ,00110$
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	a,c
	sub	a,#0x2B
	jr	Z,00140$
	jr	00131$
00140$:
;	genLabel
00110$:
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	ld	a,e
	add	a,#0x01
	ld	4(ix),a
	ld	a,d
	adc	a,#0x00
	ld	5(ix),a
;_atoi.c:42: while (*s && *s >= '0' && *s <= '9') {
;	genLabel
00131$:
;	genAssign
;	AOP_STK for 
	ld	e,4(ix)
	ld	d,5(ix)
;	genLabel
00115$:
;	genPointerGet
	ld	a,(de)
;	genIfx
	ld	c,a
	or	a,a
	jr	Z,00117$
;	genCmpLt
	ld	a,c
	sub	a,#0x30
	jp	M,00117$
;	genCmpGt
	ld	a,#0x39
	sub	a,c
	jp	M,00117$
;_atoi.c:43: rv = (rv * 10) + (*s - '0');
;	genMult
;	AOP_STK for _atoi_rv_1_1
;	AOP_STK for _atoi__1_0
	push	de
	ld	e,-2(ix)
	ld	d,-1(ix)
	ld	l,e
	ld	h,d
	add	hl,hl
	add	hl,hl
	add	hl,de
	add	hl,hl
	pop	de
	ld	-5(ix),l
	ld	-4(ix),h
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
;	genPlus
;	AOP_STK for _atoi__1_0
	ld	a,-5(ix)
	add	a,c
	ld	c,a
	ld	a,-4(ix)
	adc	a,b
	ld	b,a
;	genAssign
;	AOP_STK for _atoi_rv_1_1
	ld	-2(ix),c
	ld	-1(ix),b
;_atoi.c:44: s++;
;	genPlus
;	genPlusIncr
	inc	de
;	genGoto
	jr	00115$
;	genLabel
00117$:
;_atoi.c:47: return (sign ? -rv : rv);
;	genIfx
;	AOP_STK for _atoi__1_0
	xor	a,a
	or	a,-3(ix)
	jr	Z,00120$
;	genUminus
;	AOP_STK for _atoi_rv_1_1
	xor	a,a
	sbc	a,-2(ix)
	ld	c,a
	ld	a,#0x00
	sbc	a,-1(ix)
	ld	b,a
;	genGoto
	jr	00121$
;	genLabel
00120$:
;	genAssign
;	AOP_STK for _atoi_rv_1_1
	ld	c,-2(ix)
	ld	b,-1(ix)
;	genLabel
00121$:
;	genRet
; Dump of IC_LEFT: type AOP_REG size 2
;	 reg = bc
	ld	l,c
	ld	h,b
;	genLabel
;	genEndFunction
	ld	sp,ix
	pop	ix
	ret
_atoi_end::
	.area _CODE
	.area _CABS
