;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module atanf
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _atanf
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
;  ram data
;--------------------------------------------------------
	.area _DATA
_atanf_a_1_1:
	.ds 16
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
;atanf.c:49: static myconst float a[]={  0.0, 0.5235987756, 1.5707963268, 1.0471975512 };
;	genArrayInit
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#_atanf_a_1_1
	call	__initrleblock
	.db	#-8,#0x00
	.db	8
	.db	0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
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
;atanf.c:45: float atanf(const float x) _FLOAT_FUNC_REENTRANT
;	genLabel
;	genFunction
;	---------------------------------
; Function atanf
; ---------------------------------
_atanf_start::
_atanf:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-14
	add	hl,sp
	ld	sp,hl
;atanf.c:48: int n=0;
;	genAssign
;	AOP_STK for _atanf_n_1_1
	ld	-10(ix),#0x00
	ld	-9(ix),#0x00
;atanf.c:51: f=fabsf(x);
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
;	AOP_STK for _atanf_f_1_1
	ld	-4(ix),c
	ld	-3(ix),b
	ld	-2(ix),e
	ld	-1(ix),d
;atanf.c:52: if(f>1.0)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x3F80
	push	hl
	ld	hl,#0x0000
	push	hl
;	genIpush
;	AOP_STK for _atanf_f_1_1
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
	jr	Z,00102$
;atanf.c:54: f=1.0/f;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _atanf_f_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	push	hl
	ld	l,-4(ix)
	ld	h,-3(ix)
	push	hl
;	genIpush
	ld	hl,#0x3F80
	push	hl
	ld	hl,#0x0000
	push	hl
;	genCall
	call	___fsdiv
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	pop	af
	pop	af
;	genAssign
;	AOP_STK for _atanf_f_1_1
	ld	-4(ix),c
	ld	-3(ix),b
	ld	-2(ix),e
	ld	-1(ix),d
;atanf.c:55: n=2;
;	genAssign
;	AOP_STK for _atanf_n_1_1
	ld	-10(ix),#0x02
	ld	-9(ix),#0x00
;	genLabel
00102$:
;atanf.c:57: if(f>K1)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x3E89
	push	hl
	ld	hl,#0x30A3
	push	hl
;	genIpush
;	AOP_STK for _atanf_f_1_1
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
	jp	Z,00104$
;atanf.c:59: f=((K2*f-1.0)+f)/(K3+f);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _atanf_f_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	push	hl
	ld	l,-4(ix)
	ld	h,-3(ix)
	push	hl
;	genIpush
	ld	hl,#0x3F3B
	push	hl
	ld	hl,#0x67AF
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
	ld	hl,#0x3F80
	push	hl
	ld	hl,#0x0000
	push	hl
;	genIpush
	ld	l,e
	ld	h,d
	push	hl
	ld	l,c
	ld	h,b
	push	hl
;	genCall
	call	___fssub
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	pop	af
	pop	af
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _atanf_f_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	push	hl
	ld	l,-4(ix)
	ld	h,-3(ix)
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
;	AOP_STK for _atanf__1_0
	ld	-11(ix),d
	ld	-12(ix),e
	ld	-13(ix),h
	ld	-14(ix),l
	pop	af
	pop	af
	pop	af
	pop	af
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x3FDD
	push	hl
	ld	hl,#0xB3D7
	push	hl
;	genIpush
;	AOP_STK for _atanf_f_1_1
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
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	l,e
	ld	h,d
	push	hl
	ld	l,c
	ld	h,b
	push	hl
;	genIpush
;	AOP_STK for _atanf__1_0
	ld	l,-12(ix)
	ld	h,-11(ix)
	push	hl
	ld	l,-14(ix)
	ld	h,-13(ix)
	push	hl
;	genCall
	call	___fsdiv
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	pop	af
	pop	af
;	genAssign
;	AOP_STK for _atanf_f_1_1
	ld	-4(ix),c
	ld	-3(ix),b
	ld	-2(ix),e
	ld	-1(ix),d
;atanf.c:63: n++;
;	genPlus
;	AOP_STK for _atanf_n_1_1
;	genPlusIncr
	inc	-10(ix)
	jr	NZ,00119$
	inc	-9(ix)
00119$:
;	genLabel
00104$:
;atanf.c:65: if(fabsf(f)<EPS) r=f;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _atanf_f_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	push	hl
	ld	l,-4(ix)
	ld	h,-3(ix)
	push	hl
;	genCall
	call	_fabsf
	ld	b,h
	ld	c,l
	pop	af
	pop	af
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x3980
	push	hl
	ld	hl,#0x0000
	push	hl
