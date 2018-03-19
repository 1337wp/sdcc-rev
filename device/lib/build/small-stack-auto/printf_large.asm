;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:29 2018
;--------------------------------------------------------
	.module printf_large
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __print_format
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
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
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
;Allocation info for local variables in function 'output_digit'
;------------------------------------------------------------
;output_char               Allocated to stack - offset -4
;p                         Allocated to stack - offset -7
;lower_case                Allocated to registers b0 
;n                         Allocated to registers r2 
;c                         Allocated to registers r2 
;------------------------------------------------------------
;	printf_large.c:110: static void output_digit( unsigned char n, BOOL lower_case, pfn_outputchar output_char, void* p )
;	-----------------------------------------
;	 function output_digit
;	-----------------------------------------
_output_digit:
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
	mov	r2,dpl
;	printf_large.c:112: register unsigned char c = n + (unsigned char)'0';
	mov	a,#0x30
	add	a,r2
;	printf_large.c:114: if (c > (unsigned char)'9')
	mov  r2,a
	add	a,#0xff - 0x39
	jnc	00104$
;	printf_large.c:116: c += (unsigned char)('A' - '0' - 10);
	mov	a,#0x07
	add	a,r2
	mov	r2,a
;	printf_large.c:117: if (lower_case)
	jnb	b0,00104$
;	printf_large.c:118: c += (unsigned char)('a' - 'A');
	mov	a,#0x20
	add	a,r2
	mov	r2,a
00104$:
;	printf_large.c:120: output_char( c, p );
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,#00111$
	push	acc
	mov	a,#(00111$ >> 8)
	push	acc
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	ret
00111$:
	dec	sp
	dec	sp
	dec	sp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'output_2digits'
;------------------------------------------------------------
;output_char               Allocated to stack - offset -4
;p                         Allocated to stack - offset -7
;lower_case                Allocated to registers b0 
;b                         Allocated to registers r2 
;------------------------------------------------------------
;	printf_large.c:141: static void output_2digits( unsigned char b, BOOL lower_case, pfn_outputchar output_char, void* p )
;	-----------------------------------------
;	 function output_2digits
;	-----------------------------------------
_output_2digits:
	push	_bp
	mov	_bp,sp
;	printf_large.c:143: output_digit( b>>4,   lower_case, output_char, p );
	mov	a,dpl
	mov	r2,a
	swap	a
	anl	a,#0x0f
	mov	r3,a
	push	ar2
	push	bits
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	c,b0
	mov	b[0],c
	mov	bits,b
	mov	dpl,r3
	lcall	_output_digit
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	bits
	pop	ar2
;	printf_large.c:144: output_digit( b&0x0F, lower_case, output_char, p );
	anl	ar2,#0x0F
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	c,b0
	mov	b[0],c
	mov	bits,b
	mov	dpl,r2
	lcall	_output_digit
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'calculate_digit'
;------------------------------------------------------------
;radix                     Allocated to stack - offset -3
;value                     Allocated to registers r0 
;ul                        Allocated to registers r2 r3 r4 r5 
;pb4                       Allocated to registers r1 
;i                         Allocated to stack - offset 1
;------------------------------------------------------------
;	printf_large.c:158: static void calculate_digit( value_t _AUTOMEM * value, unsigned char radix )
;	-----------------------------------------
;	 function calculate_digit
;	-----------------------------------------
_calculate_digit:
	push	_bp
	mov	_bp,sp
	inc	sp
	mov	r0,dpl
;	printf_large.c:160: unsigned long ul = value->ul;
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	dec	r0
	dec	r0
	dec	r0
;	printf_large.c:161: unsigned char _AUTOMEM * pb4 = &value->byte[4];
	mov	a,#0x04
	add	a,r0
	mov	r1,a
;	printf_large.c:164: do
	push	ar0
	mov	r0,_bp
	inc	r0
	mov	@r0,#0x20
	pop	ar0
00103$:
;	printf_large.c:166: *pb4 = (*pb4 << 1) | ((ul >> 31) & 0x01);
	push	ar0
	mov	a,@r1
	add	a,@r1
	mov	r7,a
	mov	a,r5
	rl	a
	anl	a,#0x01
	orl	ar7,a
	mov	@r1,ar7
;	printf_large.c:167: ul <<= 1;
	mov	a,r2
	add	a,r2
	mov	r2,a
	mov	a,r3
	rlc	a
	mov	r3,a
	mov	a,r4
	rlc	a
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
;	printf_large.c:169: if (radix <= *pb4 )
	mov	ar6,@r1
	push	ar0
	mov	r0,_bp
	dec	r0
	dec	r0
	dec	r0
	clr	c
	mov	a,r6
	subb	a,@r0
	pop	ar0
	pop	ar0
	jc	00104$
;	printf_large.c:171: *pb4 -= radix;
	mov	ar6,@r1
	push	ar0
	mov	r0,_bp
	dec	r0
	dec	r0
	dec	r0
	mov	a,r6
	clr	c
	subb	a,@r0
	mov	r6,a
	pop	ar0
	mov	@r1,ar6
;	printf_large.c:172: ul |= 1;
	orl	ar2,#0x01
00104$:
;	printf_large.c:174: } while (--i);
	push	ar0
	mov	r0,_bp
	inc	r0
	dec	@r0
	mov	a,@r0
	pop	ar0
	jz	00114$
	sjmp	00103$
