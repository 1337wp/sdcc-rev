;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:29 2018
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"_divuint.c"
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
	global	__divuint

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL__divuint_0	udata
r0x1001	res	1
r0x1000	res	1
r0x1003	res	1
r0x1002	res	1
r0x1004	res	1
r0x1005	res	1
r0x1006	res	1
r0x1007	res	1
r0x1009	res	1
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
code__divuint	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  __divuint	;Function start
; 2 exit points
;has an exit
;15 compiler assigned registers:
;   r0x1000
;   STK00
;   r0x1001
;   STK01
;   r0x1002
;   STK02
;   r0x1003
;   r0x1004
;   r0x1005
;   r0x1006
;   r0x1007
;   r0x1008
;   r0x1009
;   r0x100A
;   r0x100B
;; Starting pCode block
;[ICODE] _divuint.c:29:  _entry($12) :
;[ICODE] _divuint.c:29: 	proc __divuint [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function    ( unsigned-int, unsigned-int) }
__divuint	;Function start
; 2 exit points
;[ICODE] _divuint.c:29: iTemp0 [k2 lr3:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __divuint_a_1_1}[r0x1048 r0x1049 ] = recv __divuint [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function    ( unsigned-int, unsigned-int) }
;	.line	29; "_divuint.c"	_divuint (unsigned int a, unsigned int b)
	BANKSEL	r0x1000
	MOVWF	r0x1000
	MOVF	STK00,W
	MOVWF	r0x1001
;[ICODE] _divuint.c:29: iTemp1 [k4 lr4:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __divuint_b_1_1}[r0x104A r0x104B ] = recv __divuint [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function    ( unsigned-int, unsigned-int) }
	MOVF	STK01,W
	MOVWF	r0x1002
	MOVF	STK02,W
	MOVWF	r0x1003
;[ICODE] _divuint.c:31: 	iTemp2 [k6 lr5:35 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __divuint_result_1_1}[r0x104C r0x104D ] := 0x0 {literal-unsigned-int}
;	.line	31; "_divuint.c"	unsigned int result = 0;
	CLRF	r0x1004
	CLRF	r0x1005
;[ICODE] _divuint.c:32: 	iTemp3 [k8 lr6:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __divuint_mask_1_1}[r0x104E r0x104F ] := 0x1 {literal-unsigned-int}
;	.line	32; "_divuint.c"	unsigned int mask = 0x01;
	MOVLW	0x01
	MOVWF	r0x1006
	CLRF	r0x1007
;[ICODE] _divuint.c:35: 	if iTemp1 [k4 lr4:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __divuint_b_1_1}[r0x104A r0x104B ] != 0 goto _whilecontinue_0($3)
;	.line	35; "_divuint.c"	if (!b) return (unsigned int)-1;
	MOVF	r0x1003,W
	IORWF	r0x1002,W
	BTFSS	STATUS,2
	GOTO	_00107_DS_
;[ICODE] _divuint.c:35: 	ret 0xffff {literal-unsigned-int}
	MOVLW	0xff
	MOVWF	STK00
	MOVLW	0xff
	GOTO	_00115_DS_
