;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:59 2018
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f452

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global ___fs2ulong
;--------------------------------------------------------
;	Equates to used internal registers
;--------------------------------------------------------
STATUS	equ	0xfd8
WREG	equ	0xfe8
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

udata_fs2ulong_0	udata
___fs2ulong_fl1_1_1	res	4

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($5) :
; ;ic:2: 	proc ___fs2ulong [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int function    ( float) }
S_fs2ulong____fs2ulong	code
___fs2ulong:
;	.line	34; fs2ulong.c	unsigned long __fs2ulong (float a1) _FS_REENTRANT
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
; ;ic:3: iTemp0 [k2 lr3:5 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ ___fs2ulong_a1_1_1}[r0x00 r0x01 r0x02 r0x03 ] = recv ___fs2ulong [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int function    ( float) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
; ;ic:4: 	iTemp1 [k5 lr4:5 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat] = &[___fs2ulong_fl1_1_1 [k4 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct float_long}]
; ;ic:5: 	*(iTemp1 [k5 lr4:5 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat]) := iTemp0 [k2 lr3:5 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ ___fs2ulong_a1_1_1}[r0x00 r0x01 r0x02 r0x03 ]
;	.line	40; fs2ulong.c	fl1.f = a1;
	MOVF	r0x00, W
	BANKSEL	___fs2ulong_fl1_1_1
	MOVWF	___fs2ulong_fl1_1_1, B
	MOVF	r0x01, W
; removed redundant BANKSEL
	MOVWF	(___fs2ulong_fl1_1_1 + 1), B
	MOVF	r0x02, W
; removed redundant BANKSEL
	MOVWF	(___fs2ulong_fl1_1_1 + 2), B
	MOVF	r0x03, W
; removed redundant BANKSEL
	MOVWF	(___fs2ulong_fl1_1_1 + 3), B
; ;ic:6: 	iTemp3 [k8 lr6:21 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat] = &[___fs2ulong_fl1_1_1 [k4 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct float_long}]
; ;ic:7: 	iTemp5 [k11 lr7:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}{ sir@ ___fs2ulong_fl1_1_1} = @[iTemp3 [k8 lr6:21 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat]]
; ;ic:8: 	if iTemp5 [k11 lr7:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}{ sir@ ___fs2ulong_fl1_1_1} == 0 goto _iftrue_0($1)
; removed redundant BANKSEL
;	.line	42; fs2ulong.c	if (!fl1.l || SIGN(fl1.l))
	MOVF	___fs2ulong_fl1_1_1, W, B
; removed redundant BANKSEL
	IORWF	(___fs2ulong_fl1_1_1 + 1), W, B
; removed redundant BANKSEL
	IORWF	(___fs2ulong_fl1_1_1 + 2), W, B
; removed redundant BANKSEL
	IORWF	(___fs2ulong_fl1_1_1 + 3), W, B
	BZ	_00105_DS_
; ;ic:9: 	iTemp9 [k16 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fs2ulong_fl1_1_1} = @[iTemp3 [k8 lr6:21 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat]]
; ;ic:10: 	iTemp10 [k17 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] = iTemp9 [k16 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fs2ulong_fl1_1_1} >> 0x1f {literal-unsigned-char}
; removed redundant BANKSEL
	RLNCF	(___fs2ulong_fl1_1_1 + 3), W, B
	ANDLW	0x01
	MOVWF	r0x00
	CLRF	r0x01
	CLRF	r0x02
	CLRF	r0x03
; ;ic:11: 	iTemp11 [k18 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int} = iTemp10 [k17 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] & 0x1 {literal-unsigned-long-int}
	BTFSS	r0x00, 0
	BRA	_00106_DS_
; ;ic:12: 	if iTemp11 [k18 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int} == 0 goto _iffalse_0($2)
; ;ic:13:  _iftrue_0($1) :
; ;ic:14: 	ret 0x0 {literal-unsigned-long-int}
_00105_DS_:
;	.line	43; fs2ulong.c	return (0);
	CLRF	FSR0L
	CLRF	PRODH
	CLRF	PRODL
	CLRF	WREG
	BRA	_00108_DS_
; ;ic:15:  _iffalse_0($2) :
; ;ic:16: 	iTemp16 [k25 lr16:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fs2ulong_fl1_1_1} = @[iTemp3 [k8 lr6:21 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat]]
; ;ic:17: 	iTemp17 [k26 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] = iTemp16 [k25 lr16:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fs2ulong_fl1_1_1} >> 0x17 {literal-unsigned-char}
_00106_DS_:
	BANKSEL	(___fs2ulong_fl1_1_1 + 2)
;	.line	45; fs2ulong.c	exp = EXP (fl1.l) - EXCESS - 24;
	RLCF	(___fs2ulong_fl1_1_1 + 2), W, B
; removed redundant BANKSEL
	RLCF	(___fs2ulong_fl1_1_1 + 3), W, B
	MOVWF	r0x00
; ;ic:18: 	iTemp18 [k27 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] = iTemp17 [k26 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] & 0xff {literal-unsigned-long-int}
	CLRF	r0x01
; ;ic:19: 	iTemp19 [k28 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] = iTemp18 [k27 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] - 0x96 {literal-unsigned-long-int}
	MOVLW	0x6a
	ADDWF	r0x00, F
	MOVLW	0xff
	ADDWFC	r0x01, F
; ;ic:20: 	iTemp12 [k19 lr20:24 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ ___fs2ulong_exp_1_1}[r0x00 r0x01 ] = (int)iTemp19 [k28 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ]
; ;ic:21: 	iTemp24 [k35 lr21:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}{ sir@ ___fs2ulong_fl1_1_1} = @[iTemp3 [k8 lr6:21 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat]]
; ;ic:22: 	iTemp26 [k37 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x02 r0x03 r0x04 r0x05 ] = iTemp24 [k35 lr21:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}{ sir@ ___fs2ulong_fl1_1_1} & 0x7fffff {literal-unsigned-long-int}
; removed redundant BANKSEL
;	.line	46; fs2ulong.c	l = MANT (fl1.l);
	MOVF	___fs2ulong_fl1_1_1, W, B
	MOVWF	r0x02
; removed redundant BANKSEL
	MOVF	(___fs2ulong_fl1_1_1 + 1), W, B
	MOVWF	r0x03
	MOVLW	0x7f
; removed redundant BANKSEL
	ANDWF	(___fs2ulong_fl1_1_1 + 2), W, B
	MOVWF	r0x04
	CLRF	r0x05
; ;ic:23: 	iTemp21 [k30 lr23:26 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ ___fs2ulong_l_1_1}[r0x02 r0x03 r0x04 r0x05 ] = iTemp26 [k37 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x02 r0x03 r0x04 r0x05 ] | 0x800000 {literal-unsigned-long-int}
	BSF	r0x04, 7
; ;ic:24: 	iTemp29 [k40 lr24:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x00 r0x01 ] = - iTemp12 [k19 lr20:24 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ ___fs2ulong_exp_1_1}[r0x00 r0x01 ]
;	.line	48; fs2ulong.c	l >>= -exp;
	COMF	r0x01, F
	NEGF	r0x00
	BTFSC	STATUS, 2
	INCF	r0x01, F
; ;ic:25: 	iTemp21 [k30 lr23:26 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ ___fs2ulong_l_1_1}[r0x02 r0x03 r0x04 r0x05 ] = iTemp21 [k30 lr23:26 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ ___fs2ulong_l_1_1}[r0x02 r0x03 r0x04 r0x05 ] >> iTemp29 [k40 lr24:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x00 r0x01 ]
	MOVF	r0x00, W
	BZ	_00116_DS_
	BN	_00119_DS_
	NEGF	WREG
	BCF	STATUS, 0
_00117_DS_:
	BTFSC	r0x05, 7
	BSF	STATUS, 0
	RRCF	r0x05, F
	RRCF	r0x04, F
	RRCF	r0x03, F
	RRCF	r0x02, F
	ADDLW	0x01
	BNC	_00117_DS_
	BRA	_00116_DS_
_00119_DS_:
	BCF	STATUS, 0
_00118_DS_:
	RLCF	r0x02, F
	RLCF	r0x03, F
	RLCF	r0x04, F
	RLCF	r0x05, F
	ADDLW	0x01
	BNC	_00118_DS_
; ;ic:26: 	ret iTemp21 [k30 lr23:26 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ ___fs2ulong_l_1_1}[r0x02 r0x03 r0x04 r0x05 ]
_00116_DS_:
;	.line	50; fs2ulong.c	return l;
	MOVFF	r0x05, FSR0L
	MOVFF	r0x04, PRODH
	MOVFF	r0x03, PRODL
	MOVF	r0x02, W
; ;ic:27:  _return($4) :
; ;ic:28: 	eproc ___fs2ulong [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int function    ( float) }
_00108_DS_:
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	



; Statistics:
; code size:	  240 (0x00f0) bytes ( 0.18%)
;           	  120 (0x0078) words
; udata size:	    4 (0x0004) bytes ( 0.31%)
; access size:	    6 (0x0006) bytes


	end
