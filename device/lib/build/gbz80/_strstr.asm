;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module _strstr
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strstr
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
;_strstr.c:26: char * strstr (
;	genLabel
;	genFunction
;	---------------------------------
; Function strstr
; ---------------------------------
_strstr_start::
_strstr:
	lda	sp,-12(sp)
;_strstr.c:31: char * cp = str1;
;	genAssign
;	AOP_STK for 
;	AOP_STK for _strstr_cp_1_1
	lda	hl,14(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,10(sp)
	ld	(hl+),a
	ld	(hl),e
;_strstr.c:35: if ( !*str2 )
;	genAssign
;	AOP_STK for 
;	AOP_STK for _strstr_s2_1_1
	lda	hl,16(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,6(sp)
	ld	(hl+),a
	ld	(hl),e
;	genPointerGet
;	AOP_STK for _strstr_s2_1_1
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genIfx
	or	a,a
	jp	NZ,00122$
;_strstr.c:36: return str1;
;	genRet
;	AOP_STK for _strstr_cp_1_1
; Dump of IC_LEFT: type AOP_STK size 2
;	 aop_stk -2
	lda	hl,10(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	jp	00113$
;_strstr.c:38: while (*cp)
;	genLabel
00122$:
;	genAssign
;	AOP_STK for _strstr_cp_1_1
;	AOP_STK for _strstr_s1_1_1
	lda	hl,10(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,8(sp)
	ld	(hl+),a
	ld	(hl),e
;	genLabel
00110$:
;	genPointerGet
;	AOP_STK for _strstr_s1_1_1
	lda	hl,8(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genIfx
	or	a,a
	jp	Z,00112$
;_strstr.c:41: s2 = str2;
;	genAssign
;	AOP_STK for _strstr_s2_1_1
	lda	hl,6(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;_strstr.c:43: while ( *s1 && *s2 && !(*s1-*s2) )
;	genAssign
;	AOP_STK for _strstr_s1_1_1
;	AOP_STK for _strstr__1_0
	inc	hl
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,4(sp)
	ld	(hl+),a
	ld	(hl),e
;	genAssign
;	AOP_STK for _strstr__1_0
	lda	hl,2(sp)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;	genLabel
00105$:
;	genPointerGet
;	AOP_STK for _strstr__1_0
	lda	hl,4(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genIfx
	ld	c,a
	or	a,a
	jp	Z,00107$
;	genPointerGet
;	AOP_STK for _strstr__1_0
	lda	hl,2(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genIfx
	ld	b,a
	or	a,a
	jp	Z,00107$
;	genCast
;	AOP_STK for _strstr__1_0
	lda	hl,0(sp)
	ld	(hl),c
	ld	a,c
	rla	
	sbc	a,a
	inc	hl
	ld	(hl),a
;	genCast
	ld	a,b
	ld	c,a
	rla	
	sbc	a,a
	ld	b,a
;	genMinus
;	AOP_STK for _strstr__1_0
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	sub	a,c
	ld	e,a
	ld	a,d
	sbc	a,b
	ld	b,a
	ld	c,e
;	genIfx
	ld	a,c
	or	a,b
	jp	NZ,00107$
;_strstr.c:44: s1++, s2++;
;	genPlus
;	AOP_STK for _strstr__1_0
;	genPlusIncr
	lda	hl,4(sp)
	inc	(hl)
	jr	NZ,00124$
	inc	hl
	inc	(hl)
00124$:
;	genPlus
;	AOP_STK for _strstr__1_0
;	genPlusIncr
	lda	hl,2(sp)
	inc	(hl)
	jr	NZ,00125$
	inc	hl
	inc	(hl)
00125$:
;	genGoto
	jp	00105$
;	genLabel
00107$:
;_strstr.c:46: if (!*s2)
;	genPointerGet
;	AOP_STK for _strstr__1_0
	lda	hl,2(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genIfx
	or	a,a
	jp	NZ,00109$
;_strstr.c:47: return(cp);
;	genRet
;	AOP_STK for _strstr_cp_1_1
; Dump of IC_LEFT: type AOP_STK size 2
;	 aop_stk -2
	lda	hl,10(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	jp	00113$
;	genLabel
00109$:
;_strstr.c:49: cp++;
;	genPlus
;	AOP_STK for _strstr_s1_1_1
;	genPlusIncr
	lda	hl,8(sp)
	inc	(hl)
	jr	NZ,00126$
	inc	hl
	inc	(hl)
00126$:
;	genAssign
;	AOP_STK for _strstr_s1_1_1
;	AOP_STK for _strstr_cp_1_1
	lda	hl,8(sp)
	ld	a,(hl+)
	ld	e,(hl)
	inc	hl
	ld	(hl+),a
	ld	(hl),e
;	genGoto
	jp	00110$
;	genLabel
00112$:
;_strstr.c:52: return (NULL) ;
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 2
	ld	de,#0x0000
;	genLabel
00113$:
;	genEndFunction
	lda	sp,12(sp)
	ret
_strstr_end::
	.area _CODE
	.area _CABS
