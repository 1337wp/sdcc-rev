;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module sincoshf
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sincoshf
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
;sincoshf.c:46: float sincoshf(const float x, const int iscosh)
;	genLabel
;	genFunction
;	---------------------------------
; Function sincoshf
; ---------------------------------
_sincoshf_start::
_sincoshf:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-17
	add	hl,sp
	ld	sp,hl
;sincoshf.c:51: if (x<0.0) { y=-x; sign=1; }
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
	jr	Z,00102$
;	genUminus
;	AOP_STK for 
;	genUminusFloat
	ld	a,7(ix)
	xor	a,#0x80
	ld	d,a
	ld	c,4(ix)
	ld	b,5(ix)
	ld	e,6(ix)
;	genAssign
;	AOP_STK for _sincoshf_y_1_1
	ld	-4(ix),c
	ld	-3(ix),b
	ld	-2(ix),e
	ld	-1(ix),d
;	genAssign
;	AOP_STK for _sincoshf_sign_1_1
	ld	-13(ix),#0x01
;	genGoto
	jr	00103$
;	genLabel
00102$:
;sincoshf.c:52: else { y=x;  sign=0; }
;	genAssign
;	AOP_STK for 
;	AOP_STK for _sincoshf_y_1_1
	ld	a,4(ix)
	ld	-4(ix),a
	ld	a,5(ix)
	ld	-3(ix),a
	ld	a,6(ix)
	ld	-2(ix),a
	ld	a,7(ix)
	ld	-1(ix),a
;	genAssign
;	AOP_STK for _sincoshf_sign_1_1
	ld	-13(ix),#0x00
;	genLabel
00103$:
;sincoshf.c:54: if ((y>1.0) || iscosh)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x3F80
	push	hl
	ld	hl,#0x0000
	push	hl
;	genIpush
;	AOP_STK for _sincoshf_y_1_1
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
	jr	NZ,00117$
;	genIfx
;	AOP_STK for 
	ld	a,8(ix)
	or	a,9(ix)
	jp	Z,00118$
;	genLabel
00117$:
;sincoshf.c:56: if(y>YBAR)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x4110
	push	hl
	ld	hl,#0x0000
	push	hl
;	genIpush
;	AOP_STK for _sincoshf_y_1_1
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
	jp	Z,00110$
;sincoshf.c:58: w=y-K1;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x3F31
	push	hl
	ld	hl,#0x7300
	push	hl
;	genIpush
;	AOP_STK for _sincoshf_y_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	push	hl
	ld	l,-4(ix)
	ld	h,-3(ix)
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
;	AOP_STK for _sincoshf_w_1_1
	ld	-8(ix),c
	ld	-7(ix),b
	ld	-6(ix),e
	ld	-5(ix),d
;sincoshf.c:59: if (w>WMAX)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x4233
	push	hl
	ld	hl,#0xBDCF
	push	hl
;	genIpush
;	AOP_STK for _sincoshf_w_1_1
	ld	l,-6(ix)
	ld	h,-5(ix)
	push	hl
	ld	l,-8(ix)
	ld	h,-7(ix)
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
	jr	Z,00105$
;sincoshf.c:61: errno=ERANGE;
;	genAssign
	ld	iy,#_errno
	ld	0(iy),#0x22
	ld	1(iy),#0x00
;sincoshf.c:62: z=HUGE_VALF;
;	genAssign
;	AOP_STK for _sincoshf_z_1_1
	ld	-12(ix),#0xFF
	ld	-11(ix),#0xFF
	ld	-10(ix),#0x7F
	ld	-9(ix),#0x7F
;	genGoto
	jp	00111$
;	genLabel
00105$:
;sincoshf.c:66: z=expf(w);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _sincoshf_w_1_1
	ld	l,-6(ix)
	ld	h,-5(ix)
	push	hl
	ld	l,-8(ix)
	ld	h,-7(ix)
	push	hl
;	genCall
	call	_expf
	ld	b,h
	ld	c,l
	pop	af
	pop	af
;	genAssign
;	AOP_STK for _sincoshf_z_1_1
	ld	-12(ix),c
	ld	-11(ix),b
	ld	-10(ix),e
	ld	-9(ix),d
;sincoshf.c:67: z+=K3*z;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _sincoshf_z_1_1
	ld	l,-10(ix)
	ld	h,-9(ix)
	push	hl
	ld	l,-12(ix)
	ld	h,-11(ix)
	push	hl
;	genIpush
	ld	hl,#0x3768
	push	hl
	ld	hl,#0x0897
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
;	AOP_STK for _sincoshf_z_1_1
	ld	l,-10(ix)
	ld	h,-9(ix)
	push	hl
	ld	l,-12(ix)
	ld	h,-11(ix)
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
;	AOP_STK for _sincoshf_z_1_1
	ld	-12(ix),c
	ld	-11(ix),b
	ld	-10(ix),e
	ld	-9(ix),d
;	genGoto
	jp	00111$
;	genLabel
00110$:
;sincoshf.c:72: z=expf(y);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _sincoshf_y_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	push	hl
	ld	l,-4(ix)
	ld	h,-3(ix)
	push	hl
;	genCall
	call	_expf
	ld	b,h
	ld	c,l
	pop	af
	pop	af
;	genAssign
;	AOP_STK for _sincoshf_z_1_1
	ld	-12(ix),c
	ld	-11(ix),b
	ld	-10(ix),e
	ld	-9(ix),d
;sincoshf.c:73: w=1.0/z;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _sincoshf_z_1_1
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
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	pop	af
	pop	af
;	genAssign
;	AOP_STK for _sincoshf_w_1_1
	ld	-8(ix),c
	ld	-7(ix),b
	ld	-6(ix),e
	ld	-5(ix),d
