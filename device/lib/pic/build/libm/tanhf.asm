;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:32 2018
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"tanhf.c"
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
	extern	___fsadd
	extern	___fsdiv
	extern	___fssub
	extern	___fslt
	extern	___fsmul
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
	global	_tanhf

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_tanhf_0	udata
r0x1003	res	1
r0x1002	res	1
r0x1001	res	1
r0x1000	res	1
r0x1007	res	1
r0x1006	res	1
r0x1005	res	1
r0x1004	res	1
r0x1008	res	1
r0x1009	res	1
r0x100A	res	1
r0x100B	res	1
r0x100C	res	1
r0x100F	res	1
r0x100E	res	1
r0x100D	res	1
r0x1013	res	1
r0x1012	res	1
r0x1011	res	1
r0x1010	res	1
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
code_tanhf	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  _tanhf	;Function start
; 2 exit points
;has an exit
;functions called:
;   _fabsf
;   ___fsgt
;   ___fsgt
;   ___fsadd
;   _expf
;   ___fsadd
;   ___fsdiv
;   ___fssub
;   ___fsadd
;   ___fslt
;   ___fsmul
;   ___fsmul
;   ___fsadd
;   ___fsmul
;   ___fsadd
;   ___fsdiv
;   ___fsmul
;   ___fsadd
;   ___fslt
;   _fabsf
;   ___fsgt
;   ___fsgt
;   ___fsadd
;   _expf
;   ___fsadd
;   ___fsdiv
;   ___fssub
;   ___fsadd
;   ___fslt
;   ___fsmul
;   ___fsmul
;   ___fsadd
;   ___fsmul
;   ___fsadd
;   ___fsdiv
;   ___fsmul
;   ___fsadd
;   ___fslt
;27 compiler assigned registers:
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
;   STK06
;   STK05
;   STK04
;   STK03
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
;; Starting pCode block
;[ICODE] tanhf.c:44:  _entry($13) :
;[ICODE] tanhf.c:44: 	proc _tanhf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float) }
_tanhf	;Function start
; 2 exit points
;[ICODE] tanhf.c:44: iTemp0 [k2 lr3:74 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _tanhf_x_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = recv _tanhf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float) }
;	.line	44; "tanhf.c"	float tanhf(const float x) _MATH_REENTRANT
	BANKSEL	r0x1000
	MOVWF	r0x1000
	MOVF	STK00,W
	MOVWF	r0x1001
	MOVF	STK01,W
	MOVWF	r0x1002
	MOVF	STK02,W
;	.line	48; "tanhf.c"	f=fabsf(x);
	MOVWF	r0x1003
	MOVWF	STK02
	MOVF	r0x1002,W
	MOVWF	STK01
	MOVF	r0x1001,W
	MOVWF	STK00
	MOVF	r0x1000,W
	PAGESEL	_fabsf
	CALL	_fabsf
	PAGESEL	$
	BANKSEL	r0x1004
	MOVWF	r0x1004
	MOVF	STK00,W
	MOVWF	r0x1005
	MOVF	STK01,W
	MOVWF	r0x1006
	MOVF	STK02,W
	MOVWF	r0x1007
