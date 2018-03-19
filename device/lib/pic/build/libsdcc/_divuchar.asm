;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:29 2018
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"_divuchar.c"
	list	p=16f877
	radix dec
	include "p16f877.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------

	extern PSAVE
	extern SSAVE
	extern WSAVE
	extern STK12
	extern STK11
	extern STK10
	extern STK09
	extern STK08
	extern STK07
	extern STK06
	extern STK05
	extern STK04
	extern STK03
	extern STK02
	extern STK01
	extern STK00
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	global	__divuchar

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL__divuchar_0	udata
r0x1000	res	1
r0x1001	res	1
r0x1002	res	1
r0x1003	res	1
r0x1004	res	1
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
;--------------------------------------------------------
; code
;--------------------------------------------------------
code__divuchar	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  __divuchar	;Function start
; 2 exit points
;has an exit
;9 compiler assigned registers:
;   r0x1000
;   STK00
;   r0x1001
;   r0x1002
;   r0x1003
;   r0x1004
;   r0x1005
;   r0x1006
;   r0x1007
;; Starting pCode block
;[ICODE] _divuchar.c:29:  _entry($12) :
;[ICODE] _divuchar.c:29: 	proc __divuchar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char function    ( unsigned-char, unsigned-char) }
__divuchar	;Function start
; 2 exit points
;[ICODE] _divuchar.c:29: iTemp0 [k2 lr3:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __divuchar_a_1_1}[r0x1048 ] = recv __divuchar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char function    ( unsigned-char, unsigned-char) }
;	.line	29; "_divuchar.c"	_divuchar (unsigned char a, unsigned char b)
	BANKSEL	r0x1000
	MOVWF	r0x1000
;[ICODE] _divuchar.c:29: iTemp1 [k4 lr4:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __divuchar_b_1_1}[r0x1049 ] = recv __divuchar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char function    ( unsigned-char, unsigned-char) }
	MOVF	STK00,W
	MOVWF	r0x1001
;[ICODE] _divuchar.c:31: 	iTemp2 [k6 lr5:35 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __divuchar_result_1_1}[r0x104A ] := 0x0 {literal-unsigned-char}
;	.line	31; "_divuchar.c"	unsigned char result = 0;
	CLRF	r0x1002
;[ICODE] _divuchar.c:32: 	iTemp3 [k8 lr6:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __divuchar_mask_1_1}[r0x104B ] := 0x1 {literal-unsigned-char}
;	.line	32; "_divuchar.c"	unsigned char mask = 0x01;
	MOVLW	0x01
	MOVWF	r0x1003
;[ICODE] _divuchar.c:35: 	if iTemp1 [k4 lr4:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __divuchar_b_1_1}[r0x1049 ] != 0 goto _whilecontinue_0($3)
;	.line	35; "_divuchar.c"	if (!b) return (unsigned char)-1;
	MOVF	r0x1001,W
	BTFSS	STATUS,2
	GOTO	_00107_DS_
;[ICODE] _divuchar.c:35: 	ret 0xff {literal-unsigned-char}
	MOVLW	0xff
	GOTO	_00115_DS_
