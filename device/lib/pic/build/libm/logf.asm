;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:32 2018
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"logf.c"
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
	extern	_log10f
	extern	_powf
	extern	_sqrtf
	extern	_fabsf
	extern	_frexpf
	extern	_ldexpf
	extern	_ceilf
	extern	_floorf
	extern	_modff
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
	global	_logf

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_logf_0	udata
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
_logf_n_1_1	res	2
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
code_logf	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  _logf	;Function start
; 2 exit points
;has an exit
;functions called:
;   ___fsgt
;   _frexpf
;   ___fssub
;   ___fsgt
;   ___fssub
;   ___fsmul
;   ___fsadd
;   ___fsmul
;   ___fsadd
;   ___fsdiv
;   ___fsmul
;   ___fsmul
;   ___fsadd
;   ___fsdiv
;   ___fsmul
;   ___fsadd
;   ___sint2fs
;   ___fsmul
;   ___fsadd
;   ___fsmul
;   ___fsadd
;   ___fsgt
;   _frexpf
;   ___fssub
;   ___fsgt
;   ___fssub
;   ___fsmul
;   ___fsadd
;   ___fsmul
;   ___fsadd
;   ___fsdiv
;   ___fsmul
;   ___fsmul
;   ___fsadd
;   ___fsdiv
;   ___fsmul
;   ___fsadd
;   ___sint2fs
;   ___fsmul
;   ___fsadd
;   ___fsmul
;   ___fsadd
;19 compiler assigned registers:
;   r0x1004
;   STK00
;   r0x1005
;   STK01
;   r0x1006
;   STK02
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
;; Starting pCode block
;[ICODE] logf.c:42:  _entry($7) :
;[ICODE] logf.c:42: 	proc _logf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float) }
_logf	;Function start
; 2 exit points
;[ICODE] logf.c:42: iTemp0 [k2 lr3:14 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _logf_x_1_1}[r0x104A r0x104B r0x104C r0x104D ] = recv _logf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float) }
;	.line	42; "logf.c"	float logf(const float x) _MATH_REENTRANT
	BANKSEL	r0x1004
	MOVWF	r0x1004
	MOVF	STK00,W
	MOVWF	r0x1005
	MOVF	STK01,W
	MOVWF	r0x1006
	MOVF	STK02,W
	MOVWF	r0x1007
