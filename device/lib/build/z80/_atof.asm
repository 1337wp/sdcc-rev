;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:00 2018
;--------------------------------------------------------
	.module _atof
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _atof
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
;_atof.c:23: float atof(char * s)
;	genLabel
;	genFunction
;	---------------------------------
; Function atof
; ---------------------------------
_atof_start::
_atof:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-16
	add	hl,sp
	ld	sp,hl
;_atof.c:30: while (isspace(*s)) s++;
;	genAssign
;	AOP_STK for 
	ld	c,4(ix)
	ld	b,5(ix)
;	genLabel
00101$:
;	genPointerGet
	ld	a,(bc)
	ld	e,a
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
	ld	a,e
	push	af
	inc	sp
;	genCall
	call	_isspace
	ld	e,l
	inc	sp
	pop	bc
;	genIfx
	xor	a,a
	or	a,e
	jr	Z,00148$
;	genPlus
;	genPlusIncr
	inc	bc
;	genGoto
	jr	00101$
;	genLabel
00148$:
;	genAssign
;	AOP_STK for 
	ld	4(ix),c
	ld	5(ix),b
;_atof.c:33: if (*s == '-')
;	genPointerGet
	ld	a,(bc)
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	e,a
	sub	a,#0x2D
	jr	Z,00152$
	jr	00107$
00152$:
;_atof.c:35: sign=1;
;	genAssign
;	AOP_STK for _atof_sign_1_1
	ld	-10(ix),#0x01
;_atof.c:36: s++;
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	ld	a,c
	add	a,#0x01
	ld	4(ix),a
	ld	a,b
	adc	a,#0x00
	ld	5(ix),a
;	genGoto
	jr	00108$
;	genLabel
00107$:
;_atof.c:40: sign=0;
;	genAssign
;	AOP_STK for _atof_sign_1_1
	ld	-10(ix),#0x00
;_atof.c:41: if (*s == '+') s++;
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	a,e
	sub	a,#0x2B
	jr	Z,00154$
	jr	00108$
00154$:
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	ld	a,c
	add	a,#0x01
	ld	4(ix),a
	ld	a,b
	adc	a,#0x00
	ld	5(ix),a
;	genLabel
00108$:
;_atof.c:45: for (value=0.0; isdigit(*s); s++)
;	genAssign
;	AOP_STK for _atof_value_1_1
	ld	-4(ix),#0x00
	ld	-3(ix),#0x00
	ld	-2(ix),#0x00
	ld	-1(ix),#0x00
;	genAssign
;	AOP_STK for 
;	AOP_STK for _atof__1_0
	ld	a,4(ix)
	ld	-12(ix),a
	ld	a,5(ix)
	ld	-11(ix),a
;	genLabel
00121$:
;	genPointerGet
;	AOP_STK for _atof__1_0
	ld	l,-12(ix)
	ld	h,-11(ix)
	ld	e,(hl)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,e
	push	af
	inc	sp
;	genCall
	call	_isdigit
	ld	e,l
	inc	sp
;	genIfx
	xor	a,a
	or	a,e
	jp	Z,00149$
;_atof.c:47: value=10.0*value+(*s-'0');
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _atof_value_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	push	hl
	ld	l,-4(ix)
	ld	h,-3(ix)
	push	hl
;	genIpush
	ld	hl,#0x4120
	push	hl
	ld	hl,#0x0000
	push	hl
;	genCall
	call	___fsmul
;	AOP_STK for _atof__1_0
	ld	-13(ix),d
	ld	-14(ix),e
	ld	-15(ix),h
	ld	-16(ix),l
	pop	af
	pop	af
	pop	af
	pop	af
;	genPointerGet
;	AOP_STK for _atof__1_0
	ld	l,-12(ix)
	ld	h,-11(ix)
	ld	c,(hl)
;	genCast
	ld	a,c
	rla	
	sbc	a,a
	ld	b,a
;	genMinus
	ld	a,c
	add	a,#0xD0
	ld	c,a
	ld	a,b
	adc	a,#0xFF
	ld	b,a
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	push	bc
;	genCall
	call	___sint2fs
	ld	b,h
	ld	c,l
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
;	AOP_STK for _atof__1_0
	ld	l,-14(ix)
	ld	h,-13(ix)
	push	hl
	ld	l,-16(ix)
	ld	h,-15(ix)
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
;	AOP_STK for _atof_value_1_1
	ld	-4(ix),c
	ld	-3(ix),b
	ld	-2(ix),e
	ld	-1(ix),d
