;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:24 2018
;--------------------------------------------------------
	.module _isspace
	.optsdcc -mhc08
	
	.area HOME (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT (CODE)
	.area GSFINAL (CODE)
	.area CSEG (CODE)
	.area XINIT
	.area CONST   (CODE)
	.area DSEG
	.area OSEG    (OVR)
	.area BSEG
	.area XSEG
	.area XISEG
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _isspace
;--------------------------------------------------------
;  ram data
;--------------------------------------------------------
	.area DSEG
;--------------------------------------------------------
; overlayable items in  ram 
;--------------------------------------------------------
	.area OSEG    (OVR)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG
;--------------------------------------------------------
; extended address mode data
;--------------------------------------------------------
	.area XSEG
_isspace_c_1_1:
	.ds 1
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME (CODE)
	.area GSINIT (CODE)
	.area GSFINAL (CODE)
	.area GSINIT (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME (CODE)
	.area HOME (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'isspace'
;------------------------------------------------------------
;c                         Allocated with name '_isspace_c_1_1'
;------------------------------------------------------------
;_isspace.c:24: char isspace (unsigned char c) 
;	-----------------------------------------
;	 function isspace
;	-----------------------------------------
_isspace:
;_isspace.c:27: if ( c == ' '  ||
	sta	_isspace_c_1_1
	cmp	#0x20
	beq	00101$
00115$:
;_isspace.c:28: c == '\f' ||
	lda	_isspace_c_1_1
	cmp	#0x0C
	beq	00101$
00116$:
;_isspace.c:29: c == '\n' ||
	lda	_isspace_c_1_1
	cmp	#0x0A
	beq	00101$
00117$:
;_isspace.c:30: c == '\r' ||
	lda	_isspace_c_1_1
	cmp	#0x0D
	beq	00101$
00118$:
;_isspace.c:31: c == '\t' ||
	lda	_isspace_c_1_1
	cmp	#0x09
	beq	00101$
00119$:
;_isspace.c:32: c == '\v' ) 
	lda	_isspace_c_1_1
	cmp	#0x0B
	bne	00102$
00120$:
00101$:
;_isspace.c:33: return 1;
	lda	#0x01
	rts
00102$:
;_isspace.c:34: return 0;
	clra
00108$:
	rts
	.area CSEG (CODE)
	.area CONST   (CODE)
	.area XINIT
	.area CABS    (ABS,CODE)
