;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module logf
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _logf
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
;logf.c:202: float logf(const float x) _FLOAT_FUNC_REENTRANT
;	genLabel
;	genFunction
;	---------------------------------
; Function logf
; ---------------------------------
_logf_start::
_logf:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-30
	add	hl,sp
	ld	sp,hl
;logf.c:212: if (x<=0.0)
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
	call	___fsgt
	ld	c,l
	pop	af
	pop	af
	pop	af
	pop	af
;	genIfx
	xor	a,a
	or	a,c
	jr	NZ,00102$
;logf.c:214: errno=EDOM;
;	genAssign
	ld	iy,#_errno
	ld	0(iy),#0x21
	ld	1(iy),#0x00
;logf.c:215: return 0.0;
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 4
	ld	hl,#0x0000
	ld	de,#0x0000
	jp	00106$
;	genLabel
00102$:
;logf.c:217: f=frexpf(x, &n);
;	genAddrOf
	ld	hl,#0x0004
	add	hl,sp
	ld	c,l
	ld	b,h
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	push	bc
;	genIpush
;	AOP_STK for 
	ld	l,6(ix)
	ld	h,7(ix)
	push	hl
	ld	l,4(ix)
	ld	h,5(ix)
	push	hl
;	genCall
	call	_frexpf
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	pop	af
;	genAssign
;	AOP_STK for _logf_f_1_1
	ld	-8(ix),c
	ld	-7(ix),b
	ld	-6(ix),e
	ld	-5(ix),d
;logf.c:218: znum=f-0.5;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x3F00
	push	hl
	ld	hl,#0x0000
	push	hl
;	genIpush
;	AOP_STK for _logf_f_1_1
	ld	l,-6(ix)
	ld	h,-5(ix)
	push	hl
	ld	l,-8(ix)
	ld	h,-7(ix)
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
;	AOP_STK for _logf_znum_1_1
	ld	-16(ix),c
	ld	-15(ix),b
	ld	-14(ix),e
	ld	-13(ix),d
;logf.c:219: if (f>C0)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x3F35
	push	hl
	ld	hl,#0x04F3
	push	hl
;	genIpush
;	AOP_STK for _logf_f_1_1
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
	jp	Z,00104$
;logf.c:221: znum-=0.5;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x3F00
	push	hl
	ld	hl,#0x0000
	push	hl
;	genIpush
;	AOP_STK for _logf_znum_1_1
	ld	l,-14(ix)
	ld	h,-13(ix)
	push	hl
	ld	l,-16(ix)
	ld	h,-15(ix)
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
;	AOP_STK for _logf_znum_1_1
	ld	-16(ix),c
	ld	-15(ix),b
	ld	-14(ix),e
	ld	-13(ix),d
;logf.c:222: zden=(f*0.5)+0.5;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _logf_f_1_1
	ld	l,-6(ix)
	ld	h,-5(ix)
	push	hl
	ld	l,-8(ix)
	ld	h,-7(ix)
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
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x3F00
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
	call	___fsadd
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	pop	af
	pop	af
;	genAssign
;	(registers are the same)
;	genGoto
	jp	00105$
;	genLabel
00104$:
;logf.c:226: n--;
;	genAssign
;	AOP_STK for _logf_n_1_1
	ld	c,-26(ix)
	ld	b,-25(ix)
;	genMinus
;	AOP_STK for _logf_n_1_1
	ld	a,c
	add	a,#0xFF
	ld	-26(ix),a
	ld	a,b
	adc	a,#0xFF
	ld	-25(ix),a
;logf.c:227: zden=znum*0.5+0.5;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _logf_znum_1_1
	ld	l,-14(ix)
	ld	h,-13(ix)
	push	hl
	ld	l,-16(ix)
	ld	h,-15(ix)
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
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x3F00
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
	call	___fsadd
;	AOP_STK for _logf_zden_1_1
	ld	-17(ix),d
	ld	-18(ix),e
	ld	-19(ix),h
	ld	-20(ix),l
	pop	af
	pop	af
	pop	af
	pop	af
;	genAssign
;	AOP_STK for _logf_zden_1_1
	ld	c,-20(ix)
	ld	b,-19(ix)
	ld	e,-18(ix)
	ld	d,-17(ix)
