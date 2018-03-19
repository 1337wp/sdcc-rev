;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:29 2018
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"_moduint.c"
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
	global	__moduint

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL__moduint_0	udata
r0x1001	res	1
r0x1000	res	1
r0x1003	res	1
r0x1002	res	1
r0x1004	res	1
r0x1006	res	1
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
code__moduint	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  __moduint	;Function start
; 2 exit points
;has an exit
;12 compiler assigned registers:
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
;; Starting pCode block
;[ICODE] _moduint.c:29:  _entry($12) :
;[ICODE] _moduint.c:29: 	proc __moduint [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function    ( unsigned-int, unsigned-int) }
__moduint	;Function start
; 2 exit points
;[ICODE] _moduint.c:29: iTemp0 [k2 lr3:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __moduint_a_1_1}[r0x1048 r0x1049 ] = recv __moduint [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function    ( unsigned-int, unsigned-int) }
;	.line	29; "_moduint.c"	_moduint (unsigned int a, unsigned int b)
	BANKSEL	r0x1000
	MOVWF	r0x1000
	MOVF	STK00,W
	MOVWF	r0x1001
;[ICODE] _moduint.c:29: iTemp1 [k4 lr4:30 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __moduint_b_1_1}[r0x104A r0x104B ] = recv __moduint [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function    ( unsigned-int, unsigned-int) }
	MOVF	STK01,W
	MOVWF	r0x1002
	MOVF	STK02,W
;	.line	34; "_moduint.c"	if (!b) return (unsigned int)-1;
	MOVWF	r0x1003
	IORWF	r0x1002,W
	BTFSS	STATUS,2
	GOTO	_00119_DS_
;[ICODE] _moduint.c:34: 	ret 0xffff {literal-unsigned-int}
	MOVLW	0xff
	MOVWF	STK00
	MOVLW	0xff
	GOTO	_00115_DS_
