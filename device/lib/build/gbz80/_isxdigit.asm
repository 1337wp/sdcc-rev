;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module _isxdigit
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _isxdigit
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
;_isxdigit.c:24: char isxdigit (unsigned char c) 
;	genLabel
;	genFunction
;	---------------------------------
; Function isxdigit
; ---------------------------------
_isxdigit_start::
_isxdigit:
	
;_isxdigit.c:27: if (( c >= '0' && c <= '9')  ||
;	genCmpLt
;	AOP_STK for 
	lda	hl,2(sp)
	ld	a,(hl)
	sub	a,#0x30
	jp	C,00105$
;	genCmpGt
;	AOP_STK for 
	ld	a,#0x39
	sub	a,(hl)
	jp	NC,00101$
;	genLabel
00105$:
;_isxdigit.c:28: ( c >= 'a' && c <= 'f')  ||
;	genCmpLt
;	AOP_STK for 
	lda	hl,2(sp)
	ld	a,(hl)
	sub	a,#0x61
	jp	C,00107$
;	genCmpGt
;	AOP_STK for 
	ld	a,#0x66
	sub	a,(hl)
	jp	NC,00101$
;	genLabel
00107$:
;_isxdigit.c:29: ( c >= 'A' && c <= 'F')) 
;	genCmpLt
;	AOP_STK for 
	lda	hl,2(sp)
	ld	a,(hl)
	sub	a,#0x41
	jp	C,00102$
;	genCmpGt
;	AOP_STK for 
	ld	a,#0x46
	sub	a,(hl)
	jp	C,00102$
;	genLabel
00101$:
;_isxdigit.c:30: return 1;
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 1
	ld	e,#0x01
	jp	00108$
;	genLabel
00102$:
;_isxdigit.c:31: return 0;
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 1
	ld	e,#0x00
;	genLabel
00108$:
;	genEndFunction
	
	ret
_isxdigit_end::
	.area _CODE
	.area _CABS
