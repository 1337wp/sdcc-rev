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
	global ___ulong2fs
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
r0x06	res	1
r0x07	res	1
r0x08	res	1
r0x09	res	1
r0x0a	res	1
r0x0b	res	1

udata_ulong2fs_0	udata
___ulong2fs_fl_1_1	res	4

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($14) :
; ;ic:2: 	proc ___ulong2fs [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( unsigned-long-int) }
S_ulong2fs____ulong2fs	code
___ulong2fs:
;	.line	31; ulong2fs.c	float __ulong2fs (unsigned long a ) _FS_REENTRANT
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
	MOVFF	r0x08, POSTDEC1
	MOVFF	r0x09, POSTDEC1
	MOVFF	r0x0a, POSTDEC1
	MOVFF	r0x0b, POSTDEC1
; ;ic:3: iTemp0 [k2 lr3:39 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___ulong2fs_a_1_1}[r0x00 r0x01 r0x02 r0x03 ] = recv ___ulong2fs [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( unsigned-long-int) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
; ;ic:4: 	if iTemp0 [k2 lr3:39 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___ulong2fs_a_1_1}[r0x00 r0x01 r0x02 r0x03 ] != 0 goto preHeaderLbl0($17)
;	.line	36; ulong2fs.c	if (!a)
	MOVF	r0x00, W
	IORWF	r0x01, W
	IORWF	r0x02, W
	IORWF	r0x03, W
	BNZ	_00121_DS_
; ;ic:5: 	ret 0 {literal-float}
;	.line	38; ulong2fs.c	return 0.0;
	CLRF	FSR0L
	CLRF	PRODH
	CLRF	PRODL
	CLRF	WREG
	BRA	_00117_DS_
; ;ic:6:  preHeaderLbl0($17) :
; ;ic:7: 	iTemp5 [k9 lr7:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}{ sir@ ___ulong2fs_exp_1_1}[r0x04 r0x05 ] := 0x96 {literal-int}
_00121_DS_:
;	.line	41; ulong2fs.c	while (a & NORM) 
	MOVLW	0x96
	MOVWF	r0x04
	CLRF	r0x05
; ;ic:8:  _whilecontinue_0($3) :
; ;ic:9: 	iTemp2 [k6 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int} = iTemp0 [k2 lr3:39 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___ulong2fs_a_1_1}[r0x00 r0x01 r0x02 r0x03 ] & 0xff000000 {literal-unsigned-long-int}
_00107_DS_:
	MOVF	r0x03, W
	BZ	_00124_DS_
; ;ic:10: 	if iTemp2 [k6 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int} == 0 goto loopExitLbl2($20)
; ;ic:11: 	iTemp0 [k2 lr3:39 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___ulong2fs_a_1_1}[r0x00 r0x01 r0x02 r0x03 ] = iTemp0 [k2 lr3:39 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___ulong2fs_a_1_1}[r0x00 r0x01 r0x02 r0x03 ] >> 0x1 {literal-unsigned-char}
;	.line	44; ulong2fs.c	a >>= 1;
	BCF	STATUS, 0
	RRCF	r0x03, F
	RRCF	r0x02, F
	RRCF	r0x01, F
	RRCF	r0x00, F
; ;ic:12: 	iTemp5 [k9 lr7:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}{ sir@ ___ulong2fs_exp_1_1}[r0x04 r0x05 ] = iTemp5 [k9 lr7:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}{ sir@ ___ulong2fs_exp_1_1}[r0x04 r0x05 ] + 0x1 {literal-unsigned-char}
;	.line	45; ulong2fs.c	exp++;
	INCF	r0x04, F
	BTFSC	STATUS, 0
	INCF	r0x05, F
; ;ic:13: 	 goto _whilecontinue_0($3)
	BRA	_00107_DS_
; ;ic:14:  loopExitLbl2($20) :
; ;ic:15: 	iTemp1 [k4 lr15:37 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}[r0x06 r0x07 ] := iTemp5 [k9 lr7:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}{ sir@ ___ulong2fs_exp_1_1}[r0x04 r0x05 ]
_00124_DS_:
	MOVFF	r0x04, r0x06
	MOVFF	r0x05, r0x07
; ;ic:17: 	iTemp6 [k10 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp0 [k2 lr3:39 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___ulong2fs_a_1_1}[r0x00 r0x01 r0x02 r0x03 ] < 0x800000 {literal-unsigned-long-int}
;	.line	49; ulong2fs.c	if(a < HIDDEN) {
	MOVLW	0x00
	SUBWF	r0x03, W
	BNZ	_00127_DS_
	MOVLW	0x80
	SUBWF	r0x02, W
	BNZ	_00127_DS_
	MOVLW	0x00
	SUBWF	r0x01, W
	BNZ	_00127_DS_
	MOVLW	0x00
	SUBWF	r0x00, W
_00127_DS_:
	BC	_00114_DS_
; ;ic:18: 	if iTemp6 [k10 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_1($10)
; ;ic:20: 	iTemp9 [k13 lr20:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}{ sir@ ___ulong2fs_exp_1_1}[r0x04 r0x05 ] := iTemp5 [k9 lr7:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}{ sir@ ___ulong2fs_exp_1_1}[r0x04 r0x05 ]
; ;ic:21:  _dobody_0($6) :
; ;ic:22: 	iTemp0 [k2 lr3:39 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___ulong2fs_a_1_1}[r0x00 r0x01 r0x02 r0x03 ] = iTemp0 [k2 lr3:39 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___ulong2fs_a_1_1}[r0x00 r0x01 r0x02 r0x03 ] << 0x1 {literal-unsigned-char}
_00110_DS_:
;	.line	51; ulong2fs.c	a<<=1;
	MOVF	r0x00, W
	ADDWF	r0x00, F
	RLCF	r0x01, F
	RLCF	r0x02, F
	RLCF	r0x03, F
; ;ic:23: 	iTemp9 [k13 lr20:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}{ sir@ ___ulong2fs_exp_1_1}[r0x04 r0x05 ] = iTemp9 [k13 lr20:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}{ sir@ ___ulong2fs_exp_1_1}[r0x04 r0x05 ] - 0x1 {literal-unsigned-char}
;	.line	52; ulong2fs.c	exp--;
	MOVLW	0xff
	ADDWF	r0x04, F
	BTFSS	STATUS, 0
	DECF	r0x05, F
; ;ic:24: 	iTemp10 [k14 lr24:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp0 [k2 lr3:39 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___ulong2fs_a_1_1}[r0x00 r0x01 r0x02 r0x03 ] < 0x800000 {literal-unsigned-long-int}
;	.line	53; ulong2fs.c	} while (a < HIDDEN);
	MOVLW	0x00
	SUBWF	r0x03, W
	BNZ	_00128_DS_
	MOVLW	0x80
	SUBWF	r0x02, W
	BNZ	_00128_DS_
	MOVLW	0x00
	SUBWF	r0x01, W
	BNZ	_00128_DS_
	MOVLW	0x00
	SUBWF	r0x00, W
_00128_DS_:
	BNC	_00110_DS_
; ;ic:25: 	if iTemp10 [k14 lr24:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} != 0 goto _dobody_0($6)
; ;ic:27: 	iTemp1 [k4 lr15:37 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}[r0x06 r0x07 ] := iTemp9 [k13 lr20:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}{ sir@ ___ulong2fs_exp_1_1}[r0x04 r0x05 ]
	MOVFF	r0x04, r0x06
	MOVFF	r0x05, r0x07
; ;ic:28:  _iffalse_1($10) :
; ;ic:29: 	iTemp11 [k15 lr29:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x04 r0x05 r0x08 r0x09 ] = iTemp0 [k2 lr3:39 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___ulong2fs_a_1_1}[r0x00 r0x01 r0x02 r0x03 ] & 0x7fffff {literal-unsigned-long-int}
_00114_DS_:
;	.line	64; ulong2fs.c	if ((a&0x7fffff)==0x7fffff) {
	MOVF	r0x00, W
	MOVWF	r0x04
	MOVF	r0x01, W
	MOVWF	r0x05
	MOVLW	0x7f
	ANDWF	r0x02, W
	MOVWF	r0x08
	CLRF	r0x09
; ;ic:30: 	iTemp12 [k16 lr30:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp11 [k15 lr29:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x04 r0x05 r0x08 r0x09 ] == 0x7fffff {literal-unsigned-long-int}
	MOVF	r0x04, W
	XORLW	0xff
	BNZ	_00130_DS_
	MOVF	r0x05, W
	XORLW	0xff
	BNZ	_00130_DS_
	MOVF	r0x08, W
	XORLW	0x7f
	BNZ	_00130_DS_
	MOVF	r0x09, W
	BZ	_00131_DS_
_00130_DS_:
	BRA	_00116_DS_
; ;ic:31: 	if iTemp12 [k16 lr30:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_2($12)
; ;ic:32: 	iTemp0 [k2 lr3:39 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___ulong2fs_a_1_1}[r0x00 r0x01 r0x02 r0x03 ] := 0x0 {literal-unsigned-long-int}
_00131_DS_:
;	.line	65; ulong2fs.c	a=0;
	CLRF	r0x00
	CLRF	r0x01
	CLRF	r0x02
	CLRF	r0x03
; ;ic:33: 	iTemp1 [k4 lr15:37 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}[r0x06 r0x07 ] = iTemp1 [k4 lr15:37 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}[r0x06 r0x07 ] + 0x1 {literal-unsigned-char}
;	.line	66; ulong2fs.c	exp++;
	INCF	r0x06, F
	BTFSC	STATUS, 0
	INCF	r0x07, F
; ;ic:34:  _iffalse_2($12) :
; ;ic:35: 	iTemp0 [k2 lr3:39 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___ulong2fs_a_1_1}[r0x00 r0x01 r0x02 r0x03 ] = iTemp0 [k2 lr3:39 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___ulong2fs_a_1_1}[r0x00 r0x01 r0x02 r0x03 ] & 0xff7fffff {literal-unsigned-long-int}
_00116_DS_:
;	.line	70; ulong2fs.c	a &= ~HIDDEN ;
	BCF	r0x02, 7
; ;ic:36: 	iTemp16 [k21 lr36:40 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat] = &[___ulong2fs_fl_1_1 [k20 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:37: 	iTemp18 [k24 lr37:38 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x06 r0x07 r0x04 r0x05 ] = (unsigned-long-int)iTemp1 [k4 lr15:37 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}[r0x06 r0x07 ]
;	.line	72; ulong2fs.c	fl.l = PACK(0,(unsigned long)exp, a);
	CLRF	WREG
; ;ic:38: 	iTemp19 [k25 lr38:39 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x08 r0x09 r0x0a r0x0b ] = iTemp18 [k24 lr37:38 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x06 r0x07 r0x04 r0x05 ] << 0x17 {literal-unsigned-char}
	RRCF	r0x07, W
	RRCF	r0x06, W
	MOVWF	r0x0b
	CLRF	r0x0a
	RRCF	r0x0a, F
	CLRF	r0x08
; ;ic:39: 	iTemp21 [k27 lr39:40 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] = iTemp19 [k25 lr38:39 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x08 r0x09 r0x0a r0x0b ] | iTemp0 [k2 lr3:39 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___ulong2fs_a_1_1}[r0x00 r0x01 r0x02 r0x03 ]
	MOVF	r0x08, W
	IORWF	r0x00, F
	IORWF	r0x01, F
	MOVF	r0x0a, W
	IORWF	r0x02, F
	MOVF	r0x0b, W
	IORWF	r0x03, F
; ;ic:40: 	*(iTemp16 [k21 lr36:40 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat]) := iTemp21 [k27 lr39:40 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ]
	MOVF	r0x00, W
	BANKSEL	___ulong2fs_fl_1_1
	MOVWF	___ulong2fs_fl_1_1, B
	MOVF	r0x01, W
; removed redundant BANKSEL
	MOVWF	(___ulong2fs_fl_1_1 + 1), B
	MOVF	r0x02, W
; removed redundant BANKSEL
	MOVWF	(___ulong2fs_fl_1_1 + 2), B
	MOVF	r0x03, W
; removed redundant BANKSEL
	MOVWF	(___ulong2fs_fl_1_1 + 3), B
; ;ic:41: 	iTemp23 [k29 lr41:42 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat] = &[___ulong2fs_fl_1_1 [k20 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
; ;ic:42: 	iTemp25 [k32 lr42:43 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-float}{ sir@ ___ulong2fs_fl_1_1} = @[iTemp23 [k29 lr41:42 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat]]
; ;ic:43: 	ret iTemp25 [k32 lr42:43 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-float}{ sir@ ___ulong2fs_fl_1_1}
;	.line	74; ulong2fs.c	return (fl.f);
	MOVFF	(___ulong2fs_fl_1_1 + 3), FSR0L
	MOVFF	(___ulong2fs_fl_1_1 + 2), PRODH
	MOVFF	(___ulong2fs_fl_1_1 + 1), PRODL
; removed redundant BANKSEL
	MOVF	___ulong2fs_fl_1_1, W, B
; ;ic:44:  _return($13) :
; ;ic:45: 	eproc ___ulong2fs [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( unsigned-long-int) }
_00117_DS_:
	MOVFF	PREINC1, r0x0b
	MOVFF	PREINC1, r0x0a
	MOVFF	PREINC1, r0x09
	MOVFF	PREINC1, r0x08
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
; code size:	  380 (0x017c) bytes ( 0.29%)
;           	  190 (0x00be) words
; udata size:	    4 (0x0004) bytes ( 0.31%)
; access size:	   12 (0x000c) bytes


	end
