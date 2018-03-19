;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:32 2018
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f452

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global ___stream_putchar

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern __gptrget3
	extern __gptrput1
	extern __gptrput3
	extern _stdin
	extern _stdout
	extern _putchar
	extern ___stream_usart_putchar
	extern ___stream_mssp_putchar
	extern ___stream_gpsim_putchar
;--------------------------------------------------------
;	Equates to used internal registers
;--------------------------------------------------------
STATUS	equ	0xfd8
TBLPTRL	equ	0xff6
FSR0L	equ	0xfe9
FSR1L	equ	0xfe1
FSR2L	equ	0xfd9
POSTDEC1	equ	0xfe5
PREINC1	equ	0xfe4
PLUSW2	equ	0xfdb
PRODL	equ	0xff3
PRODH	equ	0xff4


; Internal registers
.registers	udata_ovr	0x0000
r0x00	res	1
r0x01	res	1
r0x02	res	1
r0x03	res	1
r0x04	res	1
r0x05	res	1
r0x06	res	1
r0x07	res	1

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($18) :
; ;ic:2: 	proc ___stream_putchar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( char generic*  generic* , unsigned-char) }
S_strmputchar____stream_putchar	code
___stream_putchar:
;	.line	31; strmputchar.c	void __stream_putchar(FILE *stream, unsigned char c)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
	MOVFF	r0x06, POSTDEC1
	MOVFF	r0x07, POSTDEC1
; ;ic:3: iTemp0 [k2 lr3:13 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic*  generic* }{ sir@ ___stream_putchar_stream_1_1}[r0x00 r0x01 r0x02 ] = recv ___stream_putchar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( char generic*  generic* , unsigned-char) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
; ;ic:4: iTemp1 [k4 lr4:38 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ ___stream_putchar_c_1_1}[r0x03 ] = recv ___stream_putchar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( char generic*  generic* , unsigned-char) }
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
; ;ic:5: 	iTemp3 [k8 lr5:6 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x04 r0x05 r0x06 r0x07 ] = (unsigned-long-int)iTemp0 [k2 lr3:13 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic*  generic* }{ sir@ ___stream_putchar_stream_1_1}[r0x00 r0x01 r0x02 ]
;	.line	35; strmputchar.c	deref = (unsigned char)(((unsigned long)stream) >> 16);
	MOVFF	r0x02, r0x06
; ;ic:6: 	iTemp4 [k9 lr6:7 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x04 r0x05 r0x06 r0x07 ] = iTemp3 [k8 lr5:6 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x04 r0x05 r0x06 r0x07 ] >> 0x10 {literal-unsigned-char}
	MOVF	r0x06, W
	MOVWF	r0x04
