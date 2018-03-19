;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:00 2018
;--------------------------------------------------------
	.module _iscntrl
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _iscntrl
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
;_iscntrl.c:27: char  iscntrl(unsigned char c) 
;	genLabel
;	genFunction
;	---------------------------------
; Function iscntrl
; ---------------------------------
_iscntrl_start::
_iscntrl:
	push	ix
	ld	ix,#0
	add	ix,sp
;_iscntrl.c:30: if  ( c <= '\x1F' || c == '\x7f') 
;	genCmpGt
;	AOP_STK for 
	ld	a,#0x1F
	sub	a,4(ix)
	jr	NC,00101$
;	genCmpEq
;	AOP_STK for 
; genCmpEq: left 1, right 1, result 0
	ld	a,4(ix)
	sub	a,#0x7F
	jr	Z,00108$
	jr	00102$
00108$:
;	genLabel
00101$:
;_iscntrl.c:31: return 1;
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 1
	ld	l,#0x01
	jr	00104$
;	genLabel
00102$:
;_iscntrl.c:32: return 0;
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 1
	ld	l,#0x00
;	genLabel
00104$:
;	genEndFunction
	pop	ix
	ret
_iscntrl_end::
	.area _CODE
	.area _CABS
