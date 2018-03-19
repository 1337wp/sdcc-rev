;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:27 2018
;--------------------------------------------------------
	.module _mullong
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __mullong_dummy
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
;Allocation info for local variables in function '_mullong_dummy'
;------------------------------------------------------------
;------------------------------------------------------------
;	_mullong.c:312: _mullong_dummy (void) __naked
;	-----------------------------------------
;	 function _mullong_dummy
;	-----------------------------------------
__mullong_dummy:
;	naked function: no prologue.
;	_mullong.c:486: __endasm;
	
	
	__mullong:
	
	 .globl __mullong
	
    ; the result c will be stored in r4...r7
	
	
	
	
	
 ; r4 a0 * b0
 ; r5 a1 * b0 + a0 * b1
 ; r6 a2 * b0 + a1 * b1 + a0 * b2
 ; r7 a3 * b0 + a2 * b1 + a1 * b2 + a0 * b3
	
	
	 .area XSEG (XDATA)
	
	__mullong_PARM_2:
	
	 .globl __mullong_PARM_2
	
	 .ds 4
	
	 .area CSEG (CODE)
	
    ; parameter a comes in a, b, dph, dpl
	 mov r0,dpl ; save parameter a
	 mov r1,dph
	 mov r2,b
	 mov r3,a
	
	
	
	
	
	
    ; Byte 0
	 mov b,r0
	
	
	
	 mov dptr,#__mullong_PARM_2
	 movx a,@dptr ; b0
	
	 mul ab ; r0 * b0
	 mov r4,a
	 mov r5,b
	
    ; Byte 1
	 mov b,r1
	
	
	
	 movx a,@dptr ; b0
	
	 mul ab ; r1 * b0
	 add a,r5
	 mov r5,a
	 clr a
	 addc a,b
	 mov r6,a
	
	 mov b,r0
	
	
	
	 inc dptr ; b1
	 movx a,@dptr
	
	 mul ab ; r0 * b1
	 add a,r5
	 mov r5,a
	 mov a,b
	 addc a,r6
	 mov r6,a
	 clr a
	 rlc a
	 mov r7,a
	
    ; Byte 2
	 mov b,r1
	
	
	
	 movx a,@dptr ; b1
	
	 mul ab ; r1 * b1
	 add a,r6
	 mov r6,a
	 mov a,b
	 addc a,r7
	 mov r7,a
	
	 mov b,r0
	
	
	
	 inc dptr ; b2
	 movx a,@dptr
	
	 mul ab ; r0 * b2
	 add a,r6
	 mov r6,a
	 mov a,b
	 addc a,r7
	 mov r7,a
	
	 mov b,r2
	
	
	
	 mov dptr,#__mullong_PARM_2
	 movx a,@dptr ; b0
	
	 mul ab ; r2 * b0
	 add a,r6
	 mov r6,a
	 mov a,b
	 addc a,r7
	 mov r7,a
	
    ; Byte 3
	 mov b,r3
	
	
	
	 movx a,@dptr ; b0
	
	 mul ab ; r3 * b0
	 add a,r7
	 mov r7,a
	
	 mov b,r2
	
	
	
	 inc dptr ; b1
	 movx a,@dptr
	
	 mul ab ; r2 * b1
	 add a,r7
	 mov r7,a
	
	 mov b,r1
	
	
	
	 inc dptr ; b2
	 movx a,@dptr
	
	 mul ab ; r1 * b2
	 add a,r7
	 mov r7,a
	
	 mov b,r0
	
	
	
	 inc dptr ; b3
	 movx a,@dptr
	
	 mul ab ; r0 * b3
	 add a,r7
	
	 mov b,r6
	 mov dph,r5
	 mov dpl,r4
	 ret
	
	 
;	naked function: no epilogue.
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
