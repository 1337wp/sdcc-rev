;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:21 2018
;--------------------------------------------------------
	.module ser_ir
	.optsdcc -mds390 --model-flat24
	
;--------------------------------------------------------
; CPU specific extensions
;--------------------------------------------------------
.flat24 on		; 24 bit flat addressing
dpl1	=	0x84
dph1	=	0x85
dps	=	0x86
dpx	=	0x93
dpx1	=	0x95
esp	=	0x9B
ap	=	0x9C
_ap	=	0x9C
mcnt0	=	0xD1
mcnt1	=	0xD2
ma	=	0xD3
mb	=	0xD4
mc	=	0xD5
F1	=	0xD1	; user flag
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ser_gets_PARM_2
	.globl _ser_init
	.globl _ser_handler
	.globl _ser_putc
	.globl _ser_getc
	.globl _ser_puts
	.globl _ser_gets
	.globl _ser_can_xmt
	.globl _ser_can_rcv
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
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
_busy:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
_rbuf:
	.ds 8
_xbuf:
	.ds 4
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_rcnt:
	.ds 1
_xcnt:
	.ds 1
_rpos:
	.ds 1
_xpos:
	.ds 1
_ser_gets_PARM_2:
	.ds 1
_ser_gets_s_1_1:
	.ds 4
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
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
;Allocation info for local variables in function 'ser_init'
;------------------------------------------------------------
;------------------------------------------------------------
;	ser_ir.c:48: void ser_init (void)
;	-----------------------------------------
;	 function ser_init
;	-----------------------------------------
_ser_init:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	ser_ir.c:50: ES = 0;
;	genAssign: resultIsFar = FALSE
	clr	_ES
;	ser_ir.c:51: rcnt = xcnt = rpos = xpos = 0;  /* init buffers */
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_xpos
;	genAssign: resultIsFar = TRUE
;	genAssign: resultIsFar = TRUE
;	genAssign: resultIsFar = TRUE
	clr   a
	movx  @dptr,a
	mov   dptr,#_rpos
	movx  @dptr,a
	mov   dptr,#_xcnt
	movx  @dptr,a
	mov   dptr,#_rcnt
	movx  @dptr,a
;	ser_ir.c:52: busy = 0;
;	genAssign: resultIsFar = FALSE
	clr	_busy
;	ser_ir.c:53: SCON = 0x50;
;	genAssign: resultIsFar = FALSE
	mov	_SCON,#0x50
;	ser_ir.c:54: PCON |= 0x80;                   /* SMOD = 1; */
	orl	_PCON,#0x80
;	ser_ir.c:55: TMOD &= 0x0f;                   /* use timer 1 */
	anl	_TMOD,#0x0F
;	ser_ir.c:56: TMOD |= 0x20;
	orl	_TMOD,#0x20
;	ser_ir.c:57: TL1 = -3; TH1 = -3; TR1 = 1;    /* 19200bps with 11.059MHz crystal */
;	genAssign: resultIsFar = FALSE
	mov	_TL1,#0xFD
;	genAssign: resultIsFar = FALSE
	mov	_TH1,#0xFD
;	genAssign: resultIsFar = FALSE
	setb	_TR1
;	ser_ir.c:58: ES = 1;
;	genAssign: resultIsFar = FALSE
	setb	_ES
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ser_handler'
;------------------------------------------------------------
;------------------------------------------------------------
;	ser_ir.c:61: void ser_handler (void) __interrupt 4
;	-----------------------------------------
;	 function ser_handler
;	-----------------------------------------
_ser_handler:
	push	acc
	push	dpl
	push	dph
	push	dpx
	push	ar2
	push	ar0
	push	psw
	mov	psw,#0x00
