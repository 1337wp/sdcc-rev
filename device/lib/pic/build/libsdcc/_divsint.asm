;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:30 2018
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"_divsint.c"
	list	p=16f877
	radix dec
	include "p16f877.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	__divuint

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
	global	__divsint

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL__divsint_0	udata
r0x1001	res	1
r0x1000	res	1
r0x1003	res	1
r0x1002	res	1
r0x1004	res	1
r0x1005	res	1
r0x1006	res	1
r0x1007	res	1
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
code__divsint	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  __divsint	;Function start
; 2 exit points
;has an exit
;functions called:
;   __divuint
;   __divuint
;   __divuint
;   __divuint
;   __divuint
;   __divuint
;   __divuint
;   __divuint
;11 compiler assigned registers:
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
;; Starting pCode block
;[ICODE] _divsint.c:31:  _entry($11) :
;[ICODE] _divsint.c:31: 	proc __divsint [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( int, int) }
__divsint	;Function start
; 2 exit points
;[ICODE] _divsint.c:31: iTemp0 [k2 lr3:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ __divsint_a_1_1}[r0x1048 r0x1049 ] = recv __divsint [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( int, int) }
;	.line	31; "_divsint.c"	_divsint (int a, int b)
	BANKSEL	r0x1000
	MOVWF	r0x1000
	MOVF	STK00,W
	MOVWF	r0x1001
;[ICODE] _divsint.c:31: iTemp1 [k4 lr4:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ __divsint_b_1_1}[r0x104A r0x104B ] = recv __divsint [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( int, int) }
	MOVF	STK01,W
	MOVWF	r0x1002
	MOVF	STK02,W
	MOVWF	r0x1003
