;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module asincosf
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _asincosf
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
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
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-20
	add	hl,sp
	ld	sp,hl
;asincosf.c:50: y=fabsf(x);
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
;	AOP_STK for _asincosf_y_1_1
	ld	-4(ix),c
	ld	-3(ix),b
	ld	-2(ix),e
	ld	-1(ix),d
;asincosf.c:51: i=isacos;
;	genAssign
;	AOP_STK for 
	ld	e,8(ix)
	ld	d,9(ix)
;asincosf.c:52: if (y < EPS) r=y;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 1 bcInUse: 0 deSending: 0
	push	de
	ld	hl,#0x3980
	push	hl
	ld	hl,#0x0000
	push	hl
;	genIpush
;	AOP_STK for _asincosf_y_1_1
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
	pop	de
;	genIfx
	xor	a,a
	or	a,c
	jr	Z,00107$
;	genAssign
;	AOP_STK for _asincosf_y_1_1
;	AOP_STK for _asincosf_r_1_1
	ld	a,-4(ix)
	ld	-12(ix),a
	ld	a,-3(ix)
	ld	-11(ix),a
	ld	a,-2(ix)
	ld	-10(ix),a
	ld	a,-1(ix)
	ld	-9(ix),a
;	genGoto
	jp	00108$
;	genLabel
00107$:
;asincosf.c:55: if (y > 0.5)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 1 bcInUse: 0 deSending: 0
	push	de
	ld	hl,#0x3F00
	push	hl
	ld	hl,#0x0000
	push	hl
;	genIpush
;	AOP_STK for _asincosf_y_1_1
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
	pop	de
;	genIfx
	xor	a,a
	or	a,c
	jp	Z,00104$
;asincosf.c:57: i=1-i;
;	genMinus
	ld	a,#0x01
	sub	a,e
	ld	e,a
	ld	a,#0x00
	sbc	a,d
	ld	d,a
;asincosf.c:58: if (y > 1.0)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 1 bcInUse: 0 deSending: 0
	push	de
	ld	hl,#0x3F80
	push	hl
	ld	hl,#0x0000
	push	hl
;	genIpush
;	AOP_STK for _asincosf_y_1_1
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
	pop	de
;	genIfx
	xor	a,a
	or	a,c
	jr	Z,00102$
;asincosf.c:60: errno=EDOM;
;	genAssign
	ld	iy,#_errno
	ld	0(iy),#0x21
	ld	1(iy),#0x00
;asincosf.c:61: return 0.0;
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 4
	ld	hl,#0x0000
	ld	de,#0x0000
	jp	00117$
;	genLabel
00102$:
;asincosf.c:63: g=(0.5-y)+0.5;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 1 bcInUse: 0 deSending: 0
	push	de
;	AOP_STK for _asincosf_y_1_1
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
	call	___fssub
;	AOP_STK for _asincosf_g_1_1
	ld	-5(ix),d
	ld	-6(ix),e
	ld	-7(ix),h
	ld	-8(ix),l
	pop	af
	pop	af
	pop	af
	pop	af
	pop	de
;	genAssign
;	AOP_STK for _asincosf_g_1_1
;	(registers are the same)
;asincosf.c:64: g=ldexpf(g,-1);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 1 bcInUse: 0 deSending: 0
	push	de
	ld	hl,#0xFFFFFFFF
	push	hl
;	genIpush
;	AOP_STK for _asincosf_g_1_1
	ld	l,-6(ix)
	ld	h,-5(ix)
	push	hl
	ld	l,-8(ix)
	ld	h,-7(ix)
	push	hl
;	genCall
	call	_ldexpf
;	AOP_STK for _asincosf__1_0
	ld	-13(ix),d
	ld	-14(ix),e
	ld	-15(ix),h
	ld	-16(ix),l
	pop	af
	pop	af
	pop	af
	pop	de
