;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module _atoi
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _atoi
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
	lda	sp,-9(sp)
;_atoi.c:27: register int rv=0; 
;	genAssign
;	AOP_STK for _atoi_rv_1_1
	lda	hl,7(sp)
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;_atoi.c:31: while (*s) {
;	genAssign
;	AOP_STK for 
	lda	hl,11(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genLabel
00107$:
;	genPointerGet
;	AOP_STK for _atoi__1_0
	ld	a,(bc)
	lda	hl,5(sp)
;	genIfx
;	AOP_STK for _atoi__1_0
	ld	(hl),a
	or	a,a
	jp	Z,00133$
;_atoi.c:32: if (*s <= '9' && *s >= '0')
;	genCmpGt
;	AOP_STK for _atoi__1_0
	ld	a,#0x39
	sub	a,(hl)
	rlca
	jp	C,00102$
;	genCmpLt
;	AOP_STK for _atoi__1_0
	ld	a,(hl)
	sub	a,#0x30
	rlca
	jp	NC,00133$
;_atoi.c:33: break;
;	genLabel
00102$:
;_atoi.c:34: if (*s == '-' || *s == '+') 
;	genPointerGet
;	AOP_STK for _atoi__1_0
	ld	a,(bc)
	lda	hl,5(sp)
;	genCmpEq
;	AOP_STK for _atoi__1_0
; genCmpEq: left 1, right 1, result 0
	ld	(hl),a
	sub	a,#0x2D
	jp	Z,00133$
00135$:
;	genCmpEq
;	AOP_STK for _atoi__1_0
; genCmpEq: left 1, right 1, result 0
	lda	hl,5(sp)
	ld	a,(hl)
	sub	a,#0x2B
	jp	Z,00133$
00136$:
;_atoi.c:36: s++;
;	genPlus
;	genPlusIncr
	inc	bc
;	genGoto
	jp	00107$
;	genLabel
00133$:
;	genAssign
;	AOP_STK for 
	lda	hl,11(sp)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;_atoi.c:39: sign = (*s == '-');
;	genPointerGet
;	AOP_STK for _atoi__1_0
	ld	a,(bc)
	lda	hl,5(sp)
;	genCmpEq
;	AOP_STK for _atoi__1_0
;	AOP_STK for _atoi_sign_1_1
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
	lda	hl,6(sp)
;	genAssign
;	AOP_STK for _atoi_sign_1_1
;	AOP_STK for _atoi__1_0
	ld	(hl-),a
	dec	hl
	ld	(hl),a
;_atoi.c:40: if (*s == '-' || *s == '+') s++;
;	genIfx
;	AOP_STK for _atoi_sign_1_1
	xor	a,a
	inc	hl
	inc	hl
	or	a,(hl)
	jp	NZ,00110$
;	genCmpEq
;	AOP_STK for _atoi__1_0
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
	lda	hl,11(sp)
	ld	(hl+),a
	ld	(hl),d
;_atoi.c:42: while (*s && *s >= '0' && *s <= '9') {
;	genLabel
00131$:
;	genAssign
;	AOP_STK for 
;	AOP_STK for _atoi__1_0
	lda	hl,11(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,2(sp)
	ld	(hl+),a
	ld	(hl),e
;	genLabel
00115$:
;	genPointerGet
;	AOP_STK for _atoi__1_0
	lda	hl,2(sp)
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
;_atoi.c:43: rv = (rv * 10) + (*s - '0');
;	genMult
;	AOP_STK for _atoi_rv_1_1
;	AOP_STK for _atoi__1_0
	lda	hl,7(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	l,e
	ld	h,d
	add	hl,hl
	add	hl,hl
	add	hl,de
	add	hl,hl
	ld	a,l
	ld	d,h
	lda	hl,0(sp)
	ld	(hl+),a
	ld	(hl),d
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
	dec	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	add	hl,bc
	ld	c,l
	ld	b,h
;	genAssign
;	AOP_STK for _atoi_rv_1_1
	lda	hl,7(sp)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;_atoi.c:44: s++;
;	genPlus
;	AOP_STK for _atoi__1_0
;	genPlusIncr
	lda	hl,2(sp)
	inc	(hl)
	jr	NZ,00141$
	inc	hl
	inc	(hl)
00141$:
;	genGoto
	jp	00115$
;	genLabel
00117$:
;_atoi.c:47: return (sign ? -rv : rv);
;	genIfx
;	AOP_STK for _atoi__1_0
	xor	a,a
	lda	hl,4(sp)
	or	a,(hl)
	jp	Z,00120$
;	genUminus
;	AOP_STK for _atoi_rv_1_1
	xor	a,a
	lda	hl,7(sp)
	ld	a,#0x00
	sbc	a,(hl)
	ld	c,a
	inc	hl
	ld	a,#0x00
	sbc	a,(hl)
	ld	b,a
;	genGoto
	jp	00121$
;	genLabel
00120$:
;	genAssign
;	AOP_STK for _atoi_rv_1_1
	lda	hl,7(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genLabel
00121$:
;	genRet
; Dump of IC_LEFT: type AOP_REG size 2
;	 reg = bc
	ld	e,c
	ld	d,b
;	genLabel
00118$:
;	genEndFunction
	lda	sp,9(sp)
	ret
_atoi_end::
	.area _CODE
	.area _CABS
