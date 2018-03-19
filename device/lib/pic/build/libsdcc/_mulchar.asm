;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:30 2018
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"_mulchar.c"
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
	global	__mulchar

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL__mulchar_0	udata
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
code__mulchar	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  __mulchar	;Function start
; 2 exit points
;has an exit
;6 compiler assigned registers:
;   r0x1000
;   STK00
;   r0x1001
;   r0x1002
;   r0x1003
;   r0x1004
;; Starting pCode block
;[ICODE] _mulchar.c:31:  _entry($16) :
;[ICODE] _mulchar.c:31: 	proc __mulchar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( char, char) }
__mulchar	;Function start
; 2 exit points
;[ICODE] _mulchar.c:31: iTemp0 [k2 lr3:22 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ __mulchar_a_1_1}[r0x1048 ] = recv __mulchar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( char, char) }
;	.line	31; "_mulchar.c"	_mulchar (char a, char b)
	BANKSEL	r0x1000
	MOVWF	r0x1000
;[ICODE] _mulchar.c:31: iTemp1 [k4 lr4:22 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ __mulchar_b_1_1}[r0x1049 ] = recv __mulchar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( char, char) }
	MOVF	STK00,W
	MOVWF	r0x1001
;[ICODE] _mulchar.c:33: 	iTemp2 [k6 lr5:24 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ __mulchar_result_1_1}[r0x104A ] := 0x0 {literal-char}
;	.line	33; "_mulchar.c"	char result = 0;
	CLRF	r0x1002
;[ICODE] _mulchar.c:37: 	iTemp18 [k24 lr7:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __mulchar_i_1_1}[r0x104B ] := 0x8 {literal-unsigned-char}
;	.line	37; "_mulchar.c"	for (i = 0; i < 8u; i++) {
	MOVLW	0x08
	MOVWF	r0x1003
;[ICODE] _mulchar.c:37:  _forcontinue_0($14) :
;[ICODE] _mulchar.c:39: 	iTemp4 [k10 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp0 [k2 lr3:22 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ __mulchar_a_1_1}[r0x1048 ] & 0x1 {literal-char}
_00118_DS_
;	.line	39; "_mulchar.c"	if (a & (unsigned char)0x0001u) result += b;
	BANKSEL	r0x1000
	BTFSS	r0x1000,0
	GOTO	_00114_DS_
;[ICODE] _mulchar.c:39: 	if iTemp4 [k10 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_3($10)
;[ICODE] _mulchar.c:39: 	iTemp2 [k6 lr5:24 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ __mulchar_result_1_1}[r0x104A ] = iTemp2 [k6 lr5:24 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ __mulchar_result_1_1}[r0x104A ] + iTemp1 [k4 lr4:22 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ __mulchar_b_1_1}[r0x1049 ]
	MOVF	r0x1001,W
	ADDWF	r0x1002,F
;[ICODE] _mulchar.c:42:  _iffalse_3($10) :
;[ICODE] _mulchar.c:43: 	iTemp12 [k18 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x104C ] := iTemp0 [k2 lr3:22 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ __mulchar_a_1_1}[r0x1048 ]
_00114_DS_
;	.line	43; "_mulchar.c"	a = ((unsigned char)a) >> 1u;
	BANKSEL	r0x1000
	MOVF	r0x1000,W
	MOVWF	r0x1004
;[ICODE] _mulchar.c:43: 	iTemp0 [k2 lr3:22 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ __mulchar_a_1_1}[r0x1048 ] = iTemp12 [k18 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x104C ] >> 0x1 {literal-unsigned-int}
;shiftRight_Left2ResultLit:6080: shCount=1, size=1, sign=0, same=0, offr=0
	BCF	STATUS,0
	RRF	r0x1004,W
	MOVWF	r0x1000
;[ICODE] _mulchar.c:44: 	iTemp16 [k22 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x104C r0x104D ] = iTemp1 [k4 lr4:22 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ __mulchar_b_1_1}[r0x1049 ] << 0x1 {literal-unsigned-int}
;	.line	44; "_mulchar.c"	b <<= 1u;
	BCF	STATUS,0
	RLF	r0x1001,W
	MOVWF	r0x1004
	MOVWF	r0x1001
;[ICODE] _mulchar.c:44: 	iTemp18 [k24 lr7:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __mulchar_i_1_1}[r0x104B ] = iTemp18 [k24 lr7:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __mulchar_i_1_1}[r0x104B ] - 0x1 {literal-unsigned-char}
	DECFSZ	r0x1003,F
	GOTO	_00118_DS_
;[ICODE] _mulchar.c:37: 	if iTemp18 [k24 lr7:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __mulchar_i_1_1}[r0x104B ] != 0 goto _forcontinue_0($14)
;[ICODE] _mulchar.c:47: 	ret iTemp2 [k6 lr5:24 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ __mulchar_result_1_1}[r0x104A ]
;	.line	47; "_mulchar.c"	return result;
	MOVF	r0x1002,W
;[ICODE] _mulchar.c:47:  _return($15) :
;[ICODE] _mulchar.c:47: 	eproc __mulchar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( char, char) }
	RETURN	
; exit point of __mulchar


;	code size estimation:
;	   23+    3 =    26 instructions (   58 byte)

	end
