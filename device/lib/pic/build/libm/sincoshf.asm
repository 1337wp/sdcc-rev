;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:32 2018
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"sincoshf.c"
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
	extern	___fslt
	extern	___fsgt
	extern	___fssub
	extern	___fsmul
	extern	___fsadd
	extern	___fsdiv
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
	global	_sincoshf

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_sincoshf_0	udata
r0x1005	res	1
r0x1004	res	1
r0x1003	res	1
r0x1002	res	1
r0x1007	res	1
r0x1006	res	1
r0x1008	res	1
r0x100A	res	1
r0x100B	res	1
r0x1009	res	1
r0x100C	res	1
r0x100D	res	1
r0x1010	res	1
r0x100F	res	1
r0x100E	res	1
r0x1011	res	1
r0x1012	res	1
r0x1013	res	1
r0x1014	res	1
r0x1017	res	1
r0x1016	res	1
r0x1015	res	1
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
code_sincoshf	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  _sincoshf	;Function start
; 2 exit points
;has an exit
;functions called:
;   ___fslt
;   ___fsgt
;   ___fsgt
;   ___fssub
;   ___fsgt
;   _expf
;   ___fsmul
;   ___fsadd
;   _expf
;   ___fsdiv
;   ___fsadd
;   ___fsmul
;   ___fslt
;   ___fsmul
;   ___fsmul
;   ___fsmul
;   ___fsadd
;   ___fsmul
;   ___fsadd
;   ___fsdiv
;   ___fsadd
;   ___fslt
;   ___fsgt
;   ___fsgt
;   ___fssub
;   ___fsgt
;   _expf
;   ___fsmul
;   ___fsadd
;   _expf
;   ___fsdiv
;   ___fsadd
;   ___fsmul
;   ___fslt
;   ___fsmul
;   ___fsmul
;   ___fsmul
;   ___fsadd
;   ___fsmul
;   ___fsadd
;   ___fsdiv
;   ___fsadd
;30 compiler assigned registers:
;   r0x1002
;   STK00
;   r0x1003
;   STK01
;   r0x1004
;   STK02
;   r0x1005
;   STK03
;   r0x1006
;   STK04
;   r0x1007
;   STK06
;   STK05
;   r0x1008
;   r0x1009
;   r0x100A
;   r0x100B
;   r0x100C
;   r0x100D
;   r0x100E
;   r0x100F
;   r0x1010
;   r0x1011
;   r0x1012
;   r0x1013
;   r0x1014
;   r0x1015
;   r0x1016
;   r0x1017
;   r0x1018
;; Starting pCode block
;[ICODE] sincoshf.c:49:  _entry($22) :
;[ICODE] sincoshf.c:49: 	proc _sincoshf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float, const-int) }
_sincoshf	;Function start
; 2 exit points
;[ICODE] sincoshf.c:49: iTemp0 [k2 lr3:105 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _sincoshf_x_1_1}[r0x1049 r0x104A r0x104B r0x104C ] = recv _sincoshf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float, const-int) }
;	.line	49; "sincoshf.c"	float sincoshf(const float x, const int iscosh)
	BANKSEL	r0x1002
	MOVWF	r0x1002
	MOVF	STK00,W
	MOVWF	r0x1003
	MOVF	STK01,W
	MOVWF	r0x1004
	MOVF	STK02,W
	MOVWF	r0x1005
;[ICODE] sincoshf.c:49: iTemp1 [k4 lr4:58 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-int}{ sir@ _sincoshf_iscosh_1_1}[r0x104D r0x104E ] = recv _sincoshf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float, const-int) }
	MOVF	STK03,W
	MOVWF	r0x1006
	MOVF	STK04,W
	MOVWF	r0x1007