;[ICODE] _divuchar.c:39:  _whilecontinue_0($3) :
;[ICODE] _divuchar.c:39: 	iTemp4 [k10 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x104C r0x104D r0x104E r0x104F ] = (unsigned-long-int)iTemp1 [k4 lr4:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __divuchar_b_1_1}[r0x1049 ]
_00107_DS_
;	.line	39; "_divuchar.c"	while (!(b & (1UL << (8*sizeof(unsigned char)-1)))) {
	BANKSEL	r0x1001
	MOVF	r0x1001,W
	MOVWF	r0x1004
;;1	CLRF	r0x1005
;;1	CLRF	r0x1006
;;1	CLRF	r0x1007
;[ICODE] _divuchar.c:39: 	iTemp5 [k11 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int} = iTemp4 [k10 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x104C r0x104D r0x104E r0x104F ] & 0x80 {literal-unsigned-long-int}
	BTFSC	r0x1004,7
	GOTO	_00112_DS_
;[ICODE] _divuchar.c:39: 	if iTemp5 [k11 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int} != 0 goto _whilecontinue_1($8)
;[ICODE] _divuchar.c:40: 	iTemp1 [k4 lr4:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __divuchar_b_1_1}[r0x1049 ] = iTemp1 [k4 lr4:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __divuchar_b_1_1}[r0x1049 ] << 0x1 {literal-unsigned-char}
;	.line	40; "_divuchar.c"	b <<= 1;
	BCF	STATUS,0
	RLF	r0x1001,F
;[ICODE] _divuchar.c:41: 	iTemp3 [k8 lr6:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __divuchar_mask_1_1}[r0x104B ] = iTemp3 [k8 lr6:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __divuchar_mask_1_1}[r0x104B ] << 0x1 {literal-unsigned-char}
;	.line	41; "_divuchar.c"	mask <<= 1;
	BCF	STATUS,0
	RLF	r0x1003,F
;[ICODE] _divuchar.c:41: 	 goto _whilecontinue_0($3)
	GOTO	_00107_DS_
;[ICODE] _divuchar.c:46:  _whilecontinue_1($8) :
;[ICODE] _divuchar.c:46: 	if iTemp3 [k8 lr6:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __divuchar_mask_1_1}[r0x104B ] == 0 goto _whilebreak_1($10)
_00112_DS_
;	.line	46; "_divuchar.c"	while (mask) {
	MOVLW	0x00
	BANKSEL	r0x1003
	IORWF	r0x1003,W
	BTFSC	STATUS,2
	GOTO	_00114_DS_
;[ICODE] _divuchar.c:47: 	iTemp8 [k14 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp0 [k2 lr3:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __divuchar_a_1_1}[r0x1048 ] < iTemp1 [k4 lr4:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __divuchar_b_1_1}[r0x1049 ]
;	.line	47; "_divuchar.c"	if (a >= b) {
	MOVF	r0x1001,W
	SUBWF	r0x1000,W
	BTFSS	STATUS,0
	GOTO	_00111_DS_
;genSkipc:3225: created from rifx:0x7ffe7c440f50
;[ICODE] _divuchar.c:47: 	if iTemp8 [k14 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} != 0 goto _iffalse_1($7)
;[ICODE] _divuchar.c:48: 	iTemp2 [k6 lr5:35 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __divuchar_result_1_1}[r0x104A ] = iTemp2 [k6 lr5:35 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __divuchar_result_1_1}[r0x104A ] + iTemp3 [k8 lr6:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __divuchar_mask_1_1}[r0x104B ]
;	.line	48; "_divuchar.c"	result += mask;
	MOVF	r0x1003,W
	ADDWF	r0x1002,F
;[ICODE] _divuchar.c:49: 	iTemp0 [k2 lr3:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __divuchar_a_1_1}[r0x1048 ] = iTemp0 [k2 lr3:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __divuchar_a_1_1}[r0x1048 ] - iTemp1 [k4 lr4:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __divuchar_b_1_1}[r0x1049 ]
;	.line	49; "_divuchar.c"	a -= b;
	MOVF	r0x1001,W
	SUBWF	r0x1000,F
;[ICODE] _divuchar.c:49:  _iffalse_1($7) :
;[ICODE] _divuchar.c:51: 	iTemp1 [k4 lr4:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __divuchar_b_1_1}[r0x1049 ] = iTemp1 [k4 lr4:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __divuchar_b_1_1}[r0x1049 ] >> 0x1 {literal-unsigned-char}
;shiftRight_Left2ResultLit:6080: shCount=1, size=1, sign=0, same=1, offr=0
_00111_DS_
;	.line	51; "_divuchar.c"	b >>= 1;
	BCF	STATUS,0
	BANKSEL	r0x1001
	RRF	r0x1001,F
;[ICODE] _divuchar.c:52: 	iTemp3 [k8 lr6:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __divuchar_mask_1_1}[r0x104B ] = iTemp3 [k8 lr6:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __divuchar_mask_1_1}[r0x104B ] >> 0x1 {literal-unsigned-char}
;shiftRight_Left2ResultLit:6080: shCount=1, size=1, sign=0, same=1, offr=0
;	.line	52; "_divuchar.c"	mask >>= 1;
	BCF	STATUS,0
	RRF	r0x1003,F
;[ICODE] _divuchar.c:52: 	 goto _whilecontinue_1($8)
	GOTO	_00112_DS_
;[ICODE] _divuchar.c:52:  _whilebreak_1($10) :
;[ICODE] _divuchar.c:55: 	ret iTemp2 [k6 lr5:35 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __divuchar_result_1_1}[r0x104A ]
_00114_DS_
;	.line	55; "_divuchar.c"	return result;
	BANKSEL	r0x1002
	MOVF	r0x1002,W
;[ICODE] _divuchar.c:55:  _return($11) :
;[ICODE] _divuchar.c:55: 	eproc __divuchar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char function    ( unsigned-char, unsigned-char) }
_00115_DS_
	RETURN	
; exit point of __divuchar


;	code size estimation:
;	   39+    5 =    44 instructions (   98 byte)

	end
