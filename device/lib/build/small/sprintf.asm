;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:25 2018
;--------------------------------------------------------
	.module sprintf
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _vsprintf_PARM_3
	.globl _vsprintf_PARM_2
	.globl _vsprintf
	.globl _sprintf
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
_vsprintf_PARM_2:
	.ds 3
_vsprintf_PARM_3:
	.ds 1
_vsprintf_buf_1_1:
	.ds 3
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
;Allocation info for local variables in function 'put_char_to_string'
;------------------------------------------------------------
;p                         Allocated to stack - offset -5
;c                         Allocated to stack - offset 1
;buf                       Allocated to registers 
;------------------------------------------------------------
;	sprintf.c:29: static void put_char_to_string( char c, void* p ) _REENTRANT
;	-----------------------------------------
;	 function put_char_to_string
;	-----------------------------------------
_put_char_to_string:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	push	_bp
	mov	_bp,sp
	push	dpl
;	sprintf.c:31: char **buf = (char **)p;
;	sprintf.c:32: *(*buf)++ = c;
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	mov	a,#0x01
	add	a,r6
	mov	r3,a
	clr	a
	addc	a,r7
	mov	r4,a
	mov	ar5,r2
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	mov	dpl,r6
	mov	dph,r7
	mov	b,r2
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'vsprintf'
;------------------------------------------------------------
;format                    Allocated with name '_vsprintf_PARM_2'
;ap                        Allocated with name '_vsprintf_PARM_3'
;buf                       Allocated with name '_vsprintf_buf_1_1'
;i                         Allocated to registers r2 r3 
;------------------------------------------------------------
;	sprintf.c:35: int vsprintf (char *buf, const char *format, va_list ap)
;	-----------------------------------------
;	 function vsprintf
;	-----------------------------------------
_vsprintf:
	mov	_vsprintf_buf_1_1,dpl
	mov	(_vsprintf_buf_1_1 + 1),dph
	mov	(_vsprintf_buf_1_1 + 2),b
;	sprintf.c:38: i = _print_format( put_char_to_string, &buf, format, ap );
	mov	__print_format_PARM_2,#_vsprintf_buf_1_1
	mov	(__print_format_PARM_2 + 1),#0x00
	mov	(__print_format_PARM_2 + 2),#0x40
	mov	__print_format_PARM_3,_vsprintf_PARM_2
	mov	(__print_format_PARM_3 + 1),(_vsprintf_PARM_2 + 1)
	mov	(__print_format_PARM_3 + 2),(_vsprintf_PARM_2 + 2)
	mov	__print_format_PARM_4,_vsprintf_PARM_3
	mov	dptr,#_put_char_to_string
	lcall	__print_format
	mov	r2,dpl
	mov	r3,dph
;	sprintf.c:39: *buf = 0;
	mov	r4,_vsprintf_buf_1_1
	mov	r5,(_vsprintf_buf_1_1 + 1)
	mov	r6,(_vsprintf_buf_1_1 + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	clr	a
	lcall	__gptrput
;	sprintf.c:40: return i;
	mov	dpl,r2
	mov	dph,r3
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sprintf'
;------------------------------------------------------------
;buf                       Allocated to stack - offset -5
;format                    Allocated to stack - offset -8
;arg                       Allocated to registers 
;i                         Allocated to registers r2 r3 
;------------------------------------------------------------
;	sprintf.c:43: int sprintf (char *buf, const char *format, ...)
;	-----------------------------------------
;	 function sprintf
;	-----------------------------------------
_sprintf:
	push	_bp
	mov	_bp,sp
;	sprintf.c:48: va_start (arg, format);
	mov	a,_bp
	add	a,#0xf8
	mov	__print_format_PARM_4,a
;	sprintf.c:49: i = _print_format( put_char_to_string, &buf, format, arg );
	mov	a,_bp
	add	a,#0xfb
	mov	r2,a
	mov	__print_format_PARM_2,r2
	mov	(__print_format_PARM_2 + 1),#0x00
	mov	(__print_format_PARM_2 + 2),#0x40
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	__print_format_PARM_3,@r0
	inc	r0
	mov	(__print_format_PARM_3 + 1),@r0
	inc	r0
	mov	(__print_format_PARM_3 + 2),@r0
	mov	dptr,#_put_char_to_string
	lcall	__print_format
	mov	r2,dpl
	mov	r3,dph
;	sprintf.c:50: *buf = 0;
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	clr	a
	lcall	__gptrput
;	sprintf.c:53: return i;
	mov	dpl,r2
	mov	dph,r3
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
