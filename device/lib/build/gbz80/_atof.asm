;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module _atof
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _atof
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
	lda	sp,-19(sp)
;_atof.c:30: while (isspace(*s)) s++;
;	genAssign
;	AOP_STK for 
;	AOP_STK for _atof__1_0
	lda	hl,21(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,8(sp)
	ld	(hl+),a
	ld	(hl),e
;	genLabel
00101$:
;	genPointerGet
;	AOP_STK for _atof__1_0
	lda	hl,8(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	c,a
	push	af
	inc	sp
;	genCall
	call	_isspace
	ld	c,e
	lda	sp,1(sp)
;	genIfx
	xor	a,a
	or	a,c
	jp	Z,00148$
;	genPlus
;	AOP_STK for _atof__1_0
;	genPlusIncr
	lda	hl,8(sp)
	inc	(hl)
	jr	NZ,00151$
	inc	hl
	inc	(hl)
00151$:
;	genGoto
	jp	00101$
;	genLabel
00148$:
;	genAssign
;	AOP_STK for _atof__1_0
;	AOP_STK for 
	lda	hl,8(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,21(sp)
	ld	(hl+),a
	ld	(hl),e
;_atof.c:33: if (*s == '-')
;	genPointerGet
;	AOP_STK for _atof__1_0
	lda	hl,8(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	c,a
	sub	a,#0x2D
	jp	NZ,00152$
	jr	00153$
00152$:
	jp	00107$
00153$:
;_atof.c:35: sign=1;
;	genAssign
;	AOP_STK for _atof_sign_1_1
	lda	hl,10(sp)
	ld	(hl),#0x01
;_atof.c:36: s++;
;	genPlus
;	AOP_STK for _atof__1_0
;	AOP_STK for 
;	genPlusIncr
	dec	hl
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0001
	add	hl,de
	ld	a,l
	ld	d,h
	lda	hl,21(sp)
	ld	(hl+),a
	ld	(hl),d
;	genGoto
	jp	00108$
;	genLabel
00107$:
;_atof.c:40: sign=0;
;	genAssign
;	AOP_STK for _atof_sign_1_1
	lda	hl,10(sp)
	ld	(hl),#0x00
;_atof.c:41: if (*s == '+') s++;
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	a,c
	sub	a,#0x2B
	jp	NZ,00154$
	jr	00155$
00154$:
	jp	00108$
00155$:
;	genPlus
;	AOP_STK for _atof__1_0
;	AOP_STK for 
;	genPlusIncr
	lda	hl,8(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0001
	add	hl,de
	ld	a,l
	ld	d,h
	lda	hl,21(sp)
	ld	(hl+),a
	ld	(hl),d
;	genLabel
00108$:
;_atof.c:45: for (value=0.0; isdigit(*s); s++)
;	genAssign
;	AOP_STK for _atof_value_1_1
	lda	hl,15(sp)
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;	genAssign
;	AOP_STK for 
;	AOP_STK for _atof__1_0
	lda	hl,21(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,8(sp)
	ld	(hl+),a
	ld	(hl),e
;	genLabel
00121$:
;	genPointerGet
;	AOP_STK for _atof__1_0
	lda	hl,8(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	c,a
	push	af
	inc	sp
;	genCall
	call	_isdigit
	ld	c,e
	lda	sp,1(sp)
;	genIfx
	xor	a,a
	or	a,c
	jp	Z,00149$
;_atof.c:47: value=10.0*value+(*s-'0');
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _atof_value_1_1
	lda	hl,17(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,17(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
	ld	hl,#0x4120
	push	hl
	ld	hl,#0x0000
	push	hl
;	genCall
	call	___fsmul
;	AOP_STK for _atof__1_0
	push	hl
	lda	hl,14(sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	lda	sp,8(sp)
;	genPointerGet
;	AOP_STK for _atof__1_0
	lda	hl,8(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genCast
	ld	c,a
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
;	AOP_STK for _atof__1_0
	push	hl
	lda	hl,4(sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	lda	sp,2(sp)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _atof__1_0
	lda	hl,2(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,2(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for _atof__1_0
	lda	hl,10(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,10(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	___fsadd
;	AOP_STK for _atof__1_0
	push	hl
	lda	hl,10(sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	lda	sp,8(sp)
;	genAssign
;	AOP_STK for _atof__1_0
;	AOP_STK for _atof_value_1_1
	lda	hl,0(sp)
	ld	d,h
	ld	e,l
	lda	hl,15(sp)
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
;_atof.c:45: for (value=0.0; isdigit(*s); s++)
;	genPlus
;	AOP_STK for _atof__1_0
;	genPlusIncr
	lda	hl,8(sp)
	inc	(hl)
	jr	NZ,00156$
	inc	hl
	inc	(hl)
00156$:
;	genGoto
	jp	00121$
;	genLabel
00149$:
;	genAssign
;	AOP_STK for _atof__1_0
;	AOP_STK for 
	lda	hl,8(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,21(sp)
	ld	(hl+),a
	ld	(hl),e
;_atof.c:51: if (*s == '.')
;	genPointerGet
;	AOP_STK for _atof__1_0
	lda	hl,8(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	c,a
	sub	a,#0x2E
	jp	NZ,00157$
	jr	00158$
00157$:
	jp	00110$
00158$:
;_atof.c:53: s++;
;	genPlus
;	AOP_STK for _atof__1_0
;	genPlusIncr
	lda	hl,8(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
;_atof.c:54: for (fraction=0.1; isdigit(*s); s++)
;	genAssign
;	AOP_STK for _atof_fraction_1_1
	inc	hl
	inc	hl
	ld	(hl),#0xCD
	inc	hl
	ld	(hl),#0xCC
	inc	hl
	ld	(hl),#0xCC
	inc	hl
	ld	(hl),#0x3D
;	genAssign
;	AOP_STK for _atof__1_0
	lda	hl,0(sp)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;	genLabel
00125$:
;	genPointerGet
;	AOP_STK for _atof__1_0
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	c,a
	push	af
	inc	sp
;	genCall
	call	_isdigit
	ld	c,e
	lda	sp,1(sp)
;	genIfx
	xor	a,a
	or	a,c
	jp	Z,00150$
;_atof.c:56: value+=(*s-'0')*fraction;
;	genPointerGet
;	AOP_STK for _atof__1_0
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genCast
	ld	c,a
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
;	AOP_STK for _atof__1_0
	push	hl
	lda	hl,8(sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	lda	sp,2(sp)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _atof_fraction_1_1
	lda	hl,13(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,13(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for _atof__1_0
	lda	hl,10(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,10(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	___fsmul
;	AOP_STK for _atof__1_0
	push	hl
	lda	hl,14(sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	lda	sp,8(sp)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _atof__1_0
	lda	hl,6(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,6(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for _atof_value_1_1
	lda	hl,21(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,21(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	___fsadd
;	AOP_STK for _atof__1_0
	push	hl
	lda	hl,14(sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	lda	sp,8(sp)
;	genAssign
;	AOP_STK for _atof__1_0
;	AOP_STK for _atof_value_1_1
	lda	hl,4(sp)
	ld	d,h
	ld	e,l
	lda	hl,15(sp)
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
;_atof.c:57: fraction*=0.1;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _atof_fraction_1_1
	lda	hl,13(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,13(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
	ld	hl,#0x3DCC
	push	hl
	ld	hl,#0xCCCD
	push	hl
;	genCall
	call	___fsmul
;	AOP_STK for _atof__1_0
	push	hl
	lda	hl,14(sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	lda	sp,8(sp)
;	genAssign
;	AOP_STK for _atof__1_0
;	AOP_STK for _atof_fraction_1_1
	lda	hl,4(sp)
	ld	d,h
	ld	e,l
	lda	hl,11(sp)
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
;_atof.c:54: for (fraction=0.1; isdigit(*s); s++)
;	genPlus
;	AOP_STK for _atof__1_0
;	genPlusIncr
	lda	hl,0(sp)
	inc	(hl)
	jr	NZ,00159$
	inc	hl
	inc	(hl)
00159$:
;	genGoto
	jp	00125$
;	genLabel
00150$:
;	genAssign
;	AOP_STK for _atof__1_0
;	AOP_STK for 
	lda	hl,0(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,21(sp)
	ld	(hl+),a
	ld	(hl),e
;	genLabel
00110$:
;_atof.c:62: if (toupper(*s)=='E')
;	genAssign
;	AOP_STK for 
;	AOP_STK for _atof__1_0
	lda	hl,21(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,0(sp)
	ld	(hl+),a
	ld	(hl),e
;	genPointerGet
;	AOP_STK for _atof__1_0
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	c,a
	push	af
	inc	sp
;	genCall
	call	_islower
	ld	c,e
	lda	sp,1(sp)
;	genIfx
	xor	a,a
	or	a,c
	jp	Z,00131$
;	genPointerGet
;	AOP_STK for _atof__1_0
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genCast
	ld	c,a
	rla	
	sbc	a,a
	ld	b,a
;	genAnd
	ld	a,c
	and	a,#0xDF
	ld	c,a
;	genGoto
	jp	00132$
;	genLabel
00131$:
;	genPointerGet
;	AOP_STK for _atof__1_0
;	AOP_STK for _atof__1_0
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	dec	hl
;	genCast
;	AOP_STK for _atof__1_0
	ld	(hl),a
	ld	c,a
	ld	a,(hl)
	rla	
	sbc	a,a
	ld	b,a
;	genLabel
00132$:
;	genCmpEq
; genCmpEq: left 2, right 2, result 0
	ld	a,c
	sub	a,#0x45
	jp	NZ,00160$
	or	a,b
	jp	NZ,00160$
	jr	00161$
00160$:
	jp	00118$
00161$:
;_atof.c:64: s++;
;	genAssign
;	AOP_STK for 
	lda	hl,21(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	ld	hl,#0x0001
	add	hl,bc
	ld	a,l
	ld	d,h
	lda	hl,21(sp)
	ld	(hl+),a
	ld	(hl),d
;_atof.c:65: iexp=(char)atoi(s);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	dec	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	_atoi
	ld	b,d
	ld	c,e
	lda	sp,2(sp)
;	genCast
;_atof.c:67: while(iexp!=0)
;	genLabel
00114$:
;	genIfx
	xor	a,a
	or	a,c
	jp	Z,00118$
;_atof.c:69: if(iexp<0)
;	genCmpLt
	ld	a,c
	bit	7,a
	jp	Z,00112$
;_atof.c:71: value*=0.1;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
;	AOP_STK for _atof_value_1_1
	lda	hl,19(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,19(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
	ld	hl,#0x3DCC
	push	hl
	ld	hl,#0xCCCD
	push	hl
;	genCall
	call	___fsmul
;	AOP_STK for _atof__1_0
	push	hl
	lda	hl,12(sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	lda	sp,8(sp)
	pop	bc
;	genAssign
;	AOP_STK for _atof__1_0
;	AOP_STK for _atof_value_1_1
	lda	hl,0(sp)
	ld	d,h
	ld	e,l
	lda	hl,15(sp)
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
;_atof.c:72: iexp++;
;	genPlus
;	genPlusIncr
	inc	c
;	genGoto
	jp	00114$
;	genLabel
00112$:
;_atof.c:76: value*=10.0;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
;	AOP_STK for _atof_value_1_1
	lda	hl,19(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,19(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
	ld	hl,#0x4120
	push	hl
	ld	hl,#0x0000
	push	hl
;	genCall
	call	___fsmul
;	AOP_STK for _atof__1_0
	push	hl
	lda	hl,12(sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	lda	sp,8(sp)
	pop	bc
;	genAssign
;	AOP_STK for _atof__1_0
;	AOP_STK for _atof_value_1_1
	lda	hl,0(sp)
	ld	d,h
	ld	e,l
	lda	hl,15(sp)
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
;_atof.c:77: iexp--;
;	genMinus
	dec	c
;	genGoto
	jp	00114$
;	genLabel
00118$:
;_atof.c:83: if(sign) value*=-1.0;
;	genIfx
;	AOP_STK for _atof_sign_1_1
	xor	a,a
	lda	hl,10(sp)
	or	a,(hl)
	jp	Z,00120$
;	genUminus
;	AOP_STK for _atof_value_1_1
;	genUminusFloat
	lda	hl,18(sp)
	ld	a,(hl)
	xor	a,#0x80
	ld	(hl),a
	lda	hl,15(sp)
	ld	a,(hl)
	ld	(hl+),a
	ld	a,(hl)
	ld	(hl+),a
	ld	a,(hl)
	ld	(hl),a
;	genLabel
00120$:
;_atof.c:84: return (value);
;	genRet
;	AOP_STK for _atof_value_1_1
; Dump of IC_LEFT: type AOP_STK size 4
;	 aop_stk -4
	lda	hl,15(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
;	genLabel
00129$:
;	genEndFunction
	lda	sp,19(sp)
	ret
_atof_end::
	.area _CODE
	.area _CABS