;	genAssign
;	AOP_STK for _asincosf__1_0
;	AOP_STK for _asincosf_g_1_1
	ld	a,-16(ix)
	ld	-8(ix),a
	ld	a,-15(ix)
	ld	-7(ix),a
	ld	a,-14(ix)
	ld	-6(ix),a
	ld	a,-13(ix)
	ld	-5(ix),a
;asincosf.c:65: y=sqrtf(g);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 1 bcInUse: 0 deSending: 0
	push	de
;	AOP_STK for _asincosf_g_1_1
	ld	l,-6(ix)
	ld	h,-5(ix)
	push	hl
	ld	l,-8(ix)
	ld	h,-7(ix)
	push	hl
;	genCall
	call	_sqrtf
;	AOP_STK for _asincosf__1_0
	ld	-13(ix),d
	ld	-14(ix),e
	ld	-15(ix),h
	ld	-16(ix),l
	pop	af
	pop	af
	pop	de
;	genAssign
;	AOP_STK for _asincosf__1_0
;	AOP_STK for _asincosf_y_1_1
	ld	a,-16(ix)
	ld	-4(ix),a
	ld	a,-15(ix)
	ld	-3(ix),a
	ld	a,-14(ix)
	ld	-2(ix),a
	ld	a,-13(ix)
	ld	-1(ix),a
;asincosf.c:66: y=-(y+y);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 1 bcInUse: 0 deSending: 0
	push	de
;	AOP_STK for _asincosf_y_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	push	hl
	ld	l,-4(ix)
	ld	h,-3(ix)
	push	hl
;	genIpush
;	AOP_STK for _asincosf_y_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	push	hl
	ld	l,-4(ix)
	ld	h,-3(ix)
	push	hl
;	genCall
	call	___fsadd
;	AOP_STK for _asincosf__1_0
	ld	-13(ix),d
	ld	-14(ix),e
	ld	-15(ix),h
	ld	-16(ix),l
	pop	af
	pop	af
	pop	af
	pop	af
	pop	de
;	genUminus
;	AOP_STK for _asincosf__1_0
;	genUminusFloat
	ld	a,-13(ix)
	xor	a,#0x80
	ld	-13(ix),a
	ld	a,-16(ix)
	ld	-16(ix),a
	ld	a,-15(ix)
	ld	-15(ix),a
	ld	a,-14(ix)
	ld	-14(ix),a
;	genAssign
;	AOP_STK for _asincosf__1_0
;	AOP_STK for _asincosf_y_1_1
	ld	a,-16(ix)
	ld	-4(ix),a
	ld	a,-15(ix)
	ld	-3(ix),a
	ld	a,-14(ix)
	ld	-2(ix),a
	ld	a,-13(ix)
	ld	-1(ix),a
;	genGoto
	jr	00105$
;	genLabel
00104$:
;asincosf.c:70: g=y*y;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 1 bcInUse: 0 deSending: 0
	push	de
;	AOP_STK for _asincosf_y_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	push	hl
	ld	l,-4(ix)
	ld	h,-3(ix)
	push	hl
;	genIpush
;	AOP_STK for _asincosf_y_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	push	hl
	ld	l,-4(ix)
	ld	h,-3(ix)
	push	hl
;	genCall
	call	___fsmul
;	AOP_STK for _asincosf__1_0
	ld	-13(ix),d
	ld	-14(ix),e
	ld	-15(ix),h
	ld	-16(ix),l
	pop	af
	pop	af
	pop	af
	pop	af
	pop	de
;	genAssign
;	AOP_STK for _asincosf__1_0
;	AOP_STK for _asincosf_g_1_1
	ld	a,-16(ix)
	ld	-8(ix),a
	ld	a,-15(ix)
	ld	-7(ix),a
	ld	a,-14(ix)
	ld	-6(ix),a
	ld	a,-13(ix)
	ld	-5(ix),a
;	genLabel
00105$:
;asincosf.c:72: r=y+y*((P(g)*g)/Q(g));
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 1 bcInUse: 0 deSending: 0
	push	de
