;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:24 2018
;--------------------------------------------------------
	.module ser_ir
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
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
	.area RSEG    (DATA)
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
	.area RSEG    (DATA)
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
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
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
	clr	_ES
;	ser_ir.c:51: rcnt = xcnt = rpos = xpos = 0;  /* init buffers */
	mov	_xpos,#0x00
	mov	_rpos,#0x00
	mov	_xcnt,#0x00
	mov	_rcnt,#0x00
;	ser_ir.c:52: busy = 0;
	clr	_busy
;	ser_ir.c:53: SCON = 0x50;
	mov	_SCON,#0x50
;	ser_ir.c:54: PCON |= 0x80;                   /* SMOD = 1; */
	orl	_PCON,#0x80
;	ser_ir.c:55: TMOD &= 0x0f;                   /* use timer 1 */
	anl	_TMOD,#0x0F
;	ser_ir.c:56: TMOD |= 0x20;
	orl	_TMOD,#0x20
;	ser_ir.c:57: TL1 = -3; TH1 = -3; TR1 = 1;    /* 19200bps with 11.059MHz crystal */
	mov	_TL1,#0xFD
	mov	_TH1,#0xFD
	setb	_TR1
;	ser_ir.c:58: ES = 1;
	setb	_ES
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
	push	ar2
	push	ar0
	push	psw
	mov	psw,#0x00
