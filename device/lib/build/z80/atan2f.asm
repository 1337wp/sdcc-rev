;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module atan2f
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _atan2f
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
;atan2f.c:24: float atan2f(const float x, const float y)
;	genLabel
;	genFunction
;	---------------------------------
; Function atan2f
; ---------------------------------
_atan2f_start::
_atan2f:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-8
	add	hl,sp
	ld	sp,hl
;atan2f.c:28: if ((x==0.0) && (y==0.0))
;	genIfx
;	AOP_STK for 
	ld	a,4(ix)
	or	a,5(ix)
	or	a,6(ix)
	or	a,7(ix)
	jr	NZ,00102$
;	genIfx
;	AOP_STK for 
	ld	a,8(ix)
	or	a,9(ix)
	or	a,10(ix)
	or	a,11(ix)
	jr	NZ,00102$
;atan2f.c:30: errno=EDOM;
;	genAssign
	ld	iy,#_errno
	ld	0(iy),#0x21
	ld	1(iy),#0x00
;atan2f.c:31: return 0.0;
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 4
	ld	hl,#0x0000
	ld	de,#0x0000
	jp	00109$
;	genLabel
00102$:
;atan2f.c:34: if(fabsf(y)>=fabsf(x))
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	ld	l,10(ix)
	ld	h,11(ix)
	push	hl
	ld	l,8(ix)
	ld	h,9(ix)
	push	hl
;	genCall
	call	_fabsf
;	AOP_STK for _atan2f__1_0
	ld	-5(ix),d
	ld	-6(ix),e
	ld	-7(ix),h
	ld	-8(ix),l
	pop	af
	pop	af
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
	ld	l,e
	ld	h,d
	push	hl
	ld	l,c
	ld	h,b
	push	hl
;	genIpush
;	AOP_STK for _atan2f__1_0
	ld	l,-6(ix)
	ld	h,-5(ix)
	push	hl
	ld	l,-8(ix)
	ld	h,-7(ix)
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
	jp	NZ,00107$
;atan2f.c:36: r=atanf(x/y);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	ld	l,10(ix)
	ld	h,11(ix)
	push	hl
	ld	l,8(ix)
	ld	h,9(ix)
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
;	genCall
	call	_atanf
	ld	b,h
	ld	c,l
	pop	af
	pop	af
;	genAssign
;	AOP_STK for _atan2f_r_1_1
	ld	-4(ix),c
	ld	-3(ix),b
	ld	-2(ix),e
	ld	-1(ix),d
;atan2f.c:37: if(y<0.0) r+=(x>=0?PI:-PI);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x0000
	push	hl
;	genIpush
;	AOP_STK for 
	ld	l,10(ix)
	ld	h,11(ix)
	push	hl
	ld	l,8(ix)
	ld	h,9(ix)
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
	jp	Z,00108$
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
;	genNot
	xor	a,a
	or	a,c
	sub	a,#0x01
	ld	a,#0x00
	rla
;	genIfx
	ld	c,a
	or	a,a
	jr	Z,00111$
;	genAssign
	ld	bc,#0x0FDB
	ld	de,#0x4049
;	genGoto
	jr	00112$
;	genLabel
00111$:
;	genAssign
	ld	bc,#0x0FDB
	ld	de,#0xC049
;	genLabel
00112$:
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	l,e
	ld	h,d
	push	hl
	ld	l,c
	ld	h,b
	push	hl
;	genIpush
;	AOP_STK for _atan2f_r_1_1
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
;	AOP_STK for _atan2f_r_1_1
	ld	-4(ix),c
	ld	-3(ix),b
	ld	-2(ix),e
	ld	-1(ix),d
;	genGoto
	jp	00108$
;	genLabel
00107$:
;atan2f.c:41: r=-atanf(y/x);
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
	ld	l,10(ix)
	ld	h,11(ix)
	push	hl
	ld	l,8(ix)
	ld	h,9(ix)
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
;	genCall
	call	_atanf
	ld	b,h
	ld	c,l
	pop	af
	pop	af
;	genUminus
;	genUminusFloat
	ld	a,d
	xor	a,#0x80
	ld	d,a
;	genAssign
;	AOP_STK for _atan2f_r_1_1
	ld	-4(ix),c
	ld	-3(ix),b
	ld	-2(ix),e
	ld	-1(ix),d
;atan2f.c:42: r+=(x<0.0?-HALF_PI:HALF_PI);
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
	jr	Z,00113$
;	genAssign
	ld	bc,#0x0FDB
	ld	de,#0xBFC9
;	genGoto
	jr	00114$
;	genLabel
00113$:
;	genAssign
	ld	bc,#0x0FDB
	ld	de,#0x3FC9
;	genLabel
00114$:
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	l,e
	ld	h,d
	push	hl
	ld	l,c
	ld	h,b
	push	hl
;	genIpush
;	AOP_STK for _atan2f_r_1_1
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
;	AOP_STK for _atan2f_r_1_1
	ld	-4(ix),c
	ld	-3(ix),b
	ld	-2(ix),e
	ld	-1(ix),d
;	genLabel
00108$:
;atan2f.c:44: return r;
;	genRet
;	AOP_STK for _atan2f_r_1_1
; Dump of IC_LEFT: type AOP_STK size 4
;	 aop_stk -4
	ld	l,-4(ix)
	ld	h,-3(ix)
	ld	e,-2(ix)
	ld	d,-1(ix)
;	genLabel
00109$:
;	genEndFunction
	ld	sp,ix
	pop	ix
	ret
_atan2f_end::
	.area _CODE
	.area _CABS