;[ICODE] logf.c:48: 	send iTemp0 [k2 lr3:14 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _logf_x_1_1}[r0x104A r0x104B r0x104C r0x104D ]{argreg = 1}
;[ICODE] logf.c:48: 	send 0 {literal-float}{argreg = 1}
;[ICODE] logf.c:48: 	iTemp1 [k4 lr6:7 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x104E ] = call ___fsgt [k47 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
;	.line	48; "logf.c"	if (x<=0.0)
	MOVLW	0x00
	MOVWF	STK06
	MOVLW	0x00
	MOVWF	STK05
	MOVLW	0x00
	MOVWF	STK04
	MOVLW	0x00
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
;[ICODE] logf.c:48: 	if iTemp1 [k4 lr6:7 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x104E ] != 0 goto _iffalse_0($2)
	MOVF	r0x1008,W
	BTFSS	STATUS,2
	GOTO	_00106_DS_
;[ICODE] logf.c:50: 	_errno [k5 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{int} := 0x21 {literal-int}
;	.line	50; "logf.c"	errno=EDOM;
	MOVLW	0x21
	BANKSEL	_errno
	MOVWF	_errno
	CLRF	(_errno + 1)
;[ICODE] logf.c:51: 	ret 0 {literal-float}
;	.line	51; "logf.c"	return 0.0;
	MOVLW	0x00
	MOVWF	STK02
	MOVLW	0x00
	MOVWF	STK01
	MOVLW	0x00
	MOVWF	STK00
	MOVLW	0x00
	GOTO	_00110_DS_
;[ICODE] logf.c:51:  _iffalse_0($2) :
;[ICODE] logf.c:53: 	iTemp4 [k11 lr11:12 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{int near* }[remat] = &[_logf_n_1_1 [k10 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{int}]
;[ICODE] logf.c:53: 	iTemp5 [k12 lr12:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int generic* }[r0x104E r0x104F r0x1050 ] = (int generic* )iTemp4 [k11 lr11:12 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{int near* }[remat]
_00106_DS_
;	.line	53; "logf.c"	f=frexpf(x, &n);
	MOVLW	high (_logf_n_1_1 + 0)
	BANKSEL	r0x1009
	MOVWF	r0x1009
	MOVLW	(_logf_n_1_1 + 0)
	MOVWF	r0x1008
	CLRF	r0x100A
;[ICODE] logf.c:53: 	send iTemp0 [k2 lr3:14 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _logf_x_1_1}[r0x104A r0x104B r0x104C r0x104D ]{argreg = 1}
;[ICODE] logf.c:53: 	send iTemp5 [k12 lr12:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int generic* }[r0x104E r0x104F r0x1050 ]{argreg = 1}
;[ICODE] logf.c:53: 	iTemp3 [k7 lr15:30 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _logf_f_1_1}[r0x104A r0x104B r0x104C r0x104D ] = call _frexpf [k9 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float, int generic* ) }
	MOVF	r0x1008,W
	MOVWF	STK05
	MOVF	r0x1009,W
	MOVWF	STK04
	MOVLW	0x00
	MOVWF	STK03
	MOVF	r0x1007,W
	MOVWF	STK02
	MOVF	r0x1006,W
	MOVWF	STK01
	MOVF	r0x1005,W
	MOVWF	STK00
	MOVF	r0x1004,W
	PAGESEL	_frexpf
	CALL	_frexpf
	PAGESEL	$
	BANKSEL	r0x1004
	MOVWF	r0x1004
	MOVF	STK00,W
	MOVWF	r0x1005
	MOVF	STK01,W
	MOVWF	r0x1006
	MOVF	STK02,W
	MOVWF	r0x1007
;[ICODE] logf.c:54: 	send iTemp3 [k7 lr15:30 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _logf_f_1_1}[r0x104A r0x104B r0x104C r0x104D ]{argreg = 1}
;[ICODE] logf.c:54: 	send 0.5 {literal-float}{argreg = 1}
;[ICODE] logf.c:54: 	iTemp7 [k14 lr19:50 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _logf_znum_1_1}[r0x104E r0x104F r0x1050 r0x1051 ] = call ___fssub [k48 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
;	.line	54; "logf.c"	znum=f-0.5;
	MOVLW	0x00
	MOVWF	STK06
	MOVLW	0x00
	MOVWF	STK05
	MOVLW	0x00
	MOVWF	STK04
	MOVLW	0x3f
	MOVWF	STK03
	MOVF	r0x1007,W
	MOVWF	STK02
	MOVF	r0x1006,W
	MOVWF	STK01
	MOVF	r0x1005,W
	MOVWF	STK00
	MOVF	r0x1004,W
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
	MOVWF	r0x1008
;[ICODE] logf.c:55: 	send iTemp3 [k7 lr15:30 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _logf_f_1_1}[r0x104A r0x104B r0x104C r0x104D ]{argreg = 1}
;[ICODE] logf.c:55: 	send 0.707107 {literal-float}{argreg = 1}
;[ICODE] logf.c:55: 	iTemp9 [k17 lr23:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x1052 ] = call ___fsgt [k47 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
;	.line	55; "logf.c"	if (f>C0)
	MOVLW	0xf3
	MOVWF	STK06
	MOVLW	0x04
	MOVWF	STK05
	MOVLW	0x35
	MOVWF	STK04
	MOVLW	0x3f
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
	BANKSEL	r0x100C
	MOVWF	r0x100C
;[ICODE] logf.c:55: 	if iTemp9 [k17 lr23:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x1052 ] == 0 goto _iffalse_1($4)
	MOVF	r0x100C,W
	BTFSC	STATUS,2
	GOTO	_00108_DS_
;[ICODE] logf.c:57: 	send iTemp7 [k14 lr19:50 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _logf_znum_1_1}[r0x104E r0x104F r0x1050 r0x1051 ]{argreg = 1}
;[ICODE] logf.c:57: 	send 0.5 {literal-float}{argreg = 1}
;[ICODE] logf.c:57: 	iTemp7 [k14 lr19:50 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _logf_znum_1_1}[r0x104E r0x104F r0x1050 r0x1051 ] = call ___fssub [k48 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
;	.line	57; "logf.c"	znum-=0.5;
	MOVLW	0x00
	MOVWF	STK06
	MOVLW	0x00
	MOVWF	STK05
	MOVLW	0x00
	MOVWF	STK04
	MOVLW	0x3f
	MOVWF	STK03
	MOVF	r0x1008,W
	MOVWF	STK02
	MOVF	r0x1009,W
	MOVWF	STK01
	MOVF	r0x100A,W
	MOVWF	STK00
	MOVF	r0x100B,W
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
	MOVWF	r0x1008
;[ICODE] logf.c:58: 	send 0.5 {literal-float}{argreg = 1}
;[ICODE] logf.c:58: 	send iTemp3 [k7 lr15:30 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _logf_f_1_1}[r0x104A r0x104B r0x104C r0x104D ]{argreg = 1}
;[ICODE] logf.c:58: 	iTemp12 [k21 lr31:33 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x104A r0x104B r0x104C r0x104D ] = call ___fsmul [k49 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
;	.line	58; "logf.c"	zden=(f*0.5)+0.5;
	MOVF	r0x1007,W
	MOVWF	STK06
	MOVF	r0x1006,W
	MOVWF	STK05
	MOVF	r0x1005,W
	MOVWF	STK04
	MOVF	r0x1004,W
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
	BANKSEL	r0x1004
	MOVWF	r0x1004
	MOVF	STK00,W
	MOVWF	r0x1005
	MOVF	STK01,W
	MOVWF	r0x1006
	MOVF	STK02,W
	MOVWF	r0x1007
;[ICODE] logf.c:58: 	send iTemp12 [k21 lr31:33 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x104A r0x104B r0x104C r0x104D ]{argreg = 1}
;[ICODE] logf.c:58: 	send 0.5 {literal-float}{argreg = 1}
;[ICODE] logf.c:58: 	iTemp11 [k19 lr34:50 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}[r0x104A r0x104B r0x104C r0x104D ] = call ___fsadd [k50 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVLW	0x00
	MOVWF	STK06
	MOVLW	0x00
	MOVWF	STK05
	MOVLW	0x00
	MOVWF	STK04
	MOVLW	0x3f
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
	BANKSEL	r0x1004
	MOVWF	r0x1004
	MOVF	STK00,W
	MOVWF	r0x1005
	MOVF	STK01,W
	MOVWF	r0x1006
	MOVF	STK02,W
	MOVWF	r0x1007
;[ICODE] logf.c:58: 	 goto _ifend_1($5)
	GOTO	_00109_DS_
;[ICODE] logf.c:58:  _iffalse_1($4) :
;[ICODE] logf.c:62: 	_logf_n_1_1 [k10 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{int} = _logf_n_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int} - 0x1 {literal-unsigned-char}
_00108_DS_
;	.line	62; "logf.c"	n--;
	MOVLW	0xff
	BANKSEL	_logf_n_1_1
	ADDWF	_logf_n_1_1,F
	BTFSS	STATUS,0
	DECF	(_logf_n_1_1 + 1),F
;[ICODE] logf.c:63: 	send 0.5 {literal-float}{argreg = 1}
;[ICODE] logf.c:63: 	send iTemp7 [k14 lr19:50 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _logf_znum_1_1}[r0x104E r0x104F r0x1050 r0x1051 ]{argreg = 1}
;[ICODE] logf.c:63: 	iTemp16 [k25 lr43:45 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x1052 r0x1053 r0x1054 r0x1055 ] = call ___fsmul [k49 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
;	.line	63; "logf.c"	zden=znum*0.5+0.5;
	BANKSEL	r0x1008
	MOVF	r0x1008,W
	MOVWF	STK06
	MOVF	r0x1009,W
	MOVWF	STK05
	MOVF	r0x100A,W
	MOVWF	STK04
	MOVF	r0x100B,W
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
	BANKSEL	r0x100D
	MOVWF	r0x100D
	MOVF	STK00,W
	MOVWF	r0x100E
	MOVF	STK01,W
	MOVWF	r0x100F
	MOVF	STK02,W
	MOVWF	r0x100C
;[ICODE] logf.c:63: 	send iTemp16 [k25 lr43:45 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x1052 r0x1053 r0x1054 r0x1055 ]{argreg = 1}
;[ICODE] logf.c:63: 	send 0.5 {literal-float}{argreg = 1}
;[ICODE] logf.c:63: 	iTemp11 [k19 lr34:50 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}[r0x104A r0x104B r0x104C r0x104D ] = call ___fsadd [k50 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVLW	0x00
	MOVWF	STK06
	MOVLW	0x00
	MOVWF	STK05
	MOVLW	0x00
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
	BANKSEL	r0x1004
	MOVWF	r0x1004
	MOVF	STK00,W
	MOVWF	r0x1005
	MOVF	STK01,W
	MOVWF	r0x1006
	MOVF	STK02,W
	MOVWF	r0x1007
;[ICODE] logf.c:63:  _ifend_1($5) :
;[ICODE] logf.c:65: 	send iTemp7 [k14 lr19:50 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _logf_znum_1_1}[r0x104E r0x104F r0x1050 r0x1051 ]{argreg = 1}
;[ICODE] logf.c:65: 	send iTemp11 [k19 lr34:50 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}[r0x104A r0x104B r0x104C r0x104D ]{argreg = 1}
;[ICODE] logf.c:65: 	iTemp18 [k27 lr51:70 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _logf_z_1_1}[r0x104A r0x104B r0x104C r0x104D ] = call ___fsdiv [k51 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
_00109_DS_
;	.line	65; "logf.c"	z=znum/zden;
	BANKSEL	r0x1007
	MOVF	r0x1007,W
	MOVWF	STK06
	MOVF	r0x1006,W
	MOVWF	STK05
	MOVF	r0x1005,W
	MOVWF	STK04
	MOVF	r0x1004,W
	MOVWF	STK03
	MOVF	r0x1008,W
	MOVWF	STK02
	MOVF	r0x1009,W
	MOVWF	STK01
	MOVF	r0x100A,W
	MOVWF	STK00
	MOVF	r0x100B,W
	PAGESEL	___fsdiv
	CALL	___fsdiv
	PAGESEL	$
	BANKSEL	r0x1004
	MOVWF	r0x1004
	MOVF	STK00,W
	MOVWF	r0x1005
	MOVF	STK01,W
	MOVWF	r0x1006
	MOVF	STK02,W
;	.line	66; "logf.c"	w=z*z;
	MOVWF	r0x1007
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
	BANKSEL	r0x100B
	MOVWF	r0x100B
	MOVF	STK00,W
	MOVWF	r0x100A
	MOVF	STK01,W
	MOVWF	r0x1009
	MOVF	STK02,W
;	.line	68; "logf.c"	Rz=z+z*(w*A(w)/B(w));
	MOVWF	r0x1008
	MOVWF	STK06
	MOVF	r0x1009,W
	MOVWF	STK05
	MOVF	r0x100A,W
	MOVWF	STK04
	MOVF	r0x100B,W
	MOVWF	STK03
	MOVLW	0x3d
	MOVWF	STK02
	MOVLW	0x7e
	MOVWF	STK01
	MOVLW	0x0d
	MOVWF	STK00
	MOVLW	0xbf
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
;[ICODE] logf.c:68: 	send iTemp20 [k30 lr55:61 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _logf_w_1_1}[r0x104E r0x104F r0x1050 r0x1051 ]{argreg = 1}
;[ICODE] logf.c:68: 	send -6.63272 {literal-float}{argreg = 1}
;[ICODE] logf.c:68: 	iTemp24 [k36 lr62:64 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x104E r0x104F r0x1050 r0x1051 ] = call ___fsadd [k50 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVLW	0x3a
	MOVWF	STK06
	MOVLW	0x3f
	MOVWF	STK05
	MOVLW	0xd4
	MOVWF	STK04
	MOVLW	0xc0
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
	MOVWF	STK06
	MOVF	r0x1009,W
	MOVWF	STK05
	MOVF	r0x100A,W
	MOVWF	STK04
	MOVF	r0x100B,W
	MOVWF	STK03
	MOVF	r0x100C,W
	MOVWF	STK02
	MOVF	r0x100F,W
	MOVWF	STK01
	MOVF	r0x100E,W
	MOVWF	STK00
	MOVF	r0x100D,W
	PAGESEL	___fsdiv
	CALL	___fsdiv
	PAGESEL	$
	BANKSEL	r0x100B
	MOVWF	r0x100B
	MOVF	STK00,W
	MOVWF	r0x100A
	MOVF	STK01,W
	MOVWF	r0x1009
	MOVF	STK02,W
	MOVWF	r0x1008
	MOVWF	STK06
	MOVF	r0x1009,W
	MOVWF	STK05
	MOVF	r0x100A,W
	MOVWF	STK04
	MOVF	r0x100B,W
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
	BANKSEL	r0x100B
	MOVWF	r0x100B
	MOVF	STK00,W
	MOVWF	r0x100A
	MOVF	STK01,W
	MOVWF	r0x1009
	MOVF	STK02,W
	MOVWF	r0x1008
	MOVWF	STK06
	MOVF	r0x1009,W
	MOVWF	STK05
	MOVF	r0x100A,W
	MOVWF	STK04
	MOVF	r0x100B,W
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
	BANKSEL	r0x1004
	MOVWF	r0x1004
	MOVF	STK00,W
	MOVWF	r0x1005
	MOVF	STK01,W
	MOVWF	r0x1006
	MOVF	STK02,W
	MOVWF	r0x1007
;[ICODE] logf.c:69: 	send _logf_n_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}{argreg = 1}
;[ICODE] logf.c:69: 	iTemp28 [k40 lr74:83 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _logf_xn_1_1}[r0x104E r0x104F r0x1050 r0x1051 ] = call ___sint2fs [k52 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( int) }
;	.line	69; "logf.c"	xn=n;
	BANKSEL	_logf_n_1_1
	MOVF	_logf_n_1_1,W
	MOVWF	STK00
	MOVF	(_logf_n_1_1 + 1),W
	PAGESEL	___sint2fs
	CALL	___sint2fs
	PAGESEL	$
	BANKSEL	r0x100B
	MOVWF	r0x100B
	MOVF	STK00,W
	MOVWF	r0x100A
	MOVF	STK01,W
	MOVWF	r0x1009
	MOVF	STK02,W
;	.line	70; "logf.c"	return ((xn*C2+Rz)+xn*C1);
	MOVWF	r0x1008
	MOVWF	STK06
	MOVF	r0x1009,W
	MOVWF	STK05
	MOVF	r0x100A,W
	MOVWF	STK04
	MOVF	r0x100B,W
	MOVWF	STK03
	MOVLW	0x83
	MOVWF	STK02
	MOVLW	0x80
	MOVWF	STK01
	MOVLW	0x5e
	MOVWF	STK00
	MOVLW	0xb9
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
;[ICODE] logf.c:70: 	send iTemp30 [k43 lr78:80 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x1052 r0x1053 r0x1054 r0x1055 ]{argreg = 1}
;[ICODE] logf.c:70: 	send iTemp22 [k33 lr71:80 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _logf_Rz_1_1}[r0x104A r0x104B r0x104C r0x104D ]{argreg = 1}
;[ICODE] logf.c:70: 	iTemp31 [k44 lr81:86 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x104A r0x104B r0x104C r0x104D ] = call ___fsadd [k50 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x1007,W
	MOVWF	STK06
	MOVF	r0x1006,W
	MOVWF	STK05
	MOVF	r0x1005,W
	MOVWF	STK04
	MOVF	r0x1004,W
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
	BANKSEL	r0x1004
	MOVWF	r0x1004
	MOVF	STK00,W
	MOVWF	r0x1005
	MOVF	STK01,W
	MOVWF	r0x1006
	MOVF	STK02,W
	MOVWF	r0x1007
;[ICODE] logf.c:70: 	send 0.693359 {literal-float}{argreg = 1}
;[ICODE] logf.c:70: 	send iTemp28 [k40 lr74:83 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _logf_xn_1_1}[r0x104E r0x104F r0x1050 r0x1051 ]{argreg = 1}
;[ICODE] logf.c:70: 	iTemp32 [k45 lr84:86 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x104E r0x104F r0x1050 r0x1051 ] = call ___fsmul [k49 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x1008,W
	MOVWF	STK06
	MOVF	r0x1009,W
	MOVWF	STK05
	MOVF	r0x100A,W
	MOVWF	STK04
	MOVF	r0x100B,W
	MOVWF	STK03
	MOVLW	0x00
	MOVWF	STK02
	MOVLW	0x80
	MOVWF	STK01
	MOVLW	0x31
	MOVWF	STK00
	MOVLW	0x3f
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x100B
	MOVWF	r0x100B
	MOVF	STK00,W
	MOVWF	r0x100A
	MOVF	STK01,W
	MOVWF	r0x1009
	MOVF	STK02,W
	MOVWF	r0x1008
	MOVWF	STK06
	MOVF	r0x1009,W
	MOVWF	STK05
	MOVF	r0x100A,W
	MOVWF	STK04
	MOVF	r0x100B,W
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
	BANKSEL	r0x1004
	MOVWF	r0x1004
	MOVF	STK00,W
	MOVWF	r0x1005
	MOVF	STK01,W
	MOVWF	r0x1006
	MOVF	STK02,W
	MOVWF	r0x1007
	MOVWF	STK02
	MOVF	r0x1006,W
	MOVWF	STK01
	MOVF	r0x1005,W
	MOVWF	STK00
	MOVF	r0x1004,W
;[ICODE] logf.c:70:  _return($6) :
;[ICODE] logf.c:70: 	eproc _logf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float) }
_00110_DS_
	RETURN	
; exit point of _logf


;	code size estimation:
;	  491+   70 =   561 instructions ( 1262 byte)

	end