;[ICODE] _moduint.c:38:  preHeaderLbl0($15) :
;[ICODE] _moduint.c:38: 	iTemp6 [k11 lr8:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __moduint_count_1_1}[r0x104C ] := 0x1 {literal-unsigned-char}
_00119_DS_
;	.line	38; "_moduint.c"	while (!(b & (1UL << (8*sizeof(unsigned int)-1)))) {
	MOVLW	0x01
	BANKSEL	r0x1004
	MOVWF	r0x1004
;[ICODE] _moduint.c:38:  _whilecontinue_0($3) :
;[ICODE] _moduint.c:38: 	iTemp3 [k8 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x104D r0x104E r0x104F r0x1050 ] = (unsigned-long-int)iTemp1 [k4 lr4:30 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __moduint_b_1_1}[r0x104A r0x104B ]
_00107_DS_
	BANKSEL	r0x1003
	MOVF	r0x1003,W
;;1	MOVWF	r0x1005
	MOVF	r0x1002,W
	MOVWF	r0x1006
;;1	CLRF	r0x1007
;;1	CLRF	r0x1008
;[ICODE] _moduint.c:38: 	iTemp4 [k9 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int} = iTemp3 [k8 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x104D r0x104E r0x104F r0x1050 ] & 0x8000 {literal-unsigned-long-int}
	BTFSC	r0x1006,7
	GOTO	_00112_DS_
;[ICODE] _moduint.c:38: 	if iTemp4 [k9 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int} != 0 goto preHeaderLbl1($18)
;[ICODE] _moduint.c:39: 	iTemp1 [k4 lr4:30 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __moduint_b_1_1}[r0x104A r0x104B ] = iTemp1 [k4 lr4:30 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __moduint_b_1_1}[r0x104A r0x104B ] << 0x1 {literal-unsigned-char}
;	.line	39; "_moduint.c"	b <<= 1;
	BCF	STATUS,0
	RLF	r0x1003,F
	RLF	r0x1002,F
;[ICODE] _moduint.c:40: 	iTemp6 [k11 lr8:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __moduint_count_1_1}[r0x104C ] = iTemp6 [k11 lr8:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __moduint_count_1_1}[r0x104C ] + 0x1 {literal-unsigned-char}
;	.line	40; "_moduint.c"	++count;
	INCF	r0x1004,F
;[ICODE] _moduint.c:40: 	 goto _whilecontinue_0($3)
	GOTO	_00107_DS_
;[ICODE] _moduint.c:44:  preHeaderLbl1($18) :
;[ICODE] _moduint.c:44: 	iTemp10 [k15 lr19:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __moduint_count_1_1}[r0x104C ] := iTemp6 [k11 lr8:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __moduint_count_1_1}[r0x104C ]
;[ICODE] _moduint.c:44:  _whilecontinue_1($8) :
;[ICODE] _moduint.c:44: 	if iTemp10 [k15 lr19:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __moduint_count_1_1}[r0x104C ] == 0 goto _whilebreak_1($10)
_00112_DS_
;	.line	44; "_moduint.c"	while (count) {
	MOVLW	0x00
	BANKSEL	r0x1004
	IORWF	r0x1004,W
	BTFSC	STATUS,2
	GOTO	_00114_DS_
;[ICODE] _moduint.c:45: 	iTemp7 [k12 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp0 [k2 lr3:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __moduint_a_1_1}[r0x1048 r0x1049 ] < iTemp1 [k4 lr4:30 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __moduint_b_1_1}[r0x104A r0x104B ]
;	.line	45; "_moduint.c"	if (a >= b) {
	MOVF	r0x1002,W
	SUBWF	r0x1000,W
	BTFSS	STATUS,2
	GOTO	_00125_DS_
	MOVF	r0x1003,W
	SUBWF	r0x1001,W
_00125_DS_
	BTFSS	STATUS,0
	GOTO	_00111_DS_
;genSkipc:3225: created from rifx:0x7ffc1114f3f0
;[ICODE] _moduint.c:45: 	if iTemp7 [k12 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} != 0 goto _iffalse_1($7)
;[ICODE] _moduint.c:46: 	iTemp0 [k2 lr3:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __moduint_a_1_1}[r0x1048 r0x1049 ] = iTemp0 [k2 lr3:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __moduint_a_1_1}[r0x1048 r0x1049 ] - iTemp1 [k4 lr4:30 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __moduint_b_1_1}[r0x104A r0x104B ]
;	.line	46; "_moduint.c"	a -= b;
	BANKSEL	r0x1003
	MOVF	r0x1003,W
	SUBWF	r0x1001,F
	MOVF	r0x1002,W
	BTFSS	STATUS,0
	INCFSZ	r0x1002,W
	SUBWF	r0x1000,F
;[ICODE] _moduint.c:46:  _iffalse_1($7) :
;[ICODE] _moduint.c:48: 	iTemp1 [k4 lr4:30 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __moduint_b_1_1}[r0x104A r0x104B ] = iTemp1 [k4 lr4:30 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __moduint_b_1_1}[r0x104A r0x104B ] >> 0x1 {literal-unsigned-char}
;shiftRight_Left2ResultLit:6080: shCount=1, size=2, sign=0, same=1, offr=0
_00111_DS_
;	.line	48; "_moduint.c"	b >>= 1;
	BCF	STATUS,0
	BANKSEL	r0x1002
	RRF	r0x1002,F
	RRF	r0x1003,F
;[ICODE] _moduint.c:49: 	iTemp10 [k15 lr19:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __moduint_count_1_1}[r0x104C ] = iTemp10 [k15 lr19:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __moduint_count_1_1}[r0x104C ] - 0x1 {literal-unsigned-char}
;	.line	49; "_moduint.c"	--count;
	DECF	r0x1004,F
;[ICODE] _moduint.c:49: 	 goto _whilecontinue_1($8)
	GOTO	_00112_DS_
;[ICODE] _moduint.c:49:  _whilebreak_1($10) :
;[ICODE] _moduint.c:52: 	ret iTemp0 [k2 lr3:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __moduint_a_1_1}[r0x1048 r0x1049 ]
_00114_DS_
;	.line	52; "_moduint.c"	return a;
	BANKSEL	r0x1001
	MOVF	r0x1001,W
	MOVWF	STK00
	MOVF	r0x1000,W
;[ICODE] _moduint.c:52:  _return($11) :
;[ICODE] _moduint.c:52: 	eproc __moduint [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function    ( unsigned-int, unsigned-int) }
_00115_DS_
	RETURN	
; exit point of __moduint


;	code size estimation:
;	   53+    7 =    60 instructions (  134 byte)

	end
