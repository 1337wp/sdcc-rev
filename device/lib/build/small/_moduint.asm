;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:25 2018
;--------------------------------------------------------
	.module _moduint
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
;Allocation info for local variables in function '_moduint_dummy'
;------------------------------------------------------------
;------------------------------------------------------------
;	_moduint.c:47: _moduint_dummy (void) __naked
;	-----------------------------------------
;	 function _moduint_dummy
;	-----------------------------------------
__moduint_dummy:
;	naked function: no prologue.
;	_moduint.c:124: jc	start
	
	
	 .globl __moduint
	
	__moduint:
;	# 85 "_moduint.c"
	 .area OSEG (OVR,DATA)
	
	
	 .globl __moduint_PARM_2
	 .globl __modsint_PARM_2
	
	__moduint_PARM_2:
	__modsint_PARM_2:
	 .ds 2
	
	 .area CSEG (CODE)
;	# 105 "_moduint.c"
	 mov a,(__moduint_PARM_2) ; avoid endless loop
	 orl a,(__moduint_PARM_2 + 1)
	 jz div_by_0
	
	 mov r2,#1
	
	loop1:
	mov a,(__moduint_PARM_2) ; b <<= 1
	 add a,acc
	 mov (__moduint_PARM_2),a
	 mov a,(__moduint_PARM_2 + 1)
	 rlc a
	 jc msbset
	 mov (__moduint_PARM_2 + 1),a
	
	 mov a,dpl ; a - b
	 subb a,(__moduint_PARM_2) ; here carry is always clear
	 mov a,dph
	 subb a,(__moduint_PARM_2 + 1)
	
	 jc start
	
	 inc r2
	 sjmp loop1
	
	start:
	clr c
	 mov a,(__moduint_PARM_2 + 1) ; b >>= 1;
	msbset:
	rrc a
	 mov (__moduint_PARM_2 + 1),a
	 mov a,(__moduint_PARM_2)
	 rrc a
	 mov (__moduint_PARM_2),a
	
	loop2:
	clr c
	 mov a,dpl ; a - b
	 subb a,(__moduint_PARM_2)
	
	 mov b,a
	 mov a,dph
	 subb a,(__moduint_PARM_2 + 1)
	
	 jc smaller ; a >= b?
	
	 mov dph,a ; -> yes; a = a - b;
	 mov dpl,b
	smaller:
; -> no
	 clr c
	 mov a,(__moduint_PARM_2 + 1) ; b >>= 1;
	 rrc a
	 mov (__moduint_PARM_2 + 1),a
	 mov a,(__moduint_PARM_2)
	 rrc a
	 mov (__moduint_PARM_2),a
	
	 djnz r2,loop2
	div_by_0:
	 ret
	
	 
;	naked function: no epilogue.
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
