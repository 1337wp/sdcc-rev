;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module printf_large
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __print_format
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
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
;printf_large.c:110: static void output_digit( unsigned char n, BOOL lower_case, pfn_outputchar output_char, void* p )
;	genLabel
;	genFunction
;	---------------------------------
; Function output_digit
; ---------------------------------
_output_digit:
	push	ix
	ld	ix,#0
	add	ix,sp
;printf_large.c:112: register unsigned char c = n + (unsigned char)'0';
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	ld	a,4(ix)
	add	a,#0x30
	ld	c,a
;printf_large.c:114: if (c > (unsigned char)'9')
;	genCmpGt
	ld	a,#0x39
	sub	a,c
	jr	NC,00104$
;printf_large.c:116: c += (unsigned char)('A' - '0' - 10);
;	genPlus
;	genPlusIncr
	ld	a,c
	add	a,#0x07
	ld	c,a
;printf_large.c:117: if (lower_case)
;	genIfx
;	AOP_STK for 
	xor	a,a
	or	a,5(ix)
	jr	Z,00104$
;printf_large.c:118: c += (unsigned char)('a' - 'A');
;	genPlus
;	genPlusIncr
	ld	a,c
	add	a,#0x20
	ld	c,a
;	genLabel
00104$:
;printf_large.c:120: output_char( c, p );
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	ld	l,8(ix)
	ld	h,9(ix)
	push	hl
;	genIpush
	ld	a,c
	push	af
	inc	sp
;	genPcall
;	AOP_STK for 
	ld	hl,#00109$
	push	hl
	ld	l,6(ix)
	ld	h,7(ix)
	jp	(hl)
00109$:
	pop	af
	inc	sp
;	genLabel
;	genEndFunction
	pop	ix
	ret
;printf_large.c:141: static void output_2digits( unsigned char b, BOOL lower_case, pfn_outputchar output_char, void* p )
;	genLabel
;	genFunction
;	---------------------------------
; Function output_2digits
; ---------------------------------
_output_2digits:
	push	ix
	ld	ix,#0
	add	ix,sp
;printf_large.c:143: output_digit( b>>4,   lower_case, output_char, p );
;	genRightShift
;	AOP_STK for 
	ld	c,4(ix)
	srl	c
	srl	c
	srl	c
	srl	c
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	ld	l,8(ix)
	ld	h,9(ix)
	push	hl
;	genIpush
;	AOP_STK for 
	ld	l,6(ix)
	ld	h,7(ix)
	push	hl
;	genIpush
;	AOP_STK for 
	ld	a,5(ix)
	push	af
	inc	sp
;	genIpush
	ld	a,c
	push	af
	inc	sp
;	genCall
	call	_output_digit
	pop	af
	pop	af
	pop	af
;printf_large.c:144: output_digit( b&0x0F, lower_case, output_char, p );
;	genAnd
;	AOP_STK for 
	ld	a,4(ix)
	and	a,#0x0F
	ld	c,a
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	ld	l,8(ix)
	ld	h,9(ix)
	push	hl
;	genIpush
;	AOP_STK for 
	ld	l,6(ix)
	ld	h,7(ix)
	push	hl
;	genIpush
;	AOP_STK for 
	ld	a,5(ix)
	push	af
	inc	sp
;	genIpush
	ld	a,c
	push	af
	inc	sp
;	genCall
	call	_output_digit
	pop	af
	pop	af
	pop	af
;	genLabel
;	genEndFunction
	pop	ix
	ret
;printf_large.c:158: static void calculate_digit( value_t _AUTOMEM * value, unsigned char radix )
;	genLabel
;	genFunction
;	---------------------------------
; Function calculate_digit
; ---------------------------------
_calculate_digit:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-9
	add	hl,sp
	ld	sp,hl
;printf_large.c:160: unsigned long ul = value->ul;
;	genAssign
;	AOP_STK for 
;	AOP_STK for _calculate_digit__1_0
	ld	a,4(ix)
	ld	-9(ix),a
	ld	a,5(ix)
	ld	-8(ix),a
;	genPointerGet
;	AOP_STK for _calculate_digit__1_0
	ld	l,-9(ix)
	ld	h,-8(ix)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genAssign
;	AOP_STK for _calculate_digit_ul_1_1
	ld	-4(ix),c
	ld	-3(ix),b
	ld	-2(ix),e
	ld	-1(ix),d
;printf_large.c:161: unsigned char _AUTOMEM * pb4 = &value->byte[4];
;	genPlus
;	AOP_STK for _calculate_digit__1_0
;	AOP_STK for _calculate_digit_pb4_1_1
;	genPlusIncr
	ld	a,-9(ix)
	add	a,#0x04
	ld	-6(ix),a
	ld	a,-8(ix)
	adc	a,#0x00
	ld	-5(ix),a
;printf_large.c:164: do
;	genAssign
;	AOP_STK for _calculate_digit_i_1_1
	ld	-7(ix),#0x20
;	genLabel
00103$:
;printf_large.c:166: *pb4 = (*pb4 << 1) | ((ul >> 31) & 0x01);
;	genPointerGet
;	AOP_STK for _calculate_digit_pb4_1_1
	ld	l,-6(ix)
	ld	h,-5(ix)
	ld	d,(hl)
;	genLeftShift
	sla	d
;	genGetHBIT
;	AOP_STK for _calculate_digit_ul_1_1
	ld	a,-1(ix)
	rlc	a
	and	a,#0x01
;	genOr
	ld	e,a
	or	a,d
;	genAssign (pointer)
;	AOP_STK for _calculate_digit_pb4_1_1
;	isBitvar = 0
	ld	l,-6(ix)
	ld	h,-5(ix)
	ld	(hl),a
;printf_large.c:167: ul <<= 1;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,#0x01
	push	af
	inc	sp
;	genIpush
;	AOP_STK for _calculate_digit_ul_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	push	hl
	ld	l,-4(ix)
	ld	h,-3(ix)
	push	hl
;	genCall
	call	__rlulong_rrx_s
	ld	b,d
	ld	c,e
	ld	d,h
	ld	e,l
	pop	af
	pop	af
	inc	sp
;	genAssign
;	AOP_STK for _calculate_digit_ul_1_1
	ld	-4(ix),e
	ld	-3(ix),d
	ld	-2(ix),c
	ld	-1(ix),b
;printf_large.c:169: if (radix <= *pb4 )
;	genPointerGet
;	AOP_STK for _calculate_digit_pb4_1_1
	ld	l,-6(ix)
	ld	h,-5(ix)
	ld	c,(hl)
;	genCmpGt
;	AOP_STK for 
	ld	a,c
	sub	a,6(ix)
	jr	C,00104$
;printf_large.c:171: *pb4 -= radix;
;	genPointerGet
;	AOP_STK for _calculate_digit_pb4_1_1
	ld	l,-6(ix)
	ld	h,-5(ix)
	ld	c,(hl)
;	genMinus
;	AOP_STK for 
	ld	a,c
	sub	a,6(ix)
;	genAssign (pointer)
;	AOP_STK for _calculate_digit_pb4_1_1
;	isBitvar = 0
	ld	l,-6(ix)
	ld	h,-5(ix)
	ld	(hl),a
;printf_large.c:172: ul |= 1;
;	genOr
;	AOP_STK for _calculate_digit_ul_1_1
	ld	a,-4(ix)
	or	a,#0x01
	ld	-4(ix),a
;	genLabel
00104$:
;printf_large.c:174: } while (--i);
;	genMinus
;	AOP_STK for _calculate_digit_i_1_1
	dec	-7(ix)
;	genIfx
;	AOP_STK for _calculate_digit_i_1_1
	xor	a,a
	or	a,-7(ix)
	jp	NZ,00103$
;printf_large.c:175: value->ul = ul;
;	genAssign (pointer)
;	AOP_STK for _calculate_digit__1_0
;	AOP_STK for _calculate_digit_ul_1_1
;	isBitvar = 0
	ld	l,-9(ix)
	ld	h,-8(ix)
	ld	a,-4(ix)
	ld	(hl),a
	inc	hl
	ld	a,-3(ix)
	ld	(hl),a
	inc	hl
	ld	a,-2(ix)
	ld	(hl),a
	inc	hl
	ld	a,-1(ix)
	ld	(hl),a
;	genLabel
;	genEndFunction
	ld	sp,ix
	pop	ix
	ret
;printf_large.c:402: int _print_format (pfn_outputchar pfn, void* pvoid, const char *format, va_list ap)
;	genLabel
;	genFunction
;	---------------------------------
; Function _print_format
; ---------------------------------
__print_format_start::
__print_format:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-37
	add	hl,sp
	ld	sp,hl