;_atof.c:45: for (value=0.0; isdigit(*s); s++)
;	genPlus
;	AOP_STK for _atof__1_0
;	genPlusIncr
	inc	-12(ix)
	jr	NZ,00155$
	inc	-11(ix)
00155$:
;	genGoto
	jp	00121$
;	genLabel
00149$:
;	genAssign
;	AOP_STK for _atof__1_0
;	AOP_STK for 
	ld	a,-12(ix)
	ld	4(ix),a
	ld	a,-11(ix)
	ld	5(ix),a
;_atof.c:51: if (*s == '.')
;	genPointerGet
;	AOP_STK for _atof__1_0
	ld	l,-12(ix)
	ld	h,-11(ix)
	ld	c,(hl)
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	a,c
	sub	a,#0x2E
	jr	Z,00157$
	jp	00110$
00157$:
;_atof.c:53: s++;
;	genPlus
;	AOP_STK for _atof__1_0
;	genPlusIncr
	ld	c,-12(ix)
	ld	b,-11(ix)
	inc	bc
;_atof.c:54: for (fraction=0.1; isdigit(*s); s++)
;	genAssign
;	AOP_STK for _atof_fraction_1_1
	ld	-8(ix),#0xCD
	ld	-7(ix),#0xCC
	ld	-6(ix),#0xCC
	ld	-5(ix),#0x3D
;	genAssign
;	AOP_STK for _atof__1_0
	ld	-16(ix),c
	ld	-15(ix),b
;	genLabel
00125$:
;	genPointerGet
;	AOP_STK for _atof__1_0
	ld	l,-16(ix)
	ld	h,-15(ix)
	ld	e,(hl)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,e
	push	af
	inc	sp
;	genCall
	call	_isdigit
	ld	e,l
	inc	sp
;	genIfx
	xor	a,a
	or	a,e
	jp	Z,00150$
;_atof.c:56: value+=(*s-'0')*fraction;
;	genPointerGet
;	AOP_STK for _atof__1_0
	ld	l,-16(ix)
	ld	h,-15(ix)
	ld	e,(hl)
;	genCast
	ld	a,e
	rla	
	sbc	a,a
	ld	d,a
;	genMinus
	ld	a,e
	add	a,#0xD0
	ld	e,a
	ld	a,d
	adc	a,#0xFF
	ld	d,a
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	push	de
;	genCall
	call	___sint2fs
	ld	b,d
	ld	c,e
	ld	d,h
	ld	e,l
	pop	af
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _atof_fraction_1_1
	ld	l,-6(ix)
	ld	h,-5(ix)
	push	hl
	ld	l,-8(ix)
	ld	h,-7(ix)
	push	hl
;	genIpush
	ld	l,c
	ld	h,b
	push	hl
	ld	l,e
	ld	h,d
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
;	AOP_STK for _atof_value_1_1
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
;	AOP_STK for _atof_value_1_1
	ld	-4(ix),c
	ld	-3(ix),b
	ld	-2(ix),e
	ld	-1(ix),d
;_atof.c:57: fraction*=0.1;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _atof_fraction_1_1
	ld	l,-6(ix)
	ld	h,-5(ix)
	push	hl
	ld	l,-8(ix)
	ld	h,-7(ix)
	push	hl
;	genIpush
	ld	hl,#0x3DCC
	push	hl
	ld	hl,#0xCCCD
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
;	AOP_STK for _atof_fraction_1_1
	ld	-8(ix),c
	ld	-7(ix),b
	ld	-6(ix),e
	ld	-5(ix),d
;_atof.c:54: for (fraction=0.1; isdigit(*s); s++)
;	genPlus
;	AOP_STK for _atof__1_0
;	genPlusIncr
	inc	-16(ix)
	jr	NZ,00158$
	inc	-15(ix)
00158$:
;	genGoto
	jp	00125$
;	genLabel
00150$:
;	genAssign
;	AOP_STK for _atof__1_0
;	AOP_STK for 
	ld	a,-16(ix)
	ld	4(ix),a
	ld	a,-15(ix)
	ld	5(ix),a
;	genLabel
00110$:
;_atof.c:62: if (toupper(*s)=='E')
;	genAssign
;	AOP_STK for 
	ld	c,4(ix)
	ld	b,5(ix)
;	genPointerGet
	ld	a,(bc)
	ld	e,a
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
	ld	a,e
	push	af
	inc	sp
