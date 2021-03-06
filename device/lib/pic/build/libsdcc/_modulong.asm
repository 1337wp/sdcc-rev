;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:29 2018
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"_modulong.c"
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
	global	__modulong

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL__modulong_0	udata
r0x1003	res	1
r0x1002	res	1
r0x1001	res	1
r0x1000	res	1
r0x1007	res	1
r0x1006	res	1
r0x1005	res	1
r0x1004	res	1
r0x1008	res	1
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
code__modulong	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  __modulong	;Function start
; 2 exit points
;has an exit
;16 compiler assigned registers:
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
;; Starting pCode block
;[ICODE] _modulong.c:29:  _entry($12) :
;[ICODE] _modulong.c:29: 	proc __modulong [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int function    ( unsigned-long-int, unsigned-long-int) }
__modulong	;Function start
; 2 exit points
;[ICODE] _modulong.c:29: iTemp0 [k2 lr3:32 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ __modulong_a_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = recv __modulong [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int function    ( unsigned-long-int, unsigned-long-int) }
;	.line	29; "_modulong.c"	_modulong (unsigned long a, unsigned long b)
	BANKSEL	r0x1000
	MOVWF	r0x1000
	MOVF	STK00,W
	MOVWF	r0x1001
	MOVF	STK01,W
	MOVWF	r0x1002
	MOVF	STK02,W
	MOVWF	r0x1003
;[ICODE] _modulong.c:29: iTemp1 [k4 lr4:29 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ __modulong_b_1_1}[r0x104C r0x104D r0x104E r0x104F ] = recv __modulong [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int function    ( unsigned-long-int, unsigned-long-int) }
	MOVF	STK03,W
	MOVWF	r0x1004
	MOVF	STK04,W
	MOVWF	r0x1005
	MOVF	STK05,W
	MOVWF	r0x1006
	MOVF	STK06,W
;	.line	34; "_modulong.c"	if (!b) return (unsigned long)-1;
	MOVWF	r0x1007
	IORWF	r0x1006,W
	IORWF	r0x1005,W
	IORWF	r0x1004,W
	BTFSS	STATUS,2
	GOTO	_00119_DS_
;[ICODE] _modulong.c:34: 	ret 0xffffffff {literal-unsigned-long-int}
	MOVLW	0xff
	MOVWF	STK02
	MOVLW	0xff
	MOVWF	STK01
	MOVLW	0xff
	MOVWF	STK00
	MOVLW	0xff
	GOTO	_00115_DS_
;[ICODE] _modulong.c:38:  preHeaderLbl0($15) :
;[ICODE] _modulong.c:38: 	iTemp5 [k10 lr8:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __modulong_count_1_1}[r0x1050 ] := 0x1 {literal-unsigned-char}
_00119_DS_
;	.line	38; "_modulong.c"	while (!(b & (1UL << (8*sizeof(unsigned long)-1)))) {
	MOVLW	0x01
	BANKSEL	r0x1008
	MOVWF	r0x1008
;[ICODE] _modulong.c:38:  _whilecontinue_0($3) :
;[ICODE] _modulong.c:38: 	iTemp3 [k8 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int} = iTemp1 [k4 lr4:29 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ __modulong_b_1_1}[r0x104C r0x104D r0x104E r0x104F ] & 0x80000000 {literal-unsigned-long-int}
_00107_DS_
	BANKSEL	r0x1004
	BTFSC	r0x1004,7
	GOTO	_00112_DS_
;[ICODE] _modulong.c:38: 	if iTemp3 [k8 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int} != 0 goto preHeaderLbl1($18)
;[ICODE] _modulong.c:39: 	iTemp1 [k4 lr4:29 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ __modulong_b_1_1}[r0x104C r0x104D r0x104E r0x104F ] = iTemp1 [k4 lr4:29 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ __modulong_b_1_1}[r0x104C r0x104D r0x104E r0x104F ] << 0x1 {literal-unsigned-char}
;	.line	39; "_modulong.c"	b <<= 1;
	BCF	STATUS,0
	RLF	r0x1007,F
	RLF	r0x1006,F
	RLF	r0x1005,F
	RLF	r0x1004,F
;[ICODE] _modulong.c:40: 	iTemp5 [k10 lr8:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __modulong_count_1_1}[r0x1050 ] = iTemp5 [k10 lr8:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __modulong_count_1_1}[r0x1050 ] + 0x1 {literal-unsigned-char}
;	.line	40; "_modulong.c"	++count;
	INCF	r0x1008,F
;[ICODE] _modulong.c:40: 	 goto _whilecontinue_0($3)
	GOTO	_00107_DS_
;[ICODE] _modulong.c:44:  preHeaderLbl1($18) :
;[ICODE] _modulong.c:44: 	iTemp9 [k14 lr18:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __modulong_count_1_1}[r0x1050 ] := iTemp5 [k10 lr8:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __modulong_count_1_1}[r0x1050 ]
;[ICODE] _modulong.c:44:  _whilecontinue_1($8) :
;[ICODE] _modulong.c:44: 	if iTemp9 [k14 lr18:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __modulong_count_1_1}[r0x1050 ] == 0 goto _whilebreak_1($10)
_00112_DS_
;	.line	44; "_modulong.c"	while (count) {
	MOVLW	0x00
	BANKSEL	r0x1008
	IORWF	r0x1008,W
	BTFSC	STATUS,2
	GOTO	_00114_DS_
;[ICODE] _modulong.c:45: 	iTemp6 [k11 lr21:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp0 [k2 lr3:32 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ __modulong_a_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] < iTemp1 [k4 lr4:29 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ __modulong_b_1_1}[r0x104C r0x104D r0x104E r0x104F ]
;	.line	45; "_modulong.c"	if (a >= b) {
	MOVF	r0x1004,W
	SUBWF	r0x1000,W
	BTFSS	STATUS,2
	GOTO	_00125_DS_
	MOVF	r0x1005,W
	SUBWF	r0x1001,W
	BTFSS	STATUS,2
	GOTO	_00125_DS_
	MOVF	r0x1006,W
	SUBWF	r0x1002,W
	BTFSS	STATUS,2
	GOTO	_00125_DS_
	MOVF	r0x1007,W
	SUBWF	r0x1003,W
_00125_DS_
	BTFSS	STATUS,0
	GOTO	_00111_DS_
;genSkipc:3225: created from rifx:0x7ffead15b390
;[ICODE] _modulong.c:45: 	if iTemp6 [k11 lr21:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} != 0 goto _iffalse_1($7)
;[ICODE] _modulong.c:46: 	iTemp0 [k2 lr3:32 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ __modulong_a_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp0 [k2 lr3:32 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ __modulong_a_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] - iTemp1 [k4 lr4:29 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ __modulong_b_1_1}[r0x104C r0x104D r0x104E r0x104F ]
;	.line	46; "_modulong.c"	a -= b;
	BANKSEL	r0x1007
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
;[ICODE] _modulong.c:46:  _iffalse_1($7) :
;[ICODE] _modulong.c:48: 	iTemp1 [k4 lr4:29 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ __modulong_b_1_1}[r0x104C r0x104D r0x104E r0x104F ] = iTemp1 [k4 lr4:29 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ __modulong_b_1_1}[r0x104C r0x104D r0x104E r0x104F ] >> 0x1 {literal-unsigned-char}
;shiftRight_Left2ResultLit:6080: shCount=1, size=4, sign=0, same=1, offr=0
_00111_DS_
;	.line	48; "_modulong.c"	b >>= 1;
	BCF	STATUS,0
	BANKSEL	r0x1004
	RRF	r0x1004,F
	RRF	r0x1005,F
	RRF	r0x1006,F
	RRF	r0x1007,F
;[ICODE] _modulong.c:49: 	iTemp9 [k14 lr18:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __modulong_count_1_1}[r0x1050 ] = iTemp9 [k14 lr18:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __modulong_count_1_1}[r0x1050 ] - 0x1 {literal-unsigned-char}
;	.line	49; "_modulong.c"	--count;
	DECF	r0x1008,F
;[ICODE] _modulong.c:49: 	 goto _whilecontinue_1($8)
	GOTO	_00112_DS_
;[ICODE] _modulong.c:49:  _whilebreak_1($10) :
;[ICODE] _modulong.c:52: 	ret iTemp0 [k2 lr3:32 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ __modulong_a_1_1}[r0x1048 r0x1049 r0x104A r0x104B ]
_00114_DS_
;	.line	52; "_modulong.c"	return a;
	BANKSEL	r0x1003
	MOVF	r0x1003,W
	MOVWF	STK02
	MOVF	r0x1002,W
	MOVWF	STK01
	MOVF	r0x1001,W
	MOVWF	STK00
	MOVF	r0x1000,W
;[ICODE] _modulong.c:52:  _return($11) :
;[ICODE] _modulong.c:52: 	eproc __modulong [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int function    ( unsigned-long-int, unsigned-long-int) }
_00115_DS_
	RETURN	
; exit point of __modulong


;	code size estimation:
;	   88+    7 =    95 instructions (  204 byte)

	end