;[ICODE] _divsint.c:33: 	iTemp2 [k6 lr5:6 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp0 [k2 lr3:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ __divsint_a_1_1}[r0x1048 r0x1049 ] < 0x0 {literal-int}
;signed compare: left < lit(0x0=0), size=2, mask=ffff
;	.line	33; "_divsint.c"	if (a < 0) {
	BSF	STATUS,0
	BTFSS	r0x1000,7
	BCF	STATUS,0
	BTFSS	STATUS,0
	GOTO	_00112_DS_
;genSkipc:3225: created from rifx:0x7ffd64d5ccd0
;[ICODE] _divsint.c:33: 	if iTemp2 [k6 lr5:6 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_2($8)
;[ICODE] _divsint.c:35: 	iTemp3 [k7 lr7:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp1 [k4 lr4:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ __divsint_b_1_1}[r0x104A r0x104B ] < 0x0 {literal-int}
;signed compare: left < lit(0x0=0), size=2, mask=ffff
;	.line	35; "_divsint.c"	if (b < 0)
	BSF	STATUS,0
	BTFSS	r0x1002,7
	BCF	STATUS,0
	BTFSS	STATUS,0
	GOTO	_00106_DS_
;genSkipc:3225: created from rifx:0x7ffd64d5ccd0
;[ICODE] _divsint.c:35: 	if iTemp3 [k7 lr7:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_0($2)
;[ICODE] _divsint.c:36: 	iTemp4 [k9 lr9:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x104C r0x104D ] = - iTemp0 [k2 lr3:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ __divsint_a_1_1}[r0x1048 r0x1049 ]
;	.line	36; "_divsint.c"	return _divuint ((unsigned int)-a, (unsigned int)-b);
	COMF	r0x1001,W
	MOVWF	r0x1004
	COMF	r0x1000,W
	MOVWF	r0x1005
	INCF	r0x1004,F
	BTFSC	STATUS,2
	INCF	r0x1005,F
;[ICODE] _divsint.c:36: 	iTemp6 [k11 lr10:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x104E r0x104F ] = - iTemp1 [k4 lr4:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ __divsint_b_1_1}[r0x104A r0x104B ]
	COMF	r0x1003,W
	MOVWF	r0x1006
	COMF	r0x1002,W
	MOVWF	r0x1007
	INCF	r0x1006,F
	BTFSC	STATUS,2
	INCF	r0x1007,F
;[ICODE] _divsint.c:36: 	send iTemp4 [k9 lr9:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x104C r0x104D ]{argreg = 1}
;[ICODE] _divsint.c:36: 	send iTemp6 [k11 lr10:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x104E r0x104F ]{argreg = 1}
;[ICODE] _divsint.c:36: 	iTemp8 [k13 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x104C r0x104D ] = call __divuint [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function    ( unsigned-int, unsigned-int) }
	MOVF	r0x1006,W
	MOVWF	STK02
	MOVF	r0x1007,W
	MOVWF	STK01
	MOVF	r0x1004,W
	MOVWF	STK00
	MOVF	r0x1005,W
	PAGESEL	__divuint
	CALL	__divuint
	PAGESEL	$
	BANKSEL	r0x1005
	MOVWF	r0x1005
	MOVF	STK00,W
	MOVWF	r0x1004
	MOVWF	STK00
	MOVF	r0x1005,W
	GOTO	_00114_DS_
;[ICODE] _divsint.c:36:  _iffalse_0($2) :
;[ICODE] _divsint.c:38: 	iTemp10 [k15 lr16:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x104C r0x104D ] = - iTemp0 [k2 lr3:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ __divsint_a_1_1}[r0x1048 r0x1049 ]
_00106_DS_
;	.line	38; "_divsint.c"	return -_divuint ((unsigned int)-a, (unsigned int)b);
	BANKSEL	r0x1001
	COMF	r0x1001,W
	MOVWF	r0x1004
	COMF	r0x1000,W
	MOVWF	r0x1005
	INCF	r0x1004,F
	BTFSC	STATUS,2
	INCF	r0x1005,F
;[ICODE] _divsint.c:38: 	send iTemp10 [k15 lr16:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x104C r0x104D ]{argreg = 1}
;[ICODE] _divsint.c:38: 	send iTemp1 [k4 lr4:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ __divsint_b_1_1}[r0x104A r0x104B ]{argreg = 1}
;[ICODE] _divsint.c:38: 	iTemp13 [k18 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x104C r0x104D ] = call __divuint [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function    ( unsigned-int, unsigned-int) }
	MOVF	r0x1003,W
	MOVWF	STK02
	MOVF	r0x1002,W
	MOVWF	STK01
	MOVF	r0x1004,W
	MOVWF	STK00
	MOVF	r0x1005,W
	PAGESEL	__divuint
	CALL	__divuint
	PAGESEL	$
	BANKSEL	r0x1005
	MOVWF	r0x1005
	MOVF	STK00,W
	MOVWF	r0x1004
;[ICODE] _divsint.c:38: 	iTemp14 [k19 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x104C r0x104D ] = - iTemp13 [k18 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x104C r0x104D ]
	COMF	r0x1004,F
	COMF	r0x1005,F
	INCF	r0x1004,F
	BTFSC	STATUS,2
	INCF	r0x1005,F
;[ICODE] _divsint.c:38: 	ret iTemp14 [k19 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x104C r0x104D ]
	MOVF	r0x1004,W
	MOVWF	STK00
	MOVF	r0x1005,W
	GOTO	_00114_DS_
;[ICODE] _divsint.c:38:  _iffalse_2($8) :
;[ICODE] _divsint.c:41: 	iTemp16 [k21 lr23:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp1 [k4 lr4:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ __divsint_b_1_1}[r0x104A r0x104B ] < 0x0 {literal-int}
;signed compare: left < lit(0x0=0), size=2, mask=ffff
_00112_DS_
;	.line	41; "_divsint.c"	if (b < 0)
	BSF	STATUS,0
	BANKSEL	r0x1002
	BTFSS	r0x1002,7
	BCF	STATUS,0
	BTFSS	STATUS,0
	GOTO	_00109_DS_
;genSkipc:3225: created from rifx:0x7ffd64d5ccd0
;[ICODE] _divsint.c:41: 	if iTemp16 [k21 lr23:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_1($5)
;[ICODE] _divsint.c:42: 	iTemp18 [k23 lr25:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x104C r0x104D ] = - iTemp1 [k4 lr4:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ __divsint_b_1_1}[r0x104A r0x104B ]
;	.line	42; "_divsint.c"	return -_divuint ((unsigned int)a, (unsigned int)-b);
	COMF	r0x1003,W
	MOVWF	r0x1004
	COMF	r0x1002,W
	MOVWF	r0x1005
	INCF	r0x1004,F
	BTFSC	STATUS,2
	INCF	r0x1005,F
;[ICODE] _divsint.c:42: 	send iTemp0 [k2 lr3:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ __divsint_a_1_1}[r0x1048 r0x1049 ]{argreg = 1}
;[ICODE] _divsint.c:42: 	send iTemp18 [k23 lr25:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x104C r0x104D ]{argreg = 1}
;[ICODE] _divsint.c:42: 	iTemp20 [k25 lr28:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x104C r0x104D ] = call __divuint [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function    ( unsigned-int, unsigned-int) }
	MOVF	r0x1004,W
	MOVWF	STK02
	MOVF	r0x1005,W
	MOVWF	STK01
	MOVF	r0x1001,W
	MOVWF	STK00
	MOVF	r0x1000,W
	PAGESEL	__divuint
	CALL	__divuint
	PAGESEL	$
	BANKSEL	r0x1005
	MOVWF	r0x1005
	MOVF	STK00,W
	MOVWF	r0x1004
;[ICODE] _divsint.c:42: 	iTemp21 [k26 lr29:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x104C r0x104D ] = - iTemp20 [k25 lr28:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x104C r0x104D ]
	COMF	r0x1004,F
	COMF	r0x1005,F
	INCF	r0x1004,F
	BTFSC	STATUS,2
	INCF	r0x1005,F
;[ICODE] _divsint.c:42: 	ret iTemp21 [k26 lr29:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x104C r0x104D ]
	MOVF	r0x1004,W
	MOVWF	STK00
	MOVF	r0x1005,W
	GOTO	_00114_DS_
;[ICODE] _divsint.c:42:  _iffalse_1($5) :
;[ICODE] _divsint.c:44: 	send iTemp0 [k2 lr3:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ __divsint_a_1_1}[r0x1048 r0x1049 ]{argreg = 1}
;[ICODE] _divsint.c:44: 	send iTemp1 [k4 lr4:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ __divsint_b_1_1}[r0x104A r0x104B ]{argreg = 1}
;[ICODE] _divsint.c:44: 	iTemp25 [k30 lr34:35 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x1048 r0x1049 ] = call __divuint [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function    ( unsigned-int, unsigned-int) }
_00109_DS_
;	.line	44; "_divsint.c"	return _divuint ((unsigned int)a, (unsigned int)b);
	BANKSEL	r0x1003
	MOVF	r0x1003,W
	MOVWF	STK02
	MOVF	r0x1002,W
	MOVWF	STK01
	MOVF	r0x1001,W
	MOVWF	STK00
	MOVF	r0x1000,W
	PAGESEL	__divuint
	CALL	__divuint
	PAGESEL	$
	BANKSEL	r0x1000
	MOVWF	r0x1000
	MOVF	STK00,W
	MOVWF	r0x1001
	MOVWF	STK00
	MOVF	r0x1000,W
;[ICODE] _divsint.c:44:  _return($10) :
;[ICODE] _divsint.c:44: 	eproc __divsint [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( int, int) }
_00114_DS_
	RETURN	
; exit point of __divsint


;	code size estimation:
;	  118+   16 =   134 instructions (  300 byte)

	end