;[ICODE] sincoshf.c:54: 	send iTemp0 [k2 lr3:105 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _sincoshf_x_1_1}[r0x1049 r0x104A r0x104B r0x104C ]{argreg = 1}
;[ICODE] sincoshf.c:54: 	send 0 {literal-float}{argreg = 1}
;[ICODE] sincoshf.c:54: 	iTemp2 [k6 lr7:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x104F ] = call ___fslt [k42 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
;	.line	54; "sincoshf.c"	if (x<0.0) { y=-x; sign=1; }
	MOVLW	0x00
	MOVWF	STK06
	MOVLW	0x00
	MOVWF	STK05
	MOVLW	0x00
	MOVWF	STK04
	MOVLW	0x00
	MOVWF	STK03
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
	BANKSEL	r0x1008
	MOVWF	r0x1008
;[ICODE] sincoshf.c:54: 	if iTemp2 [k6 lr7:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x104F ] == 0 goto _iffalse_0($2)
	MOVF	r0x1008,W
	BTFSC	STATUS,2
	GOTO	_00106_DS_
;[ICODE] sincoshf.c:54: 	iTemp3 [k7 lr9:76 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincoshf_y_1_1}[r0x104F r0x1050 r0x1051 r0x1052 ] = - iTemp0 [k2 lr3:105 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _sincoshf_x_1_1}[r0x1049 r0x104A r0x104B r0x104C ]
	MOVWF	r0x1009
	MOVWF	r0x1008
	MOVWF	r0x100A
	MOVWF	r0x100B
;[ICODE] sincoshf.c:54: 	iTemp5 [k10 lr11:70 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _sincoshf_sign_1_1}[r0x1053 ] := 0x1 {literal-char}
	MOVLW	0x01
	MOVWF	r0x100C
;[ICODE] sincoshf.c:54: 	 goto _ifend_0($3)
	GOTO	_00107_DS_
;[ICODE] sincoshf.c:54:  _iffalse_0($2) :
;[ICODE] sincoshf.c:55: 	iTemp3 [k7 lr9:76 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincoshf_y_1_1}[r0x104F r0x1050 r0x1051 r0x1052 ] := iTemp0 [k2 lr3:105 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _sincoshf_x_1_1}[r0x1049 r0x104A r0x104B r0x104C ]
_00106_DS_
;	.line	55; "sincoshf.c"	else { y=x;  sign=0; }
	BANKSEL	r0x1005
	MOVF	r0x1005,W
	MOVWF	r0x1008
	MOVF	r0x1004,W
	MOVWF	r0x100A
	MOVF	r0x1003,W
	MOVWF	r0x100B
	MOVF	r0x1002,W
	MOVWF	r0x1009
;[ICODE] sincoshf.c:55: 	iTemp5 [k10 lr11:70 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _sincoshf_sign_1_1}[r0x1053 ] := 0x0 {literal-char}
	CLRF	r0x100C
;[ICODE] sincoshf.c:55:  _ifend_0($3) :
;[ICODE] sincoshf.c:57: 	send iTemp3 [k7 lr9:76 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincoshf_y_1_1}[r0x104F r0x1050 r0x1051 r0x1052 ]{argreg = 1}
;[ICODE] sincoshf.c:57: 	send 1 {literal-float}{argreg = 1}
;[ICODE] sincoshf.c:57: 	iTemp6 [k12 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x1054 ] = call ___fsgt [k43 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
_00107_DS_
;	.line	57; "sincoshf.c"	if ((y>1.0) || iscosh)
	MOVLW	0x00
	MOVWF	STK06
	MOVLW	0x00
	MOVWF	STK05
	MOVLW	0x80
	MOVWF	STK04
	MOVLW	0x3f
	MOVWF	STK03
	BANKSEL	r0x1008
	MOVF	r0x1008,W
	MOVWF	STK02
	MOVF	r0x100A,W
	MOVWF	STK01
	MOVF	r0x100B,W
	MOVWF	STK00
	MOVF	r0x1009,W
	PAGESEL	___fsgt
	CALL	___fsgt
	PAGESEL	$
	BANKSEL	r0x100D
	MOVWF	r0x100D
;[ICODE] sincoshf.c:57: 	if iTemp6 [k12 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x1054 ] != 0 goto _iftrue_6($17)
	MOVF	r0x100D,W
	BTFSS	STATUS,2
	GOTO	_00121_DS_
;[ICODE] sincoshf.c:57: 	if iTemp1 [k4 lr4:58 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-int}{ sir@ _sincoshf_iscosh_1_1}[r0x104D r0x104E ] == 0 goto _iffalse_6($18)
	MOVF	r0x1007,W
	IORWF	r0x1006,W
	BTFSC	STATUS,2
	GOTO	_00122_DS_
;[ICODE] sincoshf.c:57:  _iftrue_6($17) :
;[ICODE] sincoshf.c:59: 	send iTemp3 [k7 lr9:76 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincoshf_y_1_1}[r0x104F r0x1050 r0x1051 r0x1052 ]{argreg = 1}
;[ICODE] sincoshf.c:59: 	send 9 {literal-float}{argreg = 1}
;[ICODE] sincoshf.c:59: 	iTemp7 [k13 lr25:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x1054 ] = call ___fsgt [k43 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
_00121_DS_
;	.line	59; "sincoshf.c"	if(y>YBAR)
	MOVLW	0x00
	MOVWF	STK06
	MOVLW	0x00
	MOVWF	STK05
	MOVLW	0x10
	MOVWF	STK04
	MOVLW	0x41
	MOVWF	STK03
	BANKSEL	r0x1008
	MOVF	r0x1008,W
	MOVWF	STK02
	MOVF	r0x100A,W
	MOVWF	STK01
	MOVF	r0x100B,W
	MOVWF	STK00
	MOVF	r0x1009,W
	PAGESEL	___fsgt
	CALL	___fsgt
	PAGESEL	$
	BANKSEL	r0x100D
	MOVWF	r0x100D
;[ICODE] sincoshf.c:59: 	if iTemp7 [k13 lr25:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x1054 ] == 0 goto _iffalse_3($10)
	MOVF	r0x100D,W
	BTFSC	STATUS,2
	GOTO	_00114_DS_
;[ICODE] sincoshf.c:61: 	send iTemp3 [k7 lr9:76 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincoshf_y_1_1}[r0x104F r0x1050 r0x1051 r0x1052 ]{argreg = 1}
;[ICODE] sincoshf.c:61: 	send 0.693161 {literal-float}{argreg = 1}
;[ICODE] sincoshf.c:61: 	iTemp8 [k14 lr29:63 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincoshf_w_1_1}[r0x1054 r0x1055 r0x1056 r0x1057 ] = call ___fssub [k44 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
;	.line	61; "sincoshf.c"	w=y-K1;
	MOVLW	0x00
	MOVWF	STK06
	MOVLW	0x73
	MOVWF	STK05
	MOVLW	0x31
	MOVWF	STK04
	MOVLW	0x3f
	MOVWF	STK03
	MOVF	r0x1008,W
	MOVWF	STK02
	MOVF	r0x100A,W
	MOVWF	STK01
	MOVF	r0x100B,W
	MOVWF	STK00
	MOVF	r0x1009,W
	PAGESEL	___fssub
	CALL	___fssub
	PAGESEL	$
	BANKSEL	r0x100E
	MOVWF	r0x100E
	MOVF	STK00,W
	MOVWF	r0x100F
	MOVF	STK01,W
	MOVWF	r0x1010
	MOVF	STK02,W
	MOVWF	r0x100D
;[ICODE] sincoshf.c:62: 	send iTemp8 [k14 lr29:63 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincoshf_w_1_1}[r0x1054 r0x1055 r0x1056 r0x1057 ]{argreg = 1}
;[ICODE] sincoshf.c:62: 	send 44.9354 {literal-float}{argreg = 1}
;[ICODE] sincoshf.c:62: 	iTemp10 [k17 lr33:34 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x1058 ] = call ___fsgt [k43 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
;	.line	62; "sincoshf.c"	if (w>WMAX)
	MOVLW	0xcf
	MOVWF	STK06
	MOVLW	0xbd
	MOVWF	STK05
	MOVLW	0x33
	MOVWF	STK04
	MOVLW	0x42
	MOVWF	STK03
	MOVF	r0x100D,W
	MOVWF	STK02
	MOVF	r0x1010,W
	MOVWF	STK01
	MOVF	r0x100F,W
	MOVWF	STK00
	MOVF	r0x100E,W
	PAGESEL	___fsgt
	CALL	___fsgt
	PAGESEL	$
	BANKSEL	r0x1011
	MOVWF	r0x1011
;[ICODE] sincoshf.c:62: 	if iTemp10 [k17 lr33:34 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x1058 ] == 0 goto _iffalse_1($5)
	MOVF	r0x1011,W
	BTFSC	STATUS,2
	GOTO	_00109_DS_
;[ICODE] sincoshf.c:64: 	_errno [k18 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{int} := 0x22 {literal-int}
;	.line	64; "sincoshf.c"	errno=ERANGE;
	MOVLW	0x22
	BANKSEL	_errno
	MOVWF	_errno
	CLRF	(_errno + 1)
;[ICODE] sincoshf.c:65: 	iTemp12 [k20 lr36:109 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincoshf_z_1_1}[r0x1058 r0x1059 r0x105A r0x105B ] := 3.40282e+38 {literal-float}
;	.line	65; "sincoshf.c"	z=XMAX;
	MOVLW	0xff
	BANKSEL	r0x1011
	MOVWF	r0x1011
	MOVWF	r0x1012
	MOVLW	0x7f
	MOVWF	r0x1013
	MOVWF	r0x1014
;[ICODE] sincoshf.c:65: 	 goto _ifend_3($11)
	GOTO	_00115_DS_
;[ICODE] sincoshf.c:65:  _iffalse_1($5) :
;[ICODE] sincoshf.c:69: 	send iTemp8 [k14 lr29:63 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincoshf_w_1_1}[r0x1054 r0x1055 r0x1056 r0x1057 ]{argreg = 1}
;[ICODE] sincoshf.c:69: 	iTemp12 [k20 lr36:109 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincoshf_z_1_1}[r0x1058 r0x1059 r0x105A r0x105B ] = call _expf [k22 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float) }
_00109_DS_
;	.line	69; "sincoshf.c"	z=expf(w);
	BANKSEL	r0x100D
	MOVF	r0x100D,W
	MOVWF	STK02
	MOVF	r0x1010,W
	MOVWF	STK01
	MOVF	r0x100F,W
	MOVWF	STK00
	MOVF	r0x100E,W
	PAGESEL	_expf
	CALL	_expf
	PAGESEL	$
	BANKSEL	r0x1014
	MOVWF	r0x1014
	MOVF	STK00,W
	MOVWF	r0x1013
	MOVF	STK01,W
	MOVWF	r0x1012
	MOVF	STK02,W
;	.line	70; "sincoshf.c"	z+=K3*z;
	MOVWF	r0x1011
	MOVWF	STK06
	MOVF	r0x1012,W
	MOVWF	STK05
	MOVF	r0x1013,W
	MOVWF	STK04
	MOVF	r0x1014,W
	MOVWF	STK03
	MOVLW	0x97
	MOVWF	STK02
	MOVLW	0x08
	MOVWF	STK01
	MOVLW	0x68
	MOVWF	STK00
	MOVLW	0x37
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x1015
	MOVWF	r0x1015
	MOVF	STK00,W
	MOVWF	r0x1016
	MOVF	STK01,W
	MOVWF	r0x1017
	MOVF	STK02,W
;;1	MOVWF	r0x1018
	MOVWF	STK06
	MOVF	r0x1017,W
	MOVWF	STK05
	MOVF	r0x1016,W
	MOVWF	STK04
	MOVF	r0x1015,W
	MOVWF	STK03
	MOVF	r0x1011,W
	MOVWF	STK02
	MOVF	r0x1012,W
	MOVWF	STK01
	MOVF	r0x1013,W
	MOVWF	STK00
	MOVF	r0x1014,W
	PAGESEL	___fsadd
	CALL	___fsadd
	PAGESEL	$
	BANKSEL	r0x1014
	MOVWF	r0x1014
	MOVF	STK00,W
	MOVWF	r0x1013
	MOVF	STK01,W
	MOVWF	r0x1012
	MOVF	STK02,W
	MOVWF	r0x1011
;[ICODE] sincoshf.c:70: 	 goto _ifend_3($11)
	GOTO	_00115_DS_
;[ICODE] sincoshf.c:70:  _iffalse_3($10) :
;[ICODE] sincoshf.c:75: 	send iTemp3 [k7 lr9:76 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincoshf_y_1_1}[r0x104F r0x1050 r0x1051 r0x1052 ]{argreg = 1}
;[ICODE] sincoshf.c:75: 	iTemp12 [k20 lr36:109 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincoshf_z_1_1}[r0x1058 r0x1059 r0x105A r0x105B ] = call _expf [k22 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float) }
_00114_DS_
;	.line	75; "sincoshf.c"	z=expf(y);
	BANKSEL	r0x1008
	MOVF	r0x1008,W
	MOVWF	STK02
	MOVF	r0x100A,W
	MOVWF	STK01
	MOVF	r0x100B,W
	MOVWF	STK00
	MOVF	r0x1009,W
	PAGESEL	_expf
	CALL	_expf
	PAGESEL	$
	BANKSEL	r0x1014
	MOVWF	r0x1014
	MOVF	STK00,W
	MOVWF	r0x1013
	MOVF	STK01,W
	MOVWF	r0x1012
	MOVF	STK02,W
;	.line	76; "sincoshf.c"	w=1.0/z;
	MOVWF	r0x1011
	MOVWF	STK06
	MOVF	r0x1012,W
	MOVWF	STK05
	MOVF	r0x1013,W
	MOVWF	STK04
	MOVF	r0x1014,W
	MOVWF	STK03
	MOVLW	0x00
	MOVWF	STK02
	MOVLW	0x00
	MOVWF	STK01
	MOVLW	0x80
	MOVWF	STK00
	MOVLW	0x3f
	PAGESEL	___fsdiv
	CALL	___fsdiv
	PAGESEL	$
	BANKSEL	r0x100E
	MOVWF	r0x100E
	MOVF	STK00,W
	MOVWF	r0x100F
	MOVF	STK01,W
	MOVWF	r0x1010
	MOVF	STK02,W
	MOVWF	r0x100D
;[ICODE] sincoshf.c:77: 	if iTemp1 [k4 lr4:58 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-int}{ sir@ _sincoshf_iscosh_1_1}[r0x104D r0x104E ] != 0 goto _iffalse_2($8)
;	.line	77; "sincoshf.c"	if(!iscosh) w=-w;
	MOVF	r0x1007,W
;	.line	78; "sincoshf.c"	z=(z+w)*0.5;
	IORWF	r0x1006,W
	BTFSC	STATUS,2
	MOVWF	r0x100E
	MOVF	r0x100D,W
	MOVWF	STK06
	MOVF	r0x1010,W
	MOVWF	STK05
	MOVF	r0x100F,W
	MOVWF	STK04
	MOVF	r0x100E,W
	MOVWF	STK03
	MOVF	r0x1011,W
	MOVWF	STK02
	MOVF	r0x1012,W
	MOVWF	STK01
	MOVF	r0x1013,W
	MOVWF	STK00
	MOVF	r0x1014,W
	PAGESEL	___fsadd
	CALL	___fsadd
	PAGESEL	$
	BANKSEL	r0x1010
	MOVWF	r0x1010
	MOVF	STK00,W
	MOVWF	r0x100D
	MOVF	STK01,W
	MOVWF	r0x1006
	MOVF	STK02,W
	MOVWF	r0x1007
	MOVWF	STK06
	MOVF	r0x1006,W
	MOVWF	STK05
	MOVF	r0x100D,W
	MOVWF	STK04
	MOVF	r0x1010,W
	MOVWF	STK03
	MOVLW	0x00
	MOVWF	STK02
	MOVLW	0x00
	MOVWF	STK01
	MOVLW	0x00
	MOVWF	STK00
	MOVLW	0x3f
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x1014
	MOVWF	r0x1014
	MOVF	STK00,W
	MOVWF	r0x1013
	MOVF	STK01,W
	MOVWF	r0x1012
	MOVF	STK02,W
	MOVWF	r0x1011
;[ICODE] sincoshf.c:78:  _ifend_3($11) :
;[ICODE] sincoshf.c:80: 	if iTemp5 [k10 lr11:70 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _sincoshf_sign_1_1}[r0x1053 ] == 0 goto _ifend_6($19)
_00115_DS_
;	.line	80; "sincoshf.c"	if(sign) z=-z;
	MOVLW	0x00
	BANKSEL	r0x100C
	IORWF	r0x100C,W
	BTFSC	STATUS,2
	GOTO	_00123_DS_
;[ICODE] sincoshf.c:80: 	iTemp12 [k20 lr36:109 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincoshf_z_1_1}[r0x1058 r0x1059 r0x105A r0x105B ] = - iTemp12 [k20 lr36:109 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincoshf_z_1_1}[r0x1058 r0x1059 r0x105A r0x105B ]
	MOVWF	r0x1014
;[ICODE] sincoshf.c:80: 	 goto _ifend_6($19)
	GOTO	_00123_DS_
;[ICODE] sincoshf.c:80:  _iffalse_6($18) :
;[ICODE] sincoshf.c:84: 	send iTemp3 [k7 lr9:76 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincoshf_y_1_1}[r0x104F r0x1050 r0x1051 r0x1052 ]{argreg = 1}
;[ICODE] sincoshf.c:84: 	send 0.000244141 {literal-float}{argreg = 1}
;[ICODE] sincoshf.c:84: 	iTemp22 [k32 lr77:78 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x104D ] = call ___fslt [k42 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
_00122_DS_
;	.line	84; "sincoshf.c"	if (y<EPS)
	MOVLW	0x00
	MOVWF	STK06
	MOVLW	0x00
	MOVWF	STK05
	MOVLW	0x80
	MOVWF	STK04
	MOVLW	0x39
	MOVWF	STK03
	BANKSEL	r0x1008
	MOVF	r0x1008,W
	MOVWF	STK02
	MOVF	r0x100A,W
	MOVWF	STK01
	MOVF	r0x100B,W
	MOVWF	STK00
	MOVF	r0x1009,W
	PAGESEL	___fslt
	CALL	___fslt
	PAGESEL	$
	BANKSEL	r0x1007
	MOVWF	r0x1007
;[ICODE] sincoshf.c:84: 	if iTemp22 [k32 lr77:78 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x104D ] == 0 goto _iffalse_5($15)
	MOVF	r0x1007,W
	BTFSC	STATUS,2
	GOTO	_00119_DS_
;[ICODE] sincoshf.c:85: 	iTemp12 [k20 lr36:109 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincoshf_z_1_1}[r0x1058 r0x1059 r0x105A r0x105B ] := iTemp0 [k2 lr3:105 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _sincoshf_x_1_1}[r0x1049 r0x104A r0x104B r0x104C ]
;	.line	85; "sincoshf.c"	z=x;
	MOVF	r0x1005,W
	MOVWF	r0x1011
	MOVF	r0x1004,W
	MOVWF	r0x1012
	MOVF	r0x1003,W
	MOVWF	r0x1013
	MOVF	r0x1002,W
	MOVWF	r0x1014
;[ICODE] sincoshf.c:85: 	 goto _ifend_6($19)
	GOTO	_00123_DS_
;[ICODE] sincoshf.c:85:  _iffalse_5($15) :
;[ICODE] sincoshf.c:88: 	send iTemp0 [k2 lr3:105 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _sincoshf_x_1_1}[r0x1049 r0x104A r0x104B r0x104C ]{argreg = 1}
;[ICODE] sincoshf.c:88: 	send iTemp0 [k2 lr3:105 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _sincoshf_x_1_1}[r0x1049 r0x104A r0x104B r0x104C ]{argreg = 1}
;[ICODE] sincoshf.c:88: 	iTemp12 [k20 lr36:109 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincoshf_z_1_1}[r0x1058 r0x1059 r0x105A r0x105B ] = call ___fsmul [k45 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
_00119_DS_
;	.line	88; "sincoshf.c"	z=x*x;
	BANKSEL	r0x1005
	MOVF	r0x1005,W
	MOVWF	STK06
	MOVF	r0x1004,W
	MOVWF	STK05
	MOVF	r0x1003,W
	MOVWF	STK04
	MOVF	r0x1002,W
	MOVWF	STK03
	MOVF	r0x1005,W
	MOVWF	STK02
	MOVF	r0x1004,W
	MOVWF	STK01
	MOVF	r0x1003,W
	MOVWF	STK00
	MOVF	r0x1002,W
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x1014
	MOVWF	r0x1014
	MOVF	STK00,W
	MOVWF	r0x1013
	MOVF	STK01,W
	MOVWF	r0x1012
	MOVF	STK02,W
;	.line	89; "sincoshf.c"	z=x+x*z*P(z)/Q(z);
	MOVWF	r0x1011
	MOVWF	STK06
	MOVF	r0x1012,W
	MOVWF	STK05
	MOVF	r0x1013,W
	MOVWF	STK04
	MOVF	r0x1014,W
	MOVWF	STK03
	MOVF	r0x1005,W
	MOVWF	STK02
	MOVF	r0x1004,W
	MOVWF	STK01
	MOVF	r0x1003,W
	MOVWF	STK00
	MOVF	r0x1002,W
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x100A
	MOVWF	r0x100A
	MOVF	STK00,W
	MOVWF	r0x1008
	MOVF	STK01,W
	MOVWF	r0x1006
	MOVF	STK02,W
	MOVWF	r0x1007
;[ICODE] sincoshf.c:89: 	send -0.190334 {literal-float}{argreg = 1}
;[ICODE] sincoshf.c:89: 	send iTemp12 [k20 lr36:109 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincoshf_z_1_1}[r0x1058 r0x1059 r0x105A r0x105B ]{argreg = 1}
;[ICODE] sincoshf.c:89: 	iTemp25 [k35 lr91:93 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x1051 r0x1052 r0x1053 r0x1054 ] = call ___fsmul [k45 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x1011,W
	MOVWF	STK06
	MOVF	r0x1012,W
	MOVWF	STK05
	MOVF	r0x1013,W
	MOVWF	STK04
	MOVF	r0x1014,W
	MOVWF	STK03
	MOVLW	0xea
	MOVWF	STK02
	MOVLW	0xe6
	MOVWF	STK01
	MOVLW	0x42
	MOVWF	STK00
	MOVLW	0xbe
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x100D
	MOVWF	r0x100D
	MOVF	STK00,W
	MOVWF	r0x100C
	MOVF	STK01,W
	MOVWF	r0x1009
	MOVF	STK02,W
	MOVWF	r0x100B
;[ICODE] sincoshf.c:89: 	send iTemp25 [k35 lr91:93 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x1051 r0x1052 r0x1053 r0x1054 ]{argreg = 1}
;[ICODE] sincoshf.c:89: 	send -7.13793 {literal-float}{argreg = 1}
;[ICODE] sincoshf.c:89: 	iTemp26 [k36 lr94:96 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x1051 r0x1052 r0x1053 r0x1054 ] = call ___fsadd [k46 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVLW	0xf0
	MOVWF	STK06
	MOVLW	0x69
	MOVWF	STK05
	MOVLW	0xe4
	MOVWF	STK04
	MOVLW	0xc0
	MOVWF	STK03
	MOVF	r0x100B,W
	MOVWF	STK02
	MOVF	r0x1009,W
	MOVWF	STK01
	MOVF	r0x100C,W
	MOVWF	STK00
	MOVF	r0x100D,W
	PAGESEL	___fsadd
	CALL	___fsadd
	PAGESEL	$
	BANKSEL	r0x100D
	MOVWF	r0x100D
	MOVF	STK00,W
	MOVWF	r0x100C
	MOVF	STK01,W
	MOVWF	r0x1009
	MOVF	STK02,W
	MOVWF	r0x100B
	MOVWF	STK06
	MOVF	r0x1009,W
	MOVWF	STK05
	MOVF	r0x100C,W
	MOVWF	STK04
	MOVF	r0x100D,W
	MOVWF	STK03
	MOVF	r0x1007,W
	MOVWF	STK02
	MOVF	r0x1006,W
	MOVWF	STK01
	MOVF	r0x1008,W
	MOVWF	STK00
	MOVF	r0x100A,W
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x100A
	MOVWF	r0x100A
	MOVF	STK00,W
	MOVWF	r0x1008
	MOVF	STK01,W
	MOVWF	r0x1006
	MOVF	STK02,W
	MOVWF	r0x1007
;[ICODE] sincoshf.c:89: 	send iTemp12 [k20 lr36:109 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincoshf_z_1_1}[r0x1058 r0x1059 r0x105A r0x105B ]{argreg = 1}
;[ICODE] sincoshf.c:89: 	send -42.8277 {literal-float}{argreg = 1}
;[ICODE] sincoshf.c:89: 	iTemp29 [k39 lr100:102 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x1051 r0x1052 r0x1053 r0x1054 ] = call ___fsadd [k46 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVLW	0x93
	MOVWF	STK06
	MOVLW	0x4f
	MOVWF	STK05
	MOVLW	0x2b
	MOVWF	STK04
	MOVLW	0xc2
	MOVWF	STK03
	MOVF	r0x1011,W
	MOVWF	STK02
	MOVF	r0x1012,W
	MOVWF	STK01
	MOVF	r0x1013,W
	MOVWF	STK00
	MOVF	r0x1014,W
	PAGESEL	___fsadd
	CALL	___fsadd
	PAGESEL	$
	BANKSEL	r0x100D
	MOVWF	r0x100D
	MOVF	STK00,W
	MOVWF	r0x100C
	MOVF	STK01,W
	MOVWF	r0x1009
	MOVF	STK02,W
	MOVWF	r0x100B
	MOVWF	STK06
	MOVF	r0x1009,W
	MOVWF	STK05
	MOVF	r0x100C,W
	MOVWF	STK04
	MOVF	r0x100D,W
	MOVWF	STK03
	MOVF	r0x1007,W
	MOVWF	STK02
	MOVF	r0x1006,W
	MOVWF	STK01
	MOVF	r0x1008,W
	MOVWF	STK00
	MOVF	r0x100A,W
	PAGESEL	___fsdiv
	CALL	___fsdiv
	PAGESEL	$
	BANKSEL	r0x100A
	MOVWF	r0x100A
	MOVF	STK00,W
	MOVWF	r0x1008
	MOVF	STK01,W
	MOVWF	r0x1006
	MOVF	STK02,W
	MOVWF	r0x1007
	MOVWF	STK06
	MOVF	r0x1006,W
	MOVWF	STK05
	MOVF	r0x1008,W
	MOVWF	STK04
	MOVF	r0x100A,W
	MOVWF	STK03
	MOVF	r0x1005,W
	MOVWF	STK02
	MOVF	r0x1004,W
	MOVWF	STK01
	MOVF	r0x1003,W
	MOVWF	STK00
	MOVF	r0x1002,W
	PAGESEL	___fsadd
	CALL	___fsadd
	PAGESEL	$
	BANKSEL	r0x1014
	MOVWF	r0x1014
	MOVF	STK00,W
	MOVWF	r0x1013
	MOVF	STK01,W
	MOVWF	r0x1012
	MOVF	STK02,W
	MOVWF	r0x1011
;[ICODE] sincoshf.c:89:  _ifend_6($19) :
;[ICODE] sincoshf.c:92: 	ret iTemp12 [k20 lr36:109 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _sincoshf_z_1_1}[r0x1058 r0x1059 r0x105A r0x105B ]
_00123_DS_
;	.line	92; "sincoshf.c"	return z;
	BANKSEL	r0x1011
	MOVF	r0x1011,W
	MOVWF	STK02
	MOVF	r0x1012,W
	MOVWF	STK01
	MOVF	r0x1013,W
	MOVWF	STK00
	MOVF	r0x1014,W
;[ICODE] sincoshf.c:92:  _return($21) :
;[ICODE] sincoshf.c:92: 	eproc _sincoshf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float, const-int) }
	RETURN	
; exit point of _sincoshf


;	code size estimation:
;	  512+   75 =   587 instructions ( 1324 byte)

	end
