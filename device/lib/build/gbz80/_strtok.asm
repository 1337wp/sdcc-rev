;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module _strtok
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strtok
;--------------------------------------------------------
;  ram data
;--------------------------------------------------------
	.area _DATA
_strtok_s_1_1:
	.ds 2
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
;_strtok.c:31: char * strtok (
;	genLabel
;	genFunction
;	---------------------------------
; Function strtok
; ---------------------------------
_strtok_start::
_strtok:
	lda	sp,-2(sp)
;_strtok.c:38: if ( str )
;	genIfx
;	AOP_STK for 
	lda	hl,4(sp)
	ld	a,(hl+)
	or	a,(hl)
	jp	Z,00102$
;_strtok.c:39: s = str ;
;	genAssign
;	AOP_STK for 
;	AOP_HL for _strtok_s_1_1
	dec	hl
	ld	a,(hl+)
	ld	e,(hl)
	ld	hl,#_strtok_s_1_1
	ld	(hl+),a
	ld	(hl),e
;	genLabel
00102$:
;_strtok.c:40: if ( !s )
;	genIfx
;	AOP_HL for _strtok_s_1_1
	ld	hl,#_strtok_s_1_1
	ld	a,(hl+)
	or	a,(hl)
	jp	NZ,00108$
;_strtok.c:41: return NULL;
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 2
	ld	de,#0x0000
	jp	00119$
;_strtok.c:43: while (*s) {
;	genLabel
00108$:
;	genAssign
;	AOP_HL for _strtok_s_1_1
	ld	hl,#_strtok_s_1_1
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPointerGet
	ld	a,(bc)
;	genIfx
	or	a,a
	jp	Z,00110$
;_strtok.c:44: if (strchr(control,*s))
;	genAssign
;	AOP_HL for _strtok_s_1_1
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPointerGet
	ld	a,(bc)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	c,a
	push	af
	inc	sp
;	genIpush
;	AOP_STK for 
	lda	hl,7(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	_strchr
	ld	b,d
	ld	c,e
	lda	sp,3(sp)
;	genIfx
	ld	a,c
	or	a,b
	jp	Z,00110$
;_strtok.c:45: s++;
;	genPlus
;	AOP_HL for _strtok_s_1_1
;	genPlusIncr
	ld	hl,#_strtok_s_1_1
	inc	(hl)
	jr	NZ,00130$
	inc	hl
	inc	(hl)
00130$:
;	genGoto
	jp	00108$
;_strtok.c:47: break;
;	genLabel
00110$:
;_strtok.c:50: s1 = s ;
;	genAssign
;	AOP_HL for _strtok_s_1_1
;	AOP_STK for _strtok_s1_1_1
	ld	hl,#_strtok_s_1_1
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,0(sp)
	ld	(hl+),a
	ld	(hl),e
;_strtok.c:52: while (*s) {
;	genLabel
00113$:
;	genAssign
;	AOP_HL for _strtok_s_1_1
	ld	hl,#_strtok_s_1_1
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPointerGet
	ld	a,(bc)
;	genIfx
	or	a,a
	jp	Z,00115$
;_strtok.c:53: if (strchr(control,*s)) {
;	genAssign
;	AOP_HL for _strtok_s_1_1
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPointerGet
	ld	a,(bc)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	c,a
	push	af
	inc	sp
;	genIpush
;	AOP_STK for 
	lda	hl,7(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	_strchr
	ld	b,d
	ld	c,e
	lda	sp,3(sp)
;	genIfx
	ld	a,c
	or	a,b
	jp	Z,00112$
;_strtok.c:54: *s++ = '\0';
;	genAssign
;	AOP_HL for _strtok_s_1_1
	ld	hl,#_strtok_s_1_1
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genAssign (pointer)
;	isBitvar = 0
	ld	a,#0x00
	ld	(bc),a
;	genPlus
;	AOP_HL for _strtok_s_1_1
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	NZ,00131$
	inc	hl
	inc	(hl)
00131$:
;_strtok.c:55: return s1 ;
;	genRet
;	AOP_STK for _strtok_s1_1_1
; Dump of IC_LEFT: type AOP_STK size 2
;	 aop_stk -2
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	jp	00119$
;	genLabel
00112$:
;_strtok.c:57: s++ ;
;	genPlus
;	AOP_HL for _strtok_s_1_1
;	genPlusIncr
	ld	hl,#_strtok_s_1_1
	inc	(hl)
	jr	NZ,00132$
	inc	hl
	inc	(hl)
00132$:
;	genGoto
	jp	00113$
;	genLabel
00115$:
;_strtok.c:60: s = NULL;
;	genAssign
;	AOP_HL for _strtok_s_1_1
	ld	hl,#_strtok_s_1_1
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;_strtok.c:62: if (*s1)
;	genPointerGet
;	AOP_STK for _strtok_s1_1_1
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genIfx
	or	a,a
	jp	Z,00117$
;_strtok.c:63: return s1;
;	genRet
;	AOP_STK for _strtok_s1_1_1
; Dump of IC_LEFT: type AOP_STK size 2
;	 aop_stk -2
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	jp	00119$
;	genLabel
00117$:
;_strtok.c:65: return NULL;
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 2
	ld	de,#0x0000
;	genLabel
00119$:
;	genEndFunction
	lda	sp,2(sp)
	ret
_strtok_end::
	.area _CODE
	.area _CABS
