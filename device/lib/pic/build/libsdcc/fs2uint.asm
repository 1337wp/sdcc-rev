;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:29 2018
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"fs2uint.c"
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
	extern	___fs2sint
	extern	___fs2slong
	extern	___fsadd
	extern	___fssub
	extern	___fsmul
	extern	___fsdiv
	extern	___fslt
	extern	___fseq
	extern	___fsneq
	extern	___fsgt
	extern	___fs2ulong

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
	global	___fs2uint

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_fs2uint_0	udata
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
code_fs2uint	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  ___fs2uint	;Function start
; 2 exit points
;has an exit
;functions called:
;   ___fs2ulong
;   ___fs2ulong
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
;[ICODE] fs2uint.c:37:  _entry($4) :
;[ICODE] fs2uint.c:37: 	proc ___fs2uint [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function    ( float) }
___fs2uint	;Function start
; 2 exit points
;[ICODE] fs2uint.c:37: iTemp0 [k2 lr3:4 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ ___fs2uint_f_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = recv ___fs2uint [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function    ( float) }
;	.line	37; "fs2uint.c"	unsigned int __fs2uint (float f) _FS_REENTRANT
	BANKSEL	r0x1000
	MOVWF	r0x1000
	MOVF	STK00,W
	MOVWF	r0x1001
	MOVF	STK01,W
	MOVWF	r0x1002
	MOVF	STK02,W
;	.line	39; "fs2uint.c"	unsigned long ul=__fs2ulong(f);
	MOVWF	r0x1003
	MOVWF	STK02
	MOVF	r0x1002,W
	MOVWF	STK01
	MOVF	r0x1001,W
	MOVWF	STK00
	MOVF	r0x1000,W
	PAGESEL	___fs2ulong
	CALL	___fs2ulong
	PAGESEL	$
	BANKSEL	r0x1000
	MOVWF	r0x1000
	MOVF	STK00,W
	MOVWF	r0x1001
	MOVF	STK01,W
	MOVWF	r0x1002
	MOVF	STK02,W
	MOVWF	r0x1003
;[ICODE] fs2uint.c:40: 	iTemp3 [k8 lr7:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp1 [k4 lr5:11 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fs2uint_ul_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] < 0xffff {literal-unsigned-long-int}
;unsigned compare: left < lit(0xFFFF=65535), size=4
;	.line	40; "fs2uint.c"	if (ul>=UINT_MAX) return UINT_MAX;
	MOVLW	0x00
	SUBWF	r0x1000,W
	BTFSS	STATUS,2
	GOTO	_00110_DS_
	MOVLW	0x00
	SUBWF	r0x1001,W
	BTFSS	STATUS,2
	GOTO	_00110_DS_
	MOVLW	0xff
	SUBWF	r0x1002,W
	BTFSS	STATUS,2
	GOTO	_00110_DS_
	MOVLW	0xff
	SUBWF	r0x1003,W
_00110_DS_
	BTFSS	STATUS,0
	GOTO	_00106_DS_
;genSkipc:3225: created from rifx:0x7fffc1349720
;[ICODE] fs2uint.c:40: 	if iTemp3 [k8 lr7:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} != 0 goto _iffalse_0($2)
;[ICODE] fs2uint.c:40: 	ret 0xffff {literal-unsigned-int}
	MOVLW	0xff
	MOVWF	STK00
	MOVLW	0xff
	GOTO	_00107_DS_
;[ICODE] fs2uint.c:40:  _iffalse_0($2) :
;[ICODE] fs2uint.c:41: 	iTemp4 [k9 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x104C r0x104D ] = (unsigned-int)iTemp1 [k4 lr5:11 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fs2uint_ul_1_1}[r0x1048 r0x1049 r0x104A r0x104B ]
;;101	MOVF	r0x1003,W
;;99	MOVWF	r0x1004
;;104	MOVF	r0x1002,W
;;102	MOVWF	r0x1005
;[ICODE] fs2uint.c:41: 	ret iTemp4 [k9 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x104C r0x104D ]
;;100	MOVF	r0x1004,W
_00106_DS_
;	.line	41; "fs2uint.c"	return ul;
	BANKSEL	r0x1003
	MOVF	r0x1003,W
	MOVWF	STK00
;;103	MOVF	r0x1005,W
	MOVF	r0x1002,W
;[ICODE] fs2uint.c:41:  _return($3) :
;[ICODE] fs2uint.c:41: 	eproc ___fs2uint [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function    ( float) }
_00107_DS_
	RETURN	
; exit point of ___fs2uint


;	code size estimation:
;	   45+    5 =    50 instructions (  110 byte)

	end