;	genLabel
00105$:
;logf.c:229: z=znum/zden;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	l,e
	ld	h,d
	push	hl
	ld	l,c
	ld	h,b
	push	hl
;	genIpush
;	AOP_STK for _logf_znum_1_1
	ld	l,-14(ix)
	ld	h,-13(ix)
	push	hl
	ld	l,-16(ix)
	ld	h,-15(ix)
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
;	AOP_STK for _logf_z_1_1
	ld	-12(ix),c
	ld	-11(ix),b
	ld	-10(ix),e
	ld	-9(ix),d
;logf.c:230: w=z*z;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _logf_z_1_1
	ld	l,-10(ix)
	ld	h,-9(ix)
	push	hl
	ld	l,-12(ix)
	ld	h,-11(ix)
	push	hl
;	genIpush
;	AOP_STK for _logf_z_1_1
	ld	l,-10(ix)
	ld	h,-9(ix)
	push	hl
	ld	l,-12(ix)
	ld	h,-11(ix)
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
;logf.c:232: Rz=z+z*(w*A(w)/B(w));
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
	ld	hl,#0xBF0D
	push	hl
	ld	hl,#0x7E3D
	push	hl
;	genCall
	call	___fsmul
;	AOP_STK for _logf__1_0
	ld	-27(ix),d
	ld	-28(ix),e
	ld	-29(ix),h
	ld	-30(ix),l
	pop	af
	pop	af
	pop	af
	pop	af
	pop	de
	pop	bc
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0xC0D4
	push	hl
	ld	hl,#0x3F3A
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
;	AOP_STK for _logf__1_0
	ld	l,-28(ix)
	ld	h,-27(ix)
	push	hl
	ld	l,-30(ix)
	ld	h,-29(ix)
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
;	AOP_STK for _logf_z_1_1
	ld	l,-10(ix)
	ld	h,-9(ix)
	push	hl
	ld	l,-12(ix)
	ld	h,-11(ix)
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
;	AOP_STK for _logf_z_1_1
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
;	AOP_STK for _logf_Rz_1_1
	ld	-4(ix),c
	ld	-3(ix),b
	ld	-2(ix),e
	ld	-1(ix),d
;logf.c:233: xn=n;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _logf_n_1_1
	ld	l,-26(ix)
	ld	h,-25(ix)
	push	hl
;	genCall
	call	___sint2fs
	ld	b,h
	ld	c,l
	pop	af
;	genAssign
;	AOP_STK for _logf_xn_1_1
	ld	-24(ix),c
	ld	-23(ix),b
	ld	-22(ix),e
	ld	-21(ix),d
;logf.c:234: return ((xn*C2+Rz)+xn*C1);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _logf_xn_1_1
	ld	l,-22(ix)
	ld	h,-21(ix)
	push	hl
	ld	l,-24(ix)
	ld	h,-23(ix)
	push	hl
;	genIpush
	ld	hl,#0xB95E
	push	hl
	ld	hl,#0x8083
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
;	AOP_STK for _logf_Rz_1_1
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
;	AOP_STK for _logf__1_0
	ld	-27(ix),d
	ld	-28(ix),e
	ld	-29(ix),h
	ld	-30(ix),l
	pop	af
	pop	af
	pop	af
	pop	af
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _logf_xn_1_1
	ld	l,-22(ix)
	ld	h,-21(ix)
	push	hl
	ld	l,-24(ix)
	ld	h,-23(ix)
	push	hl
;	genIpush
	ld	hl,#0x3F31
	push	hl
	ld	hl,#0x8000
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
;	AOP_STK for _logf__1_0
	ld	l,-28(ix)
	ld	h,-27(ix)
	push	hl
	ld	l,-30(ix)
	ld	h,-29(ix)
	push	hl
;	genCall
	call	___fsadd
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	pop	af
	pop	af
;	genRet
; Dump of IC_LEFT: type AOP_REG size 4
;	 reg = debc
	ld	l,c
	ld	h,b
;	genLabel
00106$:
;	genEndFunction
	ld	sp,ix
	pop	ix
	ret
_logf_end::
	.area _CODE
	.area _CABS
