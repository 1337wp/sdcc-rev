;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:29 2018
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"_moduchar.c"
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
	global	__moduchar

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL__moduchar_0	udata
r0x1000	res	1
r0x1001	res	1
r0x1002	res	1
r0x1003	res	1
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
code__moduchar	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  __moduchar	;Function start
; 2 exit points
;has an exit
;8 compiler assigned registers:
;   r0x1000
;   STK00
;   r0x1001
;   r0x1002
;   r0x1003
;   r0x1004
;   r0x1005
;   r0x1006
;; Starting pCode block
;[ICODE] _moduchar.c:29:  _entry($12) :
;[ICODE] _moduchar.c:29: 	proc __moduchar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char function    ( unsigned-char, unsigned-char) }
__moduchar	;Function start
; 2 exit points
;[ICODE] _moduchar.c:29: iTemp0 [k2 lr3:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __moduchar_a_1_1}[r0x1048 ] = recv __moduchar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char function    ( unsigned-char, unsigned-char) }
;	.line	29; "_moduchar.c"	_moduchar (unsigned char a, unsigned char b)
	BANKSEL	r0x1000
	MOVWF	r0x1000
;[ICODE] _moduchar.c:29: iTemp1 [k4 lr4:30 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __moduchar_b_1_1}[r0x1049 ] = recv __moduchar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char function    ( unsigned-char, unsigned-char) }
	MOVF	STK00,W
	MOVWF	r0x1001
;[ICODE] _moduchar.c:34: 	if iTemp1 [k4 lr4:30 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __moduchar_b_1_1}[r0x1049 ] != 0 goto preHeaderLbl0($15)
;	.line	34; "_moduchar.c"	if (!b) return (unsigned char)-1;
	MOVF	r0x1001,W
	BTFSS	STATUS,2
	GOTO	_00119_DS_
;[ICODE] _moduchar.c:34: 	ret 0xff {literal-unsigned-char}
	MOVLW	0xff
	GOTO	_00115_DS_
