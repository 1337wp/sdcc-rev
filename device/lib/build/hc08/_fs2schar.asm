;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:24 2018
;--------------------------------------------------------
	.module _fs2schar
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
	.globl ___fs2schar_PARM_1
	.globl ___fs2schar
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
___fs2schar_PARM_1:
	.ds 4
___fs2schar_sl_1_1:
	.ds 4
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
;Allocation info for local variables in function '__fs2schar'
;------------------------------------------------------------
;f                         Allocated with name '___fs2schar_PARM_1'
;sl                        Allocated with name '___fs2schar_sl_1_1'
;------------------------------------------------------------
;_fs2schar.c:77: signed char __fs2schar (float f)
;	-----------------------------------------
;	 function __fs2schar
;	-----------------------------------------
___fs2schar:
;_fs2schar.c:79: signed long sl=__fs2slong(f);
	lda	___fs2schar_PARM_1
	sta	___fs2slong_PARM_1
	lda	(___fs2schar_PARM_1 + 1)
	sta	(___fs2slong_PARM_1 + 1)
	lda	(___fs2schar_PARM_1 + 2)
	sta	(___fs2slong_PARM_1 + 2)
	lda	(___fs2schar_PARM_1 + 3)
	sta	(___fs2slong_PARM_1 + 3)
	jsr	___fs2slong
	sta	(___fs2schar_sl_1_1 + 3)
	stx	(___fs2schar_sl_1_1 + 2)
	lda	*__ret2
	sta	(___fs2schar_sl_1_1 + 1)
	lda	*__ret3
	sta	___fs2schar_sl_1_1
;_fs2schar.c:80: if (sl>=CHAR_MAX)
	lda	(___fs2schar_sl_1_1 + 3)
	sub	#0x7F
	lda	(___fs2schar_sl_1_1 + 2)
	sbc	#0x00
	lda	(___fs2schar_sl_1_1 + 1)
	sbc	#0x00
	lda	___fs2schar_sl_1_1
	sbc	#0x00
	blt	00102$
00109$:
;_fs2schar.c:81: return CHAR_MAX;
	lda	#0x7F
	rts
00102$:
;_fs2schar.c:82: if (sl<=CHAR_MIN)
	lda	#0x80
	sub	(___fs2schar_sl_1_1 + 3)
	lda	#0xFF
	sbc	(___fs2schar_sl_1_1 + 2)
	lda	#0xFF
	sbc	(___fs2schar_sl_1_1 + 1)
	lda	#0xFF
	sbc	___fs2schar_sl_1_1
	blt	00104$
00110$:
;_fs2schar.c:83: return -CHAR_MIN;
	lda	#0x80
	rts
00104$:
;_fs2schar.c:84: return sl;
	lda	(___fs2schar_sl_1_1 + 3)
00105$:
	rts
	.area CSEG (CODE)
	.area CONST   (CODE)
	.area XINIT
	.area CABS    (ABS,CODE)
