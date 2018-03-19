;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module expf
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _expf
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
;expf.c:320: float expf(const float x)
;	genLabel
;	genFunction
;	---------------------------------
; Function expf
; ---------------------------------
_expf_start::
_expf:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-27
	add	hl,sp
	ld	sp,hl
;expf.c:326: if(x>=0.0)
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
	jr	NZ,00102$
;expf.c:327: { y=x;  sign=0; }
;	genAssign
;	AOP_STK for 
;	AOP_STK for _expf_y_1_1
	ld	a,4(ix)
	ld	-22(ix),a
	ld	a,5(ix)
	ld	-21(ix),a
	ld	a,6(ix)
	ld	-20(ix),a
	ld	a,7(ix)
	ld	-19(ix),a
;	genAssign
;	AOP_STK for _expf_sign_1_1
	ld	-23(ix),#0x00
;	genGoto
	jr	00103$
;	genLabel
00102$:
;expf.c:329: { y=-x; sign=1; }
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
;	AOP_STK for _expf_y_1_1
	ld	-22(ix),c
	ld	-21(ix),b
	ld	-20(ix),e
	ld	-19(ix),d
;	genAssign
;	AOP_STK for _expf_sign_1_1
	ld	-23(ix),#0x01
;	genLabel
00103$:
;expf.c:331: if(y<EXPEPS) return 1.0;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x33D6
	push	hl
	ld	hl,#0xBF95
	push	hl
;	genIpush
;	AOP_STK for _expf_y_1_1
	ld	l,-20(ix)
	ld	h,-19(ix)
	push	hl
	ld	l,-22(ix)
	ld	h,-21(ix)
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
	jr	Z,00105$
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 4
	ld	hl,#0x0000
	ld	de,#0x3F80
	jp	00118$
;	genLabel
00105$:
;expf.c:333: if(y>BIGX)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x42B1
	push	hl
	ld	hl,#0x7218
	push	hl
;	genIpush
;	AOP_STK for _expf_y_1_1
	ld	l,-20(ix)
	ld	h,-19(ix)
	push	hl
	ld	l,-22(ix)
	ld	h,-21(ix)
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
	jr	Z,00110$
;expf.c:335: if(sign)
;	genIfx
;	AOP_STK for _expf_sign_1_1
	xor	a,a
	or	a,-23(ix)
	jr	Z,00107$
;expf.c:337: errno=ERANGE;
;	genAssign
	ld	iy,#_errno
	ld	0(iy),#0x22
	ld	1(iy),#0x00
;expf.c:339: ;
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 4
	ld	hl,#0xFFFF
	ld	de,#0x7F7F
	jp	00118$
;	genLabel
00107$:
;expf.c:343: return 0.0;
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 4
	ld	hl,#0x0000
	ld	de,#0x0000
	jp	00118$
;	genLabel
00110$:
;expf.c:347: z=y*K1;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _expf_y_1_1
	ld	l,-20(ix)
	ld	h,-19(ix)
	push	hl
	ld	l,-22(ix)
	ld	h,-21(ix)
	push	hl
;	genIpush
	ld	hl,#0x3FB8
	push	hl
	ld	hl,#0xAA3B
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
;	AOP_STK for _expf_z_1_1
	ld	-18(ix),c
	ld	-17(ix),b
	ld	-16(ix),e
	ld	-15(ix),d
;expf.c:348: n=z;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _expf_z_1_1
	ld	l,-16(ix)
	ld	h,-15(ix)
	push	hl
	ld	l,-18(ix)
	ld	h,-17(ix)
	push	hl
;	genCall
	call	___fs2sint
	ld	b,h
	ld	c,l
	pop	af
	pop	af
;	genAssign
;	AOP_STK for _expf_n_1_1
	ld	-2(ix),c
	ld	-1(ix),b
;expf.c:350: if(n<0) --n;
;	genCmpLt
;	AOP_STK for _expf_n_1_1
	ld	a,-1(ix)
	bit	7,a
	jr	Z,00112$
;	genMinus
;	AOP_STK for _expf_n_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	dec	hl
	ld	-2(ix),l
	ld	-1(ix),h
;	genLabel
00112$:
;expf.c:351: if(z-n>=0.5) ++n;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _expf_n_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	push	hl
;	genCall
	call	___sint2fs
	ld	b,d
	ld	c,e
	ld	d,h
	ld	e,l
	pop	af
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	l,c
	ld	h,b
	push	hl
	ld	l,e
	ld	h,d
	push	hl
;	genIpush
;	AOP_STK for _expf_z_1_1
	ld	l,-16(ix)
	ld	h,-15(ix)
	push	hl
	ld	l,-18(ix)
	ld	h,-17(ix)
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
	call	___fslt
	ld	c,l
	pop	af
	pop	af
	pop	af
	pop	af
;	genIfx
	xor	a,a
	or	a,c
	jr	NZ,00114$
;	genPlus
;	AOP_STK for _expf_n_1_1
;	genPlusIncr
	inc	-2(ix)
	jr	NZ,00127$
	inc	-1(ix)
00127$:
;	genLabel
00114$:
;expf.c:352: xn=n;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _expf_n_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	push	hl
;	genCall
	call	___sint2fs
	ld	b,h
	ld	c,l
	pop	af
;	genAssign
;	AOP_STK for _expf_xn_1_1
	ld	-6(ix),c
	ld	-5(ix),b
	ld	-4(ix),e
	ld	-3(ix),d
