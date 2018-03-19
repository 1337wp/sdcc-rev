;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:32 2018
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"atanf.c"
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
	extern	___fsgt
	extern	___fsdiv
	extern	___fsmul
	extern	___fssub
	extern	___fsadd
	extern	___fslt
	extern	__mulint
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
	global	_atanf

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_atanf_0	udata
r0x1013	res	1
r0x1012	res	1
r0x1011	res	1
r0x1010	res	1
r0x1014	res	1
r0x1015	res	1
r0x1019	res	1
r0x1018	res	1
r0x1017	res	1
r0x1016	res	1
r0x101A	res	1
r0x101D	res	1
r0x101C	res	1
r0x101B	res	1
r0x1021	res	1
r0x1020	res	1
r0x101F	res	1
r0x101E	res	1
r0x1025	res	1
r0x1024	res	1
r0x1023	res	1
r0x1022	res	1
_atanf_a_1_1	res	16
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
code_atanf	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  _atanf	;Function start
; 2 exit points
;has an exit
;functions called:
;   _fabsf
;   ___fsgt
;   ___fsdiv
;   ___fsgt
;   ___fsmul
;   ___fssub
;   ___fsadd
;   ___fsadd
;   ___fsdiv
;   _fabsf
;   ___fslt
;   ___fsmul
;   ___fsmul
;   ___fsadd
;   ___fsmul
;   ___fsmul
;   ___fsadd
;   ___fsdiv
;   ___fsadd
;   __mulint
;   ___fsadd
;   ___fslt
;   _fabsf
;   ___fsgt
;   ___fsdiv
;   ___fsgt
;   ___fsmul
;   ___fssub
;   ___fsadd
;   ___fsadd
;   ___fsdiv
;   _fabsf
;   ___fslt
;   ___fsmul
;   ___fsmul
;   ___fsadd
;   ___fsmul
;   ___fsmul
;   ___fsadd
;   ___fsdiv
;   ___fsadd
;   __mulint
;   ___fsadd
;   ___fslt
;29 compiler assigned registers:
;   r0x1010
;   STK00
;   r0x1011
;   STK01
;   r0x1012
;   STK02
;   r0x1013
;   r0x1014
;   r0x1015
;   r0x1016
;   r0x1017
;   r0x1018
;   r0x1019
;   STK06
;   STK05
;   STK04
;   STK03
;   r0x101A
;   r0x101B
;   r0x101C
;   r0x101D
;   r0x101E
;   r0x101F
;   r0x1020
;   r0x1021
;   r0x1022
;   r0x1023
;   r0x1024
;   r0x1025
;; Starting pCode block
;[ICODE] atanf.c:43:  _entry($13) :
;[ICODE] atanf.c:43: 	proc _atanf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float) }
_atanf	;Function start
; 2 exit points
;[ICODE] atanf.c:43: iTemp0 [k2 lr3:93 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _atanf_x_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = recv _atanf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float) }
;	.line	43; "atanf.c"	float atanf(const float x) _MATH_REENTRANT
	BANKSEL	r0x1010
	MOVWF	r0x1010
	MOVF	STK00,W
	MOVWF	r0x1011
	MOVF	STK01,W
	MOVWF	r0x1012
	MOVF	STK02,W
	MOVWF	r0x1013
;[ICODE] atanf.c:46: 	iTemp1 [k4 lr4:84 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ _atanf_n_1_1}[r0x104C r0x104D ] := 0x0 {literal-int}
;	.line	46; "atanf.c"	int n=0;
	CLRF	r0x1014
	CLRF	r0x1015
;[ICODE] atanf.c:49: 	send iTemp0 [k2 lr3:93 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _atanf_x_1_1}[r0x1048 r0x1049 r0x104A r0x104B ]{argreg = 1}
;[ICODE] atanf.c:49: 	iTemp2 [k6 lr6:73 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atanf_f_1_1}[r0x104E r0x104F r0x1050 r0x1051 ] = call _fabsf [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float) }
;	.line	49; "atanf.c"	f=fabsf(x);
	MOVF	r0x1013,W
	MOVWF	STK02
	MOVF	r0x1012,W
	MOVWF	STK01
	MOVF	r0x1011,W
	MOVWF	STK00
	MOVF	r0x1010,W
	PAGESEL	_fabsf
	CALL	_fabsf
	PAGESEL	$
	BANKSEL	r0x1016
	MOVWF	r0x1016
	MOVF	STK00,W
	MOVWF	r0x1017
	MOVF	STK01,W
	MOVWF	r0x1018
	MOVF	STK02,W
	MOVWF	r0x1019
