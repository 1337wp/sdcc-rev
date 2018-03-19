;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:28 2018
;--------------------------------------------------------
	.module _divuint
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (DATA)
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (DATA)
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area OSEG    (OVR,DATA)
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function '_divuint_dummy'
;------------------------------------------------------------
;------------------------------------------------------------
;	_divuint.c:47: _divuint_dummy (void) __naked
;	-----------------------------------------
;	 function _divuint_dummy
;	-----------------------------------------
__divuint_dummy:
;	naked function: no prologue.
;	_divuint.c:107: mov	count,#16
	
	
	 .globl __divuint
	
	__divuint:
;	# 67 "_divuint.c"
	 .globl __divint
	
	 mov a,sp
	 add a,#-2 ; 2 bytes return address
	 mov r0,a ; r0 points to yh
	 mov a,@r0 ; load yh
	 mov r1,a
	 dec r0
	 mov a,@r0 ; load yl
	 mov r0,a
	
	
	
	
	__divint:
; entry point for __divsint
;	# 107 "_divuint.c"
	 mov r2,#16
	 clr a
	 mov r3,a
	 mov r4,a
	
	loop:
	 mov a,dpl ; x <<= 1
	 add a,acc
	 mov dpl,a
	 mov a,dph
	 rlc a
	 mov dph,a
	
	 mov a,r3 ; reste <<= 1
	 rlc a ; feed in carry
	 mov r3,a
	 mov a,r4
	 rlc a
	 mov r4,a
	
	 mov a,r3 ; reste - y
	 subb a,r0 ; here carry is always clear, because
     ; reste <<= 1 never overflows
	 mov b,a
	 mov a,r4
	 subb a,r1
	
	 jc smaller ; reste >= y?
	
	 mov r4,a ; -> yes; reste = reste - y;
	 mov r3,b
	 orl dpl,#1
	smaller:
; -> no
	 djnz r2,loop
	 ret
	
	 
;	naked function: no epilogue.
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
