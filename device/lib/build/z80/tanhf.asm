;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module tanhf
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _tanhf
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
;tanhf.c:40: float tanhf(const float x) _FLOAT_FUNC_REENTRANT
;	genLabel
;	genFunction
;	---------------------------------
; Function tanhf
; ---------------------------------
_tanhf_start::
_tanhf:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-12
	add	hl,sp
	ld	sp,hl
;tanhf.c:44: f=fabsf(x);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	ld	l,6(ix)
	ld	h,7(ix)
	push	hl
	ld	l,4(ix)
	ld	h,5(ix)
	push	hl
;	genCall
	call	_fabsf
	ld	b,h
	ld	c,l
	pop	af
	pop	af
;	genAssign
;	AOP_STK for _tanhf_f_1_1
	ld	-4(ix),c
	ld	-3(ix),b
	ld	-2(ix),e
	ld	-1(ix),d
;tanhf.c:45: if(f>SBIG) r=1.0;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x4110
	push	hl
	ld	hl,#0x2CB0
	push	hl
;	genIpush
;	AOP_STK for _tanhf_f_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	push	hl
	ld	l,-4(ix)
	ld	h,-3(ix)
	push	hl
;	genCall
	call	___fsgt
	ld	c,l
	pop	af
	pop	af
	pop	af
	pop	af
;	genIfx
	xor	a,a
	or	a,c
	jr	Z,00108$
;	genAssign
;	AOP_STK for _tanhf_r_1_1
	ld	-8(ix),#0x00
	ld	-7(ix),#0x00
	ld	-6(ix),#0x80
	ld	-5(ix),#0x3F
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
	ld	l,-2(ix)
	ld	h,-1(ix)
	push	hl
	ld	l,-4(ix)
	ld	h,-3(ix)
	push	hl
;	genCall
	call	___fsgt
	ld	c,l
	pop	af
	pop	af
	pop	af
	pop	af
;	genIfx
	xor	a,a
	or	a,c
	jp	Z,00105$
;tanhf.c:48: r=0.5-1.0/(expf(f+f)+1.0);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _tanhf_f_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	push	hl
	ld	l,-4(ix)
	ld	h,-3(ix)
	push	hl
;	genIpush
;	AOP_STK for _tanhf_f_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	push	hl
	ld	l,-4(ix)
	ld	h,-3(ix)
	push	hl
;	genCall
	call	___fsadd
;	AOP_STK for _tanhf__1_0
	ld	-9(ix),d
	ld	-10(ix),e
	ld	-11(ix),h
	ld	-12(ix),l
	pop	af
	pop	af
	pop	af
	pop	af
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _tanhf__1_0
	ld	l,-10(ix)
	ld	h,-9(ix)
	push	hl
	ld	l,-12(ix)
	ld	h,-11(ix)
	push	hl
;	genCall
	call	_expf
;	AOP_STK for _tanhf__1_0
	ld	-9(ix),d
	ld	-10(ix),e
	ld	-11(ix),h
	ld	-12(ix),l
	pop	af
	pop	af
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x3F80
	push	hl
	ld	hl,#0x0000
	push	hl
;	genIpush
;	AOP_STK for _tanhf__1_0
	ld	l,-10(ix)
	ld	h,-9(ix)
	push	hl
	ld	l,-12(ix)
	ld	h,-11(ix)
	push	hl
;	genCall
	call	___fsadd
;	AOP_STK for _tanhf__1_0
	ld	-9(ix),d
	ld	-10(ix),e
	ld	-11(ix),h
	ld	-12(ix),l
	pop	af
	pop	af
	pop	af
	pop	af
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _tanhf__1_0
	ld	l,-10(ix)
	ld	h,-9(ix)
	push	hl
	ld	l,-12(ix)
	ld	h,-11(ix)
	push	hl
;	genIpush
	ld	hl,#0x3F80
	push	hl
	ld	hl,#0x0000
	push	hl
;	genCall
	call	___fsdiv
;	AOP_STK for _tanhf__1_0
	ld	-9(ix),d
	ld	-10(ix),e
	ld	-11(ix),h
	ld	-12(ix),l
	pop	af
	pop	af
	pop	af
	pop	af
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _tanhf__1_0
	ld	l,-10(ix)
	ld	h,-9(ix)
	push	hl
	ld	l,-12(ix)
	ld	h,-11(ix)
	push	hl
;	genIpush
	ld	hl,#0x3F00
	push	hl
	ld	hl,#0x0000
	push	hl
;	genCall
	call	___fssub
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	pop	af
	pop	af
;	genAssign
;	AOP_STK for _tanhf_r_1_1
	ld	-8(ix),c
	ld	-7(ix),b
	ld	-6(ix),e
	ld	-5(ix),d
;tanhf.c:49: r+=r;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _tanhf_r_1_1
	ld	l,-6(ix)
	ld	h,-5(ix)
	push	hl
	ld	l,-8(ix)
	ld	h,-7(ix)
	push	hl
;	genIpush
;	AOP_STK for _tanhf_r_1_1
	ld	l,-6(ix)
	ld	h,-5(ix)
	push	hl
	ld	l,-8(ix)
	ld	h,-7(ix)
	push	hl
;	genCall
	call	___fsadd
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	pop	af
	pop	af
;	genAssign
;	AOP_STK for _tanhf_r_1_1
	ld	-8(ix),c
	ld	-7(ix),b
	ld	-6(ix),e
	ld	-5(ix),d
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
	ld	l,-2(ix)
	ld	h,-1(ix)
	push	hl
	ld	l,-4(ix)
	ld	h,-3(ix)
	push	hl
;	genCall
	call	___fslt
	ld	c,l
	pop	af
	pop	af
	pop	af
	pop	af
;	genIfx
	xor	a,a
	or	a,c
	jr	Z,00102$
