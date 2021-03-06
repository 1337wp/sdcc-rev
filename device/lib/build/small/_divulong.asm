;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:25 2018
;--------------------------------------------------------
	.module _divulong
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
;Allocation info for local variables in function '_divlong_dummy'
;------------------------------------------------------------
;------------------------------------------------------------
;	_divulong.c:47: _divlong_dummy (void) __naked
;	-----------------------------------------
;	 function _divlong_dummy
;	-----------------------------------------
__divlong_dummy:
;	naked function: no prologue.
;	_divulong.c:156: mov	a,reste3
	
	
	 .globl __divulong
	
	__divulong:
;	# 71 "_divulong.c"
	 .area OSEG (OVR,DATA)
	
	
	 .globl __divulong_PARM_2
	 .globl __divslong_PARM_2
	
	__divulong_PARM_2:
	__divslong_PARM_2:
	 .ds 4
	
	 .area CSEG (CODE)
;	# 93 "_divulong.c"
    ; parameter x comes in a, b, dph, dpl
	 mov r3,a ; save parameter r3
	
	 mov r2,#32
	 clr a
	 mov r4,a
	 mov r5,a
	 mov r6,a
	 mov r7,a
	
 ; optimization loop in lp0 until the first bit is shifted into rest
	
	lp0:
	mov a,dpl ; x <<= 1
	 add a,dpl
	 mov dpl,a
	 mov a,dph
	 rlc a
	 mov dph,a
	 mov a,b
	 rlc a
	 mov b,a
	 mov a,r3
	 rlc a
	 mov r3,a
	
	 jc in_lp
	 djnz r2,lp0
	
	 sjmp exit
	
	loop:
	mov a,dpl ; x <<= 1
	 add a,dpl
	 mov dpl,a
	 mov a,dph
	 rlc a
	 mov dph,a
	 mov a,b
	 rlc a
	 mov b,a
	 mov a,r3
	 rlc a
	 mov r3,a
	
	in_lp:
	mov a,r4 ; reste <<= 1
	 rlc a ; feed in carry
	 mov r4,a
	 mov a,r5
	 rlc a
	 mov r5,a
	 mov a,r6
	 rlc a
	 mov r6,a
	 mov a,r7
	 rlc a
	 mov r7,a
	
	 mov a,r4 ; reste - y
	 subb a,(__divulong_PARM_2) ; carry is always clear here, because
     ; reste <<= 1 never overflows
	 mov a,r5
	 subb a,(__divulong_PARM_2 + 1)
	 mov a,r6
	 subb a,(__divulong_PARM_2 + 2)
	 mov a,r7
	 subb a,(__divulong_PARM_2 + 3)
	
	 jc minus ; reste >= y?
	
    ; -> yes; reste -= y;
	 mov a,r4
	 subb a,(__divulong_PARM_2) ; carry is always clear here (jc)
	 mov r4,a
	 mov a,r5
	 subb a,(__divulong_PARM_2 + 1)
	 mov r5,a
	 mov a,r6
	 subb a,(__divulong_PARM_2 + 2)
	 mov r6,a
	 mov a,r7
	 subb a,(__divulong_PARM_2 + 3)
	 mov r7,a
	
	 orl dpl,#1
	
	minus:
	djnz r2,loop ; -> no
	
	exit:
	mov a,r3 ; prepare the return value
	 ret
	
	 
;	naked function: no epilogue.
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
