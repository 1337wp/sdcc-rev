;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module sincosf
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sincosf
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
;sincosf.c:40: float sincosf(const float x, const int iscos)
;	genLabel
;	genFunction
;	---------------------------------
; Function sincosf
; ---------------------------------
_sincosf_start::
_sincosf:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-26
	add	hl,sp
	ld	sp,hl
;sincosf.c:46: if(iscos)
;	genIfx
;	AOP_STK for 
	ld	a,8(ix)
	or	a,9(ix)
	jr	Z,00105$
;sincosf.c:48: y=fabsf(x)+HALF_PI;
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
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x3FC9
	push	hl
	ld	hl,#0x0FDB
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
;	AOP_STK for _sincosf_y_1_1
	ld	-4(ix),c
	ld	-3(ix),b
	ld	-2(ix),e
	ld	-1(ix),d
;sincosf.c:49: sign=0;
;	genAssign
;	AOP_STK for _sincosf_sign_1_1
	ld	-21(ix),#0x00
;	genGoto
	jr	00106$
;	genLabel
00105$:
;sincosf.c:53: if(x<0.0)
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
;	AOP_STK for _sincosf__1_0
	ld	-22(ix),l
	pop	af
	pop	af
	pop	af
	pop	af
;	genIfx
;	AOP_STK for _sincosf__1_0
	xor	a,a
	or	a,-22(ix)
	jr	Z,00102$
;sincosf.c:54: { y=-x; sign=1; }
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
;	AOP_STK for _sincosf_y_1_1
	ld	-4(ix),c
	ld	-3(ix),b
	ld	-2(ix),e
	ld	-1(ix),d
;	genAssign
;	AOP_STK for _sincosf_sign_1_1
	ld	-21(ix),#0x01
;	genGoto
	jr	00106$
;	genLabel
00102$:
;sincosf.c:56: { y=x; sign=0; }
;	genAssign
;	AOP_STK for 
;	AOP_STK for _sincosf_y_1_1
	ld	a,4(ix)
	ld	-4(ix),a
	ld	a,5(ix)
	ld	-3(ix),a
	ld	a,6(ix)
	ld	-2(ix),a
	ld	a,7(ix)
	ld	-1(ix),a
;	genAssign
;	AOP_STK for _sincosf_sign_1_1
	ld	-21(ix),#0x00
;	genLabel
00106$:
;sincosf.c:59: if(y>YMAX)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x4649
	push	hl
	ld	hl,#0x0C00
	push	hl
;	genIpush
;	AOP_STK for _sincosf_y_1_1
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
;sincosf.c:61: errno=ERANGE;
;	genAssign
	ld	iy,#_errno
	ld	0(iy),#0x22
	ld	1(iy),#0x00
;sincosf.c:62: return 0.0;
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 4
	ld	hl,#0x0000
	ld	de,#0x0000
	jp	00115$
;	genLabel
00108$:
;sincosf.c:66: N=((y*iPI)+0.5); /*y is positive*/
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _sincosf_y_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	push	hl
	ld	l,-4(ix)
	ld	h,-3(ix)
	push	hl
;	genIpush
	ld	hl,#0x3EA2
	push	hl
	ld	hl,#0xF983
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
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	l,e
	ld	h,d
	push	hl
	ld	l,c
	ld	h,b
	push	hl
;	genCall
	call	___fs2sint
	ld	b,h
	ld	c,l
	pop	af
	pop	af
;	genAssign
;	(registers are the same)
;sincosf.c:69: if(N&1) sign=!sign;
;	genAnd
	ld	a,c
	and	a,#0x01
	jr	Z,00110$
;	genNot
;	AOP_STK for _sincosf_sign_1_1
	xor	a,a
	or	a,-21(ix)
	sub	a,#0x01
	ld	a,#0x00
	rla
	ld	-21(ix),a
;	genLabel
00110$:
;sincosf.c:71: XN=N;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	push	bc
;	genCall
	call	___sint2fs
	ld	b,h
	ld	c,l
	pop	af
;	genAssign
;	AOP_STK for _sincosf_XN_1_1
	ld	-20(ix),c
	ld	-19(ix),b
	ld	-18(ix),e
	ld	-17(ix),d
