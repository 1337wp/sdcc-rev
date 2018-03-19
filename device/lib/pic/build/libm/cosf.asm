;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:32 2018
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"cosf.c"
	list	p=16f877
	radix dec
	include "p16f877.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	_sinf
	extern	_tanf
	extern	_cotf
	extern	_asinf
	extern	_acosf
	extern	_atanf
	extern	_atan2f
	extern	_sinhf
	extern	_coshf
	extern	_tanhf
	extern	_expf
	extern	_logf
	extern	_log10f
	extern	_powf
	extern	_sqrtf
	extern	_fabsf
	extern	_frexpf
	extern	_ldexpf
	extern	_ceilf
	extern	_floorf
	extern	_modff
	extern	_sincosf

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
	global	_cosf

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_cosf_0	udata
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
code_cosf	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  _cosf	;Function start
; 2 exit points
;has an exit
;functions called:
;   _sincosf
;   _sincosf
;9 compiler assigned registers:
;   r0x1000
;   STK00
;   r0x1001
;   STK01
;   r0x1002
;   STK02
;   r0x1003
;   STK04
;   STK03
;; Starting pCode block
;[ICODE] cosf.c:29:  _entry($4) :
;[ICODE] cosf.c:29: 	proc _cosf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float) }
_cosf	;Function start
; 2 exit points
;[ICODE] cosf.c:29: iTemp0 [k2 lr3:8 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _cosf_x_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = recv _cosf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float) }
;	.line	29; "cosf.c"	float cosf(float x) _MATH_REENTRANT
	BANKSEL	r0x1000
	MOVWF	r0x1000
	MOVF	STK00,W
	MOVWF	r0x1001
	MOVF	STK01,W
	MOVWF	r0x1002
	MOVF	STK02,W
;	.line	31; "cosf.c"	if (x==0.0) return 1.0;
	MOVWF	r0x1003
	IORWF	r0x1002,W
	IORWF	r0x1001,W
	IORWF	r0x1000,W
	BTFSS	STATUS,2
	GOTO	_00106_DS_
;[ICODE] cosf.c:31: 	ret 1 {literal-float}
	MOVLW	0x00
	MOVWF	STK02
	MOVLW	0x00
	MOVWF	STK01
	MOVLW	0x80
	MOVWF	STK00
	MOVLW	0x3f
	GOTO	_00107_DS_
;[ICODE] cosf.c:31:  _iffalse_0($2) :
;[ICODE] cosf.c:32: 	send iTemp0 [k2 lr3:8 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _cosf_x_1_1}[r0x1048 r0x1049 r0x104A r0x104B ]{argreg = 1}
;[ICODE] cosf.c:32: 	send 0x1 {literal-int}{argreg = 1}
;[ICODE] cosf.c:32: 	iTemp1 [k5 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x1048 r0x1049 r0x104A r0x104B ] = call _sincosf [k4 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, int) }
_00106_DS_
;	.line	32; "cosf.c"	return sincosf(x, 1);
	MOVLW	0x01
	MOVWF	STK04
	MOVLW	0x00
	MOVWF	STK03
	BANKSEL	r0x1003
	MOVF	r0x1003,W
	MOVWF	STK02
	MOVF	r0x1002,W
	MOVWF	STK01
	MOVF	r0x1001,W
	MOVWF	STK00
	MOVF	r0x1000,W
	PAGESEL	_sincosf
	CALL	_sincosf
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
;[ICODE] cosf.c:32:  _return($3) :
;[ICODE] cosf.c:32: 	eproc _cosf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float) }
_00107_DS_
	RETURN	
; exit point of _cosf


;	code size estimation:
;	   46+    5 =    51 instructions (  112 byte)

	end
