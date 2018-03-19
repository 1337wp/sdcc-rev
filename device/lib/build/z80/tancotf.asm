;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module tancotf
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _tancotf
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
;tancotf.c:42: float tancotf(const float x, const int iscotan)
;	genLabel
;	genFunction
;	---------------------------------
; Function tancotf
; ---------------------------------
_tancotf_start::
_tancotf:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-26
	add	hl,sp
	ld	sp,hl
;tancotf.c:47: if (fabsf(x) > YMAX)
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
	ld	hl,#0x45C9
	push	hl
	ld	hl,#0x0800
	push	hl
;	genIpush
	ld	l,e
	ld	h,d
	push	hl
	ld	l,c
	ld	h,b
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
;tancotf.c:49: errno = ERANGE;
;	genAssign
	ld	iy,#_errno
	ld	0(iy),#0x22
	ld	1(iy),#0x00
;tancotf.c:50: return 0.0;
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 4
	ld	hl,#0x0000
	ld	de,#0x0000
	jp	00115$
;	genLabel
00102$:
;tancotf.c:54: n=(x*TWO_O_PI+(x>0.0?0.5:-0.5)); /*works for +-x*/
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
	ld	hl,#0x3F22
	push	hl
	ld	hl,#0xF983
	push	hl
;	genCall
	call	___fsmul
;	AOP_STK for _tancotf__1_0
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
	jr	Z,00117$
;	genAssign
	ld	bc,#0x0000
	ld	de,#0x3F00
;	genGoto
	jr	00118$
;	genLabel
00117$:
;	genAssign
	ld	bc,#0x0000
	ld	de,#0xBF00
;	genLabel
00118$:
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	l,e
	ld	h,d
	push	hl
	ld	l,c
	ld	h,b
	push	hl
;	genIpush
;	AOP_STK for _tancotf__1_0
	ld	l,-24(ix)
	ld	h,-23(ix)
	push	hl
	ld	l,-26(ix)
	ld	h,-25(ix)
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
;	AOP_STK for _tancotf_n_1_1
	ld	-22(ix),c
	ld	-21(ix),b
;tancotf.c:55: xn=n;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _tancotf_n_1_1
	ld	l,-22(ix)
	ld	h,-21(ix)
	push	hl
;	genCall
	call	___sint2fs
	ld	b,h
	ld	c,l
	pop	af
;	genAssign
;	AOP_STK for _tancotf_xn_1_1
	ld	-12(ix),c
	ld	-11(ix),b
	ld	-10(ix),e
	ld	-9(ix),d
;tancotf.c:57: xnum=(int)x;
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
;	AOP_STK for _tancotf_xnum_1_1
	ld	-16(ix),c
	ld	-15(ix),b
	ld	-14(ix),e
	ld	-13(ix),d
;tancotf.c:58: xden=x-xnum;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _tancotf_xnum_1_1
	ld	l,-14(ix)
	ld	h,-13(ix)
	push	hl
	ld	l,-16(ix)
	ld	h,-15(ix)
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
	call	___fssub
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	pop	af
	pop	af
;	genAssign
;	AOP_STK for _tancotf_xden_1_1
	ld	-20(ix),c
	ld	-19(ix),b
	ld	-18(ix),e
	ld	-17(ix),d
;tancotf.c:59: f=((xnum-xn*C1)+xden)-xn*C2;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _tancotf_xn_1_1
	ld	l,-10(ix)
	ld	h,-9(ix)
	push	hl
	ld	l,-12(ix)
	ld	h,-11(ix)
	push	hl
;	genIpush
	ld	hl,#0x3FC9
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
;	AOP_STK for _tancotf_xnum_1_1
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
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _tancotf_xden_1_1
	ld	l,-18(ix)
	ld	h,-17(ix)
	push	hl
	ld	l,-20(ix)
	ld	h,-19(ix)
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
;	AOP_STK for _tancotf__1_0
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
;	AOP_STK for _tancotf_xn_1_1
	ld	l,-10(ix)
	ld	h,-9(ix)
	push	hl
	ld	l,-12(ix)
	ld	h,-11(ix)
	push	hl
;	genIpush
	ld	hl,#0x39FD
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
;	AOP_STK for _tancotf__1_0
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
;	AOP_STK for _tancotf_f_1_1
	ld	-4(ix),c
	ld	-3(ix),b
	ld	-2(ix),e
	ld	-1(ix),d
;tancotf.c:61: if (fabsf(f) < EPS)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _tancotf_f_1_1
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
	jr	Z,00104$
;tancotf.c:63: xnum = f;
;	genAssign
;	AOP_STK for _tancotf_f_1_1
;	AOP_STK for _tancotf_xnum_1_1
	ld	a,-4(ix)
	ld	-16(ix),a
	ld	a,-3(ix)
	ld	-15(ix),a
	ld	a,-2(ix)
	ld	-14(ix),a
	ld	a,-1(ix)
	ld	-13(ix),a