;[ICODE] _moduchar.c:38:  preHeaderLbl0($15) :
;[ICODE] _moduchar.c:38: 	iTemp6 [k11 lr8:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __moduchar_count_1_1}[r0x104A ] := 0x1 {literal-unsigned-char}
_00119_DS_
;	.line	38; "_moduchar.c"	while (!(b & (1UL << (8*sizeof(unsigned char)-1)))) {
	MOVLW	0x01
	BANKSEL	r0x1002
	MOVWF	r0x1002
;[ICODE] _moduchar.c:38:  _whilecontinue_0($3) :
;[ICODE] _moduchar.c:38: 	iTemp3 [k8 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x104B r0x104C r0x104D r0x104E ] = (unsigned-long-int)iTemp1 [k4 lr4:30 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __moduchar_b_1_1}[r0x1049 ]
_00107_DS_
	BANKSEL	r0x1001
	MOVF	r0x1001,W
	MOVWF	r0x1003
;;1	CLRF	r0x1004
;;1	CLRF	r0x1005
;;1	CLRF	r0x1006
;[ICODE] _moduchar.c:38: 	iTemp4 [k9 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int} = iTemp3 [k8 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x104B r0x104C r0x104D r0x104E ] & 0x80 {literal-unsigned-long-int}
	BTFSC	r0x1003,7
	GOTO	_00112_DS_
;[ICODE] _moduchar.c:38: 	if iTemp4 [k9 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int} != 0 goto preHeaderLbl1($18)
;[ICODE] _moduchar.c:39: 	iTemp1 [k4 lr4:30 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __moduchar_b_1_1}[r0x1049 ] = iTemp1 [k4 lr4:30 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __moduchar_b_1_1}[r0x1049 ] << 0x1 {literal-unsigned-char}
;	.line	39; "_moduchar.c"	b <<= 1;
	BCF	STATUS,0
	RLF	r0x1001,F
;[ICODE] _moduchar.c:40: 	iTemp6 [k11 lr8:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __moduchar_count_1_1}[r0x104A ] = iTemp6 [k11 lr8:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __moduchar_count_1_1}[r0x104A ] + 0x1 {literal-unsigned-char}
;	.line	40; "_moduchar.c"	++count;
	INCF	r0x1002,F
;[ICODE] _moduchar.c:40: 	 goto _whilecontinue_0($3)
	GOTO	_00107_DS_
;[ICODE] _moduchar.c:44:  preHeaderLbl1($18) :
;[ICODE] _moduchar.c:44: 	iTemp10 [k15 lr19:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __moduchar_count_1_1}[r0x104A ] := iTemp6 [k11 lr8:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __moduchar_count_1_1}[r0x104A ]
;[ICODE] _moduchar.c:44:  _whilecontinue_1($8) :
;[ICODE] _moduchar.c:44: 	if iTemp10 [k15 lr19:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __moduchar_count_1_1}[r0x104A ] == 0 goto _whilebreak_1($10)
_00112_DS_
;	.line	44; "_moduchar.c"	while (count) {
	MOVLW	0x00
	BANKSEL	r0x1002
	IORWF	r0x1002,W
	BTFSC	STATUS,2
	GOTO	_00114_DS_
;[ICODE] _moduchar.c:45: 	iTemp7 [k12 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp0 [k2 lr3:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __moduchar_a_1_1}[r0x1048 ] < iTemp1 [k4 lr4:30 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __moduchar_b_1_1}[r0x1049 ]
;	.line	45; "_moduchar.c"	if (a >= b) {
	MOVF	r0x1001,W
	SUBWF	r0x1000,W
	BTFSS	STATUS,0
	GOTO	_00111_DS_
;genSkipc:3225: created from rifx:0x7fff028cf300
;[ICODE] _moduchar.c:45: 	if iTemp7 [k12 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} != 0 goto _iffalse_1($7)
;[ICODE] _moduchar.c:46: 	iTemp0 [k2 lr3:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __moduchar_a_1_1}[r0x1048 ] = iTemp0 [k2 lr3:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __moduchar_a_1_1}[r0x1048 ] - iTemp1 [k4 lr4:30 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __moduchar_b_1_1}[r0x1049 ]
;	.line	46; "_moduchar.c"	a -= b;
	MOVF	r0x1001,W
	SUBWF	r0x1000,F
;[ICODE] _moduchar.c:46:  _iffalse_1($7) :
;[ICODE] _moduchar.c:48: 	iTemp1 [k4 lr4:30 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __moduchar_b_1_1}[r0x1049 ] = iTemp1 [k4 lr4:30 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __moduchar_b_1_1}[r0x1049 ] >> 0x1 {literal-unsigned-char}
;shiftRight_Left2ResultLit:6080: shCount=1, size=1, sign=0, same=1, offr=0
_00111_DS_
;	.line	48; "_moduchar.c"	b >>= 1;
	BCF	STATUS,0
	BANKSEL	r0x1001
	RRF	r0x1001,F
;[ICODE] _moduchar.c:49: 	iTemp10 [k15 lr19:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __moduchar_count_1_1}[r0x104A ] = iTemp10 [k15 lr19:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __moduchar_count_1_1}[r0x104A ] - 0x1 {literal-unsigned-char}
;	.line	49; "_moduchar.c"	--count;
	DECF	r0x1002,F
;[ICODE] _moduchar.c:49: 	 goto _whilecontinue_1($8)
	GOTO	_00112_DS_
;[ICODE] _moduchar.c:49:  _whilebreak_1($10) :
;[ICODE] _moduchar.c:52: 	ret iTemp0 [k2 lr3:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __moduchar_a_1_1}[r0x1048 ]
_00114_DS_
;	.line	52; "_moduchar.c"	return a;
	BANKSEL	r0x1000
	MOVF	r0x1000,W
;[ICODE] _moduchar.c:52:  _return($11) :
;[ICODE] _moduchar.c:52: 	eproc __moduchar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char function    ( unsigned-char, unsigned-char) }
_00115_DS_
	RETURN	
; exit point of __moduchar


;	code size estimation:
;	   34+    6 =    40 instructions (   92 byte)

	end
