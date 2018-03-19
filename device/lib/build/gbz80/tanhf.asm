;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:02 2018
;--------------------------------------------------------
	.module tanhf
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _tanhf
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
;tanhf.c:40: float tanhf(const float x) _FLOAT_FUNC_REENTRANT
;	genLabel
;	genFunction
;	---------------------------------
; Function tanhf
; ---------------------------------
_tanhf_start::
_tanhf:
	lda	sp,-20(sp)
;tanhf.c:44: f=fabsf(x);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
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
	call	_fabsf
;	AOP_STK for _tanhf_f_1_1
	push	hl
	lda	hl,22(sp)
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
;	AOP_STK for _tanhf_f_1_1
;	(registers are the same)
;tanhf.c:45: if(f>SBIG) r=1.0;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x4110
	push	hl
	ld	hl,#0x2CB0
	push	hl
;	genIpush
;	AOP_STK for _tanhf_f_1_1
	lda	hl,22(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,22(sp)
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
	jp	Z,00108$
;	genAssign
;	AOP_STK for _tanhf_r_1_1
	lda	hl,8(sp)
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x80
	inc	hl
	ld	(hl),#0x3F
;	genGoto
	jp	00109$
;	genLabel
00108$:
;tanhf.c:46: else if(f>K1)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x3F0C
	push	hl
	ld	hl,#0x9F54
	push	hl
;	genIpush
;	AOP_STK for _tanhf_f_1_1
	lda	hl,22(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,22(sp)
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
	jp	Z,00105$
;tanhf.c:48: r=0.5-1.0/(expf(f+f)+1.0);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _tanhf_f_1_1
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
;	genIpush
;	AOP_STK for _tanhf_f_1_1
	lda	hl,22(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,22(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	___fsadd
;	AOP_STK for _tanhf__1_0
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
;	AOP_STK for _tanhf__1_0
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
	call	_expf
;	AOP_STK for _tanhf__1_0
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
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x3F80
	push	hl
	ld	hl,#0x0000
	push	hl
;	genIpush
;	AOP_STK for _tanhf__1_0
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
;	AOP_STK for _tanhf__1_0
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
;	AOP_STK for _tanhf__1_0
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
;	genIpush
	ld	hl,#0x3F80
	push	hl
	ld	hl,#0x0000
	push	hl
;	genCall
	call	___fsdiv
;	AOP_STK for _tanhf__1_0
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
;	AOP_STK for _tanhf__1_0
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
;	genIpush
	ld	hl,#0x3F00
	push	hl
	ld	hl,#0x0000
	push	hl
;	genCall
	call	___fssub
;	AOP_STK for _tanhf__1_0
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
;	AOP_STK for _tanhf__1_0
;	AOP_STK for _tanhf_r_1_1
	lda	hl,4(sp)
	ld	d,h
	ld	e,l
	lda	hl,8(sp)
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
;tanhf.c:49: r+=r;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _tanhf_r_1_1
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
;	genIpush
;	AOP_STK for _tanhf_r_1_1
	lda	hl,14(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,14(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	___fsadd
;	AOP_STK for _tanhf__1_0
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
;	AOP_STK for _tanhf__1_0
;	AOP_STK for _tanhf_r_1_1
	lda	hl,4(sp)
	ld	d,h
	ld	e,l
	lda	hl,8(sp)
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
	jp	00109$
;	genLabel
00105$:
;tanhf.c:51: else if(f<EPS) r=f;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x3980
	push	hl
	ld	hl,#0x0000
	push	hl
;	genIpush
;	AOP_STK for _tanhf_f_1_1
	lda	hl,22(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,22(sp)
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
	jp	Z,00102$
;	genAssign
;	AOP_STK for _tanhf_f_1_1
;	AOP_STK for _tanhf_r_1_1
	lda	hl,16(sp)
	ld	d,h
	ld	e,l
	lda	hl,8(sp)
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
	jp	00109$
;	genLabel
00102$:
;tanhf.c:54: g=f*f;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _tanhf_f_1_1
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
;	genIpush
;	AOP_STK for _tanhf_f_1_1
	lda	hl,22(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,22(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	___fsmul
;	AOP_STK for _tanhf_g_1_1
	push	hl
	lda	hl,22(sp)
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
;	AOP_STK for _tanhf_g_1_1
;	(registers are the same)
;tanhf.c:55: r=f+f*(P(g)/Q(g));
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _tanhf_g_1_1
	lda	hl,14(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,14(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
	ld	hl,#0xBB7B
	push	hl
	ld	hl,#0x11B2
	push	hl
;	genCall
	call	___fsmul
;	AOP_STK for _tanhf__1_0
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
	ld	hl,#0xBF52
	push	hl
	ld	hl,#0xE2C6
	push	hl
;	genIpush
;	AOP_STK for _tanhf__1_0
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
;	AOP_STK for _tanhf__1_0
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
;	AOP_STK for _tanhf_g_1_1
	lda	hl,14(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,14(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for _tanhf__1_0
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
;	AOP_STK for _tanhf__1_0
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
	ld	hl,#0x401E
	push	hl
	ld	hl,#0x2A1A
	push	hl
;	genIpush
;	AOP_STK for _tanhf_g_1_1
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
	call	___fsadd
;	AOP_STK for _tanhf__1_0
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
;	AOP_STK for _tanhf__1_0
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
;	AOP_STK for _tanhf__1_0
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
;	AOP_STK for _tanhf__1_0
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
;	AOP_STK for _tanhf__1_0
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
;	AOP_STK for _tanhf_f_1_1
	lda	hl,22(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,22(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	___fsmul
;	AOP_STK for _tanhf__1_0
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
;	AOP_STK for _tanhf__1_0
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
;	AOP_STK for _tanhf_f_1_1
	lda	hl,22(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,22(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	___fsadd
;	AOP_STK for _tanhf__1_0
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
;	AOP_STK for _tanhf__1_0
;	AOP_STK for _tanhf_r_1_1
	lda	hl,0(sp)
	ld	d,h
	ld	e,l
	lda	hl,8(sp)
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
00109$:
;tanhf.c:57: if(x<0.0) r=-r;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x0000
	push	hl
;	genIpush
;	AOP_STK for 
	lda	hl,28(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,28(sp)
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
	jp	Z,00111$
;	genUminus
;	AOP_STK for _tanhf_r_1_1
;	genUminusFloat
	lda	hl,11(sp)
	ld	a,(hl)
	xor	a,#0x80
	ld	(hl),a
	lda	hl,8(sp)
	ld	a,(hl)
	ld	(hl+),a
	ld	a,(hl)
	ld	(hl+),a
	ld	a,(hl)
	ld	(hl),a
;	genLabel
00111$:
;tanhf.c:58: return r;
;	genRet
;	AOP_STK for _tanhf_r_1_1
; Dump of IC_LEFT: type AOP_STK size 4
;	 aop_stk -12
	lda	hl,8(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
;	genLabel
00112$:
;	genEndFunction
	lda	sp,20(sp)
	ret
_tanhf_end::
	.area _CODE
	.area _CABS
