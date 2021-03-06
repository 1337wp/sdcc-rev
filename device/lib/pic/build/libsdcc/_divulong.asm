;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:29 2018
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"_divulong.c"
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
	global	__divulong

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL__divulong_0	udata
r0x1003	res	1
r0x1002	res	1
r0x1001	res	1
r0x1000	res	1
r0x1007	res	1
r0x1006	res	1
r0x1005	res	1
r0x1004	res	1
r0x1008	res	1
r0x1009	res	1
r0x100A	res	1
r0x100B	res	1
r0x100C	res	1
r0x100D	res	1
r0x100E	res	1
r0x100F	res	1
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
code__divulong	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  __divulong	;Function start
; 2 exit points
;has an exit
;23 compiler assigned registers:
;   r0x1000
;   STK00
;   r0x1001
;   STK01
;   r0x1002
;   STK02
;   r0x1003
;   STK03
;   r0x1004
;   STK04
;   r0x1005
;   STK05
;   r0x1006
;   STK06
;   r0x1007
;   r0x1008
;   r0x1009
;   r0x100A
;   r0x100B
;   r0x100C
;   r0x100D
;   r0x100E
;   r0x100F
;; Starting pCode block
;[ICODE] _divulong.c:29:  _entry($12) :
;[ICODE] _divulong.c:29: 	proc __divulong [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int function    ( unsigned-long-int, unsigned-long-int) }
__divulong	;Function start
; 2 exit points
;[ICODE] _divulong.c:29: iTemp0 [k2 lr3:32 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ __divulong_a_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = recv __divulong [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int function    ( unsigned-long-int, unsigned-long-int) }
;	.line	29; "_divulong.c"	_divulong (unsigned long a, unsigned long b)
	BANKSEL	r0x1000
	MOVWF	r0x1000
	MOVF	STK00,W
	MOVWF	r0x1001
	MOVF	STK01,W
	MOVWF	r0x1002
	MOVF	STK02,W
	MOVWF	r0x1003
;[ICODE] _divulong.c:29: iTemp1 [k4 lr4:32 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ __divulong_b_1_1}[r0x104C r0x104D r0x104E r0x104F ] = recv __divulong [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int function    ( unsigned-long-int, unsigned-long-int) }
	MOVF	STK03,W
	MOVWF	r0x1004
	MOVF	STK04,W
	MOVWF	r0x1005
	MOVF	STK05,W
	MOVWF	r0x1006
	MOVF	STK06,W
	MOVWF	r0x1007
;[ICODE] _divulong.c:31: 	iTemp2 [k6 lr5:34 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ __divulong_result_1_1}[r0x1050 r0x1051 r0x1052 r0x1053 ] := 0x0 {literal-unsigned-long-int}
;	.line	31; "_divulong.c"	unsigned long result = 0;
	CLRF	r0x1008
	CLRF	r0x1009
	CLRF	r0x100A
	CLRF	r0x100B
;[ICODE] _divulong.c:32: 	iTemp3 [k8 lr6:32 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ __divulong_mask_1_1}[r0x1054 r0x1055 r0x1056 r0x1057 ] := 0x1 {literal-unsigned-long-int}
;	.line	32; "_divulong.c"	unsigned long mask = 0x01;
	MOVLW	0x01
	MOVWF	r0x100C
	CLRF	r0x100D
	CLRF	r0x100E
	CLRF	r0x100F
;[ICODE] _divulong.c:35: 	if iTemp1 [k4 lr4:32 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ __divulong_b_1_1}[r0x104C r0x104D r0x104E r0x104F ] != 0 goto _whilecontinue_0($3)
;	.line	35; "_divulong.c"	if (!b) return (unsigned long)-1;
	MOVF	r0x1007,W
	IORWF	r0x1006,W
	IORWF	r0x1005,W
	IORWF	r0x1004,W
	BTFSS	STATUS,2
	GOTO	_00107_DS_
;[ICODE] _divulong.c:35: 	ret 0xffffffff {literal-unsigned-long-int}
	MOVLW	0xff
	MOVWF	STK02
	MOVLW	0xff
	MOVWF	STK01
	MOVLW	0xff
	MOVWF	STK00
	MOVLW	0xff
	GOTO	_00115_DS_
;[ICODE] _divulong.c:39:  _whilecontinue_0($3) :
;[ICODE] _divulong.c:39: 	iTemp4 [k10 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int} = iTemp1 [k4 lr4:32 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ __divulong_b_1_1}[r0x104C r0x104D r0x104E r0x104F ] & 0x80000000 {literal-unsigned-long-int}
_00107_DS_
;	.line	39; "_divulong.c"	while (!(b & (1UL << (8*sizeof(unsigned long)-1)))) {
	BANKSEL	r0x1004
	BTFSC	r0x1004,7
	GOTO	_00112_DS_
;[ICODE] _divulong.c:39: 	if iTemp4 [k10 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int} != 0 goto _whilecontinue_1($8)
;[ICODE] _divulong.c:40: 	iTemp1 [k4 lr4:32 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ __divulong_b_1_1}[r0x104C r0x104D r0x104E r0x104F ] = iTemp1 [k4 lr4:32 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ __divulong_b_1_1}[r0x104C r0x104D r0x104E r0x104F ] << 0x1 {literal-unsigned-char}
;	.line	40; "_divulong.c"	b <<= 1;
	BCF	STATUS,0
	RLF	r0x1007,F
	RLF	r0x1006,F
	RLF	r0x1005,F
	RLF	r0x1004,F
;[ICODE] _divulong.c:41: 	iTemp3 [k8 lr6:32 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ __divulong_mask_1_1}[r0x1054 r0x1055 r0x1056 r0x1057 ] = iTemp3 [k8 lr6:32 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ __divulong_mask_1_1}[r0x1054 r0x1055 r0x1056 r0x1057 ] << 0x1 {literal-unsigned-char}
;	.line	41; "_divulong.c"	mask <<= 1;
	BCF	STATUS,0
	RLF	r0x100C,F
	RLF	r0x100D,F
	RLF	r0x100E,F
	RLF	r0x100F,F
;[ICODE] _divulong.c:41: 	 goto _whilecontinue_0($3)
	GOTO	_00107_DS_
;[ICODE] _divulong.c:46:  _whilecontinue_1($8) :
;[ICODE] _divulong.c:46: 	if iTemp3 [k8 lr6:32 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ __divulong_mask_1_1}[r0x1054 r0x1055 r0x1056 r0x1057 ] == 0 goto _whilebreak_1($10)
_00112_DS_
;	.line	46; "_divulong.c"	while (mask) {
	BANKSEL	r0x100C
	MOVF	r0x100C,W
	IORWF	r0x100D,W
	IORWF	r0x100E,W
	IORWF	r0x100F,W
	BTFSC	STATUS,2
	GOTO	_00114_DS_
;[ICODE] _divulong.c:47: 	iTemp7 [k13 lr21:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp0 [k2 lr3:32 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ __divulong_a_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] < iTemp1 [k4 lr4:32 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ __divulong_b_1_1}[r0x104C r0x104D r0x104E r0x104F ]
;	.line	47; "_divulong.c"	if (a >= b) {
	MOVF	r0x1004,W
	SUBWF	r0x1000,W
	BTFSS	STATUS,2
	GOTO	_00123_DS_
	MOVF	r0x1005,W
	SUBWF	r0x1001,W
	BTFSS	STATUS,2
	GOTO	_00123_DS_
	MOVF	r0x1006,W
	SUBWF	r0x1002,W
	BTFSS	STATUS,2
	GOTO	_00123_DS_
	MOVF	r0x1007,W
	SUBWF	r0x1003,W
_00123_DS_
	BTFSS	STATUS,0
	GOTO	_00111_DS_
;genSkipc:3225: created from rifx:0x7fff20c03530
;[ICODE] _divulong.c:47: 	if iTemp7 [k13 lr21:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} != 0 goto _iffalse_1($7)
;[ICODE] _divulong.c:48: 	iTemp2 [k6 lr5:34 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ __divulong_result_1_1}[r0x1050 r0x1051 r0x1052 r0x1053 ] = iTemp2 [k6 lr5:34 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ __divulong_result_1_1}[r0x1050 r0x1051 r0x1052 r0x1053 ] + iTemp3 [k8 lr6:32 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ __divulong_mask_1_1}[r0x1054 r0x1055 r0x1056 r0x1057 ]
;	.line	48; "_divulong.c"	result += mask;
	BANKSEL	r0x100C
	MOVF	r0x100C,W
	ADDWF	r0x1008,F
	MOVF	r0x100D,W
	BTFSC	STATUS,0
	INCFSZ	r0x100D,W
	ADDWF	r0x1009,F
	MOVF	r0x100E,W
	BTFSC	STATUS,0
	INCFSZ	r0x100E,W
	ADDWF	r0x100A,F
	MOVF	r0x100F,W
	BTFSC	STATUS,0
	INCFSZ	r0x100F,W
	ADDWF	r0x100B,F
;[ICODE] _divulong.c:49: 	iTemp0 [k2 lr3:32 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ __divulong_a_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp0 [k2 lr3:32 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ __divulong_a_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] - iTemp1 [k4 lr4:32 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ __divulong_b_1_1}[r0x104C r0x104D r0x104E r0x104F ]
;	.line	49; "_divulong.c"	a -= b;
	MOVF	r0x1007,W
	SUBWF	r0x1003,F
	MOVF	r0x1006,W
	BTFSS	STATUS,0
	INCFSZ	r0x1006,W
	SUBWF	r0x1002,F
	MOVF	r0x1005,W
	BTFSS	STATUS,0
	INCFSZ	r0x1005,W
	SUBWF	r0x1001,F
	MOVF	r0x1004,W
	BTFSS	STATUS,0
	INCFSZ	r0x1004,W
	SUBWF	r0x1000,F
;[ICODE] _divulong.c:49:  _iffalse_1($7) :
;[ICODE] _divulong.c:51: 	iTemp1 [k4 lr4:32 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ __divulong_b_1_1}[r0x104C r0x104D r0x104E r0x104F ] = iTemp1 [k4 lr4:32 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ __divulong_b_1_1}[r0x104C r0x104D r0x104E r0x104F ] >> 0x1 {literal-unsigned-char}
;shiftRight_Left2ResultLit:6080: shCount=1, size=4, sign=0, same=1, offr=0
_00111_DS_
;	.line	51; "_divulong.c"	b >>= 1;
	BCF	STATUS,0
	BANKSEL	r0x1004
	RRF	r0x1004,F
	RRF	r0x1005,F
	RRF	r0x1006,F
	RRF	r0x1007,F
;[ICODE] _divulong.c:52: 	iTemp3 [k8 lr6:32 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ __divulong_mask_1_1}[r0x1054 r0x1055 r0x1056 r0x1057 ] = iTemp3 [k8 lr6:32 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ __divulong_mask_1_1}[r0x1054 r0x1055 r0x1056 r0x1057 ] >> 0x1 {literal-unsigned-char}
;shiftRight_Left2ResultLit:6080: shCount=1, size=4, sign=0, same=1, offr=0
;	.line	52; "_divulong.c"	mask >>= 1;
	BCF	STATUS,0
	RRF	r0x100F,F
	RRF	r0x100E,F
	RRF	r0x100D,F
	RRF	r0x100C,F
;[ICODE] _divulong.c:52: 	 goto _whilecontinue_1($8)
	GOTO	_00112_DS_
;[ICODE] _divulong.c:52:  _whilebreak_1($10) :
;[ICODE] _divulong.c:55: 	ret iTemp2 [k6 lr5:34 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ __divulong_result_1_1}[r0x1050 r0x1051 r0x1052 r0x1053 ]
_00114_DS_
;	.line	55; "_divulong.c"	return result;
	BANKSEL	r0x1008
	MOVF	r0x1008,W
	MOVWF	STK02
	MOVF	r0x1009,W
	MOVWF	STK01
	MOVF	r0x100A,W
	MOVWF	STK00
	MOVF	r0x100B,W
;[ICODE] _divulong.c:55:  _return($11) :
;[ICODE] _divulong.c:55: 	eproc __divulong [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int function    ( unsigned-long-int, unsigned-long-int) }
_00115_DS_
	RETURN	
; exit point of __divulong


;	code size estimation:
;	  120+    6 =   126 instructions (  264 byte)

	end
