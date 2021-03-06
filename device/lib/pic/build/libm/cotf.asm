;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:32 2018
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"cotf.c"
	list	p=16f877
	radix dec
	include "p16f877.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	_sinf
	extern	_cosf
	extern	_tanf
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
	extern	_tancotf
	extern	___fslt
	extern	_errno

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
	global	_cotf

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_cotf_0	udata
r0x1005	res	1
r0x1004	res	1
r0x1003	res	1
r0x1002	res	1
r0x1009	res	1
r0x1008	res	1
r0x1007	res	1
r0x1006	res	1
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
code_cotf	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  _cotf	;Function start
; 2 exit points
;has an exit
;functions called:
;   _fabsf
;   ___fslt
;   ___fslt
;   _tancotf
;   _fabsf
;   ___fslt
;   ___fslt
;   _tancotf
;15 compiler assigned registers:
;   r0x1002
;   STK00
;   r0x1003
;   STK01
;   r0x1004
;   STK02
;   r0x1005
;   r0x1006
;   r0x1007
;   r0x1008
;   r0x1009
;   STK06
;   STK05
;   STK04
;   STK03
;; Starting pCode block
;[ICODE] cotf.c:30:  _entry($7) :
;[ICODE] cotf.c:30: 	proc _cotf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float) }
_cotf	;Function start
; 2 exit points
;[ICODE] cotf.c:30: iTemp0 [k2 lr3:21 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _cotf_x_1_1}[r0x1049 r0x104A r0x104B r0x104C ] = recv _cotf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float) }
;	.line	30; "cotf.c"	float cotf(const float x) _MATH_REENTRANT
	BANKSEL	r0x1002
	MOVWF	r0x1002
	MOVF	STK00,W
	MOVWF	r0x1003
	MOVF	STK01,W
	MOVWF	r0x1004
	MOVF	STK02,W
;	.line	34; "cotf.c"	y=fabsf(x);
	MOVWF	r0x1005
	MOVWF	STK02
	MOVF	r0x1004,W
	MOVWF	STK01
	MOVF	r0x1003,W
	MOVWF	STK00
	MOVF	r0x1002,W
	PAGESEL	_fabsf
	CALL	_fabsf
	PAGESEL	$
	BANKSEL	r0x1006
	MOVWF	r0x1006
	MOVF	STK00,W
	MOVWF	r0x1007
	MOVF	STK01,W
	MOVWF	r0x1008
	MOVF	STK02,W
	MOVWF	r0x1009