00114$:
;	printf_large.c:175: value->ul = ul;
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_print_format'
;------------------------------------------------------------
;pvoid                     Allocated to stack - offset -5
;format                    Allocated to stack - offset -8
;ap                        Allocated to stack - offset -9
;pfn                       Allocated to stack - offset 1
;left_justify              Allocated to registers b0 
;zero_padding              Allocated to registers b1 
;prefix_sign               Allocated to registers b2 
;prefix_space              Allocated to registers b3 
;signed_argument           Allocated to registers b4 
;char_argument             Allocated to registers b5 
;long_argument             Allocated to registers b6 
;float_argument            Allocated to registers b7 
;lower_case                Allocated to stack - offset 3
;value                     Allocated to stack - offset 4
;charsOutputted            Allocated to stack - offset 23
;lsd                       Allocated to registers b5 
;radix                     Allocated to stack - offset 9
;width                     Allocated to stack - offset 10
;decimals                  Allocated to registers r5 
;length                    Allocated to stack - offset 11
;c                         Allocated to registers r4 
;memtype                   Allocated to registers r2 
;store                     Allocated to stack - offset 12
;pstore                    Allocated to registers r2 
;sloc0                     Allocated to stack - offset 18
;sloc1                     Allocated to stack - offset 36
;sloc2                     Allocated to stack - offset 21
;sloc3                     Allocated to stack - offset 23
;sloc4                     Allocated to stack - offset 25
;------------------------------------------------------------
;	printf_large.c:402: int _print_format (pfn_outputchar pfn, void* pvoid, const char *format, va_list ap)
;	-----------------------------------------
;	 function _print_format
;	-----------------------------------------
__print_format:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	mov	a,sp
	add	a,#0x1a
	mov	sp,a
;	printf_large.c:434: charsOutputted = 0;
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	printf_large.c:442: while( c=*format++ )
	mov	a,_bp
	add	a,#0x0c+0x05
	mov	r6,a
00239$:
	push	ar6
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	ar7,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar2,@r0
	mov	dpl,r7
	mov	dph,r6
	mov	b,r2
	lcall	__gptrget
	mov	r3,a
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x01
	add	a,r7
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar2
	mov	ar4,r3
	pop	ar6
	mov	a,r3
	jnz	00328$
	ljmp	00241$
00328$:
;	printf_large.c:444: if ( c=='%' )
	cjne	r4,#0x25,00329$
	sjmp	00330$
00329$:
	ljmp	00237$
00330$:
;	printf_large.c:446: left_justify    = 0;
	clr	b0
;	printf_large.c:447: zero_padding    = 0;
	clr	b1
;	printf_large.c:448: prefix_sign     = 0;
	clr	b2
;	printf_large.c:449: prefix_space    = 0;
	clr	b3
;	printf_large.c:450: signed_argument = 0;
	clr	b4
;	printf_large.c:451: char_argument   = 0;
	clr	b5
;	printf_large.c:452: long_argument   = 0;
	clr	b6
;	printf_large.c:453: float_argument  = 0;
	clr	b7
;	printf_large.c:454: radix           = 0;
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	@r0,#0x00
;	printf_large.c:455: width           = 0;
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	@r0,#0x00
;	printf_large.c:456: decimals        = -1;
	mov	r5,#0xFF
;	printf_large.c:458: get_conversion_spec:
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar7,@r0
00101$:
;	printf_large.c:460: c = *format++;
	push	ar6
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	mov	r2,dpl
	mov	r3,dph
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar7
	mov	ar4,r6
