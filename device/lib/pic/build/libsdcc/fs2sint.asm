;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:29 2018
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"fs2sint.c"
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
	extern	___fs2schar
	extern	___fs2uint
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
	global	___fs2sint

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_fs2sint_0	udata
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
code_fs2sint	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  ___fs2sint	;Function start
; 2 exit points
;has an exit
;functions called:
;   ___fs2slong
;   ___fs2slong
;9 compiler assigned registers:
;   r0x1000
;   STK00
;   r0x1001
;   STK01
;   r0x1002
;   STK02
;   r0x1003
;   r0x1004
;   r0x1005
;; Starting pCode block
;[ICODE] fs2sint.c:37:  _entry($6) :
;[ICODE] fs2sint.c:37: 	proc ___fs2sint [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( float) }
___fs2sint	;Function start
; 2 exit points
;[ICODE] fs2sint.c:37: iTemp0 [k2 lr3:4 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ ___fs2sint_f_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = recv ___fs2sint [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( float) }
;	.line	37; "fs2sint.c"	signed int __fs2sint (float f) _FS_REENTRANT
	BANKSEL	r0x1000
	MOVWF	r0x1000
	MOVF	STK00,W
	MOVWF	r0x1001
	MOVF	STK01,W
	MOVWF	r0x1002
	MOVF	STK02,W
;	.line	39; "fs2sint.c"	signed long sl=__fs2slong(f);
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
;[ICODE] fs2sint.c:40: 	iTemp3 [k8 lr7:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp1 [k4 lr5:15 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ ___fs2sint_sl_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] < 0x7fff {literal-long-int}
;signed compare: left < lit(0x7FFF=32767), size=4, mask=ffffffff
;	.line	40; "fs2sint.c"	if (sl>=INT_MAX)
	MOVF	r0x1000,W
	ADDLW	0x80
	ADDLW	0x80
	BTFSS	STATUS,2
	GOTO	_00113_DS_
	MOVLW	0x00
	SUBWF	r0x1001,W
	BTFSS	STATUS,2
	GOTO	_00113_DS_
	MOVLW	0x7f
	SUBWF	r0x1002,W
	BTFSS	STATUS,2
	GOTO	_00113_DS_
	MOVLW	0xff
	SUBWF	r0x1003,W
_00113_DS_
	BTFSS	STATUS,0
	GOTO	_00106_DS_
;genSkipc:3225: created from rifx:0x7ffc9550b900
;[ICODE] fs2sint.c:40: 	if iTemp3 [k8 lr7:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} != 0 goto _iffalse_0($2)
;[ICODE] fs2sint.c:41: 	ret 0x7fff {literal-int}
;	.line	41; "fs2sint.c"	return INT_MAX;
	MOVLW	0xff
	MOVWF	STK00
	MOVLW	0x7f
	GOTO	_00109_DS_
;[ICODE] fs2sint.c:41:  _iffalse_0($2) :
;[ICODE] fs2sint.c:42: 	iTemp4 [k9 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp1 [k4 lr5:15 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ ___fs2sint_sl_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] > 0xffff8000 {literal-long-int}
;swapping arguments (AOP_TYPEs 1/2)
;signed compare: left >= lit(0xFFFF8001=-32767), size=4, mask=ffffffff
_00106_DS_
;	.line	42; "fs2sint.c"	if (sl<=INT_MIN) 
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
	MOVLW	0x80
	SUBWF	r0x1002,W
	BTFSS	STATUS,2
	GOTO	_00114_DS_
	MOVLW	0x01
	SUBWF	r0x1003,W
_00114_DS_
	BTFSC	STATUS,0
	GOTO	_00108_DS_
;genSkipc:3225: created from rifx:0x7ffc9550b900
;[ICODE] fs2sint.c:42: 	if iTemp4 [k9 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} != 0 goto _iffalse_1($4)
;[ICODE] fs2sint.c:43: 	ret 0xffff8000 {literal-int}
;	.line	43; "fs2sint.c"	return -INT_MIN;
	MOVLW	0x00
	MOVWF	STK00
	MOVLW	0x80
	GOTO	_00109_DS_
;[ICODE] fs2sint.c:43:  _iffalse_1($4) :
;[ICODE] fs2sint.c:44: 	iTemp5 [k10 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x104C r0x104D ] = (int)iTemp1 [k4 lr5:15 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ ___fs2sint_sl_1_1}[r0x1048 r0x1049 r0x104A r0x104B ]
;;101	MOVF	r0x1003,W
;;99	MOVWF	r0x1004
;;104	MOVF	r0x1002,W
;;102	MOVWF	r0x1005
;[ICODE] fs2sint.c:44: 	ret iTemp5 [k10 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x104C r0x104D ]
;;100	MOVF	r0x1004,W
_00108_DS_
;	.line	44; "fs2sint.c"	return sl;
	BANKSEL	r0x1003
	MOVF	r0x1003,W
	MOVWF	STK00
;;103	MOVF	r0x1005,W
	MOVF	r0x1002,W
;[ICODE] fs2sint.c:44:  _return($5) :
;[ICODE] fs2sint.c:44: 	eproc ___fs2sint [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( float) }
_00109_DS_
	RETURN	
; exit point of ___fs2sint


;	code size estimation:
;	   67+    6 =    73 instructions (  158 byte)

	end
