;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:30 2018
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"_divschar.c"
	list	p=16f877
	radix dec
	include "p16f877.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	__divuchar

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
	global	__divschar

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL__divschar_0	udata
r0x1000	res	1
r0x1001	res	1
r0x1002	res	1
r0x1003	res	1
r0x1004	res	1
r0x1005	res	1
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
code__divschar	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  __divschar	;Function start
; 2 exit points
;has an exit
;functions called:
;   __divuchar
;   __divuchar
;   __divuchar
;   __divuchar
;   __divuchar
;   __divuchar
;   __divuchar
;   __divuchar
;7 compiler assigned registers:
;   r0x1000
;   STK00
;   r0x1001
;   r0x1002
;   r0x1003
;   r0x1004
;   r0x1005
;; Starting pCode block
;[ICODE] _divschar.c:31:  _entry($11) :
;[ICODE] _divschar.c:31: 	proc __divschar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( char, char) }
__divschar	;Function start
; 2 exit points
;[ICODE] _divschar.c:31: iTemp0 [k2 lr3:48 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ __divschar_a_1_1}[r0x1048 ] = recv __divschar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( char, char) }
;	.line	31; "_divschar.c"	_divschar (signed char a, signed char b)
	BANKSEL	r0x1000
	MOVWF	r0x1000
;[ICODE] _divschar.c:31: iTemp1 [k4 lr4:50 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ __divschar_b_1_1}[r0x1049 ] = recv __divschar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( char, char) }
	MOVF	STK00,W
	MOVWF	r0x1001
