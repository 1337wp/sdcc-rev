;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:29 2018
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"fs2schar.c"
	list	p=16f877
	radix dec
	include "p16f877.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	___uchar2fs
	extern	___schar2fs
	extern	___uint2fs
	extern	___sint2fs
	extern	___ulong2fs
	extern	___slong2fs
	extern	___fs2uchar
	extern	___fs2uint
	extern	___fs2sint
	extern	___fs2ulong
	extern	___fs2slong
	extern	___fsadd
	extern	___fssub
	extern	___fsmul
	extern	___fsdiv
	extern	___fslt
	extern	___fseq
	extern	___fsneq
	extern	___fsgt

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
	global	___fs2schar

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_fs2schar_0	udata
r0x1003	res	1
r0x1002	res	1
r0x1001	res	1
r0x1000	res	1
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
code_fs2schar	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  ___fs2schar	;Function start
; 2 exit points
;has an exit
;functions called:
;   ___fs2slong
;   ___fs2slong
;8 compiler assigned registers:
;   r0x1000
;   STK00
;   r0x1001
;   STK01
;   r0x1002
;   STK02
;   r0x1003
;   r0x1004
;; Starting pCode block
;[ICODE] fs2schar.c:36:  _entry($6) :
;[ICODE] fs2schar.c:36: 	proc ___fs2schar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float) }
___fs2schar	;Function start
; 2 exit points
;[ICODE] fs2schar.c:36: iTemp0 [k2 lr3:4 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ ___fs2schar_f_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = recv ___fs2schar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float) }
;	.line	36; "fs2schar.c"	signed char __fs2schar (float f) _FS_REENTRANT
	BANKSEL	r0x1000
	MOVWF	r0x1000
	MOVF	STK00,W
	MOVWF	r0x1001
	MOVF	STK01,W
	MOVWF	r0x1002
	MOVF	STK02,W
;	.line	38; "fs2schar.c"	signed long sl=__fs2slong(f);
	MOVWF	r0x1003
	MOVWF	STK02
	MOVF	r0x1002,W
	MOVWF	STK01
	MOVF	r0x1001,W
	MOVWF	STK00
	MOVF	r0x1000,W
	PAGESEL	___fs2slong
	CALL	___fs2slong
	PAGESEL	$
	BANKSEL	r0x1000
	MOVWF	r0x1000
	MOVF	STK00,W
	MOVWF	r0x1001
	MOVF	STK01,W
	MOVWF	r0x1002
	MOVF	STK02,W
	MOVWF	r0x1003
;[ICODE] fs2schar.c:39: 	iTemp3 [k8 lr7:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp1 [k4 lr5:15 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ ___fs2schar_sl_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] < 0x7f {literal-long-int}
;signed compare: left < lit(0x7F=127), size=4, mask=ffffffff
;	.line	39; "fs2schar.c"	if (sl>=CHAR_MAX)
	MOVF	r0x1000,W
	ADDLW	0x80
	ADDLW	0x80
	BTFSS	STATUS,2
	GOTO	_00113_DS_
	MOVLW	0x00
	SUBWF	r0x1001,W
	BTFSS	STATUS,2
	GOTO	_00113_DS_
	MOVLW	0x00
	SUBWF	r0x1002,W
	BTFSS	STATUS,2
	GOTO	_00113_DS_
	MOVLW	0x7f
	SUBWF	r0x1003,W
_00113_DS_
	BTFSS	STATUS,0
	GOTO	_00106_DS_
;genSkipc:3225: created from rifx:0x7fff91c6aea0
;[ICODE] fs2schar.c:39: 	if iTemp3 [k8 lr7:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} != 0 goto _iffalse_0($2)
;[ICODE] fs2schar.c:40: 	ret 0x7f {literal-char}
;	.line	40; "fs2schar.c"	return CHAR_MAX;
	MOVLW	0x7f
	GOTO	_00109_DS_
;[ICODE] fs2schar.c:40:  _iffalse_0($2) :
;[ICODE] fs2schar.c:41: 	iTemp4 [k9 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp1 [k4 lr5:15 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ ___fs2schar_sl_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] > 0xffffff80 {literal-long-int}
;swapping arguments (AOP_TYPEs 1/2)
;signed compare: left >= lit(0xFFFFFF81=-127), size=4, mask=ffffffff
_00106_DS_
;	.line	41; "fs2schar.c"	if (sl<=CHAR_MIN) 
	BANKSEL	r0x1000
	MOVF	r0x1000,W
	ADDLW	0x80
	ADDLW	0x81
	BTFSS	STATUS,2
	GOTO	_00114_DS_
	MOVLW	0xff
	SUBWF	r0x1001,W
	BTFSS	STATUS,2
	GOTO	_00114_DS_
	MOVLW	0xff
	SUBWF	r0x1002,W
	BTFSS	STATUS,2
	GOTO	_00114_DS_
	MOVLW	0x81
	SUBWF	r0x1003,W
_00114_DS_
	BTFSC	STATUS,0
	GOTO	_00108_DS_
;genSkipc:3225: created from rifx:0x7fff91c6aea0
;[ICODE] fs2schar.c:41: 	if iTemp4 [k9 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} != 0 goto _iffalse_1($4)
;[ICODE] fs2schar.c:42: 	ret 0xffffff80 {literal-char}
;	.line	42; "fs2schar.c"	return -CHAR_MIN;
	MOVLW	0x80
	GOTO	_00109_DS_
;[ICODE] fs2schar.c:42:  _iffalse_1($4) :
;[ICODE] fs2schar.c:43: 	iTemp5 [k10 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x104C ] = (char)iTemp1 [k4 lr5:15 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ ___fs2schar_sl_1_1}[r0x1048 r0x1049 r0x104A r0x104B ]
_00108_DS_
;	.line	43; "fs2schar.c"	return sl;
	BANKSEL	r0x1003
	MOVF	r0x1003,W
;;1	MOVWF	r0x1004
_00109_DS_
	RETURN	
; exit point of ___fs2schar


;	code size estimation:
;	   61+    6 =    67 instructions (  146 byte)

	end
