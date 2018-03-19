;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module _ulong2fs
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___ulong2fs
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
;_ulong2fs.c:73: float __ulong2fs (unsigned long a )
;	genLabel
;	genFunction
;	---------------------------------
; Function __ulong2fs
; ---------------------------------
___ulong2fs_start::
___ulong2fs:
	lda	sp,-14(sp)
;_ulong2fs.c:78: if (!a)
;	genIfx
;	AOP_STK for 
	lda	hl,16(sp)
	ld	a,(hl+)
	or	a,(hl)
	inc	hl
	or	a,(hl)
	inc	hl
	or	a,(hl)
	jp	NZ,00115$
;_ulong2fs.c:80: return 0.0;
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 4
	ld	de,#0x0000
	ld	hl,#0x0000
	jp	00111$
;_ulong2fs.c:83: while (a & NORM) 
;	genLabel
00115$:
;	genAssign
	ld	bc,#0x0096
;	genLabel
00103$:
;	genAnd
;	AOP_STK for 
	lda	hl,19(sp)
	ld	a,(hl)
	or	a,a
	jr	NZ,00121$
	jp	00117$
00121$:
;_ulong2fs.c:86: a >>= 1;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
	ld	a,#0x01
	push	af
	inc	sp
;	genIpush
;	AOP_STK for 
	lda	hl,21(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,21(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__rrulong_rrx_s
;	AOP_STK for ___ulong2fs__1_0
	push	hl
	lda	hl,13(sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	lda	sp,5(sp)
	pop	bc
;	genAssign
;	AOP_STK for ___ulong2fs__1_0
;	AOP_STK for 
	lda	hl,4(sp)
	ld	d,h
	ld	e,l
	lda	hl,16(sp)
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
;_ulong2fs.c:87: exp++;
;	genPlus
;	genPlusIncr
	inc	bc
;	genGoto
	jp	00103$
;_ulong2fs.c:90: while (a < HIDDEN)
;	genLabel
00117$:
;	genAssign
;	AOP_STK for ___ulong2fs_exp_1_1
	lda	hl,12(sp)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;	genLabel
00106$:
;	genCmpLt
;	AOP_STK for 
	lda	hl,16(sp)
	ld	a,(hl)
	sub	a,#0x00
	inc	hl
	ld	a,(hl)
	sbc	a,#0x00
	inc	hl
	ld	a,(hl)
	sbc	a,#0x80
	inc	hl
	ld	a,(hl)
	sbc	a,#0x00
	jp	NC,00120$
;_ulong2fs.c:92: a <<= 1;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,#0x01
	push	af
	inc	sp
;	genIpush
;	AOP_STK for 
	dec	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,19(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__rlulong_rrx_s
;	AOP_STK for ___ulong2fs__1_0
	push	hl
	lda	hl,11(sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	lda	sp,5(sp)
;	genAssign
;	AOP_STK for ___ulong2fs__1_0
;	AOP_STK for 
	lda	hl,4(sp)
	ld	d,h
	ld	e,l
	lda	hl,16(sp)
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
;_ulong2fs.c:93: exp--;
;	genMinus
;	AOP_STK for ___ulong2fs_exp_1_1
	lda	hl,12(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	dec	de
	dec	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
;	genGoto
	jp	00106$
;	genLabel
00120$:
;	genAssign
;	AOP_STK for ___ulong2fs_exp_1_1
	lda	hl,12(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;_ulong2fs.c:97: if ((a&0x7fffff)==0x7fffff) {
;	genAnd
;	AOP_STK for 
;	AOP_STK for ___ulong2fs__1_0
	lda	hl,16(sp)
	ld	a,(hl)
	lda	hl,0(sp)
	ld	(hl),a
	lda	hl,17(sp)
	ld	a,(hl)
	lda	hl,1(sp)
	ld	(hl),a
	lda	hl,18(sp)
	ld	a,(hl)
	and	a,#0x7F
	lda	hl,2(sp)
	ld	(hl+),a
	ld	(hl),#0x00
;	genCmpEq
;	AOP_STK for ___ulong2fs__1_0
; genCmpEq: left 4, right 4, result 0
	lda	hl,0(sp)
	ld	a,(hl)
	inc	a
	jp	NZ,00122$
	inc	hl
	ld	a,(hl)
	inc	a
	jp	NZ,00122$
	inc	hl
	ld	a,(hl)
	sub	a,#0x7F
	jp	NZ,00122$
	inc	hl
	ld	a,(hl)
	or	a,a
	jp	NZ,00122$
	jr	00123$
00122$:
	jp	00110$
00123$:
;_ulong2fs.c:98: a=0;
;	genAssign
;	AOP_STK for 
	xor	a,a
	lda	hl,16(sp)
	ld	(hl+),a
	ld	(hl+),a
	ld	(hl+),a
	ld	(hl),a
;_ulong2fs.c:99: exp++;
;	genPlus
;	AOP_STK for ___ulong2fs_exp_1_1
;	genPlusIncr
	lda	hl,12(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
;	genLabel
00110$:
;_ulong2fs.c:103: a &= ~HIDDEN ;
;	genAnd
;	AOP_STK for 
	lda	hl,18(sp)
	ld	a,(hl)
	and	a,#0x7F
	ld	(hl),a
;_ulong2fs.c:105: fl.l = PACK(0,(unsigned long)exp, a);
;	genAddrOf
;	AOP_STK for ___ulong2fs__1_0
	lda	hl,8(sp)
	ld	a,l
	ld	d,h
	lda	hl,0(sp)
	ld	(hl+),a
	ld	(hl),d
;	genCast
;	AOP_STK for ___ulong2fs__1_0
	lda	hl,4(sp)
	ld	(hl),c
	inc	hl
	ld	(hl),b
	ld	a,b
	rla	
	sbc	a,a
	inc	hl
	ld	(hl+),a
	ld	(hl),a
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,#0x17
	push	af
	inc	sp
;	genIpush
;	AOP_STK for ___ulong2fs__1_0
	dec	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,7(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__rlulong_rrx_s
;	AOP_STK for ___ulong2fs__1_0
	push	hl
	lda	hl,11(sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	lda	sp,5(sp)
;	genOr
;	AOP_STK for ___ulong2fs__1_0
;	AOP_STK for 
	lda	hl,4(sp)
	ld	a,(hl)
	lda	hl,16(sp)
	or	a,(hl)
	lda	hl,4(sp)
	ld	(hl+),a
	ld	a,(hl)
	lda	hl,17(sp)
	or	a,(hl)
	lda	hl,5(sp)
	ld	(hl+),a
	ld	a,(hl)
	lda	hl,18(sp)
	or	a,(hl)
	lda	hl,6(sp)
	ld	(hl+),a
	ld	a,(hl)
	lda	hl,19(sp)
	or	a,(hl)
	lda	hl,7(sp)
	ld	(hl),a
;	genAssign (pointer)
;	AOP_STK for ___ulong2fs__1_0
;	AOP_STK for ___ulong2fs__1_0
;	isBitvar = 0
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	lda	hl,4(sp)
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
;_ulong2fs.c:107: return (fl.f);
;	genAddrOf
	lda	hl,8(sp)
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for ___ulong2fs__1_0
	ld	e,c
	ld	d,b
	ld	a,(de)
	lda	hl,0(sp)
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
;	genRet
;	AOP_STK for ___ulong2fs__1_0
; Dump of IC_LEFT: type AOP_STK size 4
;	 aop_stk -14
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
;	genLabel
00111$:
;	genEndFunction
	lda	sp,14(sp)
	ret
___ulong2fs_end::
	.area _CODE
	.area _CABS
