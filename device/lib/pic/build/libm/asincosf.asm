;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:32 2018
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"asincosf.c"
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
	extern	___fsadd
	extern	___fsmul
	extern	___fsdiv
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
	global	_asincosf

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_asincosf_0	udata
r0x1015	res	1
r0x1014	res	1
r0x1013	res	1
r0x1012	res	1
r0x1017	res	1
r0x1016	res	1
r0x101B	res	1
r0x101A	res	1
r0x1019	res	1
r0x1018	res	1
r0x101C	res	1
r0x101D	res	1
r0x101E	res	1
r0x101F	res	1
r0x1020	res	1
r0x1021	res	1
r0x1022	res	1
r0x1025	res	1
r0x1024	res	1
r0x1023	res	1
r0x1029	res	1
r0x1028	res	1
r0x1027	res	1
r0x1026	res	1
r0x102D	res	1
r0x102C	res	1
r0x102B	res	1
r0x102A	res	1
_asincosf_b_1_1	res	8
_asincosf_a_1_1	res	8
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
code_asincosf	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  _asincosf	;Function start
; 2 exit points
;has an exit
;functions called:
;   _fabsf
;   ___fslt
;   ___fsgt
;   ___fsgt
;   ___fssub
;   _ldexpf
;   _sqrtf
;   ___fsadd
;   ___fsmul
;   ___fsmul
;   ___fsadd
;   ___fsmul
;   ___fsadd
;   ___fsmul
;   ___fsadd
;   ___fsdiv
;   ___fsmul
;   ___fsadd
;   ___fslt
;   __mulint
;   ___fsadd
;   ___fsadd
;   __mulint
;   ___fssub
;   ___fsadd
;   __mulint
;   ___fsadd
;   ___fsadd
;   ___fslt
;   _fabsf
;   ___fslt
;   ___fsgt
;   ___fsgt
;   ___fssub
;   _ldexpf
;   _sqrtf
;   ___fsadd
;   ___fsmul
;   ___fsmul
;   ___fsadd
;   ___fsmul
;   ___fsadd
;   ___fsmul
;   ___fsadd
;   ___fsdiv
;   ___fsmul
;   ___fsadd
;   ___fslt
;   __mulint
;   ___fsadd
;   ___fsadd
;   __mulint
;   ___fssub
;   ___fsadd
;   __mulint
;   ___fsadd
;   ___fsadd
;   ___fslt
;35 compiler assigned registers:
;   r0x1012
;   STK00
;   r0x1013
;   STK01
;   r0x1014
;   STK02
;   r0x1015
;   STK03
;   r0x1016
;   STK04
;   r0x1017
;   r0x1018
;   r0x1019
;   r0x101A
;   r0x101B
;   r0x101C
;   r0x101D
;   STK06
;   STK05
;   r0x101E
;   r0x101F
;   r0x1020
;   r0x1021
;   r0x1022
;   r0x1023
;   r0x1024
;   r0x1025
;   r0x1026
;   r0x1027
;   r0x1028
;   r0x1029
;   r0x102A
;   r0x102B
;   r0x102C
;   r0x102D
;; Starting pCode block
;[ICODE] asincosf.c:41:  _entry($18) :
;[ICODE] asincosf.c:41: 	proc _asincosf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float, const-int) }
_asincosf	;Function start
; 2 exit points
;[ICODE] asincosf.c:41: iTemp0 [k2 lr3:130 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _asincosf_x_1_1}[r0x1049 r0x104A r0x104B r0x104C ] = recv _asincosf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float, const-int) }
;	.line	41; "asincosf.c"	float asincosf(const float x, const int isacos)
	BANKSEL	r0x1012
	MOVWF	r0x1012
	MOVF	STK00,W
	MOVWF	r0x1013
	MOVF	STK01,W
	MOVWF	r0x1014
	MOVF	STK02,W
	MOVWF	r0x1015
;[ICODE] asincosf.c:41: iTemp1 [k4 lr4:81 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-int}{ sir@ _asincosf_isacos_1_1}[r0x104D r0x104E ] = recv _asincosf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float, const-int) }
	MOVF	STK03,W
	MOVWF	r0x1016
	MOVF	STK04,W
	MOVWF	r0x1017
;[ICODE] asincosf.c:49: 	send iTemp0 [k2 lr3:130 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _asincosf_x_1_1}[r0x1049 r0x104A r0x104B r0x104C ]{argreg = 1}
;[ICODE] asincosf.c:49: 	iTemp2 [k6 lr6:77 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _asincosf_y_1_1}[r0x104F r0x1050 r0x1051 r0x1052 ] = call _fabsf [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float) }
;	.line	49; "asincosf.c"	y=fabsf(x);
	MOVF	r0x1015,W
	MOVWF	STK02
	MOVF	r0x1014,W
	MOVWF	STK01
	MOVF	r0x1013,W
	MOVWF	STK00
	MOVF	r0x1012,W
	PAGESEL	_fabsf
	CALL	_fabsf
	PAGESEL	$
	BANKSEL	r0x1018
	MOVWF	r0x1018
	MOVF	STK00,W
	MOVWF	r0x1019
	MOVF	STK01,W
	MOVWF	r0x101A
	MOVF	STK02,W
	MOVWF	r0x101B
;[ICODE] asincosf.c:50: 	iTemp4 [k10 lr8:118 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ _asincosf_i_1_1}[r0x1053 r0x1054 ] := iTemp1 [k4 lr4:81 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-int}{ sir@ _asincosf_isacos_1_1}[r0x104D r0x104E ]
;	.line	50; "asincosf.c"	i=isacos;
	MOVF	r0x1017,W
	MOVWF	r0x101C
	MOVF	r0x1016,W
	MOVWF	r0x101D
