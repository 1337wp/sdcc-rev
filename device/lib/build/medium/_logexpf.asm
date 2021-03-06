;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:26 2018
;--------------------------------------------------------
	.module _logexpf
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __fs_natural_log_table
	.globl __fs_cordic_rshift_r765_unsigned
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
;Allocation info for local variables in function '_fs_cordic_rshift_r765_unsigned'
;------------------------------------------------------------
;------------------------------------------------------------
;	_logexpf.c:11: void _fs_cordic_rshift_r765_unsigned(void)
;	-----------------------------------------
;	 function _fs_cordic_rshift_r765_unsigned
;	-----------------------------------------
__fs_cordic_rshift_r765_unsigned:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	_logexpf.c:55: __endasm;
	
	 add a, #248
	 jnc 00003$
	 mov b, r5
	 mov r5, ar6
	 mov r6, ar7
	 mov r7, #0
	 add a, #248
	 jnc 00003$
	 mov b, r5
	 mov r5, ar6
	 mov r6, #0
	 add a, #248
	 jnc 00003$
	 mov b, r5
	 mov r5, #0
	 add a, #248
	 jnc 00003$
	 mov b, #0
	 ret
	00003$:
	 add a, #8
	 jz 00030$
	 push ar0
	 mov r0, a
	00010$:
	 clr c
	 mov a, r7
	 rrc a
	 mov r7, a
	 mov a, r6
	 rrc a
	 mov r6, a
	 mov a, r5
	 rrc a
	 mov r5, a
	 mov a, b
	 rrc a
	 mov b, a
	 djnz r0, 00010$
	 pop ar0
	00030$:
	 
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
__fs_natural_log_table:
	.db #0xFF
	.db #0x42
	.db #0x2E
	.db #0x16
	.db #0xF6
	.db #0x91
	.db #0xF9
	.db #0x0C
	.db #0xF2
	.db #0xFD
	.db #0x23
	.db #0x07
	.db #0xEE
	.db #0xE0
	.db #0xC4
	.db #0x03
	.db #0x0C
	.db #0xA3
	.db #0xF0
	.db #0x01
	.db #0xD8
	.db #0x14
	.db #0xFC
	.db #0x00
	.db #0xA3
	.db #0x02
	.db #0x7F
	.db #0x00
	.db #0x55
	.db #0xC0
	.db #0x3F
	.db #0x00
	.db #0x0B
	.db #0xF0
	.db #0x1F
	.db #0x00
	.db #0x01
	.db #0xFC
	.db #0x0F
	.db #0x00
	.db #0x00
	.db #0xFF
	.db #0x07
	.db #0x00
	.db #0xC0
	.db #0xFF
	.db #0x03
	.db #0x00
	.db #0xF0
	.db #0xFF
	.db #0x01
	.db #0x00
	.db #0xFC
	.db #0xFF
	.db #0x00
	.db #0x00
	.db #0xFF
	.db #0x7F
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x40
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x20
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x10
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x08
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x04
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x02
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x01
	.db #0x00
	.db #0x00
	.db #0x80
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x40
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x20
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x10
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x08
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x04
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x02
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x01
	.db #0x00
	.db #0x00
	.db #0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