;	ser_ir.c:63: if (RI) {
;	ser_ir.c:64: RI = 0;
;	genAssign: resultIsFar = FALSE
	jbc     _RI,00118$
	sjmp    00104$
00118$:
;	ser_ir.c:66: if (rcnt < RBUFLEN)
	mov	dptr,#_rcnt
	movx	a,@dptr
	cjne	a,#0x08,00119$
00119$:
	jnc  00104$
00120$:
;	ser_ir.c:67: rbuf [(unsigned char)(rpos+rcnt++) % RBUFLEN] = SBUF;
	mov	dptr,#_rcnt
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#_rcnt
	mov	a,#0x01
	add	a,r2
	movx	@dptr,a
	mov	dptr,#_rpos
	movx	a,@dptr
	add	a,r2
	anl  a,#0x07
	mov  r2,a
	add	a,#_rbuf
	mov     r0,a
	mov	a,_SBUF
	movx	@r0,a
00104$:
;	ser_ir.c:69: if (TI) {
;	ser_ir.c:70: TI = 0;
;	genAssign: resultIsFar = FALSE
	jbc     _TI,00121$
	sjmp    00111$
00121$:
;	ser_ir.c:71: if (busy = xcnt) {   /* Assignment, _not_ comparison! */
	mov	dptr,#_xcnt
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	add	a,#0xFF
	mov	_busy,c
	mov	dptr,#_xcnt
	movx	a,@dptr
	jz  00111$
00122$:
;	ser_ir.c:72: xcnt--;
	mov	dptr,#_xcnt
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov  r2,a
	dec	a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_xcnt
	movx	@dptr,a
;	ser_ir.c:73: SBUF = xbuf [xpos++];
	mov	dptr,#_xpos
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#_xpos
	mov	a,#0x01
	add	a,r2
	movx	@dptr,a
	mov	a,r2
	add	a,#_xbuf
	mov	r0,a
	movx	a,@r0
	mov	_SBUF,a
;	ser_ir.c:74: if (xpos >= XBUFLEN)
	mov	dptr,#_xpos
	movx	a,@dptr
	cjne	a,#0x04,00123$
00123$:
	jc   00111$
00124$:
;	ser_ir.c:75: xpos = 0;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_xpos
	clr  a
	movx	@dptr,a
00111$:
	pop	psw
	pop	ar0
	pop	ar2
	pop	dpx
	pop	dph
	pop	dpl
	pop	acc
	reti
;	eliminated unneeded push/pop ar1
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop dpl1
;	eliminated unneeded push/pop dph1
;	eliminated unneeded push/pop dpx1
;	eliminated unneeded push/pop dps
;	eliminated unneeded push/pop ap
;------------------------------------------------------------
;Allocation info for local variables in function 'ser_putc'
;------------------------------------------------------------
;c                         Allocated to registers r2 
;------------------------------------------------------------
;	ser_ir.c:80: void ser_putc (unsigned char c)
;	-----------------------------------------
;	 function ser_putc
;	-----------------------------------------
_ser_putc:
	mov	r2,dpl
;	ser_ir.c:82: while (xcnt >= XBUFLEN) /* wait for room in buffer */
00101$:
	mov	dptr,#_xcnt
	movx	a,@dptr
	cjne	a,#0x04,00112$
00112$:
	jnc  00101$
00113$:
;	ser_ir.c:84: ES = 0;
;	genAssign: resultIsFar = FALSE
	clr	_ES
;	ser_ir.c:85: if (busy) {
	jnb  _busy,00105$
00114$:
;	ser_ir.c:86: xbuf[(unsigned char)(xpos+xcnt++) % XBUFLEN] = c;
	mov	dptr,#_xcnt
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_xcnt
	mov	a,#0x01
	add	a,r3
	movx	@dptr,a
	mov	dptr,#_xpos
	movx	a,@dptr
	add	a,r3
	anl  a,#0x03
	mov  r3,a
	add	a,#_xbuf
	mov     r0,a
	mov  a,r2
	movx	@r0,a
	sjmp 00106$
00105$:
;	ser_ir.c:88: SBUF = c;
;	genAssign: resultIsFar = FALSE
	mov	_SBUF,r2
;	ser_ir.c:89: busy = 1;
;	genAssign: resultIsFar = FALSE
	setb	_busy
00106$:
;	ser_ir.c:91: ES = 1;
;	genAssign: resultIsFar = FALSE
	setb	_ES
00107$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ser_getc'
;------------------------------------------------------------
;c                         Allocated to registers r2 
;------------------------------------------------------------
;	ser_ir.c:94: unsigned char ser_getc (void)
;	-----------------------------------------
;	 function ser_getc
;	-----------------------------------------
_ser_getc:
;	ser_ir.c:97: while (!rcnt)   /* wait for character */
00101$:
	mov	dptr,#_rcnt
	movx	a,@dptr
	jz  00101$
00111$:
;	ser_ir.c:99: ES = 0;
;	genAssign: resultIsFar = FALSE
	clr	_ES
;	ser_ir.c:100: rcnt--;
	mov	dptr,#_rcnt
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov  r2,a
	dec	a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_rcnt
	movx	@dptr,a
;	ser_ir.c:101: c = rbuf [rpos++];
	mov	dptr,#_rpos
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#_rpos
	mov	a,#0x01
	add	a,r2
	movx	@dptr,a
	mov	a,r2
	add	a,#_rbuf
	mov	r0,a
	movx	a,@r0
	mov	r2,a
;	ser_ir.c:102: if (rpos >= RBUFLEN)
	mov	dptr,#_rpos
	movx	a,@dptr
	cjne	a,#0x08,00112$
00112$:
	jc   00105$
00113$:
;	ser_ir.c:103: rpos = 0;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_rpos
	clr  a
	movx	@dptr,a
00105$:
;	ser_ir.c:104: ES = 1;
;	genAssign: resultIsFar = FALSE
	setb	_ES
;	ser_ir.c:105: return (c);
	mov	dpl,r2
00106$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ser_puts'
;------------------------------------------------------------
;s                         Allocated to registers r2 r3 r4 r5 
;c                         Allocated to registers r7 
;------------------------------------------------------------
;	ser_ir.c:109: void ser_puts (unsigned char *s)
;	-----------------------------------------
;	 function ser_puts
;	-----------------------------------------
_ser_puts:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
;	ser_ir.c:112: while (c=*s++) {
00103$:
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
;	genAssign: resultIsFar = TRUE
	mov	ar7,r6
	mov	a,r6
	jz  00106$
00111$:
;	ser_ir.c:113: if (c == '\n') ser_putc ('\r');
	mov	a,r7
	cjne a,#0x0A,00102$
00113$:
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar7
	mov	dpl,#0x0D
	lcall	_ser_putc
	pop	ar7
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
00102$:
;	ser_ir.c:114: ser_putc (c);
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dpl,r7
	lcall	_ser_putc
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	sjmp 00103$
00106$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ser_gets'
;------------------------------------------------------------
;len                       Allocated with name '_ser_gets_PARM_2'
;s                         Allocated with name '_ser_gets_s_1_1'
;pos                       Allocated to registers 
;c                         Allocated to registers r7 
;------------------------------------------------------------
;	ser_ir.c:118: void ser_gets (unsigned char *s, unsigned char len)
;	-----------------------------------------
;	 function ser_gets
;	-----------------------------------------
_ser_gets:
	mov     dps, #1
	mov     dptr, #_ser_gets_s_1_1
	mov	a,dpl
	movx	@dptr,a
	inc	dptr
	mov	a,dph
	movx	@dptr,a
	inc	dptr
	mov	a,dpx
	movx	@dptr,a
	inc	dptr
	mov	a,b
	movx	@dptr,a
	mov	dps,#0
;	ser_ir.c:123: while (pos <= len) {
;	genAssign: resultIsFar = FALSE
	mov	r6,#0x00
00105$:
	mov	dptr,#_ser_gets_PARM_2
	clr	c
	movx	a,@dptr
	subb	a,r6
	jc   00107$
00114$:
;	ser_ir.c:124: c = ser_getc ();
	push	ar6
	lcall	_ser_getc
	mov	r7,dpl
	pop	ar6
;	genAssign: resultIsFar = TRUE
;	ser_ir.c:125: if (c == '\r') continue;        /* discard CR's */
	mov	a,r7
	cjne	a,#0x0D,00115$
	sjmp 00105$
00115$:
;	ser_ir.c:126: s[pos++] = c;
;	genAssign: resultIsFar = FALSE
	mov	ar0,r6
	inc	r6
	mov	dptr,#_ser_gets_s_1_1
	movx	a,@dptr
	add	a,r0
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r0
	mov	dph,r1
	mov	dpx,r2
	mov	b,r3
;	ser_ir.c:127: if (c == '\n') break;           /* NL terminates */
	mov  a,r7
	lcall __gptrput
	cjne a,#0x0A,00105$
00117$:
00107$:
;	ser_ir.c:129: s[pos] = '\0';
	mov	dptr,#_ser_gets_s_1_1
	movx	a,@dptr
	add	a,r6
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r6
	mov	dph,r2
	mov	dpx,r3
	mov	b,r4
	clr  a
	lcall	__gptrput
00108$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ser_can_xmt'
;------------------------------------------------------------
;------------------------------------------------------------
;	ser_ir.c:132: unsigned char ser_can_xmt (void)
;	-----------------------------------------
;	 function ser_can_xmt
;	-----------------------------------------
_ser_can_xmt:
;	ser_ir.c:134: return XBUFLEN - xcnt;
	mov	dptr,#_xcnt
	clr	c
	movx	a,@dptr
	mov	b,a
	mov	a,#0x04
	subb	a,b
	mov	r2,a
	mov	dpl,r2
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ser_can_rcv'
;------------------------------------------------------------
;------------------------------------------------------------
;	ser_ir.c:137: unsigned char ser_can_rcv (void)
;	-----------------------------------------
;	 function ser_can_rcv
;	-----------------------------------------
_ser_can_rcv:
;	ser_ir.c:139: return rcnt;
	mov     dps, #1
	mov     dptr, #_rcnt
	movx	a,@dptr
	mov	dpl,a
	mov	dps,#0
00101$:
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
