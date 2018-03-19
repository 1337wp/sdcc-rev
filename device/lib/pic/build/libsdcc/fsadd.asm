;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:29 2018
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"fsadd.c"
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
	global	___fsadd

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_fsadd_0	udata
r0x100B	res	1
r0x100A	res	1
r0x1009	res	1
r0x1008	res	1
r0x100F	res	1
r0x100E	res	1
r0x100D	res	1
r0x100C	res	1
r0x1010	res	1
r0x1011	res	1
r0x1012	res	1
r0x1013	res	1
r0x1014	res	1
r0x1015	res	1
r0x1016	res	1
r0x1017	res	1
r0x1018	res	1
r0x1019	res	1
r0x101A	res	1
r0x101B	res	1
r0x101C	res	1
r0x101D	res	1
r0x101E	res	1
r0x101F	res	1
r0x1020	res	1
r0x1021	res	1
r0x1022	res	1
___fsadd_fl1_1_1	res	4
___fsadd_fl2_1_1	res	4
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
code_fsadd	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  ___fsadd	;Function start
; 2 exit points
;has an exit
;34 compiler assigned registers:
;   r0x1008
;   STK00
;   r0x1009
;   STK01
;   r0x100A
;   STK02
;   r0x100B
;   STK03
;   r0x100C
;   STK04
;   r0x100D
;   STK05
;   r0x100E
;   STK06
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
;   r0x1019
;   r0x101A
;   r0x101B
;   r0x101C
;   r0x101D
;   r0x101E
;   r0x101F
;   r0x1020
;   r0x1021
;   r0x1022
;; Starting pCode block
;[ICODE] fsadd.c:30:  _entry($30) :
;[ICODE] fsadd.c:30: 	proc ___fsadd [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
___fsadd	;Function start
; 2 exit points
;[ICODE] fsadd.c:30: iTemp0 [k2 lr3:7 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ ___fsadd_a1_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = recv ___fsadd [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
;	.line	30; "fsadd.c"	float __fsadd (float a1, float a2) _FS_REENTRANT
	BANKSEL	r0x1008
	MOVWF	r0x1008
	MOVF	STK00,W
	MOVWF	r0x1009
	MOVF	STK01,W
	MOVWF	r0x100A
	MOVF	STK02,W
	BANKSEL	___fsadd_fl1_1_1
	MOVWF	(___fsadd_fl1_1_1 + 0)
	BANKSEL	r0x100B
	MOVWF	r0x100B
;[ICODE] fsadd.c:30: iTemp1 [k4 lr4:9 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ ___fsadd_a2_1_1}[r0x104C r0x104D r0x104E r0x104F ] = recv ___fsadd [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	STK03,W
	MOVWF	r0x100C
	MOVF	STK04,W
	MOVWF	r0x100D
	MOVF	STK05,W
	MOVWF	r0x100E
	MOVF	STK06,W
	BANKSEL	___fsadd_fl2_1_1
	MOVWF	(___fsadd_fl2_1_1 + 0)
	BANKSEL	r0x100F
	MOVWF	r0x100F
;[ICODE] fsadd.c:35: 	iTemp2 [k6 lr5:132 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fsadd_sign_1_1}[r0x1050 r0x1051 r0x1052 r0x1053 ] := 0x0 {literal-unsigned-long-int}
;	.line	35; "fsadd.c"	unsigned long sign = 0;
	CLRF	r0x1010
	CLRF	r0x1011
	CLRF	r0x1012
	CLRF	r0x1013
;[ICODE] fsadd.c:37: 	iTemp3 [k9 lr6:7 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat] = &[___fsadd_fl1_1_1 [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
;[ICODE] fsadd.c:37: 	*(iTemp3 [k9 lr6:7 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat]) := iTemp0 [k2 lr3:7 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ ___fsadd_a1_1_1}[r0x1048 r0x1049 r0x104A r0x104B ]
;gen.c:7685: size=3/4, offset=0, AOP_TYPE(res)=8
;;105	MOVF	r0x100B,W
;gen.c:7685: size=2/4, offset=1, AOP_TYPE(res)=8
;	.line	37; "fsadd.c"	fl1.f = a1;
	MOVF	r0x100A,W
	BANKSEL	___fsadd_fl1_1_1
	MOVWF	(___fsadd_fl1_1_1 + 1)
;gen.c:7685: size=1/4, offset=2, AOP_TYPE(res)=8
	BANKSEL	r0x1009
	MOVF	r0x1009,W
	BANKSEL	___fsadd_fl1_1_1
	MOVWF	(___fsadd_fl1_1_1 + 2)
;gen.c:7685: size=0/4, offset=3, AOP_TYPE(res)=8
	BANKSEL	r0x1008
	MOVF	r0x1008,W
	BANKSEL	___fsadd_fl1_1_1
	MOVWF	(___fsadd_fl1_1_1 + 3)
;[ICODE] fsadd.c:38: 	iTemp5 [k13 lr8:9 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat] = &[___fsadd_fl2_1_1 [k12 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
;[ICODE] fsadd.c:38: 	*(iTemp5 [k13 lr8:9 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat]) := iTemp1 [k4 lr4:9 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ ___fsadd_a2_1_1}[r0x104C r0x104D r0x104E r0x104F ]
;gen.c:7685: size=3/4, offset=0, AOP_TYPE(res)=8
;;106	MOVF	r0x100F,W
;gen.c:7685: size=2/4, offset=1, AOP_TYPE(res)=8
;	.line	38; "fsadd.c"	fl2.f = a2;
	BANKSEL	r0x100E
	MOVF	r0x100E,W
	BANKSEL	___fsadd_fl2_1_1
	MOVWF	(___fsadd_fl2_1_1 + 1)
;gen.c:7685: size=1/4, offset=2, AOP_TYPE(res)=8
	BANKSEL	r0x100D
	MOVF	r0x100D,W
	BANKSEL	___fsadd_fl2_1_1
	MOVWF	(___fsadd_fl2_1_1 + 2)
;gen.c:7685: size=0/4, offset=3, AOP_TYPE(res)=8
	BANKSEL	r0x100C
	MOVF	r0x100C,W
	BANKSEL	___fsadd_fl2_1_1
	MOVWF	(___fsadd_fl2_1_1 + 3)
;[ICODE] fsadd.c:41: 	iTemp7 [k16 lr10:11 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[___fsadd_fl1_1_1 [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
;[ICODE] fsadd.c:41: 	iTemp9 [k19 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp7 [k16 lr10:11 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]]
;	.line	41; "fsadd.c"	if (!fl1.l)
	BANKSEL	___fsadd_fl1_1_1
	MOVF	(___fsadd_fl1_1_1 + 0),W
	BANKSEL	r0x100B
	MOVWF	r0x100B
	BANKSEL	___fsadd_fl1_1_1
	MOVF	(___fsadd_fl1_1_1 + 1),W
	BANKSEL	r0x100A
	MOVWF	r0x100A
	BANKSEL	___fsadd_fl1_1_1
	MOVF	(___fsadd_fl1_1_1 + 2),W
	BANKSEL	r0x1009
	MOVWF	r0x1009
	BANKSEL	___fsadd_fl1_1_1
	MOVF	(___fsadd_fl1_1_1 + 3),W
	BANKSEL	r0x1008
	MOVWF	r0x1008
;[ICODE] fsadd.c:41: 	if iTemp9 [k19 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] != 0 goto _iffalse_0($2)
	MOVF	r0x100B,W
	IORWF	r0x100A,W
	IORWF	r0x1009,W
	IORWF	r0x1008,W
	BTFSS	STATUS,2
	GOTO	_00106_DS_
;[ICODE] fsadd.c:42: 	iTemp10 [k20 lr13:14 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat] = &[___fsadd_fl2_1_1 [k12 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
;[ICODE] fsadd.c:42: 	iTemp12 [k23 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-float}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp10 [k20 lr13:14 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat]]
;	.line	42; "fsadd.c"	return (fl2.f);
	BANKSEL	___fsadd_fl2_1_1
	MOVF	(___fsadd_fl2_1_1 + 0),W
	BANKSEL	r0x100B
	MOVWF	r0x100B
	BANKSEL	___fsadd_fl2_1_1
	MOVF	(___fsadd_fl2_1_1 + 1),W
	BANKSEL	r0x100A
	MOVWF	r0x100A
	BANKSEL	___fsadd_fl2_1_1
	MOVF	(___fsadd_fl2_1_1 + 2),W
	BANKSEL	r0x1009
	MOVWF	r0x1009
	BANKSEL	___fsadd_fl2_1_1
	MOVF	(___fsadd_fl2_1_1 + 3),W
	BANKSEL	r0x1008
	MOVWF	r0x1008
;[ICODE] fsadd.c:42: 	ret iTemp12 [k23 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-float}[r0x1048 r0x1049 r0x104A r0x104B ]
	MOVF	r0x100B,W
	MOVWF	STK02
	MOVF	r0x100A,W
	MOVWF	STK01
	MOVF	r0x1009,W
	MOVWF	STK00
	MOVF	r0x1008,W
	GOTO	_00133_DS_
;[ICODE] fsadd.c:42:  _iffalse_0($2) :
;[ICODE] fsadd.c:43: 	iTemp13 [k24 lr17:18 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[___fsadd_fl2_1_1 [k12 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
;[ICODE] fsadd.c:43: 	iTemp15 [k27 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp13 [k24 lr17:18 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]]
_00106_DS_
;	.line	43; "fsadd.c"	if (!fl2.l)
	BANKSEL	___fsadd_fl2_1_1
	MOVF	(___fsadd_fl2_1_1 + 0),W
	BANKSEL	r0x100B
	MOVWF	r0x100B
	BANKSEL	___fsadd_fl2_1_1
	MOVF	(___fsadd_fl2_1_1 + 1),W
	BANKSEL	r0x100A
	MOVWF	r0x100A
	BANKSEL	___fsadd_fl2_1_1
	MOVF	(___fsadd_fl2_1_1 + 2),W
	BANKSEL	r0x1009
	MOVWF	r0x1009
	BANKSEL	___fsadd_fl2_1_1
	MOVF	(___fsadd_fl2_1_1 + 3),W
	BANKSEL	r0x1008
	MOVWF	r0x1008
;[ICODE] fsadd.c:43: 	if iTemp15 [k27 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] != 0 goto _iffalse_1($4)
	MOVF	r0x100B,W
	IORWF	r0x100A,W
	IORWF	r0x1009,W
	IORWF	r0x1008,W
	BTFSS	STATUS,2
	GOTO	_00108_DS_
;[ICODE] fsadd.c:44: 	iTemp16 [k28 lr20:21 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat] = &[___fsadd_fl1_1_1 [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
;[ICODE] fsadd.c:44: 	iTemp18 [k31 lr21:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-float}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp16 [k28 lr20:21 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat]]
;	.line	44; "fsadd.c"	return (fl1.f);
	BANKSEL	___fsadd_fl1_1_1
	MOVF	(___fsadd_fl1_1_1 + 0),W
	BANKSEL	r0x100B
	MOVWF	r0x100B
	BANKSEL	___fsadd_fl1_1_1
	MOVF	(___fsadd_fl1_1_1 + 1),W
	BANKSEL	r0x100A
	MOVWF	r0x100A
	BANKSEL	___fsadd_fl1_1_1
	MOVF	(___fsadd_fl1_1_1 + 2),W
	BANKSEL	r0x1009
	MOVWF	r0x1009
	BANKSEL	___fsadd_fl1_1_1
	MOVF	(___fsadd_fl1_1_1 + 3),W
	BANKSEL	r0x1008
	MOVWF	r0x1008
;[ICODE] fsadd.c:44: 	ret iTemp18 [k31 lr21:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-float}[r0x1048 r0x1049 r0x104A r0x104B ]
	MOVF	r0x100B,W
	MOVWF	STK02
	MOVF	r0x100A,W
	MOVWF	STK01
	MOVF	r0x1009,W
	MOVWF	STK00
	MOVF	r0x1008,W
	GOTO	_00133_DS_
;[ICODE] fsadd.c:44:  _iffalse_1($4) :
;[ICODE] fsadd.c:46: 	iTemp20 [k34 lr24:25 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[___fsadd_fl1_1_1 [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
;[ICODE] fsadd.c:46: 	iTemp22 [k37 lr25:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp20 [k34 lr24:25 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]]
_00108_DS_
;	.line	46; "fsadd.c"	exp1 = EXP (fl1.l);
	BANKSEL	___fsadd_fl1_1_1
	MOVF	(___fsadd_fl1_1_1 + 0),W
	BANKSEL	r0x100B
	MOVWF	r0x100B
	BANKSEL	___fsadd_fl1_1_1
	MOVF	(___fsadd_fl1_1_1 + 1),W
	BANKSEL	r0x100A
	MOVWF	r0x100A
	BANKSEL	___fsadd_fl1_1_1
	MOVF	(___fsadd_fl1_1_1 + 2),W
	BANKSEL	r0x1009
	MOVWF	r0x1009
	BANKSEL	___fsadd_fl1_1_1
	MOVF	(___fsadd_fl1_1_1 + 3),W
	BANKSEL	r0x1008
	MOVWF	r0x1008
;[ICODE] fsadd.c:46: 	iTemp23 [k38 lr26:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x104C r0x104D r0x104E r0x104F ] = iTemp22 [k37 lr25:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] >> 0x17 {literal-unsigned-char}
	RLF	r0x1009,W
	RLF	r0x1008,W
	MOVWF	r0x100B
	MOVWF	r0x100F
	CLRF	r0x100E
	RLF	r0x100E,F
	CLRF	r0x100D
	CLRF	r0x100C
;[ICODE] fsadd.c:46: 	iTemp24 [k39 lr27:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp23 [k38 lr26:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x104C r0x104D r0x104E r0x104F ] & 0xff {literal-unsigned-long-int}
;;100	MOVF	r0x100F,W
	CLRF	r0x100A
	CLRF	r0x1009
	CLRF	r0x1008
;[ICODE] fsadd.c:46: 	iTemp19 [k32 lr28:101 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ ___fsadd_exp1_1_1}[r0x104C r0x104D ] = (int)iTemp24 [k39 lr27:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x1048 r0x1049 r0x104A r0x104B ]
	MOVF	r0x100B,W
	MOVWF	r0x100F
	MOVLW	0x00
	MOVWF	r0x100E
;[ICODE] fsadd.c:47: 	iTemp27 [k43 lr30:31 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[___fsadd_fl2_1_1 [k12 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
;[ICODE] fsadd.c:47: 	iTemp29 [k46 lr31:32 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp27 [k43 lr30:31 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]]
;	.line	47; "fsadd.c"	exp2 = EXP (fl2.l);
	BANKSEL	___fsadd_fl2_1_1
	MOVF	(___fsadd_fl2_1_1 + 0),W
	BANKSEL	r0x100B
	MOVWF	r0x100B
	BANKSEL	___fsadd_fl2_1_1
	MOVF	(___fsadd_fl2_1_1 + 1),W
	BANKSEL	r0x100A
	MOVWF	r0x100A
	BANKSEL	___fsadd_fl2_1_1
	MOVF	(___fsadd_fl2_1_1 + 2),W
	BANKSEL	r0x1009
	MOVWF	r0x1009
	BANKSEL	___fsadd_fl2_1_1
	MOVF	(___fsadd_fl2_1_1 + 3),W
	BANKSEL	r0x1008
	MOVWF	r0x1008
;[ICODE] fsadd.c:47: 	iTemp30 [k47 lr32:33 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x104E r0x104F r0x1054 r0x1055 ] = iTemp29 [k46 lr31:32 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] >> 0x17 {literal-unsigned-char}
	RLF	r0x1009,W
	RLF	r0x1008,W
	MOVWF	r0x100B
	MOVWF	r0x100D
	CLRF	r0x100C
	RLF	r0x100C,F
	CLRF	r0x1014
	CLRF	r0x1015
;[ICODE] fsadd.c:47: 	iTemp31 [k48 lr33:34 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp30 [k47 lr32:33 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x104E r0x104F r0x1054 r0x1055 ] & 0xff {literal-unsigned-long-int}
;;107	MOVF	r0x100D,W
	CLRF	r0x100A
	CLRF	r0x1009
	CLRF	r0x1008
;[ICODE] fsadd.c:47: 	iTemp26 [k41 lr34:86 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ ___fsadd_exp2_1_1}[r0x104E r0x104F ] = (int)iTemp31 [k48 lr33:34 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x1048 r0x1049 r0x104A r0x104B ]
;;99	MOVF	r0x100B,W
	MOVLW	0x00
	MOVWF	r0x100C
;[ICODE] fsadd.c:49: 	iTemp33 [k50 lr36:37 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x1048 r0x1049 ] = iTemp26 [k41 lr34:86 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ ___fsadd_exp2_1_1}[r0x104E r0x104F ] + 0x19 {literal-int}
;	.line	49; "fsadd.c"	if (exp1 > exp2 + 25)
	MOVLW	0x19
	ADDWF	r0x100D,W
	MOVWF	r0x100B
	CLRF	r0x100A
	RLF	r0x100A,F
	MOVF	r0x100C,W
	ADDWF	r0x100A,F
;[ICODE] fsadd.c:49: 	iTemp34 [k51 lr37:38 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp19 [k32 lr28:101 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ ___fsadd_exp1_1_1}[r0x104C r0x104D ] > iTemp33 [k50 lr36:37 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x1048 r0x1049 ]
	MOVF	r0x100A,W
	ADDLW	0x80
	MOVWF	r0x1016
	MOVF	r0x100E,W
	ADDLW	0x80
	SUBWF	r0x1016,W
	BTFSS	STATUS,2
	GOTO	_00151_DS_
	MOVF	r0x100F,W
	SUBWF	r0x100B,W
_00151_DS_
	BTFSC	STATUS,0
	GOTO	_00110_DS_
;genSkipc:3225: created from rifx:0x7ffd73963df0
;[ICODE] fsadd.c:49: 	if iTemp34 [k51 lr37:38 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_2($6)
;[ICODE] fsadd.c:50: 	iTemp35 [k52 lr39:40 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat] = &[___fsadd_fl1_1_1 [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
;[ICODE] fsadd.c:50: 	iTemp37 [k55 lr40:41 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-float}[r0x1048 r0x1049 r0x1054 r0x1055 ] = @[iTemp35 [k52 lr39:40 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat]]
;	.line	50; "fsadd.c"	return (fl1.f);
	BANKSEL	___fsadd_fl1_1_1
	MOVF	(___fsadd_fl1_1_1 + 0),W
	BANKSEL	r0x100B
	MOVWF	r0x100B
	BANKSEL	___fsadd_fl1_1_1
	MOVF	(___fsadd_fl1_1_1 + 1),W
	BANKSEL	r0x100A
	MOVWF	r0x100A
	BANKSEL	___fsadd_fl1_1_1
	MOVF	(___fsadd_fl1_1_1 + 2),W
	BANKSEL	r0x1014
	MOVWF	r0x1014
	BANKSEL	___fsadd_fl1_1_1
	MOVF	(___fsadd_fl1_1_1 + 3),W
	BANKSEL	r0x1015
	MOVWF	r0x1015
;[ICODE] fsadd.c:50: 	ret iTemp37 [k55 lr40:41 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-float}[r0x1048 r0x1049 r0x1054 r0x1055 ]
	MOVF	r0x100B,W
	MOVWF	STK02
	MOVF	r0x100A,W
	MOVWF	STK01
	MOVF	r0x1014,W
	MOVWF	STK00
	MOVF	r0x1015,W
	GOTO	_00133_DS_
;[ICODE] fsadd.c:50:  _iffalse_2($6) :
;[ICODE] fsadd.c:51: 	iTemp38 [k56 lr43:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x1048 r0x1049 ] = iTemp19 [k32 lr28:101 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ ___fsadd_exp1_1_1}[r0x104C r0x104D ] + 0x19 {literal-int}
_00110_DS_
;	.line	51; "fsadd.c"	if (exp2 > exp1 + 25)
	MOVLW	0x19
	BANKSEL	r0x100F
	ADDWF	r0x100F,W
	MOVWF	r0x100B
	CLRF	r0x100A
	RLF	r0x100A,F
	MOVF	r0x100E,W
	ADDWF	r0x100A,F
;[ICODE] fsadd.c:51: 	iTemp39 [k57 lr44:45 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp26 [k41 lr34:86 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ ___fsadd_exp2_1_1}[r0x104E r0x104F ] > iTemp38 [k56 lr43:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x1048 r0x1049 ]
	MOVF	r0x100A,W
	ADDLW	0x80
	MOVWF	r0x1016
	MOVF	r0x100C,W
	ADDLW	0x80
	SUBWF	r0x1016,W
	BTFSS	STATUS,2
	GOTO	_00152_DS_
	MOVF	r0x100D,W
	SUBWF	r0x100B,W
_00152_DS_
	BTFSC	STATUS,0
	GOTO	_00112_DS_
;genSkipc:3225: created from rifx:0x7ffd73963df0
;[ICODE] fsadd.c:51: 	if iTemp39 [k57 lr44:45 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_3($8)
;[ICODE] fsadd.c:52: 	iTemp40 [k58 lr46:47 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat] = &[___fsadd_fl2_1_1 [k12 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
;[ICODE] fsadd.c:52: 	iTemp42 [k61 lr47:48 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-float}[r0x1048 r0x1049 r0x1054 r0x1055 ] = @[iTemp40 [k58 lr46:47 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat]]
;	.line	52; "fsadd.c"	return (fl2.f);
	BANKSEL	___fsadd_fl2_1_1
	MOVF	(___fsadd_fl2_1_1 + 0),W
	BANKSEL	r0x100B
	MOVWF	r0x100B
	BANKSEL	___fsadd_fl2_1_1
	MOVF	(___fsadd_fl2_1_1 + 1),W
	BANKSEL	r0x100A
	MOVWF	r0x100A
	BANKSEL	___fsadd_fl2_1_1
	MOVF	(___fsadd_fl2_1_1 + 2),W
	BANKSEL	r0x1014
	MOVWF	r0x1014
	BANKSEL	___fsadd_fl2_1_1
	MOVF	(___fsadd_fl2_1_1 + 3),W
	BANKSEL	r0x1015
	MOVWF	r0x1015
;[ICODE] fsadd.c:52: 	ret iTemp42 [k61 lr47:48 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-float}[r0x1048 r0x1049 r0x1054 r0x1055 ]
	MOVF	r0x100B,W
	MOVWF	STK02
	MOVF	r0x100A,W
	MOVWF	STK01
	MOVF	r0x1014,W
	MOVWF	STK00
	MOVF	r0x1015,W
	GOTO	_00133_DS_
;[ICODE] fsadd.c:52:  _iffalse_3($8) :
;[ICODE] fsadd.c:54: 	iTemp44 [k64 lr50:51 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[___fsadd_fl1_1_1 [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
;[ICODE] fsadd.c:54: 	iTemp46 [k67 lr51:52 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x1048 r0x1049 r0x1054 r0x1055 ] = @[iTemp44 [k64 lr50:51 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]]
_00112_DS_
;	.line	54; "fsadd.c"	mant1 = MANT (fl1.l);
	BANKSEL	___fsadd_fl1_1_1
	MOVF	(___fsadd_fl1_1_1 + 0),W
	BANKSEL	r0x100B
	MOVWF	r0x100B
	BANKSEL	___fsadd_fl1_1_1
	MOVF	(___fsadd_fl1_1_1 + 1),W
	BANKSEL	r0x100A
	MOVWF	r0x100A
	BANKSEL	___fsadd_fl1_1_1
	MOVF	(___fsadd_fl1_1_1 + 2),W
	BANKSEL	r0x1014
	MOVWF	r0x1014
	BANKSEL	___fsadd_fl1_1_1
	MOVF	(___fsadd_fl1_1_1 + 3),W
	BANKSEL	r0x1015
	MOVWF	r0x1015
;[ICODE] fsadd.c:54: 	iTemp47 [k68 lr52:53 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x1048 r0x1049 r0x1054 r0x1055 ] = iTemp46 [k67 lr51:52 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x1048 r0x1049 r0x1054 r0x1055 ] & 0x7fffff {literal-unsigned-long-int}
	BCF	r0x1014,7
	CLRF	r0x1015
;[ICODE] fsadd.c:54: 	iTemp43 [k62 lr53:133 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fsadd_mant1_1_1}[r0x1048 r0x1049 r0x1054 r0x1055 ] = iTemp47 [k68 lr52:53 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x1048 r0x1049 r0x1054 r0x1055 ] | 0x800000 {literal-unsigned-long-int}
	BSF	r0x1014,7
;[ICODE] fsadd.c:55: 	iTemp50 [k72 lr55:56 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[___fsadd_fl2_1_1 [k12 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
;[ICODE] fsadd.c:55: 	iTemp52 [k75 lr56:57 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x1056 r0x1057 r0x1058 r0x1059 ] = @[iTemp50 [k72 lr55:56 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]]
;	.line	55; "fsadd.c"	mant2 = MANT (fl2.l);
	BANKSEL	___fsadd_fl2_1_1
	MOVF	(___fsadd_fl2_1_1 + 0),W
	BANKSEL	r0x1016
	MOVWF	r0x1016
	BANKSEL	___fsadd_fl2_1_1
	MOVF	(___fsadd_fl2_1_1 + 1),W
	BANKSEL	r0x1017
	MOVWF	r0x1017
	BANKSEL	___fsadd_fl2_1_1
	MOVF	(___fsadd_fl2_1_1 + 2),W
	BANKSEL	r0x1018
	MOVWF	r0x1018
	BANKSEL	___fsadd_fl2_1_1
	MOVF	(___fsadd_fl2_1_1 + 3),W
	BANKSEL	r0x1019
	MOVWF	r0x1019
;[ICODE] fsadd.c:55: 	iTemp53 [k76 lr57:58 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x1056 r0x1057 r0x1058 r0x1059 ] = iTemp52 [k75 lr56:57 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x1056 r0x1057 r0x1058 r0x1059 ] & 0x7fffff {literal-unsigned-long-int}
	BCF	r0x1018,7
	CLRF	r0x1019
;[ICODE] fsadd.c:55: 	iTemp49 [k70 lr58:88 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fsadd_mant2_1_1}[r0x1056 r0x1057 r0x1058 r0x1059 ] = iTemp53 [k76 lr57:58 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x1056 r0x1057 r0x1058 r0x1059 ] | 0x800000 {literal-unsigned-long-int}
	BSF	r0x1018,7
;[ICODE] fsadd.c:57: 	iTemp55 [k78 lr60:61 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[___fsadd_fl1_1_1 [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
;[ICODE] fsadd.c:57: 	iTemp57 [k81 lr61:62 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x105A r0x105B r0x105C r0x105D ] = @[iTemp55 [k78 lr60:61 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]]
;	.line	57; "fsadd.c"	if (SIGN (fl1.l))
	BANKSEL	___fsadd_fl1_1_1
	MOVF	(___fsadd_fl1_1_1 + 0),W
	BANKSEL	r0x101A
	MOVWF	r0x101A
	BANKSEL	___fsadd_fl1_1_1
	MOVF	(___fsadd_fl1_1_1 + 1),W
	BANKSEL	r0x101B
	MOVWF	r0x101B
	BANKSEL	___fsadd_fl1_1_1
	MOVF	(___fsadd_fl1_1_1 + 2),W
	BANKSEL	r0x101C
	MOVWF	r0x101C
	BANKSEL	___fsadd_fl1_1_1
	MOVF	(___fsadd_fl1_1_1 + 3),W
	BANKSEL	r0x101D
	MOVWF	r0x101D
;[ICODE] fsadd.c:57: 	iTemp58 [k82 lr62:63 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x105E r0x105F r0x1060 r0x1061 ] = iTemp57 [k81 lr61:62 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x105A r0x105B r0x105C r0x105D ] >> 0x1f {literal-unsigned-char}
	RLF	r0x101D,W
	CLRF	r0x101E
	RLF	r0x101E,F
	CLRF	r0x101F
	CLRF	r0x1020
	CLRF	r0x1021
;[ICODE] fsadd.c:57: 	iTemp59 [k83 lr63:64 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int} = iTemp58 [k82 lr62:63 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x105E r0x105F r0x1060 r0x1061 ] & 0x1 {literal-unsigned-long-int}
	BTFSS	r0x101E,0
	GOTO	_00114_DS_
;[ICODE] fsadd.c:57: 	if iTemp59 [k83 lr63:64 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int} == 0 goto _iffalse_4($10)
;[ICODE] fsadd.c:58: 	iTemp43 [k62 lr53:133 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fsadd_mant1_1_1}[r0x1048 r0x1049 r0x1054 r0x1055 ] = - iTemp43 [k62 lr53:133 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fsadd_mant1_1_1}[r0x1048 r0x1049 r0x1054 r0x1055 ]
;	.line	58; "fsadd.c"	mant1 = -mant1;
	COMF	r0x100B,F
	COMF	r0x100A,F
	COMF	r0x1014,F
	COMF	r0x1015,F
	INCF	r0x100B,F
	BTFSC	STATUS,2
	INCF	r0x100A,F
	BTFSC	STATUS,2
	INCF	r0x1014,F
	BTFSC	STATUS,2
	INCF	r0x1015,F
;[ICODE] fsadd.c:58:  _iffalse_4($10) :
;[ICODE] fsadd.c:59: 	iTemp61 [k85 lr68:69 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[___fsadd_fl2_1_1 [k12 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
;[ICODE] fsadd.c:59: 	iTemp63 [k88 lr69:70 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x105A r0x105B r0x105C r0x105D ] = @[iTemp61 [k85 lr68:69 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]]
_00114_DS_
;	.line	59; "fsadd.c"	if (SIGN (fl2.l))
	BANKSEL	___fsadd_fl2_1_1
	MOVF	(___fsadd_fl2_1_1 + 0),W
	BANKSEL	r0x101A
	MOVWF	r0x101A
	BANKSEL	___fsadd_fl2_1_1
	MOVF	(___fsadd_fl2_1_1 + 1),W
	BANKSEL	r0x101B
	MOVWF	r0x101B
	BANKSEL	___fsadd_fl2_1_1
	MOVF	(___fsadd_fl2_1_1 + 2),W
	BANKSEL	r0x101C
	MOVWF	r0x101C
	BANKSEL	___fsadd_fl2_1_1
	MOVF	(___fsadd_fl2_1_1 + 3),W
	BANKSEL	r0x101D
	MOVWF	r0x101D
;[ICODE] fsadd.c:59: 	iTemp64 [k89 lr70:71 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x105E r0x105F r0x1060 r0x1061 ] = iTemp63 [k88 lr69:70 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x105A r0x105B r0x105C r0x105D ] >> 0x1f {literal-unsigned-char}
	RLF	r0x101D,W
	CLRF	r0x101E
	RLF	r0x101E,F
	CLRF	r0x101F
	CLRF	r0x1020
	CLRF	r0x1021
;[ICODE] fsadd.c:59: 	iTemp65 [k90 lr71:72 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int} = iTemp64 [k89 lr70:71 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x105E r0x105F r0x1060 r0x1061 ] & 0x1 {literal-unsigned-long-int}
	BTFSS	r0x101E,0
	GOTO	_00116_DS_
;[ICODE] fsadd.c:59: 	if iTemp65 [k90 lr71:72 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int} == 0 goto _iffalse_5($12)
;[ICODE] fsadd.c:60: 	iTemp49 [k70 lr58:88 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fsadd_mant2_1_1}[r0x1056 r0x1057 r0x1058 r0x1059 ] = - iTemp49 [k70 lr58:88 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fsadd_mant2_1_1}[r0x1056 r0x1057 r0x1058 r0x1059 ]
;	.line	60; "fsadd.c"	mant2 = -mant2;
	COMF	r0x1016,F
	COMF	r0x1017,F
	COMF	r0x1018,F
	COMF	r0x1019,F
	INCF	r0x1016,F
	BTFSC	STATUS,2
	INCF	r0x1017,F
	BTFSC	STATUS,2
	INCF	r0x1018,F
	BTFSC	STATUS,2
	INCF	r0x1019,F
;[ICODE] fsadd.c:60:  _iffalse_5($12) :
;[ICODE] fsadd.c:62: 	iTemp67 [k92 lr76:77 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp19 [k32 lr28:101 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ ___fsadd_exp1_1_1}[r0x104C r0x104D ] > iTemp26 [k41 lr34:86 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ ___fsadd_exp2_1_1}[r0x104E r0x104F ]
_00116_DS_
;	.line	62; "fsadd.c"	if (exp1 > exp2)
	BANKSEL	r0x100C
	MOVF	r0x100C,W
	ADDLW	0x80
	MOVWF	r0x1022
	MOVF	r0x100E,W
	ADDLW	0x80
	SUBWF	r0x1022,W
	BTFSS	STATUS,2
	GOTO	_00153_DS_
	MOVF	r0x100F,W
	SUBWF	r0x100D,W
_00153_DS_
	BTFSC	STATUS,0
	GOTO	_00118_DS_
;genSkipc:3225: created from rifx:0x7ffd73963df0
;[ICODE] fsadd.c:62: 	if iTemp67 [k92 lr76:77 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_6($14)
;[ICODE] fsadd.c:64: 	iTemp68 [k93 lr78:79 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x105A r0x105B ] = iTemp19 [k32 lr28:101 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ ___fsadd_exp1_1_1}[r0x104C r0x104D ] - iTemp26 [k41 lr34:86 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ ___fsadd_exp2_1_1}[r0x104E r0x104F ]
;	.line	64; "fsadd.c"	mant2 >>= exp1 - exp2;
	BANKSEL	r0x100D
	MOVF	r0x100D,W
	SUBWF	r0x100F,W
	MOVWF	r0x101A
	MOVF	r0x100C,W
	BTFSS	STATUS,0
	INCF	r0x100C,W
	SUBWF	r0x100E,W
	MOVWF	r0x101B
;[ICODE] fsadd.c:64: 	iTemp49 [k70 lr58:88 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fsadd_mant2_1_1}[r0x1056 r0x1057 r0x1058 r0x1059 ] = iTemp49 [k70 lr58:88 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fsadd_mant2_1_1}[r0x1056 r0x1057 r0x1058 r0x1059 ] >> iTemp68 [k93 lr78:79 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x105A r0x105B ]
	MOVF	r0x101A,W
	BTFSC	r0x101A,7
	GOTO	_00156_DS_
	SUBLW	0x00
	BTFSC	STATUS,2
	GOTO	_00155_DS_
_00154_DS_
	BANKSEL	r0x1019
	RRF	r0x1019,F
	RRF	r0x1018,F
	RRF	r0x1017,F
	RRF	r0x1016,F
	ADDLW	0x01
	BTFSS	STATUS,0
	GOTO	_00154_DS_
	GOTO	_00155_DS_
_00156_DS_
	BCF	STATUS,0
_00157_DS_
	BANKSEL	r0x1016
	RLF	r0x1016,F
	RLF	r0x1017,F
	RLF	r0x1018,F
	RLF	r0x1019,F
	ADDLW	0x01
	BTFSS	STATUS,0
	GOTO	_00157_DS_
;[ICODE] fsadd.c:64: 	 goto _ifend_6($15)
_00155_DS_
	GOTO	_00119_DS_
;[ICODE] fsadd.c:64:  _iffalse_6($14) :
;[ICODE] fsadd.c:68: 	iTemp70 [k95 lr83:84 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x105A r0x105B ] = iTemp26 [k41 lr34:86 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ ___fsadd_exp2_1_1}[r0x104E r0x104F ] - iTemp19 [k32 lr28:101 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ ___fsadd_exp1_1_1}[r0x104C r0x104D ]
_00118_DS_
;	.line	68; "fsadd.c"	mant1 >>= exp2 - exp1;
	BANKSEL	r0x100F
	MOVF	r0x100F,W
	SUBWF	r0x100D,W
	MOVWF	r0x101A
	MOVF	r0x100E,W
	BTFSS	STATUS,0
	INCF	r0x100E,W
	SUBWF	r0x100C,W
	MOVWF	r0x101B
;[ICODE] fsadd.c:68: 	iTemp43 [k62 lr53:133 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fsadd_mant1_1_1}[r0x1048 r0x1049 r0x1054 r0x1055 ] = iTemp43 [k62 lr53:133 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fsadd_mant1_1_1}[r0x1048 r0x1049 r0x1054 r0x1055 ] >> iTemp70 [k95 lr83:84 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x105A r0x105B ]
	MOVF	r0x101A,W
	BTFSC	r0x101A,7
	GOTO	_00160_DS_
	SUBLW	0x00
	BTFSC	STATUS,2
	GOTO	_00159_DS_
_00158_DS_
	BANKSEL	r0x1015
	RRF	r0x1015,F
	RRF	r0x1014,F
	RRF	r0x100A,F
	RRF	r0x100B,F
	ADDLW	0x01
	BTFSS	STATUS,0
	GOTO	_00158_DS_
	GOTO	_00159_DS_
_00160_DS_
	BCF	STATUS,0
_00161_DS_
	BANKSEL	r0x100B
	RLF	r0x100B,F
	RLF	r0x100A,F
	RLF	r0x1014,F
	RLF	r0x1015,F
	ADDLW	0x01
	BTFSS	STATUS,0
	GOTO	_00161_DS_
;[ICODE] fsadd.c:69: 	iTemp19 [k32 lr28:101 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ ___fsadd_exp1_1_1}[r0x104C r0x104D ] := iTemp26 [k41 lr34:86 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ ___fsadd_exp2_1_1}[r0x104E r0x104F ]
_00159_DS_
;	.line	69; "fsadd.c"	exp1 = exp2;
	BANKSEL	r0x100D
	MOVF	r0x100D,W
	MOVWF	r0x100F
	MOVF	r0x100C,W
	MOVWF	r0x100E
;[ICODE] fsadd.c:69:  _ifend_6($15) :
;[ICODE] fsadd.c:71: 	iTemp43 [k62 lr53:133 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fsadd_mant1_1_1}[r0x1048 r0x1049 r0x1054 r0x1055 ] = iTemp43 [k62 lr53:133 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fsadd_mant1_1_1}[r0x1048 r0x1049 r0x1054 r0x1055 ] + iTemp49 [k70 lr58:88 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fsadd_mant2_1_1}[r0x1056 r0x1057 r0x1058 r0x1059 ]
_00119_DS_
;	.line	71; "fsadd.c"	mant1 += mant2;
	BANKSEL	r0x1016
	MOVF	r0x1016,W
	ADDWF	r0x100B,F
	MOVF	r0x1017,W
	BTFSC	STATUS,0
	INCFSZ	r0x1017,W
	ADDWF	r0x100A,F
	MOVF	r0x1018,W
	BTFSC	STATUS,0
	INCFSZ	r0x1018,W
	ADDWF	r0x1014,F
	MOVF	r0x1019,W
	BTFSC	STATUS,0
	INCFSZ	r0x1019,W
	ADDWF	r0x1015,F
;[ICODE] fsadd.c:73: 	iTemp73 [k98 lr90:91 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int}[r0x104E r0x104F r0x1056 r0x1057 ] := iTemp43 [k62 lr53:133 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fsadd_mant1_1_1}[r0x1048 r0x1049 r0x1054 r0x1055 ]
;	.line	73; "fsadd.c"	if ((long)mant1 < 0)
	MOVF	r0x100B,W
	MOVWF	r0x100D
	MOVF	r0x100A,W
	MOVWF	r0x100C
	MOVF	r0x1014,W
	MOVWF	r0x1016
	MOVF	r0x1015,W
	MOVWF	r0x1017
;[ICODE] fsadd.c:73: 	iTemp74 [k99 lr91:92 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp73 [k98 lr90:91 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int}[r0x104E r0x104F r0x1056 r0x1057 ] < 0x0 {literal-long-int}
;signed compare: left < lit(0x0=0), size=4, mask=ffffffff
	BSF	STATUS,0
	BTFSS	r0x1017,7
	BCF	STATUS,0
	BTFSS	STATUS,0
	GOTO	_00123_DS_
;genSkipc:3225: created from rifx:0x7ffd73963df0
;[ICODE] fsadd.c:73: 	if iTemp74 [k99 lr91:92 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_8($19)
;[ICODE] fsadd.c:75: 	iTemp43 [k62 lr53:133 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fsadd_mant1_1_1}[r0x1048 r0x1049 r0x1054 r0x1055 ] = - iTemp43 [k62 lr53:133 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fsadd_mant1_1_1}[r0x1048 r0x1049 r0x1054 r0x1055 ]
;	.line	75; "fsadd.c"	mant1 = -mant1;
	COMF	r0x100B,F
	COMF	r0x100A,F
	COMF	r0x1014,F
	COMF	r0x1015,F
	INCF	r0x100B,F
	BTFSC	STATUS,2
	INCF	r0x100A,F
	BTFSC	STATUS,2
	INCF	r0x1014,F
	BTFSC	STATUS,2
	INCF	r0x1015,F
;[ICODE] fsadd.c:76: 	iTemp2 [k6 lr5:132 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fsadd_sign_1_1}[r0x1050 r0x1051 r0x1052 r0x1053 ] := 0x80000000 {literal-unsigned-long-int}
;	.line	76; "fsadd.c"	sign = SIGNBIT;
	CLRF	r0x1010
	CLRF	r0x1011
	CLRF	r0x1012
	MOVLW	0x80
	MOVWF	r0x1013
;[ICODE] fsadd.c:76: 	 goto preHeaderLbl0($41)
	GOTO	_00125_DS_
;[ICODE] fsadd.c:76:  _iffalse_8($19) :
;[ICODE] fsadd.c:78: 	if iTemp43 [k62 lr53:133 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fsadd_mant1_1_1}[r0x1048 r0x1049 r0x1054 r0x1055 ] != 0 goto preHeaderLbl0($41)
_00123_DS_
;	.line	78; "fsadd.c"	else if (!mant1)
	BANKSEL	r0x100B
	MOVF	r0x100B,W
	IORWF	r0x100A,W
	IORWF	r0x1014,W
	IORWF	r0x1015,W
	BTFSS	STATUS,2
	GOTO	_00125_DS_
;[ICODE] fsadd.c:79: 	ret 0 {literal-float}
;	.line	79; "fsadd.c"	return (0);
	MOVLW	0x00
	MOVWF	STK02
	MOVLW	0x00
	MOVWF	STK01
	MOVLW	0x00
	MOVWF	STK00
	MOVLW	0x00
	GOTO	_00133_DS_
;[ICODE] fsadd.c:82:  preHeaderLbl0($41) :
;[ICODE] fsadd.c:82: 	iTemp79 [k104 lr101:111 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x104C r0x104D ] := iTemp19 [k32 lr28:101 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ ___fsadd_exp1_1_1}[r0x104C r0x104D ]
;[ICODE] fsadd.c:82:  _whilecontinue_0($21) :
;[ICODE] fsadd.c:82: 	iTemp76 [k101 lr103:104 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp43 [k62 lr53:133 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fsadd_mant1_1_1}[r0x1048 r0x1049 r0x1054 r0x1055 ] < 0x800000 {literal-unsigned-long-int}
;unsigned compare: left < lit(0x800000=8388608), size=4
_00125_DS_
;	.line	82; "fsadd.c"	while (mant1<HIDDEN) {
	MOVLW	0x00
	BANKSEL	r0x1015
	SUBWF	r0x1015,W
	BTFSS	STATUS,2
	GOTO	_00162_DS_
	MOVLW	0x80
	SUBWF	r0x1014,W
	BTFSS	STATUS,2
	GOTO	_00162_DS_
	MOVLW	0x00
	SUBWF	r0x100A,W
	BTFSS	STATUS,2
	GOTO	_00162_DS_
	MOVLW	0x00
	SUBWF	r0x100B,W
_00162_DS_
	BTFSC	STATUS,0
	GOTO	_00130_DS_
;genSkipc:3225: created from rifx:0x7ffd73963df0
;[ICODE] fsadd.c:82: 	if iTemp76 [k101 lr103:104 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto preHeaderLbl1($44)
;[ICODE] fsadd.c:83: 	iTemp43 [k62 lr53:133 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fsadd_mant1_1_1}[r0x1048 r0x1049 r0x1054 r0x1055 ] = iTemp43 [k62 lr53:133 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fsadd_mant1_1_1}[r0x1048 r0x1049 r0x1054 r0x1055 ] << 0x1 {literal-unsigned-char}
;	.line	83; "fsadd.c"	mant1 <<= 1;
	BCF	STATUS,0
	BANKSEL	r0x100B
	RLF	r0x100B,F
	RLF	r0x100A,F
	RLF	r0x1014,F
	RLF	r0x1015,F
;[ICODE] fsadd.c:84: 	iTemp79 [k104 lr101:111 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x104C r0x104D ] = iTemp79 [k104 lr101:111 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x104C r0x104D ] - 0x1 {literal-unsigned-char}
;	.line	84; "fsadd.c"	exp1--;
	MOVLW	0xff
	ADDWF	r0x100F,F
	BTFSS	STATUS,0
	DECF	r0x100E,F
;[ICODE] fsadd.c:84: 	 goto _whilecontinue_0($21)
	GOTO	_00125_DS_
;[ICODE] fsadd.c:88:  preHeaderLbl1($44) :
;[ICODE] fsadd.c:88: 	iTemp86 [k111 lr111:130 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}{ sir@ ___fsadd_exp1_1_1}[r0x104C r0x104D ] := iTemp79 [k104 lr101:111 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x104C r0x104D ]
;[ICODE] fsadd.c:88:  _whilecontinue_1($26) :
;[ICODE] fsadd.c:88: 	iTemp80 [k105 lr113:114 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x104E r0x104F r0x1056 r0x1057 ] = iTemp43 [k62 lr53:133 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fsadd_mant1_1_1}[r0x1048 r0x1049 r0x1054 r0x1055 ] & 0xff000000 {literal-unsigned-long-int}
_00130_DS_
;	.line	88; "fsadd.c"	while (0 != (mant1 & 0xff000000)) {
	BANKSEL	r0x100D
	CLRF	r0x100D
;;101	CLRF	r0x100C
;;103	CLRF	r0x1016
;	.line	89; "fsadd.c"	if (mant1&1)
	MOVF	r0x1015,W
	MOVWF	r0x1017
	BTFSC	STATUS,2
	GOTO	_00132_DS_
	BTFSS	r0x100B,0
	GOTO	_00129_DS_
;[ICODE] fsadd.c:89: 	if iTemp82 [k107 lr116:117 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int} == 0 goto _iffalse_9($25)
;[ICODE] fsadd.c:90: 	iTemp43 [k62 lr53:133 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fsadd_mant1_1_1}[r0x1048 r0x1049 r0x1054 r0x1055 ] = iTemp43 [k62 lr53:133 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fsadd_mant1_1_1}[r0x1048 r0x1049 r0x1054 r0x1055 ] + 0x2 {literal-unsigned-long-int}
;	.line	90; "fsadd.c"	mant1 += 2;
	MOVLW	0x02
	ADDWF	r0x100B,F
	BTFSC	STATUS,0
	INCF	r0x100A,F
	BTFSC	STATUS,2
	INCF	r0x1014,F
	BTFSC	STATUS,2
	INCF	r0x1015,F
;[ICODE] fsadd.c:90:  _iffalse_9($25) :
;[ICODE] fsadd.c:91: 	iTemp43 [k62 lr53:133 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fsadd_mant1_1_1}[r0x1048 r0x1049 r0x1054 r0x1055 ] = iTemp43 [k62 lr53:133 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fsadd_mant1_1_1}[r0x1048 r0x1049 r0x1054 r0x1055 ] >> 0x1 {literal-unsigned-char}
;shiftRight_Left2ResultLit:6080: shCount=1, size=4, sign=0, same=1, offr=0
_00129_DS_
;	.line	91; "fsadd.c"	mant1 >>= 1 ;
	BCF	STATUS,0
	BANKSEL	r0x1015
	RRF	r0x1015,F
	RRF	r0x1014,F
	RRF	r0x100A,F
	RRF	r0x100B,F
;[ICODE] fsadd.c:92: 	iTemp86 [k111 lr111:130 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}{ sir@ ___fsadd_exp1_1_1}[r0x104C r0x104D ] = iTemp86 [k111 lr111:130 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}{ sir@ ___fsadd_exp1_1_1}[r0x104C r0x104D ] + 0x1 {literal-unsigned-char}
;	.line	92; "fsadd.c"	exp1++;
	INCF	r0x100F,F
	BTFSC	STATUS,2
	INCF	r0x100E,F
;[ICODE] fsadd.c:92: 	 goto _whilecontinue_1($26)
	GOTO	_00130_DS_
;[ICODE] fsadd.c:92:  _whilebreak_1($28) :
;[ICODE] fsadd.c:96: 	iTemp43 [k62 lr53:133 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fsadd_mant1_1_1}[r0x1048 r0x1049 r0x1054 r0x1055 ] = iTemp43 [k62 lr53:133 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fsadd_mant1_1_1}[r0x1048 r0x1049 r0x1054 r0x1055 ] & 0xff7fffff {literal-unsigned-long-int}
_00132_DS_
;	.line	96; "fsadd.c"	mant1 &= ~HIDDEN;
	BANKSEL	r0x1014
	BCF	r0x1014,7
;[ICODE] fsadd.c:99: 	iTemp88 [k113 lr129:134 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[___fsadd_fl1_1_1 [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
;[ICODE] fsadd.c:99: 	iTemp90 [k116 lr130:131 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x104E r0x104F r0x1056 r0x1057 ] = (unsigned-long-int)iTemp86 [k111 lr111:130 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}{ sir@ ___fsadd_exp1_1_1}[r0x104C r0x104D ]
;	.line	99; "fsadd.c"	fl1.l = PACK (sign, (unsigned long) exp1, mant1);
	MOVF	r0x100F,W
	MOVWF	r0x100D
	MOVF	r0x100E,W
	MOVWF	r0x100C
	MOVLW	0x00
	BTFSC	r0x100C,7
	MOVLW	0xff
	MOVWF	r0x1017
	MOVWF	r0x1016
;[ICODE] fsadd.c:99: 	iTemp91 [k117 lr131:132 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x104C r0x104D r0x1058 r0x1059 ] = iTemp90 [k116 lr130:131 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x104E r0x104F r0x1056 r0x1057 ] << 0x17 {literal-unsigned-char}
	RRF	r0x100C,W
	RRF	r0x100D,W
	MOVWF	r0x1019
	CLRF	r0x1018
	RRF	r0x1018,F
	CLRF	r0x100E
	CLRF	r0x100F
;[ICODE] fsadd.c:99: 	iTemp92 [k118 lr132:133 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x1050 r0x1051 r0x1052 r0x1053 ] = iTemp2 [k6 lr5:132 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fsadd_sign_1_1}[r0x1050 r0x1051 r0x1052 r0x1053 ] | iTemp91 [k117 lr131:132 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x104C r0x104D r0x1058 r0x1059 ]
	MOVLW	0x00
	IORWF	r0x1010,F
	MOVLW	0x00
	IORWF	r0x1011,F
	MOVF	r0x1018,W
	IORWF	r0x1012,F
	MOVF	r0x1019,W
	IORWF	r0x1013,F
;[ICODE] fsadd.c:99: 	iTemp93 [k119 lr133:134 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x1048 r0x1049 r0x1054 r0x1055 ] = iTemp92 [k118 lr132:133 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x1050 r0x1051 r0x1052 r0x1053 ] | iTemp43 [k62 lr53:133 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fsadd_mant1_1_1}[r0x1048 r0x1049 r0x1054 r0x1055 ]
	MOVF	r0x1010,W
	IORWF	r0x100B,F
	MOVF	r0x1011,W
	IORWF	r0x100A,F
	MOVF	r0x1012,W
	IORWF	r0x1014,F
	MOVF	r0x1013,W
	IORWF	r0x1015,F
;[ICODE] fsadd.c:99: 	*(iTemp88 [k113 lr129:134 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]) := iTemp93 [k119 lr133:134 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x1048 r0x1049 r0x1054 r0x1055 ]
;gen.c:7685: size=3/4, offset=0, AOP_TYPE(res)=8
	MOVF	r0x100B,W
	BANKSEL	___fsadd_fl1_1_1
	MOVWF	(___fsadd_fl1_1_1 + 0)
;gen.c:7685: size=2/4, offset=1, AOP_TYPE(res)=8
	BANKSEL	r0x100A
	MOVF	r0x100A,W
	BANKSEL	___fsadd_fl1_1_1
	MOVWF	(___fsadd_fl1_1_1 + 1)
;gen.c:7685: size=1/4, offset=2, AOP_TYPE(res)=8
	BANKSEL	r0x1014
	MOVF	r0x1014,W
	BANKSEL	___fsadd_fl1_1_1
	MOVWF	(___fsadd_fl1_1_1 + 2)
;gen.c:7685: size=0/4, offset=3, AOP_TYPE(res)=8
	BANKSEL	r0x1015
	MOVF	r0x1015,W
	BANKSEL	___fsadd_fl1_1_1
	MOVWF	(___fsadd_fl1_1_1 + 3)
;[ICODE] fsadd.c:101: 	iTemp94 [k120 lr135:136 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat] = &[___fsadd_fl1_1_1 [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
;[ICODE] fsadd.c:101: 	iTemp96 [k123 lr136:137 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-float}[r0x1048 r0x1049 r0x104C r0x104D ] = @[iTemp94 [k120 lr135:136 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat]]
;	.line	101; "fsadd.c"	return (fl1.f);
	MOVF	(___fsadd_fl1_1_1 + 0),W
	BANKSEL	r0x100B
	MOVWF	r0x100B
	BANKSEL	___fsadd_fl1_1_1
	MOVF	(___fsadd_fl1_1_1 + 1),W
	BANKSEL	r0x100A
	MOVWF	r0x100A
	BANKSEL	___fsadd_fl1_1_1
	MOVF	(___fsadd_fl1_1_1 + 2),W
	BANKSEL	r0x100F
	MOVWF	r0x100F
	BANKSEL	___fsadd_fl1_1_1
	MOVF	(___fsadd_fl1_1_1 + 3),W
	BANKSEL	r0x100E
	MOVWF	r0x100E
;[ICODE] fsadd.c:101: 	ret iTemp96 [k123 lr136:137 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-float}[r0x1048 r0x1049 r0x104C r0x104D ]
	MOVF	r0x100B,W
	MOVWF	STK02
	MOVF	r0x100A,W
	MOVWF	STK01
	MOVF	r0x100F,W
	MOVWF	STK00
	MOVF	r0x100E,W
;[ICODE] fsadd.c:101:  _return($29) :
;[ICODE] fsadd.c:101: 	eproc ___fsadd [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
_00133_DS_
	RETURN	
; exit point of ___fsadd


;	code size estimation:
;	  525+  142 =   667 instructions ( 1618 byte)

	end
