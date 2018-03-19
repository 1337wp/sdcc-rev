;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module _strstr
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strstr
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
;_strstr.c:26: char * strstr (
;	genLabel
;	genFunction
;	---------------------------------
; Function strstr
; ---------------------------------
_strstr_start::
_strstr:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-10
	add	hl,sp
	ld	sp,hl
;_strstr.c:31: char * cp = str1;
;	genAssign
;	AOP_STK for 
;	AOP_STK for _strstr_cp_1_1
	ld	a,4(ix)
	ld	-2(ix),a
	ld	a,5(ix)
	ld	-1(ix),a
;_strstr.c:35: if ( !*str2 )
;	genAssign
;	AOP_STK for 
;	AOP_STK for _strstr_s2_1_1
	ld	a,6(ix)
	ld	-6(ix),a
	ld	a,7(ix)
	ld	-5(ix),a
;	genPointerGet
;	AOP_STK for _strstr_s2_1_1
	ld	l,-6(ix)
	ld	h,-5(ix)
	ld	a,(hl)
;	genIfx
	or	a,a
	jr	NZ,00122$
;_strstr.c:36: return str1;
;	genRet
;	AOP_STK for _strstr_cp_1_1
; Dump of IC_LEFT: type AOP_STK size 2
;	 aop_stk -2
	ld	l,-2(ix)
	ld	h,-1(ix)
	jp	00113$
;_strstr.c:38: while (*cp)
;	genLabel
00122$:
;	genAssign
;	AOP_STK for _strstr_cp_1_1
;	AOP_STK for _strstr_s1_1_1
	ld	a,-2(ix)
	ld	-4(ix),a
	ld	a,-1(ix)
	ld	-3(ix),a
;	genLabel
00110$:
;	genPointerGet
;	AOP_STK for _strstr_s1_1_1
	ld	l,-4(ix)
	ld	h,-3(ix)
	ld	a,(hl)
;	genIfx
	or	a,a
	jp	Z,00112$
;_strstr.c:41: s2 = str2;
;	genAssign
;	AOP_STK for _strstr_s2_1_1
	ld	e,-6(ix)
	ld	d,-5(ix)
;_strstr.c:43: while ( *s1 && *s2 && !(*s1-*s2) )
;	genAssign
;	AOP_STK for _strstr_s1_1_1
;	AOP_STK for _strstr__1_0
	ld	a,-4(ix)
	ld	-8(ix),a
	ld	a,-3(ix)
	ld	-7(ix),a
;	genAssign
;	(registers are the same)
;	genLabel
00105$:
;	genPointerGet
;	AOP_STK for _strstr__1_0
	ld	l,-8(ix)
	ld	h,-7(ix)
	ld	c,(hl)
;	genIfx
	xor	a,a
	or	a,c
	jr	Z,00107$
;	genPointerGet
	ld	a,(de)
;	genIfx
	ld	b,a
	or	a,a
	jr	Z,00107$
;	genCast
;	AOP_STK for _strstr__1_0
	ld	-10(ix),c
	ld	a,c
	rla	
	sbc	a,a
	ld	-9(ix),a
;	genCast
	ld	a,b
	ld	c,a
	rla	
	sbc	a,a
	ld	b,a
;	genMinus
;	AOP_STK for _strstr__1_0
	ld	a,-10(ix)
	sub	a,c
	ld	c,a
	ld	a,-9(ix)
	sbc	a,b
;	genIfx
	ld	b,a
	or	a,c
	jr	NZ,00107$
;_strstr.c:44: s1++, s2++;
;	genPlus
;	AOP_STK for _strstr__1_0
;	genPlusIncr
	inc	-8(ix)
	jr	NZ,00124$
	inc	-7(ix)
00124$:
;	genPlus
;	genPlusIncr
	inc	de
;	genGoto
	jr	00105$
;	genLabel
00107$:
;_strstr.c:46: if (!*s2)
;	genPointerGet
	ld	a,(de)
;	genIfx
	or	a,a
	jr	NZ,00109$
;_strstr.c:47: return(cp);
;	genRet
;	AOP_STK for _strstr_cp_1_1
; Dump of IC_LEFT: type AOP_STK size 2
;	 aop_stk -2
	ld	l,-2(ix)
	ld	h,-1(ix)
	jr	00113$
;	genLabel
00109$:
;_strstr.c:49: cp++;
;	genPlus
;	AOP_STK for _strstr_s1_1_1
;	genPlusIncr
	inc	-4(ix)
	jr	NZ,00125$
	inc	-3(ix)
00125$:
;	genAssign
;	AOP_STK for _strstr_s1_1_1
;	AOP_STK for _strstr_cp_1_1
	ld	a,-4(ix)
	ld	-2(ix),a
	ld	a,-3(ix)
	ld	-1(ix),a
;	genGoto
	jp	00110$
;	genLabel
00112$:
;_strstr.c:52: return (NULL) ;
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 2
	ld	hl,#0x0000
;	genLabel
00113$:
;	genEndFunction
	ld	sp,ix
	pop	ix
	ret
_strstr_end::
	.area _CODE
	.area _CABS