;	genIpush
	ld	l,e
	ld	h,d
	push	hl
	ld	l,c
	ld	h,b
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
	jr	Z,00106$
;	genAssign
;	AOP_STK for _atanf_f_1_1
;	AOP_STK for _atanf_r_1_1
	ld	a,-4(ix)
	ld	-8(ix),a
	ld	a,-3(ix)
	ld	-7(ix),a
	ld	a,-2(ix)
	ld	-6(ix),a
	ld	a,-1(ix)
	ld	-5(ix),a
;	genGoto
	jp	00107$
;	genLabel
00106$:
;atanf.c:68: g=f*f;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _atanf_f_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	push	hl
	ld	l,-4(ix)
	ld	h,-3(ix)
	push	hl
;	genIpush
;	AOP_STK for _atanf_f_1_1
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
;atanf.c:69: r=f+P(g,f)/Q(g);
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
	ld	hl,#0xBD50
	push	hl
	ld	hl,#0x8691
	push	hl
;	genCall
	call	___fsmul
;	AOP_STK for _atanf__1_0
	ld	-11(ix),d
	ld	-12(ix),e
	ld	-13(ix),h
	ld	-14(ix),l
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
	ld	hl,#0xBEF1
	push	hl
	ld	hl,#0x10F6
	push	hl
;	genIpush
;	AOP_STK for _atanf__1_0
	ld	l,-12(ix)
	ld	h,-11(ix)
	push	hl
	ld	l,-14(ix)
	ld	h,-13(ix)
	push	hl
;	genCall
	call	___fsadd
;	AOP_STK for _atanf__1_0
	ld	-11(ix),d
	ld	-12(ix),e
	ld	-13(ix),h
	ld	-14(ix),l
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
;	AOP_STK for _atanf__1_0
	ld	l,-12(ix)
	ld	h,-11(ix)
	push	hl
	ld	l,-14(ix)
	ld	h,-13(ix)
	push	hl
;	genCall
	call	___fsmul
;	AOP_STK for _atanf__1_0
	ld	-11(ix),d
	ld	-12(ix),e
	ld	-13(ix),h
	ld	-14(ix),l
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
;	AOP_STK for _atanf_f_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	push	hl
	ld	l,-4(ix)
	ld	h,-3(ix)
	push	hl
;	genIpush
;	AOP_STK for _atanf__1_0
	ld	l,-12(ix)
	ld	h,-11(ix)
	push	hl
	ld	l,-14(ix)
	ld	h,-13(ix)
	push	hl
;	genCall
	call	___fsmul
;	AOP_STK for _atanf__1_0
	ld	-11(ix),d
	ld	-12(ix),e
	ld	-13(ix),h
	ld	-14(ix),l
	pop	af
	pop	af
	pop	af
	pop	af
	pop	de
	pop	bc
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x3FB4
	push	hl
	ld	hl,#0xCCD3
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
;	AOP_STK for _atanf__1_0
	ld	l,-12(ix)
	ld	h,-11(ix)
	push	hl
	ld	l,-14(ix)
	ld	h,-13(ix)
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
;	AOP_STK for _atanf_f_1_1
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
;	AOP_STK for _atanf_r_1_1
	ld	-8(ix),c
	ld	-7(ix),b
	ld	-6(ix),e
	ld	-5(ix),d
;	genLabel
00107$:
;atanf.c:71: if(n>1) r=-r;
;	genCmpGt
;	AOP_STK for _atanf_n_1_1
	ld	a,#0x01
	sub	a,-10(ix)
	ld	a,#0x00
	sbc	a,-9(ix)
	jp	P,00109$
;	genUminus
;	AOP_STK for _atanf_r_1_1
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
00109$:
;atanf.c:72: r+=a[n];
;	genLeftShift
;	AOP_STK for _atanf_n_1_1
	ld	c,-10(ix)
	ld	b,-9(ix)
	sla	c
	rl	b
	sla	c
	rl	b
;	genPlus
	ld	hl,#_atanf_a_1_1
	add	hl,bc
;	genPointerGet
	ld	c,l
	ld	b,h
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	l,e
	ld	h,d
	push	hl
	ld	l,c
	ld	h,b
	push	hl
;	genIpush
;	AOP_STK for _atanf_r_1_1
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
;	AOP_STK for _atanf_r_1_1
	ld	-8(ix),c
	ld	-7(ix),b
	ld	-6(ix),e
	ld	-5(ix),d
;atanf.c:73: if(x<0.0) r=-r;
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
;	AOP_STK for _atanf_r_1_1
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
;atanf.c:74: return r;
;	genRet
;	AOP_STK for _atanf_r_1_1
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
_atanf_end::
	.area _CODE
	.area _CABS