;[ICODE] atanf.c:50: 	send iTemp2 [k6 lr6:73 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atanf_f_1_1}[r0x104E r0x104F r0x1050 r0x1051 ]{argreg = 1}
;[ICODE] atanf.c:50: 	send 1 {literal-float}{argreg = 1}
;[ICODE] atanf.c:50: 	iTemp4 [k10 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x1052 ] = call ___fsgt [k45 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
;	.line	50; "atanf.c"	if(f>1.0)
	MOVLW	0x00
	MOVWF	STK06
	MOVLW	0x00
	MOVWF	STK05
	MOVLW	0x80
	MOVWF	STK04
	MOVLW	0x3f
	MOVWF	STK03
	MOVF	r0x1019,W
	MOVWF	STK02
	MOVF	r0x1018,W
	MOVWF	STK01
	MOVF	r0x1017,W
	MOVWF	STK00
	MOVF	r0x1016,W
	PAGESEL	___fsgt
	CALL	___fsgt
	PAGESEL	$
	BANKSEL	r0x101A
	MOVWF	r0x101A
;[ICODE] atanf.c:50: 	if iTemp4 [k10 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x1052 ] == 0 goto _iffalse_0($2)
	MOVF	r0x101A,W
	BTFSC	STATUS,2
	GOTO	_00106_DS_
;[ICODE] atanf.c:52: 	send 1 {literal-float}{argreg = 1}
;[ICODE] atanf.c:52: 	send iTemp2 [k6 lr6:73 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atanf_f_1_1}[r0x104E r0x104F r0x1050 r0x1051 ]{argreg = 1}
;[ICODE] atanf.c:52: 	iTemp2 [k6 lr6:73 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atanf_f_1_1}[r0x104E r0x104F r0x1050 r0x1051 ] = call ___fsdiv [k46 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
;	.line	52; "atanf.c"	f=1.0/f;
	MOVF	r0x1019,W
	MOVWF	STK06
	MOVF	r0x1018,W
	MOVWF	STK05
	MOVF	r0x1017,W
	MOVWF	STK04
	MOVF	r0x1016,W
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
	BANKSEL	r0x1016
	MOVWF	r0x1016
	MOVF	STK00,W
	MOVWF	r0x1017
	MOVF	STK01,W
	MOVWF	r0x1018
	MOVF	STK02,W
	MOVWF	r0x1019
;[ICODE] atanf.c:53: 	iTemp1 [k4 lr4:84 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ _atanf_n_1_1}[r0x104C r0x104D ] := 0x2 {literal-int}
;	.line	53; "atanf.c"	n=2;
	MOVLW	0x02
	MOVWF	r0x1014
	CLRF	r0x1015
;[ICODE] atanf.c:53:  _iffalse_0($2) :
;[ICODE] atanf.c:55: 	send iTemp2 [k6 lr6:73 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atanf_f_1_1}[r0x104E r0x104F r0x1050 r0x1051 ]{argreg = 1}
;[ICODE] atanf.c:55: 	send 0.267949 {literal-float}{argreg = 1}
;[ICODE] atanf.c:55: 	iTemp6 [k12 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x1052 ] = call ___fsgt [k45 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
_00106_DS_
;	.line	55; "atanf.c"	if(f>K1)
	MOVLW	0xa3
	MOVWF	STK06
	MOVLW	0x30
	MOVWF	STK05
	MOVLW	0x89
	MOVWF	STK04
	MOVLW	0x3e
	MOVWF	STK03
	BANKSEL	r0x1019
	MOVF	r0x1019,W
	MOVWF	STK02
	MOVF	r0x1018,W
	MOVWF	STK01
	MOVF	r0x1017,W
	MOVWF	STK00
	MOVF	r0x1016,W
	PAGESEL	___fsgt
	CALL	___fsgt
	PAGESEL	$
	BANKSEL	r0x101A
	MOVWF	r0x101A
;[ICODE] atanf.c:55: 	if iTemp6 [k12 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x1052 ] == 0 goto _iffalse_1($4)
	MOVF	r0x101A,W
	BTFSC	STATUS,2
	GOTO	_00108_DS_
;[ICODE] atanf.c:57: 	send 0.732051 {literal-float}{argreg = 1}
;[ICODE] atanf.c:57: 	send iTemp2 [k6 lr6:73 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atanf_f_1_1}[r0x104E r0x104F r0x1050 r0x1051 ]{argreg = 1}
;[ICODE] atanf.c:57: 	iTemp7 [k13 lr24:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x1052 r0x1053 r0x1054 r0x1055 ] = call ___fsmul [k47 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
;	.line	57; "atanf.c"	f=((K2*f-1.0)+f)/(K3+f);
	MOVF	r0x1019,W
	MOVWF	STK06
	MOVF	r0x1018,W
	MOVWF	STK05
	MOVF	r0x1017,W
	MOVWF	STK04
	MOVF	r0x1016,W
	MOVWF	STK03
	MOVLW	0xaf
	MOVWF	STK02
	MOVLW	0x67
	MOVWF	STK01
	MOVLW	0x3b
	MOVWF	STK00
	MOVLW	0x3f
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x101B
	MOVWF	r0x101B
	MOVF	STK00,W
	MOVWF	r0x101C
	MOVF	STK01,W
	MOVWF	r0x101D
	MOVF	STK02,W
	MOVWF	r0x101A
;[ICODE] atanf.c:57: 	send iTemp7 [k13 lr24:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x1052 r0x1053 r0x1054 r0x1055 ]{argreg = 1}
;[ICODE] atanf.c:57: 	send 1 {literal-float}{argreg = 1}
;[ICODE] atanf.c:57: 	iTemp8 [k14 lr27:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x1052 r0x1053 r0x1054 r0x1055 ] = call ___fssub [k48 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVLW	0x00
	MOVWF	STK06
	MOVLW	0x00
	MOVWF	STK05
	MOVLW	0x80
	MOVWF	STK04
	MOVLW	0x3f
	MOVWF	STK03
	MOVF	r0x101A,W
	MOVWF	STK02
	MOVF	r0x101D,W
	MOVWF	STK01
	MOVF	r0x101C,W
	MOVWF	STK00
	MOVF	r0x101B,W
	PAGESEL	___fssub
	CALL	___fssub
	PAGESEL	$
	BANKSEL	r0x101B
	MOVWF	r0x101B
	MOVF	STK00,W
	MOVWF	r0x101C
	MOVF	STK01,W
	MOVWF	r0x101D
	MOVF	STK02,W
	MOVWF	r0x101A
;[ICODE] atanf.c:57: 	send iTemp8 [k14 lr27:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x1052 r0x1053 r0x1054 r0x1055 ]{argreg = 1}
;[ICODE] atanf.c:57: 	send iTemp2 [k6 lr6:73 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atanf_f_1_1}[r0x104E r0x104F r0x1050 r0x1051 ]{argreg = 1}
;[ICODE] atanf.c:57: 	iTemp9 [k15 lr30:35 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x1052 r0x1053 r0x1054 r0x1055 ] = call ___fsadd [k49 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x1019,W
	MOVWF	STK06
	MOVF	r0x1018,W
	MOVWF	STK05
	MOVF	r0x1017,W
	MOVWF	STK04
	MOVF	r0x1016,W
	MOVWF	STK03
	MOVF	r0x101A,W
	MOVWF	STK02
	MOVF	r0x101D,W
	MOVWF	STK01
	MOVF	r0x101C,W
	MOVWF	STK00
	MOVF	r0x101B,W
	PAGESEL	___fsadd
	CALL	___fsadd
	PAGESEL	$
	BANKSEL	r0x101B
	MOVWF	r0x101B
	MOVF	STK00,W
	MOVWF	r0x101C
	MOVF	STK01,W
	MOVWF	r0x101D
	MOVF	STK02,W
	MOVWF	r0x101A
;[ICODE] atanf.c:57: 	send iTemp2 [k6 lr6:73 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atanf_f_1_1}[r0x104E r0x104F r0x1050 r0x1051 ]{argreg = 1}
;[ICODE] atanf.c:57: 	send 1.73205 {literal-float}{argreg = 1}
;[ICODE] atanf.c:57: 	iTemp10 [k16 lr33:35 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x1056 r0x1057 r0x1058 r0x1059 ] = call ___fsadd [k49 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVLW	0xd7
	MOVWF	STK06
	MOVLW	0xb3
	MOVWF	STK05
	MOVLW	0xdd
	MOVWF	STK04
	MOVLW	0x3f
	MOVWF	STK03
	MOVF	r0x1019,W
	MOVWF	STK02
	MOVF	r0x1018,W
	MOVWF	STK01
	MOVF	r0x1017,W
	MOVWF	STK00
	MOVF	r0x1016,W
	PAGESEL	___fsadd
	CALL	___fsadd
	PAGESEL	$
	BANKSEL	r0x101E
	MOVWF	r0x101E
	MOVF	STK00,W
	MOVWF	r0x101F
	MOVF	STK01,W
	MOVWF	r0x1020
	MOVF	STK02,W
	MOVWF	r0x1021
	MOVWF	STK06
	MOVF	r0x1020,W
	MOVWF	STK05
	MOVF	r0x101F,W
	MOVWF	STK04
	MOVF	r0x101E,W
	MOVWF	STK03
	MOVF	r0x101A,W
	MOVWF	STK02
	MOVF	r0x101D,W
	MOVWF	STK01
	MOVF	r0x101C,W
	MOVWF	STK00
	MOVF	r0x101B,W
	PAGESEL	___fsdiv
	CALL	___fsdiv
	PAGESEL	$
	BANKSEL	r0x1016
	MOVWF	r0x1016
	MOVF	STK00,W
	MOVWF	r0x1017
	MOVF	STK01,W
	MOVWF	r0x1018
	MOVF	STK02,W
	MOVWF	r0x1019
;[ICODE] atanf.c:61: 	iTemp1 [k4 lr4:84 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ _atanf_n_1_1}[r0x104C r0x104D ] = iTemp1 [k4 lr4:84 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ _atanf_n_1_1}[r0x104C r0x104D ] + 0x1 {literal-unsigned-char}
;	.line	61; "atanf.c"	n++;
	INCF	r0x1014,F
	BTFSC	STATUS,2
	INCF	r0x1015,F
;[ICODE] atanf.c:61:  _iffalse_1($4) :
;[ICODE] atanf.c:63: 	send iTemp2 [k6 lr6:73 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atanf_f_1_1}[r0x104E r0x104F r0x1050 r0x1051 ]{argreg = 1}
;[ICODE] atanf.c:63: 	iTemp14 [k20 lr42:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x1052 r0x1053 r0x1054 r0x1055 ] = call _fabsf [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float) }
_00108_DS_
;	.line	63; "atanf.c"	if(fabsf(f)<EPS) r=f;
	BANKSEL	r0x1019
	MOVF	r0x1019,W
	MOVWF	STK02
	MOVF	r0x1018,W
	MOVWF	STK01
	MOVF	r0x1017,W
	MOVWF	STK00
	MOVF	r0x1016,W
	PAGESEL	_fabsf
	CALL	_fabsf
	PAGESEL	$
	BANKSEL	r0x101B
	MOVWF	r0x101B
	MOVF	STK00,W
	MOVWF	r0x101C
	MOVF	STK01,W
	MOVWF	r0x101D
	MOVF	STK02,W
	MOVWF	r0x101A
;[ICODE] atanf.c:63: 	send iTemp14 [k20 lr42:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x1052 r0x1053 r0x1054 r0x1055 ]{argreg = 1}
;[ICODE] atanf.c:63: 	send 0.000244141 {literal-float}{argreg = 1}
;[ICODE] atanf.c:63: 	iTemp15 [k21 lr45:46 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x1052 ] = call ___fslt [k50 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
	MOVLW	0x00
	MOVWF	STK06
	MOVLW	0x00
	MOVWF	STK05
	MOVLW	0x80
	MOVWF	STK04
	MOVLW	0x39
	MOVWF	STK03
	MOVF	r0x101A,W
	MOVWF	STK02
	MOVF	r0x101D,W
	MOVWF	STK01
	MOVF	r0x101C,W
	MOVWF	STK00
	MOVF	r0x101B,W
	PAGESEL	___fslt
	CALL	___fslt
	PAGESEL	$
	BANKSEL	r0x101A
	MOVWF	r0x101A
;[ICODE] atanf.c:63: 	if iTemp15 [k21 lr45:46 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x1052 ] == 0 goto _iffalse_2($6)
	MOVF	r0x101A,W
	BTFSC	STATUS,2
	GOTO	_00110_DS_
;[ICODE] atanf.c:63: 	iTemp16 [k22 lr47:99 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atanf_r_1_1}[r0x1052 r0x1053 r0x1054 r0x1055 ] := iTemp2 [k6 lr6:73 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atanf_f_1_1}[r0x104E r0x104F r0x1050 r0x1051 ]
	MOVF	r0x1019,W
	MOVWF	r0x101A
	MOVF	r0x1018,W
	MOVWF	r0x101D
	MOVF	r0x1017,W
	MOVWF	r0x101C
	MOVF	r0x1016,W
	MOVWF	r0x101B
;[ICODE] atanf.c:63: 	 goto _ifend_2($7)
	GOTO	_00111_DS_
;[ICODE] atanf.c:63:  _iffalse_2($6) :
;[ICODE] atanf.c:66: 	send iTemp2 [k6 lr6:73 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atanf_f_1_1}[r0x104E r0x104F r0x1050 r0x1051 ]{argreg = 1}
;[ICODE] atanf.c:66: 	send iTemp2 [k6 lr6:73 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atanf_f_1_1}[r0x104E r0x104F r0x1050 r0x1051 ]{argreg = 1}
;[ICODE] atanf.c:66: 	iTemp17 [k24 lr52:67 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atanf_g_1_1}[r0x1056 r0x1057 r0x1058 r0x1059 ] = call ___fsmul [k47 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
_00110_DS_
;	.line	66; "atanf.c"	g=f*f;
	BANKSEL	r0x1019
	MOVF	r0x1019,W
	MOVWF	STK06
	MOVF	r0x1018,W
	MOVWF	STK05
	MOVF	r0x1017,W
	MOVWF	STK04
	MOVF	r0x1016,W
	MOVWF	STK03
	MOVF	r0x1019,W
	MOVWF	STK02
	MOVF	r0x1018,W
	MOVWF	STK01
	MOVF	r0x1017,W
	MOVWF	STK00
	MOVF	r0x1016,W
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x101E
	MOVWF	r0x101E
	MOVF	STK00,W
	MOVWF	r0x101F
	MOVF	STK01,W
	MOVWF	r0x1020
	MOVF	STK02,W
;	.line	67; "atanf.c"	r=f+P(g,f)/Q(g);
	MOVWF	r0x1021
	MOVWF	STK06
	MOVF	r0x1020,W
	MOVWF	STK05
	MOVF	r0x101F,W
	MOVWF	STK04
	MOVF	r0x101E,W
	MOVWF	STK03
	MOVLW	0x91
	MOVWF	STK02
	MOVLW	0x86
	MOVWF	STK01
	MOVLW	0x50
	MOVWF	STK00
	MOVLW	0xbd
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x1022
	MOVWF	r0x1022
	MOVF	STK00,W
	MOVWF	r0x1023
	MOVF	STK01,W
	MOVWF	r0x1024
	MOVF	STK02,W
	MOVWF	r0x1025
;[ICODE] atanf.c:67: 	send iTemp19 [k27 lr56:58 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x105A r0x105B r0x105C r0x105D ]{argreg = 1}
;[ICODE] atanf.c:67: 	send -0.470833 {literal-float}{argreg = 1}
;[ICODE] atanf.c:67: 	iTemp20 [k28 lr59:61 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x105A r0x105B r0x105C r0x105D ] = call ___fsadd [k49 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVLW	0xf6
	MOVWF	STK06
	MOVLW	0x10
	MOVWF	STK05
	MOVLW	0xf1
	MOVWF	STK04
	MOVLW	0xbe
	MOVWF	STK03
	MOVF	r0x1025,W
	MOVWF	STK02
	MOVF	r0x1024,W
	MOVWF	STK01
	MOVF	r0x1023,W
	MOVWF	STK00
	MOVF	r0x1022,W
	PAGESEL	___fsadd
	CALL	___fsadd
	PAGESEL	$
	BANKSEL	r0x1022
	MOVWF	r0x1022
	MOVF	STK00,W
	MOVWF	r0x1023
	MOVF	STK01,W
	MOVWF	r0x1024
	MOVF	STK02,W
	MOVWF	r0x1025
;[ICODE] atanf.c:67: 	send iTemp20 [k28 lr59:61 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x105A r0x105B r0x105C r0x105D ]{argreg = 1}
;[ICODE] atanf.c:67: 	send iTemp17 [k24 lr52:67 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atanf_g_1_1}[r0x1056 r0x1057 r0x1058 r0x1059 ]{argreg = 1}
;[ICODE] atanf.c:67: 	iTemp21 [k29 lr62:64 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x105A r0x105B r0x105C r0x105D ] = call ___fsmul [k47 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x1021,W
	MOVWF	STK06
	MOVF	r0x1020,W
	MOVWF	STK05
	MOVF	r0x101F,W
	MOVWF	STK04
	MOVF	r0x101E,W
	MOVWF	STK03
	MOVF	r0x1025,W
	MOVWF	STK02
	MOVF	r0x1024,W
	MOVWF	STK01
	MOVF	r0x1023,W
	MOVWF	STK00
	MOVF	r0x1022,W
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x1022
	MOVWF	r0x1022
	MOVF	STK00,W
	MOVWF	r0x1023
	MOVF	STK01,W
	MOVWF	r0x1024
	MOVF	STK02,W
	MOVWF	r0x1025
;[ICODE] atanf.c:67: 	send iTemp21 [k29 lr62:64 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x105A r0x105B r0x105C r0x105D ]{argreg = 1}
;[ICODE] atanf.c:67: 	send iTemp2 [k6 lr6:73 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atanf_f_1_1}[r0x104E r0x104F r0x1050 r0x1051 ]{argreg = 1}
;[ICODE] atanf.c:67: 	iTemp22 [k30 lr65:70 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x105A r0x105B r0x105C r0x105D ] = call ___fsmul [k47 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x1019,W
	MOVWF	STK06
	MOVF	r0x1018,W
	MOVWF	STK05
	MOVF	r0x1017,W
	MOVWF	STK04
	MOVF	r0x1016,W
	MOVWF	STK03
	MOVF	r0x1025,W
	MOVWF	STK02
	MOVF	r0x1024,W
	MOVWF	STK01
	MOVF	r0x1023,W
	MOVWF	STK00
	MOVF	r0x1022,W
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x1022
	MOVWF	r0x1022
	MOVF	STK00,W
	MOVWF	r0x1023
	MOVF	STK01,W
	MOVWF	r0x1024
	MOVF	STK02,W
	MOVWF	r0x1025
;[ICODE] atanf.c:67: 	send iTemp17 [k24 lr52:67 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atanf_g_1_1}[r0x1056 r0x1057 r0x1058 r0x1059 ]{argreg = 1}
;[ICODE] atanf.c:67: 	send 1.4125 {literal-float}{argreg = 1}
;[ICODE] atanf.c:67: 	iTemp24 [k32 lr68:70 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x1056 r0x1057 r0x1058 r0x1059 ] = call ___fsadd [k49 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVLW	0xd3
	MOVWF	STK06
	MOVLW	0xcc
	MOVWF	STK05
	MOVLW	0xb4
	MOVWF	STK04
	MOVLW	0x3f
	MOVWF	STK03
	MOVF	r0x1021,W
	MOVWF	STK02
	MOVF	r0x1020,W
	MOVWF	STK01
	MOVF	r0x101F,W
	MOVWF	STK00
	MOVF	r0x101E,W
	PAGESEL	___fsadd
	CALL	___fsadd
	PAGESEL	$
	BANKSEL	r0x101E
	MOVWF	r0x101E
	MOVF	STK00,W
	MOVWF	r0x101F
	MOVF	STK01,W
	MOVWF	r0x1020
	MOVF	STK02,W
	MOVWF	r0x1021
	MOVWF	STK06
	MOVF	r0x1020,W
	MOVWF	STK05
	MOVF	r0x101F,W
	MOVWF	STK04
	MOVF	r0x101E,W
	MOVWF	STK03
	MOVF	r0x1025,W
	MOVWF	STK02
	MOVF	r0x1024,W
	MOVWF	STK01
	MOVF	r0x1023,W
	MOVWF	STK00
	MOVF	r0x1022,W
	PAGESEL	___fsdiv
	CALL	___fsdiv
	PAGESEL	$
	BANKSEL	r0x101E
	MOVWF	r0x101E
	MOVF	STK00,W
	MOVWF	r0x101F
	MOVF	STK01,W
	MOVWF	r0x1020
	MOVF	STK02,W
	MOVWF	r0x1021
	MOVWF	STK06
	MOVF	r0x1020,W
	MOVWF	STK05
	MOVF	r0x101F,W
	MOVWF	STK04
	MOVF	r0x101E,W
	MOVWF	STK03
	MOVF	r0x1019,W
	MOVWF	STK02
	MOVF	r0x1018,W
	MOVWF	STK01
	MOVF	r0x1017,W
	MOVWF	STK00
	MOVF	r0x1016,W
	PAGESEL	___fsadd
	CALL	___fsadd
	PAGESEL	$
	BANKSEL	r0x101B
	MOVWF	r0x101B
	MOVF	STK00,W
	MOVWF	r0x101C
	MOVF	STK01,W
	MOVWF	r0x101D
	MOVF	STK02,W
	MOVWF	r0x101A
;[ICODE] atanf.c:67:  _ifend_2($7) :
;[ICODE] atanf.c:69: 	iTemp27 [k35 lr77:78 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp1 [k4 lr4:84 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ _atanf_n_1_1}[r0x104C r0x104D ] > 0x1 {literal-int}
;swapping arguments (AOP_TYPEs 1/2)
;signed compare: left >= lit(0x2=2), size=2, mask=ffff
_00111_DS_
;	.line	69; "atanf.c"	if(n>1) r=-r;
	BANKSEL	r0x1015
	MOVF	r0x1015,W
	ADDLW	0x80
	ADDLW	0x80
	BTFSS	STATUS,2
	GOTO	_00123_DS_
	MOVLW	0x02
	SUBWF	r0x1014,W
_00123_DS_
	BTFSS	STATUS,0
	GOTO	_00113_DS_
;genSkipc:3225: created from rifx:0x7ffc70915290
;[ICODE] atanf.c:69: 	if iTemp27 [k35 lr77:78 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_3($9)
;[ICODE] atanf.c:69: 	iTemp16 [k22 lr47:99 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atanf_r_1_1}[r0x1052 r0x1053 r0x1054 r0x1055 ] = - iTemp16 [k22 lr47:99 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atanf_r_1_1}[r0x1052 r0x1053 r0x1054 r0x1055 ]
	BANKSEL	r0x101B
	MOVWF	r0x101B
;[ICODE] atanf.c:69:  _iffalse_3($9) :
;[ICODE] atanf.c:70: 	iTemp29 [k38 lr82:86 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{float near* }[remat] = &[_atanf_a_1_1 [k37 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float [4] }]
;[ICODE] atanf.c:70: 	send 0x4 {literal-int}{argreg = 1}
;[ICODE] atanf.c:70: 	send iTemp1 [k4 lr4:84 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ _atanf_n_1_1}[r0x104C r0x104D ]{argreg = 1}
;[ICODE] atanf.c:70: 	iTemp30 [k39 lr85:86 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x104C r0x104D ] = call __mulint [k51 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( int, int) }
_00113_DS_
;	.line	70; "atanf.c"	r+=a[n];
	BANKSEL	r0x1014
	MOVF	r0x1014,W
	MOVWF	STK02
	MOVF	r0x1015,W
	MOVWF	STK01
	MOVLW	0x04
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	__mulint
	CALL	__mulint
	PAGESEL	$
	BANKSEL	r0x1015
	MOVWF	r0x1015
	MOVF	STK00,W
	MOVWF	r0x1014
	ADDLW	(_atanf_a_1_1 + 0)
	MOVWF	r0x1014
	MOVF	r0x1015,W
	BTFSC	STATUS,0
	INCFSZ	r0x1015,W
	ADDLW	high (_atanf_a_1_1 + 0)
	MOVWF	r0x1015
;[ICODE] atanf.c:70: 	iTemp32 [k41 lr87:89 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x104E r0x104F r0x1050 r0x1051 ] = @[iTemp31 [k40 lr86:87 so:0]{ ia1 a2p0 re0 rm0 nos0 ru1 dp0}{float near* }[r0x104C r0x104D ]]
	MOVF	r0x1014,W
	MOVWF	FSR
	BCF	STATUS,7
	BTFSC	r0x1015,0
	BSF	STATUS,7
	MOVF	INDF,W
	MOVWF	r0x1019
	INCF	FSR,F
	MOVF	INDF,W
	MOVWF	r0x1018
	INCF	FSR,F
	MOVF	INDF,W
	MOVWF	r0x1017
	INCF	FSR,F
	MOVF	INDF,W
	MOVWF	r0x1016
;[ICODE] atanf.c:70: 	send iTemp16 [k22 lr47:99 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atanf_r_1_1}[r0x1052 r0x1053 r0x1054 r0x1055 ]{argreg = 1}
;[ICODE] atanf.c:70: 	send iTemp32 [k41 lr87:89 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x104E r0x104F r0x1050 r0x1051 ]{argreg = 1}
;[ICODE] atanf.c:70: 	iTemp16 [k22 lr47:99 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atanf_r_1_1}[r0x1052 r0x1053 r0x1054 r0x1055 ] = call ___fsadd [k49 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x1019,W
	MOVWF	STK06
	MOVF	r0x1018,W
	MOVWF	STK05
	MOVF	r0x1017,W
	MOVWF	STK04
	MOVF	r0x1016,W
	MOVWF	STK03
	MOVF	r0x101A,W
	MOVWF	STK02
	MOVF	r0x101D,W
	MOVWF	STK01
	MOVF	r0x101C,W
	MOVWF	STK00
	MOVF	r0x101B,W
	PAGESEL	___fsadd
	CALL	___fsadd
	PAGESEL	$
	BANKSEL	r0x101B
	MOVWF	r0x101B
	MOVF	STK00,W
	MOVWF	r0x101C
	MOVF	STK01,W
	MOVWF	r0x101D
	MOVF	STK02,W
	MOVWF	r0x101A
;[ICODE] atanf.c:71: 	send iTemp0 [k2 lr3:93 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _atanf_x_1_1}[r0x1048 r0x1049 r0x104A r0x104B ]{argreg = 1}
;[ICODE] atanf.c:71: 	send 0 {literal-float}{argreg = 1}
;[ICODE] atanf.c:71: 	iTemp34 [k43 lr94:95 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x1048 ] = call ___fslt [k50 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
;	.line	71; "atanf.c"	if(x<0.0) r=-r;
	MOVLW	0x00
	MOVWF	STK06
	MOVLW	0x00
	MOVWF	STK05
	MOVLW	0x00
	MOVWF	STK04
	MOVLW	0x00
	MOVWF	STK03
	MOVF	r0x1013,W
	MOVWF	STK02
	MOVF	r0x1012,W
	MOVWF	STK01
	MOVF	r0x1011,W
	MOVWF	STK00
	MOVF	r0x1010,W
	PAGESEL	___fslt
	CALL	___fslt
	PAGESEL	$
	BANKSEL	r0x1013
	MOVWF	r0x1013
;[ICODE] atanf.c:71: 	if iTemp34 [k43 lr94:95 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x1048 ] == 0 goto _iffalse_4($11)
;	.line	72; "atanf.c"	return r;
	MOVF	r0x1013,W
	BTFSS	STATUS,2
	MOVWF	r0x101B
	MOVF	r0x101A,W
	MOVWF	STK02
	MOVF	r0x101D,W
	MOVWF	STK01
	MOVF	r0x101C,W
	MOVWF	STK00
	MOVF	r0x101B,W
;[ICODE] atanf.c:72:  _return($12) :
;[ICODE] atanf.c:72: 	eproc _atanf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float) }
	RETURN	
; exit point of _atanf


;	code size estimation:
;	  527+   73 =   600 instructions ( 1346 byte)

	end