;sincosf.c:73: if(iscos) XN-=0.5;
;	genIfx
;	AOP_STK for 
	ld	a,8(ix)
	or	a,9(ix)
	jr	Z,00112$
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x3F00
	push	hl
	ld	hl,#0x0000
	push	hl
;	genIpush
;	AOP_STK for _sincosf_XN_1_1
	ld	l,-18(ix)
	ld	h,-17(ix)
	push	hl
	ld	l,-20(ix)
	ld	h,-19(ix)
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
;	AOP_STK for _sincosf_XN_1_1
	ld	-20(ix),c
	ld	-19(ix),b
	ld	-18(ix),e
	ld	-17(ix),d
;	genLabel
00112$:
;sincosf.c:75: y=fabsf(x);
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
;	AOP_STK for _sincosf_y_1_1
	ld	-4(ix),c
	ld	-3(ix),b
	ld	-2(ix),e
	ld	-1(ix),d
;sincosf.c:76: r=(int)y;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _sincosf_y_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	push	hl
	ld	l,-4(ix)
	ld	h,-3(ix)
	push	hl
;	genCall
	call	___fs2sint
	ld	b,h
	ld	c,l
	pop	af
	pop	af
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	push	bc
;	genCall
	call	___sint2fs
	ld	b,h
	ld	c,l
	pop	af
;	genAssign
;	AOP_STK for _sincosf_r_1_1
	ld	-12(ix),c
	ld	-11(ix),b
	ld	-10(ix),e
	ld	-9(ix),d
;sincosf.c:77: g=y-r;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _sincosf_r_1_1
	ld	l,-10(ix)
	ld	h,-9(ix)
	push	hl
	ld	l,-12(ix)
	ld	h,-11(ix)
	push	hl
;	genIpush
;	AOP_STK for _sincosf_y_1_1
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
;	AOP_STK for _sincosf_g_1_1
	ld	-16(ix),c
	ld	-15(ix),b
	ld	-14(ix),e
	ld	-13(ix),d
;sincosf.c:78: f=((r-XN*C1)+g)-XN*C2;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _sincosf_XN_1_1
	ld	l,-18(ix)
	ld	h,-17(ix)
	push	hl
	ld	l,-20(ix)
	ld	h,-19(ix)
	push	hl
;	genIpush
	ld	hl,#0x4049
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
	ld	l,e
	ld	h,d
	push	hl
	ld	l,c
	ld	h,b
	push	hl
;	genIpush
;	AOP_STK for _sincosf_r_1_1
	ld	l,-10(ix)
	ld	h,-9(ix)
	push	hl
	ld	l,-12(ix)
	ld	h,-11(ix)
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
;	AOP_STK for _sincosf_g_1_1
	ld	l,-14(ix)
	ld	h,-13(ix)
	push	hl
	ld	l,-16(ix)
	ld	h,-15(ix)
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
;	AOP_STK for _sincosf__1_0
	ld	-23(ix),d
	ld	-24(ix),e
	ld	-25(ix),h
	ld	-26(ix),l
	pop	af
	pop	af
	pop	af
	pop	af
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _sincosf_XN_1_1
	ld	l,-18(ix)
	ld	h,-17(ix)
	push	hl
	ld	l,-20(ix)
	ld	h,-19(ix)
	push	hl
;	genIpush
	ld	hl,#0x3A7D
	push	hl
	ld	hl,#0xAA22
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
;	AOP_STK for _sincosf__1_0
	ld	l,-24(ix)
	ld	h,-23(ix)
	push	hl
	ld	l,-26(ix)
	ld	h,-25(ix)
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
;	AOP_STK for _sincosf_f_1_1
	ld	-8(ix),c
	ld	-7(ix),b
	ld	-6(ix),e
	ld	-5(ix),d
;sincosf.c:80: g=f*f;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _sincosf_f_1_1
	ld	l,-6(ix)
	ld	h,-5(ix)
	push	hl
	ld	l,-8(ix)
	ld	h,-7(ix)
	push	hl
;	genIpush
;	AOP_STK for _sincosf_f_1_1
	ld	l,-6(ix)
	ld	h,-5(ix)
	push	hl
	ld	l,-8(ix)
	ld	h,-7(ix)
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
;	AOP_STK for _sincosf_g_1_1
	ld	-16(ix),c
	ld	-15(ix),b
	ld	-14(ix),e
	ld	-13(ix),d