;	genCall
	call	_islower
	ld	e,l
	inc	sp
	pop	bc
;	genIfx
	xor	a,a
	or	a,e
	jr	Z,00131$
;	genPointerGet
	ld	a,(bc)
;	genCast
	ld	e,a
	rla	
	sbc	a,a
	ld	d,a
;	genAnd
	ld	a,e
	and	a,#0xDF
	ld	e,a
;	genGoto
	jr	00132$
;	genLabel
00131$:
;	genPointerGet
	ld	a,(bc)
;	genCast
	ld	c,a
	ld	e,a
	rla	
	sbc	a,a
	ld	d,a
;	genLabel
00132$:
;	genCmpEq
; genCmpEq: left 2, right 2, result 0
	ld	a,e
	sub	a,#0x45
	jr	NZ,00159$
	or	a,d
	jr	Z,00160$
00159$:
	jp	00118$
00160$:
;_atof.c:64: s++;
;	genAssign
;	AOP_STK for 
	ld	c,4(ix)
	ld	b,5(ix)
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	ld	a,c
	add	a,#0x01
	ld	4(ix),a
	ld	a,b
	adc	a,#0x00
	ld	5(ix),a
;_atof.c:65: iexp=(char)atoi(s);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	ld	l,4(ix)
	ld	h,5(ix)
	push	hl
;	genCall
	call	_atoi
	ld	b,h
	ld	c,l
	pop	af
;	genCast
;	AOP_STK for _atof_iexp_1_1
	ld	-9(ix),c
;_atof.c:67: while(iexp!=0)
;	genLabel
00114$:
;	genIfx
;	AOP_STK for _atof_iexp_1_1
	xor	a,a
	or	a,-9(ix)
	jp	Z,00118$
;_atof.c:69: if(iexp<0)
;	genCmpLt
;	AOP_STK for _atof_iexp_1_1
	ld	a,-9(ix)
	bit	7,a
	jr	Z,00112$
;_atof.c:71: value*=0.1;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _atof_value_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	push	hl
	ld	l,-4(ix)
	ld	h,-3(ix)
	push	hl
;	genIpush
	ld	hl,#0x3DCC
	push	hl
	ld	hl,#0xCCCD
	push	hl
;	genCall
	call	___fsmul
	ld	c,d
	ld	d,e
	ld	e,h
	ld	b,l
	pop	af
	pop	af
	pop	af
	pop	af
;	genAssign
;	AOP_STK for _atof_value_1_1
	ld	-4(ix),b
	ld	-3(ix),e
	ld	-2(ix),d
	ld	-1(ix),c
;_atof.c:72: iexp++;
;	genPlus
;	AOP_STK for _atof_iexp_1_1
;	genPlusIncr
	inc	-9(ix)
;	genGoto
	jr	00114$
;	genLabel
00112$:
;_atof.c:76: value*=10.0;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _atof_value_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	push	hl
	ld	l,-4(ix)
	ld	h,-3(ix)
	push	hl
;	genIpush
	ld	hl,#0x4120
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
;	AOP_STK for _atof_value_1_1
	ld	-4(ix),c
	ld	-3(ix),b
	ld	-2(ix),e
	ld	-1(ix),d
;_atof.c:77: iexp--;
;	genMinus
;	AOP_STK for _atof_iexp_1_1
	dec	-9(ix)
;	genGoto
	jp	00114$
;	genLabel
00118$:
;_atof.c:83: if(sign) value*=-1.0;
;	genIfx
;	AOP_STK for _atof_sign_1_1
	xor	a,a
	or	a,-10(ix)
	jr	Z,00120$
;	genUminus
;	AOP_STK for _atof_value_1_1
;	genUminusFloat
	ld	a,-1(ix)
	xor	a,#0x80
	ld	-1(ix),a
	ld	a,-4(ix)
	ld	-4(ix),a
	ld	a,-3(ix)
	ld	-3(ix),a
	ld	a,-2(ix)
	ld	-2(ix),a
;	genLabel
00120$:
;_atof.c:84: return (value);
;	genRet
;	AOP_STK for _atof_value_1_1
; Dump of IC_LEFT: type AOP_STK size 4
;	 aop_stk -4
	ld	l,-4(ix)
	ld	h,-3(ix)
	ld	e,-2(ix)
	ld	d,-1(ix)
;	genLabel
;	genEndFunction
	ld	sp,ix
	pop	ix
	ret
_atof_end::
	.area _CODE
	.area _CABS