;[ICODE] _divschar.c:33: 	iTemp2 [k6 lr5:6 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp0 [k2 lr3:48 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ __divschar_a_1_1}[r0x1048 ] < 0x0 {literal-char}
;signed compare: left < lit(0x0=0), size=1, mask=ff
;	.line	33; "_divschar.c"	if (a < 0) {
	BSF	STATUS,0
	BTFSS	r0x1000,7
	BCF	STATUS,0
	BTFSS	STATUS,0
	GOTO	_00112_DS_
;genSkipc:3225: created from rifx:0x7fff7e9701b0
;[ICODE] _divschar.c:33: 	if iTemp2 [k6 lr5:6 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_2($8)
;[ICODE] _divschar.c:35: 	iTemp3 [k7 lr7:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp1 [k4 lr4:50 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ __divschar_b_1_1}[r0x1049 ] < 0x0 {literal-char}
;signed compare: left < lit(0x0=0), size=1, mask=ff
;	.line	35; "_divschar.c"	if (b < 0)
	BSF	STATUS,0
	BTFSS	r0x1001,7
	BCF	STATUS,0
	BTFSS	STATUS,0
	GOTO	_00106_DS_
;genSkipc:3225: created from rifx:0x7fff7e9701b0
;[ICODE] _divschar.c:35: 	if iTemp3 [k7 lr7:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_0($2)
;[ICODE] _divschar.c:36: 	iTemp4 [k9 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x104A r0x104B ] = (int)iTemp0 [k2 lr3:48 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ __divschar_a_1_1}[r0x1048 ]
;	.line	36; "_divschar.c"	return _divuchar ((unsigned int)-a, (unsigned int)-b);
	MOVF	r0x1000,W
	MOVWF	r0x1002
	CLRF	r0x1003
	BTFSC	r0x1002,7
	DECF	r0x1003,F
;[ICODE] _divschar.c:36: 	iTemp6 [k11 lr10:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x104A r0x104B ] = - iTemp4 [k9 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x104A r0x104B ]
	COMF	r0x1002,F
	COMF	r0x1003,F
	INCF	r0x1002,F
	BTFSC	STATUS,2
	INCF	r0x1003,F
;[ICODE] _divschar.c:36: 	iTemp7 [k12 lr12:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x104C ] = (unsigned-char)iTemp6 [k11 lr10:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x104A r0x104B ]
	MOVF	r0x1002,W
	MOVWF	r0x1004
;[ICODE] _divschar.c:36: 	iTemp8 [k13 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x104A r0x104B ] = (int)iTemp1 [k4 lr4:50 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ __divschar_b_1_1}[r0x1049 ]
	MOVF	r0x1001,W
	MOVWF	r0x1002
	CLRF	r0x1003
	BTFSC	r0x1002,7
	DECF	r0x1003,F
;[ICODE] _divschar.c:36: 	iTemp10 [k15 lr14:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x104A r0x104B ] = - iTemp8 [k13 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x104A r0x104B ]
	COMF	r0x1002,F
	COMF	r0x1003,F
	INCF	r0x1002,F
	BTFSC	STATUS,2
	INCF	r0x1003,F
;[ICODE] _divschar.c:36: 	iTemp11 [k16 lr16:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x104D ] = (unsigned-char)iTemp10 [k15 lr14:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x104A r0x104B ]
	MOVF	r0x1002,W
	MOVWF	r0x1005
	MOVWF	STK00
	MOVF	r0x1004,W
	PAGESEL	__divuchar
	CALL	__divuchar
	PAGESEL	$
	BANKSEL	r0x1002
	MOVWF	r0x1002
	GOTO	_00114_DS_
;[ICODE] _divschar.c:36:  _iffalse_0($2) :
;[ICODE] _divschar.c:38: 	iTemp14 [k19 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x104A r0x104B ] = (int)iTemp0 [k2 lr3:48 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ __divschar_a_1_1}[r0x1048 ]
_00106_DS_
;	.line	38; "_divschar.c"	return -_divuchar ((unsigned int)-a, (unsigned int)b);
	BANKSEL	r0x1000
	MOVF	r0x1000,W
	MOVWF	r0x1002
	CLRF	r0x1003
	BTFSC	r0x1002,7
	DECF	r0x1003,F
;[ICODE] _divschar.c:38: 	iTemp16 [k21 lr23:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x104A r0x104B ] = - iTemp14 [k19 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x104A r0x104B ]
	COMF	r0x1002,F
	COMF	r0x1003,F
	INCF	r0x1002,F
	BTFSC	STATUS,2
	INCF	r0x1003,F
;[ICODE] _divschar.c:38: 	iTemp17 [k22 lr25:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x104C ] = (unsigned-char)iTemp16 [k21 lr23:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x104A r0x104B ]
	MOVF	r0x1002,W
	MOVWF	r0x1004
;[ICODE] _divschar.c:38: 	iTemp18 [k23 lr26:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x104A r0x104B ] = (unsigned-int)iTemp1 [k4 lr4:50 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ __divschar_b_1_1}[r0x1049 ]
	MOVF	r0x1001,W
	MOVWF	r0x1002
	CLRF	r0x1003
	BTFSC	r0x1002,7
	DECF	r0x1003,F
;[ICODE] _divschar.c:38: 	iTemp19 [k24 lr27:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x104D ] = (unsigned-char)iTemp18 [k23 lr26:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x104A r0x104B ]
	MOVF	r0x1002,W
	MOVWF	r0x1005
	MOVWF	STK00
	MOVF	r0x1004,W
	PAGESEL	__divuchar
	CALL	__divuchar
	PAGESEL	$
	BANKSEL	r0x1002
	MOVWF	r0x1002
;[ICODE] _divschar.c:38: 	iTemp21 [k26 lr31:32 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x104A ] = - iTemp20 [k25 lr30:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x104A ]
	COMF	r0x1002,F
	INCF	r0x1002,F
;[ICODE] _divschar.c:38: 	ret iTemp21 [k26 lr31:32 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x104A ]
	MOVF	r0x1002,W
	GOTO	_00114_DS_
;[ICODE] _divschar.c:38:  _iffalse_2($8) :
;[ICODE] _divschar.c:41: 	iTemp23 [k28 lr34:35 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp1 [k4 lr4:50 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ __divschar_b_1_1}[r0x1049 ] < 0x0 {literal-char}
;signed compare: left < lit(0x0=0), size=1, mask=ff
_00112_DS_
;	.line	41; "_divschar.c"	if (b < 0)
	BSF	STATUS,0
	BANKSEL	r0x1001
	BTFSS	r0x1001,7
	BCF	STATUS,0
	BTFSS	STATUS,0
	GOTO	_00109_DS_
;genSkipc:3225: created from rifx:0x7fff7e9701b0
;[ICODE] _divschar.c:41: 	if iTemp23 [k28 lr34:35 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_1($5)
;[ICODE] _divschar.c:42: 	iTemp24 [k29 lr36:37 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x104A r0x104B ] = (unsigned-int)iTemp0 [k2 lr3:48 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ __divschar_a_1_1}[r0x1048 ]
;	.line	42; "_divschar.c"	return -_divuchar ((unsigned int)a, (unsigned int)-b);
	MOVF	r0x1000,W
	MOVWF	r0x1002
	CLRF	r0x1003
	BTFSC	r0x1002,7
	DECF	r0x1003,F
;[ICODE] _divschar.c:42: 	iTemp25 [k30 lr37:43 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x104C ] = (unsigned-char)iTemp24 [k29 lr36:37 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x104A r0x104B ]
	MOVF	r0x1002,W
	MOVWF	r0x1004
;[ICODE] _divschar.c:42: 	iTemp26 [k31 lr38:39 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x104A r0x104B ] = (int)iTemp1 [k4 lr4:50 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ __divschar_b_1_1}[r0x1049 ]
	MOVF	r0x1001,W
	MOVWF	r0x1002
	CLRF	r0x1003
	BTFSC	r0x1002,7
	DECF	r0x1003,F
;[ICODE] _divschar.c:42: 	iTemp28 [k33 lr39:41 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x104A r0x104B ] = - iTemp26 [k31 lr38:39 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x104A r0x104B ]
	COMF	r0x1002,F
	COMF	r0x1003,F
	INCF	r0x1002,F
	BTFSC	STATUS,2
	INCF	r0x1003,F
;[ICODE] _divschar.c:42: 	iTemp29 [k34 lr41:43 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x104D ] = (unsigned-char)iTemp28 [k33 lr39:41 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x104A r0x104B ]
	MOVF	r0x1002,W
	MOVWF	r0x1005
	MOVWF	STK00
	MOVF	r0x1004,W
	PAGESEL	__divuchar
	CALL	__divuchar
	PAGESEL	$
	BANKSEL	r0x1002
	MOVWF	r0x1002
;[ICODE] _divschar.c:42: 	iTemp31 [k36 lr45:46 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x104A ] = - iTemp30 [k35 lr44:45 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x104A ]
	COMF	r0x1002,F
	INCF	r0x1002,F
;[ICODE] _divschar.c:42: 	ret iTemp31 [k36 lr45:46 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x104A ]
	MOVF	r0x1002,W
	GOTO	_00114_DS_
;[ICODE] _divschar.c:42:  _iffalse_1($5) :
;[ICODE] _divschar.c:44: 	iTemp33 [k38 lr48:49 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x104A r0x104B ] = (unsigned-int)iTemp0 [k2 lr3:48 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ __divschar_a_1_1}[r0x1048 ]
_00109_DS_
;	.line	44; "_divschar.c"	return _divuchar ((unsigned int)a, (unsigned int)b);
	BANKSEL	r0x1000
	MOVF	r0x1000,W
	MOVWF	r0x1002
	CLRF	r0x1003
	BTFSC	r0x1002,7
	DECF	r0x1003,F
;[ICODE] _divschar.c:44: 	iTemp34 [k39 lr49:53 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x1048 ] = (unsigned-char)iTemp33 [k38 lr48:49 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x104A r0x104B ]
	MOVF	r0x1002,W
	MOVWF	r0x1000
;[ICODE] _divschar.c:44: 	iTemp35 [k40 lr50:51 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x104A r0x104B ] = (unsigned-int)iTemp1 [k4 lr4:50 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ __divschar_b_1_1}[r0x1049 ]
	MOVF	r0x1001,W
	MOVWF	r0x1002
	CLRF	r0x1003
	BTFSC	r0x1002,7
	DECF	r0x1003,F
;[ICODE] _divschar.c:44: 	iTemp36 [k41 lr51:53 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x1049 ] = (unsigned-char)iTemp35 [k40 lr50:51 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x104A r0x104B ]
	MOVF	r0x1002,W
	MOVWF	r0x1001
	MOVWF	STK00
	MOVF	r0x1000,W
	PAGESEL	__divuchar
	CALL	__divuchar
	PAGESEL	$
	BANKSEL	r0x1000
	MOVWF	r0x1000
_00114_DS_
	RETURN	
; exit point of __divschar


;	code size estimation:
;	  120+   16 =   136 instructions (  304 byte)

	end
