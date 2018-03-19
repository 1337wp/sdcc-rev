;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module printf_large
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __print_format
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
	
;printf_large.c:112: register unsigned char c = n + (unsigned char)'0';
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	lda	hl,2(sp)
	ld	a,(hl)
	add	a,#0x30
	ld	c,a
;printf_large.c:114: if (c > (unsigned char)'9')
;	genCmpGt
	ld	a,#0x39
	sub	a,c
	jp	NC,00104$
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
	inc	hl
	or	a,(hl)
	jp	Z,00104$
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
	lda	hl,6(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
	ld	a,c
	push	af
	inc	sp
;	genPcall
;	AOP_STK for 
	ld	hl,#00109$
	push	hl
	lda	hl,9(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	jp	(hl)
00109$:
	lda	sp,3(sp)
;	genLabel
00105$:
;	genEndFunction
	
	ret
;printf_large.c:141: static void output_2digits( unsigned char b, BOOL lower_case, pfn_outputchar output_char, void* p )
;	genLabel
;	genFunction
;	---------------------------------
; Function output_2digits
; ---------------------------------
_output_2digits:
	
;printf_large.c:143: output_digit( b>>4,   lower_case, output_char, p );
;	genRightShift
;	AOP_STK for 
	lda	hl,2(sp)
	ld	c,(hl)
	srl	c
	srl	c
	srl	c
	srl	c
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	lda	hl,6(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for 
	lda	hl,6(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for 
	lda	hl,7(sp)
	ld	a,(hl)
	push	af
	inc	sp
;	genIpush
	ld	a,c
	push	af
	inc	sp
;	genCall
	call	_output_digit
	lda	sp,6(sp)
;printf_large.c:144: output_digit( b&0x0F, lower_case, output_char, p );
;	genAnd
;	AOP_STK for 
	lda	hl,2(sp)
	ld	a,(hl)
	and	a,#0x0F
	ld	c,a
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	lda	hl,6(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for 
	lda	hl,6(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for 
	lda	hl,7(sp)
	ld	a,(hl)
	push	af
	inc	sp
;	genIpush
	ld	a,c
	push	af
	inc	sp
;	genCall
	call	_output_digit
	lda	sp,6(sp)
;	genLabel
00101$:
;	genEndFunction
	
	ret
;printf_large.c:158: static void calculate_digit( value_t _AUTOMEM * value, unsigned char radix )
;	genLabel
;	genFunction
;	---------------------------------
; Function calculate_digit
; ---------------------------------
_calculate_digit:
	lda	sp,-13(sp)
;printf_large.c:160: unsigned long ul = value->ul;
;	genAssign
;	AOP_STK for 
;	AOP_STK for _calculate_digit__1_0
	lda	hl,15(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,4(sp)
	ld	(hl+),a
	ld	(hl),e
;	genPointerGet
;	AOP_STK for _calculate_digit__1_0
;	AOP_STK for _calculate_digit_ul_1_1
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	lda	hl,9(sp)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
;	genAssign
;	AOP_STK for _calculate_digit_ul_1_1
;	(registers are the same)
;printf_large.c:161: unsigned char _AUTOMEM * pb4 = &value->byte[4];
;	genPlus
;	AOP_STK for _calculate_digit__1_0
;	AOP_STK for _calculate_digit_pb4_1_1
;	genPlusIncr
	lda	hl,4(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0004
	add	hl,de
	ld	a,l
	ld	d,h
	lda	hl,7(sp)
	ld	(hl+),a
	ld	(hl),d
;printf_large.c:164: do
;	genAssign
;	AOP_STK for _calculate_digit_i_1_1
	dec	hl
	dec	hl
	ld	(hl),#0x20
;	genLabel
00103$:
;printf_large.c:166: *pb4 = (*pb4 << 1) | ((ul >> 31) & 0x01);
;	genPointerGet
;	AOP_STK for _calculate_digit_pb4_1_1
	lda	hl,7(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	c,a
;	genLeftShift
	sla	c
;	genGetHBIT
;	AOP_STK for _calculate_digit_ul_1_1
	lda	hl,12(sp)
	ld	a,(hl)
	rlc	a
	and	a,#0x01
;	genOr
	ld	b,a
	or	a,c
;	genAssign (pointer)
;	AOP_STK for _calculate_digit_pb4_1_1
;	isBitvar = 0
	lda	hl,7(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	(de),a
;printf_large.c:167: ul <<= 1;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	a,#0x01
	push	af
	inc	sp
;	genIpush
;	AOP_STK for _calculate_digit_ul_1_1
	lda	hl,12(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,12(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__rlulong_rrx_s
;	AOP_STK for _calculate_digit__1_0
	push	hl
	lda	hl,7(sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	lda	sp,5(sp)
;	genAssign
;	AOP_STK for _calculate_digit__1_0
;	AOP_STK for _calculate_digit_ul_1_1
	lda	hl,0(sp)
	ld	d,h
	ld	e,l
	lda	hl,9(sp)
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
;printf_large.c:169: if (radix <= *pb4 )
;	genPointerGet
;	AOP_STK for _calculate_digit_pb4_1_1
	lda	hl,7(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genCmpGt
;	AOP_STK for 
	ld	c,a
	lda	hl,17(sp)
	sub	a,(hl)
	jp	C,00104$
;printf_large.c:171: *pb4 -= radix;
;	genPointerGet
;	AOP_STK for _calculate_digit_pb4_1_1
	lda	hl,7(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genMinus
;	AOP_STK for 
	ld	c,a
	lda	hl,17(sp)
	sub	a,(hl)
;	genAssign (pointer)
;	AOP_STK for _calculate_digit_pb4_1_1
;	isBitvar = 0
	lda	hl,7(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	(de),a
;printf_large.c:172: ul |= 1;
;	genOr
;	AOP_STK for _calculate_digit_ul_1_1
	inc	hl
	ld	a,(hl)
	or	a,#0x01
	ld	(hl),a
;	genLabel
00104$:
;printf_large.c:174: } while (--i);
;	genMinus
;	AOP_STK for _calculate_digit_i_1_1
	lda	hl,6(sp)
	dec	(hl)
;	genIfx
;	AOP_STK for _calculate_digit_i_1_1
	xor	a,a
	or	a,(hl)
	jp	NZ,00103$
;printf_large.c:175: value->ul = ul;
;	genAssign (pointer)
;	AOP_STK for _calculate_digit__1_0
;	AOP_STK for _calculate_digit_ul_1_1
;	isBitvar = 0
	dec	hl
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	lda	hl,9(sp)
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
;	genLabel
00106$:
;	genEndFunction
	lda	sp,13(sp)
	ret
;printf_large.c:402: int _print_format (pfn_outputchar pfn, void* pvoid, const char *format, va_list ap)
;	genLabel
;	genFunction
;	---------------------------------
; Function _print_format
; ---------------------------------
__print_format_start::
__print_format:
	lda	sp,-48(sp)
;printf_large.c:434: charsOutputted = 0;
;	genAssign
;	AOP_STK for __print_format__1_0
	lda	hl,16(sp)
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;printf_large.c:442: while( c=*format++ )
;	genAddrOf
	lda	hl,20(sp)
	ld	c,l
	ld	b,h
;	genPlus
;	AOP_STK for __print_format__1_0
;	genPlusIncr
	ld	hl,#0x0005
	add	hl,bc
	ld	a,l
	ld	d,h
	lda	hl,14(sp)
	ld	(hl+),a
	ld	(hl),d
;	genLabel
00227$:
;	genAssign
;	AOP_STK for 
;	AOP_STK for __print_format__1_0
	lda	hl,54(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,12(sp)
	ld	(hl+),a
	ld	(hl),e
;	genPointerGet
;	AOP_STK for __print_format__1_0
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	c,a
;	genPlus
;	AOP_STK for __print_format__1_0
;	AOP_STK for 
;	genPlusIncr
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0001
	add	hl,de
	ld	a,l
	ld	d,h
	lda	hl,54(sp)
	ld	(hl+),a
	ld	(hl),d
;	genAssign
;	AOP_STK for __print_format_c_1_1
	lda	hl,26(sp)
	ld	(hl),c
;	genIfx
	xor	a,a
	or	a,c
	jp	Z,00229$
;printf_large.c:444: if ( c=='%' )
;	genCmpEq
;	AOP_STK for __print_format_c_1_1
; genCmpEq: left 1, right 1, result 0
	ld	a,(hl)
	sub	a,#0x25
	jp	NZ,00311$
	jr	00312$
00311$:
	jp	00225$
00312$:
;printf_large.c:446: left_justify    = 0;
;	genAssign
;	AOP_STK for __print_format_left_justify_1_1
	lda	hl,47(sp)
	ld	(hl),#0x00
;printf_large.c:447: zero_padding    = 0;
;	genAssign
;	AOP_STK for __print_format_zero_padding_1_1
	dec	hl
	ld	(hl),#0x00
;printf_large.c:448: prefix_sign     = 0;
;	genAssign
;	AOP_STK for __print_format_prefix_sign_1_1
	dec	hl
	ld	(hl),#0x00
;printf_large.c:449: prefix_space    = 0;
;	genAssign
;	AOP_STK for __print_format_prefix_space_1_1
	dec	hl
	ld	(hl),#0x00
;printf_large.c:450: signed_argument = 0;
;	genAssign
;	AOP_STK for __print_format_signed_argument_1_1
	dec	hl
	ld	(hl),#0x00
;printf_large.c:451: char_argument   = 0;
;	genAssign
;	AOP_STK for __print_format_char_argument_1_1
	dec	hl
	ld	(hl),#0x00
;printf_large.c:452: long_argument   = 0;
;	genAssign
;	AOP_STK for __print_format_long_argument_1_1
	dec	hl
	ld	(hl),#0x00
;printf_large.c:453: float_argument  = 0;
;	genAssign
;	AOP_STK for __print_format_float_argument_1_1
	dec	hl
	ld	(hl),#0x00
;printf_large.c:454: radix           = 0;
;	genAssign
;	AOP_STK for __print_format_radix_1_1
	lda	hl,30(sp)
	ld	(hl),#0x00
;printf_large.c:455: width           = 0;
;	genAssign
;	AOP_STK for __print_format_width_1_1
	dec	hl
	ld	(hl),#0x00
;printf_large.c:456: decimals        = -1;
;	genAssign
;	AOP_STK for __print_format_decimals_1_1
	dec	hl
	ld	(hl),#0xFF
;printf_large.c:458: get_conversion_spec:
;	genAssign
;	AOP_STK for 
;	AOP_STK for __print_format__1_0
	lda	hl,54(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,12(sp)
	ld	(hl+),a
	ld	(hl),e
;	genLabel
00101$:
;printf_large.c:460: c = *format++;
;	genPointerGet
;	AOP_STK for __print_format__1_0
	lda	hl,12(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	c,a
;	genPlus
;	AOP_STK for __print_format__1_0
;	genPlusIncr
	dec	hl
	inc	(hl)
	jr	NZ,00313$
	inc	hl
	inc	(hl)
00313$:
;	genAssign
;	AOP_STK for __print_format__1_0
;	AOP_STK for 
	lda	hl,12(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,54(sp)
	ld	(hl+),a
	ld	(hl),e
;	genAssign
;	AOP_STK for __print_format_c_1_1
	lda	hl,26(sp)
	ld	(hl),c
;printf_large.c:462: if (c=='%') {
;	genCmpEq
;	AOP_STK for __print_format_c_1_1
; genCmpEq: left 1, right 1, result 0
	ld	a,(hl)
	sub	a,#0x25
	jp	NZ,00314$
	jr	00315$
00314$:
	jp	00103$
00315$:
;printf_large.c:463: OUTPUT_CHAR(c, p);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	lda	hl,52(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for __print_format_c_1_1
	lda	hl,28(sp)
	ld	a,(hl)
	push	af
	inc	sp
;	genPcall
;	AOP_STK for 
	ld	hl,#00316$
	push	hl
	lda	hl,55(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	jp	(hl)
00316$:
	lda	sp,3(sp)
;	genPlus
;	AOP_STK for __print_format__1_0
;	genPlusIncr
	lda	hl,16(sp)
	inc	(hl)
	jr	NZ,00317$
	inc	hl
	inc	(hl)
00317$:
;printf_large.c:464: continue;
;	genGoto
	jp	00227$
;	genLabel
00103$:
;printf_large.c:467: if (isdigit(c)) {
;	genAssign
;	AOP_STK for __print_format_c_1_1
	lda	hl,26(sp)
	ld	c,(hl)
;	genCmpLt
	ld	a,c
	sub	a,#0x30
	jp	C,00110$
;	genAssign
;	AOP_STK for __print_format_c_1_1
	ld	c,(hl)
;	genCmpGt
	ld	a,#0x39
	sub	a,c
	jp	C,00110$
;printf_large.c:468: if (decimals==-1) {
;	genCmpEq
;	AOP_STK for __print_format_decimals_1_1
; genCmpEq: left 1, right 1, result 0
	inc	hl
	inc	hl
	ld	a,(hl)
	inc	a
	jp	NZ,00318$
	jr	00319$
00318$:
	jp	00107$
00319$:
;printf_large.c:469: width = 10*width + (c - '0');
;	genMult
;	AOP_STK for __print_format_width_1_1
	lda	hl,29(sp)
	ld	a,(hl)
	ld	e,a
	add	a,a
	add	a,a
	add	a,e
	add	a,a
	ld	c,a
;	genMinus
;	AOP_STK for __print_format_c_1_1
	lda	hl,26(sp)
	ld	a,(hl)
	add	a,#0xD0
;	genPlus
	ld	b, a
	add	a,c
	ld	c,a
;	genAssign
;	AOP_STK for __print_format_width_1_1
	lda	hl,29(sp)
	ld	(hl),c
;printf_large.c:470: if (width == 0) {
;	genIfx
;	AOP_STK for __print_format_width_1_1
	xor	a,a
	or	a,(hl)
	jp	NZ,00101$
;printf_large.c:472: zero_padding = 1;
;	genAssign
;	AOP_STK for __print_format_zero_padding_1_1
	lda	hl,46(sp)
	ld	(hl),#0x01
;	genGoto
	jp	00101$
;	genLabel
00107$:
;printf_large.c:475: decimals = 10*decimals + (c-'0');
;	genMult
;	AOP_STK for __print_format_decimals_1_1
	lda	hl,28(sp)
	ld	a,(hl)
	ld	e,a
	add	a,a
	add	a,a
	add	a,e
	add	a,a
	ld	c,a
;	genMinus
;	AOP_STK for __print_format_c_1_1
	lda	hl,26(sp)
	ld	a,(hl)
	add	a,#0xD0
;	genPlus
	ld	b, a
	add	a,c
	ld	c,a
;	genAssign
;	AOP_STK for __print_format_decimals_1_1
	inc	hl
	inc	hl
	ld	(hl),c
;printf_large.c:477: goto get_conversion_spec;
;	genGoto
	jp	00101$
;	genLabel
00110$:
;printf_large.c:480: if (c=='.') {
;	genCmpEq
;	AOP_STK for __print_format_c_1_1
; genCmpEq: left 1, right 1, result 0
	lda	hl,26(sp)
	ld	a,(hl)
	sub	a,#0x2E
	jp	NZ,00320$
	jr	00321$
00320$:
	jp	00115$
00321$:
;printf_large.c:481: if (decimals==-1) decimals=0;
;	genCmpEq
;	AOP_STK for __print_format_decimals_1_1
; genCmpEq: left 1, right 1, result 0
	lda	hl,28(sp)
	ld	a,(hl)
	inc	a
	jp	NZ,00322$
	jr	00323$
00322$:
	jp	00101$
00323$:
;	genAssign
;	AOP_STK for __print_format_decimals_1_1
	lda	hl,28(sp)
	ld	(hl),#0x00
;printf_large.c:484: goto get_conversion_spec;
;	genGoto
	jp	00101$
;	genLabel
00115$:
;printf_large.c:487: if (islower(c))
;	genAssign
;	AOP_STK for __print_format_c_1_1
	lda	hl,26(sp)
	ld	c,(hl)
;	genCmpLt
	ld	a,c
	sub	a,#0x61
	jp	C,00117$
;	genAssign
;	AOP_STK for __print_format_c_1_1
	ld	c,(hl)
;	genCmpGt
	ld	a,#0x7A
	sub	a,c
	jp	C,00117$
;printf_large.c:489: c = toupper(c);
;	genAnd
;	AOP_STK for __print_format_c_1_1
	ld	a,(hl)
	and	a,#0xDF
	ld	(hl),a
;printf_large.c:490: lower_case = 1;
;	genAssign
;	AOP_STK for __print_format_lower_case_1_1
	lda	hl,39(sp)
	ld	(hl),#0x01
;	genGoto
	jp	00118$
;	genLabel
00117$:
;printf_large.c:493: lower_case = 0;
;	genAssign
;	AOP_STK for __print_format_lower_case_1_1
	lda	hl,39(sp)
	ld	(hl),#0x00
;	genLabel
00118$:
;printf_large.c:495: switch( c )
;	genCmpEq
;	AOP_STK for __print_format_c_1_1
; genCmpEq: left 1, right 1, result 0
	lda	hl,26(sp)
	ld	a,(hl)
	sub	a,#0x20
	jp	Z,00122$
00324$:
;	genCmpEq
;	AOP_STK for __print_format_c_1_1
; genCmpEq: left 1, right 1, result 0
	lda	hl,26(sp)
	ld	a,(hl)
	sub	a,#0x2B
	jp	Z,00121$
00325$:
;	genCmpEq
;	AOP_STK for __print_format_c_1_1
; genCmpEq: left 1, right 1, result 0
	lda	hl,26(sp)
	ld	a,(hl)
	sub	a,#0x2D
	jp	Z,00120$
00326$:
;	genCmpEq
;	AOP_STK for __print_format_c_1_1
; genCmpEq: left 1, right 1, result 0
	lda	hl,26(sp)
	ld	a,(hl)
	sub	a,#0x42
	jp	Z,00123$
00327$:
;	genCmpEq
;	AOP_STK for __print_format_c_1_1
; genCmpEq: left 1, right 1, result 0
	lda	hl,26(sp)
	ld	a,(hl)
	sub	a,#0x43
	jp	Z,00125$
00328$:
;	genCmpEq
;	AOP_STK for __print_format_c_1_1
; genCmpEq: left 1, right 1, result 0
	lda	hl,26(sp)
	ld	a,(hl)
	sub	a,#0x44
	jp	Z,00150$
00329$:
;	genCmpEq
;	AOP_STK for __print_format_c_1_1
; genCmpEq: left 1, right 1, result 0
	lda	hl,26(sp)
	ld	a,(hl)
	sub	a,#0x46
	jp	Z,00154$
00330$:
;	genCmpEq
;	AOP_STK for __print_format_c_1_1
; genCmpEq: left 1, right 1, result 0
	lda	hl,26(sp)
	ld	a,(hl)
	sub	a,#0x49
	jp	Z,00150$
00331$:
;	genCmpEq
;	AOP_STK for __print_format_c_1_1
; genCmpEq: left 1, right 1, result 0
	lda	hl,26(sp)
	ld	a,(hl)
	sub	a,#0x4C
	jp	Z,00124$
00332$:
;	genCmpEq
;	AOP_STK for __print_format_c_1_1
; genCmpEq: left 1, right 1, result 0
	lda	hl,26(sp)
	ld	a,(hl)
	sub	a,#0x4F
	jp	Z,00151$
00333$:
;	genCmpEq
;	AOP_STK for __print_format_c_1_1
; genCmpEq: left 1, right 1, result 0
	lda	hl,26(sp)
	ld	a,(hl)
	sub	a,#0x50
	jp	Z,00148$
00334$:
;	genCmpEq
;	AOP_STK for __print_format_c_1_1
; genCmpEq: left 1, right 1, result 0
	lda	hl,26(sp)
	ld	a,(hl)
	sub	a,#0x53
	jp	Z,00129$
00335$:
;	genCmpEq
;	AOP_STK for __print_format_c_1_1
; genCmpEq: left 1, right 1, result 0
	lda	hl,26(sp)
	ld	a,(hl)
	sub	a,#0x55
	jp	Z,00152$
00336$:
;	genCmpEq
;	AOP_STK for __print_format_c_1_1
; genCmpEq: left 1, right 1, result 0
	lda	hl,26(sp)
	ld	a,(hl)
	sub	a,#0x58
	jp	Z,00153$
00337$:
;	genGoto
	jp	00155$
;printf_large.c:497: case '-':
;	genLabel
00120$:
;printf_large.c:498: left_justify = 1;
;	genAssign
;	AOP_STK for __print_format_left_justify_1_1
	lda	hl,47(sp)
	ld	(hl),#0x01
;printf_large.c:499: goto get_conversion_spec;
;	genGoto
	jp	00101$
;printf_large.c:500: case '+':
;	genLabel
00121$:
;printf_large.c:501: prefix_sign = 1;
;	genAssign
;	AOP_STK for __print_format_prefix_sign_1_1
	lda	hl,45(sp)
	ld	(hl),#0x01
;printf_large.c:502: goto get_conversion_spec;
;	genGoto
	jp	00101$
;printf_large.c:503: case ' ':
;	genLabel
00122$:
;printf_large.c:504: prefix_space = 1;
;	genAssign
;	AOP_STK for __print_format_prefix_space_1_1
	lda	hl,44(sp)
	ld	(hl),#0x01
;printf_large.c:505: goto get_conversion_spec;
;	genGoto
	jp	00101$
;printf_large.c:506: case 'B':
;	genLabel
00123$:
;printf_large.c:507: char_argument = 1;
;	genAssign
;	AOP_STK for __print_format_char_argument_1_1
	lda	hl,42(sp)
	ld	(hl),#0x01
;printf_large.c:508: goto get_conversion_spec;
;	genGoto
	jp	00101$
;printf_large.c:509: case 'L':
;	genLabel
00124$:
;printf_large.c:510: long_argument = 1;
;	genAssign
;	AOP_STK for __print_format_long_argument_1_1
	lda	hl,41(sp)
	ld	(hl),#0x01
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
	lda	hl,42(sp)
	or	a,(hl)
	jp	Z,00127$
;printf_large.c:515: c = va_arg(ap,char);
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	lda	hl,56(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0001
	add	hl,de
	ld	b,l
	ld	c,h
;	genAssign
;	AOP_STK for 
	lda	hl,56(sp)
	ld	(hl),b
	inc	hl
	ld	(hl),c
;	genMinus
	ld	e,b
	ld	d,c
	dec	de
;	genPointerGet
	ld	b,e
	ld	c,d
	ld	a,(de)
	ld	b,a
;	genAssign
;	AOP_STK for __print_format_c_1_1
	lda	hl,26(sp)
	ld	(hl),b
;	genGoto
	jp	00128$
;	genLabel
00127$:
;printf_large.c:517: c = va_arg(ap,int);
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	lda	hl,56(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	inc	bc
;	genAssign
;	AOP_STK for 
	dec	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
;	genMinus
	dec	bc
	dec	bc
;	genPointerGet
	ld	e,c
	ld	d,b
	ld	a,(de)
	ld	c,a
	inc	de
	ld	a,(de)
	ld	b,a
;	genCast
;	AOP_STK for __print_format_c_1_1
	lda	hl,26(sp)
	ld	(hl),c
;	genLabel
00128$:
;printf_large.c:518: OUTPUT_CHAR( c, p );
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	lda	hl,52(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for __print_format_c_1_1
	lda	hl,28(sp)
	ld	a,(hl)
	push	af
	inc	sp
;	genPcall
;	AOP_STK for 
	ld	hl,#00338$
	push	hl
	lda	hl,55(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	jp	(hl)
00338$:
	lda	sp,3(sp)
;	genPlus
;	AOP_STK for __print_format__1_0
;	genPlusIncr
	lda	hl,16(sp)
	inc	(hl)
	jr	NZ,00339$
	inc	hl
	inc	(hl)
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
	lda	hl,34(sp)
	ld	a,l
	ld	d,h
	lda	hl,12(sp)
	ld	(hl+),a
	ld	(hl),d
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	lda	hl,56(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	inc	bc
;	genAssign
;	AOP_STK for 
	dec	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
;	genMinus
	dec	bc
	dec	bc
;	genPointerGet
	ld	e,c
	ld	d,b
	ld	a,(de)
	ld	c,a
	inc	de
	ld	a,(de)
	ld	b,a
;	genAssign (pointer)
;	AOP_STK for __print_format__1_0
;	isBitvar = 0
	lda	hl,12(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,c
	ld	(de),a
	inc	de
	ld	a,b
	ld	(de),a
;printf_large.c:532: length = strlen(PTR);
;	genPointerGet
;	AOP_STK for __print_format__1_0
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	c,a
	inc	de
	ld	a,(de)
	ld	b,a
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	push	bc
;	genCall
	call	_strlen
	ld	b,d
	ld	c,e
	lda	sp,2(sp)
;	genCast
;	AOP_STK for __print_format__1_0
	lda	hl,11(sp)
	ld	(hl),c
;printf_large.c:534: if ( decimals == -1 )
;	genCmpEq
;	AOP_STK for __print_format_decimals_1_1
; genCmpEq: left 1, right 1, result 0
	lda	hl,28(sp)
	ld	a,(hl)
	inc	a
	jp	NZ,00340$
	jr	00341$
00340$:
	jp	00131$
00341$:
;printf_large.c:536: decimals = length;
;	genAssign
;	AOP_STK for __print_format__1_0
;	AOP_STK for __print_format_decimals_1_1
	lda	hl,11(sp)
	ld	a,(hl)
	lda	hl,28(sp)
	ld	(hl),a
;	genLabel
00131$:
;printf_large.c:538: if ( ( !left_justify ) && (length < width) )
;	genIfx
;	AOP_STK for __print_format_left_justify_1_1
	xor	a,a
	lda	hl,47(sp)
	or	a,(hl)
	jp	NZ,00269$
;	genCmpLt
;	AOP_STK for __print_format__1_0
;	AOP_STK for __print_format_width_1_1
	lda	hl,11(sp)
	ld	a,(hl)
	lda	hl,29(sp)
	sub	a,(hl)
	jp	NC,00269$
;printf_large.c:540: width -= length;
;	genMinus
;	AOP_STK for __print_format_width_1_1
;	AOP_STK for __print_format__1_0
	ld	a,(hl)
	lda	hl,11(sp)
	sub	a,(hl)
	lda	hl,29(sp)
	ld	(hl),a
;printf_large.c:541: while( width-- != 0 )
;	genAssign
;	AOP_STK for __print_format__1_0
;	AOP_STK for __print_format__1_0
	lda	hl,16(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,12(sp)
	ld	(hl+),a
	ld	(hl),e
;	genAssign
;	AOP_STK for __print_format_width_1_1
	lda	hl,29(sp)
	ld	b,(hl)
;	genLabel
00132$:
;	genAssign
	ld	c,b
;	genMinus
	dec	b
;	genAssign
;	AOP_STK for __print_format_width_1_1
	lda	hl,29(sp)
	ld	(hl),b
;	genIfx
	xor	a,a
	or	a,c
	jp	Z,00304$
;printf_large.c:543: OUTPUT_CHAR( ' ', p );
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
;	AOP_STK for 
	lda	hl,54(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
	ld	a,#0x20
	push	af
	inc	sp
;	genPcall
;	AOP_STK for 
	ld	hl,#00342$
	push	hl
	lda	hl,57(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	jp	(hl)
00342$:
	lda	sp,3(sp)
	pop	bc
;	genPlus
;	AOP_STK for __print_format__1_0
;	genPlusIncr
	lda	hl,12(sp)
	inc	(hl)
	jr	NZ,00343$
	inc	hl
	inc	(hl)
00343$:
;	genAssign
;	AOP_STK for __print_format__1_0
;	AOP_STK for __print_format__1_0
	lda	hl,12(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,16(sp)
	ld	(hl+),a
	ld	(hl),e
;	genGoto
	jp	00132$
;printf_large.c:547: while ( (c = *PTR)  && (decimals-- > 0))
;	genLabel
00304$:
;	genAssign
;	AOP_STK for __print_format__1_0
;	AOP_STK for __print_format__1_0
	lda	hl,12(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,16(sp)
	ld	(hl+),a
	ld	(hl),e
;	genAssign
;	AOP_STK for __print_format_width_1_1
	lda	hl,29(sp)
	ld	(hl),b
;	genLabel
00269$:
;	genAssign
;	AOP_STK for __print_format_decimals_1_1
;	AOP_STK for __print_format__1_0
	lda	hl,28(sp)
	ld	a,(hl)
	lda	hl,10(sp)
	ld	(hl),a
;	genAssign
;	AOP_STK for __print_format__1_0
;	AOP_STK for __print_format__1_0
	lda	hl,16(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,12(sp)
	ld	(hl+),a
	ld	(hl),e
;	genLabel
00139$:
;	genAddrOf
	lda	hl,34(sp)
	ld	b,l
	ld	c,h
;	genPointerGet
	ld	e,b
	ld	d,c
	ld	a,(de)
	ld	b,a
	inc	de
	ld	a,(de)
	ld	c,a
;	genPointerGet
	ld	e,b
	ld	d,c
	ld	a,(de)
	ld	b,a
;	genAssign
;	AOP_STK for __print_format_c_1_1
	lda	hl,26(sp)
	ld	(hl),b
;	genIfx
	xor	a,a
	or	a,b
	jp	Z,00305$
;	genAssign
;	AOP_STK for __print_format__1_0
	lda	hl,10(sp)
	ld	c,(hl)
;	genMinus
;	AOP_STK for __print_format__1_0
	dec	(hl)
;	genCmpGt
	ld	a,#0x00
	sub	a,c
	rlca
	jp	NC,00305$
;printf_large.c:549: OUTPUT_CHAR( c, p );
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	lda	hl,52(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for __print_format_c_1_1
	lda	hl,28(sp)
	ld	a,(hl)
	push	af
	inc	sp
;	genPcall
;	AOP_STK for 
	ld	hl,#00344$
	push	hl
	lda	hl,55(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	jp	(hl)
00344$:
	lda	sp,3(sp)
;	genPlus
;	AOP_STK for __print_format__1_0
;	genPlusIncr
	lda	hl,12(sp)
	inc	(hl)
	jr	NZ,00345$
	inc	hl
	inc	(hl)
00345$:
;	genAssign
;	AOP_STK for __print_format__1_0
;	AOP_STK for __print_format__1_0
	lda	hl,12(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,16(sp)
	ld	(hl+),a
	ld	(hl),e
;printf_large.c:550: PTR++;
;	genAddrOf
;	AOP_STK for __print_format__1_0
	lda	hl,34(sp)
	ld	a,l
	ld	d,h
	lda	hl,8(sp)
;	genPointerGet
;	AOP_STK for __print_format__1_0
	ld	(hl+),a
	ld	(hl),d
	ld	e,a
	ld	a,(de)
	ld	c,a
	inc	de
	ld	a,(de)
	ld	b,a
;	genPlus
;	genPlusIncr
	inc	bc
;	genAssign (pointer)
;	AOP_STK for __print_format__1_0
;	isBitvar = 0
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,c
	ld	(de),a
	inc	de
	ld	a,b
	ld	(de),a
;	genGoto
	jp	00139$
;	genLabel
00305$:
;	genAssign
;	AOP_STK for __print_format__1_0
;	AOP_STK for __print_format__1_0
	lda	hl,12(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,16(sp)
	ld	(hl+),a
	ld	(hl),e
;printf_large.c:553: if ( left_justify && (length < width))
;	genIfx
;	AOP_STK for __print_format_left_justify_1_1
	xor	a,a
	lda	hl,47(sp)
	or	a,(hl)
	jp	Z,00156$
;	genCmpLt
;	AOP_STK for __print_format__1_0
;	AOP_STK for __print_format_width_1_1
	lda	hl,11(sp)
	ld	a,(hl)
	lda	hl,29(sp)
	sub	a,(hl)
	jp	NC,00156$
;printf_large.c:555: width -= length;
;	genMinus
;	AOP_STK for __print_format_width_1_1
;	AOP_STK for __print_format__1_0
	ld	a,(hl)
	lda	hl,11(sp)
	sub	a,(hl)
	lda	hl,29(sp)
	ld	(hl),a
;printf_large.c:556: while( width-- != 0 )
;	genAssign
;	AOP_STK for __print_format__1_0
;	AOP_STK for __print_format_charsOutputted_1_1
	lda	hl,12(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,32(sp)
	ld	(hl+),a
	ld	(hl),e
;	genAssign
;	AOP_STK for __print_format_width_1_1
	lda	hl,29(sp)
	ld	c,(hl)
;	genLabel
00142$:
;	genAssign
	ld	b,c
;	genMinus
	dec	c
;	genAssign
;	AOP_STK for __print_format_width_1_1
	lda	hl,29(sp)
	ld	(hl),c
;	genIfx
	xor	a,a
	or	a,b
	jp	Z,00306$
;printf_large.c:558: OUTPUT_CHAR( ' ', p );
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
;	AOP_STK for 
	lda	hl,54(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
	ld	a,#0x20
	push	af
	inc	sp
;	genPcall
;	AOP_STK for 
	ld	hl,#00346$
	push	hl
	lda	hl,57(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	jp	(hl)
00346$:
	lda	sp,3(sp)
	pop	bc
;	genPlus
;	AOP_STK for __print_format_charsOutputted_1_1
;	genPlusIncr
	lda	hl,32(sp)
	inc	(hl)
	jr	NZ,00347$
	inc	hl
	inc	(hl)
00347$:
;	genAssign
;	AOP_STK for __print_format_charsOutputted_1_1
;	AOP_STK for __print_format__1_0
	lda	hl,32(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,16(sp)
	ld	(hl+),a
	ld	(hl),e
;	genGoto
	jp	00142$
;printf_large.c:563: case 'P':
;	genLabel
00148$:
;printf_large.c:564: PTR = va_arg(ap,ptr_t);
;	genAddrOf
	lda	hl,34(sp)
	ld	c,l
	ld	b,h
;	genPlus
;	AOP_STK for 
;	AOP_STK for __print_format__1_0
;	genPlusIncr
	lda	hl,56(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0002
	add	hl,de
	ld	a,l
	ld	d,h
	lda	hl,12(sp)
	ld	(hl+),a
	ld	(hl),d
;	genAssign
;	AOP_STK for __print_format__1_0
;	AOP_STK for 
	dec	hl
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,56(sp)
	ld	(hl+),a
	ld	(hl),e
;	genMinus
;	AOP_STK for __print_format__1_0
	lda	hl,12(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	dec	de
	dec	de
	dec	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
;	genPointerGet
;	AOP_STK for __print_format__1_0
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	dec	hl
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
;	genAssign (pointer)
;	AOP_STK for __print_format__1_0
;	isBitvar = 0
	ld	e,c
	ld	d,b
	dec	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
;printf_large.c:608: OUTPUT_CHAR('0', p);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	lda	hl,52(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
	ld	a,#0x30
	push	af
	inc	sp
;	genPcall
;	AOP_STK for 
	ld	hl,#00348$
	push	hl
	lda	hl,55(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	jp	(hl)
00348$:
	lda	sp,3(sp)
;	genPlus
;	AOP_STK for __print_format__1_0
;	genPlusIncr
	lda	hl,16(sp)
	inc	(hl)
	jr	NZ,00349$
	inc	hl
	inc	(hl)
00349$:
;printf_large.c:609: OUTPUT_CHAR('x', p);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	lda	hl,52(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
	ld	a,#0x78
	push	af
	inc	sp
;	genPcall
;	AOP_STK for 
	ld	hl,#00350$
	push	hl
	lda	hl,55(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	jp	(hl)
00350$:
	lda	sp,3(sp)
;	genPlus
;	AOP_STK for __print_format__1_0
;	genPlusIncr
	lda	hl,16(sp)
	inc	(hl)
	jr	NZ,00351$
	inc	hl
	inc	(hl)
00351$:
;printf_large.c:610: OUTPUT_2DIGITS( value.byte[1] );
;	genAddrOf
	lda	hl,34(sp)
	ld	c,l
	ld	b,h
;	genPlus
;	genPlusIncr
	inc	bc
;	genPointerGet
	ld	a,(bc)
	ld	b,a
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	lda	hl,52(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for 
	lda	hl,52(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for __print_format_lower_case_1_1
	lda	hl,43(sp)
	ld	a,(hl)
	push	af
	inc	sp
;	genIpush
	push	bc
	inc	sp
;	genCall
	call	_output_2digits
	lda	sp,6(sp)
;	genPlus
;	AOP_STK for __print_format__1_0
;	genPlusIncr
	lda	hl,16(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0002
	add	hl,de
	ld	a,l
	ld	d,h
	lda	hl,16(sp)
	ld	(hl+),a
	ld	(hl),d
;printf_large.c:611: OUTPUT_2DIGITS( value.byte[0] );
;	genAddrOf
	lda	hl,34(sp)
	ld	c,l
	ld	b,h
;	genPointerGet
	ld	a,(bc)
	ld	b,a
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	lda	hl,52(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for 
	lda	hl,52(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for __print_format_lower_case_1_1
	lda	hl,43(sp)
	ld	a,(hl)
	push	af
	inc	sp
;	genIpush
	push	bc
	inc	sp
;	genCall
	call	_output_2digits
	lda	sp,6(sp)
;	genPlus
;	AOP_STK for __print_format__1_0
;	genPlusIncr
	lda	hl,16(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0002
	add	hl,de
	ld	a,l
	ld	d,h
	lda	hl,16(sp)
	ld	(hl+),a
	ld	(hl),d
;printf_large.c:613: break;
;	genGoto
	jp	00156$
;printf_large.c:616: case 'I':
;	genLabel
00150$:
;printf_large.c:617: signed_argument = 1;
;	genAssign
;	AOP_STK for __print_format_signed_argument_1_1
	lda	hl,43(sp)
	ld	(hl),#0x01
;printf_large.c:618: radix = 10;
;	genAssign
;	AOP_STK for __print_format_radix_1_1
	lda	hl,30(sp)
	ld	(hl),#0x0A
;printf_large.c:619: break;
;	genGoto
	jp	00156$
;printf_large.c:621: case 'O':
;	genLabel
00151$:
;printf_large.c:622: radix = 8;
;	genAssign
;	AOP_STK for __print_format_radix_1_1
	lda	hl,30(sp)
	ld	(hl),#0x08
;printf_large.c:623: break;
;	genGoto
	jp	00156$
;printf_large.c:625: case 'U':
;	genLabel
00152$:
;printf_large.c:626: radix = 10;
;	genAssign
;	AOP_STK for __print_format_radix_1_1
	lda	hl,30(sp)
	ld	(hl),#0x0A
;printf_large.c:627: break;
;	genGoto
	jp	00156$
;printf_large.c:629: case 'X':
;	genLabel
00153$:
;printf_large.c:630: radix = 16;
;	genAssign
;	AOP_STK for __print_format_radix_1_1
	lda	hl,30(sp)
	ld	(hl),#0x10
;printf_large.c:631: break;
;	genGoto
	jp	00156$
;printf_large.c:633: case 'F':
;	genLabel
00154$:
;printf_large.c:634: float_argument=1;
;	genAssign
;	AOP_STK for __print_format_float_argument_1_1
	lda	hl,40(sp)
	ld	(hl),#0x01
;printf_large.c:635: break;
;	genGoto
	jp	00156$
;printf_large.c:637: default:
;	genLabel
00155$:
;printf_large.c:639: OUTPUT_CHAR( c, p );
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	lda	hl,52(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for __print_format_c_1_1
	lda	hl,28(sp)
	ld	a,(hl)
	push	af
	inc	sp
;	genPcall
;	AOP_STK for 
	ld	hl,#00352$
	push	hl
	lda	hl,55(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	jp	(hl)
00352$:
	lda	sp,3(sp)
;	genPlus
;	AOP_STK for __print_format__1_0
;	genPlusIncr
	lda	hl,16(sp)
	inc	(hl)
	jr	NZ,00353$
	inc	hl
	inc	(hl)
00353$:
;printf_large.c:816: return charsOutputted;
;	genGoto
	jp	00156$
;printf_large.c:641: }
;	genLabel
00306$:
;	genAssign
;	AOP_STK for __print_format_charsOutputted_1_1
;	AOP_STK for __print_format__1_0
	lda	hl,32(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,16(sp)
	ld	(hl+),a
	ld	(hl),e
;	genAssign
;	AOP_STK for __print_format_width_1_1
	lda	hl,29(sp)
	ld	(hl),c
;	genLabel
00156$:
;printf_large.c:643: if (float_argument) {
;	genIfx
;	AOP_STK for __print_format_float_argument_1_1
	xor	a,a
	lda	hl,40(sp)
	or	a,(hl)
	jp	Z,00222$
;printf_large.c:644: value.f=va_arg(ap,float);
;	genAddrOf
;	AOP_STK for __print_format__1_0
	lda	hl,34(sp)
	ld	a,l
	ld	d,h
	lda	hl,8(sp)
	ld	(hl+),a
	ld	(hl),d
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	lda	hl,56(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0004
	add	hl,de
	ld	c,l
	ld	b,h
;	genAssign
;	AOP_STK for 
	lda	hl,56(sp)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;	genMinus
	ld	a,c
	add	a,#0xFC
	ld	c,a
	ld	a,b
	adc	a,#0xFF
	ld	b,a
;	genPointerGet
;	AOP_STK for __print_format__1_0
	ld	e,c
	ld	d,b
	ld	a,(de)
	lda	hl,4(sp)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
;	genAssign (pointer)
;	AOP_STK for __print_format__1_0
;	AOP_STK for __print_format__1_0
;	isBitvar = 0
	ld	(hl+),a
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	lda	hl,4(sp)
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
;printf_large.c:646: PTR="<NO FLOAT>";
;	genAddrOf
	lda	hl,34(sp)
	ld	c,l
	ld	b,h
;	genAssign (pointer)
;	isBitvar = 0
	ld	e,c
	ld	d,b
	ld	a,#<__str_0
	ld	(de),a
	inc	de
	ld	a,#>__str_0
	ld	(de),a
;printf_large.c:647: while (c=*PTR++)
;	genAssign
;	AOP_STK for __print_format__1_0
;	AOP_STK for __print_format__1_0
	lda	hl,16(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,4(sp)
	ld	(hl+),a
	ld	(hl),e
;	genLabel
00157$:
;	genAddrOf
;	AOP_STK for __print_format__1_0
	lda	hl,34(sp)
	ld	a,l
	ld	d,h
	lda	hl,8(sp)
;	genPointerGet
;	AOP_STK for __print_format__1_0
;	AOP_STK for __print_format__1_0
	ld	(hl+),a
	ld	(hl),d
	ld	e,a
	ld	a,(de)
	lda	hl,12(sp)
	ld	(hl+),a
	inc	de
	ld	a,(de)
;	genPlus
;	AOP_STK for __print_format__1_0
;	genPlusIncr
	ld	(hl-),a
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
;	genAssign (pointer)
;	AOP_STK for __print_format__1_0
;	isBitvar = 0
	lda	hl,8(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,c
	ld	(de),a
	inc	de
	ld	a,b
	ld	(de),a
;	genPointerGet
;	AOP_STK for __print_format__1_0
	lda	hl,12(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	c,a
;	genAssign
;	AOP_STK for __print_format_c_1_1
	lda	hl,26(sp)
	ld	(hl),c
;	genIfx
	xor	a,a
	or	a,c
	jp	Z,00227$
;printf_large.c:649: OUTPUT_CHAR (c, p);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	lda	hl,52(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for __print_format_c_1_1
	lda	hl,28(sp)
	ld	a,(hl)
	push	af
	inc	sp
;	genPcall
;	AOP_STK for 
	ld	hl,#00354$
	push	hl
	lda	hl,55(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	jp	(hl)
00354$:
	lda	sp,3(sp)
;	genPlus
;	AOP_STK for __print_format__1_0
;	genPlusIncr
	lda	hl,4(sp)
	inc	(hl)
	jr	NZ,00355$
	inc	hl
	inc	(hl)
00355$:
;	genAssign
;	AOP_STK for __print_format__1_0
;	AOP_STK for __print_format__1_0
	lda	hl,4(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,16(sp)
	ld	(hl+),a
	ld	(hl),e
;	genGoto
	jp	00157$
;	genLabel
00222$:
;printf_large.c:666: } else if (radix != 0)
;	genIfx
;	AOP_STK for __print_format_radix_1_1
	xor	a,a
	lda	hl,30(sp)
	or	a,(hl)
	jp	Z,00227$
;printf_large.c:671: unsigned char MEM_SPACE_BUF_PP *pstore = &store[5];
;	genAssign
;	AOP_STK for __print_format__1_0
;	AOP_STK for __print_format_pstore_4_31
	lda	hl,14(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,18(sp)
	ld	(hl+),a
	ld	(hl),e
;printf_large.c:674: if (char_argument)
;	genIfx
;	AOP_STK for __print_format_char_argument_1_1
	xor	a,a
	lda	hl,42(sp)
	or	a,(hl)
	jp	Z,00168$
;printf_large.c:676: value.l = va_arg(ap,char);
;	genAddrOf
;	AOP_STK for __print_format__1_0
	lda	hl,34(sp)
	ld	a,l
	ld	d,h
	lda	hl,4(sp)
	ld	(hl+),a
	ld	(hl),d
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	lda	hl,56(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
;	genAssign
;	AOP_STK for 
	dec	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
;	genMinus
	dec	bc
;	genPointerGet
	ld	a,(bc)
	ld	c,a
;	genCast
;	AOP_STK for __print_format__1_0
	lda	hl,0(sp)
	ld	(hl),c
	ld	a,c
	rla	
	sbc	a,a
	inc	hl
	ld	(hl+),a
	ld	(hl+),a
;	genAssign (pointer)
;	AOP_STK for __print_format__1_0
;	AOP_STK for __print_format__1_0
;	isBitvar = 0
	ld	(hl+),a
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	lda	hl,0(sp)
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
;printf_large.c:677: if (!signed_argument)
;	genIfx
;	AOP_STK for __print_format_signed_argument_1_1
	xor	a,a
	lda	hl,43(sp)
	or	a,(hl)
	jp	NZ,00169$
;printf_large.c:679: value.l &= 0xFF;
;	genPointerGet
;	AOP_STK for __print_format__1_0
;	AOP_STK for __print_format__1_0
	lda	hl,4(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	lda	hl,0(sp)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
;	genAnd
;	AOP_STK for __print_format__1_0
	ld	(hl-),a
	dec	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;	genAssign (pointer)
;	AOP_STK for __print_format__1_0
;	AOP_STK for __print_format__1_0
;	isBitvar = 0
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	lda	hl,0(sp)
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
;	genGoto
	jp	00169$
;	genLabel
00168$:
;printf_large.c:682: else if (long_argument)
;	genIfx
;	AOP_STK for __print_format_long_argument_1_1
	xor	a,a
	lda	hl,41(sp)
	or	a,(hl)
	jp	Z,00165$
;printf_large.c:684: value.l = va_arg(ap,long);
;	genAddrOf
;	AOP_STK for __print_format__1_0
	lda	hl,34(sp)
	ld	a,l
	ld	d,h
	lda	hl,0(sp)
	ld	(hl+),a
	ld	(hl),d
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	lda	hl,56(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0004
	add	hl,de
	ld	c,l
	ld	b,h
;	genAssign
;	AOP_STK for 
	lda	hl,56(sp)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;	genMinus
	ld	a,c
	add	a,#0xFC
	ld	c,a
	ld	a,b
	adc	a,#0xFF
	ld	b,a
;	genPointerGet
;	AOP_STK for __print_format__1_0
	ld	e,c
	ld	d,b
	ld	a,(de)
	lda	hl,4(sp)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
;	genAssign (pointer)
;	AOP_STK for __print_format__1_0
;	AOP_STK for __print_format__1_0
;	isBitvar = 0
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	lda	hl,4(sp)
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
;	genGoto
	jp	00169$
;	genLabel
00165$:
;printf_large.c:688: value.l = va_arg(ap,int);
;	genAddrOf
;	AOP_STK for __print_format__1_0
	lda	hl,34(sp)
	ld	a,l
	ld	d,h
	lda	hl,0(sp)
	ld	(hl+),a
	ld	(hl),d
;	genPlus
;	AOP_STK for 
;	genPlusIncr
	lda	hl,56(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	inc	bc
;	genAssign
;	AOP_STK for 
	dec	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
;	genMinus
	dec	bc
	dec	bc
;	genPointerGet
	ld	e,c
	ld	d,b
	ld	a,(de)
	ld	c,a
	inc	de
	ld	a,(de)
	ld	b,a
;	genCast
;	AOP_STK for __print_format__1_0
	lda	hl,4(sp)
	ld	(hl),c
	inc	hl
	ld	(hl),b
	ld	a,b
	rla	
	sbc	a,a
	inc	hl
	ld	(hl+),a
	ld	(hl),a
;	genAssign (pointer)
;	AOP_STK for __print_format__1_0
;	AOP_STK for __print_format__1_0
;	isBitvar = 0
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	lda	hl,4(sp)
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
;printf_large.c:689: if (!signed_argument)
;	genIfx
;	AOP_STK for __print_format_signed_argument_1_1
	xor	a,a
	lda	hl,43(sp)
	or	a,(hl)
	jp	NZ,00169$
;printf_large.c:691: value.l &= 0xFFFF;
;	genPointerGet
;	AOP_STK for __print_format__1_0
;	AOP_STK for __print_format__1_0
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	lda	hl,4(sp)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
;	genAnd
;	AOP_STK for __print_format__1_0
	ld	(hl-),a
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;	genAssign (pointer)
;	AOP_STK for __print_format__1_0
;	AOP_STK for __print_format__1_0
;	isBitvar = 0
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	lda	hl,4(sp)
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
;	genLabel
00169$:
;printf_large.c:695: if ( signed_argument )
;	genIfx
;	AOP_STK for __print_format_signed_argument_1_1
	xor	a,a
	lda	hl,43(sp)
	or	a,(hl)
	jp	Z,00174$
;printf_large.c:697: if (value.l < 0)
;	genAddrOf
	lda	hl,34(sp)
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for __print_format__1_0
	ld	e,c
	ld	d,b
	ld	a,(de)
	lda	hl,4(sp)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
;	genCmpLt
;	AOP_STK for __print_format__1_0
	ld	(hl),a
	bit	7,a
	jp	Z,00171$
;printf_large.c:698: value.l = -value.l;
;	genPointerGet
;	AOP_STK for __print_format__1_0
	ld	e,c
	ld	d,b
	ld	a,(de)
	lda	hl,4(sp)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
;	genUminus
;	AOP_STK for __print_format__1_0
	ld	de,#0x0000
	ld	a,e
	lda	hl,4(sp)
	sub	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a,(hl)
	push	af
	ld	(hl-),a
	ld	(hl),e
	ld	de,#0x0000
	inc	hl
	inc	hl
	pop	af
	ld	a,e
	sbc	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a,(hl)
	ld	(hl-),a
	ld	(hl),e
;	genAssign (pointer)
;	AOP_STK for __print_format__1_0
;	isBitvar = 0
	ld	e,c
	ld	d,b
	dec	hl
	dec	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
;	genGoto
	jp	00174$
;	genLabel
00171$:
;printf_large.c:700: signed_argument = 0;
;	genAssign
;	AOP_STK for __print_format_signed_argument_1_1
	lda	hl,43(sp)
	ld	(hl),#0x00
;	genLabel
00174$:
;printf_large.c:704: lsd = 1;
;	genAssign
;	AOP_STK for __print_format_lsd_1_1
	lda	hl,31(sp)
	ld	(hl),#0x01
;printf_large.c:706: do {
;	genAssign
;	AOP_STK for __print_format_pstore_4_31
;	AOP_STK for __print_format__1_0
	lda	hl,18(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,0(sp)
	ld	(hl+),a
	ld	(hl),e
;	genAssign
;	AOP_STK for __print_format_length_1_1
	lda	hl,27(sp)
	ld	(hl),#0x00
;	genLabel
00178$:
;printf_large.c:707: value.byte[4] = 0;
;	genAddrOf
	lda	hl,34(sp)
	ld	c,l
	ld	b,h
;	genPlus
;	genPlusIncr
	inc	bc
	inc	bc
	inc	bc
	inc	bc
;	genAssign (pointer)
;	isBitvar = 0
	ld	a,#0x00
	ld	(bc),a
;printf_large.c:709: calculate_digit(&value, radix);
;	genAddrOf
	lda	hl,34(sp)
	ld	c,l
	ld	b,h
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for __print_format_radix_1_1
	lda	hl,30(sp)
	ld	a,(hl)
	push	af
	inc	sp
;	genIpush
	push	bc
;	genCall
	call	_calculate_digit
	lda	sp,3(sp)
;printf_large.c:713: if (!lsd)
;	genIfx
;	AOP_STK for __print_format_lsd_1_1
	xor	a,a
	lda	hl,31(sp)
	or	a,(hl)
	jp	NZ,00176$
;printf_large.c:715: *pstore = (value.byte[4] << 4) | (value.byte[4] >> 4) | *pstore;
;	genAddrOf
	lda	hl,34(sp)
	ld	c,l
	ld	b,h
;	genPlus
;	AOP_STK for __print_format__1_0
;	genPlusIncr
	ld	hl,#0x0004
	add	hl,bc
	ld	a,l
	ld	d,h
	lda	hl,4(sp)
;	genPointerGet
;	AOP_STK for __print_format__1_0
	ld	(hl+),a
	ld	(hl),d
	ld	e,a
	ld	a,(de)
;	genLeftShift
	ld	c,a
	rlca
	rlca
	rlca
	rlca
	and	a,#0xF0
	ld	c,a
;	genPointerGet
;	AOP_STK for __print_format__1_0
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	b,a
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
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genOr
	ld	b,a
	or	a,c
;	genAssign (pointer)
;	AOP_STK for __print_format__1_0
;	isBitvar = 0
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	(de),a
;printf_large.c:716: pstore--;
;	genMinus
;	AOP_STK for __print_format__1_0
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	dec	de
	dec	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
;	genAssign
;	AOP_STK for __print_format__1_0
;	AOP_STK for __print_format_pstore_4_31
	dec	hl
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,18(sp)
	ld	(hl+),a
	ld	(hl),e
;	genGoto
	jp	00177$
;	genLabel
00176$:
;printf_large.c:720: *pstore = value.byte[4];
;	genAddrOf
	lda	hl,34(sp)
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
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	(de),a
;	genLabel
00177$:
;printf_large.c:722: length++;
;	genPlus
;	AOP_STK for __print_format_length_1_1
;	genPlusIncr
	lda	hl,27(sp)
	inc	(hl)
;	genAssign
;	AOP_STK for __print_format_length_1_1
;	AOP_STK for __print_format__1_0
	ld	a,(hl)
	lda	hl,11(sp)
	ld	(hl),a
;printf_large.c:723: lsd = !lsd;
;	genNot
;	AOP_STK for __print_format_lsd_1_1
	xor	a,a
	lda	hl,31(sp)
	or	a,(hl)
	sub	a,#0x01
	ld	a,#0x00
	rla
	ld	(hl),a
;printf_large.c:724: } while( value.ul );
;	genAddrOf
	lda	hl,34(sp)
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for __print_format__1_0
	ld	e,c
	ld	d,b
	ld	a,(de)
	lda	hl,4(sp)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
;	genIfx
;	AOP_STK for __print_format__1_0
	lda	hl,4(sp)
	ld	a,(hl+)
	or	a,(hl)
	inc	hl
	or	a,(hl)
	inc	hl
	or	a,(hl)
	jp	NZ,00178$
;printf_large.c:726: if (width == 0)
;	genAssign
;	AOP_STK for __print_format__1_0
;	AOP_STK for __print_format_pstore_4_31
	lda	hl,0(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,18(sp)
	ld	(hl+),a
	ld	(hl),e
;	genAssign
;	AOP_STK for __print_format_length_1_1
;	AOP_STK for __print_format__1_0
	lda	hl,27(sp)
	ld	a,(hl)
	lda	hl,11(sp)
	ld	(hl),a
;	genIfx
;	AOP_STK for __print_format_width_1_1
	xor	a,a
	lda	hl,29(sp)
	or	a,(hl)
	jp	NZ,00182$
;printf_large.c:731: width=1;
;	genAssign
;	AOP_STK for __print_format_width_1_1
	ld	(hl),#0x01
;	genLabel
00182$:
;printf_large.c:735: if (!zero_padding && !left_justify)
;	genIfx
;	AOP_STK for __print_format_zero_padding_1_1
	xor	a,a
	lda	hl,46(sp)
	or	a,(hl)
	jp	NZ,00187$
;	genIfx
;	AOP_STK for __print_format_left_justify_1_1
	xor	a,a
	inc	hl
	or	a,(hl)
	jp	NZ,00187$
;printf_large.c:737: while ( width > (unsigned char) (length+1) )
;	genPlus
;	AOP_STK for __print_format__1_0
;	genPlusIncr
	lda	hl,11(sp)
	ld	c,(hl)
	inc	c
;	genAssign
;	AOP_STK for __print_format__1_0
;	AOP_STK for __print_format__1_0
	lda	hl,16(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,0(sp)
	ld	(hl+),a
	ld	(hl),e
;	genAssign
;	AOP_STK for __print_format_width_1_1
	lda	hl,29(sp)
	ld	b,(hl)
;	genLabel
00183$:
;	genCmpGt
	ld	a,c
	sub	a,b
	jp	NC,00308$
;printf_large.c:739: OUTPUT_CHAR( ' ', p );
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
;	AOP_STK for 
	lda	hl,54(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
	ld	a,#0x20
	push	af
	inc	sp
;	genPcall
;	AOP_STK for 
	ld	hl,#00356$
	push	hl
	lda	hl,57(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	jp	(hl)
00356$:
	lda	sp,3(sp)
	pop	bc
;	genPlus
;	AOP_STK for __print_format__1_0
;	genPlusIncr
	lda	hl,0(sp)
	inc	(hl)
	jr	NZ,00357$
	inc	hl
	inc	(hl)
00357$:
;	genAssign
;	AOP_STK for __print_format__1_0
;	AOP_STK for __print_format__1_0
	lda	hl,0(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,16(sp)
	ld	(hl+),a
	ld	(hl),e
;printf_large.c:740: width--;
;	genMinus
	dec	b
;	genGoto
	jp	00183$
;	genLabel
00308$:
;	genAssign
;	AOP_STK for __print_format__1_0
;	AOP_STK for __print_format__1_0
	lda	hl,0(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,16(sp)
	ld	(hl+),a
	ld	(hl),e
;	genAssign
;	AOP_STK for __print_format_width_1_1
	lda	hl,29(sp)
	ld	(hl),b
;	genLabel
00187$:
;printf_large.c:744: if (signed_argument) // this now means the original value was negative
;	genIfx
;	AOP_STK for __print_format_signed_argument_1_1
	xor	a,a
	lda	hl,43(sp)
	or	a,(hl)
	jp	Z,00197$
;printf_large.c:746: OUTPUT_CHAR( '-', p );
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	lda	hl,52(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
	ld	a,#0x2D
	push	af
	inc	sp
;	genPcall
;	AOP_STK for 
	ld	hl,#00358$
	push	hl
	lda	hl,55(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	jp	(hl)
00358$:
	lda	sp,3(sp)
;	genPlus
;	AOP_STK for __print_format__1_0
;	genPlusIncr
	lda	hl,16(sp)
	inc	(hl)
	jr	NZ,00359$
	inc	hl
	inc	(hl)
00359$:
;printf_large.c:748: width--;
;	genMinus
;	AOP_STK for __print_format_width_1_1
	lda	hl,29(sp)
	dec	(hl)
;	genGoto
	jp	00198$
;	genLabel
00197$:
;printf_large.c:750: else if (length != 0)
;	genIfx
;	AOP_STK for __print_format__1_0
	xor	a,a
	lda	hl,11(sp)
	or	a,(hl)
	jp	Z,00198$
;printf_large.c:753: if (prefix_sign)
;	genIfx
;	AOP_STK for __print_format_prefix_sign_1_1
	xor	a,a
	lda	hl,45(sp)
	or	a,(hl)
	jp	Z,00192$
;printf_large.c:755: OUTPUT_CHAR( '+', p );
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	lda	hl,52(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
	ld	a,#0x2B
	push	af
	inc	sp
;	genPcall
;	AOP_STK for 
	ld	hl,#00360$
	push	hl
	lda	hl,55(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	jp	(hl)
00360$:
	lda	sp,3(sp)
;	genPlus
;	AOP_STK for __print_format__1_0
;	genPlusIncr
	lda	hl,16(sp)
	inc	(hl)
	jr	NZ,00361$
	inc	hl
	inc	(hl)
00361$:
;printf_large.c:757: width--;
;	genMinus
;	AOP_STK for __print_format_width_1_1
	lda	hl,29(sp)
	dec	(hl)
;	genGoto
	jp	00198$
;	genLabel
00192$:
;printf_large.c:759: else if (prefix_space)
;	genIfx
;	AOP_STK for __print_format_prefix_space_1_1
	xor	a,a
	lda	hl,44(sp)
	or	a,(hl)
	jp	Z,00198$
;printf_large.c:761: OUTPUT_CHAR( ' ', p );
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	lda	hl,52(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
	ld	a,#0x20
	push	af
	inc	sp
;	genPcall
;	AOP_STK for 
	ld	hl,#00362$
	push	hl
	lda	hl,55(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	jp	(hl)
00362$:
	lda	sp,3(sp)
;	genPlus
;	AOP_STK for __print_format__1_0
;	genPlusIncr
	lda	hl,16(sp)
	inc	(hl)
	jr	NZ,00363$
	inc	hl
	inc	(hl)
00363$:
;printf_large.c:763: width--;
;	genMinus
;	AOP_STK for __print_format_width_1_1
	lda	hl,29(sp)
	dec	(hl)
;	genLabel
00198$:
;printf_large.c:768: if (!left_justify)
;	genIfx
;	AOP_STK for __print_format_left_justify_1_1
	xor	a,a
	lda	hl,47(sp)
	or	a,(hl)
	jp	NZ,00206$
;printf_large.c:769: while ( width-- > length )
;	genAssign
;	AOP_STK for __print_format__1_0
;	AOP_STK for __print_format__1_0
	lda	hl,16(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,4(sp)
	ld	(hl+),a
	ld	(hl),e
;	genAssign
;	AOP_STK for __print_format_width_1_1
	lda	hl,29(sp)
	ld	b,(hl)
;	genLabel
00199$:
;	genAssign
	ld	c,b
;	genMinus
	dec	b
;	genAssign
;	AOP_STK for __print_format_width_1_1
	lda	hl,29(sp)
	ld	(hl),b
;	genCmpGt
;	AOP_STK for __print_format__1_0
	lda	hl,11(sp)
	ld	a,(hl)
	sub	a,c
	jp	NC,00309$
;printf_large.c:771: OUTPUT_CHAR( zero_padding ? '0' : ' ', p );
;	genIfx
;	AOP_STK for __print_format_zero_padding_1_1
	xor	a,a
	lda	hl,46(sp)
	or	a,(hl)
	jp	Z,00232$
;	genAssign
	ld	c,#0x30
;	genGoto
	jp	00233$
;	genLabel
00232$:
;	genAssign
	ld	c,#0x20
;	genLabel
00233$:
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
;	AOP_STK for 
	lda	hl,54(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
	ld	a,c
	push	af
	inc	sp
;	genPcall
;	AOP_STK for 
	ld	hl,#00364$
	push	hl
	lda	hl,57(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	jp	(hl)
00364$:
	lda	sp,3(sp)
	pop	bc
;	genPlus
;	AOP_STK for __print_format__1_0
;	genPlusIncr
	lda	hl,4(sp)
	inc	(hl)
	jr	NZ,00365$
	inc	hl
	inc	(hl)
00365$:
;	genAssign
;	AOP_STK for __print_format__1_0
;	AOP_STK for __print_format__1_0
	lda	hl,4(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,16(sp)
	ld	(hl+),a
	ld	(hl),e
;	genGoto
	jp	00199$
;	genLabel
00206$:
;printf_large.c:776: if (width > length)
;	genCmpGt
;	AOP_STK for __print_format_width_1_1
;	AOP_STK for __print_format__1_0
	lda	hl,11(sp)
	ld	a,(hl)
	lda	hl,29(sp)
	sub	a,(hl)
	jp	NC,00203$
;printf_large.c:777: width -= length;
;	genMinus
;	AOP_STK for __print_format_width_1_1
;	AOP_STK for __print_format__1_0
	ld	a,(hl)
	lda	hl,11(sp)
	sub	a,(hl)
	lda	hl,29(sp)
	ld	(hl),a
;	genGoto
	jp	00301$
;	genLabel
00203$:
;printf_large.c:779: width = 0;
;	genAssign
;	AOP_STK for __print_format_width_1_1
	lda	hl,29(sp)
	ld	(hl),#0x00
;printf_large.c:816: return charsOutputted;
;	genGoto
	jp	00301$
;printf_large.c:783: while( length-- )
;	genLabel
00309$:
;	genAssign
;	AOP_STK for __print_format__1_0
;	AOP_STK for __print_format__1_0
	lda	hl,4(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,16(sp)
	ld	(hl+),a
	ld	(hl),e
;	genAssign
;	AOP_STK for __print_format_width_1_1
	lda	hl,29(sp)
	ld	(hl),b
;	genLabel
00301$:
;	genAssign
;	AOP_STK for __print_format_pstore_4_31
;	AOP_STK for __print_format__1_0
	lda	hl,18(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,8(sp)
	ld	(hl+),a
	ld	(hl),e
;	genAssign
;	AOP_STK for __print_format__1_0
;	AOP_STK for __print_format__1_0
	lda	hl,16(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,0(sp)
	ld	(hl+),a
	ld	(hl),e
;	genAssign
;	AOP_STK for __print_format__1_0
;	AOP_STK for __print_format__1_0
	lda	hl,11(sp)
	ld	a,(hl)
	lda	hl,4(sp)
	ld	(hl),a
;	genLabel
00211$:
;	genAssign
;	AOP_STK for __print_format__1_0
	lda	hl,4(sp)
	ld	c,(hl)
;	genMinus
;	AOP_STK for __print_format__1_0
	dec	(hl)
;	genIfx
	xor	a,a
	or	a,c
	jp	Z,00310$
;printf_large.c:785: lsd = !lsd;
;	genNot
;	AOP_STK for __print_format_lsd_1_1
	xor	a,a
	lda	hl,31(sp)
	or	a,(hl)
	sub	a,#0x01
	ld	a,#0x00
	rla
;printf_large.c:786: if (!lsd)
;	genIfx
;	AOP_STK for __print_format_lsd_1_1
	ld	(hl),a
	or	a,a
	jp	NZ,00209$
;printf_large.c:788: pstore++;
;	genPlus
;	AOP_STK for __print_format__1_0
;	genPlusIncr
	lda	hl,8(sp)
	inc	(hl)
	jr	NZ,00366$
	inc	hl
	inc	(hl)
00366$:
;printf_large.c:789: value.byte[4] = *pstore >> 4;
;	genAddrOf
	lda	hl,34(sp)
	ld	c,l
	ld	b,h
;	genPlus
;	AOP_STK for __print_format__1_0
;	genPlusIncr
	ld	hl,#0x0004
	add	hl,bc
	ld	a,l
	ld	d,h
	lda	hl,12(sp)
	ld	(hl+),a
	ld	(hl),d
;	genPointerGet
;	AOP_STK for __print_format__1_0
	lda	hl,8(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	c,a
;	genRightShift
	srl	c
	srl	c
	srl	c
	srl	c
;	genAssign (pointer)
;	AOP_STK for __print_format__1_0
;	isBitvar = 0
	lda	hl,12(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,c
	ld	(de),a
;	genGoto
	jp	00210$
;	genLabel
00209$:
;printf_large.c:793: value.byte[4] = *pstore & 0x0F;
;	genAddrOf
	lda	hl,34(sp)
	ld	c,l
	ld	b,h
;	genPlus
;	AOP_STK for __print_format__1_0
;	genPlusIncr
	ld	hl,#0x0004
	add	hl,bc
	ld	a,l
	ld	d,h
	lda	hl,12(sp)
	ld	(hl+),a
	ld	(hl),d
;	genPointerGet
;	AOP_STK for __print_format__1_0
	lda	hl,8(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;	genAnd
	ld	c,a
	and	a,#0x0F
;	genAssign (pointer)
;	AOP_STK for __print_format__1_0
;	isBitvar = 0
	lda	hl,12(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	(de),a
;	genLabel
00210$:
;printf_large.c:796: output_digit( value.byte[4], lower_case, output_char, p );
;	genAddrOf
	lda	hl,34(sp)
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
	ld	c,a
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	lda	hl,52(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for 
	lda	hl,52(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for __print_format_lower_case_1_1
	lda	hl,43(sp)
	ld	a,(hl)
	push	af
	inc	sp
;	genIpush
	ld	a,c
	push	af
	inc	sp
;	genCall
	call	_output_digit
	lda	sp,6(sp)
;printf_large.c:797: charsOutputted++;
;	genPlus
;	AOP_STK for __print_format__1_0
;	genPlusIncr
	lda	hl,0(sp)
	inc	(hl)
	jr	NZ,00367$
	inc	hl
	inc	(hl)
00367$:
;	genAssign
;	AOP_STK for __print_format__1_0
;	AOP_STK for __print_format__1_0
	lda	hl,0(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,16(sp)
	ld	(hl+),a
	ld	(hl),e
;	genGoto
	jp	00211$
;	genLabel
00310$:
;	genAssign
;	AOP_STK for __print_format__1_0
;	AOP_STK for __print_format__1_0
	lda	hl,0(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,16(sp)
	ld	(hl+),a
	ld	(hl),e
;printf_large.c:802: if (left_justify)
;	genIfx
;	AOP_STK for __print_format_left_justify_1_1
	xor	a,a
	lda	hl,47(sp)
	or	a,(hl)
	jp	Z,00227$
;printf_large.c:803: while (width-- > 0)
;	genAssign
;	AOP_STK for __print_format__1_0
;	AOP_STK for __print_format_charsOutputted_1_1
	lda	hl,0(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,32(sp)
	ld	(hl+),a
	ld	(hl),e
;	genAssign
;	AOP_STK for __print_format_width_1_1
	lda	hl,29(sp)
	ld	c,(hl)
;	genLabel
00214$:
;	genAssign
	ld	b,c
;	genMinus
	dec	c
;	genIfx
	xor	a,a
	or	a,b
	jp	Z,00227$
;printf_large.c:805: OUTPUT_CHAR(' ', p);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
;	AOP_STK for 
	lda	hl,54(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
	ld	a,#0x20
	push	af
	inc	sp
;	genPcall
;	AOP_STK for 
	ld	hl,#00368$
	push	hl
	lda	hl,57(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	jp	(hl)
00368$:
	lda	sp,3(sp)
	pop	bc
;	genPlus
;	AOP_STK for __print_format_charsOutputted_1_1
;	genPlusIncr
	lda	hl,32(sp)
	inc	(hl)
	jr	NZ,00369$
	inc	hl
	inc	(hl)
00369$:
;	genAssign
;	AOP_STK for __print_format_charsOutputted_1_1
;	AOP_STK for __print_format__1_0
	lda	hl,32(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,16(sp)
	ld	(hl+),a
	ld	(hl),e
;	genGoto
	jp	00214$
;	genLabel
00225$:
;printf_large.c:812: OUTPUT_CHAR( c, p );
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	lda	hl,52(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for __print_format_c_1_1
	lda	hl,28(sp)
	ld	a,(hl)
	push	af
	inc	sp
;	genPcall
;	AOP_STK for 
	ld	hl,#00370$
	push	hl
	lda	hl,55(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	jp	(hl)
00370$:
	lda	sp,3(sp)
;	genPlus
;	AOP_STK for __print_format__1_0
;	genPlusIncr
	lda	hl,16(sp)
	inc	(hl)
	jr	NZ,00371$
	inc	hl
	inc	(hl)
00371$:
;	genGoto
	jp	00227$
;	genLabel
00229$:
;printf_large.c:816: return charsOutputted;
;	genRet
;	AOP_STK for __print_format__1_0
; Dump of IC_LEFT: type AOP_STK size 2
;	 aop_stk -32
	lda	hl,16(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genLabel
00230$:
;	genEndFunction
	lda	sp,48(sp)
	ret
__print_format_end::
__str_0:
	.ascii "<NO FLOAT>"
	.db 0x00
	.area _CODE
	.area _CABS