;tancotf.c:64: xden = 1.0;
;	genAssign
;	AOP_STK for _tancotf_xden_1_1
	ld	-20(ix),#0x00
	ld	-19(ix),#0x00
	ld	-18(ix),#0x80
	ld	-17(ix),#0x3F
;	genGoto
	jp	00105$
;	genLabel
00104$:
;tancotf.c:68: g = f*f;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _tancotf_f_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	push	hl
	ld	l,-4(ix)
	ld	h,-3(ix)
	push	hl
;	genIpush
;	AOP_STK for _tancotf_f_1_1
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
;	AOP_STK for _tancotf_g_1_1
	ld	-8(ix),c
	ld	-7(ix),b
	ld	-6(ix),e
	ld	-5(ix),d
;tancotf.c:69: xnum = P(f,g);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _tancotf_g_1_1
	ld	l,-6(ix)
	ld	h,-5(ix)
	push	hl
	ld	l,-8(ix)
	ld	h,-7(ix)
	push	hl
;	genIpush
	ld	hl,#0xBDC4
	push	hl
	ld	hl,#0x33B8
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
;	AOP_STK for _tancotf_f_1_1
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
	call	___fsmul
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	pop	af
	pop	af
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _tancotf_f_1_1
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
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	pop	af
	pop	af
;	genAssign
;	AOP_STK for _tancotf_xnum_1_1
	ld	-16(ix),c
	ld	-15(ix),b
	ld	-14(ix),e
	ld	-13(ix),d
;tancotf.c:70: xden = Q(g);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _tancotf_g_1_1
	ld	l,-6(ix)
	ld	h,-5(ix)
	push	hl
	ld	l,-8(ix)
	ld	h,-7(ix)
	push	hl
;	genIpush
	ld	hl,#0x3C1F
	push	hl
	ld	hl,#0x3375
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
	ld	hl,#0xBEDB
	push	hl
	ld	hl,#0xB7AF
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
;	AOP_STK for _tancotf_g_1_1
	ld	l,-6(ix)
	ld	h,-5(ix)
	push	hl
	ld	l,-8(ix)
	ld	h,-7(ix)
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
	call	___fsadd
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	pop	af
	pop	af
;	genAssign
;	AOP_STK for _tancotf_xden_1_1
	ld	-20(ix),c
	ld	-19(ix),b
	ld	-18(ix),e
	ld	-17(ix),d
;	genLabel
00105$:
;tancotf.c:73: if(n&1)
;	genAnd
;	AOP_STK for _tancotf_n_1_1
	ld	a,-22(ix)
	and	a,#0x01
	jp	Z,00113$
;tancotf.c:76: if(iscotan) return (-xnum/xden);
;	genIfx
;	AOP_STK for 
	ld	a,8(ix)
	or	a,9(ix)
	jr	Z,00107$
;	genUminus
;	AOP_STK for _tancotf_xnum_1_1
;	genUminusFloat
	ld	a,-13(ix)
	xor	a,#0x80
	ld	d,a
	ld	c,-16(ix)
	ld	b,-15(ix)
	ld	e,-14(ix)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _tancotf_xden_1_1
	ld	l,-18(ix)
	ld	h,-17(ix)
	push	hl
	ld	l,-20(ix)
	ld	h,-19(ix)
	push	hl
;	genIpush
	ld	l,e
	ld	h,d
	push	hl
	ld	l,c
	ld	h,b
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
	jp	00115$
;	genLabel
00107$:
;tancotf.c:77: else return (-xden/xnum);
;	genUminus
;	AOP_STK for _tancotf_xden_1_1
;	genUminusFloat
	ld	a,-17(ix)
	xor	a,#0x80
	ld	d,a
	ld	c,-20(ix)
	ld	b,-19(ix)
	ld	e,-18(ix)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _tancotf_xnum_1_1
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
	jp	00115$
;	genLabel
00113$:
;tancotf.c:81: if(iscotan) return (xden/xnum);
;	genIfx
;	AOP_STK for 
	ld	a,8(ix)
	or	a,9(ix)
	jr	Z,00110$
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _tancotf_xnum_1_1
	ld	l,-14(ix)
	ld	h,-13(ix)
	push	hl
	ld	l,-16(ix)
	ld	h,-15(ix)
	push	hl
;	genIpush
;	AOP_STK for _tancotf_xden_1_1
	ld	l,-18(ix)
	ld	h,-17(ix)
	push	hl
	ld	l,-20(ix)
	ld	h,-19(ix)
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
	jr	00115$
;	genLabel
00110$:
;tancotf.c:82: else return (xnum/xden);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _tancotf_xden_1_1
	ld	l,-18(ix)
	ld	h,-17(ix)
	push	hl
	ld	l,-20(ix)
	ld	h,-19(ix)
	push	hl
;	genIpush
;	AOP_STK for _tancotf_xnum_1_1
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
_tancotf_end::
	.area _CODE
	.area _CABS