;	printf_large.c:462: if (c=='%') {
	clr	a
	cjne	r4,#0x25,00331$
	inc	a
00331$:
	pop	ar6
	jz	00103$
;	printf_large.c:463: OUTPUT_CHAR(c, p);
	push	ar6
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,#00334$
	push	acc
	mov	a,#(00334$ >> 8)
	push	acc
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r4
	ret
00334$:
	dec	sp
	dec	sp
	dec	sp
	pop	ar6
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00335$
	inc	r0
	inc	@r0
00335$:
;	printf_large.c:464: continue;
	ljmp	00239$
00103$:
;	printf_large.c:467: if (isdigit(c)) {
	push	ar6
	mov	ar6,r4
	cjne	r6,#0x30,00336$
00336$:
	pop	ar6
	jc	00110$
	push	ar6
	mov	ar6,r4
	clr	c
	mov	a,#0x39
	subb	a,r6
	pop	ar6
	jc	00110$
;	printf_large.c:468: if (decimals==-1) {
	cjne	r5,#0xFF,00107$
;	printf_large.c:469: width = 10*width + (c - '0');
	push	ar6
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	a,@r0
	mov	b,#0x0A
	mul	ab
	mov	r6,a
	mov	a,r4
	add	a,#0xd0
	add	a,r6
	mov	r6,a
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	@r0,ar6
;	printf_large.c:470: if (width == 0) {
	pop	ar6
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	a,@r0
	jz	00341$
	ljmp	00101$
00341$:
;	printf_large.c:472: zero_padding = 1;
	setb	b1
	ljmp	00101$
00107$:
;	printf_large.c:475: decimals = 10*decimals + (c-'0');
	push	ar6
	mov	a,r5
	mov	b,#0x0A
	mul	ab
	mov	r6,a
	mov	a,r4
	add	a,#0xd0
	add	a,r6
	mov	r5,a
;	printf_large.c:477: goto get_conversion_spec;
	pop	ar6
	ljmp	00101$
00110$:
;	printf_large.c:480: if (c=='.') {
	cjne	r4,#0x2E,00115$
;	printf_large.c:481: if (decimals==-1) decimals=0;
	cjne	r5,#0xFF,00344$
	sjmp	00345$
00344$:
	ljmp	00101$
00345$:
	mov	r5,#0x00
;	printf_large.c:484: goto get_conversion_spec;
	ljmp	00101$
00115$:
;	printf_large.c:487: if (islower(c))
	push	ar6
	mov	ar6,r4
	cjne	r6,#0x61,00346$
00346$:
	pop	ar6
	jc	00117$
	push	ar6
	mov	ar6,r4
	clr	c
	mov	a,#0x7A
	subb	a,r6
	pop	ar6
	jc	00117$
;	printf_large.c:489: c = toupper(c);
	anl	ar4,#0xDF
;	printf_large.c:490: lower_case = 1;
	mov	r0,_bp
	inc	r0
	inc	r0
	inc	r0
	mov	@r0,#0x01
	sjmp	00118$
00117$:
;	printf_large.c:493: lower_case = 0;
	mov	r0,_bp
	inc	r0
	inc	r0
	inc	r0
	mov	@r0,#0x00
00118$:
;	printf_large.c:495: switch( c )
	cjne	r4,#0x20,00349$
	sjmp	00122$
00349$:
	cjne	r4,#0x2B,00350$
	sjmp	00121$
00350$:
	cjne	r4,#0x2D,00351$
	sjmp	00120$
00351$:
	cjne	r4,#0x42,00352$
	sjmp	00123$
00352$:
	cjne	r4,#0x43,00353$
	sjmp	00125$
00353$:
	cjne	r4,#0x44,00354$
	ljmp	00162$
00354$:
	cjne	r4,#0x46,00355$
	ljmp	00166$
00355$:
	cjne	r4,#0x49,00356$
	ljmp	00162$
00356$:
	cjne	r4,#0x4C,00357$
	sjmp	00124$
00357$:
	cjne	r4,#0x4F,00358$
	ljmp	00163$
00358$:
	cjne	r4,#0x50,00359$
	ljmp	00148$
00359$:
	cjne	r4,#0x53,00360$
	ljmp	00129$
00360$:
	cjne	r4,#0x55,00361$
	ljmp	00164$
00361$:
	cjne	r4,#0x58,00362$
	ljmp	00165$
00362$:
	ljmp	00167$
;	printf_large.c:497: case '-':
00120$:
;	printf_large.c:498: left_justify = 1;
	setb	b0
;	printf_large.c:499: goto get_conversion_spec;
	ljmp	00101$
;	printf_large.c:500: case '+':
00121$:
;	printf_large.c:501: prefix_sign = 1;
	setb	b2
;	printf_large.c:502: goto get_conversion_spec;
	ljmp	00101$
;	printf_large.c:503: case ' ':
00122$:
;	printf_large.c:504: prefix_space = 1;
	setb	b3
;	printf_large.c:505: goto get_conversion_spec;
	ljmp	00101$
;	printf_large.c:506: case 'B':
00123$:
;	printf_large.c:507: char_argument = 1;
	setb	b5
;	printf_large.c:508: goto get_conversion_spec;
	ljmp	00101$
;	printf_large.c:509: case 'L':
00124$:
;	printf_large.c:510: long_argument = 1;
	setb	b6
;	printf_large.c:511: goto get_conversion_spec;
	ljmp	00101$
;	printf_large.c:513: case 'C':
00125$:
;	printf_large.c:514: if( char_argument )
	jnb	b5,00127$
;	printf_large.c:515: c = va_arg(ap,char);
	push	ar6
	mov	a,_bp
	add	a,#0xf7
	mov	r1,a
	mov	a,@r1
	dec	a
	mov	r0,a
	mov	a,_bp
	add	a,#0xf7
	mov	r1,a
	mov	@r1,ar0
	mov	ar6,@r0
	mov	ar4,r6
	pop	ar6
	sjmp	00128$
00127$:
;	printf_large.c:517: c = va_arg(ap,int);
	mov	a,_bp
	add	a,#0xf7
	mov	r1,a
	mov	a,@r1
	add	a,#0xfe
	mov	r0,a
	mov	a,_bp
	add	a,#0xf7
	mov	r1,a
	mov	@r1,ar0
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	dec	r0
	mov	ar4,r2
00128$:
;	printf_large.c:518: OUTPUT_CHAR( c, p );
	push	ar6
	push	bits
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,#00364$
	push	acc
	mov	a,#(00364$ >> 8)
	push	acc
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r4
	ret
00364$:
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar6
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00365$
	inc	r0
	inc	@r0
00365$:
;	printf_large.c:519: break;
	ljmp	00168$
;	printf_large.c:521: case 'S':
00129$:
;	printf_large.c:522: PTR = va_arg(ap,ptr_t);
	push	ar6
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	push	ar0
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	add	a,#0xfd
	mov	r1,a
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	@r0,ar1
	pop	ar0
	mov	ar2,@r1
	inc	r1
	mov	ar3,@r1
	inc	r1
	mov	ar6,@r1
	dec	r1
	dec	r1
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar6
	dec	r0
	dec	r0
;	printf_large.c:532: length = strlen(PTR);
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar6,@r0
	dec	r0
	dec	r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	push	ar5
	push	ar6
	push	bits
	lcall	_strlen
	mov	r2,dpl
	mov	r3,dph
	pop	bits
	pop	ar6
	pop	ar5
	mov	a,_bp
	add	a,#0x12
	mov	r0,a
	mov	@r0,ar2
;	printf_large.c:534: if ( decimals == -1 )
	clr	a
	cjne	r5,#0xFF,00366$
	inc	a
00366$:
	pop	ar6
	jz	00131$
;	printf_large.c:536: decimals = length;
	mov	a,_bp
	add	a,#0x12
	mov	r0,a
	mov	ar5,@r0
00131$:
;	printf_large.c:538: if ( ( !left_justify ) && (length < width) )
	jnb	b0,00369$
	ljmp	00281$
00369$:
	mov	a,_bp
	add	a,#0x12
	mov	r0,a
	mov	a,_bp
	add	a,#0x0a
	mov	r1,a
	clr	c
	mov	a,@r0
	subb	a,@r1
	jc	00370$
	ljmp	00281$
00370$:
;	printf_large.c:540: width -= length;
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	a,_bp
	add	a,#0x12
	mov	r1,a
	mov	a,@r0
	clr	c
	subb	a,@r1
	mov	@r0,a
;	printf_large.c:541: while( width-- != 0 )
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	ar4,@r0
00132$:
	mov	ar7,r4
	dec	r4
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	@r0,ar4
	mov	a,r7
	jz	00321$
;	printf_large.c:543: OUTPUT_CHAR( ' ', p );
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	bits
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,#00372$
	push	acc
	mov	a,#(00372$ >> 8)
	push	acc
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,#0x20
	ret
00372$:
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	inc	r2
	cjne	r2,#0x00,00373$
	inc	r3
00373$:
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
;	printf_large.c:547: while ( (c = *PTR)  && (decimals-- > 0))
	sjmp	00132$
00321$:
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	@r0,ar4
00281$:
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	mov	a,_bp
	add	a,#0x15
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
00139$:
	push	ar6
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	dec	r0
	dec	r0
	mov	dpl,r6
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r4,a
	pop	ar6
	jnz	00374$
	ljmp	00322$
00374$:
	mov	ar2,r5
	dec	r5
	clr	c
	mov	a,#(0x00 ^ 0x80)
	mov	b,r2
	xrl	b,#0x80
	subb	a,b
	jnc	00322$
;	printf_large.c:549: OUTPUT_CHAR( c, p );
	push	ar5
	push	ar6
	push	bits
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,#00376$
	push	acc
	mov	a,#(00376$ >> 8)
	push	acc
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r4
	ret
00376$:
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar6
	pop	ar5
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00377$
	inc	r0
	inc	@r0
00377$:
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	a,_bp
	add	a,#0x17
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	printf_large.c:550: PTR++;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar7,@r0
	dec	r0
	dec	r0
	inc	r2
	cjne	r2,#0x00,00378$
	inc	r3
00378$:
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar7
	dec	r0
	dec	r0
	ljmp	00139$
00322$:
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	a,_bp
	add	a,#0x17
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	printf_large.c:553: if ( left_justify && (length < width))
	jb	b0,00379$
	ljmp	00168$
00379$:
	mov	a,_bp
	add	a,#0x12
	mov	r0,a
	mov	a,_bp
	add	a,#0x0a
	mov	r1,a
	clr	c
	mov	a,@r0
	subb	a,@r1
	jc	00380$
	ljmp	00168$
00380$:
;	printf_large.c:555: width -= length;
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	a,_bp
	add	a,#0x12
	mov	r1,a
	mov	a,@r0
	clr	c
	subb	a,@r1
	mov	@r0,a
;	printf_large.c:556: while( width-- != 0 )
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	ar7,@r0
00142$:
	mov	ar2,r7
	dec	r7
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	@r0,ar7
	mov	a,r2
	jnz	00381$
	ljmp	00323$
00381$:
;	printf_large.c:558: OUTPUT_CHAR( ' ', p );
	push	ar3
	push	ar4
	push	ar6
	push	ar7
	push	bits
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,#00382$
	push	acc
	mov	a,#(00382$ >> 8)
	push	acc
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,#0x20
	ret
00382$:
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar7
	pop	ar6
	pop	ar4
	pop	ar3
	inc	r3
	cjne	r3,#0x00,00383$
	inc	r4
00383$:
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	printf_large.c:563: case 'P':
	sjmp	00142$
00148$:
;	printf_large.c:564: PTR = va_arg(ap,ptr_t);
	push	ar6
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	push	ar0
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	add	a,#0xfd
	mov	r1,a
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	@r0,ar1
	pop	ar0
	mov	ar2,@r1
	inc	r1
	mov	ar3,@r1
	inc	r1
	mov	ar6,@r1
	dec	r1
	dec	r1
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar6
	dec	r0
	dec	r0
;	printf_large.c:587: unsigned char memtype = value.byte[2];
	mov	a,_bp
	add	a,#0x04
	add	a,#0x02
	mov	r0,a
	mov	ar2,@r0
;	printf_large.c:588: if (memtype > 0x80)
	clr	c
	mov	a,#0x80
	subb	a,r2
	clr	a
	rlc	a
	pop	ar6
	jz	00156$
;	printf_large.c:589: c = 'C';
	mov	r4,#0x43
	sjmp	00157$
00156$:
;	printf_large.c:590: else if (memtype > 0x60)
	mov	a,r2
	add	a,#0xff - 0x60
	jnc	00153$
;	printf_large.c:591: c = 'P';
	mov	r4,#0x50
	sjmp	00157$
00153$:
;	printf_large.c:592: else if (memtype > 0x40)
	mov	a,r2
	add	a,#0xff - 0x40
	jnc	00150$
;	printf_large.c:593: c = 'I';
	mov	r4,#0x49
	sjmp	00157$
00150$:
;	printf_large.c:595: c = 'X';
	mov	r4,#0x58
00157$:
;	printf_large.c:597: OUTPUT_CHAR(c, p);
	push	ar4
	push	ar6
	push	bits
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,#00387$
	push	acc
	mov	a,#(00387$ >> 8)
	push	acc
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r4
	ret
00387$:
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar6
	pop	ar4
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00388$
	inc	r0
	inc	@r0
00388$:
;	printf_large.c:598: OUTPUT_CHAR(':', p);
	push	ar4
	push	ar6
	push	bits
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,#00389$
	push	acc
	mov	a,#(00389$ >> 8)
	push	acc
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,#0x3A
	ret
00389$:
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar6
	pop	ar4
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00390$
	inc	r0
	inc	@r0
00390$:
;	printf_large.c:599: OUTPUT_CHAR('0', p);
	push	ar4
	push	ar6
	push	bits
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,#00391$
	push	acc
	mov	a,#(00391$ >> 8)
	push	acc
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,#0x30
	ret
00391$:
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar6
	pop	ar4
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00392$
	inc	r0
	inc	@r0
00392$:
;	printf_large.c:600: OUTPUT_CHAR('x', p);
	push	ar4
	push	ar6
	push	bits
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,#00393$
	push	acc
	mov	a,#(00393$ >> 8)
	push	acc
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,#0x78
	ret
00393$:
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar6
	pop	ar4
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00394$
	inc	r0
	inc	@r0
00394$:
;	printf_large.c:601: if ((c != 'I' /* idata */) &&
	cjne	r4,#0x49,00395$
	sjmp	00159$
00395$:
;	printf_large.c:602: (c != 'P' /* pdata */))
	cjne	r4,#0x50,00396$
	sjmp	00159$
00396$:
;	printf_large.c:604: OUTPUT_2DIGITS( value.byte[1] );
	mov	a,_bp
	add	a,#0x04
	inc	a
	mov	r0,a
	mov	ar2,@r0
	push	ar6
	push	bits
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	r0,_bp
	inc	r0
	inc	r0
	inc	r0
	mov	a,@r0
	add	a,#0xff
	mov	b[0],c
	mov	bits,b
	mov	dpl,r2
	lcall	_output_2digits
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	bits
	pop	ar6
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
00159$:
;	printf_large.c:606: OUTPUT_2DIGITS( value.byte[0] );
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	ar2,@r0
	push	ar6
	push	bits
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	r0,_bp
	inc	r0
	inc	r0
	inc	r0
	mov	a,@r0
	add	a,#0xff
	mov	b[0],c
	mov	bits,b
	mov	dpl,r2
	lcall	_output_2digits
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	bits
	pop	ar6
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	printf_large.c:613: break;
;	printf_large.c:616: case 'I':
	sjmp	00168$
00162$:
;	printf_large.c:617: signed_argument = 1;
	setb	b4
;	printf_large.c:618: radix = 10;
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	@r0,#0x0A
;	printf_large.c:619: break;
;	printf_large.c:621: case 'O':
	sjmp	00168$
00163$:
;	printf_large.c:622: radix = 8;
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	@r0,#0x08
;	printf_large.c:623: break;
;	printf_large.c:625: case 'U':
	sjmp	00168$
00164$:
;	printf_large.c:626: radix = 10;
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	@r0,#0x0A
;	printf_large.c:627: break;
;	printf_large.c:629: case 'X':
	sjmp	00168$
00165$:
;	printf_large.c:630: radix = 16;
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	@r0,#0x10
;	printf_large.c:631: break;
;	printf_large.c:633: case 'F':
	sjmp	00168$
00166$:
;	printf_large.c:634: float_argument=1;
	setb	b7
;	printf_large.c:635: break;
;	printf_large.c:637: default:
	sjmp	00168$
00167$:
;	printf_large.c:639: OUTPUT_CHAR( c, p );
	push	ar6
	push	bits
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,#00397$
	push	acc
	mov	a,#(00397$ >> 8)
	push	acc
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r4
	ret
00397$:
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar6
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00398$
	inc	r0
	inc	@r0
00398$:
;	printf_large.c:816: return charsOutputted;
;	printf_large.c:641: }
	sjmp	00168$
00323$:
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	@r0,ar7
00168$:
;	printf_large.c:643: if (float_argument) {
	jb	b7,00399$
	ljmp	00234$
00399$:
;	printf_large.c:644: value.f=va_arg(ap,float);
	push	ar6
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	push	ar0
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	add	a,#0xfc
	mov	r1,a
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	@r0,ar1
	pop	ar0
	mov	ar2,@r1
	inc	r1
	mov	ar3,@r1
	inc	r1
	mov	ar7,@r1
	inc	r1
	mov	ar6,@r1
	dec	r1
	dec	r1
	dec	r1
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	dec	r0
	dec	r0
	dec	r0
;	printf_large.c:646: PTR="<NO FLOAT>";
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,#__str_0
	inc	r0
	mov	@r0,#(__str_0 >> 8)
	inc	r0
	mov	@r0,#0x80
	dec	r0
	dec	r0
;	printf_large.c:816: return charsOutputted;
	pop	ar6
;	printf_large.c:647: while (c=*PTR++)
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	mov	a,_bp
	add	a,#0x19
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
00169$:
	push	ar6
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	ar7,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar4,@r0
	dec	r0
	dec	r0
	mov	a,#0x01
	add	a,r7
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	ar3,r4
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	dec	r0
	dec	r0
	mov	dpl,r7
	mov	dph,r6
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	mov	r4,a
	pop	ar6
	mov	a,r7
	jnz	00400$
	ljmp	00239$
00400$:
;	printf_large.c:649: OUTPUT_CHAR (c, p);
	push	ar6
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,#00401$
	push	acc
	mov	a,#(00401$ >> 8)
	push	acc
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r4
	ret
00401$:
	dec	sp
	dec	sp
	dec	sp
	pop	ar6
	mov	a,_bp
	add	a,#0x19
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00402$
	inc	r0
	inc	@r0
00402$:
	mov	a,_bp
	add	a,#0x19
	mov	r0,a
	mov	a,_bp
	add	a,#0x17
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	ljmp	00169$
00234$:
;	printf_large.c:666: } else if (radix != 0)
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,@r0
	jnz	00403$
	ljmp	00239$
00403$:
;	printf_large.c:671: unsigned char MEM_SPACE_BUF_PP *pstore = &store[5];
	mov	ar2,r6
;	printf_large.c:674: if (char_argument)
	jnb	b5,00180$
;	printf_large.c:676: value.l = va_arg(ap,char);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	push	ar0
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	dec	a
	mov	r1,a
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	@r0,ar1
	pop	ar0
	mov	a,@r1
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	r5,a
	mov	r7,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar7
	dec	r0
	dec	r0
	dec	r0
;	printf_large.c:677: if (!signed_argument)
	jnb	b4,00405$
	ljmp	00181$
00405$:
;	printf_large.c:679: value.l &= 0xFF;
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar7,@r0
	dec	r0
	dec	r0
	dec	r0
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r7,#0x00
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar7
	dec	r0
	dec	r0
	dec	r0
	ljmp	00181$
00180$:
;	printf_large.c:682: else if (long_argument)
	jnb	b6,00177$
;	printf_large.c:684: value.l = va_arg(ap,long);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	push	ar0
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	add	a,#0xfc
	mov	r1,a
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	@r0,ar1
	pop	ar0
	mov	ar3,@r1
	inc	r1
	mov	ar4,@r1
	inc	r1
	mov	ar5,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
	dec	r1
	dec	r1
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar7
	dec	r0
	dec	r0
	dec	r0
	sjmp	00181$
00177$:
;	printf_large.c:688: value.l = va_arg(ap,int);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	push	ar0
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	add	a,#0xfe
	mov	r1,a
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	@r0,ar1
	pop	ar0
	mov	ar3,@r1
	inc	r1
	mov	ar4,@r1
	dec	r1
	mov	a,r4
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	r7,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar7
	dec	r0
	dec	r0
	dec	r0
;	printf_large.c:689: if (!signed_argument)
	jb	b4,00181$
;	printf_large.c:691: value.l &= 0xFFFF;
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar7,@r0
	dec	r0
	dec	r0
	dec	r0
	mov	r5,#0x00
	mov	r7,#0x00
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar7
	dec	r0
	dec	r0
	dec	r0
00181$:
;	printf_large.c:695: if ( signed_argument )
	jnb	b4,00186$
;	printf_large.c:697: if (value.l < 0)
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar7,@r0
	dec	r0
	dec	r0
	dec	r0
	mov	a,r7
	jnb	acc.7,00183$
;	printf_large.c:698: value.l = -value.l;
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar7,@r0
	dec	r0
	dec	r0
	dec	r0
	clr	c
	clr	a
	subb	a,r3
	mov	r3,a
	clr	a
	subb	a,r4
	mov	r4,a
	clr	a
	subb	a,r5
	mov	r5,a
	clr	a
	subb	a,r7
	mov	r7,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar7
	dec	r0
	dec	r0
	dec	r0
	sjmp	00186$
00183$:
;	printf_large.c:700: signed_argument = 0;
	clr	b4
00186$:
;	printf_large.c:704: lsd = 1;
	setb	b5
;	printf_large.c:706: do {
	mov	ar0,r2
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	mov	@r1,#0x00
00190$:
;	printf_large.c:707: value.byte[4] = 0;
	mov	a,_bp
	add	a,#0x04
	add	a,#0x04
	mov	r1,a
	mov	@r1,#0x00
;	printf_large.c:709: calculate_digit(&value, radix);
	mov	a,_bp
	add	a,#0x04
	mov	r4,a
	push	ar6
	push	ar0
	push	bits
	mov	a,_bp
	add	a,#0x09
	mov	r1,a
	mov	a,@r1
	push	acc
	mov	dpl,r4
	lcall	_calculate_digit
	dec	sp
	pop	bits
	pop	ar0
	pop	ar6
;	printf_large.c:713: if (!lsd)
	jb	b5,00188$
;	printf_large.c:715: *pstore = (value.byte[4] << 4) | (value.byte[4] >> 4) | *pstore;
	mov	a,_bp
	add	a,#0x04
	add	a,#0x04
	mov	r1,a
	mov	a,@r1
	swap	a
	mov	r4,a
	mov	a,@r0
	mov	r5,a
	orl	ar4,a
	mov	@r0,ar4
;	printf_large.c:716: pstore--;
	dec	r0
	mov	ar2,r0
	sjmp	00189$
00188$:
;	printf_large.c:720: *pstore = value.byte[4];
	mov	a,_bp
	add	a,#0x04
	add	a,#0x04
	mov	r1,a
	mov	ar4,@r1
	mov	@r0,ar4
00189$:
;	printf_large.c:722: length++;
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	inc	@r1
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
	push	ar0
	mov	a,_bp
	add	a,#0x12
	mov	r0,a
	mov	a,@r1
	mov	@r0,a
	pop	ar0
;	printf_large.c:723: lsd = !lsd;
	cpl	b5
;	printf_large.c:724: } while( value.ul );
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	ar4,@r1
	inc	r1
	mov	ar5,@r1
	inc	r1
	mov	ar7,@r1
	inc	r1
	mov	ar3,@r1
	dec	r1
	dec	r1
	dec	r1
	mov	a,r4
	orl	a,r5
	orl	a,r7
	orl	a,r3
	jz	00411$
	ljmp	00190$
00411$:
;	printf_large.c:726: if (width == 0)
	mov	ar2,r0
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,_bp
	add	a,#0x12
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	a,@r0
	jnz	00194$
;	printf_large.c:731: width=1;
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	@r0,#0x01
00194$:
;	printf_large.c:735: if (!zero_padding && !left_justify)
	jnb	b1,00413$
	ljmp	00199$
00413$:
	jnb	b0,00414$
	ljmp	00199$
00414$:
;	printf_large.c:737: while ( width > (unsigned char) (length+1) )
	mov	a,_bp
	add	a,#0x12
	mov	r0,a
	mov	a,@r0
	inc	a
	mov	r3,a
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	ar7,@r0
00195$:
	clr	c
	mov	a,r3
	subb	a,r7
	jnc	00325$
;	printf_large.c:739: OUTPUT_CHAR( ' ', p );
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	push	bits
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,#00416$
	push	acc
	mov	a,#(00416$ >> 8)
	push	acc
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,#0x20
	ret
00416$:
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	inc	r4
	cjne	r4,#0x00,00417$
	inc	r5
00417$:
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
;	printf_large.c:740: width--;
	dec	r7
	sjmp	00195$
00325$:
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	@r0,ar7
00199$:
;	printf_large.c:744: if (signed_argument) // this now means the original value was negative
	jnb	b4,00209$
;	printf_large.c:746: OUTPUT_CHAR( '-', p );
	push	ar2
	push	ar6
	push	bits
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,#00419$
	push	acc
	mov	a,#(00419$ >> 8)
	push	acc
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,#0x2D
	ret
00419$:
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar6
	pop	ar2
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00420$
	inc	r0
	inc	@r0
00420$:
;	printf_large.c:748: width--;
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	dec	@r0
	ljmp	00210$
00209$:
;	printf_large.c:750: else if (length != 0)
	mov	a,_bp
	add	a,#0x12
	mov	r0,a
	mov	a,@r0
	jnz	00421$
	ljmp	00210$
00421$:
;	printf_large.c:753: if (prefix_sign)
	jnb	b2,00204$
;	printf_large.c:755: OUTPUT_CHAR( '+', p );
	push	ar2
	push	ar6
	push	bits
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,#00423$
	push	acc
	mov	a,#(00423$ >> 8)
	push	acc
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,#0x2B
	ret
00423$:
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar6
	pop	ar2
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00424$
	inc	r0
	inc	@r0
00424$:
;	printf_large.c:757: width--;
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	dec	@r0
	sjmp	00210$
00204$:
;	printf_large.c:759: else if (prefix_space)
	jnb	b3,00210$
;	printf_large.c:761: OUTPUT_CHAR( ' ', p );
	push	ar2
	push	ar6
	push	bits
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,#00426$
	push	acc
	mov	a,#(00426$ >> 8)
	push	acc
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,#0x20
	ret
00426$:
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar6
	pop	ar2
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00427$
	inc	r0
	inc	@r0
00427$:
;	printf_large.c:763: width--;
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	dec	@r0
00210$:
;	printf_large.c:768: if (!left_justify)
	jnb	b0,00428$
	ljmp	00218$
00428$:
;	printf_large.c:769: while ( width-- > length )
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	ar5,@r0
00211$:
	mov	ar7,r5
	dec	r5
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	@r0,ar5
	mov	a,_bp
	add	a,#0x12
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r7
	jc	00429$
	ljmp	00326$
00429$:
;	printf_large.c:771: OUTPUT_CHAR( zero_padding ? '0' : ' ', p );
	jnb	b1,00244$
	mov	r7,#0x30
	sjmp	00245$
00244$:
	mov	r7,#0x20
00245$:
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	bits
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,#00431$
	push	acc
	mov	a,#(00431$ >> 8)
	push	acc
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r7
	ret
00431$:
	dec	sp
	dec	sp
	dec	sp
	pop	bits
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	inc	r3
	cjne	r3,#0x00,00432$
	inc	r4
00432$:
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	sjmp	00211$
00218$:
;	printf_large.c:776: if (width > length)
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	a,_bp
	add	a,#0x12
	mov	r1,a
	clr	c
	mov	a,@r1
	subb	a,@r0
	jnc	00215$
;	printf_large.c:777: width -= length;
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	a,_bp
	add	a,#0x12
	mov	r1,a
	mov	a,@r0
	clr	c
	subb	a,@r1
	mov	@r0,a
	sjmp	00318$
00215$:
;	printf_large.c:779: width = 0;
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	@r0,#0x00
;	printf_large.c:816: return charsOutputted;
;	printf_large.c:783: while( length-- )
	sjmp	00318$
00326$:
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	@r0,ar5
00318$:
	mov	ar0,r2
	mov	a,_bp
	add	a,#0x17
	mov	r1,a
	mov	ar2,@r1
	inc	r1
	mov	ar3,@r1
	mov	a,_bp
	add	a,#0x12
	mov	r1,a
	mov	ar4,@r1
00223$:
	mov	ar5,r4
	dec	r4
	mov	a,r5
	jnz	00434$
	ljmp	00327$
00434$:
;	printf_large.c:785: lsd = !lsd;
	cpl	b5
;	printf_large.c:786: if (!lsd)
	jb	b5,00221$
;	printf_large.c:788: pstore++;
	inc	r0
;	printf_large.c:789: value.byte[4] = *pstore >> 4;
	mov	a,_bp
	add	a,#0x04
	add	a,#0x04
	mov	r1,a
	mov	a,@r0
	swap	a
	anl	a,#0x0f
	mov	r5,a
	mov	@r1,a
	sjmp	00222$
00221$:
;	printf_large.c:793: value.byte[4] = *pstore & 0x0F;
	mov	a,_bp
	add	a,#0x04
	add	a,#0x04
	mov	r1,a
	mov	ar5,@r0
	mov	a,#0x0F
	anl	a,r5
	mov	@r1,a
00222$:
;	printf_large.c:796: output_digit( value.byte[4], lower_case, output_char, p );
	mov	a,_bp
	add	a,#0x04
	add	a,#0x04
	mov	r1,a
	mov	ar5,@r1
	push	ar2
	push	ar3
	push	ar4
	push	ar6
	push	ar0
	push	bits
	mov	a,_bp
	add	a,#0xfb
	mov	r1,a
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	mov	r1,_bp
	inc	r1
	inc	r1
	inc	r1
	mov	a,@r1
	add	a,#0xff
	mov	b[0],c
	mov	bits,b
	mov	dpl,r5
	lcall	_output_digit
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	bits
	pop	ar0
	pop	ar6
	pop	ar4
	pop	ar3
	pop	ar2
;	printf_large.c:797: charsOutputted++;
	inc	r2
	cjne	r2,#0x00,00436$
	inc	r3
00436$:
	mov	a,_bp
	add	a,#0x17
	mov	r1,a
	mov	@r1,ar2
	inc	r1
	mov	@r1,ar3
	ljmp	00223$
00327$:
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
;	printf_large.c:802: if (left_justify)
	jb	b0,00437$
	ljmp	00239$
00437$:
;	printf_large.c:803: while (width-- > 0)
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	ar4,@r0
00226$:
	mov	ar5,r4
	dec	r4
	mov	a,r5
	jnz	00438$
	ljmp	00239$
00438$:
;	printf_large.c:805: OUTPUT_CHAR(' ', p);
	push	ar2
	push	ar3
	push	ar4
	push	ar6
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,#00439$
	push	acc
	mov	a,#(00439$ >> 8)
	push	acc
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,#0x20
	ret
00439$:
	dec	sp
	dec	sp
	dec	sp
	pop	ar6
	pop	ar4
	pop	ar3
	pop	ar2
	inc	r2
	cjne	r2,#0x00,00440$
	inc	r3
00440$:
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	sjmp	00226$
00237$:
;	printf_large.c:812: OUTPUT_CHAR( c, p );
	push	ar6
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,#00441$
	push	acc
	mov	a,#(00441$ >> 8)
	push	acc
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r4
	ret
00441$:
	dec	sp
	dec	sp
	dec	sp
	pop	ar6
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00442$
	inc	r0
	inc	@r0
00442$:
	ljmp	00239$
00241$:
;	printf_large.c:816: return charsOutputted;
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_0:
	.ascii "<NO FLOAT>"
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