; ;ic:7: 	iTemp2 [k6 lr7:36 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ ___stream_putchar_deref_1_1}[r0x04 ] = (unsigned-char)iTemp4 [k9 lr6:7 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x04 r0x05 r0x06 r0x07 ]
; ;ic:8: 	iTemp6 [k11 lr8:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp2 [k6 lr7:36 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ ___stream_putchar_deref_1_1}[r0x04 ] == 0x80 {literal-unsigned-char}
;	.line	42; strmputchar.c	if(deref == 0x80) {
	XORLW	0x80
	BNZ	_00119_DS_
; ;ic:9: 	if iTemp6 [k11 lr8:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_5($15)
; ;ic:10: 	iTemp8 [k13 lr10:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x05 r0x06 r0x07 ] = @[iTemp0 [k2 lr3:13 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{char generic*  generic* }{ sir@ ___stream_putchar_stream_1_1}[r0x00 r0x01 r0x02 ]]
;	.line	44; strmputchar.c	*(*(char **)stream) = c;
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget3
	MOVWF	r0x05
	MOVFF	PRODL, r0x06
	MOVFF	PRODH, r0x07
; ;ic:11: 	*(iTemp8 [k13 lr10:12 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x05 r0x06 r0x07 ]) := iTemp1 [k4 lr4:38 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ ___stream_putchar_c_1_1}[r0x03 ]
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x05, FSR0L
	MOVFF	r0x06, PRODL
	MOVF	r0x07, W
	CALL	__gptrput1
; ;ic:12: 	iTemp13 [k18 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x05 r0x06 r0x07 ] = iTemp8 [k13 lr10:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x05 r0x06 r0x07 ] + 0x1 {literal-unsigned-char}
;	.line	45; strmputchar.c	*(char **)stream+=1;
	INCF	r0x05, F
	BTFSC	STATUS, 0
	INCF	r0x06, F
	BTFSC	STATUS, 0
	INCF	r0x07, F
; ;ic:13: 	*(iTemp0 [k2 lr3:13 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{char generic*  generic* }{ sir@ ___stream_putchar_stream_1_1}[r0x00 r0x01 r0x02 ]) := iTemp13 [k18 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x05 r0x06 r0x07 ]
	MOVFF	r0x05, POSTDEC1
	MOVFF	r0x06, PRODH
	MOVFF	r0x07, TBLPTRL
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrput3
; ;ic:14: 	 goto _return($17)
	BRA	_00121_DS_
; ;ic:15:  _iffalse_5($15) :
; ;ic:16: 	iTemp14 [k19 lr16:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char} = iTemp2 [k6 lr7:36 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ ___stream_putchar_deref_1_1}[r0x04 ] & 0x20 {literal-unsigned-char}
_00119_DS_:
;	.line	47; strmputchar.c	if(deref & 0x20) {
	BTFSS	r0x04, 5
	BRA	_00121_DS_
; ;ic:17: 	if iTemp14 [k19 lr16:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char} == 0 goto _return($17)
; ;ic:18: 	iTemp2 [k6 lr7:36 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ ___stream_putchar_deref_1_1}[r0x04 ] = iTemp2 [k6 lr7:36 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ ___stream_putchar_deref_1_1}[r0x04 ] ^ 0x20 {literal-unsigned-char}
;	.line	48; strmputchar.c	deref ^= 0x20;
	MOVLW	0x20
	XORWF	r0x04, F
; ;ic:19: 	if iTemp2 [k6 lr7:36 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ ___stream_putchar_deref_1_1}[r0x04 ] != 0 goto _iffalse_3($10)
;	.line	49; strmputchar.c	if(deref == USART_DEREF)
	MOVF	r0x04, W
	BNZ	_00114_DS_
; ;ic:20: 	send iTemp1 [k4 lr4:38 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ ___stream_putchar_c_1_1}[r0x03 ]{argreg = 1}
; ;ic:21: 	iTemp16 [k22 lr21:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void} = call ___stream_usart_putchar [k21 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( unsigned-char) }
;	.line	50; strmputchar.c	__stream_usart_putchar(c);
	MOVF	r0x03, W
	CALL	___stream_usart_putchar
; ;ic:22: 	 goto _return($17)
	BRA	_00121_DS_
; ;ic:23:  _iffalse_3($10) :
; ;ic:24: 	iTemp17 [k23 lr24:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp2 [k6 lr7:36 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ ___stream_putchar_deref_1_1}[r0x04 ] == 0x1 {literal-unsigned-char}
_00114_DS_:
;	.line	52; strmputchar.c	if(deref == MSSP_DEREF)
	MOVF	r0x04, W
	XORLW	0x01
	BNZ	_00111_DS_
; ;ic:25: 	if iTemp17 [k23 lr24:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_2($7)
; ;ic:26: 	send iTemp1 [k4 lr4:38 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ ___stream_putchar_c_1_1}[r0x03 ]{argreg = 1}
; ;ic:27: 	iTemp18 [k25 lr27:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void} = call ___stream_mssp_putchar [k24 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( unsigned-char) }
;	.line	53; strmputchar.c	__stream_mssp_putchar(c);
	MOVF	r0x03, W
	CALL	___stream_mssp_putchar
; ;ic:28: 	 goto _return($17)
	BRA	_00121_DS_
; ;ic:29:  _iffalse_2($7) :
; ;ic:30: 	iTemp19 [k26 lr30:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp2 [k6 lr7:36 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ ___stream_putchar_deref_1_1}[r0x04 ] == 0xf {literal-unsigned-char}
_00111_DS_:
;	.line	55; strmputchar.c	if(deref == USER_DEREF)
	MOVF	r0x04, W
	XORLW	0x0f
	BNZ	_00108_DS_
; ;ic:31: 	if iTemp19 [k26 lr30:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_1($4)
; ;ic:32: 	send iTemp1 [k4 lr4:38 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ ___stream_putchar_c_1_1}[r0x03 ]{argreg = 1}
; ;ic:33: 	iTemp20 [k28 lr33:33 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void} = call _putchar [k27 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( unsigned-char) }
;	.line	56; strmputchar.c	putchar(c);
	MOVF	r0x03, W
	CALL	_putchar
; ;ic:34: 	 goto _return($17)
	BRA	_00121_DS_
; ;ic:35:  _iffalse_1($4) :
; ;ic:36: 	iTemp21 [k29 lr36:37 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp2 [k6 lr7:36 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ ___stream_putchar_deref_1_1}[r0x04 ] == 0xe {literal-unsigned-char}
_00108_DS_:
;	.line	58; strmputchar.c	if(deref == GPSIM_DEREF)			/* see stdio.h for info on this */
	MOVF	r0x04, W
	XORLW	0x0e
	BNZ	_00121_DS_
; ;ic:37: 	if iTemp21 [k29 lr36:37 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _return($17)
; ;ic:38: 	send iTemp1 [k4 lr4:38 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ ___stream_putchar_c_1_1}[r0x03 ]{argreg = 1}
; ;ic:39: 	iTemp22 [k31 lr39:39 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void} = call ___stream_gpsim_putchar [k30 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( unsigned-char) }
;	.line	59; strmputchar.c	__stream_gpsim_putchar(c);		/* feature */
	MOVF	r0x03, W
	CALL	___stream_gpsim_putchar
; ;ic:40:  _return($17) :
; ;ic:41: 	eproc ___stream_putchar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( char generic*  generic* , unsigned-char) }
_00121_DS_:
	MOVFF	PREINC1, r0x07
	MOVFF	PREINC1, r0x06
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	



; Statistics:
; code size:	  254 (0x00fe) bytes ( 0.19%)
;           	  127 (0x007f) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    8 (0x0008) bytes


	end