;sincosf.c:81: if(g>EPS2) //Used to be if(fabsf(f)>EPS)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x337F
	push	hl
	ld	hl,#0xFFF3
	push	hl
;	genIpush
;	AOP_STK for _sincosf_g_1_1
	ld	l,-14(ix)
	ld	h,-13(ix)
	push	hl
	ld	l,-16(ix)
	ld	h,-15(ix)
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
	jp	Z,00114$
;sincosf.c:83: r=(((r4*g+r3)*g+r2)*g+r1)*g;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _sincosf_g_1_1
	ld	l,-14(ix)
	ld	h,-13(ix)
	push	hl
	ld	l,-16(ix)
	ld	h,-15(ix)
	push	hl
;	genIpush
	ld	hl,#0x362E
	push	hl
	ld	hl,#0x9C5B
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
	ld	hl,#0xB94F
	push	hl
	ld	hl,#0xB222
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
;	AOP_STK for _sincosf_g_1_1
	ld	l,-14(ix)
	ld	h,-13(ix)
	push	hl
	ld	l,-16(ix)
	ld	h,-15(ix)
	push	hl
;	genIpush
	ld	l,e
	ld	h,d
	push	hl
	ld	l,c
	ld	h,b
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
	ld	hl,#0x3C08
	push	hl
	ld	hl,#0x873E
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
;	AOP_STK for _sincosf_g_1_1
	ld	l,-14(ix)
	ld	h,-13(ix)
	push	hl
	ld	l,-16(ix)
	ld	h,-15(ix)
	push	hl
;	genIpush
	ld	l,e
	ld	h,d
	push	hl
	ld	l,c
	ld	h,b
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
	ld	hl,#0xBE2A
	push	hl
	ld	hl,#0xAAA4
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
;	AOP_STK for _sincosf_g_1_1
	ld	l,-14(ix)
	ld	h,-13(ix)
	push	hl
	ld	l,-16(ix)
	ld	h,-15(ix)
	push	hl
;	genIpush
	ld	l,e
	ld	h,d
	push	hl
	ld	l,c
	ld	h,b
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
;	AOP_STK for _sincosf_r_1_1
	ld	-12(ix),c
	ld	-11(ix),b
	ld	-10(ix),e
	ld	-9(ix),d
;sincosf.c:84: f+=f*r;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _sincosf_r_1_1
	ld	l,-10(ix)
	ld	h,-9(ix)
	push	hl
	ld	l,-12(ix)
	ld	h,-11(ix)
	push	hl
;	genIpush
;	AOP_STK for _sincosf_f_1_1
	ld	l,-6(ix)
	ld	h,-5(ix)
	push	hl
	ld	l,-8(ix)
	ld	h,-7(ix)
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
;	AOP_STK for _sincosf_f_1_1
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
;	AOP_STK for _sincosf_f_1_1
	ld	-8(ix),c
	ld	-7(ix),b
	ld	-6(ix),e
	ld	-5(ix),d
;	genLabel
00114$:
;sincosf.c:86: return (sign?-f:f);
;	genIfx
;	AOP_STK for _sincosf_sign_1_1
	xor	a,a
	or	a,-21(ix)
	jr	Z,00117$
;	genUminus
;	AOP_STK for _sincosf_f_1_1
;	genUminusFloat
	ld	a,-5(ix)
	xor	a,#0x80
	ld	d,a
	ld	c,-8(ix)
	ld	b,-7(ix)
	ld	e,-6(ix)
;	genGoto
	jr	00118$
;	genLabel
00117$:
;	genAssign
;	AOP_STK for _sincosf_f_1_1
	ld	c,-8(ix)
	ld	b,-7(ix)
	ld	e,-6(ix)
	ld	d,-5(ix)
;	genLabel
00118$:
;	genRet
; Dump of IC_LEFT: type AOP_REG size 4
;	 reg = debc
	ld	l,c
	ld	h,b
;	genLabel
00115$:
;	genEndFunction
	ld	sp,ix
	pop	ix
	ret
_sincosf_end::
	.area _CODE
	.area _CABS
