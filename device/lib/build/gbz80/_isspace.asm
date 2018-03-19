;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module _isspace
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _isspace
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
;_isspace.c:24: char isspace (unsigned char c) 
;	genLabel
;	genFunction
;	---------------------------------
; Function isspace
; ---------------------------------
_isspace_start::
_isspace:
	
;_isspace.c:27: if ( c == ' '  ||
;	genCmpEq
;	AOP_STK for 
; genCmpEq: left 1, right 1, result 0
	lda	hl,2(sp)
	ld	a,(hl)
	sub	a,#0x20
	jp	Z,00101$
00115$:
;_isspace.c:28: c == '\f' ||
;	genCmpEq
;	AOP_STK for 
; genCmpEq: left 1, right 1, result 0
	lda	hl,2(sp)
	ld	a,(hl)
	sub	a,#0x0C
	jp	Z,00101$
00116$:
;_isspace.c:29: c == '\n' ||
;	genCmpEq
;	AOP_STK for 
; genCmpEq: left 1, right 1, result 0
	lda	hl,2(sp)
	ld	a,(hl)
	sub	a,#0x0A
	jp	Z,00101$
00117$:
;_isspace.c:30: c == '\r' ||
;	genCmpEq
;	AOP_STK for 
; genCmpEq: left 1, right 1, result 0
	lda	hl,2(sp)
	ld	a,(hl)
	sub	a,#0x0D
	jp	Z,00101$
00118$:
;_isspace.c:31: c == '\t' ||
;	genCmpEq
;	AOP_STK for 
; genCmpEq: left 1, right 1, result 0
	lda	hl,2(sp)
	ld	a,(hl)
	sub	a,#0x09
	jp	Z,00101$
00119$:
;_isspace.c:32: c == '\v' ) 
;	genCmpEq
;	AOP_STK for 
; genCmpEq: left 1, right 1, result 0
	lda	hl,2(sp)
	ld	a,(hl)
	sub	a,#0x0B
	jp	NZ,00120$
	jr	00121$
00120$:
	jp	00102$
00121$:
;	genLabel
00101$:
;_isspace.c:33: return 1;
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 1
	ld	e,#0x01
	jp	00108$
;	genLabel
00102$:
;_isspace.c:34: return 0;
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 1
	ld	e,#0x00
;	genLabel
00108$:
;	genEndFunction
	
	ret
_isspace_end::
	.area _CODE
	.area _CABS
