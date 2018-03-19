;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:00 2018
;--------------------------------------------------------
	.module _isgraph
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _isgraph
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
;_isgraph.c:25: char isgraph( unsigned char c) 
;	genLabel
;	genFunction
;	---------------------------------
; Function isgraph
; ---------------------------------
_isgraph_start::
_isgraph:
	push	ix
	ld	ix,#0
	add	ix,sp
;_isgraph.c:28: if ( c >= '\x21' && c <= '\x7e' ) 
;	genCmpLt
;	AOP_STK for 
	ld	a,4(ix)
	sub	a,#0x21
	jr	C,00102$
;	genCmpGt
;	AOP_STK for 
	ld	a,#0x7E
	sub	a,4(ix)
	jr	C,00102$
;_isgraph.c:29: return 1;
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 1
	ld	l,#0x01
	jr	00104$
;	genLabel
00102$:
;_isgraph.c:30: return 0;
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 1
	ld	l,#0x00
;	genLabel
00104$:
;	genEndFunction
	pop	ix
	ret
_isgraph_end::
	.area _CODE
	.area _CABS