;printf_large.c:434: charsOutputted = 0;
;	genAssign
;	AOP_STK for __print_format__1_0
	ld	-33(ix),#0x00
	ld	-32(ix),#0x00
;printf_large.c:442: while( c=*format++ )
;	genAddrOf
	ld	hl,#0x000D
	add	hl,sp
	ld	e,l
	ld	d,h
;	genPlus
;	AOP_STK for __print_format__1_0
;	genPlusIncr
	ld	a,e
	add	a,#0x05
	ld	-28(ix),a
	ld	a,d
	adc	a,#0x00
	ld	-27(ix),a
;	genLabel
00227$:
;	genAssign
;	AOP_STK for 
	ld	c,8(ix)
	ld	b,9(ix)
;	genPointerGet
	ld	a,(bc)
	ld	e,a
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	ld	a,c
	add	a,#0x01
	ld	8(ix),a
	ld	a,b
	adc	a,#0x00
	ld	9(ix),a
;	genAssign
	ld	b,e
;	genIfx
	xor	a,a
	or	a,e
	jp	Z,00229$
;printf_large.c:444: if ( c=='%' )
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	a,b
	sub	a,#0x25
	jr	Z,00312$
	jp	00225$
00312$:
;printf_large.c:446: left_justify    = 0;
;	genAssign
;	AOP_STK for __print_format_left_justify_1_1
	ld	-1(ix),#0x00
;printf_large.c:447: zero_padding    = 0;
;	genAssign
;	AOP_STK for __print_format_zero_padding_1_1
	ld	-2(ix),#0x00
;printf_large.c:448: prefix_sign     = 0;
;	genAssign
;	AOP_STK for __print_format_prefix_sign_1_1
	ld	-3(ix),#0x00
;printf_large.c:449: prefix_space    = 0;
;	genAssign
;	AOP_STK for __print_format_prefix_space_1_1
	ld	-4(ix),#0x00
;printf_large.c:450: signed_argument = 0;
;	genAssign
;	AOP_STK for __print_format_signed_argument_1_1
	ld	-5(ix),#0x00
;printf_large.c:451: char_argument   = 0;
;	genAssign
;	AOP_STK for __print_format_char_argument_1_1
	ld	-6(ix),#0x00
;printf_large.c:452: long_argument   = 0;
;	genAssign
;	AOP_STK for __print_format_long_argument_1_1
	ld	-7(ix),#0x00
;printf_large.c:453: float_argument  = 0;
;	genAssign
;	AOP_STK for __print_format_float_argument_1_1
	ld	-8(ix),#0x00
;printf_large.c:454: radix           = 0;
;	genAssign
;	AOP_STK for __print_format_radix_1_1
	ld	-16(ix),#0x00
;printf_large.c:455: width           = 0;
;	genAssign
;	AOP_STK for __print_format_width_1_1
	ld	-17(ix),#0x00
;printf_large.c:456: decimals        = -1;
;	genAssign
	ld	c,#0xFF
;printf_large.c:458: get_conversion_spec:
;	genAssign
;	AOP_STK for 
;	AOP_STK for __print_format__1_0
	ld	a,8(ix)
	ld	-30(ix),a
	ld	a,9(ix)
	ld	-29(ix),a
;	genLabel
00101$:
;printf_large.c:460: c = *format++;
;	genPointerGet
;	AOP_STK for __print_format__1_0
	ld	l,-30(ix)
	ld	h,-29(ix)
	ld	e,(hl)
;	genPlus
;	AOP_STK for __print_format__1_0
;	genPlusIncr
	inc	-30(ix)
	jr	NZ,00313$
	inc	-29(ix)
00313$:
;	genAssign
;	AOP_STK for __print_format__1_0
;	AOP_STK for 
	ld	a,-30(ix)
	ld	8(ix),a
	ld	a,-29(ix)
	ld	9(ix),a
;	genAssign
	ld	b,e
