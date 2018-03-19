;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:29 2018
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"slong2fs.c"
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
	extern	___fs2uchar
	extern	___fs2schar
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
	global	___slong2fs

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_slong2fs_0	udata
r0x1003	res	1
r0x1002	res	1
r0x1001	res	1
r0x1000	res	1
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
code_slong2fs	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  ___slong2fs	;Function start
; 2 exit points
;has an exit
;functions called:
;   ___ulong2fs
;   ___ulong2fs
;   ___ulong2fs
;   ___ulong2fs
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
;[ICODE] slong2fs.c:35:  _entry($5) :
;[ICODE] slong2fs.c:35: 	proc ___slong2fs [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( long-int) }
___slong2fs	;Function start
; 2 exit points
;[ICODE] slong2fs.c:35: iTemp0 [k2 lr3:12 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ ___slong2fs_sl_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = recv ___slong2fs [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( long-int) }
;	.line	35; "slong2fs.c"	float __slong2fs (signed long sl) _FS_REENTRANT
	BANKSEL	r0x1000
	MOVWF	r0x1000
	MOVF	STK00,W
	MOVWF	r0x1001
	MOVF	STK01,W
	MOVWF	r0x1002
	MOVF	STK02,W
	MOVWF	r0x1003
;[ICODE] slong2fs.c:37: 	iTemp1 [k4 lr4:5 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp0 [k2 lr3:12 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ ___slong2fs_sl_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] < 0x0 {literal-long-int}
;signed compare: left < lit(0x0=0), size=4, mask=ffffffff
;	.line	37; "slong2fs.c"	if (sl<0) 
	BSF	STATUS,0
	BTFSS	r0x1000,7
	BCF	STATUS,0
	BTFSS	STATUS,0
	GOTO	_00106_DS_
;genSkipc:3225: created from rifx:0x7ffca2cad480
;[ICODE] slong2fs.c:37: 	if iTemp1 [k4 lr4:5 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_0($2)
;[ICODE] slong2fs.c:38: 	iTemp2 [k6 lr6:7 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int}[r0x104C r0x104D r0x104E r0x104F ] = - iTemp0 [k2 lr3:12 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ ___slong2fs_sl_1_1}[r0x1048 r0x1049 r0x104A r0x104B ]
;	.line	38; "slong2fs.c"	return -__ulong2fs(-sl);
	COMF	r0x1003,W
	MOVWF	r0x1004
	COMF	r0x1002,W
	MOVWF	r0x1005
	COMF	r0x1001,W
	MOVWF	r0x1006
	COMF	r0x1000,W
	MOVWF	r0x1007
	INCF	r0x1004,F
	BTFSC	STATUS,2
	INCF	r0x1005,F
	BTFSC	STATUS,2
	INCF	r0x1006,F
	BTFSC	STATUS,2
	INCF	r0x1007,F
;[ICODE] slong2fs.c:38: 	send iTemp2 [k6 lr6:7 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int}[r0x104C r0x104D r0x104E r0x104F ]{argreg = 1}
;[ICODE] slong2fs.c:38: 	iTemp4 [k8 lr8:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x104C r0x104D r0x104E r0x104F ] = call ___ulong2fs [k5 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( unsigned-long-int) }
	MOVF	r0x1004,W
	MOVWF	STK02
	MOVF	r0x1005,W
	MOVWF	STK01
	MOVF	r0x1006,W
	MOVWF	STK00
	MOVF	r0x1007,W
	PAGESEL	___ulong2fs
	CALL	___ulong2fs
	PAGESEL	$
	BANKSEL	r0x1007
	MOVWF	r0x1007
	MOVF	STK00,W
	MOVWF	r0x1006
	MOVF	STK01,W
	MOVWF	r0x1005
	MOVF	STK02,W
	MOVWF	r0x1004
;[ICODE] slong2fs.c:38: 	iTemp5 [k9 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x104C r0x104D r0x104E r0x104F ] = - iTemp4 [k8 lr8:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x104C r0x104D r0x104E r0x104F ]
	MOVWF	r0x1007
;[ICODE] slong2fs.c:38: 	ret iTemp5 [k9 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x104C r0x104D r0x104E r0x104F ]
	MOVF	r0x1004,W
	MOVWF	STK02
	MOVF	r0x1005,W
	MOVWF	STK01
	MOVF	r0x1006,W
	MOVWF	STK00
	MOVF	r0x1007,W
	GOTO	_00108_DS_
;[ICODE] slong2fs.c:38:  _iffalse_0($2) :
;[ICODE] slong2fs.c:40: 	send iTemp0 [k2 lr3:12 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ ___slong2fs_sl_1_1}[r0x1048 r0x1049 r0x104A r0x104B ]{argreg = 1}
;[ICODE] slong2fs.c:40: 	iTemp7 [k11 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x1048 r0x1049 r0x104A r0x104B ] = call ___ulong2fs [k5 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( unsigned-long-int) }
_00106_DS_
;	.line	40; "slong2fs.c"	return __ulong2fs(sl);
	BANKSEL	r0x1003
	MOVF	r0x1003,W
	MOVWF	STK02
	MOVF	r0x1002,W
	MOVWF	STK01
	MOVF	r0x1001,W
	MOVWF	STK00
	MOVF	r0x1000,W
	PAGESEL	___ulong2fs
	CALL	___ulong2fs
	PAGESEL	$
	BANKSEL	r0x1000
	MOVWF	r0x1000
	MOVF	STK00,W
	MOVWF	r0x1001
	MOVF	STK01,W
	MOVWF	r0x1002
	MOVF	STK02,W
	MOVWF	r0x1003
	MOVWF	STK02
	MOVF	r0x1002,W
	MOVWF	STK01
	MOVF	r0x1001,W
	MOVWF	STK00
	MOVF	r0x1000,W
;[ICODE] slong2fs.c:40:  _return($4) :
;[ICODE] slong2fs.c:40: 	eproc ___slong2fs [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( long-int) }
_00108_DS_
	RETURN	
; exit point of ___slong2fs


;	code size estimation:
;	   73+    8 =    81 instructions (  178 byte)

	end