;[ICODE] tanhf.c:49: 	send iTemp1 [k4 lr5:69 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tanhf_f_1_1}[r0x104C r0x104D r0x104E r0x104F ]{argreg = 1}
;[ICODE] tanhf.c:49: 	send 9.01091 {literal-float}{argreg = 1}
;[ICODE] tanhf.c:49: 	iTemp3 [k8 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x1050 ] = call ___fsgt [k33 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
;	.line	49; "tanhf.c"	if(f>SBIG) r=1.0;
	MOVLW	0xb0
	MOVWF	STK06
	MOVLW	0x2c
	MOVWF	STK05
	MOVLW	0x10
	MOVWF	STK04
	MOVLW	0x41
	MOVWF	STK03
	MOVF	r0x1007,W
	MOVWF	STK02
	MOVF	r0x1006,W
	MOVWF	STK01
	MOVF	r0x1005,W
	MOVWF	STK00
	MOVF	r0x1004,W
	PAGESEL	___fsgt
	CALL	___fsgt
	PAGESEL	$
	BANKSEL	r0x1008
	MOVWF	r0x1008
;[ICODE] tanhf.c:49: 	if iTemp3 [k8 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x1050 ] == 0 goto _iffalse_2($8)
	MOVF	r0x1008,W
	BTFSC	STATUS,2
	GOTO	_00112_DS_
;[ICODE] tanhf.c:49: 	iTemp4 [k9 lr11:80 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tanhf_r_1_1}[r0x1050 r0x1051 r0x1052 r0x1053 ] := 1 {literal-float}
	CLRF	r0x1008
	CLRF	r0x1009
	MOVLW	0x80
	MOVWF	r0x100A
	MOVLW	0x3f
	MOVWF	r0x100B
;[ICODE] tanhf.c:49: 	 goto _ifend_2($9)
	GOTO	_00113_DS_
;[ICODE] tanhf.c:49:  _iffalse_2($8) :
;[ICODE] tanhf.c:50: 	send iTemp1 [k4 lr5:69 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tanhf_f_1_1}[r0x104C r0x104D r0x104E r0x104F ]{argreg = 1}
;[ICODE] tanhf.c:50: 	send 0.549306 {literal-float}{argreg = 1}
;[ICODE] tanhf.c:50: 	iTemp5 [k11 lr16:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x1054 ] = call ___fsgt [k33 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
_00112_DS_
;	.line	50; "tanhf.c"	else if(f>K1)
	MOVLW	0x54
	MOVWF	STK06
	MOVLW	0x9f
	MOVWF	STK05
	MOVLW	0x0c
	MOVWF	STK04
	MOVLW	0x3f
	MOVWF	STK03
	BANKSEL	r0x1007
	MOVF	r0x1007,W
	MOVWF	STK02
	MOVF	r0x1006,W
	MOVWF	STK01
	MOVF	r0x1005,W
	MOVWF	STK00
	MOVF	r0x1004,W
	PAGESEL	___fsgt
	CALL	___fsgt
	PAGESEL	$
	BANKSEL	r0x100C
	MOVWF	r0x100C
;[ICODE] tanhf.c:50: 	if iTemp5 [k11 lr16:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x1054 ] == 0 goto _iffalse_1($5)
	MOVF	r0x100C,W
	BTFSC	STATUS,2
	GOTO	_00109_DS_
;[ICODE] tanhf.c:52: 	send iTemp1 [k4 lr5:69 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tanhf_f_1_1}[r0x104C r0x104D r0x104E r0x104F ]{argreg = 1}
;[ICODE] tanhf.c:52: 	send iTemp1 [k4 lr5:69 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tanhf_f_1_1}[r0x104C r0x104D r0x104E r0x104F ]{argreg = 1}
;[ICODE] tanhf.c:52: 	iTemp6 [k13 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x1054 r0x1055 r0x1056 r0x1057 ] = call ___fsadd [k34 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
;	.line	52; "tanhf.c"	r=0.5-1.0/(expf(f+f)+1.0);
	MOVF	r0x1007,W
	MOVWF	STK06
	MOVF	r0x1006,W
	MOVWF	STK05
	MOVF	r0x1005,W
	MOVWF	STK04
	MOVF	r0x1004,W
	MOVWF	STK03
	MOVF	r0x1007,W
	MOVWF	STK02
	MOVF	r0x1006,W
	MOVWF	STK01
	MOVF	r0x1005,W
	MOVWF	STK00
	MOVF	r0x1004,W
	PAGESEL	___fsadd
	CALL	___fsadd
	PAGESEL	$
	BANKSEL	r0x100D
	MOVWF	r0x100D
	MOVF	STK00,W
	MOVWF	r0x100E
	MOVF	STK01,W
	MOVWF	r0x100F
	MOVF	STK02,W
	MOVWF	r0x100C
	MOVWF	STK02
	MOVF	r0x100F,W
	MOVWF	STK01
	MOVF	r0x100E,W
	MOVWF	STK00
	MOVF	r0x100D,W
	PAGESEL	_expf
	CALL	_expf
	PAGESEL	$
	BANKSEL	r0x100D
	MOVWF	r0x100D
	MOVF	STK00,W
	MOVWF	r0x100E
	MOVF	STK01,W
	MOVWF	r0x100F
	MOVF	STK02,W
	MOVWF	r0x100C
;[ICODE] tanhf.c:52: 	send iTemp7 [k14 lr22:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x1054 r0x1055 r0x1056 r0x1057 ]{argreg = 1}
;[ICODE] tanhf.c:52: 	send 1 {literal-float}{argreg = 1}
;[ICODE] tanhf.c:52: 	iTemp8 [k15 lr25:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x1054 r0x1055 r0x1056 r0x1057 ] = call ___fsadd [k34 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVLW	0x00
	MOVWF	STK06
	MOVLW	0x00
	MOVWF	STK05
	MOVLW	0x80
	MOVWF	STK04
	MOVLW	0x3f
	MOVWF	STK03
	MOVF	r0x100C,W
	MOVWF	STK02
	MOVF	r0x100F,W
	MOVWF	STK01
	MOVF	r0x100E,W
	MOVWF	STK00
	MOVF	r0x100D,W
	PAGESEL	___fsadd
	CALL	___fsadd
	PAGESEL	$
	BANKSEL	r0x100D
	MOVWF	r0x100D
	MOVF	STK00,W
	MOVWF	r0x100E
	MOVF	STK01,W
	MOVWF	r0x100F
	MOVF	STK02,W
	MOVWF	r0x100C
	MOVWF	STK06
	MOVF	r0x100F,W
	MOVWF	STK05
	MOVF	r0x100E,W
	MOVWF	STK04
	MOVF	r0x100D,W
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
	BANKSEL	r0x100D
	MOVWF	r0x100D
	MOVF	STK00,W
	MOVWF	r0x100E
	MOVF	STK01,W
	MOVWF	r0x100F
	MOVF	STK02,W
	MOVWF	r0x100C
	MOVWF	STK06
	MOVF	r0x100F,W
	MOVWF	STK05
	MOVF	r0x100E,W
	MOVWF	STK04
	MOVF	r0x100D,W
	MOVWF	STK03
	MOVLW	0x00
	MOVWF	STK02
	MOVLW	0x00
	MOVWF	STK01
	MOVLW	0x00
	MOVWF	STK00
	MOVLW	0x3f
	PAGESEL	___fssub
	CALL	___fssub
	PAGESEL	$
	BANKSEL	r0x100B
	MOVWF	r0x100B
	MOVF	STK00,W
	MOVWF	r0x100A
	MOVF	STK01,W
	MOVWF	r0x1009
	MOVF	STK02,W
;	.line	53; "tanhf.c"	r+=r;
	MOVWF	r0x1008
	MOVWF	STK06
	MOVF	r0x1009,W
	MOVWF	STK05
	MOVF	r0x100A,W
	MOVWF	STK04
	MOVF	r0x100B,W
	MOVWF	STK03
	MOVF	r0x1008,W
	MOVWF	STK02
	MOVF	r0x1009,W
	MOVWF	STK01
	MOVF	r0x100A,W
	MOVWF	STK00
	MOVF	r0x100B,W
	PAGESEL	___fsadd
	CALL	___fsadd
	PAGESEL	$
	BANKSEL	r0x100B
	MOVWF	r0x100B
	MOVF	STK00,W
	MOVWF	r0x100A
	MOVF	STK01,W
	MOVWF	r0x1009
	MOVF	STK02,W
	MOVWF	r0x1008
;[ICODE] tanhf.c:53: 	 goto _ifend_2($9)
	GOTO	_00113_DS_
;[ICODE] tanhf.c:53:  _iffalse_1($5) :
;[ICODE] tanhf.c:55: 	send iTemp1 [k4 lr5:69 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tanhf_f_1_1}[r0x104C r0x104D r0x104E r0x104F ]{argreg = 1}
;[ICODE] tanhf.c:55: 	send 0.000244141 {literal-float}{argreg = 1}
;[ICODE] tanhf.c:55: 	iTemp12 [k19 lr41:42 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x1054 ] = call ___fslt [k37 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
_00109_DS_
;	.line	55; "tanhf.c"	else if(f<EPS) r=f;
	MOVLW	0x00
	MOVWF	STK06
	MOVLW	0x00
	MOVWF	STK05
	MOVLW	0x80
	MOVWF	STK04
	MOVLW	0x39
	MOVWF	STK03
	BANKSEL	r0x1007
	MOVF	r0x1007,W
	MOVWF	STK02
	MOVF	r0x1006,W
	MOVWF	STK01
	MOVF	r0x1005,W
	MOVWF	STK00
	MOVF	r0x1004,W
	PAGESEL	___fslt
	CALL	___fslt
	PAGESEL	$
	BANKSEL	r0x100C
	MOVWF	r0x100C
;[ICODE] tanhf.c:55: 	if iTemp12 [k19 lr41:42 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x1054 ] == 0 goto _iffalse_0($2)
	MOVF	r0x100C,W
	BTFSC	STATUS,2
	GOTO	_00106_DS_
;[ICODE] tanhf.c:55: 	iTemp4 [k9 lr11:80 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tanhf_r_1_1}[r0x1050 r0x1051 r0x1052 r0x1053 ] := iTemp1 [k4 lr5:69 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tanhf_f_1_1}[r0x104C r0x104D r0x104E r0x104F ]
	MOVF	r0x1007,W
	MOVWF	r0x1008
	MOVF	r0x1006,W
	MOVWF	r0x1009
	MOVF	r0x1005,W
	MOVWF	r0x100A
	MOVF	r0x1004,W
	MOVWF	r0x100B
;[ICODE] tanhf.c:55: 	 goto _ifend_2($9)
	GOTO	_00113_DS_
;[ICODE] tanhf.c:55:  _iffalse_0($2) :
;[ICODE] tanhf.c:58: 	send iTemp1 [k4 lr5:69 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tanhf_f_1_1}[r0x104C r0x104D r0x104E r0x104F ]{argreg = 1}
;[ICODE] tanhf.c:58: 	send iTemp1 [k4 lr5:69 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tanhf_f_1_1}[r0x104C r0x104D r0x104E r0x104F ]{argreg = 1}
;[ICODE] tanhf.c:58: 	iTemp13 [k20 lr48:60 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tanhf_g_1_1}[r0x1054 r0x1055 r0x1056 r0x1057 ] = call ___fsmul [k38 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
_00106_DS_
;	.line	58; "tanhf.c"	g=f*f;
	BANKSEL	r0x1007
	MOVF	r0x1007,W
	MOVWF	STK06
	MOVF	r0x1006,W
	MOVWF	STK05
	MOVF	r0x1005,W
	MOVWF	STK04
	MOVF	r0x1004,W
	MOVWF	STK03
	MOVF	r0x1007,W
	MOVWF	STK02
	MOVF	r0x1006,W
	MOVWF	STK01
	MOVF	r0x1005,W
	MOVWF	STK00
	MOVF	r0x1004,W
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x100D
	MOVWF	r0x100D
	MOVF	STK00,W
	MOVWF	r0x100E
	MOVF	STK01,W
	MOVWF	r0x100F
	MOVF	STK02,W
;	.line	59; "tanhf.c"	r=f+f*(P(g)/Q(g));
	MOVWF	r0x100C
	MOVWF	STK06
	MOVF	r0x100F,W
	MOVWF	STK05
	MOVF	r0x100E,W
	MOVWF	STK04
	MOVF	r0x100D,W
	MOVWF	STK03
	MOVLW	0xb2
	MOVWF	STK02
	MOVLW	0x11
	MOVWF	STK01
	MOVLW	0x7b
	MOVWF	STK00
	MOVLW	0xbb
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x1010
	MOVWF	r0x1010
	MOVF	STK00,W
	MOVWF	r0x1011
	MOVF	STK01,W
	MOVWF	r0x1012
	MOVF	STK02,W
	MOVWF	r0x1013
;[ICODE] tanhf.c:59: 	send iTemp15 [k23 lr52:54 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x1058 r0x1059 r0x105A r0x105B ]{argreg = 1}
;[ICODE] tanhf.c:59: 	send -0.823773 {literal-float}{argreg = 1}
;[ICODE] tanhf.c:59: 	iTemp16 [k24 lr55:57 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x1058 r0x1059 r0x105A r0x105B ] = call ___fsadd [k34 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVLW	0xc6
	MOVWF	STK06
	MOVLW	0xe2
	MOVWF	STK05
	MOVLW	0x52
	MOVWF	STK04
	MOVLW	0xbf
	MOVWF	STK03
	MOVF	r0x1013,W
	MOVWF	STK02
	MOVF	r0x1012,W
	MOVWF	STK01
	MOVF	r0x1011,W
	MOVWF	STK00
	MOVF	r0x1010,W
	PAGESEL	___fsadd
	CALL	___fsadd
	PAGESEL	$
	BANKSEL	r0x1010
	MOVWF	r0x1010
	MOVF	STK00,W
	MOVWF	r0x1011
	MOVF	STK01,W
	MOVWF	r0x1012
	MOVF	STK02,W
	MOVWF	r0x1013
;[ICODE] tanhf.c:59: 	send iTemp16 [k24 lr55:57 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x1058 r0x1059 r0x105A r0x105B ]{argreg = 1}
;[ICODE] tanhf.c:59: 	send iTemp13 [k20 lr48:60 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tanhf_g_1_1}[r0x1054 r0x1055 r0x1056 r0x1057 ]{argreg = 1}
;[ICODE] tanhf.c:59: 	iTemp17 [k25 lr58:63 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x1058 r0x1059 r0x105A r0x105B ] = call ___fsmul [k38 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x100C,W
	MOVWF	STK06
	MOVF	r0x100F,W
	MOVWF	STK05
	MOVF	r0x100E,W
	MOVWF	STK04
	MOVF	r0x100D,W
	MOVWF	STK03
	MOVF	r0x1013,W
	MOVWF	STK02
	MOVF	r0x1012,W
	MOVWF	STK01
	MOVF	r0x1011,W
	MOVWF	STK00
	MOVF	r0x1010,W
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x1010
	MOVWF	r0x1010
	MOVF	STK00,W
	MOVWF	r0x1011
	MOVF	STK01,W
	MOVWF	r0x1012
	MOVF	STK02,W
	MOVWF	r0x1013
;[ICODE] tanhf.c:59: 	send iTemp13 [k20 lr48:60 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _tanhf_g_1_1}[r0x1054 r0x1055 r0x1056 r0x1057 ]{argreg = 1}
;[ICODE] tanhf.c:59: 	send 2.47132 {literal-float}{argreg = 1}
;[ICODE] tanhf.c:59: 	iTemp19 [k27 lr61:63 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x1054 r0x1055 r0x1056 r0x1057 ] = call ___fsadd [k34 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVLW	0x1a
	MOVWF	STK06
	MOVLW	0x2a
	MOVWF	STK05
	MOVLW	0x1e
	MOVWF	STK04
	MOVLW	0x40
	MOVWF	STK03
	MOVF	r0x100C,W
	MOVWF	STK02
	MOVF	r0x100F,W
	MOVWF	STK01
	MOVF	r0x100E,W
	MOVWF	STK00
	MOVF	r0x100D,W
	PAGESEL	___fsadd
	CALL	___fsadd
	PAGESEL	$
	BANKSEL	r0x100D
	MOVWF	r0x100D
	MOVF	STK00,W
	MOVWF	r0x100E
	MOVF	STK01,W
	MOVWF	r0x100F
	MOVF	STK02,W
	MOVWF	r0x100C
	MOVWF	STK06
	MOVF	r0x100F,W
	MOVWF	STK05
	MOVF	r0x100E,W
	MOVWF	STK04
	MOVF	r0x100D,W
	MOVWF	STK03
	MOVF	r0x1013,W
	MOVWF	STK02
	MOVF	r0x1012,W
	MOVWF	STK01
	MOVF	r0x1011,W
	MOVWF	STK00
	MOVF	r0x1010,W
	PAGESEL	___fsdiv
	CALL	___fsdiv
	PAGESEL	$
	BANKSEL	r0x100D
	MOVWF	r0x100D
	MOVF	STK00,W
	MOVWF	r0x100E
	MOVF	STK01,W
	MOVWF	r0x100F
	MOVF	STK02,W
	MOVWF	r0x100C
	MOVWF	STK06
	MOVF	r0x100F,W
	MOVWF	STK05
	MOVF	r0x100E,W
	MOVWF	STK04
	MOVF	r0x100D,W
	MOVWF	STK03
	MOVF	r0x1007,W
	MOVWF	STK02
	MOVF	r0x1006,W
	MOVWF	STK01
	MOVF	r0x1005,W
	MOVWF	STK00
	MOVF	r0x1004,W
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x100D
	MOVWF	r0x100D
	MOVF	STK00,W
	MOVWF	r0x100E
	MOVF	STK01,W
	MOVWF	r0x100F
	MOVF	STK02,W
	MOVWF	r0x100C
	MOVWF	STK06
	MOVF	r0x100F,W
	MOVWF	STK05
	MOVF	r0x100E,W
	MOVWF	STK04
	MOVF	r0x100D,W
	MOVWF	STK03
	MOVF	r0x1007,W
	MOVWF	STK02
	MOVF	r0x1006,W
	MOVWF	STK01
	MOVF	r0x1005,W
	MOVWF	STK00
	MOVF	r0x1004,W
	PAGESEL	___fsadd
	CALL	___fsadd
	PAGESEL	$
	BANKSEL	r0x100B
	MOVWF	r0x100B
	MOVF	STK00,W
	MOVWF	r0x100A
	MOVF	STK01,W
	MOVWF	r0x1009
	MOVF	STK02,W
	MOVWF	r0x1008
;[ICODE] tanhf.c:59:  _ifend_2($9) :
;[ICODE] tanhf.c:61: 	send iTemp0 [k2 lr3:74 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _tanhf_x_1_1}[r0x1048 r0x1049 r0x104A r0x104B ]{argreg = 1}
;[ICODE] tanhf.c:61: 	send 0 {literal-float}{argreg = 1}
;[ICODE] tanhf.c:61: 	iTemp23 [k31 lr75:76 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x1048 ] = call ___fslt [k37 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
_00113_DS_
;	.line	61; "tanhf.c"	if(x<0.0) r=-r;
	MOVLW	0x00
	MOVWF	STK06
	MOVLW	0x00
	MOVWF	STK05
	MOVLW	0x00
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
	PAGESEL	___fslt
	CALL	___fslt
	PAGESEL	$
	BANKSEL	r0x1003
	MOVWF	r0x1003
;[ICODE] tanhf.c:61: 	if iTemp23 [k31 lr75:76 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x1048 ] == 0 goto _iffalse_3($11)
;	.line	62; "tanhf.c"	return r;
	MOVF	r0x1003,W
	BTFSS	STATUS,2
	MOVWF	r0x100B
	MOVF	r0x1008,W
	MOVWF	STK02
	MOVF	r0x1009,W
	MOVWF	STK01
	MOVF	r0x100A,W
	MOVWF	STK00
	MOVF	r0x100B,W
;[ICODE] tanhf.c:62:  _return($12) :
;[ICODE] tanhf.c:62: 	eproc _tanhf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float) }
	RETURN	
; exit point of _tanhf


;	code size estimation:
;	  432+   62 =   494 instructions ( 1112 byte)

	end