;	AOP_STK for _asincosf_g_1_1
	ld	l,-6(ix)
	ld	h,-5(ix)
	push	hl
	ld	l,-8(ix)
	ld	h,-7(ix)
	push	hl
;	genIpush
	ld	hl,#0xBF01
	push	hl
	ld	hl,#0x2065
	push	hl
;	genCall
	call	___fsmul
;	AOP_STK for _asincosf__1_0
	ld	-13(ix),d
	ld	-14(ix),e
	ld	-15(ix),h
	ld	-16(ix),l
	pop	af
	pop	af
	pop	af
	pop	af
	pop	de
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 1 bcInUse: 0 deSending: 0
	push	de
	ld	hl,#0x3F6F
	push	hl
	ld	hl,#0x166B
	push	hl
;	genIpush
;	AOP_STK for _asincosf__1_0
	ld	l,-14(ix)
	ld	h,-13(ix)
	push	hl
	ld	l,-16(ix)
	ld	h,-15(ix)
	push	hl
;	genCall
	call	___fsadd
;	AOP_STK for _asincosf__1_0
	ld	-13(ix),d
	ld	-14(ix),e
	ld	-15(ix),h
	ld	-16(ix),l
	pop	af
	pop	af
	pop	af
	pop	af
	pop	de
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 1 bcInUse: 0 deSending: 0
	push	de
;	AOP_STK for _asincosf_g_1_1
	ld	l,-6(ix)
	ld	h,-5(ix)
	push	hl
	ld	l,-8(ix)
	ld	h,-7(ix)
	push	hl
;	genIpush
;	AOP_STK for _asincosf__1_0
	ld	l,-14(ix)
	ld	h,-13(ix)
	push	hl
	ld	l,-16(ix)
	ld	h,-15(ix)
	push	hl
;	genCall
	call	___fsmul
;	AOP_STK for _asincosf__1_0
	ld	-13(ix),d
	ld	-14(ix),e
	ld	-15(ix),h
	ld	-16(ix),l
	pop	af
	pop	af
	pop	af
	pop	af
	pop	de
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 1 bcInUse: 0 deSending: 0
	push	de
	ld	hl,#0xC0B1
	push	hl
	ld	hl,#0x8D0B
	push	hl
;	genIpush
;	AOP_STK for _asincosf_g_1_1
	ld	l,-6(ix)
	ld	h,-5(ix)
	push	hl
	ld	l,-8(ix)
	ld	h,-7(ix)
	push	hl
;	genCall
	call	___fsadd
;	AOP_STK for _asincosf__1_0
	ld	-17(ix),d
	ld	-18(ix),e
	ld	-19(ix),h
	ld	-20(ix),l
	pop	af
	pop	af
	pop	af
	pop	af
	pop	de
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 1 bcInUse: 0 deSending: 0
	push	de
;	AOP_STK for _asincosf_g_1_1
	ld	l,-6(ix)
	ld	h,-5(ix)
	push	hl
	ld	l,-8(ix)
	ld	h,-7(ix)
	push	hl
;	genIpush
;	AOP_STK for _asincosf__1_0
	ld	l,-18(ix)
	ld	h,-17(ix)
	push	hl
	ld	l,-20(ix)
	ld	h,-19(ix)
	push	hl
;	genCall
	call	___fsmul
;	AOP_STK for _asincosf__1_0
	ld	-17(ix),d
	ld	-18(ix),e
	ld	-19(ix),h
	ld	-20(ix),l
	pop	af
	pop	af
	pop	af
	pop	af
	pop	de
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 1 bcInUse: 0 deSending: 0
	push	de
	ld	hl,#0x40B3
	push	hl
	ld	hl,#0x50F0
	push	hl
;	genIpush
;	AOP_STK for _asincosf__1_0
	ld	l,-18(ix)
	ld	h,-17(ix)
	push	hl
	ld	l,-20(ix)
	ld	h,-19(ix)
	push	hl
;	genCall
	call	___fsadd