;	ser_ir.c:63: if (RI) {
;	ser_ir.c:64: RI = 0;
	jbc	_RI,00118$
	sjmp	00104$
00118$:
;	ser_ir.c:66: if (rcnt < RBUFLEN)
	mov	a,#0x100 - 0x08
	add	a,_rcnt
	jc	00104$
;	ser_ir.c:67: rbuf [(unsigned char)(rpos+rcnt++) % RBUFLEN] = SBUF;
	mov	r2,_rcnt
	inc	_rcnt
	mov	a,r2
	add	a,_rpos
	anl	a,#0x07
	add	a,#_rbuf
	mov	r0,a
	mov	a,_SBUF
	movx	@r0,a
00104$:
;	ser_ir.c:69: if (TI) {
;	ser_ir.c:70: TI = 0;
	jbc	_TI,00120$
	sjmp	00111$
00120$:
;	ser_ir.c:71: if (busy = xcnt) {   /* Assignment, _not_ comparison! */
	mov	a,_xcnt
	add	a,#0xff
	mov	_busy,c
	mov	a,_xcnt
	jz	00111$
;	ser_ir.c:72: xcnt--;
	dec	_xcnt
;	ser_ir.c:73: SBUF = xbuf [xpos++];
	mov	r2,_xpos
	inc	_xpos
	mov	a,r2
	add	a,#_xbuf
	mov	r0,a
	movx	a,@r0
	mov	_SBUF,a
;	ser_ir.c:74: if (xpos >= XBUFLEN)
	mov	a,#0x100 - 0x04
	add	a,_xpos
	jnc	00111$
;	ser_ir.c:75: xpos = 0;
	mov	_xpos,#0x00
00111$:
	pop	psw
	pop	ar0
	pop	ar2
	pop	acc
	reti
;	eliminated unneeded push/pop ar1
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
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
	mov	a,#0x100 - 0x04
	add	a,_xcnt
	jc	00101$
;	ser_ir.c:84: ES = 0;
	clr	_ES
;	ser_ir.c:85: if (busy) {
	jnb	_busy,00105$
;	ser_ir.c:86: xbuf[(unsigned char)(xpos+xcnt++) % XBUFLEN] = c;
	mov	r3,_xcnt
	inc	_xcnt
	mov	a,r3
	add	a,_xpos
	anl	a,#0x03
	add	a,#_xbuf
	mov	r0,a
	mov	a,r2
	movx	@r0,a
	sjmp	00106$
00105$:
;	ser_ir.c:88: SBUF = c;
	mov	_SBUF,r2
;	ser_ir.c:89: busy = 1;
	setb	_busy
00106$:
;	ser_ir.c:91: ES = 1;
	setb	_ES
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
	mov	a,_rcnt
	jz	00101$
;	ser_ir.c:99: ES = 0;
	clr	_ES
;	ser_ir.c:100: rcnt--;
	dec	_rcnt
;	ser_ir.c:101: c = rbuf [rpos++];
	mov	r2,_rpos
	inc	_rpos
	mov	a,r2
	add	a,#_rbuf
	mov	r0,a
	movx	a,@r0
	mov	r2,a
;	ser_ir.c:102: if (rpos >= RBUFLEN)
	mov	a,#0x100 - 0x08
	add	a,_rpos
	jnc	00105$
;	ser_ir.c:103: rpos = 0;
	mov	_rpos,#0x00
00105$:
;	ser_ir.c:104: ES = 1;
	setb	_ES
;	ser_ir.c:105: return (c);
	mov	dpl,r2
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ser_puts'
;------------------------------------------------------------
;s                         Allocated to registers r2 r3 r4 
;c                         Allocated to registers r6 
;------------------------------------------------------------
;	ser_ir.c:109: void ser_puts (unsigned char *s)
;	-----------------------------------------
;	 function ser_puts
;	-----------------------------------------
_ser_puts:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	ser_ir.c:112: while (c=*s++) {
00103$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	mov	r2,dpl
	mov	r3,dph
	mov	a,r5
	mov	r6,a
	jz	00106$
;	ser_ir.c:113: if (c == '\n') ser_putc ('\r');
	cjne	r6,#0x0A,00102$
	mov	dpl,#0x0D
	push	ar2
	push	ar3
	push	ar4
	push	ar6
	lcall	_ser_putc
	pop	ar6
	pop	ar4
	pop	ar3
	pop	ar2
00102$:
;	ser_ir.c:114: ser_putc (c);
	mov	dpl,r6
	push	ar2
	push	ar3
	push	ar4
	lcall	_ser_putc
	pop	ar4
	pop	ar3
	pop	ar2
	sjmp	00103$
00106$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ser_gets'
;------------------------------------------------------------
;len                       Allocated with name '_ser_gets_PARM_2'
;s                         Allocated to registers r2 r3 r4 
;pos                       Allocated to registers r5 
;c                         Allocated to registers r6 
;------------------------------------------------------------
;	ser_ir.c:118: void ser_gets (unsigned char *s, unsigned char len)
;	-----------------------------------------
;	 function ser_gets
;	-----------------------------------------
_ser_gets:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	ser_ir.c:123: while (pos <= len) {
	mov	r5,#0x00
00105$:
	clr	c
	mov	a,_ser_gets_PARM_2
	subb	a,r5
	jc	00107$
;	ser_ir.c:124: c = ser_getc ();
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_ser_getc
	mov	r6,dpl
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	ser_ir.c:125: if (c == '\r') continue;        /* discard CR's */
	cjne	r6,#0x0D,00115$
	sjmp	00105$
00115$:
;	ser_ir.c:126: s[pos++] = c;
	mov	ar7,r5
	inc	r5
	mov	a,r7
	add	a,r2
	mov	r7,a
	clr	a
	addc	a,r3
	mov	r0,a
	mov	ar1,r4
	mov	dpl,r7
	mov	dph,r0
	mov	b,r1
	mov	a,r6
	lcall	__gptrput
;	ser_ir.c:127: if (c == '\n') break;           /* NL terminates */
	cjne	r6,#0x0A,00105$
00107$:
;	ser_ir.c:129: s[pos] = '\0';
	mov	a,r5
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	ljmp	__gptrput
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
	mov	a,#0x04
	clr	c
	subb	a,_xcnt
	mov	dpl,a
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
	mov	dpl,_rcnt
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