;[ICODE] cotf.c:35: 	send iTemp1 [k4 lr5:8 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _cotf_y_1_1}[r0x104D r0x104E r0x104F r0x1050 ]{argreg = 1}
;[ICODE] cotf.c:35: 	send 1e-30 {literal-float}{argreg = 1}
;[ICODE] cotf.c:35: 	iTemp3 [k8 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x104D ] = call ___fslt [k14 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
;	.line	35; "cotf.c"	if (y<1.0E-30) //This one requires more thinking...
	MOVLW	0x60
	MOVWF	STK06
	MOVLW	0x42
	MOVWF	STK05
	MOVLW	0xa2
	MOVWF	STK04
	MOVLW	0x0d
	MOVWF	STK03
	MOVF	r0x1009,W
	MOVWF	STK02
	MOVF	r0x1008,W
	MOVWF	STK01
	MOVF	r0x1007,W
	MOVWF	STK00
	MOVF	r0x1006,W
	PAGESEL	___fslt
	CALL	___fslt
	PAGESEL	$
	BANKSEL	r0x1009
	MOVWF	r0x1009
;[ICODE] cotf.c:35: 	if iTemp3 [k8 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x104D ] == 0 goto _iffalse_1($5)
	MOVF	r0x1009,W
	BTFSC	STATUS,2
	GOTO	_00109_DS_
;[ICODE] cotf.c:37: 	_errno [k9 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{int} := 0x22 {literal-int}
;	.line	37; "cotf.c"	errno = ERANGE;
	MOVLW	0x22
	BANKSEL	_errno
	MOVWF	_errno
	CLRF	(_errno + 1)
;[ICODE] cotf.c:38: 	send iTemp0 [k2 lr3:21 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _cotf_x_1_1}[r0x1049 r0x104A r0x104B r0x104C ]{argreg = 1}
;[ICODE] cotf.c:38: 	send 0 {literal-float}{argreg = 1}
;[ICODE] cotf.c:38: 	iTemp5 [k11 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x104D ] = call ___fslt [k14 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
;	.line	38; "cotf.c"	if (x<0.0)
	MOVLW	0x00
	MOVWF	STK06
	MOVLW	0x00
	MOVWF	STK05
	MOVLW	0x00
	MOVWF	STK04
	MOVLW	0x00
	MOVWF	STK03
	BANKSEL	r0x1005
	MOVF	r0x1005,W
	MOVWF	STK02
	MOVF	r0x1004,W
	MOVWF	STK01
	MOVF	r0x1003,W
	MOVWF	STK00
	MOVF	r0x1002,W
	PAGESEL	___fslt
	CALL	___fslt
	PAGESEL	$
	BANKSEL	r0x1009
	MOVWF	r0x1009
;[ICODE] cotf.c:38: 	if iTemp5 [k11 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x104D ] == 0 goto _iffalse_0($2)
	MOVF	r0x1009,W
	BTFSC	STATUS,2
	GOTO	_00106_DS_
;[ICODE] cotf.c:39: 	ret -3.40282e+38 {literal-float}
;	.line	39; "cotf.c"	return -XMAX;
	MOVLW	0xff
	MOVWF	STK02
	MOVLW	0xff
	MOVWF	STK01
	MOVLW	0x7f
	MOVWF	STK00
	MOVLW	0xff
	GOTO	_00110_DS_
;[ICODE] cotf.c:39:  _iffalse_0($2) :
;[ICODE] cotf.c:41: 	ret 3.40282e+38 {literal-float}
_00106_DS_
;	.line	41; "cotf.c"	return XMAX;
	MOVLW	0xff
	MOVWF	STK02
	MOVLW	0xff
	MOVWF	STK01
	MOVLW	0x7f
	MOVWF	STK00
	MOVLW	0x7f
	GOTO	_00110_DS_
;[ICODE] cotf.c:41:  _iffalse_1($5) :
;[ICODE] cotf.c:43: 	send iTemp0 [k2 lr3:21 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _cotf_x_1_1}[r0x1049 r0x104A r0x104B r0x104C ]{argreg = 1}
;[ICODE] cotf.c:43: 	send 0x1 {literal-const-int}{argreg = 1}
;[ICODE] cotf.c:43: 	iTemp6 [k13 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x1049 r0x104A r0x104B r0x104C ] = call _tancotf [k12 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float, const-int) }
_00109_DS_
;	.line	43; "cotf.c"	return tancotf(x, 1);
	MOVLW	0x01
	MOVWF	STK04
	MOVLW	0x00
	MOVWF	STK03
	BANKSEL	r0x1005
	MOVF	r0x1005,W
	MOVWF	STK02
	MOVF	r0x1004,W
	MOVWF	STK01
	MOVF	r0x1003,W
	MOVWF	STK00
	MOVF	r0x1002,W
	PAGESEL	_tancotf
	CALL	_tancotf
	PAGESEL	$
	BANKSEL	r0x1002
	MOVWF	r0x1002
	MOVF	STK00,W
	MOVWF	r0x1003
	MOVF	STK01,W
	MOVWF	r0x1004
	MOVF	STK02,W
	MOVWF	r0x1005
	MOVWF	STK02
	MOVF	r0x1004,W
	MOVWF	STK01
	MOVF	r0x1003,W
	MOVWF	STK00
	MOVF	r0x1002,W
;[ICODE] cotf.c:43:  _return($6) :
;[ICODE] cotf.c:43: 	eproc _cotf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float) }
_00110_DS_
	RETURN	
; exit point of _cotf


;	code size estimation:
;	  106+   16 =   122 instructions (  276 byte)

	end