;	AOP_STK for _asincosf__1_0
	ld	-17(ix),d
	ld	-18(ix),e
	ld	-19(ix),h
	ld	-20(ix),l
	pop	af
	pop	af
	pop	af
	pop	af
	pop	de
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 1 bcInUse: 0 deSending: 0
	push	de
;	AOP_STK for _asincosf__1_0
	ld	l,-18(ix)
	ld	h,-17(ix)
	push	hl
	ld	l,-20(ix)
	ld	h,-19(ix)
	push	hl
;	genIpush
;	AOP_STK for _asincosf__1_0
	ld	l,-14(ix)
	ld	h,-13(ix)
	push	hl
	ld	l,-16(ix)
	ld	h,-15(ix)
	push	hl
;	genCall
	call	___fsdiv
;	AOP_STK for _asincosf__1_0
	ld	-17(ix),d
	ld	-18(ix),e
	ld	-19(ix),h
	ld	-20(ix),l
	pop	af
	pop	af
	pop	af
	pop	af
	pop	de
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 1 bcInUse: 0 deSending: 0
	push	de
;	AOP_STK for _asincosf__1_0
	ld	l,-18(ix)
	ld	h,-17(ix)
	push	hl
	ld	l,-20(ix)
	ld	h,-19(ix)
	push	hl
;	genIpush
;	AOP_STK for _asincosf_y_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	push	hl
	ld	l,-4(ix)
	ld	h,-3(ix)
	push	hl
;	genCall
	call	___fsmul
;	AOP_STK for _asincosf__1_0
	ld	-17(ix),d
	ld	-18(ix),e
	ld	-19(ix),h
	ld	-20(ix),l
	pop	af
	pop	af
	pop	af
	pop	af
	pop	de
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 1 bcInUse: 0 deSending: 0
	push	de
;	AOP_STK for _asincosf__1_0
	ld	l,-18(ix)
	ld	h,-17(ix)
	push	hl
	ld	l,-20(ix)
	ld	h,-19(ix)
	push	hl
;	genIpush
;	AOP_STK for _asincosf_y_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	push	hl
	ld	l,-4(ix)
	ld	h,-3(ix)
	push	hl
;	genCall
	call	___fsadd
;	AOP_STK for _asincosf__1_0
	ld	-17(ix),d
	ld	-18(ix),e
	ld	-19(ix),h
	ld	-20(ix),l
	pop	af
	pop	af
	pop	af
	pop	af
	pop	de
;	genAssign
;	AOP_STK for _asincosf__1_0
;	AOP_STK for _asincosf_r_1_1
	ld	a,-20(ix)
	ld	-12(ix),a
	ld	a,-19(ix)
	ld	-11(ix),a
	ld	a,-18(ix)
	ld	-10(ix),a
	ld	a,-17(ix)
	ld	-9(ix),a
;	genLabel
00108$:
;asincosf.c:74: if (isacos)
;	genIfx
;	AOP_STK for 
	ld	a,8(ix)
	or	a,9(ix)
	jp	Z,00115$
;asincosf.c:76: if (x < 0.0)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 1 bcInUse: 0 deSending: 0
	push	de
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
	pop	de
;	genIfx
	xor	a,a
	or	a,c
	jp	Z,00110$
;asincosf.c:77: r=(b[i]+r)+b[i];
;	genLeftShift
	ld	c,e
	ld	b,d
	sla	c
	rl	b
	sla	c
	rl	b
;	genPlus
	ld	hl,#_asincosf_b_1_1
	add	hl,bc
;	genPointerGet
;	AOP_STK for _asincosf__1_0
	ld	c,l
	ld	b,h
	ld	a,(hl)
	ld	-20(ix),a
	inc	hl
	ld	a,(hl)
	ld	-19(ix),a
	inc	hl
	ld	a,(hl)
	ld	-18(ix),a
	inc	hl
	ld	a,(hl)
	ld	-17(ix),a
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _asincosf_r_1_1
	ld	l,-10(ix)
	ld	h,-9(ix)
	push	hl
	ld	l,-12(ix)
	ld	h,-11(ix)
	push	hl