;sincoshf.c:74: if(!iscosh) w=-w;
;	genIfx
;	AOP_STK for 
	ld	a,8(ix)
	or	a,9(ix)
	jr	NZ,00108$
;	genUminus
;	AOP_STK for _sincoshf_w_1_1
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
00108$:
;sincoshf.c:75: z=(z+w)*0.5;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _sincoshf_w_1_1
	ld	l,-6(ix)
	ld	h,-5(ix)
	push	hl
	ld	l,-8(ix)
	ld	h,-7(ix)
	push	hl
;	genIpush
;	AOP_STK for _sincoshf_z_1_1
	ld	l,-10(ix)
	ld	h,-9(ix)
	push	hl
	ld	l,-12(ix)
	ld	h,-11(ix)
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
	ld	hl,#0x3F00
	push	hl
	ld	hl,#0x0000
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
;	AOP_STK for _sincoshf_z_1_1
	ld	-12(ix),c
	ld	-11(ix),b
	ld	-10(ix),e
	ld	-9(ix),d
;	genLabel
00111$:
;sincoshf.c:77: if(sign) z=-z;
;	genIfx
;	AOP_STK for _sincoshf_sign_1_1
	xor	a,a
	or	a,-13(ix)
	jp	Z,00119$
;	genUminus
;	AOP_STK for _sincoshf_z_1_1
;	genUminusFloat
	ld	a,-9(ix)
	xor	a,#0x80
	ld	-9(ix),a
	ld	a,-12(ix)
	ld	-12(ix),a
	ld	a,-11(ix)
	ld	-11(ix),a
	ld	a,-10(ix)
	ld	-10(ix),a
;	genGoto
	jp	00119$
;	genLabel
00118$:
;sincoshf.c:81: if (y<EPS)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x3980
	push	hl
	ld	hl,#0x0000
	push	hl
;	genIpush
;	AOP_STK for _sincoshf_y_1_1
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
	jr	Z,00115$
;sincoshf.c:82: z=x;
;	genAssign
;	AOP_STK for 
;	AOP_STK for _sincoshf_z_1_1
	ld	a,4(ix)
	ld	-12(ix),a
	ld	a,5(ix)
	ld	-11(ix),a
	ld	a,6(ix)
	ld	-10(ix),a
	ld	a,7(ix)
	ld	-9(ix),a
;	genGoto
	jp	00119$
;	genLabel
00115$:
;sincoshf.c:85: z=x*x;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	ld	l,6(ix)
	ld	h,7(ix)
	push	hl
	ld	l,4(ix)
	ld	h,5(ix)
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
	call	___fsmul
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	pop	af
	pop	af
;	genAssign
;	AOP_STK for _sincoshf_z_1_1
	ld	-12(ix),c
	ld	-11(ix),b
	ld	-10(ix),e
	ld	-9(ix),d
;sincoshf.c:86: z=x+x*z*P(z)/Q(z);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _sincoshf_z_1_1
	ld	l,-10(ix)
	ld	h,-9(ix)
	push	hl
	ld	l,-12(ix)
	ld	h,-11(ix)
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
	call	___fsmul
;	AOP_STK for _sincoshf__1_0
	ld	-14(ix),d
	ld	-15(ix),e
	ld	-16(ix),h
	ld	-17(ix),l
	pop	af
	pop	af
	pop	af
	pop	af
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _sincoshf_z_1_1
	ld	l,-10(ix)
	ld	h,-9(ix)
	push	hl
	ld	l,-12(ix)
	ld	h,-11(ix)
	push	hl
;	genIpush
	ld	hl,#0xBE42
	push	hl
	ld	hl,#0xE6EA
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
	ld	hl,#0xC0E4
	push	hl
	ld	hl,#0x69F0
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
;	AOP_STK for _sincoshf__1_0
	ld	l,-15(ix)
	ld	h,-14(ix)
	push	hl
	ld	l,-17(ix)
	ld	h,-16(ix)
	push	hl
;	genCall
	call	___fsmul
;	AOP_STK for _sincoshf__1_0
	ld	-14(ix),d
	ld	-15(ix),e
	ld	-16(ix),h
	ld	-17(ix),l
	pop	af
	pop	af
	pop	af
	pop	af
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0xC22B
	push	hl
	ld	hl,#0x4F93
	push	hl
;	genIpush
;	AOP_STK for _sincoshf_z_1_1
	ld	l,-10(ix)
	ld	h,-9(ix)
	push	hl
	ld	l,-12(ix)
	ld	h,-11(ix)
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
;	AOP_STK for _sincoshf__1_0
	ld	l,-15(ix)
	ld	h,-14(ix)
	push	hl
	ld	l,-17(ix)
	ld	h,-16(ix)
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
;	AOP_STK for 
	ld	l,6(ix)
	ld	h,7(ix)
	push	hl
	ld	l,4(ix)
	ld	h,5(ix)
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
;	AOP_STK for _sincoshf_z_1_1
	ld	-12(ix),c
	ld	-11(ix),b
	ld	-10(ix),e
	ld	-9(ix),d
;	genLabel
00119$:
;sincoshf.c:89: return z;
;	genRet
;	AOP_STK for _sincoshf_z_1_1
; Dump of IC_LEFT: type AOP_STK size 4
;	 aop_stk -12
	ld	l,-12(ix)
	ld	h,-11(ix)
	ld	e,-10(ix)
	ld	d,-9(ix)
;	genLabel
;	genEndFunction
	ld	sp,ix
	pop	ix
	ret
_sincoshf_end::
	.area _CODE
	.area _CABS
