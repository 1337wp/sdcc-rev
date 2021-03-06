;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:32 2018
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"acosf.c"
	list	p=16f877
	radix dec
	include "p16f877.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	_sinf
	extern	_cosf
	extern	_tanf
	extern	_cotf
	extern	_asinf
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
	extern	_asincosf
	extern	___fseq

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
	global	_acosf

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_acosf_0	udata
r0x1003	res	1
r0x1002	res	1
r0x1001	res	1
r0x1000	res	1
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
code_acosf	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  _acosf	;Function start
; 2 exit points
;has an exit
;functions called:
;   ___fseq
;   ___fseq
;   _asincosf
;   ___fseq
;   ___fseq
;   _asincosf
;12 compiler assigned registers:
;   r0x1000
;   STK00
;   r0x1001
;   STK01
;   r0x1002
;   STK02
;   r0x1003
;   STK06
;   STK05
;   STK04
;   STK03
;   r0x1004
;; Starting pCode block
;[ICODE] acosf.c:29:  _entry($10) :
;[ICODE] acosf.c:29: 	proc _acosf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float) }
_acosf	;Function start
; 2 exit points
;[ICODE] acosf.c:29: iTemp0 [k2 lr3:20 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _acosf_x_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = recv _acosf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float) }
;	.line	29; "acosf.c"	float acosf(const float x) _MATH_REENTRANT
	BANKSEL	r0x1000
	MOVWF	r0x1000
	MOVF	STK00,W
	MOVWF	r0x1001
	MOVF	STK01,W
	MOVWF	r0x1002
	MOVF	STK02,W
	MOVWF	r0x1003
;[ICODE] acosf.c:31: 	send iTemp0 [k2 lr3:20 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _acosf_x_1_1}[r0x1048 r0x1049 r0x104A r0x104B ]{argreg = 1}
;[ICODE] acosf.c:31: 	send 1 {literal-float}{argreg = 1}
;[ICODE] acosf.c:31: 	iTemp1 [k4 lr6:7 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x104C ] = call ___fseq [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
;	.line	31; "acosf.c"	if(x== 1.0) return 0.0;
	MOVLW	0x00
	MOVWF	STK06
	MOVLW	0x00
	MOVWF	STK05
	MOVLW	0x80
	MOVWF	STK04
	MOVLW	0x3f
	MOVWF	STK03
	MOVF	r0x1003,W
	MOVWF	STK02
	MOVF	r0x1002,W
	MOVWF	STK01
	MOVF	r0x1001,W
	MOVWF	STK00
	MOVF	r0x1000,W
	PAGESEL	___fseq
	CALL	___fseq
	PAGESEL	$
	BANKSEL	r0x1004
	MOVWF	r0x1004
;[ICODE] acosf.c:31: 	if iTemp1 [k4 lr6:7 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x104C ] == 0 goto _iffalse_2($7)
	MOVF	r0x1004,W
	BTFSC	STATUS,2
	GOTO	_00111_DS_
;[ICODE] acosf.c:31: 	ret 0 {literal-float}
	MOVLW	0x00
	MOVWF	STK02
	MOVLW	0x00
	MOVWF	STK01
	MOVLW	0x00
	MOVWF	STK00
	MOVLW	0x00
	GOTO	_00113_DS_
;[ICODE] acosf.c:31:  _iffalse_2($7) :
;[ICODE] acosf.c:32: 	send iTemp0 [k2 lr3:20 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _acosf_x_1_1}[r0x1048 r0x1049 r0x104A r0x104B ]{argreg = 1}
;[ICODE] acosf.c:32: 	send -1 {literal-float}{argreg = 1}
;[ICODE] acosf.c:32: 	iTemp2 [k5 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x104C ] = call ___fseq [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
_00111_DS_
;	.line	32; "acosf.c"	else if(x==-1.0) return PI;
	MOVLW	0x00
	MOVWF	STK06
	MOVLW	0x00
	MOVWF	STK05
	MOVLW	0x80
	MOVWF	STK04
	MOVLW	0xbf
	MOVWF	STK03
	BANKSEL	r0x1003
	MOVF	r0x1003,W
	MOVWF	STK02
	MOVF	r0x1002,W
	MOVWF	STK01
	MOVF	r0x1001,W
	MOVWF	STK00
	MOVF	r0x1000,W
	PAGESEL	___fseq
	CALL	___fseq
	PAGESEL	$
	BANKSEL	r0x1004
	MOVWF	r0x1004
;[ICODE] acosf.c:32: 	if iTemp2 [k5 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x104C ] == 0 goto _iffalse_1($4)
	MOVF	r0x1004,W
	BTFSC	STATUS,2
	GOTO	_00108_DS_
;[ICODE] acosf.c:32: 	ret 3.14159 {literal-float}
	MOVLW	0xdb
	MOVWF	STK02
	MOVLW	0x0f
	MOVWF	STK01
	MOVLW	0x49
	MOVWF	STK00
	MOVLW	0x40
	GOTO	_00113_DS_
;[ICODE] acosf.c:32:  _iffalse_1($4) :
;[ICODE] acosf.c:33: 	if iTemp0 [k2 lr3:20 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _acosf_x_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] != 0 goto _ifend_2($8)
_00108_DS_
;	.line	33; "acosf.c"	else if(x== 0.0) return HALF_PI;
	BANKSEL	r0x1003
	MOVF	r0x1003,W
	IORWF	r0x1002,W
	IORWF	r0x1001,W
	IORWF	r0x1000,W
	BTFSS	STATUS,2
	GOTO	_00112_DS_
;[ICODE] acosf.c:33: 	ret 1.5708 {literal-float}
	MOVLW	0xdb
	MOVWF	STK02
	MOVLW	0x0f
	MOVWF	STK01
	MOVLW	0xc9
	MOVWF	STK00
	MOVLW	0x3f
	GOTO	_00113_DS_
;[ICODE] acosf.c:33:  _ifend_2($8) :
;[ICODE] acosf.c:34: 	send iTemp0 [k2 lr3:20 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _acosf_x_1_1}[r0x1048 r0x1049 r0x104A r0x104B ]{argreg = 1}
;[ICODE] acosf.c:34: 	send 0x1 {literal-const-int}{argreg = 1}
;[ICODE] acosf.c:34: 	iTemp3 [k7 lr21:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x1048 r0x1049 r0x104A r0x104B ] = call _asincosf [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float, const-int) }
_00112_DS_
;	.line	34; "acosf.c"	return asincosf(x,1);
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
	PAGESEL	_asincosf
	CALL	_asincosf
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
;[ICODE] acosf.c:34:  _return($9) :
;[ICODE] acosf.c:34: 	eproc _acosf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float) }
_00113_DS_
	RETURN	
; exit point of _acosf


;	code size estimation:
;	  103+   13 =   116 instructions (  258 byte)

	end
