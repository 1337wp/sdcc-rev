;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module _isdigit
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _isdigit
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
;_isdigit.c:26: char isdigit( unsigned char c) 
;	genLabel
;	genFunction
;	---------------------------------
; Function isdigit
; ---------------------------------
_isdigit_start::
_isdigit:
	
;_isdigit.c:29: if ( c >= '0' && c <= '9' )   
;	genCmpLt
;	AOP_STK for 
	lda	hl,2(sp)
	ld	a,(hl)
	sub	a,#0x30
	jp	C,00102$
;	genCmpGt
;	AOP_STK for 
	ld	a,#0x39
	sub	a,(hl)
	jp	C,00102$
;_isdigit.c:30: return 1;
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 1
	ld	e,#0x01
	jp	00104$
;	genLabel
00102$:
;_isdigit.c:31: return 0;
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 1
	ld	e,#0x00
;	genLabel
00104$:
;	genEndFunction
	
	ret
_isdigit_end::
	.area _CODE
	.area _CABS