;expf.c:353: g=((y-xn*C1))-xn*C2;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _expf_xn_1_1
	ld	l,-4(ix)
	ld	h,-3(ix)
	push	hl
	ld	l,-6(ix)
	ld	h,-5(ix)
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
;	AOP_STK for _expf_y_1_1
	ld	l,-20(ix)
	ld	h,-19(ix)
	push	hl
	ld	l,-22(ix)
	ld	h,-21(ix)
	push	hl
;	genCall
	call	___fssub
;	AOP_STK for _expf__1_0
	ld	-24(ix),d
	ld	-25(ix),e
	ld	-26(ix),h
	ld	-27(ix),l
	pop	af
	pop	af
	pop	af
	pop	af
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _expf_xn_1_1
	ld	l,-4(ix)
	ld	h,-3(ix)
	push	hl
	ld	l,-6(ix)
	ld	h,-5(ix)
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
	ld	l,e
	ld	h,d
	push	hl
	ld	l,c
	ld	h,b
	push	hl
;	genIpush
;	AOP_STK for _expf__1_0
	ld	l,-25(ix)
	ld	h,-24(ix)
	push	hl
	ld	l,-27(ix)
	ld	h,-26(ix)
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
;	AOP_STK for _expf_g_1_1
	ld	-10(ix),c
	ld	-9(ix),b
	ld	-8(ix),e
	ld	-7(ix),d
;expf.c:354: z=g*g;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _expf_g_1_1
	ld	l,-8(ix)
	ld	h,-7(ix)
	push	hl
	ld	l,-10(ix)
	ld	h,-9(ix)
	push	hl
;	genIpush
;	AOP_STK for _expf_g_1_1
	ld	l,-8(ix)
	ld	h,-7(ix)
	push	hl
	ld	l,-10(ix)
	ld	h,-9(ix)
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
;	AOP_STK for _expf_z_1_1
	ld	-18(ix),c
	ld	-17(ix),b
	ld	-16(ix),e
	ld	-15(ix),d
;expf.c:355: r=P(z)*g;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _expf_z_1_1
	ld	l,-16(ix)
	ld	h,-15(ix)
	push	hl
	ld	l,-18(ix)
	ld	h,-17(ix)
	push	hl
;	genIpush
	ld	hl,#0x3B88
	push	hl
	ld	hl,#0x5308
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
	ld	hl,#0x3E80
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
;	AOP_STK for _expf_g_1_1
	ld	l,-8(ix)
	ld	h,-7(ix)
	push	hl
	ld	l,-10(ix)
	ld	h,-9(ix)
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
;	AOP_STK for _expf_r_1_1
	ld	-14(ix),c
	ld	-13(ix),b
	ld	-12(ix),e
	ld	-11(ix),d
;expf.c:356: r=0.5+(r/(Q(z)-r));
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _expf_z_1_1
	ld	l,-16(ix)
	ld	h,-15(ix)
	push	hl
	ld	l,-18(ix)
	ld	h,-17(ix)
	push	hl
;	genIpush
	ld	hl,#0x3D4C
	push	hl
	ld	hl,#0xBF5B
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
;	AOP_STK for _expf_r_1_1
	ld	l,-12(ix)
	ld	h,-11(ix)
	push	hl
	ld	l,-14(ix)
	ld	h,-13(ix)
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
	ld	l,e
	ld	h,d
	push	hl
	ld	l,c
	ld	h,b
	push	hl
;	genIpush
;	AOP_STK for _expf_r_1_1
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
;	AOP_STK for _expf_r_1_1
	ld	-14(ix),c
	ld	-13(ix),b
	ld	-12(ix),e
	ld	-11(ix),d
;expf.c:358: n++;
;	genPlus
;	AOP_STK for _expf_n_1_1
;	genPlusIncr
	inc	-2(ix)
	jr	NZ,00128$
	inc	-1(ix)
00128$:
;expf.c:359: z=ldexpf(r, n);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _expf_n_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	push	hl
;	genIpush
;	AOP_STK for _expf_r_1_1
	ld	l,-12(ix)
	ld	h,-11(ix)
	push	hl
	ld	l,-14(ix)
	ld	h,-13(ix)
	push	hl
;	genCall
	call	_ldexpf
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	pop	af
;	genAssign
;	AOP_STK for _expf_z_1_1
	ld	-18(ix),c
	ld	-17(ix),b
	ld	-16(ix),e
	ld	-15(ix),d
;expf.c:360: if(sign)
;	genIfx
;	AOP_STK for _expf_sign_1_1
	xor	a,a
	or	a,-23(ix)
	jr	Z,00116$
;expf.c:361: return 1.0/z;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _expf_z_1_1
	ld	l,-16(ix)
	ld	h,-15(ix)
	push	hl
	ld	l,-18(ix)
	ld	h,-17(ix)
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
;	genRet
; Dump of IC_LEFT: type AOP_REG size 4
;	 reg = debc
	ld	l,c
	ld	h,b
	jr	00118$
;	genLabel
00116$:
;expf.c:363: return z;
;	genRet
;	AOP_STK for _expf_z_1_1
; Dump of IC_LEFT: type AOP_STK size 4
;	 aop_stk -18
	ld	l,-18(ix)
	ld	h,-17(ix)
	ld	e,-16(ix)
	ld	d,-15(ix)
;	genLabel
00118$:
;	genEndFunction
	ld	sp,ix
	pop	ix
	ret
_expf_end::
	.area _CODE
	.area _CABS
