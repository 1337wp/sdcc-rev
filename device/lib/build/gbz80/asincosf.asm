;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:02 2018
;--------------------------------------------------------
	.module asincosf
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _asincosf
;--------------------------------------------------------
;  ram data
;--------------------------------------------------------
	.area _DATA
_asincosf_a_1_1:
	.ds 8
_asincosf_b_1_1:
	.ds 8
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
;asincosf.c:47: static myconst float a[2]={ 0.0, QUART_PI };
;	genArrayInit
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#_asincosf_a_1_1
	call	__initrleblock
	.db	#-8,#0x00
	.db	0
;asincosf.c:48: static myconst float b[2]={ HALF_PI, QUART_PI };
;	genArrayInit
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#_asincosf_b_1_1
	call	__initrleblock
	.db	1
	.db	0x01
	.db	#-7,#0x00
	.db	0
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;asincosf.c:42: float asincosf(const float x, const int isacos)
;	genLabel
;	genFunction
;	---------------------------------
; Function asincosf
; ---------------------------------
_asincosf_start::
_asincosf:
	lda	sp,-22(sp)
;asincosf.c:50: y=fabsf(x);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	lda	hl,26(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,26(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	_fabsf
;	AOP_STK for _asincosf_y_1_1
	push	hl
	lda	hl,24(sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	lda	sp,4(sp)
;	genAssign
;	AOP_STK for _asincosf_y_1_1
;	(registers are the same)
;asincosf.c:51: i=isacos;
;	genAssign
;	AOP_STK for 
;	AOP_STK for _asincosf_i_1_1
	lda	hl,28(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,8(sp)
	ld	(hl+),a
	ld	(hl),e
;asincosf.c:52: if (y < EPS) r=y;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x3980
	push	hl
	ld	hl,#0x0000
	push	hl
;	genIpush
;	AOP_STK for _asincosf_y_1_1
	lda	hl,24(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,24(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	___fslt
	ld	c,e
	lda	sp,8(sp)
;	genIfx
	xor	a,a
	or	a,c
	jp	Z,00107$
;	genAssign
;	AOP_STK for _asincosf_y_1_1
;	AOP_STK for _asincosf_r_1_1
	lda	hl,18(sp)
	ld	d,h
	ld	e,l
	lda	hl,10(sp)
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
;	genGoto
	jp	00108$
;	genLabel
00107$:
;asincosf.c:55: if (y > 0.5)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x3F00
	push	hl
	ld	hl,#0x0000
	push	hl
;	genIpush
;	AOP_STK for _asincosf_y_1_1
	lda	hl,24(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,24(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	___fsgt
	ld	c,e
	lda	sp,8(sp)
;	genIfx
	xor	a,a
	or	a,c
	jp	Z,00104$
;asincosf.c:57: i=1-i;
;	genMinus
;	AOP_STK for _asincosf_i_1_1
	ld	de,#0x0001
	lda	hl,8(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	a,e
	sub	a,l
	ld	e,a
	ld	a,d
	sbc	a,h
	lda	hl,9(sp)
	ld	(hl-),a
	ld	(hl),e
;asincosf.c:58: if (y > 1.0)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x3F80
	push	hl
	ld	hl,#0x0000
	push	hl
;	genIpush
;	AOP_STK for _asincosf_y_1_1
	lda	hl,24(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,24(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	___fsgt
	ld	c,e
	lda	sp,8(sp)
;	genIfx
	xor	a,a
	or	a,c
	jp	Z,00102$
;asincosf.c:60: errno=EDOM;
;	genAssign
;	AOP_HL for _errno
	ld	hl,#_errno
	ld	(hl),#0x21
	inc	hl
	ld	(hl),#0x00
;asincosf.c:61: return 0.0;
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 4
	ld	de,#0x0000
	ld	hl,#0x0000
	jp	00117$
;	genLabel
00102$:
;asincosf.c:63: g=(0.5-y)+0.5;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _asincosf_y_1_1
	lda	hl,20(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,20(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
	ld	hl,#0x3F80
	push	hl
	ld	hl,#0x0000
	push	hl
;	genCall
	call	___fssub
;	AOP_STK for _asincosf_g_1_1
	push	hl
	lda	hl,24(sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	lda	sp,8(sp)
;	genAssign
;	AOP_STK for _asincosf_g_1_1
;	(registers are the same)
;asincosf.c:64: g=ldexpf(g,-1);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0xFFFFFFFF
	push	hl
;	genIpush
;	AOP_STK for _asincosf_g_1_1
	lda	hl,18(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,18(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	_ldexpf
;	AOP_STK for _asincosf__1_0
	push	hl
	lda	hl,12(sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	lda	sp,6(sp)
;	genAssign
;	AOP_STK for _asincosf__1_0
;	AOP_STK for _asincosf_g_1_1
	lda	hl,4(sp)
	ld	d,h
	ld	e,l
	lda	hl,14(sp)
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
;asincosf.c:65: y=sqrtf(g);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _asincosf_g_1_1
	lda	hl,16(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,16(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	_sqrtf
;	AOP_STK for _asincosf__1_0
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
	lda	sp,4(sp)
;	genAssign
;	AOP_STK for _asincosf__1_0
;	AOP_STK for _asincosf_y_1_1
	lda	hl,4(sp)
	ld	d,h
	ld	e,l
	lda	hl,18(sp)
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
;asincosf.c:66: y=-(y+y);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _asincosf_y_1_1
	lda	hl,20(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,20(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for _asincosf_y_1_1
	lda	hl,24(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,24(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	___fsadd
;	AOP_STK for _asincosf__1_0
	push	hl
	lda	hl,14(sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	lda	sp,8(sp)
;	genUminus
;	AOP_STK for _asincosf__1_0
;	genUminusFloat
	lda	hl,7(sp)
	ld	a,(hl)
	xor	a,#0x80
	ld	(hl),a
	lda	hl,4(sp)
	ld	a,(hl)
	ld	(hl+),a
	ld	a,(hl)
	ld	(hl+),a
	ld	a,(hl)
;	genAssign
;	AOP_STK for _asincosf__1_0
;	AOP_STK for _asincosf_y_1_1
	ld	(hl-),a
	dec	hl
	ld	d,h
	ld	e,l
	lda	hl,18(sp)
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
;	genGoto
	jp	00105$
;	genLabel
00104$:
;asincosf.c:70: g=y*y;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _asincosf_y_1_1
	lda	hl,20(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,20(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for _asincosf_y_1_1
	lda	hl,24(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,24(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	___fsmul
;	AOP_STK for _asincosf__1_0
	push	hl
	lda	hl,14(sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	lda	sp,8(sp)
;	genAssign
;	AOP_STK for _asincosf__1_0
;	AOP_STK for _asincosf_g_1_1
	lda	hl,4(sp)
	ld	d,h
	ld	e,l
	lda	hl,14(sp)
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
00105$:
;asincosf.c:72: r=y+y*((P(g)*g)/Q(g));
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _asincosf_g_1_1
	lda	hl,16(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,16(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
	ld	hl,#0xBF01
	push	hl
	ld	hl,#0x2065
	push	hl
;	genCall
	call	___fsmul
;	AOP_STK for _asincosf__1_0
	push	hl
	lda	hl,14(sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	lda	sp,8(sp)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x3F6F
	push	hl
	ld	hl,#0x166B
	push	hl
;	genIpush
;	AOP_STK for _asincosf__1_0
	lda	hl,10(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,10(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	___fsadd
;	AOP_STK for _asincosf__1_0
	push	hl
	lda	hl,14(sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	lda	sp,8(sp)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _asincosf_g_1_1
	lda	hl,16(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,16(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for _asincosf__1_0
	lda	hl,10(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,10(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	___fsmul
;	AOP_STK for _asincosf__1_0
	push	hl
	lda	hl,14(sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	lda	sp,8(sp)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0xC0B1
	push	hl
	ld	hl,#0x8D0B
	push	hl
;	genIpush
;	AOP_STK for _asincosf_g_1_1
	lda	hl,20(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,20(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	___fsadd
;	AOP_STK for _asincosf__1_0
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
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _asincosf_g_1_1
	lda	hl,16(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,16(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for _asincosf__1_0
	lda	hl,6(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,6(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	___fsmul
;	AOP_STK for _asincosf__1_0
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
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x40B3
	push	hl
	ld	hl,#0x50F0
	push	hl
;	genIpush
;	AOP_STK for _asincosf__1_0
	lda	hl,6(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,6(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	___fsadd
;	AOP_STK for _asincosf__1_0
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
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _asincosf__1_0
	lda	hl,2(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,2(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for _asincosf__1_0
	lda	hl,10(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,10(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	___fsdiv
;	AOP_STK for _asincosf__1_0
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
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _asincosf__1_0
	lda	hl,2(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,2(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for _asincosf_y_1_1
	lda	hl,24(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,24(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	___fsmul
;	AOP_STK for _asincosf__1_0
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
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _asincosf__1_0
	lda	hl,2(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,2(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for _asincosf_y_1_1
	lda	hl,24(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,24(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	___fsadd
;	AOP_STK for _asincosf__1_0
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
;	genAssign
;	AOP_STK for _asincosf__1_0
;	AOP_STK for _asincosf_r_1_1
	lda	hl,0(sp)
	ld	d,h
	ld	e,l
	lda	hl,10(sp)
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
00108$:
;asincosf.c:74: if (isacos)
;	genIfx
;	AOP_STK for 
	lda	hl,28(sp)
	ld	a,(hl+)
	or	a,(hl)
	jp	Z,00115$
;asincosf.c:76: if (x < 0.0)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x0000
	push	hl
;	genIpush
;	AOP_STK for 
	lda	hl,30(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,30(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	___fslt
	ld	c,e
	lda	sp,8(sp)
;	genIfx
	xor	a,a
	or	a,c
	jp	Z,00110$
;asincosf.c:77: r=(b[i]+r)+b[i];
;	genLeftShift
;	AOP_STK for _asincosf_i_1_1
	lda	hl,8(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	sla	c
	rl	b
	sla	c
	rl	b
;	genPlus
	ld	hl,#_asincosf_b_1_1
	add	hl,bc
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for _asincosf__1_0
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
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _asincosf_r_1_1
	lda	hl,12(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,12(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for _asincosf__1_0
	lda	hl,6(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,6(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	___fsadd
;	AOP_STK for _asincosf__1_0
	push	hl
	lda	hl,14(sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	lda	sp,8(sp)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _asincosf__1_0
	lda	hl,2(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,2(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for _asincosf__1_0
	lda	hl,10(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,10(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	___fsadd
;	AOP_STK for _asincosf__1_0
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
;	genAssign
;	AOP_STK for _asincosf__1_0
;	AOP_STK for _asincosf_r_1_1
	lda	hl,0(sp)
	ld	d,h
	ld	e,l
	lda	hl,10(sp)
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
;	genGoto
	jp	00116$
;	genLabel
00110$:
;asincosf.c:79: r=(a[i]-r)+a[i];
;	genLeftShift
;	AOP_STK for _asincosf_i_1_1
	lda	hl,8(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	sla	c
	rl	b
	sla	c
	rl	b
;	genPlus
	ld	hl,#_asincosf_a_1_1
	add	hl,bc
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for _asincosf__1_0
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
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _asincosf_r_1_1
	lda	hl,12(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,12(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for _asincosf__1_0
	lda	hl,6(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,6(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	___fssub
;	AOP_STK for _asincosf__1_0
	push	hl
	lda	hl,14(sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	lda	sp,8(sp)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _asincosf__1_0
	lda	hl,2(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,2(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for _asincosf__1_0
	lda	hl,10(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,10(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	___fsadd
;	AOP_STK for _asincosf__1_0
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
;	genAssign
;	AOP_STK for _asincosf__1_0
;	AOP_STK for _asincosf_r_1_1
	lda	hl,0(sp)
	ld	d,h
	ld	e,l
	lda	hl,10(sp)
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
;	genGoto
	jp	00116$
;	genLabel
00115$:
;asincosf.c:83: r=(a[i]+r)+a[i];
;	genLeftShift
;	AOP_STK for _asincosf_i_1_1
	lda	hl,8(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	sla	c
	rl	b
	sla	c
	rl	b
;	genPlus
	ld	hl,#_asincosf_a_1_1
	add	hl,bc
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for _asincosf__1_0
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
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _asincosf_r_1_1
	lda	hl,12(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,12(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for _asincosf__1_0
	lda	hl,6(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,6(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	___fsadd
;	AOP_STK for _asincosf__1_0
	push	hl
	lda	hl,14(sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	lda	sp,8(sp)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _asincosf__1_0
	lda	hl,2(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,2(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for _asincosf__1_0
	lda	hl,10(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,10(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	___fsadd
;	AOP_STK for _asincosf__1_0
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
;	genAssign
;	AOP_STK for _asincosf__1_0
;	AOP_STK for _asincosf_r_1_1
	lda	hl,0(sp)
	ld	d,h
	ld	e,l
	lda	hl,10(sp)
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
;asincosf.c:84: if (x<0.0) r=-r;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x0000
	push	hl
;	genIpush
;	AOP_STK for 
	lda	hl,30(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,30(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	___fslt
	ld	c,e
	lda	sp,8(sp)
;	genIfx
	xor	a,a
	or	a,c
	jp	Z,00116$
;	genUminus
;	AOP_STK for _asincosf_r_1_1
;	genUminusFloat
	lda	hl,13(sp)
	ld	a,(hl)
	xor	a,#0x80
	ld	(hl),a
	lda	hl,10(sp)
	ld	a,(hl)
	ld	(hl+),a
	ld	a,(hl)
	ld	(hl+),a
	ld	a,(hl)
	ld	(hl),a
;	genLabel
00116$:
;asincosf.c:86: return r;
;	genRet
;	AOP_STK for _asincosf_r_1_1
; Dump of IC_LEFT: type AOP_STK size 4
;	 aop_stk -12
	lda	hl,10(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
;	genLabel
00117$:
;	genEndFunction
	lda	sp,22(sp)
	ret
_asincosf_end::
	.area _CODE
	.area _CABS
