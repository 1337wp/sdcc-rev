;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:29 2018
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"_mullong.c"
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
	global	__mullong

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL__mullong_0	udata
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
r0x1010	res	1
r0x100F	res	1
r0x100E	res	1
r0x100D	res	1
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
code__mullong	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  __mullong	;Function start
; 2 exit points
;has an exit
;24 compiler assigned registers:
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
;   r0x1010
;; Starting pCode block
;[ICODE] _mullong.c:31:  _entry($16) :
;[ICODE] _mullong.c:31: 	proc __mullong [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int function    ( long-int, long-int) }
__mullong	;Function start
; 2 exit points
;[ICODE] _mullong.c:31: iTemp0 [k2 lr3:39 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ __mullong_a_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = recv __mullong [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int function    ( long-int, long-int) }
;	.line	31; "_mullong.c"	_mullong (long a, long b)
	BANKSEL	r0x1000
	MOVWF	r0x1000
	MOVF	STK00,W
	MOVWF	r0x1001
	MOVF	STK01,W
	MOVWF	r0x1002
	MOVF	STK02,W
	MOVWF	r0x1003
;[ICODE] _mullong.c:31: iTemp1 [k4 lr4:39 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ __mullong_b_1_1}[r0x104C r0x104D r0x104E r0x104F ] = recv __mullong [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int function    ( long-int, long-int) }
	MOVF	STK03,W
	MOVWF	r0x1004
	MOVF	STK04,W
	MOVWF	r0x1005
	MOVF	STK05,W
	MOVWF	r0x1006
	MOVF	STK06,W
	MOVWF	r0x1007
;[ICODE] _mullong.c:33: 	iTemp2 [k6 lr5:41 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ __mullong_result_1_1}[r0x1050 r0x1051 r0x1052 r0x1053 ] := 0x0 {literal-long-int}
;	.line	33; "_mullong.c"	long result = 0;
	CLRF	r0x1008
	CLRF	r0x1009
	CLRF	r0x100A
	CLRF	r0x100B
;[ICODE] _mullong.c:37: 	iTemp22 [k28 lr7:39 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __mullong_i_1_1}[r0x1054 ] := 0x8 {literal-unsigned-char}
;	.line	37; "_mullong.c"	for (i = 0; i < 8u; i++) {
	MOVLW	0x08
	MOVWF	r0x100C
;[ICODE] _mullong.c:37:  _forcontinue_0($14) :
;[ICODE] _mullong.c:39: 	iTemp4 [k10 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int} = iTemp0 [k2 lr3:39 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ __mullong_a_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] & 0x1 {literal-long-int}
_00118_DS_
;	.line	39; "_mullong.c"	if (a & 0x0001u) result += b;
	BANKSEL	r0x1003
	BTFSS	r0x1003,0
	GOTO	_00109_DS_
;[ICODE] _mullong.c:39: 	if iTemp4 [k10 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int} == 0 goto _andif_0($5)
;[ICODE] _mullong.c:39: 	iTemp2 [k6 lr5:41 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ __mullong_result_1_1}[r0x1050 r0x1051 r0x1052 r0x1053 ] = iTemp2 [k6 lr5:41 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ __mullong_result_1_1}[r0x1050 r0x1051 r0x1052 r0x1053 ] + iTemp1 [k4 lr4:39 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ __mullong_b_1_1}[r0x104C r0x104D r0x104E r0x104F ]
	MOVF	r0x1007,W
	ADDWF	r0x1008,F
	MOVF	r0x1006,W
	BTFSC	STATUS,0
	INCFSZ	r0x1006,W
	ADDWF	r0x1009,F
	MOVF	r0x1005,W
	BTFSC	STATUS,0
	INCFSZ	r0x1005,W
	ADDWF	r0x100A,F
	MOVF	r0x1004,W
	BTFSC	STATUS,0
	INCFSZ	r0x1004,W
	ADDWF	r0x100B,F
;[ICODE] _mullong.c:40:  _andif_0($5) :
;[ICODE] _mullong.c:40: 	iTemp7 [k13 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int} = iTemp0 [k2 lr3:39 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ __mullong_a_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] & 0x100 {literal-unsigned-long-int}
_00109_DS_
;	.line	40; "_mullong.c"	if (sizeof (a) > 1 && (a & 0x00000100ul)) result += (b << 8u);
	BANKSEL	r0x1002
	BTFSS	r0x1002,0
	GOTO	_00112_DS_
;[ICODE] _mullong.c:40: 	if iTemp7 [k13 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int} == 0 goto _andif_1($8)
;[ICODE] _mullong.c:40: 	iTemp8 [k14 lr16:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int}[r0x1055 r0x1056 r0x1057 r0x1058 ] = iTemp1 [k4 lr4:39 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ __mullong_b_1_1}[r0x104C r0x104D r0x104E r0x104F ] << 0x8 {literal-unsigned-int}
	MOVF	r0x1005,W
	MOVWF	r0x100D
	MOVF	r0x1006,W
	MOVWF	r0x100E
;;100	MOVF	r0x1007,W
	CLRF	r0x1010
;[ICODE] _mullong.c:40: 	iTemp2 [k6 lr5:41 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ __mullong_result_1_1}[r0x1050 r0x1051 r0x1052 r0x1053 ] = iTemp2 [k6 lr5:41 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ __mullong_result_1_1}[r0x1050 r0x1051 r0x1052 r0x1053 ] + iTemp8 [k14 lr16:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int}[r0x1055 r0x1056 r0x1057 r0x1058 ]
	MOVLW	0x00
	ADDWF	r0x1008,F
;;99	MOVF	r0x100F,W
	MOVF	r0x1007,W
	MOVWF	r0x100F
	BTFSC	STATUS,0
	INCFSZ	r0x100F,W
	ADDWF	r0x1009,F
	MOVF	r0x100E,W
	BTFSC	STATUS,0
	INCFSZ	r0x100E,W
	ADDWF	r0x100A,F
	MOVF	r0x100D,W
	BTFSC	STATUS,0
	INCFSZ	r0x100D,W
	ADDWF	r0x100B,F
;[ICODE] _mullong.c:41:  _andif_1($8) :
;[ICODE] _mullong.c:41: 	iTemp11 [k17 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int} = iTemp0 [k2 lr3:39 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ __mullong_a_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] & 0x10000 {literal-unsigned-long-int}
_00112_DS_
;	.line	41; "_mullong.c"	if (sizeof (a) > 2 && (a & 0x00010000ul)) result += (b << 16u);
	BANKSEL	r0x1001
	BTFSS	r0x1001,0
	GOTO	_00115_DS_
;[ICODE] _mullong.c:41: 	if iTemp11 [k17 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int} == 0 goto _andif_2($11)
;[ICODE] _mullong.c:41: 	iTemp12 [k18 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int}[r0x1055 r0x1056 r0x1057 r0x1058 ] = iTemp1 [k4 lr4:39 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ __mullong_b_1_1}[r0x104C r0x104D r0x104E r0x104F ] << 0x10 {literal-unsigned-int}
	MOVF	r0x1006,W
	MOVWF	r0x100D
	MOVF	r0x1007,W
	MOVWF	r0x100E
	CLRF	r0x100F
	CLRF	r0x1010
;[ICODE] _mullong.c:41: 	iTemp2 [k6 lr5:41 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ __mullong_result_1_1}[r0x1050 r0x1051 r0x1052 r0x1053 ] = iTemp2 [k6 lr5:41 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ __mullong_result_1_1}[r0x1050 r0x1051 r0x1052 r0x1053 ] + iTemp12 [k18 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int}[r0x1055 r0x1056 r0x1057 r0x1058 ]
	MOVLW	0x00
	ADDWF	r0x1008,F
	MOVLW	0x00
	BTFSC	STATUS,0
	INCFSZ	r0x100F,W
	ADDWF	r0x1009,F
	MOVF	r0x100E,W
	BTFSC	STATUS,0
	INCFSZ	r0x100E,W
	ADDWF	r0x100A,F
	MOVF	r0x100D,W
	BTFSC	STATUS,0
	INCFSZ	r0x100D,W
	ADDWF	r0x100B,F
;[ICODE] _mullong.c:42:  _andif_2($11) :
;[ICODE] _mullong.c:42: 	iTemp15 [k21 lr26:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int} = iTemp0 [k2 lr3:39 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ __mullong_a_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] & 0x1000000 {literal-unsigned-long-int}
_00115_DS_
;	.line	42; "_mullong.c"	if (sizeof (a) > 3 && (a & 0x01000000ul)) result += (b << 24u);
	BANKSEL	r0x1000
	BTFSS	r0x1000,0
	GOTO	_00114_DS_
;[ICODE] _mullong.c:42: 	if iTemp15 [k21 lr26:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int} == 0 goto _iffalse_3($10)
;[ICODE] _mullong.c:42: 	iTemp16 [k22 lr28:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int}[r0x1055 r0x1056 r0x1057 r0x1058 ] = iTemp1 [k4 lr4:39 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ __mullong_b_1_1}[r0x104C r0x104D r0x104E r0x104F ] << 0x18 {literal-unsigned-int}
	MOVF	r0x1007,W
	MOVWF	r0x100D
	CLRF	r0x100E
	CLRF	r0x100F
	CLRF	r0x1010
;[ICODE] _mullong.c:42: 	iTemp2 [k6 lr5:41 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ __mullong_result_1_1}[r0x1050 r0x1051 r0x1052 r0x1053 ] = iTemp2 [k6 lr5:41 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ __mullong_result_1_1}[r0x1050 r0x1051 r0x1052 r0x1053 ] + iTemp16 [k22 lr28:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int}[r0x1055 r0x1056 r0x1057 r0x1058 ]
	MOVLW	0x00
	ADDWF	r0x1008,F
	MOVLW	0x00
	BTFSC	STATUS,0
	INCFSZ	r0x100F,W
	ADDWF	r0x1009,F
	MOVF	r0x100E,W
	BTFSC	STATUS,0
	INCFSZ	r0x100E,W
	ADDWF	r0x100A,F
	MOVF	r0x100D,W
	BTFSC	STATUS,0
	INCFSZ	r0x100D,W
	ADDWF	r0x100B,F
;[ICODE] _mullong.c:42:  _iffalse_3($10) :
;[ICODE] _mullong.c:43: 	iTemp18 [k24 lr32:33 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x1055 r0x1056 r0x1057 r0x1058 ] := iTemp0 [k2 lr3:39 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ __mullong_a_1_1}[r0x1048 r0x1049 r0x104A r0x104B ]
_00114_DS_
;	.line	43; "_mullong.c"	a = ((unsigned long)a) >> 1u;
	BANKSEL	r0x1003
	MOVF	r0x1003,W
	MOVWF	r0x1010
	MOVF	r0x1002,W
	MOVWF	r0x100F
	MOVF	r0x1001,W
	MOVWF	r0x100E
	MOVF	r0x1000,W
	MOVWF	r0x100D
;[ICODE] _mullong.c:43: 	iTemp0 [k2 lr3:39 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ __mullong_a_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp18 [k24 lr32:33 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x1055 r0x1056 r0x1057 r0x1058 ] >> 0x1 {literal-unsigned-int}
;shiftRight_Left2ResultLit:6080: shCount=1, size=4, sign=0, same=0, offr=0
	BCF	STATUS,0
	RRF	r0x100D,W
	MOVWF	r0x1000
	RRF	r0x100E,W
	MOVWF	r0x1001
	RRF	r0x100F,W
	MOVWF	r0x1002
	RRF	r0x1010,W
	MOVWF	r0x1003
;[ICODE] _mullong.c:44: 	iTemp1 [k4 lr4:39 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ __mullong_b_1_1}[r0x104C r0x104D r0x104E r0x104F ] = iTemp1 [k4 lr4:39 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ __mullong_b_1_1}[r0x104C r0x104D r0x104E r0x104F ] << 0x1 {literal-unsigned-int}
;	.line	44; "_mullong.c"	b <<= 1u;
	BCF	STATUS,0
	RLF	r0x1007,F
	RLF	r0x1006,F
	RLF	r0x1005,F
	RLF	r0x1004,F
;[ICODE] _mullong.c:44: 	iTemp22 [k28 lr7:39 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __mullong_i_1_1}[r0x1054 ] = iTemp22 [k28 lr7:39 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __mullong_i_1_1}[r0x1054 ] - 0x1 {literal-unsigned-char}
	DECFSZ	r0x100C,F
	GOTO	_00118_DS_
;[ICODE] _mullong.c:37: 	if iTemp22 [k28 lr7:39 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __mullong_i_1_1}[r0x1054 ] != 0 goto _forcontinue_0($14)
;[ICODE] _mullong.c:47: 	ret iTemp2 [k6 lr5:41 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ __mullong_result_1_1}[r0x1050 r0x1051 r0x1052 r0x1053 ]
;	.line	47; "_mullong.c"	return result;
	MOVF	r0x1008,W
	MOVWF	STK02
	MOVF	r0x1009,W
	MOVWF	STK01
	MOVF	r0x100A,W
	MOVWF	STK00
	MOVF	r0x100B,W
;[ICODE] _mullong.c:47:  _return($15) :
;[ICODE] _mullong.c:47: 	eproc __mullong [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int function    ( long-int, long-int) }
	RETURN	
; exit point of __mullong


;	code size estimation:
;	  134+    6 =   140 instructions (  292 byte)

	end