;printf_large.c:462: if (c=='%') {
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	a,b
	sub	a,#0x25
	jr	Z,00315$
	jr	00103$
00315$:
;printf_large.c:463: OUTPUT_CHAR(c, p);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	ld	l,6(ix)
	ld	h,7(ix)
	push	hl
;	genIpush
	push	bc
	inc	sp
;	genPcall
;	AOP_STK for 
	ld	hl,#00316$
	push	hl
	ld	l,4(ix)
	ld	h,5(ix)
	jp	(hl)
00316$:
	pop	af
	inc	sp
;	genPlus
;	AOP_STK for __print_format__1_0
;	genPlusIncr
	inc	-33(ix)
	jr	NZ,00317$
	inc	-32(ix)
00317$:
;printf_large.c:464: continue;
;	genGoto
	jp	00227$
;	genLabel
00103$:
;printf_large.c:467: if (isdigit(c)) {
;	genAssign
	ld	e,b
;	genCmpLt
	ld	a,e
	sub	a,#0x30
	jr	C,00110$
;	genAssign
	ld	e,b
;	genCmpGt
	ld	a,#0x39
	sub	a,e
	jr	C,00110$
;printf_large.c:468: if (decimals==-1) {
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	a,c
	inc	a
	jr	Z,00319$
	jr	00107$
00319$:
;printf_large.c:469: width = 10*width + (c - '0');
;	genMult
;	AOP_STK for __print_format_width_1_1
	ld	a,-17(ix)
	ld	e,a
	add	a,a
	add	a,a
	add	a,e
	add	a,a
	ld	e,a
;	genMinus
	ld	a,b
	add	a,#0xD0
;	genPlus
	ld	d, a
	add	a,e
	ld	e,a
;	genAssign
;	AOP_STK for __print_format_width_1_1
	ld	-17(ix),e
;printf_large.c:470: if (width == 0) {
;	genIfx
;	AOP_STK for __print_format_width_1_1
	xor	a,a
	or	a,-17(ix)
	jp	NZ,00101$
;printf_large.c:472: zero_padding = 1;
;	genAssign
;	AOP_STK for __print_format_zero_padding_1_1
	ld	-2(ix),#0x01
;	genGoto
	jp	00101$
;	genLabel
00107$:
;printf_large.c:475: decimals = 10*decimals + (c-'0');
;	genMult
	ld	a,c
	ld	e,a
	add	a,a
	add	a,a
	add	a,e
	add	a,a
	ld	e,a
;	genMinus
	ld	a,b
	add	a,#0xD0
;	genPlus
	ld	d, a
	add	a,e
	ld	e,a
;	genAssign
	ld	c,e
;printf_large.c:477: goto get_conversion_spec;
;	genGoto
	jp	00101$
;	genLabel
00110$:
;printf_large.c:480: if (c=='.') {
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	a,b
	sub	a,#0x2E
	jr	Z,00321$
	jr	00115$
00321$:
;printf_large.c:481: if (decimals==-1) decimals=0;
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	a,c
	inc	a
	jr	Z,00323$
	jp	00101$
00323$:
;	genAssign
	ld	c,#0x00
;printf_large.c:484: goto get_conversion_spec;
;	genGoto
	jp	00101$
;	genLabel
00115$:
;printf_large.c:487: if (islower(c))
;	genAssign
	ld	e,b
;	genCmpLt
	ld	a,e
	sub	a,#0x61
	jr	C,00117$
;	genAssign
	ld	e,b
;	genCmpGt
	ld	a,#0x7A
	sub	a,e
	jr	C,00117$
;printf_large.c:489: c = toupper(c);
;	genAnd
	ld	a,b
	and	a,#0xDF
	ld	b,a
;printf_large.c:490: lower_case = 1;
;	genAssign
;	AOP_STK for __print_format_lower_case_1_1
	ld	-9(ix),#0x01
;	genGoto
	jr	00118$
;	genLabel
00117$:
;printf_large.c:493: lower_case = 0;
;	genAssign
;	AOP_STK for __print_format_lower_case_1_1
	ld	-9(ix),#0x00
;	genLabel
00118$:
;printf_large.c:495: switch( c )
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	a,b
	cp	a,#0x20
	jr	Z,00122$
	sub	a,#0x2B
	jr	Z,00121$
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	a,b
	sub	a,#0x2D
	jr	Z,00120$
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	a,b
	sub	a,#0x42
	jr	Z,00123$
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	a,b
	sub	a,#0x43
	jr	Z,00125$
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	a,b
	cp	a,#0x44
	jp	Z,00150$
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	cp	a,##0x46
	jp	Z,00154$
	cp	a,#0x49
	jp	Z,00150$
	sub	a,#0x4C
	jr	Z,00124$
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	a,b
	cp	a,#0x4F
	jp	Z,00151$
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	cp	a,##0x50
	jp	Z,00148$
	cp	a,#0x53
	jp	Z,00129$
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	cp	a,##0x55
	jp	Z,00152$
	sub	a,#0x58
	jp	Z,00153$
;	genGoto
	jp	00155$
;printf_large.c:497: case '-':
;	genLabel
00120$:
;printf_large.c:498: left_justify = 1;
;	genAssign
;	AOP_STK for __print_format_left_justify_1_1
	ld	-1(ix),#0x01
;printf_large.c:499: goto get_conversion_spec;
;	genGoto
	jp	00101$
;printf_large.c:500: case '+':
;	genLabel
00121$:
;printf_large.c:501: prefix_sign = 1;
;	genAssign
;	AOP_STK for __print_format_prefix_sign_1_1
	ld	-3(ix),#0x01
;printf_large.c:502: goto get_conversion_spec;
;	genGoto
	jp	00101$
;printf_large.c:503: case ' ':
;	genLabel
00122$:
;printf_large.c:504: prefix_space = 1;
;	genAssign
;	AOP_STK for __print_format_prefix_space_1_1
	ld	-4(ix),#0x01
;printf_large.c:505: goto get_conversion_spec;
;	genGoto
	jp	00101$
;printf_large.c:506: case 'B':
;	genLabel
00123$:
;printf_large.c:507: char_argument = 1;
;	genAssign
;	AOP_STK for __print_format_char_argument_1_1
	ld	-6(ix),#0x01
;printf_large.c:508: goto get_conversion_spec;
;	genGoto
	jp	00101$
;printf_large.c:509: case 'L':
;	genLabel
00124$:
;printf_large.c:510: long_argument = 1;
;	genAssign
;	AOP_STK for __print_format_long_argument_1_1
	ld	-7(ix),#0x01
;printf_large.c:511: goto get_conversion_spec;
;	genGoto
	jp	00101$
;printf_large.c:513: case 'C':
;	genLabel
00125$:
;printf_large.c:514: if( char_argument )
;	genIfx
;	AOP_STK for __print_format_char_argument_1_1
	xor	a,a
	or	a,-6(ix)
	jr	Z,00127$
;printf_large.c:515: c = va_arg(ap,char);
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	ld	a,10(ix)
	add	a,#0x01
	ld	d,a
	ld	a,11(ix)
	adc	a,#0x00
	ld	e,a
;	genAssign
;	AOP_STK for 
	ld	10(ix),d
	ld	11(ix),e
;	genMinus
	ld	l,d
	ld	h,e
	dec	hl
;	genPointerGet
	ld	d,l
	ld	e,h
	ld	d,(hl)
;	genAssign
	ld	b,d
;	genGoto
	jr	00128$
;	genLabel
00127$:
;printf_large.c:517: c = va_arg(ap,int);
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	ld	e,10(ix)
	ld	d,11(ix)
	inc	de
	inc	de
;	genAssign
;	AOP_STK for 
	ld	10(ix),e
	ld	11(ix),d
;	genMinus
	dec	de
	dec	de
;	genPointerGet
	ld	l,e
	ld	h,d
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genCast
	ld	b,e
;	genLabel
00128$:
;printf_large.c:518: OUTPUT_CHAR( c, p );
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	ld	l,6(ix)
	ld	h,7(ix)
	push	hl
;	genIpush
	push	bc
	inc	sp
;	genPcall
;	AOP_STK for 
	ld	hl,#00338$
	push	hl
	ld	l,4(ix)
	ld	h,5(ix)
	jp	(hl)
00338$:
	pop	af
	inc	sp
;	genPlus
;	AOP_STK for __print_format__1_0
;	genPlusIncr
	inc	-33(ix)
	jr	NZ,00339$
	inc	-32(ix)
00339$:
;printf_large.c:519: break;
;	genGoto
	jp	00156$
;printf_large.c:521: case 'S':
;	genLabel
00129$:
;printf_large.c:522: PTR = va_arg(ap,ptr_t);
;	genAddrOf
;	AOP_STK for __print_format__1_0
	ld	hl,#0x0017
	add	hl,sp
	ld	-30(ix),l
	ld	-29(ix),h
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	ld	e,10(ix)
	ld	d,11(ix)
	inc	de
	inc	de
;	genAssign
;	AOP_STK for 
	ld	10(ix),e
	ld	11(ix),d
;	genMinus
	dec	de
	dec	de
;	genPointerGet
	ld	l,e
	ld	h,d
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genAssign (pointer)
;	AOP_STK for __print_format__1_0
;	isBitvar = 0
	ld	l,-30(ix)
	ld	h,-29(ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
;printf_large.c:532: length = strlen(PTR);
;	genPointerGet
;	AOP_STK for __print_format__1_0
	ld	l,-30(ix)
	ld	h,-29(ix)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
	push	de
;	genCall
	call	_strlen
	ld	d,h
	ld	e,l
	pop	af
	pop	bc
;	genCast
;	AOP_STK for __print_format__1_0
	ld	-31(ix),e
;printf_large.c:534: if ( decimals == -1 )
;	genCmpEq
; genCmpEq: left 1, right 1, result 0
	ld	a,c
	inc	a
	jr	Z,00341$
	jr	00131$
00341$:
;printf_large.c:536: decimals = length;
;	genAssign
;	AOP_STK for __print_format__1_0
	ld	c,-31(ix)
;	genLabel
00131$:
;printf_large.c:538: if ( ( !left_justify ) && (length < width) )
;	genIfx
;	AOP_STK for __print_format_left_justify_1_1
	xor	a,a
	or	a,-1(ix)
	jp	NZ,00269$
;	genCmpLt
;	AOP_STK for __print_format__1_0
;	AOP_STK for __print_format_width_1_1
	ld	a,-31(ix)
	sub	a,-17(ix)
	jp	NC,00269$
;printf_large.c:540: width -= length;
;	genMinus
;	AOP_STK for __print_format_width_1_1
;	AOP_STK for __print_format__1_0
	ld	a,-17(ix)
	sub	a,-31(ix)
	ld	-17(ix),a
;printf_large.c:541: while( width-- != 0 )
;	genAssign
;	AOP_STK for __print_format__1_0
;	AOP_STK for __print_format__1_0
	ld	a,-33(ix)
	ld	-30(ix),a
	ld	a,-32(ix)
	ld	-29(ix),a
;	genAssign
;	AOP_STK for __print_format_width_1_1
	ld	d,-17(ix)
;	genLabel
00132$:
;	genAssign
	ld	e,d
;	genMinus
	dec	d
;	genAssign
;	AOP_STK for __print_format_width_1_1
	ld	-17(ix),d
;	genIfx
	xor	a,a
	or	a,e
	jr	Z,00304$
;printf_large.c:543: OUTPUT_CHAR( ' ', p );
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 1 bcInUse: 1 deSending: 0
	push	bc
	push	de
;	AOP_STK for 
	ld	l,6(ix)
	ld	h,7(ix)
	push	hl
;	genIpush
	ld	a,#0x20
	push	af
	inc	sp
;	genPcall
;	AOP_STK for 
	ld	hl,#00342$
	push	hl
	ld	l,4(ix)
	ld	h,5(ix)
	jp	(hl)
00342$:
	pop	af
	inc	sp
	pop	de
	pop	bc
;	genPlus
;	AOP_STK for __print_format__1_0
;	genPlusIncr
	inc	-30(ix)
	jr	NZ,00343$
	inc	-29(ix)
00343$:
;	genAssign
;	AOP_STK for __print_format__1_0
;	AOP_STK for __print_format__1_0
	ld	a,-30(ix)
	ld	-33(ix),a
	ld	a,-29(ix)
	ld	-32(ix),a
;	genGoto
	jr	00132$
;printf_large.c:547: while ( (c = *PTR)  && (decimals-- > 0))
;	genLabel
00304$:
;	genAssign
;	AOP_STK for __print_format__1_0
;	AOP_STK for __print_format__1_0
	ld	a,-30(ix)
	ld	-33(ix),a
	ld	a,-29(ix)
	ld	-32(ix),a
;	genAssign
;	AOP_STK for __print_format_width_1_1
	ld	-17(ix),d
;	genLabel
00269$:
;	genAssign
;	(registers are the same)
;	genAssign
;	AOP_STK for __print_format__1_0
;	AOP_STK for __print_format__1_0
	ld	a,-33(ix)
	ld	-30(ix),a
	ld	a,-32(ix)
	ld	-29(ix),a
;	genLabel
00139$:
;	genAddrOf
	ld	hl,#0x0017
	add	hl,sp
;	genPointerGet
	ld	d,l
	ld	e,h
	ld	d,(hl)
	inc	hl
	ld	e,(hl)
;	genPointerGet
	ld	l,d
	ld	h,e
	ld	d,(hl)
;	genAssign
	ld	b,d
;	genIfx
	xor	a,a
	or	a,d
	jp	Z,00305$
;	genAssign
	ld	e,c
;	genMinus
	dec	c
;	genCmpGt
	ld	a,#0x00
	sub	a,e
	jp	P,00305$
;printf_large.c:549: OUTPUT_CHAR( c, p );
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
;	AOP_STK for 
	ld	l,6(ix)
	ld	h,7(ix)
	push	hl
;	genIpush
	push	bc
	inc	sp
;	genPcall
;	AOP_STK for 
	ld	hl,#00344$
	push	hl
	ld	l,4(ix)
	ld	h,5(ix)
	jp	(hl)
00344$:
	pop	af
	inc	sp
	pop	bc
;	genPlus
;	AOP_STK for __print_format__1_0
;	genPlusIncr
	inc	-30(ix)
	jr	NZ,00345$
	inc	-29(ix)
00345$:
;	genAssign
;	AOP_STK for __print_format__1_0
;	AOP_STK for __print_format__1_0
	ld	a,-30(ix)
	ld	-33(ix),a
	ld	a,-29(ix)
	ld	-32(ix),a
;printf_large.c:550: PTR++;
;	genAddrOf
;	AOP_STK for __print_format__1_0
	ld	hl,#0x0017
	add	hl,sp
	ld	-33(ix),l
	ld	-32(ix),h
;	genPointerGet
;	AOP_STK for __print_format__1_0
	ld	l,-33(ix)
	ld	h,-32(ix)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genPlus
;	genPlusIncr
	inc	de
;	genAssign (pointer)
;	AOP_STK for __print_format__1_0
;	isBitvar = 0
	ld	l,-33(ix)
	ld	h,-32(ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
;	genGoto
	jp	00139$
;	genLabel
00305$:
;	genAssign
;	AOP_STK for __print_format__1_0
;	AOP_STK for __print_format__1_0
	ld	a,-30(ix)
	ld	-33(ix),a
	ld	a,-29(ix)
	ld	-32(ix),a
;printf_large.c:553: if ( left_justify && (length < width))
;	genIfx
;	AOP_STK for __print_format_left_justify_1_1
	xor	a,a
	or	a,-1(ix)
	jp	Z,00156$
;	genCmpLt
;	AOP_STK for __print_format__1_0
;	AOP_STK for __print_format_width_1_1
	ld	a,-31(ix)
	sub	a,-17(ix)
	jp	NC,00156$
;printf_large.c:555: width -= length;
;	genMinus
;	AOP_STK for __print_format_width_1_1
;	AOP_STK for __print_format__1_0
	ld	a,-17(ix)
	sub	a,-31(ix)
	ld	-17(ix),a
;printf_large.c:556: while( width-- != 0 )
;	genAssign
;	AOP_STK for __print_format__1_0
	ld	c,-30(ix)
	ld	b,-29(ix)
;	genAssign
;	AOP_STK for __print_format_width_1_1
	ld	e,-17(ix)
;	genLabel
00142$:
;	genAssign
	ld	d,e
;	genMinus
	dec	e
;	genAssign
;	AOP_STK for __print_format_width_1_1
	ld	-17(ix),e
;	genIfx
	xor	a,a
	or	a,d
	jp	Z,00306$
;printf_large.c:558: OUTPUT_CHAR( ' ', p );
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 1 bcInUse: 1 deSending: 0
	push	bc
	push	de
;	AOP_STK for 
	ld	l,6(ix)
	ld	h,7(ix)
	push	hl
;	genIpush
	ld	a,#0x20
	push	af
	inc	sp
;	genPcall
;	AOP_STK for 
	ld	hl,#00346$
	push	hl
	ld	l,4(ix)
	ld	h,5(ix)
	jp	(hl)
00346$:
	pop	af
	inc	sp
	pop	de
	pop	bc
;	genPlus
;	genPlusIncr
	inc	bc
;	genAssign
;	AOP_STK for __print_format__1_0
	ld	-33(ix),c
	ld	-32(ix),b
;	genGoto
	jr	00142$
;printf_large.c:563: case 'P':
;	genLabel
00148$:
;printf_large.c:564: PTR = va_arg(ap,ptr_t);
;	genAddrOf
	ld	hl,#0x0017
	add	hl,sp
	ld	e,l
	ld	d,h
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	ld	a,10(ix)
	add	a,#0x02
	ld	b,a
	ld	a,11(ix)
	adc	a,#0x00
	ld	c,a
;	genAssign
;	AOP_STK for 
	ld	10(ix),b
	ld	11(ix),c
;	genMinus
	ld	l,b
	ld	h,c
	dec	hl
	dec	hl
;	genPointerGet
	ld	b,l
	ld	c,h
	ld	b,(hl)
	inc	hl
	ld	c,(hl)
;	genAssign (pointer)
;	isBitvar = 0
	ld	l,e
	ld	h,d
	ld	(hl),b
	inc	hl
	ld	(hl),c
;printf_large.c:608: OUTPUT_CHAR('0', p);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	ld	l,6(ix)
	ld	h,7(ix)
	push	hl
;	genIpush
	ld	a,#0x30
	push	af
	inc	sp
;	genPcall
;	AOP_STK for 
	ld	hl,#00347$
	push	hl
	ld	l,4(ix)
	ld	h,5(ix)
	jp	(hl)
00347$:
	pop	af
	inc	sp
;	genPlus
;	AOP_STK for __print_format__1_0
;	genPlusIncr
	inc	-33(ix)
	jr	NZ,00348$
	inc	-32(ix)
00348$:
;printf_large.c:609: OUTPUT_CHAR('x', p);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	ld	l,6(ix)
	ld	h,7(ix)
	push	hl
;	genIpush
	ld	a,#0x78
	push	af
	inc	sp
;	genPcall
;	AOP_STK for 
	ld	hl,#00349$
	push	hl
	ld	l,4(ix)
	ld	h,5(ix)
	jp	(hl)
00349$:
	pop	af
	inc	sp
;	genPlus
;	AOP_STK for __print_format__1_0
;	genPlusIncr
	inc	-33(ix)
	jr	NZ,00350$
	inc	-32(ix)
00350$:
;printf_large.c:610: OUTPUT_2DIGITS( value.byte[1] );
;	genAddrOf
	ld	hl,#0x0017
	add	hl,sp
	ld	c,l
	ld	b,h
;	genPlus
;	genPlusIncr
	inc	bc
;	genPointerGet
	ld	a,(bc)
	ld	c,a
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	ld	l,6(ix)
	ld	h,7(ix)
	push	hl
;	genIpush
;	AOP_STK for 
	ld	l,4(ix)
	ld	h,5(ix)
	push	hl
;	genIpush
;	AOP_STK for __print_format_lower_case_1_1
	ld	a,-9(ix)
	push	af
	inc	sp
;	genIpush
	ld	a,c
	push	af
	inc	sp
;	genCall
	call	_output_2digits
	pop	af
	pop	af
	pop	af
;	genPlus
;	AOP_STK for __print_format__1_0
;	genPlusIncr
	ld	a,-33(ix)
	add	a,#0x02
	ld	-33(ix),a
	ld	a,-32(ix)
	adc	a,#0x00
	ld	-32(ix),a
;printf_large.c:611: OUTPUT_2DIGITS( value.byte[0] );
;	genAddrOf
	ld	hl,#0x0017
	add	hl,sp
	ld	c,l
	ld	b,h
;	genPointerGet
	ld	a,(bc)
	ld	c,a
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	ld	l,6(ix)
	ld	h,7(ix)
	push	hl
;	genIpush
;	AOP_STK for 
	ld	l,4(ix)
	ld	h,5(ix)
	push	hl
;	genIpush
;	AOP_STK for __print_format_lower_case_1_1
	ld	a,-9(ix)
	push	af
	inc	sp
;	genIpush
	ld	a,c
	push	af
	inc	sp
;	genCall
	call	_output_2digits
	pop	af
	pop	af
	pop	af
;	genPlus
;	AOP_STK for __print_format__1_0
;	genPlusIncr
	ld	a,-33(ix)
	add	a,#0x02
	ld	-33(ix),a
	ld	a,-32(ix)
	adc	a,#0x00
	ld	-32(ix),a
;printf_large.c:613: break;
;	genGoto
	jr	00156$
;printf_large.c:616: case 'I':
;	genLabel
00150$:
;printf_large.c:617: signed_argument = 1;
;	genAssign
;	AOP_STK for __print_format_signed_argument_1_1
	ld	-5(ix),#0x01
;printf_large.c:618: radix = 10;
;	genAssign
;	AOP_STK for __print_format_radix_1_1
	ld	-16(ix),#0x0A
;printf_large.c:619: break;
;	genGoto
	jr	00156$
;printf_large.c:621: case 'O':
;	genLabel
00151$:
;printf_large.c:622: radix = 8;
;	genAssign
;	AOP_STK for __print_format_radix_1_1
	ld	-16(ix),#0x08
;printf_large.c:623: break;
;	genGoto
	jr	00156$
;printf_large.c:625: case 'U':
;	genLabel
00152$:
;printf_large.c:626: radix = 10;
;	genAssign
;	AOP_STK for __print_format_radix_1_1
	ld	-16(ix),#0x0A
;printf_large.c:627: break;
;	genGoto
	jr	00156$
;printf_large.c:629: case 'X':
;	genLabel
00153$:
;printf_large.c:630: radix = 16;
;	genAssign
;	AOP_STK for __print_format_radix_1_1
	ld	-16(ix),#0x10
;printf_large.c:631: break;
;	genGoto
	jr	00156$
;printf_large.c:633: case 'F':
;	genLabel
00154$:
;printf_large.c:634: float_argument=1;
;	genAssign
;	AOP_STK for __print_format_float_argument_1_1
	ld	-8(ix),#0x01
;printf_large.c:635: break;
;	genGoto
	jr	00156$
;printf_large.c:637: default:
;	genLabel
00155$:
;printf_large.c:639: OUTPUT_CHAR( c, p );
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	ld	l,6(ix)
	ld	h,7(ix)
	push	hl
;	genIpush
	push	bc
	inc	sp
;	genPcall
;	AOP_STK for 
	ld	hl,#00351$
	push	hl
	ld	l,4(ix)
	ld	h,5(ix)
	jp	(hl)
00351$:
	pop	af
	inc	sp
;	genPlus
;	AOP_STK for __print_format__1_0
;	genPlusIncr
	inc	-33(ix)
	jr	NZ,00352$
	inc	-32(ix)
00352$:
;printf_large.c:816: return charsOutputted;
;	genGoto
	jr	00156$
;printf_large.c:641: }
;	genLabel
00306$:
;	genAssign
;	AOP_STK for __print_format__1_0
	ld	-33(ix),c
	ld	-32(ix),b
;	genAssign
;	AOP_STK for __print_format_width_1_1
	ld	-17(ix),e
;	genLabel
00156$:
;printf_large.c:643: if (float_argument) {
;	genIfx
;	AOP_STK for __print_format_float_argument_1_1
	xor	a,a
	or	a,-8(ix)
	jp	Z,00222$
;printf_large.c:644: value.f=va_arg(ap,float);
;	genAddrOf
;	AOP_STK for __print_format__1_0
	ld	hl,#0x0017
	add	hl,sp
	ld	-30(ix),l
	ld	-29(ix),h
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	ld	a,10(ix)
	add	a,#0x04
	ld	e,a
	ld	a,11(ix)
	adc	a,#0x00
	ld	d,a
;	genAssign
;	AOP_STK for 
	ld	10(ix),e
	ld	11(ix),d
;	genMinus
	ld	a,e
	add	a,#0xFC
	ld	e,a
	ld	a,d
	adc	a,#0xFF
	ld	d,a
;	genPointerGet
	ld	l,e
	ld	h,d
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genAssign (pointer)
;	AOP_STK for __print_format__1_0
;	isBitvar = 0
	ld	l,-30(ix)
	ld	h,-29(ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
;printf_large.c:646: PTR="<NO FLOAT>";
;	genAddrOf
	ld	hl,#0x0017
	add	hl,sp
;	genAssign (pointer)
;	isBitvar = 0
	ld	c,l
	ld	b,h
	ld	(hl),#<__str_0
	inc	hl
	ld	(hl),#>__str_0
;printf_large.c:647: while (c=*PTR++)
;	genAssign
;	AOP_STK for __print_format__1_0
;	AOP_STK for __print_format__1_0
	ld	a,-33(ix)
	ld	-30(ix),a
	ld	a,-32(ix)
	ld	-29(ix),a
;	genLabel
00157$:
;	genAddrOf
	ld	hl,#0x0017
	add	hl,sp
;	genPointerGet
;	AOP_STK for __print_format__1_0
	ld	e,l
	ld	d,h
	ld	a,(hl)
	ld	-35(ix),a
	inc	hl
	ld	a,(hl)
	ld	-34(ix),a
;	genPlus
;	AOP_STK for __print_format__1_0
;	genPlusIncr
	ld	c,-35(ix)
	ld	b,-34(ix)
	inc	bc
;	genAssign (pointer)
;	isBitvar = 0
	ld	l,e
	ld	h,d
	ld	(hl),c
	inc	hl
	ld	(hl),b
;	genPointerGet
;	AOP_STK for __print_format__1_0
	ld	l,-35(ix)
	ld	h,-34(ix)
	ld	c,(hl)
;	genAssign
	ld	b,c
;	genIfx
	xor	a,a
	or	a,c
	jp	Z,00227$
;printf_large.c:649: OUTPUT_CHAR (c, p);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	ld	l,6(ix)
	ld	h,7(ix)
	push	hl
;	genIpush
	push	bc
	inc	sp
;	genPcall
;	AOP_STK for 
	ld	hl,#00353$
	push	hl
	ld	l,4(ix)
	ld	h,5(ix)
	jp	(hl)
00353$:
	pop	af
	inc	sp
;	genPlus
;	AOP_STK for __print_format__1_0
;	genPlusIncr
	inc	-30(ix)
	jr	NZ,00354$
	inc	-29(ix)
00354$:
;	genAssign
;	AOP_STK for __print_format__1_0
;	AOP_STK for __print_format__1_0
	ld	a,-30(ix)
	ld	-33(ix),a
	ld	a,-29(ix)
	ld	-32(ix),a
;	genGoto
	jp	00157$
;	genLabel
00222$:
;printf_large.c:666: } else if (radix != 0)
;	genIfx
;	AOP_STK for __print_format_radix_1_1
	xor	a,a
	or	a,-16(ix)
	jp	Z,00227$
;printf_large.c:671: unsigned char MEM_SPACE_BUF_PP *pstore = &store[5];
;	genAssign
;	AOP_STK for __print_format__1_0
;	AOP_STK for __print_format_pstore_4_31
	ld	a,-28(ix)
	ld	-26(ix),a
	ld	a,-27(ix)
	ld	-25(ix),a
;printf_large.c:674: if (char_argument)
;	genIfx
;	AOP_STK for __print_format_char_argument_1_1
	xor	a,a
	or	a,-6(ix)
	jp	Z,00168$
;printf_large.c:676: value.l = va_arg(ap,char);
;	genAddrOf
;	AOP_STK for __print_format__1_0
	ld	hl,#0x0017
	add	hl,sp
	ld	-35(ix),l
	ld	-34(ix),h
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	ld	c,10(ix)
	ld	b,11(ix)
	inc	bc
;	genAssign
;	AOP_STK for 
	ld	10(ix),c
	ld	11(ix),b
;	genMinus
	dec	bc
;	genPointerGet
	ld	a,(bc)
;	genCast
	ld	c,a
	rla	
	sbc	a,a
	ld	b,a
	ld	e,a
	ld	d,a
;	genAssign (pointer)
;	AOP_STK for __print_format__1_0
;	isBitvar = 0
	ld	l,-35(ix)
	ld	h,-34(ix)
	ld	(hl),c
	inc	hl
	ld	(hl),b
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
;printf_large.c:677: if (!signed_argument)
;	genIfx
;	AOP_STK for __print_format_signed_argument_1_1
	xor	a,a
	or	a,-5(ix)
	jp	NZ,00169$
;printf_large.c:679: value.l &= 0xFF;
;	genPointerGet
;	AOP_STK for __print_format__1_0
	ld	l,-35(ix)
	ld	h,-34(ix)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genAnd
	ld	b,#0x00
	ld	de,#0x0000
;	genAssign (pointer)
;	AOP_STK for __print_format__1_0
;	isBitvar = 0
	ld	l,-35(ix)
	ld	h,-34(ix)
	ld	(hl),c
	inc	hl
	ld	(hl),b
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
;	genGoto
	jp	00169$
;	genLabel
00168$:
;printf_large.c:682: else if (long_argument)
;	genIfx
;	AOP_STK for __print_format_long_argument_1_1
	xor	a,a
	or	a,-7(ix)
	jr	Z,00165$
;printf_large.c:684: value.l = va_arg(ap,long);
;	genAddrOf
;	AOP_STK for __print_format__1_0
	ld	hl,#0x0017
	add	hl,sp
	ld	-35(ix),l
	ld	-34(ix),h
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	ld	a,10(ix)
	add	a,#0x04
	ld	e,a
	ld	a,11(ix)
	adc	a,#0x00
	ld	d,a
;	genAssign
;	AOP_STK for 
	ld	10(ix),e
	ld	11(ix),d
;	genMinus
	ld	a,e
	add	a,#0xFC
	ld	e,a
	ld	a,d
	adc	a,#0xFF
	ld	d,a
;	genPointerGet
	ld	l,e
	ld	h,d
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genAssign (pointer)
;	AOP_STK for __print_format__1_0
;	isBitvar = 0
	ld	l,-35(ix)
	ld	h,-34(ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
;	genGoto
	jp	00169$
;	genLabel
00165$:
;printf_large.c:688: value.l = va_arg(ap,int);
;	genAddrOf
;	AOP_STK for __print_format__1_0
	ld	hl,#0x0017
	add	hl,sp
	ld	-35(ix),l
	ld	-34(ix),h
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	ld	e,10(ix)
	ld	d,11(ix)
	inc	de
	inc	de
;	genAssign
;	AOP_STK for 
	ld	10(ix),e
	ld	11(ix),d
;	genMinus
	dec	de
	dec	de
;	genPointerGet
	ld	l,e
	ld	h,d
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genCast
	ld	a,d
	rla	
	sbc	a,a
	ld	c,a
	ld	b,a
;	genAssign (pointer)
;	AOP_STK for __print_format__1_0
;	isBitvar = 0
	ld	l,-35(ix)
	ld	h,-34(ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
;printf_large.c:689: if (!signed_argument)
;	genIfx
;	AOP_STK for __print_format_signed_argument_1_1
	xor	a,a
	or	a,-5(ix)
	jr	NZ,00169$
;printf_large.c:691: value.l &= 0xFFFF;
;	genPointerGet
;	AOP_STK for __print_format__1_0
	ld	l,-35(ix)
	ld	h,-34(ix)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genAnd
	ld	de,#0x0000
;	genAssign (pointer)
;	AOP_STK for __print_format__1_0
;	isBitvar = 0
	ld	l,-35(ix)
	ld	h,-34(ix)
	ld	(hl),c
	inc	hl
	ld	(hl),b
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
;	genLabel
00169$:
;printf_large.c:695: if ( signed_argument )
;	genIfx
;	AOP_STK for __print_format_signed_argument_1_1
	xor	a,a
	or	a,-5(ix)
	jp	Z,00174$
;printf_large.c:697: if (value.l < 0)
;	genAddrOf
;	AOP_STK for __print_format__1_0
	ld	hl,#0x0017
	add	hl,sp
	ld	-35(ix),l
	ld	-34(ix),h
;	genPointerGet
;	AOP_STK for __print_format__1_0
	ld	l,-35(ix)
	ld	h,-34(ix)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genCmpLt
	ld	a,b
	bit	7,a
	jr	Z,00171$
;printf_large.c:698: value.l = -value.l;
;	genPointerGet
;	AOP_STK for __print_format__1_0
	ld	l,-35(ix)
	ld	h,-34(ix)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genUminus
	xor	a,a
	sbc	a,c
	ld	c,a
	ld	a,#0x00
	sbc	a,b
	ld	b,a
	ld	a,#0x00
	sbc	a,e
	ld	e,a
	ld	a,#0x00
	sbc	a,d
	ld	d,a
;	genAssign (pointer)
;	AOP_STK for __print_format__1_0
;	isBitvar = 0
	ld	l,-35(ix)
	ld	h,-34(ix)
	ld	(hl),c
	inc	hl
	ld	(hl),b
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
;	genGoto
	jr	00174$
;	genLabel
00171$:
;printf_large.c:700: signed_argument = 0;
;	genAssign
;	AOP_STK for __print_format_signed_argument_1_1
	ld	-5(ix),#0x00
;	genLabel
00174$:
;printf_large.c:704: lsd = 1;
;	genAssign
;	AOP_STK for __print_format_lsd_1_1
	ld	-15(ix),#0x01
;printf_large.c:706: do {
;	genAssign
;	AOP_STK for __print_format_pstore_4_31
;	AOP_STK for __print_format__1_0
	ld	a,-26(ix)
	ld	-30(ix),a
	ld	a,-25(ix)
	ld	-29(ix),a
;	genAssign
;	AOP_STK for __print_format_length_1_1
	ld	-18(ix),#0x00
;	genLabel
00178$:
;printf_large.c:707: value.byte[4] = 0;
;	genAddrOf
	ld	hl,#0x0017
	add	hl,sp
	ld	b,l
	ld	c,h
;	genPlus
;	genPlusIncr
	ld	a,b
	add	a,#0x04
	ld	b,a
	ld	a,c
	adc	a,#0x00
	ld	c,a
;	genAssign (pointer)
;	isBitvar = 0
	ld	l,b
	ld	h,c
	ld	(hl),#0x00
;printf_large.c:709: calculate_digit(&value, radix);
;	genAddrOf
	ld	hl,#0x0017
	add	hl,sp
	ld	c,l
	ld	b,h
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for __print_format_radix_1_1
	ld	a,-16(ix)
	push	af
	inc	sp
;	genIpush
	push	bc
;	genCall
	call	_calculate_digit
	pop	af
	inc	sp
;printf_large.c:713: if (!lsd)
;	genIfx
;	AOP_STK for __print_format_lsd_1_1
	xor	a,a
	or	a,-15(ix)
	jp	NZ,00176$
;printf_large.c:715: *pstore = (value.byte[4] << 4) | (value.byte[4] >> 4) | *pstore;
;	genAddrOf
	ld	hl,#0x0017
	add	hl,sp
	ld	c,l
	ld	b,h
;	genPlus
;	genPlusIncr
	ld	a,c
	add	a,#0x04
	ld	e,a
	ld	a,b
	adc	a,#0x00
	ld	b,a
;	genPointerGet
	ld	l,e
	ld	h,b
	ld	c,(hl)
;	genLeftShift
	ld	a,c
	rlca
	rlca
	rlca
	rlca
	and	a,#0xF0
	ld	c,a
;	genPointerGet
	ld	l,e
	ld	h,b
	ld	b,(hl)
;	genRightShift
	srl	b
	srl	b
	srl	b
	srl	b
;	genOr
	ld	a,c
	or	a,b
	ld	c,a
;	genPointerGet
;	AOP_STK for __print_format__1_0
	ld	l,-30(ix)
	ld	h,-29(ix)
	ld	b,(hl)
;	genOr
	ld	a,c
	or	a,b
;	genAssign (pointer)
;	AOP_STK for __print_format__1_0
;	isBitvar = 0
	ld	l,-30(ix)
	ld	h,-29(ix)
	ld	(hl),a
;printf_large.c:716: pstore--;
;	genMinus
;	AOP_STK for __print_format__1_0
	ld	l,-30(ix)
	ld	h,-29(ix)
	dec	hl
	ld	-30(ix),l
	ld	-29(ix),h
;	genAssign
;	AOP_STK for __print_format__1_0
;	AOP_STK for __print_format_pstore_4_31
	ld	a,-30(ix)
	ld	-26(ix),a
	ld	a,-29(ix)
	ld	-25(ix),a
;	genGoto
	jr	00177$
;	genLabel
00176$:
;printf_large.c:720: *pstore = value.byte[4];
;	genAddrOf
	ld	hl,#0x0017
	add	hl,sp
	ld	c,l
	ld	b,h
;	genPlus
;	genPlusIncr
	inc	bc
	inc	bc
	inc	bc
	inc	bc
;	genPointerGet
	ld	a,(bc)
;	genAssign (pointer)
;	AOP_STK for __print_format__1_0
;	isBitvar = 0
	ld	l,-30(ix)
	ld	h,-29(ix)
	ld	(hl),a
;	genLabel
00177$:
;printf_large.c:722: length++;
;	genPlus
;	AOP_STK for __print_format_length_1_1
;	genPlusIncr
	inc	-18(ix)
;	genAssign
;	AOP_STK for __print_format_length_1_1
;	AOP_STK for __print_format__1_0
	ld	a,-18(ix)
	ld	-31(ix),a
;printf_large.c:723: lsd = !lsd;
;	genNot
;	AOP_STK for __print_format_lsd_1_1
	xor	a,a
	or	a,-15(ix)
	sub	a,#0x01
	ld	a,#0x00
	rla
	ld	-15(ix),a
;printf_large.c:724: } while( value.ul );
;	genAddrOf
	ld	hl,#0x0017
	add	hl,sp
;	genPointerGet
	ld	c,l
	ld	b,h
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genIfx
	ld	a,c
	or	a,b
	or	a,e
	or	a,d
	jp	NZ,00178$
;printf_large.c:726: if (width == 0)
;	genAssign
;	AOP_STK for __print_format__1_0
;	AOP_STK for __print_format_pstore_4_31
	ld	a,-30(ix)
	ld	-26(ix),a
	ld	a,-29(ix)
	ld	-25(ix),a
;	genAssign
;	AOP_STK for __print_format_length_1_1
;	AOP_STK for __print_format__1_0
	ld	a,-18(ix)
	ld	-31(ix),a
;	genIfx
;	AOP_STK for __print_format_width_1_1
	xor	a,a
	or	a,-17(ix)
	jr	NZ,00182$
;printf_large.c:731: width=1;
;	genAssign
;	AOP_STK for __print_format_width_1_1
	ld	-17(ix),#0x01
;	genLabel
00182$:
;printf_large.c:735: if (!zero_padding && !left_justify)
;	genIfx
;	AOP_STK for __print_format_zero_padding_1_1
	xor	a,a
;	genIfx
;	AOP_STK for __print_format_left_justify_1_1
	or	a,-2(ix)
	jr	NZ,00187$
	or	a,-1(ix)
	jr	NZ,00187$
;printf_large.c:737: while ( width > (unsigned char) (length+1) )
;	genPlus
;	AOP_STK for __print_format__1_0
;	genPlusIncr
	ld	c,-31(ix)
	inc	c
;	genAssign
;	AOP_STK for __print_format__1_0
	ld	e,-33(ix)
	ld	d,-32(ix)
;	genAssign
;	AOP_STK for __print_format_width_1_1
	ld	b,-17(ix)
;	genLabel
00183$:
;	genCmpGt
	ld	a,c
	sub	a,b
	jr	NC,00308$
;printf_large.c:739: OUTPUT_CHAR( ' ', p );
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 1 bcInUse: 1 deSending: 0
	push	bc
	push	de
;	AOP_STK for 
	ld	l,6(ix)
	ld	h,7(ix)
	push	hl
;	genIpush
	ld	a,#0x20
	push	af
	inc	sp
;	genPcall
;	AOP_STK for 
	ld	hl,#00355$
	push	hl
	ld	l,4(ix)
	ld	h,5(ix)
	jp	(hl)
00355$:
	pop	af
	inc	sp
	pop	de
	pop	bc
;	genPlus
;	genPlusIncr
	inc	de
;	genAssign
;	AOP_STK for __print_format__1_0
	ld	-33(ix),e
	ld	-32(ix),d
;printf_large.c:740: width--;
;	genMinus
	dec	b
;	genGoto
	jr	00183$
;	genLabel
00308$:
;	genAssign
;	AOP_STK for __print_format__1_0
	ld	-33(ix),e
	ld	-32(ix),d
;	genAssign
;	AOP_STK for __print_format_width_1_1
	ld	-17(ix),b
;	genLabel
00187$:
;printf_large.c:744: if (signed_argument) // this now means the original value was negative
;	genIfx
;	AOP_STK for __print_format_signed_argument_1_1
	xor	a,a
	or	a,-5(ix)
	jr	Z,00197$
;printf_large.c:746: OUTPUT_CHAR( '-', p );
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	ld	l,6(ix)
	ld	h,7(ix)
	push	hl
;	genIpush
	ld	a,#0x2D
	push	af
	inc	sp
;	genPcall
;	AOP_STK for 
	ld	hl,#00356$
	push	hl
	ld	l,4(ix)
	ld	h,5(ix)
	jp	(hl)
00356$:
	pop	af
	inc	sp
;	genPlus
;	AOP_STK for __print_format__1_0
;	genPlusIncr
	inc	-33(ix)
	jr	NZ,00357$
	inc	-32(ix)
00357$:
;printf_large.c:748: width--;
;	genMinus
;	AOP_STK for __print_format_width_1_1
	dec	-17(ix)
;	genGoto
	jp	00198$
;	genLabel
00197$:
;printf_large.c:750: else if (length != 0)
;	genIfx
;	AOP_STK for __print_format__1_0
	xor	a,a
	or	a,-31(ix)
	jr	Z,00198$
;printf_large.c:753: if (prefix_sign)
;	genIfx
;	AOP_STK for __print_format_prefix_sign_1_1
	xor	a,a
	or	a,-3(ix)
	jr	Z,00192$
;printf_large.c:755: OUTPUT_CHAR( '+', p );
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	ld	l,6(ix)
	ld	h,7(ix)
	push	hl
;	genIpush
	ld	a,#0x2B
	push	af
	inc	sp
;	genPcall
;	AOP_STK for 
	ld	hl,#00358$
	push	hl
	ld	l,4(ix)
	ld	h,5(ix)
	jp	(hl)
00358$:
	pop	af
	inc	sp
;	genPlus
;	AOP_STK for __print_format__1_0
;	genPlusIncr
	inc	-33(ix)
	jr	NZ,00359$
	inc	-32(ix)
00359$:
;printf_large.c:757: width--;
;	genMinus
;	AOP_STK for __print_format_width_1_1
	dec	-17(ix)
;	genGoto
	jr	00198$
;	genLabel
00192$:
;printf_large.c:759: else if (prefix_space)
;	genIfx
;	AOP_STK for __print_format_prefix_space_1_1
	xor	a,a
	or	a,-4(ix)
	jr	Z,00198$
;printf_large.c:761: OUTPUT_CHAR( ' ', p );
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	ld	l,6(ix)
	ld	h,7(ix)
	push	hl
;	genIpush
	ld	a,#0x20
	push	af
	inc	sp
;	genPcall
;	AOP_STK for 
	ld	hl,#00360$
	push	hl
	ld	l,4(ix)
	ld	h,5(ix)
	jp	(hl)
00360$:
	pop	af
	inc	sp
;	genPlus
;	AOP_STK for __print_format__1_0
;	genPlusIncr
	inc	-33(ix)
	jr	NZ,00361$
	inc	-32(ix)
00361$:
;printf_large.c:763: width--;
;	genMinus
;	AOP_STK for __print_format_width_1_1
	dec	-17(ix)
;	genLabel
00198$:
;printf_large.c:768: if (!left_justify)
;	genIfx
;	AOP_STK for __print_format_left_justify_1_1
	xor	a,a
	or	a,-1(ix)
	jr	NZ,00206$
;printf_large.c:769: while ( width-- > length )
;	genAssign
;	AOP_STK for __print_format__1_0
	ld	c,-33(ix)
	ld	b,-32(ix)
;	genAssign
;	AOP_STK for __print_format_width_1_1
	ld	e,-17(ix)
;	genLabel
00199$:
;	genAssign
	ld	d,e
;	genMinus
	dec	e
;	genAssign
;	AOP_STK for __print_format_width_1_1
	ld	-17(ix),e
;	genCmpGt
;	AOP_STK for __print_format__1_0
	ld	a,-31(ix)
	sub	a,d
	jr	NC,00309$
;printf_large.c:771: OUTPUT_CHAR( zero_padding ? '0' : ' ', p );
;	genIfx
;	AOP_STK for __print_format_zero_padding_1_1
	xor	a,a
	or	a,-2(ix)
	jr	Z,00232$
;	genAssign
	ld	d,#0x30
;	genGoto
	jr	00233$
;	genLabel
00232$:
;	genAssign
	ld	d,#0x20
;	genLabel
00233$:
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 1 bcInUse: 1 deSending: 0
	push	bc
	push	de
;	AOP_STK for 
	ld	l,6(ix)
	ld	h,7(ix)
	push	hl
;	genIpush
	push	de
	inc	sp
;	genPcall
;	AOP_STK for 
	ld	hl,#00362$
	push	hl
	ld	l,4(ix)
	ld	h,5(ix)
	jp	(hl)
00362$:
	pop	af
	inc	sp
	pop	de
	pop	bc
;	genPlus
;	genPlusIncr
	inc	bc
;	genAssign
;	AOP_STK for __print_format__1_0
	ld	-33(ix),c
	ld	-32(ix),b
;	genGoto
	jr	00199$
;	genLabel
00206$:
;printf_large.c:776: if (width > length)
;	genCmpGt
;	AOP_STK for __print_format_width_1_1
;	AOP_STK for __print_format__1_0
	ld	a,-31(ix)
	sub	a,-17(ix)
	jr	NC,00203$
;printf_large.c:777: width -= length;
;	genMinus
;	AOP_STK for __print_format_width_1_1
;	AOP_STK for __print_format__1_0
	ld	a,-17(ix)
	sub	a,-31(ix)
	ld	-17(ix),a
;	genGoto
	jr	00301$
;	genLabel
00203$:
;printf_large.c:779: width = 0;
;	genAssign
;	AOP_STK for __print_format_width_1_1
	ld	-17(ix),#0x00
;printf_large.c:816: return charsOutputted;
;	genGoto
	jr	00301$
;printf_large.c:783: while( length-- )
;	genLabel
00309$:
;	genAssign
;	AOP_STK for __print_format__1_0
	ld	-33(ix),c
	ld	-32(ix),b
;	genAssign
;	AOP_STK for __print_format_width_1_1
	ld	-17(ix),e
;	genLabel
00301$:
;	genAssign
;	AOP_STK for __print_format_pstore_4_31
	ld	c,-26(ix)
	ld	b,-25(ix)
;	genAssign
;	AOP_STK for __print_format__1_0
;	AOP_STK for __print_format__1_0
	ld	a,-33(ix)
	ld	-30(ix),a
	ld	a,-32(ix)
	ld	-29(ix),a
;	genAssign
;	AOP_STK for __print_format__1_0
;	AOP_STK for __print_format__1_0
	ld	a,-31(ix)
	ld	-35(ix),a
;	genLabel
00211$:
;	genAssign
;	AOP_STK for __print_format__1_0
	ld	e,-35(ix)
;	genMinus
;	AOP_STK for __print_format__1_0
	dec	-35(ix)
;	genIfx
	xor	a,a
	or	a,e
	jp	Z,00310$
;printf_large.c:785: lsd = !lsd;
;	genNot
;	AOP_STK for __print_format_lsd_1_1
	xor	a,a
	or	a,-15(ix)
	sub	a,#0x01
	ld	a,#0x00
	rla
;printf_large.c:786: if (!lsd)
;	genIfx
;	AOP_STK for __print_format_lsd_1_1
	ld	-15(ix),a
	or	a,a
	jr	NZ,00209$
;printf_large.c:788: pstore++;
;	genPlus
;	genPlusIncr
	inc	bc
;printf_large.c:789: value.byte[4] = *pstore >> 4;
;	genAddrOf
	ld	hl,#0x0017
	add	hl,sp
	ld	e,l
	ld	d,h
;	genPlus
;	AOP_STK for __print_format__1_0
;	genPlusIncr
	ld	a,e
	add	a,#0x04
	ld	-37(ix),a
	ld	a,d
	adc	a,#0x00
	ld	-36(ix),a
;	genPointerGet
	ld	a,(bc)
	ld	e,a
;	genRightShift
	srl	e
	srl	e
	srl	e
	srl	e
;	genAssign (pointer)
;	AOP_STK for __print_format__1_0
;	isBitvar = 0
	ld	l,-37(ix)
	ld	h,-36(ix)
	ld	(hl),e
;	genGoto
	jr	00210$
;	genLabel
00209$:
;printf_large.c:793: value.byte[4] = *pstore & 0x0F;
;	genAddrOf
	ld	hl,#0x0017
	add	hl,sp
	ld	e,l
	ld	d,h
;	genPlus
;	AOP_STK for __print_format__1_0
;	genPlusIncr
	ld	a,e
	add	a,#0x04
	ld	-37(ix),a
	ld	a,d
	adc	a,#0x00
	ld	-36(ix),a
;	genPointerGet
	ld	a,(bc)
;	genAnd
	ld	e,a
	and	a,#0x0F
;	genAssign (pointer)
;	AOP_STK for __print_format__1_0
;	isBitvar = 0
	ld	l,-37(ix)
	ld	h,-36(ix)
	ld	(hl),a
;	genLabel
00210$:
;printf_large.c:796: output_digit( value.byte[4], lower_case, output_char, p );
;	genAddrOf
	ld	hl,#0x0017
	add	hl,sp
	ld	e,l
	ld	d,h
;	genPlus
;	genPlusIncr
	inc	de
	inc	de
	inc	de
	inc	de
;	genPointerGet
	ld	a,(de)
	ld	e,a
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
;	AOP_STK for 
	ld	l,6(ix)
	ld	h,7(ix)
	push	hl
;	genIpush
;	AOP_STK for 
	ld	l,4(ix)
	ld	h,5(ix)
	push	hl
;	genIpush
;	AOP_STK for __print_format_lower_case_1_1
	ld	a,-9(ix)
	push	af
	inc	sp
;	genIpush
	ld	a,e
	push	af
	inc	sp
;	genCall
	call	_output_digit
	pop	af
	pop	af
	pop	af
	pop	bc
;printf_large.c:797: charsOutputted++;
;	genPlus
;	AOP_STK for __print_format__1_0
;	genPlusIncr
	inc	-30(ix)
	jr	NZ,00363$
	inc	-29(ix)
00363$:
;	genAssign
;	AOP_STK for __print_format__1_0
;	AOP_STK for __print_format__1_0
	ld	a,-30(ix)
	ld	-33(ix),a
	ld	a,-29(ix)
	ld	-32(ix),a
;	genGoto
	jp	00211$
;	genLabel
00310$:
;	genAssign
;	AOP_STK for __print_format__1_0
;	AOP_STK for __print_format__1_0
	ld	a,-30(ix)
	ld	-33(ix),a
	ld	a,-29(ix)
	ld	-32(ix),a
;printf_large.c:802: if (left_justify)
;	genIfx
;	AOP_STK for __print_format_left_justify_1_1
	xor	a,a
	or	a,-1(ix)
	jp	Z,00227$
;printf_large.c:803: while (width-- > 0)
;	genAssign
;	AOP_STK for __print_format__1_0
	ld	c,-30(ix)
	ld	b,-29(ix)
;	genAssign
;	AOP_STK for __print_format_width_1_1
	ld	e,-17(ix)
;	genLabel
00214$:
;	genAssign
	ld	d,e
;	genMinus
	dec	e
;	genIfx
	xor	a,a
	or	a,d
	jp	Z,00227$
;printf_large.c:805: OUTPUT_CHAR(' ', p);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 1 bcInUse: 1 deSending: 0
	push	bc
	push	de
;	AOP_STK for 
	ld	l,6(ix)
	ld	h,7(ix)
	push	hl
;	genIpush
	ld	a,#0x20
	push	af
	inc	sp
;	genPcall
;	AOP_STK for 
	ld	hl,#00364$
	push	hl
	ld	l,4(ix)
	ld	h,5(ix)
	jp	(hl)
00364$:
	pop	af
	inc	sp
	pop	de
	pop	bc
;	genPlus
;	genPlusIncr
	inc	bc
;	genAssign
;	AOP_STK for __print_format__1_0
	ld	-33(ix),c
	ld	-32(ix),b
;	genGoto
	jr	00214$
;	genLabel
00225$:
;printf_large.c:812: OUTPUT_CHAR( c, p );
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	ld	l,6(ix)
	ld	h,7(ix)
	push	hl
;	genIpush
	push	bc
	inc	sp
;	genPcall
;	AOP_STK for 
	ld	hl,#00365$
	push	hl
	ld	l,4(ix)
	ld	h,5(ix)
	jp	(hl)
00365$:
	pop	af
	inc	sp
;	genPlus
;	AOP_STK for __print_format__1_0
;	genPlusIncr
	inc	-33(ix)
	jr	NZ,00366$
	inc	-32(ix)
00366$:
;	genGoto
	jp	00227$
;	genLabel
00229$:
;printf_large.c:816: return charsOutputted;
;	genRet
;	AOP_STK for __print_format__1_0
; Dump of IC_LEFT: type AOP_STK size 2
;	 aop_stk -33
	ld	l,-33(ix)
	ld	h,-32(ix)
;	genLabel
;	genEndFunction
	ld	sp,ix
	pop	ix
	ret
__print_format_end::
__str_0:
	.ascii "<NO FLOAT>"
	.db 0x00
	.area _CODE
	.area _CABS