;[ICODE] _divuint.c:39:  _whilecontinue_0($3) :
;[ICODE] _divuint.c:39: 	iTemp4 [k10 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x1050 r0x1051 r0x1052 r0x1053 ] = (unsigned-long-int)iTemp1 [k4 lr4:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __divuint_b_1_1}[r0x104A r0x104B ]
_00107_DS_
;	.line	39; "_divuint.c"	while (!(b & (1UL << (8*sizeof(unsigned int)-1)))) {
	BANKSEL	r0x1003
	MOVF	r0x1003,W
;;1	MOVWF	r0x1008
	MOVF	r0x1002,W
	MOVWF	r0x1009
;;1	CLRF	r0x100A
;;1	CLRF	r0x100B
;[ICODE] _divuint.c:39: 	iTemp5 [k11 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int} = iTemp4 [k10 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x1050 r0x1051 r0x1052 r0x1053 ] & 0x8000 {literal-unsigned-long-int}
	BTFSC	r0x1009,7
	GOTO	_00112_DS_
;[ICODE] _divuint.c:39: 	if iTemp5 [k11 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int} != 0 goto _whilecontinue_1($8)
;[ICODE] _divuint.c:40: 	iTemp1 [k4 lr4:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __divuint_b_1_1}[r0x104A r0x104B ] = iTemp1 [k4 lr4:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __divuint_b_1_1}[r0x104A r0x104B ] << 0x1 {literal-unsigned-char}
;	.line	40; "_divuint.c"	b <<= 1;
	BCF	STATUS,0
	RLF	r0x1003,F
	RLF	r0x1002,F
;[ICODE] _divuint.c:41: 	iTemp3 [k8 lr6:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __divuint_mask_1_1}[r0x104E r0x104F ] = iTemp3 [k8 lr6:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __divuint_mask_1_1}[r0x104E r0x104F ] << 0x1 {literal-unsigned-char}
;	.line	41; "_divuint.c"	mask <<= 1;
	BCF	STATUS,0
	RLF	r0x1006,F
	RLF	r0x1007,F
;[ICODE] _divuint.c:41: 	 goto _whilecontinue_0($3)
	GOTO	_00107_DS_
;[ICODE] _divuint.c:46:  _whilecontinue_1($8) :
;[ICODE] _divuint.c:46: 	if iTemp3 [k8 lr6:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __divuint_mask_1_1}[r0x104E r0x104F ] == 0 goto _whilebreak_1($10)
_00112_DS_
;	.line	46; "_divuint.c"	while (mask) {
	BANKSEL	r0x1006
	MOVF	r0x1006,W
	IORWF	r0x1007,W
	BTFSC	STATUS,2
	GOTO	_00114_DS_
;[ICODE] _divuint.c:47: 	iTemp8 [k14 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp0 [k2 lr3:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __divuint_a_1_1}[r0x1048 r0x1049 ] < iTemp1 [k4 lr4:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __divuint_b_1_1}[r0x104A r0x104B ]
;	.line	47; "_divuint.c"	if (a >= b) {
	MOVF	r0x1002,W
	SUBWF	r0x1000,W
	BTFSS	STATUS,2
	GOTO	_00123_DS_
	MOVF	r0x1003,W
	SUBWF	r0x1001,W
_00123_DS_
	BTFSS	STATUS,0
	GOTO	_00111_DS_
;genSkipc:3225: created from rifx:0x7ffd885b7210
;[ICODE] _divuint.c:47: 	if iTemp8 [k14 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} != 0 goto _iffalse_1($7)
;[ICODE] _divuint.c:48: 	iTemp2 [k6 lr5:35 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __divuint_result_1_1}[r0x104C r0x104D ] = iTemp2 [k6 lr5:35 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __divuint_result_1_1}[r0x104C r0x104D ] + iTemp3 [k8 lr6:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __divuint_mask_1_1}[r0x104E r0x104F ]
;	.line	48; "_divuint.c"	result += mask;
	BANKSEL	r0x1006
	MOVF	r0x1006,W
	ADDWF	r0x1004,F
	MOVF	r0x1007,W
	BTFSC	STATUS,0
	INCFSZ	r0x1007,W
	ADDWF	r0x1005,F
;[ICODE] _divuint.c:49: 	iTemp0 [k2 lr3:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __divuint_a_1_1}[r0x1048 r0x1049 ] = iTemp0 [k2 lr3:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __divuint_a_1_1}[r0x1048 r0x1049 ] - iTemp1 [k4 lr4:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __divuint_b_1_1}[r0x104A r0x104B ]
;	.line	49; "_divuint.c"	a -= b;
	MOVF	r0x1003,W
	SUBWF	r0x1001,F
	MOVF	r0x1002,W
	BTFSS	STATUS,0
	INCFSZ	r0x1002,W
	SUBWF	r0x1000,F
;[ICODE] _divuint.c:49:  _iffalse_1($7) :
;[ICODE] _divuint.c:51: 	iTemp1 [k4 lr4:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __divuint_b_1_1}[r0x104A r0x104B ] = iTemp1 [k4 lr4:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __divuint_b_1_1}[r0x104A r0x104B ] >> 0x1 {literal-unsigned-char}
;shiftRight_Left2ResultLit:6080: shCount=1, size=2, sign=0, same=1, offr=0
_00111_DS_
;	.line	51; "_divuint.c"	b >>= 1;
	BCF	STATUS,0
	BANKSEL	r0x1002
	RRF	r0x1002,F
	RRF	r0x1003,F
;[ICODE] _divuint.c:52: 	iTemp3 [k8 lr6:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __divuint_mask_1_1}[r0x104E r0x104F ] = iTemp3 [k8 lr6:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __divuint_mask_1_1}[r0x104E r0x104F ] >> 0x1 {literal-unsigned-char}
;shiftRight_Left2ResultLit:6080: shCount=1, size=2, sign=0, same=1, offr=0
;	.line	52; "_divuint.c"	mask >>= 1;
	BCF	STATUS,0
	RRF	r0x1007,F
	RRF	r0x1006,F
;[ICODE] _divuint.c:52: 	 goto _whilecontinue_1($8)
	GOTO	_00112_DS_
;[ICODE] _divuint.c:52:  _whilebreak_1($10) :
;[ICODE] _divuint.c:55: 	ret iTemp2 [k6 lr5:35 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __divuint_result_1_1}[r0x104C r0x104D ]
_00114_DS_
;	.line	55; "_divuint.c"	return result;
	BANKSEL	r0x1004
	MOVF	r0x1004,W
	MOVWF	STK00
	MOVF	r0x1005,W
;[ICODE] _divuint.c:55:  _return($11) :
;[ICODE] _divuint.c:55: 	eproc __divuint [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function    ( unsigned-int, unsigned-int) }
_00115_DS_
	RETURN	
; exit point of __divuint


;	code size estimation:
;	   67+    6 =    73 instructions (  158 byte)

	end