;	genAssign
;	AOP_STK for _tanhf_f_1_1
;	AOP_STK for _tanhf_r_1_1
	ld	a,-4(ix)
	ld	-8(ix),a
	ld	a,-3(ix)
	ld	-7(ix),a
	ld	a,-2(ix)
	ld	-6(ix),a
	ld	a,-1(ix)
	ld	-5(ix),a
;	genGoto
	jp	00109$
;	genLabel
00102$:
;tanhf.c:54: g=f*f;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _tanhf_f_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	push	hl
	ld	l,-4(ix)
	ld	h,-3(ix)
	push	hl
;	genIpush
;	AOP_STK for _tanhf_f_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	push	hl
	ld	l,-4(ix)
	ld	h,-3(ix)
	push	hl
;	genCall
	call	___fsmul
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	pop	af
	pop	af
;	genAssign
;	(registers are the same)
;tanhf.c:55: r=f+f*(P(g)/Q(g));
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 1 bcInUse: 1 deSending: 0
	push	bc
	push	de
	ld	l,e
	ld	h,d
	push	hl
	ld	l,c
	ld	h,b
	push	hl
;	genIpush
	ld	hl,#0xBB7B
	push	hl
	ld	hl,#0x11B2
	push	hl
;	genCall
	call	___fsmul
;	AOP_STK for _tanhf__1_0
	ld	-9(ix),d
	ld	-10(ix),e
	ld	-11(ix),h
	ld	-12(ix),l
	pop	af
	pop	af
	pop	af
	pop	af
	pop	de
	pop	bc
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 1 bcInUse: 1 deSending: 0
	push	bc
	push	de
	ld	hl,#0xBF52
	push	hl
	ld	hl,#0xE2C6
	push	hl
;	genIpush
;	AOP_STK for _tanhf__1_0
	ld	l,-10(ix)
	ld	h,-9(ix)
	push	hl
	ld	l,-12(ix)
	ld	h,-11(ix)
	push	hl
;	genCall
	call	___fsadd
;	AOP_STK for _tanhf__1_0
	ld	-9(ix),d
	ld	-10(ix),e
	ld	-11(ix),h
	ld	-12(ix),l
	pop	af
	pop	af
	pop	af
	pop	af
	pop	de
	pop	bc
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 1 bcInUse: 1 deSending: 0
	push	bc
	push	de
	ld	l,e
	ld	h,d
	push	hl
	ld	l,c
	ld	h,b
	push	hl
;	genIpush
;	AOP_STK for _tanhf__1_0
	ld	l,-10(ix)
	ld	h,-9(ix)
	push	hl
	ld	l,-12(ix)
	ld	h,-11(ix)
	push	hl
;	genCall
	call	___fsmul
;	AOP_STK for _tanhf__1_0
	ld	-9(ix),d
	ld	-10(ix),e
	ld	-11(ix),h
	ld	-12(ix),l
	pop	af
	pop	af
	pop	af
	pop	af
	pop	de
	pop	bc
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x401E
	push	hl
	ld	hl,#0x2A1A
	push	hl
;	genIpush
	ld	l,e
	ld	h,d
	push	hl
	ld	l,c
	ld	h,b
	push	hl
;	genCall
	call	___fsadd
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	pop	af
	pop	af
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	l,e
	ld	h,d
	push	hl
	ld	l,c
	ld	h,b
	push	hl
;	genIpush
;	AOP_STK for _tanhf__1_0
	ld	l,-10(ix)
	ld	h,-9(ix)
	push	hl
	ld	l,-12(ix)
	ld	h,-11(ix)
	push	hl
;	genCall
	call	___fsdiv
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	pop	af
	pop	af
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	l,e
	ld	h,d
	push	hl
	ld	l,c
	ld	h,b
	push	hl
;	genIpush
;	AOP_STK for _tanhf_f_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	push	hl
	ld	l,-4(ix)
	ld	h,-3(ix)
	push	hl
;	genCall
	call	___fsmul
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	pop	af
	pop	af
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	l,e
	ld	h,d
	push	hl
	ld	l,c
	ld	h,b
	push	hl
;	genIpush
;	AOP_STK for _tanhf_f_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	push	hl
	ld	l,-4(ix)
	ld	h,-3(ix)
	push	hl
;	genCall
	call	___fsadd
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	pop	af
	pop	af
;	genAssign
;	AOP_STK for _tanhf_r_1_1
	ld	-8(ix),c
	ld	-7(ix),b
	ld	-6(ix),e
	ld	-5(ix),d
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
	ld	l,6(ix)
	ld	h,7(ix)
	push	hl
	ld	l,4(ix)
	ld	h,5(ix)
	push	hl
;	genCall
	call	___fslt
	ld	c,l
	pop	af
	pop	af
	pop	af
	pop	af
;	genIfx
	xor	a,a
	or	a,c
	jr	Z,00111$
;	genUminus
;	AOP_STK for _tanhf_r_1_1
;	genUminusFloat
	ld	a,-5(ix)
	xor	a,#0x80
	ld	-5(ix),a
	ld	a,-8(ix)
	ld	-8(ix),a
	ld	a,-7(ix)
	ld	-7(ix),a
	ld	a,-6(ix)
	ld	-6(ix),a
;	genLabel
00111$:
;tanhf.c:58: return r;
;	genRet
;	AOP_STK for _tanhf_r_1_1
; Dump of IC_LEFT: type AOP_STK size 4
;	 aop_stk -8
	ld	l,-8(ix)
	ld	h,-7(ix)
	ld	e,-6(ix)
	ld	d,-5(ix)
;	genLabel
;	genEndFunction
	ld	sp,ix
	pop	ix
	ret
_tanhf_end::
	.area _CODE
	.area _CABS