;	genIpush
;	AOP_STK for _asincosf__1_0
	ld	l,-18(ix)
	ld	h,-17(ix)
	push	hl
	ld	l,-20(ix)
	ld	h,-19(ix)
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
;	AOP_STK for _asincosf__1_0
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
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	pop	af
	pop	af
;	genAssign
;	AOP_STK for _asincosf_r_1_1
	ld	-12(ix),c
	ld	-11(ix),b
	ld	-10(ix),e
	ld	-9(ix),d
;	genGoto
	jp	00116$
;	genLabel
00110$:
;asincosf.c:79: r=(a[i]-r)+a[i];
;	genLeftShift
	ld	c,e
	ld	b,d
	sla	c
	rl	b
	sla	c
	rl	b
;	genPlus
	ld	hl,#_asincosf_a_1_1
	add	hl,bc
;	genPointerGet
;	AOP_STK for _asincosf__1_0
	ld	c,l
	ld	b,h
	ld	a,(hl)
	ld	-20(ix),a
	inc	hl
	ld	a,(hl)
	ld	-19(ix),a
	inc	hl
	ld	a,(hl)
	ld	-18(ix),a
	inc	hl
	ld	a,(hl)
	ld	-17(ix),a
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _asincosf_r_1_1
	ld	l,-10(ix)
	ld	h,-9(ix)
	push	hl
	ld	l,-12(ix)
	ld	h,-11(ix)
	push	hl
;	genIpush
;	AOP_STK for _asincosf__1_0
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
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _asincosf__1_0
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
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	pop	af
	pop	af
;	genAssign
;	AOP_STK for _asincosf_r_1_1
	ld	-12(ix),c
	ld	-11(ix),b
	ld	-10(ix),e
	ld	-9(ix),d
;	genGoto
	jp	00116$
;	genLabel
00115$:
;asincosf.c:83: r=(a[i]+r)+a[i];
;	genLeftShift
	ld	c,e
	ld	b,d
	sla	c
	rl	b
	sla	c
	rl	b
;	genPlus
	ld	hl,#_asincosf_a_1_1
	add	hl,bc
;	genPointerGet
;	AOP_STK for _asincosf__1_0
	ld	c,l
	ld	b,h
	ld	a,(hl)
	ld	-20(ix),a
	inc	hl
	ld	a,(hl)
	ld	-19(ix),a
	inc	hl
	ld	a,(hl)
	ld	-18(ix),a
	inc	hl
	ld	a,(hl)
	ld	-17(ix),a
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _asincosf_r_1_1
	ld	l,-10(ix)
	ld	h,-9(ix)
	push	hl
	ld	l,-12(ix)
	ld	h,-11(ix)
	push	hl
;	genIpush
;	AOP_STK for _asincosf__1_0
	ld	l,-18(ix)
	ld	h,-17(ix)
	push	hl
	ld	l,-20(ix)
	ld	h,-19(ix)
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
;	AOP_STK for _asincosf__1_0
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
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	pop	af
	pop	af
;	genAssign
;	AOP_STK for _asincosf_r_1_1
	ld	-12(ix),c
	ld	-11(ix),b
	ld	-10(ix),e
	ld	-9(ix),d
;asincosf.c:84: if (x<0.0) r=-r;
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
	jr	Z,00116$
;	genUminus
;	AOP_STK for _asincosf_r_1_1
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
;	genLabel
00116$:
;asincosf.c:86: return r;
;	genRet
;	AOP_STK for _asincosf_r_1_1
; Dump of IC_LEFT: type AOP_STK size 4
;	 aop_stk -12
	ld	l,-12(ix)
	ld	h,-11(ix)
	ld	e,-10(ix)
	ld	d,-9(ix)
;	genLabel
00117$:
;	genEndFunction
	ld	sp,ix
	pop	ix
	ret
_asincosf_end::
	.area _CODE
	.area _CABS