;[ICODE] asincosf.c:51: 	send iTemp2 [k6 lr6:77 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _asincosf_y_1_1}[r0x104F r0x1050 r0x1051 r0x1052 ]{argreg = 1}
;[ICODE] asincosf.c:51: 	send 0.000244141 {literal-float}{argreg = 1}
;[ICODE] asincosf.c:51: 	iTemp5 [k12 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x1055 ] = call ___fslt [k75 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
;	.line	51; "asincosf.c"	if (y < EPS) r=y;
	MOVLW	0x00
	MOVWF	STK06
	MOVLW	0x00
	MOVWF	STK05
	MOVLW	0x80
	MOVWF	STK04
	MOVLW	0x39
	MOVWF	STK03
	MOVF	r0x101B,W
	MOVWF	STK02
	MOVF	r0x101A,W
	MOVWF	STK01
	MOVF	r0x1019,W
	MOVWF	STK00
	MOVF	r0x1018,W
	PAGESEL	___fslt
	CALL	___fslt
	PAGESEL	$
	BANKSEL	r0x101E
	MOVWF	r0x101E
;[ICODE] asincosf.c:51: 	if iTemp5 [k12 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x1055 ] == 0 goto _iffalse_2($7)
	MOVF	r0x101E,W
	BTFSC	STATUS,2
	GOTO	_00111_DS_
;[ICODE] asincosf.c:51: 	iTemp6 [k13 lr13:136 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _asincosf_r_1_1}[r0x1055 r0x1056 r0x1057 r0x1058 ] := iTemp2 [k6 lr6:77 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _asincosf_y_1_1}[r0x104F r0x1050 r0x1051 r0x1052 ]
	MOVF	r0x101B,W
	MOVWF	r0x101E
	MOVF	r0x101A,W
	MOVWF	r0x101F
	MOVF	r0x1019,W
	MOVWF	r0x1020
	MOVF	r0x1018,W
	MOVWF	r0x1021
;[ICODE] asincosf.c:51: 	 goto _ifend_2($8)
	GOTO	_00112_DS_
;[ICODE] asincosf.c:51:  _iffalse_2($7) :
;[ICODE] asincosf.c:54: 	send iTemp2 [k6 lr6:77 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _asincosf_y_1_1}[r0x104F r0x1050 r0x1051 r0x1052 ]{argreg = 1}
;[ICODE] asincosf.c:54: 	send 0.5 {literal-float}{argreg = 1}
;[ICODE] asincosf.c:54: 	iTemp7 [k15 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x1059 ] = call ___fsgt [k76 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
_00111_DS_
;	.line	54; "asincosf.c"	if (y > 0.5)
	MOVLW	0x00
	MOVWF	STK06
	MOVLW	0x00
	MOVWF	STK05
	MOVLW	0x00
	MOVWF	STK04
	MOVLW	0x3f
	MOVWF	STK03
	BANKSEL	r0x101B
	MOVF	r0x101B,W
	MOVWF	STK02
	MOVF	r0x101A,W
	MOVWF	STK01
	MOVF	r0x1019,W
	MOVWF	STK00
	MOVF	r0x1018,W
	PAGESEL	___fsgt
	CALL	___fsgt
	PAGESEL	$
	BANKSEL	r0x1022
	MOVWF	r0x1022
;[ICODE] asincosf.c:54: 	if iTemp7 [k15 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x1059 ] == 0 goto _iffalse_1($4)
	MOVF	r0x1022,W
	BTFSC	STATUS,2
	GOTO	_00108_DS_
;[ICODE] asincosf.c:56: 	iTemp4 [k10 lr8:118 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ _asincosf_i_1_1}[r0x1053 r0x1054 ] = 0x1 {literal-int} - iTemp1 [k4 lr4:81 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-int}{ sir@ _asincosf_isacos_1_1}[r0x104D r0x104E ]
;	.line	56; "asincosf.c"	i=1-i;
	MOVF	r0x1017,W
	SUBLW	0x01
	MOVWF	r0x101C
	MOVF	r0x1016,W
	BTFSS	STATUS,0
	INCF	r0x1016,W
	SUBLW	0x00
	MOVWF	r0x101D
;[ICODE] asincosf.c:57: 	send iTemp2 [k6 lr6:77 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _asincosf_y_1_1}[r0x104F r0x1050 r0x1051 r0x1052 ]{argreg = 1}
;[ICODE] asincosf.c:57: 	send 1 {literal-float}{argreg = 1}
;[ICODE] asincosf.c:57: 	iTemp9 [k17 lr24:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x1059 ] = call ___fsgt [k76 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
;	.line	57; "asincosf.c"	if (y > 1.0)
	MOVLW	0x00
	MOVWF	STK06
	MOVLW	0x00
	MOVWF	STK05
	MOVLW	0x80
	MOVWF	STK04
	MOVLW	0x3f
	MOVWF	STK03
	MOVF	r0x101B,W
	MOVWF	STK02
	MOVF	r0x101A,W
	MOVWF	STK01
	MOVF	r0x1019,W
	MOVWF	STK00
	MOVF	r0x1018,W
	PAGESEL	___fsgt
	CALL	___fsgt
	PAGESEL	$
	BANKSEL	r0x1022
	MOVWF	r0x1022
;[ICODE] asincosf.c:57: 	if iTemp9 [k17 lr24:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x1059 ] == 0 goto _iffalse_0($2)
	MOVF	r0x1022,W
	BTFSC	STATUS,2
	GOTO	_00106_DS_
;[ICODE] asincosf.c:59: 	_errno [k18 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{int} := 0x21 {literal-int}
;	.line	59; "asincosf.c"	errno=EDOM;
	MOVLW	0x21
	BANKSEL	_errno
	MOVWF	_errno
	CLRF	(_errno + 1)
;[ICODE] asincosf.c:60: 	ret 0 {literal-float}
;	.line	60; "asincosf.c"	return 0.0;
	MOVLW	0x00
	MOVWF	STK02
	MOVLW	0x00
	MOVWF	STK01
	MOVLW	0x00
	MOVWF	STK00
	MOVLW	0x00
	GOTO	_00121_DS_
;[ICODE] asincosf.c:60:  _iffalse_0($2) :
;[ICODE] asincosf.c:62: 	send 1 {literal-float}{argreg = 1}
;[ICODE] asincosf.c:62: 	send iTemp2 [k6 lr6:77 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _asincosf_y_1_1}[r0x104F r0x1050 r0x1051 r0x1052 ]{argreg = 1}
;[ICODE] asincosf.c:62: 	iTemp11 [k20 lr31:65 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _asincosf_g_1_1}[r0x1059 r0x105A r0x105B r0x105C ] = call ___fssub [k77 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
_00106_DS_
;	.line	62; "asincosf.c"	g=(0.5-y)+0.5;
	BANKSEL	r0x101B
	MOVF	r0x101B,W
	MOVWF	STK06
	MOVF	r0x101A,W
	MOVWF	STK05
	MOVF	r0x1019,W
	MOVWF	STK04
	MOVF	r0x1018,W
	MOVWF	STK03
	MOVLW	0x00
	MOVWF	STK02
	MOVLW	0x00
	MOVWF	STK01
	MOVLW	0x80
	MOVWF	STK00
	MOVLW	0x3f
	PAGESEL	___fssub
	CALL	___fssub
	PAGESEL	$
	BANKSEL	r0x1023
	MOVWF	r0x1023
	MOVF	STK00,W
	MOVWF	r0x1024
	MOVF	STK01,W
	MOVWF	r0x1025
	MOVF	STK02,W
	MOVWF	r0x1022
;[ICODE] asincosf.c:63: 	send iTemp11 [k20 lr31:65 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _asincosf_g_1_1}[r0x1059 r0x105A r0x105B r0x105C ]{argreg = 1}
;[ICODE] asincosf.c:63: 	send 0xffffffff {literal-const-int}{argreg = 1}
;[ICODE] asincosf.c:63: 	iTemp11 [k20 lr31:65 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _asincosf_g_1_1}[r0x1059 r0x105A r0x105B r0x105C ] = call _ldexpf [k23 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float, const-int) }
;	.line	63; "asincosf.c"	g=ldexpf(g,-1);
	MOVLW	0xff
	MOVWF	STK04
	MOVLW	0xff
	MOVWF	STK03
	MOVF	r0x1022,W
	MOVWF	STK02
	MOVF	r0x1025,W
	MOVWF	STK01
	MOVF	r0x1024,W
	MOVWF	STK00
	MOVF	r0x1023,W
	PAGESEL	_ldexpf
	CALL	_ldexpf
	PAGESEL	$
	BANKSEL	r0x1023
	MOVWF	r0x1023
	MOVF	STK00,W
	MOVWF	r0x1024
	MOVF	STK01,W
	MOVWF	r0x1025
	MOVF	STK02,W
;	.line	64; "asincosf.c"	y=sqrtf(g);
	MOVWF	r0x1022
	MOVWF	STK02
	MOVF	r0x1025,W
	MOVWF	STK01
	MOVF	r0x1024,W
	MOVWF	STK00
	MOVF	r0x1023,W
	PAGESEL	_sqrtf
	CALL	_sqrtf
	PAGESEL	$
	BANKSEL	r0x1018
	MOVWF	r0x1018
	MOVF	STK00,W
	MOVWF	r0x1019
	MOVF	STK01,W
	MOVWF	r0x101A
	MOVF	STK02,W
;	.line	65; "asincosf.c"	y=-(y+y);
	MOVWF	r0x101B
	MOVWF	STK06
	MOVF	r0x101A,W
	MOVWF	STK05
	MOVF	r0x1019,W
	MOVWF	STK04
	MOVF	r0x1018,W
	MOVWF	STK03
	MOVF	r0x101B,W
	MOVWF	STK02
	MOVF	r0x101A,W
	MOVWF	STK01
	MOVF	r0x1019,W
	MOVWF	STK00
	MOVF	r0x1018,W
	PAGESEL	___fsadd
	CALL	___fsadd
	PAGESEL	$
	BANKSEL	r0x1026
	MOVWF	r0x1026
	MOVF	STK00,W
	MOVWF	r0x1027
	MOVF	STK01,W
	MOVWF	r0x1028
	MOVF	STK02,W
	MOVWF	r0x1029
;[ICODE] asincosf.c:65: 	iTemp2 [k6 lr6:77 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _asincosf_y_1_1}[r0x104F r0x1050 r0x1051 r0x1052 ] = - iTemp15 [k27 lr42:43 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x105D r0x105E r0x105F r0x1060 ]
	MOVWF	r0x1018
	MOVWF	r0x101B
	MOVWF	r0x101A
	MOVWF	r0x1019
;[ICODE] asincosf.c:65: 	 goto _ifend_1($5)
	GOTO	_00109_DS_
;[ICODE] asincosf.c:65:  _iffalse_1($4) :
;[ICODE] asincosf.c:69: 	send iTemp2 [k6 lr6:77 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _asincosf_y_1_1}[r0x104F r0x1050 r0x1051 r0x1052 ]{argreg = 1}
;[ICODE] asincosf.c:69: 	send iTemp2 [k6 lr6:77 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _asincosf_y_1_1}[r0x104F r0x1050 r0x1051 r0x1052 ]{argreg = 1}
;[ICODE] asincosf.c:69: 	iTemp11 [k20 lr31:65 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _asincosf_g_1_1}[r0x1059 r0x105A r0x105B r0x105C ] = call ___fsmul [k79 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
_00108_DS_
;	.line	69; "asincosf.c"	g=y*y;
	BANKSEL	r0x101B
	MOVF	r0x101B,W
	MOVWF	STK06
	MOVF	r0x101A,W
	MOVWF	STK05
	MOVF	r0x1019,W
	MOVWF	STK04
	MOVF	r0x1018,W
	MOVWF	STK03
	MOVF	r0x101B,W
	MOVWF	STK02
	MOVF	r0x101A,W
	MOVWF	STK01
	MOVF	r0x1019,W
	MOVWF	STK00
	MOVF	r0x1018,W
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x1023
	MOVWF	r0x1023
	MOVF	STK00,W
	MOVWF	r0x1024
	MOVF	STK01,W
	MOVWF	r0x1025
	MOVF	STK02,W
	MOVWF	r0x1022
;[ICODE] asincosf.c:69:  _ifend_1($5) :
;[ICODE] asincosf.c:71: 	send -0.504401 {literal-float}{argreg = 1}
;[ICODE] asincosf.c:71: 	send iTemp11 [k20 lr31:65 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _asincosf_g_1_1}[r0x1059 r0x105A r0x105B r0x105C ]{argreg = 1}
;[ICODE] asincosf.c:71: 	iTemp18 [k30 lr54:56 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x105D r0x105E r0x105F r0x1060 ] = call ___fsmul [k79 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
_00109_DS_
;	.line	71; "asincosf.c"	r=y+y*((P(g)*g)/Q(g));
	BANKSEL	r0x1022
	MOVF	r0x1022,W
	MOVWF	STK06
	MOVF	r0x1025,W
	MOVWF	STK05
	MOVF	r0x1024,W
	MOVWF	STK04
	MOVF	r0x1023,W
	MOVWF	STK03
	MOVLW	0x65
	MOVWF	STK02
	MOVLW	0x20
	MOVWF	STK01
	MOVLW	0x01
	MOVWF	STK00
	MOVLW	0xbf
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x1026
	MOVWF	r0x1026
	MOVF	STK00,W
	MOVWF	r0x1027
	MOVF	STK01,W
	MOVWF	r0x1028
	MOVF	STK02,W
	MOVWF	r0x1029
;[ICODE] asincosf.c:71: 	send iTemp18 [k30 lr54:56 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x105D r0x105E r0x105F r0x1060 ]{argreg = 1}
;[ICODE] asincosf.c:71: 	send 0.933936 {literal-float}{argreg = 1}
;[ICODE] asincosf.c:71: 	iTemp19 [k31 lr57:59 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x105D r0x105E r0x105F r0x1060 ] = call ___fsadd [k78 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVLW	0x6b
	MOVWF	STK06
	MOVLW	0x16
	MOVWF	STK05
	MOVLW	0x6f
	MOVWF	STK04
	MOVLW	0x3f
	MOVWF	STK03
	MOVF	r0x1029,W
	MOVWF	STK02
	MOVF	r0x1028,W
	MOVWF	STK01
	MOVF	r0x1027,W
	MOVWF	STK00
	MOVF	r0x1026,W
	PAGESEL	___fsadd
	CALL	___fsadd
	PAGESEL	$
	BANKSEL	r0x1026
	MOVWF	r0x1026
	MOVF	STK00,W
	MOVWF	r0x1027
	MOVF	STK01,W
	MOVWF	r0x1028
	MOVF	STK02,W
	MOVWF	r0x1029
;[ICODE] asincosf.c:71: 	send iTemp19 [k31 lr57:59 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x105D r0x105E r0x105F r0x1060 ]{argreg = 1}
;[ICODE] asincosf.c:71: 	send iTemp11 [k20 lr31:65 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _asincosf_g_1_1}[r0x1059 r0x105A r0x105B r0x105C ]{argreg = 1}
;[ICODE] asincosf.c:71: 	iTemp20 [k32 lr60:71 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x105D r0x105E r0x105F r0x1060 ] = call ___fsmul [k79 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x1022,W
	MOVWF	STK06
	MOVF	r0x1025,W
	MOVWF	STK05
	MOVF	r0x1024,W
	MOVWF	STK04
	MOVF	r0x1023,W
	MOVWF	STK03
	MOVF	r0x1029,W
	MOVWF	STK02
	MOVF	r0x1028,W
	MOVWF	STK01
	MOVF	r0x1027,W
	MOVWF	STK00
	MOVF	r0x1026,W
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x1026
	MOVWF	r0x1026
	MOVF	STK00,W
	MOVWF	r0x1027
	MOVF	STK01,W
	MOVWF	r0x1028
	MOVF	STK02,W
	MOVWF	r0x1029
;[ICODE] asincosf.c:71: 	send iTemp11 [k20 lr31:65 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _asincosf_g_1_1}[r0x1059 r0x105A r0x105B r0x105C ]{argreg = 1}
;[ICODE] asincosf.c:71: 	send -5.54847 {literal-float}{argreg = 1}
;[ICODE] asincosf.c:71: 	iTemp22 [k34 lr63:65 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x1061 r0x1062 r0x1063 r0x1064 ] = call ___fsadd [k78 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVLW	0x0b
	MOVWF	STK06
	MOVLW	0x8d
	MOVWF	STK05
	MOVLW	0xb1
	MOVWF	STK04
	MOVLW	0xc0
	MOVWF	STK03
	MOVF	r0x1022,W
	MOVWF	STK02
	MOVF	r0x1025,W
	MOVWF	STK01
	MOVF	r0x1024,W
	MOVWF	STK00
	MOVF	r0x1023,W
	PAGESEL	___fsadd
	CALL	___fsadd
	PAGESEL	$
	BANKSEL	r0x102A
	MOVWF	r0x102A
	MOVF	STK00,W
	MOVWF	r0x102B
	MOVF	STK01,W
	MOVWF	r0x102C
	MOVF	STK02,W
	MOVWF	r0x102D
;[ICODE] asincosf.c:71: 	send iTemp22 [k34 lr63:65 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x1061 r0x1062 r0x1063 r0x1064 ]{argreg = 1}
;[ICODE] asincosf.c:71: 	send iTemp11 [k20 lr31:65 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _asincosf_g_1_1}[r0x1059 r0x105A r0x105B r0x105C ]{argreg = 1}
;[ICODE] asincosf.c:71: 	iTemp23 [k35 lr66:68 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x1059 r0x105A r0x105B r0x105C ] = call ___fsmul [k79 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x1022,W
	MOVWF	STK06
	MOVF	r0x1025,W
	MOVWF	STK05
	MOVF	r0x1024,W
	MOVWF	STK04
	MOVF	r0x1023,W
	MOVWF	STK03
	MOVF	r0x102D,W
	MOVWF	STK02
	MOVF	r0x102C,W
	MOVWF	STK01
	MOVF	r0x102B,W
	MOVWF	STK00
	MOVF	r0x102A,W
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x1023
	MOVWF	r0x1023
	MOVF	STK00,W
	MOVWF	r0x1024
	MOVF	STK01,W
	MOVWF	r0x1025
	MOVF	STK02,W
	MOVWF	r0x1022
;[ICODE] asincosf.c:71: 	send iTemp23 [k35 lr66:68 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x1059 r0x105A r0x105B r0x105C ]{argreg = 1}
;[ICODE] asincosf.c:71: 	send 5.60363 {literal-float}{argreg = 1}
;[ICODE] asincosf.c:71: 	iTemp24 [k36 lr69:71 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x1059 r0x105A r0x105B r0x105C ] = call ___fsadd [k78 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVLW	0xf0
	MOVWF	STK06
	MOVLW	0x50
	MOVWF	STK05
	MOVLW	0xb3
	MOVWF	STK04
	MOVLW	0x40
	MOVWF	STK03
	MOVF	r0x1022,W
	MOVWF	STK02
	MOVF	r0x1025,W
	MOVWF	STK01
	MOVF	r0x1024,W
	MOVWF	STK00
	MOVF	r0x1023,W
	PAGESEL	___fsadd
	CALL	___fsadd
	PAGESEL	$
	BANKSEL	r0x1023
	MOVWF	r0x1023
	MOVF	STK00,W
	MOVWF	r0x1024
	MOVF	STK01,W
	MOVWF	r0x1025
	MOVF	STK02,W
	MOVWF	r0x1022
	MOVWF	STK06
	MOVF	r0x1025,W
	MOVWF	STK05
	MOVF	r0x1024,W
	MOVWF	STK04
	MOVF	r0x1023,W
	MOVWF	STK03
	MOVF	r0x1029,W
	MOVWF	STK02
	MOVF	r0x1028,W
	MOVWF	STK01
	MOVF	r0x1027,W
	MOVWF	STK00
	MOVF	r0x1026,W
	PAGESEL	___fsdiv
	CALL	___fsdiv
	PAGESEL	$
	BANKSEL	r0x1023
	MOVWF	r0x1023
	MOVF	STK00,W
	MOVWF	r0x1024
	MOVF	STK01,W
	MOVWF	r0x1025
	MOVF	STK02,W
	MOVWF	r0x1022
	MOVWF	STK06
	MOVF	r0x1025,W
	MOVWF	STK05
	MOVF	r0x1024,W
	MOVWF	STK04
	MOVF	r0x1023,W
	MOVWF	STK03
	MOVF	r0x101B,W
	MOVWF	STK02
	MOVF	r0x101A,W
	MOVWF	STK01
	MOVF	r0x1019,W
	MOVWF	STK00
	MOVF	r0x1018,W
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x1023
	MOVWF	r0x1023
	MOVF	STK00,W
	MOVWF	r0x1024
	MOVF	STK01,W
	MOVWF	r0x1025
	MOVF	STK02,W
	MOVWF	r0x1022
	MOVWF	STK06
	MOVF	r0x1025,W
	MOVWF	STK05
	MOVF	r0x1024,W
	MOVWF	STK04
	MOVF	r0x1023,W
	MOVWF	STK03
	MOVF	r0x101B,W
	MOVWF	STK02
	MOVF	r0x101A,W
	MOVWF	STK01
	MOVF	r0x1019,W
	MOVWF	STK00
	MOVF	r0x1018,W
	PAGESEL	___fsadd
	CALL	___fsadd
	PAGESEL	$
	BANKSEL	r0x1021
	MOVWF	r0x1021
	MOVF	STK00,W
	MOVWF	r0x1020
	MOVF	STK01,W
	MOVWF	r0x101F
	MOVF	STK02,W
	MOVWF	r0x101E
;[ICODE] asincosf.c:71:  _ifend_2($8) :
;[ICODE] asincosf.c:73: 	if iTemp1 [k4 lr4:81 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-int}{ sir@ _asincosf_isacos_1_1}[r0x104D r0x104E ] == 0 goto _iffalse_5($15)
_00112_DS_
;	.line	73; "asincosf.c"	if (isacos)
	BANKSEL	r0x1017
	MOVF	r0x1017,W
	IORWF	r0x1016,W
	BTFSC	STATUS,2
	GOTO	_00119_DS_
;[ICODE] asincosf.c:75: 	send iTemp0 [k2 lr3:130 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _asincosf_x_1_1}[r0x1049 r0x104A r0x104B r0x104C ]{argreg = 1}
;[ICODE] asincosf.c:75: 	send 0 {literal-float}{argreg = 1}
;[ICODE] asincosf.c:75: 	iTemp28 [k40 lr84:85 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x104D ] = call ___fslt [k75 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
;	.line	75; "asincosf.c"	if (x < 0.0)
	MOVLW	0x00
	MOVWF	STK06
	MOVLW	0x00
	MOVWF	STK05
	MOVLW	0x00
	MOVWF	STK04
	MOVLW	0x00
	MOVWF	STK03
	MOVF	r0x1015,W
	MOVWF	STK02
	MOVF	r0x1014,W
	MOVWF	STK01
	MOVF	r0x1013,W
	MOVWF	STK00
	MOVF	r0x1012,W
	PAGESEL	___fslt
	CALL	___fslt
	PAGESEL	$
	BANKSEL	r0x1017
	MOVWF	r0x1017
;[ICODE] asincosf.c:75: 	if iTemp28 [k40 lr84:85 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x104D ] == 0 goto _iffalse_3($10)
	MOVF	r0x1017,W
	BTFSC	STATUS,2
	GOTO	_00114_DS_
;[ICODE] asincosf.c:76: 	iTemp29 [k42 lr86:90 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{const-float near* }[remat] = &[_asincosf_b_1_1 [k41 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-float [2] }]
;[ICODE] asincosf.c:76: 	send 0x4 {literal-int}{argreg = 1}
;[ICODE] asincosf.c:76: 	send iTemp4 [k10 lr8:118 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ _asincosf_i_1_1}[r0x1053 r0x1054 ]{argreg = 1}
;[ICODE] asincosf.c:76: 	iTemp30 [k43 lr89:90 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x104D r0x104E ] = call __mulint [k81 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( int, int) }
;	.line	76; "asincosf.c"	r=(b[i]+r)+b[i];
	MOVF	r0x101C,W
	MOVWF	STK02
	MOVF	r0x101D,W
	MOVWF	STK01
	MOVLW	0x04
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	__mulint
	CALL	__mulint
	PAGESEL	$
	BANKSEL	r0x1016
	MOVWF	r0x1016
	MOVF	STK00,W
	MOVWF	r0x1017
	ADDLW	(_asincosf_b_1_1 + 0)
	MOVWF	r0x1017
	MOVF	r0x1016,W
	BTFSC	STATUS,0
	INCFSZ	r0x1016,W
	ADDLW	high (_asincosf_b_1_1 + 0)
	MOVWF	r0x1016
;[ICODE] asincosf.c:76: 	iTemp32 [k45 lr91:96 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-float}[r0x104F r0x1050 r0x1051 r0x1052 ] = @[iTemp31 [k44 lr90:91 so:0]{ ia1 a2p0 re0 rm0 nos0 ru1 dp0}{const-float near* }[r0x104D r0x104E ]]
	MOVF	r0x1017,W
	MOVWF	FSR
	BCF	STATUS,7
	BTFSC	r0x1016,0
	BSF	STATUS,7
	MOVF	INDF,W
	MOVWF	r0x101B
	INCF	FSR,F
	MOVF	INDF,W
	MOVWF	r0x101A
	INCF	FSR,F
	MOVF	INDF,W
	MOVWF	r0x1019
	INCF	FSR,F
	MOVF	INDF,W
	MOVWF	r0x1018
;[ICODE] asincosf.c:76: 	send iTemp32 [k45 lr91:96 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-float}[r0x104F r0x1050 r0x1051 r0x1052 ]{argreg = 1}
;[ICODE] asincosf.c:76: 	send iTemp6 [k13 lr13:136 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _asincosf_r_1_1}[r0x1055 r0x1056 r0x1057 r0x1058 ]{argreg = 1}
;[ICODE] asincosf.c:76: 	iTemp33 [k46 lr94:96 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x104D r0x104E r0x1059 r0x105A ] = call ___fsadd [k78 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x101E,W
	MOVWF	STK06
	MOVF	r0x101F,W
	MOVWF	STK05
	MOVF	r0x1020,W
	MOVWF	STK04
	MOVF	r0x1021,W
	MOVWF	STK03
	MOVF	r0x101B,W
	MOVWF	STK02
	MOVF	r0x101A,W
	MOVWF	STK01
	MOVF	r0x1019,W
	MOVWF	STK00
	MOVF	r0x1018,W
	PAGESEL	___fsadd
	CALL	___fsadd
	PAGESEL	$
	BANKSEL	r0x1025
	MOVWF	r0x1025
	MOVF	STK00,W
	MOVWF	r0x1022
	MOVF	STK01,W
	MOVWF	r0x1016
	MOVF	STK02,W
	MOVWF	r0x1017
;[ICODE] asincosf.c:76: 	send iTemp33 [k46 lr94:96 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x104D r0x104E r0x1059 r0x105A ]{argreg = 1}
;[ICODE] asincosf.c:76: 	send iTemp32 [k45 lr91:96 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-float}[r0x104F r0x1050 r0x1051 r0x1052 ]{argreg = 1}
;[ICODE] asincosf.c:76: 	iTemp6 [k13 lr13:136 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _asincosf_r_1_1}[r0x1055 r0x1056 r0x1057 r0x1058 ] = call ___fsadd [k78 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x101B,W
	MOVWF	STK06
	MOVF	r0x101A,W
	MOVWF	STK05
	MOVF	r0x1019,W
	MOVWF	STK04
	MOVF	r0x1018,W
	MOVWF	STK03
	MOVF	r0x1017,W
	MOVWF	STK02
	MOVF	r0x1016,W
	MOVWF	STK01
	MOVF	r0x1022,W
	MOVWF	STK00
	MOVF	r0x1025,W
	PAGESEL	___fsadd
	CALL	___fsadd
	PAGESEL	$
	BANKSEL	r0x1021
	MOVWF	r0x1021
	MOVF	STK00,W
	MOVWF	r0x1020
	MOVF	STK01,W
	MOVWF	r0x101F
	MOVF	STK02,W
	MOVWF	r0x101E
;[ICODE] asincosf.c:76: 	 goto _ifend_5($16)
	GOTO	_00120_DS_
;[ICODE] asincosf.c:76:  _iffalse_3($10) :
;[ICODE] asincosf.c:78: 	iTemp39 [k53 lr101:105 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{const-float near* }[remat] = &[_asincosf_a_1_1 [k52 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-float [2] }]
;[ICODE] asincosf.c:78: 	send 0x4 {literal-int}{argreg = 1}
;[ICODE] asincosf.c:78: 	send iTemp4 [k10 lr8:118 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ _asincosf_i_1_1}[r0x1053 r0x1054 ]{argreg = 1}
;[ICODE] asincosf.c:78: 	iTemp40 [k54 lr104:105 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x104D r0x104E ] = call __mulint [k81 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( int, int) }
_00114_DS_
;	.line	78; "asincosf.c"	r=(a[i]-r)+a[i];
	BANKSEL	r0x101C
	MOVF	r0x101C,W
	MOVWF	STK02
	MOVF	r0x101D,W
	MOVWF	STK01
	MOVLW	0x04
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	__mulint
	CALL	__mulint
	PAGESEL	$
	BANKSEL	r0x1016
	MOVWF	r0x1016
	MOVF	STK00,W
	MOVWF	r0x1017
	ADDLW	(_asincosf_a_1_1 + 0)
	MOVWF	r0x1017
	MOVF	r0x1016,W
	BTFSC	STATUS,0
	INCFSZ	r0x1016,W
	ADDLW	high (_asincosf_a_1_1 + 0)
	MOVWF	r0x1016
;[ICODE] asincosf.c:78: 	iTemp42 [k56 lr106:111 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-float}[r0x104F r0x1050 r0x1051 r0x1052 ] = @[iTemp41 [k55 lr105:106 so:0]{ ia1 a2p0 re0 rm0 nos0 ru1 dp0}{const-float near* }[r0x104D r0x104E ]]
	MOVF	r0x1017,W
	MOVWF	FSR
	BCF	STATUS,7
	BTFSC	r0x1016,0
	BSF	STATUS,7
	MOVF	INDF,W
	MOVWF	r0x101B
	INCF	FSR,F
	MOVF	INDF,W
	MOVWF	r0x101A
	INCF	FSR,F
	MOVF	INDF,W
	MOVWF	r0x1019
	INCF	FSR,F
	MOVF	INDF,W
	MOVWF	r0x1018
;[ICODE] asincosf.c:78: 	send iTemp42 [k56 lr106:111 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-float}[r0x104F r0x1050 r0x1051 r0x1052 ]{argreg = 1}
;[ICODE] asincosf.c:78: 	send iTemp6 [k13 lr13:136 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _asincosf_r_1_1}[r0x1055 r0x1056 r0x1057 r0x1058 ]{argreg = 1}
;[ICODE] asincosf.c:78: 	iTemp43 [k57 lr109:111 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x104D r0x104E r0x1059 r0x105A ] = call ___fssub [k77 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x101E,W
	MOVWF	STK06
	MOVF	r0x101F,W
	MOVWF	STK05
	MOVF	r0x1020,W
	MOVWF	STK04
	MOVF	r0x1021,W
	MOVWF	STK03
	MOVF	r0x101B,W
	MOVWF	STK02
	MOVF	r0x101A,W
	MOVWF	STK01
	MOVF	r0x1019,W
	MOVWF	STK00
	MOVF	r0x1018,W
	PAGESEL	___fssub
	CALL	___fssub
	PAGESEL	$
	BANKSEL	r0x1025
	MOVWF	r0x1025
	MOVF	STK00,W
	MOVWF	r0x1022
	MOVF	STK01,W
	MOVWF	r0x1016
	MOVF	STK02,W
	MOVWF	r0x1017
;[ICODE] asincosf.c:78: 	send iTemp43 [k57 lr109:111 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x104D r0x104E r0x1059 r0x105A ]{argreg = 1}
;[ICODE] asincosf.c:78: 	send iTemp42 [k56 lr106:111 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-float}[r0x104F r0x1050 r0x1051 r0x1052 ]{argreg = 1}
;[ICODE] asincosf.c:78: 	iTemp6 [k13 lr13:136 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _asincosf_r_1_1}[r0x1055 r0x1056 r0x1057 r0x1058 ] = call ___fsadd [k78 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x101B,W
	MOVWF	STK06
	MOVF	r0x101A,W
	MOVWF	STK05
	MOVF	r0x1019,W
	MOVWF	STK04
	MOVF	r0x1018,W
	MOVWF	STK03
	MOVF	r0x1017,W
	MOVWF	STK02
	MOVF	r0x1016,W
	MOVWF	STK01
	MOVF	r0x1022,W
	MOVWF	STK00
	MOVF	r0x1025,W
	PAGESEL	___fsadd
	CALL	___fsadd
	PAGESEL	$
	BANKSEL	r0x1021
	MOVWF	r0x1021
	MOVF	STK00,W
	MOVWF	r0x1020
	MOVF	STK01,W
	MOVWF	r0x101F
	MOVF	STK02,W
	MOVWF	r0x101E
;[ICODE] asincosf.c:78: 	 goto _ifend_5($16)
	GOTO	_00120_DS_
;[ICODE] asincosf.c:78:  _iffalse_5($15) :
;[ICODE] asincosf.c:82: 	iTemp49 [k63 lr116:120 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{const-float near* }[remat] = &[_asincosf_a_1_1 [k52 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-float [2] }]
;[ICODE] asincosf.c:82: 	send 0x4 {literal-int}{argreg = 1}
;[ICODE] asincosf.c:82: 	send iTemp4 [k10 lr8:118 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ _asincosf_i_1_1}[r0x1053 r0x1054 ]{argreg = 1}
;[ICODE] asincosf.c:82: 	iTemp50 [k64 lr119:120 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x104D r0x104E ] = call __mulint [k81 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( int, int) }
_00119_DS_
;	.line	82; "asincosf.c"	r=(a[i]+r)+a[i];
	BANKSEL	r0x101C
	MOVF	r0x101C,W
	MOVWF	STK02
	MOVF	r0x101D,W
	MOVWF	STK01
	MOVLW	0x04
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	__mulint
	CALL	__mulint
	PAGESEL	$
	BANKSEL	r0x1016
	MOVWF	r0x1016
	MOVF	STK00,W
	MOVWF	r0x1017
	ADDLW	(_asincosf_a_1_1 + 0)
	MOVWF	r0x1017
	MOVF	r0x1016,W
	BTFSC	STATUS,0
	INCFSZ	r0x1016,W
	ADDLW	high (_asincosf_a_1_1 + 0)
	MOVWF	r0x1016
;[ICODE] asincosf.c:82: 	iTemp52 [k66 lr121:126 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-float}[r0x104F r0x1050 r0x1051 r0x1052 ] = @[iTemp51 [k65 lr120:121 so:0]{ ia1 a2p0 re0 rm0 nos0 ru1 dp0}{const-float near* }[r0x104D r0x104E ]]
	MOVF	r0x1017,W
	MOVWF	FSR
	BCF	STATUS,7
	BTFSC	r0x1016,0
	BSF	STATUS,7
	MOVF	INDF,W
	MOVWF	r0x101B
	INCF	FSR,F
	MOVF	INDF,W
	MOVWF	r0x101A
	INCF	FSR,F
	MOVF	INDF,W
	MOVWF	r0x1019
	INCF	FSR,F
	MOVF	INDF,W
	MOVWF	r0x1018
;[ICODE] asincosf.c:82: 	send iTemp52 [k66 lr121:126 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-float}[r0x104F r0x1050 r0x1051 r0x1052 ]{argreg = 1}
;[ICODE] asincosf.c:82: 	send iTemp6 [k13 lr13:136 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _asincosf_r_1_1}[r0x1055 r0x1056 r0x1057 r0x1058 ]{argreg = 1}
;[ICODE] asincosf.c:82: 	iTemp53 [k67 lr124:126 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x104D r0x104E r0x1053 r0x1054 ] = call ___fsadd [k78 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x101E,W
	MOVWF	STK06
	MOVF	r0x101F,W
	MOVWF	STK05
	MOVF	r0x1020,W
	MOVWF	STK04
	MOVF	r0x1021,W
	MOVWF	STK03
	MOVF	r0x101B,W
	MOVWF	STK02
	MOVF	r0x101A,W
	MOVWF	STK01
	MOVF	r0x1019,W
	MOVWF	STK00
	MOVF	r0x1018,W
	PAGESEL	___fsadd
	CALL	___fsadd
	PAGESEL	$
	BANKSEL	r0x101D
	MOVWF	r0x101D
	MOVF	STK00,W
	MOVWF	r0x101C
	MOVF	STK01,W
	MOVWF	r0x1016
	MOVF	STK02,W
	MOVWF	r0x1017
;[ICODE] asincosf.c:82: 	send iTemp53 [k67 lr124:126 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x104D r0x104E r0x1053 r0x1054 ]{argreg = 1}
;[ICODE] asincosf.c:82: 	send iTemp52 [k66 lr121:126 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-float}[r0x104F r0x1050 r0x1051 r0x1052 ]{argreg = 1}
;[ICODE] asincosf.c:82: 	iTemp6 [k13 lr13:136 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _asincosf_r_1_1}[r0x1055 r0x1056 r0x1057 r0x1058 ] = call ___fsadd [k78 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x101B,W
	MOVWF	STK06
	MOVF	r0x101A,W
	MOVWF	STK05
	MOVF	r0x1019,W
	MOVWF	STK04
	MOVF	r0x1018,W
	MOVWF	STK03
	MOVF	r0x1017,W
	MOVWF	STK02
	MOVF	r0x1016,W
	MOVWF	STK01
	MOVF	r0x101C,W
	MOVWF	STK00
	MOVF	r0x101D,W
	PAGESEL	___fsadd
	CALL	___fsadd
	PAGESEL	$
	BANKSEL	r0x1021
	MOVWF	r0x1021
	MOVF	STK00,W
	MOVWF	r0x1020
	MOVF	STK01,W
	MOVWF	r0x101F
	MOVF	STK02,W
	MOVWF	r0x101E
;[ICODE] asincosf.c:83: 	send iTemp0 [k2 lr3:130 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _asincosf_x_1_1}[r0x1049 r0x104A r0x104B r0x104C ]{argreg = 1}
;[ICODE] asincosf.c:83: 	send 0 {literal-float}{argreg = 1}
;[ICODE] asincosf.c:83: 	iTemp59 [k73 lr131:132 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x1049 ] = call ___fslt [k75 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
;	.line	83; "asincosf.c"	if (x<0.0) r=-r;
	MOVLW	0x00
	MOVWF	STK06
	MOVLW	0x00
	MOVWF	STK05
	MOVLW	0x00
	MOVWF	STK04
	MOVLW	0x00
	MOVWF	STK03
	MOVF	r0x1015,W
	MOVWF	STK02
	MOVF	r0x1014,W
	MOVWF	STK01
	MOVF	r0x1013,W
	MOVWF	STK00
	MOVF	r0x1012,W
	PAGESEL	___fslt
	CALL	___fslt
	PAGESEL	$
	BANKSEL	r0x1015
	MOVWF	r0x1015
;[ICODE] asincosf.c:83: 	if iTemp59 [k73 lr131:132 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x1049 ] == 0 goto _ifend_5($16)
;	.line	85; "asincosf.c"	return r;
	MOVF	r0x1015,W
	BTFSS	STATUS,2
	MOVWF	r0x1021
_00120_DS_
	BANKSEL	r0x101E
	MOVF	r0x101E,W
	MOVWF	STK02
	MOVF	r0x101F,W
	MOVWF	STK01
	MOVF	r0x1020,W
	MOVWF	STK00
	MOVF	r0x1021,W
;[ICODE] asincosf.c:85:  _return($17) :
;[ICODE] asincosf.c:85: 	eproc _asincosf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float, const-int) }
_00121_DS_
	RETURN	
; exit point of _asincosf


;	code size estimation:
;	  722+   97 =   819 instructions ( 1832 byte)

	end
