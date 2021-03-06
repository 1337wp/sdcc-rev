;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:28 2018
;--------------------------------------------------------
	.module _gptrput
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __gptrput
	.globl _B_5
	.globl _B_6
	.globl _B_7
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (DATA)
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (DATA)
_B_7	=	0x00f7
_B_6	=	0x00f6
_B_5	=	0x00f5
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
;Allocation info for local variables in function '_gptrput'
;------------------------------------------------------------
;c                         Allocated to stack - offset -3
;gptr                      Allocated to registers 
;------------------------------------------------------------
;	_gptrput.c:139: _gptrput (char *gptr, char c) __naked
;	-----------------------------------------
;	 function _gptrput
;	-----------------------------------------
__gptrput:
;	naked function: no prologue.
;	_gptrput.c:182: __endasm;
	
    ;
    ; depending on the pointer type according to SDCCsymt.h
    ;
	        jb _B_7,codeptr$ ; >0x80 code ; 3
	        jnb _B_6,xdataptr$ ; <0x40 far ; 3
	
	        mov dph,r0 ; save r0 independant of regbank ; 2
	        mov r0,dpl ; use only low order address ; 2
	
	        jb _B_5,pdataptr$ ; >0x60 pdata ; 3
    ;
    ; store into near/idata space
    ;
	        mov @r0,a ; 1
	 dataptrrestore$:
	        mov r0,dph ; restore r0 ; 2
	        mov dph,#0 ; restore dph ; 2
	
	 codeptr$:
	        ret ; 1
    ;
    ; store into external stack/pdata space
    ;
	 pdataptr$:
	        movx @r0,a ; 1
	        sjmp dataptrrestore$ ; 2
    ;
    ; store into far space
    ;
	 xdataptr$:
	        movx @dptr,a ; 1
	        ret ; 1
	
                                                        ;===
                                                        ;24 bytes
	    
;	naked function: no epilogue.
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
