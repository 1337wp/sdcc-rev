;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:30 2018
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"fsmul.c"
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
	extern	___fsdiv
	extern	___fslt
	extern	___fseq
	extern	___fsneq
	extern	___fsgt
	extern	__mullong

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
	global	___fsmul

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_fsmul_0	udata
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
___fsmul_fl1_1_1	res	4
___fsmul_fl2_1_1	res	4
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
code_fsmul	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  ___fsmul	;Function start
; 2 exit points
;has an exit
;functions called:
;   __mullong
;   __mullong
;   __mullong
;   __mullong
;   __mullong
;   __mullong
;26 compiler assigned registers:
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
;; Starting pCode block
;[ICODE] fsmul.c:32:  _entry($14) :
;[ICODE] fsmul.c:32: 	proc ___fsmul [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
___fsmul	;Function start
; 2 exit points
;[ICODE] fsmul.c:32: iTemp0 [k2 lr3:6 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ ___fsmul_a1_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = recv ___fsmul [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
;	.line	32; "fsmul.c"	float __fsmul (float a1, float a2) _FS_REENTRANT
	BANKSEL	r0x1008
	MOVWF	r0x1008
	MOVF	STK00,W
	MOVWF	r0x1009
	MOVF	STK01,W
	MOVWF	r0x100A
	MOVF	STK02,W
	BANKSEL	___fsmul_fl1_1_1
	MOVWF	(___fsmul_fl1_1_1 + 0)
	BANKSEL	r0x100B
	MOVWF	r0x100B
;[ICODE] fsmul.c:32: iTemp1 [k4 lr4:8 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ ___fsmul_a2_1_1}[r0x104C r0x104D r0x104E r0x104F ] = recv ___fsmul [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	STK03,W
	MOVWF	r0x100C
	MOVF	STK04,W
	MOVWF	r0x100D
	MOVF	STK05,W
	MOVWF	r0x100E
	MOVF	STK06,W
	BANKSEL	___fsmul_fl2_1_1
	MOVWF	(___fsmul_fl2_1_1 + 0)
	BANKSEL	r0x100F
	MOVWF	r0x100F
;[ICODE] fsmul.c:39: 	iTemp2 [k7 lr5:6 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat] = &[___fsmul_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
;[ICODE] fsmul.c:39: 	*(iTemp2 [k7 lr5:6 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat]) := iTemp0 [k2 lr3:6 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ ___fsmul_a1_1_1}[r0x1048 r0x1049 r0x104A r0x104B ]
;gen.c:7685: size=3/4, offset=0, AOP_TYPE(res)=8
;;99	MOVF	r0x100B,W
;gen.c:7685: size=2/4, offset=1, AOP_TYPE(res)=8
;	.line	39; "fsmul.c"	fl1.f = a1;
	MOVF	r0x100A,W
	BANKSEL	___fsmul_fl1_1_1
	MOVWF	(___fsmul_fl1_1_1 + 1)
;gen.c:7685: size=1/4, offset=2, AOP_TYPE(res)=8
	BANKSEL	r0x1009
	MOVF	r0x1009,W
	BANKSEL	___fsmul_fl1_1_1
	MOVWF	(___fsmul_fl1_1_1 + 2)
;gen.c:7685: size=0/4, offset=3, AOP_TYPE(res)=8
	BANKSEL	r0x1008
	MOVF	r0x1008,W
	BANKSEL	___fsmul_fl1_1_1
	MOVWF	(___fsmul_fl1_1_1 + 3)
;[ICODE] fsmul.c:40: 	iTemp4 [k11 lr7:8 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat] = &[___fsmul_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
;[ICODE] fsmul.c:40: 	*(iTemp4 [k11 lr7:8 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat]) := iTemp1 [k4 lr4:8 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ ___fsmul_a2_1_1}[r0x104C r0x104D r0x104E r0x104F ]
;gen.c:7685: size=3/4, offset=0, AOP_TYPE(res)=8
;;103	MOVF	r0x100F,W
;gen.c:7685: size=2/4, offset=1, AOP_TYPE(res)=8
;	.line	40; "fsmul.c"	fl2.f = a2;
	BANKSEL	r0x100E
	MOVF	r0x100E,W
	BANKSEL	___fsmul_fl2_1_1
	MOVWF	(___fsmul_fl2_1_1 + 1)
;gen.c:7685: size=1/4, offset=2, AOP_TYPE(res)=8
	BANKSEL	r0x100D
	MOVF	r0x100D,W
	BANKSEL	___fsmul_fl2_1_1
	MOVWF	(___fsmul_fl2_1_1 + 2)
;gen.c:7685: size=0/4, offset=3, AOP_TYPE(res)=8
	BANKSEL	r0x100C
	MOVF	r0x100C,W
	BANKSEL	___fsmul_fl2_1_1
	MOVWF	(___fsmul_fl2_1_1 + 3)
;[ICODE] fsmul.c:42: 	iTemp6 [k14 lr9:10 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[___fsmul_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
;[ICODE] fsmul.c:42: 	iTemp8 [k17 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp6 [k14 lr9:10 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]]
;	.line	42; "fsmul.c"	if (!fl1.l || !fl2.l)
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 0),W
	BANKSEL	r0x100B
	MOVWF	r0x100B
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 1),W
	BANKSEL	r0x100A
	MOVWF	r0x100A
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 2),W
	BANKSEL	r0x1009
	MOVWF	r0x1009
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 3),W
	BANKSEL	r0x1008
	MOVWF	r0x1008
;[ICODE] fsmul.c:42: 	if iTemp8 [k17 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] == 0 goto _iftrue_0($1)
	MOVF	r0x100B,W
	IORWF	r0x100A,W
	IORWF	r0x1009,W
	IORWF	r0x1008,W
	BTFSC	STATUS,2
	GOTO	_00105_DS_
;[ICODE] fsmul.c:42: 	iTemp9 [k18 lr12:13 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[___fsmul_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
;[ICODE] fsmul.c:42: 	iTemp11 [k21 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp9 [k18 lr12:13 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]]
	BANKSEL	___fsmul_fl2_1_1
	MOVF	(___fsmul_fl2_1_1 + 0),W
	BANKSEL	r0x100B
	MOVWF	r0x100B
	BANKSEL	___fsmul_fl2_1_1
	MOVF	(___fsmul_fl2_1_1 + 1),W
	BANKSEL	r0x100A
	MOVWF	r0x100A
	BANKSEL	___fsmul_fl2_1_1
	MOVF	(___fsmul_fl2_1_1 + 2),W
	BANKSEL	r0x1009
	MOVWF	r0x1009
	BANKSEL	___fsmul_fl2_1_1
	MOVF	(___fsmul_fl2_1_1 + 3),W
	BANKSEL	r0x1008
	MOVWF	r0x1008
;[ICODE] fsmul.c:42: 	if iTemp11 [k21 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] != 0 goto _iffalse_0($2)
	MOVF	r0x100B,W
	IORWF	r0x100A,W
	IORWF	r0x1009,W
	IORWF	r0x1008,W
	BTFSS	STATUS,2
	GOTO	_00106_DS_
;[ICODE] fsmul.c:42:  _iftrue_0($1) :
;[ICODE] fsmul.c:43: 	ret 0 {literal-float}
_00105_DS_
;	.line	43; "fsmul.c"	return (0);
	MOVLW	0x00
	MOVWF	STK02
	MOVLW	0x00
	MOVWF	STK01
	MOVLW	0x00
	MOVWF	STK00
	MOVLW	0x00
	GOTO	_00117_DS_
;[ICODE] fsmul.c:43:  _iffalse_0($2) :
;[ICODE] fsmul.c:46: 	iTemp13 [k24 lr18:19 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[___fsmul_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
;[ICODE] fsmul.c:46: 	iTemp15 [k27 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp13 [k24 lr18:19 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]]
_00106_DS_
;	.line	46; "fsmul.c"	sign = SIGN (fl1.l) ^ SIGN (fl2.l);
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 0),W
	BANKSEL	r0x100B
	MOVWF	r0x100B
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 1),W
	BANKSEL	r0x100A
	MOVWF	r0x100A
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 2),W
	BANKSEL	r0x1009
	MOVWF	r0x1009
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 3),W
	BANKSEL	r0x1008
	MOVWF	r0x1008
;[ICODE] fsmul.c:46: 	iTemp16 [k28 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x104C r0x104D r0x104E r0x104F ] = iTemp15 [k27 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] >> 0x1f {literal-unsigned-char}
	RLF	r0x1008,W
	CLRF	r0x100F
	RLF	r0x100F,F
	CLRF	r0x100E
	CLRF	r0x100D
	CLRF	r0x100C
;[ICODE] fsmul.c:46: 	iTemp17 [k29 lr21:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp16 [k28 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x104C r0x104D r0x104E r0x104F ] & 0x1 {literal-unsigned-long-int}
	MOVLW	0x01
	ANDWF	r0x100F,W
	MOVWF	r0x100B
	CLRF	r0x100A
	CLRF	r0x1009
	CLRF	r0x1008
;[ICODE] fsmul.c:46: 	iTemp18 [k30 lr22:23 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[___fsmul_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
;[ICODE] fsmul.c:46: 	iTemp20 [k33 lr23:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x104C r0x104D r0x104E r0x104F ] = @[iTemp18 [k30 lr22:23 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]]
	BANKSEL	___fsmul_fl2_1_1
	MOVF	(___fsmul_fl2_1_1 + 0),W
	BANKSEL	r0x100F
	MOVWF	r0x100F
	BANKSEL	___fsmul_fl2_1_1
	MOVF	(___fsmul_fl2_1_1 + 1),W
	BANKSEL	r0x100E
	MOVWF	r0x100E
	BANKSEL	___fsmul_fl2_1_1
	MOVF	(___fsmul_fl2_1_1 + 2),W
	BANKSEL	r0x100D
	MOVWF	r0x100D
	BANKSEL	___fsmul_fl2_1_1
	MOVF	(___fsmul_fl2_1_1 + 3),W
	BANKSEL	r0x100C
	MOVWF	r0x100C
;[ICODE] fsmul.c:46: 	iTemp21 [k34 lr24:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x1050 r0x1051 r0x1052 r0x1053 ] = iTemp20 [k33 lr23:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x104C r0x104D r0x104E r0x104F ] >> 0x1f {literal-unsigned-char}
	RLF	r0x100C,W
	CLRF	r0x1010
	RLF	r0x1010,F
	CLRF	r0x1011
	CLRF	r0x1012
	CLRF	r0x1013
;[ICODE] fsmul.c:46: 	iTemp22 [k35 lr25:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x104C r0x104D r0x104E r0x104F ] = iTemp21 [k34 lr24:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x1050 r0x1051 r0x1052 r0x1053 ] & 0x1 {literal-unsigned-long-int}
	MOVLW	0x01
	ANDWF	r0x1010,W
	MOVWF	r0x100F
	CLRF	r0x100E
	CLRF	r0x100D
	CLRF	r0x100C
;[ICODE] fsmul.c:46: 	iTemp23 [k36 lr26:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp17 [k29 lr21:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] ^ iTemp22 [k35 lr25:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x104C r0x104D r0x104E r0x104F ]
	MOVF	r0x100F,W
	XORWF	r0x100B,F
	MOVLW	0x00
	XORWF	r0x100A,F
	MOVLW	0x00
	XORWF	r0x1009,F
	MOVLW	0x00
	XORWF	r0x1008,F
;[ICODE] fsmul.c:46: 	iTemp12 [k22 lr27:130 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ ___fsmul_sign_1_1}[r0x104C ] = (char)iTemp23 [k36 lr26:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x1048 r0x1049 r0x104A r0x104B ]
	MOVF	r0x100B,W
	MOVWF	r0x100F
;[ICODE] fsmul.c:47: 	iTemp26 [k40 lr29:30 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[___fsmul_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
;[ICODE] fsmul.c:47: 	iTemp28 [k43 lr30:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp26 [k40 lr29:30 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]]
;	.line	47; "fsmul.c"	exp = EXP (fl1.l) - EXCESS;
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 0),W
	BANKSEL	r0x100B
	MOVWF	r0x100B
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 1),W
	BANKSEL	r0x100A
	MOVWF	r0x100A
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 2),W
	BANKSEL	r0x1009
	MOVWF	r0x1009
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 3),W
	BANKSEL	r0x1008
	MOVWF	r0x1008
;[ICODE] fsmul.c:47: 	iTemp29 [k44 lr31:32 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x104D r0x104E r0x104F r0x1050 ] = iTemp28 [k43 lr30:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] >> 0x17 {literal-unsigned-char}
	RLF	r0x1009,W
	RLF	r0x1008,W
	MOVWF	r0x100B
	MOVWF	r0x100E
	CLRF	r0x100D
	RLF	r0x100D,F
	CLRF	r0x100C
	CLRF	r0x1010
;[ICODE] fsmul.c:47: 	iTemp30 [k45 lr32:33 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp29 [k44 lr31:32 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x104D r0x104E r0x104F r0x1050 ] & 0xff {literal-unsigned-long-int}
;;104	MOVF	r0x100E,W
	CLRF	r0x100A
	CLRF	r0x1009
	CLRF	r0x1008
;[ICODE] fsmul.c:47: 	iTemp31 [k46 lr33:34 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp30 [k45 lr32:33 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] - 0x7e {literal-unsigned-long-int}
	MOVLW	0x82
	ADDWF	r0x100B,F
	MOVLW	0xff
	BTFSS	STATUS,0
	ADDWF	r0x100A,F
	MOVLW	0xff
	BTFSS	STATUS,0
	ADDWF	r0x1009,F
	MOVLW	0xff
	BTFSS	STATUS,0
	ADDWF	r0x1008,F
;[ICODE] fsmul.c:47: 	iTemp25 [k38 lr34:136 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ ___fsmul_exp_1_1}[r0x104D r0x104E ] = (int)iTemp31 [k46 lr33:34 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x1048 r0x1049 r0x104A r0x104B ]
	MOVF	r0x100B,W
	MOVWF	r0x100E
	MOVF	r0x100A,W
	MOVWF	r0x100D
;[ICODE] fsmul.c:48: 	iTemp33 [k48 lr36:37 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[___fsmul_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
;[ICODE] fsmul.c:48: 	iTemp35 [k51 lr37:38 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp33 [k48 lr36:37 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]]
;	.line	48; "fsmul.c"	exp += EXP (fl2.l);
	BANKSEL	___fsmul_fl2_1_1
	MOVF	(___fsmul_fl2_1_1 + 0),W
	BANKSEL	r0x100B
	MOVWF	r0x100B
	BANKSEL	___fsmul_fl2_1_1
	MOVF	(___fsmul_fl2_1_1 + 1),W
	BANKSEL	r0x100A
	MOVWF	r0x100A
	BANKSEL	___fsmul_fl2_1_1
	MOVF	(___fsmul_fl2_1_1 + 2),W
	BANKSEL	r0x1009
	MOVWF	r0x1009
	BANKSEL	___fsmul_fl2_1_1
	MOVF	(___fsmul_fl2_1_1 + 3),W
	BANKSEL	r0x1008
	MOVWF	r0x1008
;[ICODE] fsmul.c:48: 	iTemp36 [k52 lr38:39 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x104F r0x1050 r0x1051 r0x1052 ] = iTemp35 [k51 lr37:38 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] >> 0x17 {literal-unsigned-char}
	RLF	r0x1009,W
	RLF	r0x1008,W
	MOVWF	r0x100B
	MOVWF	r0x100C
	CLRF	r0x1010
	RLF	r0x1010,F
	CLRF	r0x1011
	CLRF	r0x1012
;[ICODE] fsmul.c:48: 	iTemp37 [k53 lr39:41 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp36 [k52 lr38:39 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x104F r0x1050 r0x1051 r0x1052 ] & 0xff {literal-unsigned-long-int}
;;105	MOVF	r0x100C,W
	CLRF	r0x100A
	CLRF	r0x1009
	CLRF	r0x1008
;[ICODE] fsmul.c:48: 	iTemp38 [k54 lr40:41 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x104F r0x1050 r0x1051 r0x1052 ] = (unsigned-long-int)iTemp25 [k38 lr34:136 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ ___fsmul_exp_1_1}[r0x104D r0x104E ]
	MOVF	r0x100E,W
	MOVWF	r0x100C
	MOVF	r0x100D,W
	MOVWF	r0x1010
	MOVLW	0x00
	BTFSC	r0x1010,7
	MOVLW	0xff
	MOVWF	r0x1012
	MOVWF	r0x1011
;[ICODE] fsmul.c:48: 	iTemp39 [k55 lr41:42 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp38 [k54 lr40:41 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x104F r0x1050 r0x1051 r0x1052 ] + iTemp37 [k53 lr39:41 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x1048 r0x1049 r0x104A r0x104B ]
	MOVF	r0x100B,W
	ADDWF	r0x100C,W
	MOVWF	r0x100B
	MOVF	r0x1010,W
	BTFSC	STATUS,0
	INCFSZ	r0x1010,W
	ADDWF	r0x100A,F
	MOVF	r0x1011,W
	BTFSC	STATUS,0
	INCFSZ	r0x1011,W
	ADDWF	r0x1009,F
	MOVF	r0x1012,W
	BTFSC	STATUS,0
	INCFSZ	r0x1012,W
	ADDWF	r0x1008,F
;[ICODE] fsmul.c:48: 	iTemp25 [k38 lr34:136 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ ___fsmul_exp_1_1}[r0x104D r0x104E ] = (int)iTemp39 [k55 lr41:42 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x1048 r0x1049 r0x104A r0x104B ]
	MOVF	r0x100B,W
	MOVWF	r0x100E
	MOVF	r0x100A,W
	MOVWF	r0x100D
;[ICODE] fsmul.c:50: 	iTemp41 [k57 lr44:49 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[___fsmul_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
;[ICODE] fsmul.c:50: 	iTemp43 [k60 lr45:46 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[___fsmul_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
;[ICODE] fsmul.c:50: 	iTemp45 [k63 lr46:47 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp43 [k60 lr45:46 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]]
;	.line	50; "fsmul.c"	fl1.l = MANT (fl1.l);
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 0),W
	BANKSEL	r0x100B
	MOVWF	r0x100B
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 1),W
	BANKSEL	r0x100A
	MOVWF	r0x100A
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 2),W
	BANKSEL	r0x1009
	MOVWF	r0x1009
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 3),W
	BANKSEL	r0x1008
	MOVWF	r0x1008
;[ICODE] fsmul.c:50: 	iTemp46 [k64 lr47:48 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp45 [k63 lr46:47 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] & 0x7fffff {literal-unsigned-long-int}
	BCF	r0x1009,7
	CLRF	r0x1008
;[ICODE] fsmul.c:50: 	iTemp47 [k65 lr48:49 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp46 [k64 lr47:48 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] | 0x800000 {literal-unsigned-long-int}
	BSF	r0x1009,7
;[ICODE] fsmul.c:50: 	*(iTemp41 [k57 lr44:49 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]) := iTemp47 [k65 lr48:49 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x1048 r0x1049 r0x104A r0x104B ]
;gen.c:7685: size=3/4, offset=0, AOP_TYPE(res)=8
	MOVF	r0x100B,W
	BANKSEL	___fsmul_fl1_1_1
	MOVWF	(___fsmul_fl1_1_1 + 0)
;gen.c:7685: size=2/4, offset=1, AOP_TYPE(res)=8
	BANKSEL	r0x100A
	MOVF	r0x100A,W
	BANKSEL	___fsmul_fl1_1_1
	MOVWF	(___fsmul_fl1_1_1 + 1)
;gen.c:7685: size=1/4, offset=2, AOP_TYPE(res)=8
	BANKSEL	r0x1009
	MOVF	r0x1009,W
	BANKSEL	___fsmul_fl1_1_1
	MOVWF	(___fsmul_fl1_1_1 + 2)
;gen.c:7685: size=0/4, offset=3, AOP_TYPE(res)=8
	MOVLW	0x00
	MOVWF	(___fsmul_fl1_1_1 + 3)
;[ICODE] fsmul.c:51: 	iTemp48 [k66 lr50:55 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[___fsmul_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
;[ICODE] fsmul.c:51: 	iTemp50 [k69 lr51:52 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[___fsmul_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
;[ICODE] fsmul.c:51: 	iTemp52 [k72 lr52:53 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp50 [k69 lr51:52 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]]
;	.line	51; "fsmul.c"	fl2.l = MANT (fl2.l);
	BANKSEL	___fsmul_fl2_1_1
	MOVF	(___fsmul_fl2_1_1 + 0),W
	BANKSEL	r0x100B
	MOVWF	r0x100B
	BANKSEL	___fsmul_fl2_1_1
	MOVF	(___fsmul_fl2_1_1 + 1),W
	BANKSEL	r0x100A
	MOVWF	r0x100A
	BANKSEL	___fsmul_fl2_1_1
	MOVF	(___fsmul_fl2_1_1 + 2),W
	BANKSEL	r0x1009
	MOVWF	r0x1009
	BANKSEL	___fsmul_fl2_1_1
	MOVF	(___fsmul_fl2_1_1 + 3),W
	BANKSEL	r0x1008
	MOVWF	r0x1008
;[ICODE] fsmul.c:51: 	iTemp53 [k73 lr53:54 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp52 [k72 lr52:53 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] & 0x7fffff {literal-unsigned-long-int}
	BCF	r0x1009,7
	CLRF	r0x1008
;[ICODE] fsmul.c:51: 	iTemp54 [k74 lr54:55 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp53 [k73 lr53:54 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] | 0x800000 {literal-unsigned-long-int}
	BSF	r0x1009,7
;[ICODE] fsmul.c:51: 	*(iTemp48 [k66 lr50:55 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]) := iTemp54 [k74 lr54:55 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x1048 r0x1049 r0x104A r0x104B ]
;gen.c:7685: size=3/4, offset=0, AOP_TYPE(res)=8
	MOVF	r0x100B,W
	BANKSEL	___fsmul_fl2_1_1
	MOVWF	(___fsmul_fl2_1_1 + 0)
;gen.c:7685: size=2/4, offset=1, AOP_TYPE(res)=8
	BANKSEL	r0x100A
	MOVF	r0x100A,W
	BANKSEL	___fsmul_fl2_1_1
	MOVWF	(___fsmul_fl2_1_1 + 1)
;gen.c:7685: size=1/4, offset=2, AOP_TYPE(res)=8
	BANKSEL	r0x1009
	MOVF	r0x1009,W
	BANKSEL	___fsmul_fl2_1_1
	MOVWF	(___fsmul_fl2_1_1 + 2)
;gen.c:7685: size=0/4, offset=3, AOP_TYPE(res)=8
	MOVLW	0x00
	MOVWF	(___fsmul_fl2_1_1 + 3)
;[ICODE] fsmul.c:54: 	iTemp56 [k77 lr56:57 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[___fsmul_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
;[ICODE] fsmul.c:54: 	iTemp58 [k80 lr57:58 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp56 [k77 lr56:57 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]]
;	.line	54; "fsmul.c"	result = (fl1.l >> 8) * (fl2.l >> 8);
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 0),W
	BANKSEL	r0x100B
	MOVWF	r0x100B
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 1),W
	BANKSEL	r0x100C
	MOVWF	r0x100C
	MOVWF	r0x100A
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 2),W
	BANKSEL	r0x1010
	MOVWF	r0x1010
	MOVWF	r0x1009
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 3),W
	BANKSEL	r0x1011
	MOVWF	r0x1011
	MOVWF	r0x1008
;[ICODE] fsmul.c:54: 	iTemp59 [k81 lr58:63 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x104F r0x1050 r0x1051 r0x1052 ] = iTemp58 [k80 lr57:58 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] >> 0x8 {literal-unsigned-char}
;;123	MOVF	r0x100A,W
;;124	MOVF	r0x1009,W
;;125	MOVF	r0x1008,W
	CLRF	r0x1012
;[ICODE] fsmul.c:54: 	iTemp60 [k82 lr59:60 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[___fsmul_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
;[ICODE] fsmul.c:54: 	iTemp62 [k85 lr60:61 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp60 [k82 lr59:60 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]]
	BANKSEL	___fsmul_fl2_1_1
	MOVF	(___fsmul_fl2_1_1 + 0),W
	BANKSEL	r0x100B
	MOVWF	r0x100B
	BANKSEL	___fsmul_fl2_1_1
	MOVF	(___fsmul_fl2_1_1 + 1),W
	BANKSEL	r0x1013
	MOVWF	r0x1013
	MOVWF	r0x100A
	BANKSEL	___fsmul_fl2_1_1
	MOVF	(___fsmul_fl2_1_1 + 2),W
	BANKSEL	r0x1014
	MOVWF	r0x1014
	MOVWF	r0x1009
	BANKSEL	___fsmul_fl2_1_1
	MOVF	(___fsmul_fl2_1_1 + 3),W
	BANKSEL	r0x1015
	MOVWF	r0x1015
	MOVWF	r0x1008
;[ICODE] fsmul.c:54: 	iTemp63 [k86 lr61:63 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x1053 r0x1054 r0x1055 r0x1056 ] = iTemp62 [k85 lr60:61 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] >> 0x8 {literal-unsigned-char}
;;100	MOVF	r0x100A,W
;;101	MOVF	r0x1009,W
;;102	MOVF	r0x1008,W
	CLRF	r0x1016
;[ICODE] fsmul.c:54: 	send iTemp59 [k81 lr58:63 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x104F r0x1050 r0x1051 r0x1052 ]{argreg = 1}
;[ICODE] fsmul.c:54: 	send iTemp63 [k86 lr61:63 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x1053 r0x1054 r0x1055 r0x1056 ]{argreg = 1}
;[ICODE] fsmul.c:54: 	iTemp55 [k75 lr64:139 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fsmul_result_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = call __mullong [k145 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int function    ( long-int, long-int) }
	MOVF	r0x1013,W
	MOVWF	STK06
	MOVF	r0x1014,W
	MOVWF	STK05
	MOVF	r0x1015,W
	MOVWF	STK04
	MOVLW	0x00
	MOVWF	STK03
	MOVF	r0x100C,W
	MOVWF	STK02
	MOVF	r0x1010,W
	MOVWF	STK01
	MOVF	r0x1011,W
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	__mullong
	CALL	__mullong
	PAGESEL	$
	BANKSEL	r0x1008
	MOVWF	r0x1008
	MOVF	STK00,W
	MOVWF	r0x1009
	MOVF	STK01,W
	MOVWF	r0x100A
	MOVF	STK02,W
	MOVWF	r0x100B
;[ICODE] fsmul.c:55: 	iTemp65 [k88 lr66:67 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[___fsmul_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
;[ICODE] fsmul.c:55: 	iTemp67 [k91 lr67:68 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x104F r0x1050 r0x1051 r0x1052 ] = @[iTemp65 [k88 lr66:67 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]]
;	.line	55; "fsmul.c"	result += ((fl1.l & (unsigned long) 0xFF) * (fl2.l >> 8)) >> 8;
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 0),W
	BANKSEL	r0x100C
	MOVWF	r0x100C
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 1),W
	BANKSEL	r0x1010
	MOVWF	r0x1010
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 2),W
	BANKSEL	r0x1011
	MOVWF	r0x1011
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 3),W
	BANKSEL	r0x1012
	MOVWF	r0x1012
;[ICODE] fsmul.c:55: 	iTemp68 [k92 lr68:73 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x104F r0x1050 r0x1051 r0x1052 ] = iTemp67 [k91 lr67:68 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x104F r0x1050 r0x1051 r0x1052 ] & 0xff {literal-unsigned-long-int}
	CLRF	r0x1010
	CLRF	r0x1011
	CLRF	r0x1012
;[ICODE] fsmul.c:55: 	iTemp69 [k93 lr69:70 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[___fsmul_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
;[ICODE] fsmul.c:55: 	iTemp71 [k96 lr70:71 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x1053 r0x1054 r0x1055 r0x1056 ] = @[iTemp69 [k93 lr69:70 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]]
	BANKSEL	___fsmul_fl2_1_1
	MOVF	(___fsmul_fl2_1_1 + 0),W
	BANKSEL	r0x1013
	MOVWF	r0x1013
	BANKSEL	___fsmul_fl2_1_1
	MOVF	(___fsmul_fl2_1_1 + 1),W
	BANKSEL	r0x1017
	MOVWF	r0x1017
	MOVWF	r0x1014
	BANKSEL	___fsmul_fl2_1_1
	MOVF	(___fsmul_fl2_1_1 + 2),W
	BANKSEL	r0x1015
	MOVWF	r0x1015
	BANKSEL	___fsmul_fl2_1_1
	MOVF	(___fsmul_fl2_1_1 + 3),W
	BANKSEL	r0x1016
	MOVWF	r0x1016
;[ICODE] fsmul.c:55: 	iTemp72 [k97 lr71:73 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x1057 r0x1058 r0x1059 r0x105A ] = iTemp71 [k96 lr70:71 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x1053 r0x1054 r0x1055 r0x1056 ] >> 0x8 {literal-unsigned-char}
;;129	MOVF	r0x1014,W
;;120	MOVF	r0x1015,W
;;122	MOVF	r0x1016,W
	CLRF	r0x101A
;[ICODE] fsmul.c:55: 	send iTemp68 [k92 lr68:73 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x104F r0x1050 r0x1051 r0x1052 ]{argreg = 1}
;[ICODE] fsmul.c:55: 	send iTemp72 [k97 lr71:73 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x1057 r0x1058 r0x1059 r0x105A ]{argreg = 1}
;[ICODE] fsmul.c:55: 	iTemp73 [k98 lr74:75 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x104F r0x1050 r0x1051 r0x1052 ] = call __mullong [k145 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int function    ( long-int, long-int) }
	MOVF	r0x1017,W
	MOVWF	STK06
;;119	MOVF	r0x1018,W
	MOVF	r0x1015,W
	MOVWF	r0x1018
	MOVWF	STK05
;;121	MOVF	r0x1019,W
	MOVF	r0x1016,W
	MOVWF	r0x1019
	MOVWF	STK04
	MOVLW	0x00
	MOVWF	STK03
	MOVF	r0x100C,W
	MOVWF	STK02
	MOVLW	0x00
	MOVWF	STK01
	MOVLW	0x00
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	__mullong
	CALL	__mullong
	PAGESEL	$
	BANKSEL	r0x1015
	MOVWF	r0x1015
	MOVWF	r0x1012
	MOVF	STK00,W
	MOVWF	r0x1014
	MOVWF	r0x1011
	MOVF	STK01,W
	MOVWF	r0x1013
	MOVWF	r0x1010
	MOVF	STK02,W
	MOVWF	r0x100C
;[ICODE] fsmul.c:55: 	iTemp74 [k99 lr75:76 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x1053 r0x1054 r0x1055 r0x1056 ] = iTemp73 [k98 lr74:75 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x104F r0x1050 r0x1051 r0x1052 ] >> 0x8 {literal-unsigned-char}
;;126	MOVF	r0x1010,W
;;127	MOVF	r0x1011,W
;;128	MOVF	r0x1012,W
	CLRF	r0x1016
;[ICODE] fsmul.c:55: 	iTemp55 [k75 lr64:139 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fsmul_result_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp55 [k75 lr64:139 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fsmul_result_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] + iTemp74 [k99 lr75:76 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x1053 r0x1054 r0x1055 r0x1056 ]
	MOVF	r0x1013,W
	ADDWF	r0x100B,F
	MOVF	r0x1014,W
	BTFSC	STATUS,0
	INCFSZ	r0x1014,W
	ADDWF	r0x100A,F
	MOVF	r0x1015,W
	BTFSC	STATUS,0
	INCFSZ	r0x1015,W
	ADDWF	r0x1009,F
	MOVF	r0x1016,W
	BTFSC	STATUS,0
	INCFSZ	r0x1016,W
	ADDWF	r0x1008,F
;[ICODE] fsmul.c:56: 	iTemp76 [k101 lr78:79 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[___fsmul_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
;[ICODE] fsmul.c:56: 	iTemp78 [k104 lr79:80 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x104F r0x1050 r0x1051 r0x1052 ] = @[iTemp76 [k101 lr78:79 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]]
;	.line	56; "fsmul.c"	result += ((fl2.l & (unsigned long) 0xFF) * (fl1.l >> 8)) >> 8;
	BANKSEL	___fsmul_fl2_1_1
	MOVF	(___fsmul_fl2_1_1 + 0),W
	BANKSEL	r0x100C
	MOVWF	r0x100C
	BANKSEL	___fsmul_fl2_1_1
	MOVF	(___fsmul_fl2_1_1 + 1),W
	BANKSEL	r0x1010
	MOVWF	r0x1010
	BANKSEL	___fsmul_fl2_1_1
	MOVF	(___fsmul_fl2_1_1 + 2),W
	BANKSEL	r0x1011
	MOVWF	r0x1011
	BANKSEL	___fsmul_fl2_1_1
	MOVF	(___fsmul_fl2_1_1 + 3),W
	BANKSEL	r0x1012
	MOVWF	r0x1012
;[ICODE] fsmul.c:56: 	iTemp79 [k105 lr80:85 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x104F r0x1050 r0x1051 r0x1052 ] = iTemp78 [k104 lr79:80 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x104F r0x1050 r0x1051 r0x1052 ] & 0xff {literal-unsigned-long-int}
	CLRF	r0x1010
	CLRF	r0x1011
	CLRF	r0x1012
;[ICODE] fsmul.c:56: 	iTemp80 [k106 lr81:82 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[___fsmul_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
;[ICODE] fsmul.c:56: 	iTemp82 [k109 lr82:83 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x1053 r0x1054 r0x1055 r0x1056 ] = @[iTemp80 [k106 lr81:82 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]]
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 0),W
	BANKSEL	r0x1013
	MOVWF	r0x1013
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 1),W
	BANKSEL	r0x1014
	MOVWF	r0x1014
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 2),W
	BANKSEL	r0x1018
	MOVWF	r0x1018
	MOVWF	r0x1015
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 3),W
	BANKSEL	r0x1019
	MOVWF	r0x1019
	MOVWF	r0x1016
;[ICODE] fsmul.c:56: 	iTemp83 [k110 lr83:85 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x1057 r0x1058 r0x1059 r0x105A ] = iTemp82 [k109 lr82:83 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x1053 r0x1054 r0x1055 r0x1056 ] >> 0x8 {literal-unsigned-char}
;;118	MOVF	r0x1014,W
;;115	MOVF	r0x1015,W
;;116	MOVF	r0x1016,W
	CLRF	r0x101A
;[ICODE] fsmul.c:56: 	send iTemp79 [k105 lr80:85 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x104F r0x1050 r0x1051 r0x1052 ]{argreg = 1}
;[ICODE] fsmul.c:56: 	send iTemp83 [k110 lr83:85 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x1057 r0x1058 r0x1059 r0x105A ]{argreg = 1}
;[ICODE] fsmul.c:56: 	iTemp84 [k111 lr86:87 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x104F r0x1050 r0x1051 r0x1052 ] = call __mullong [k145 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int function    ( long-int, long-int) }
;;117	MOVF	r0x1017,W
	MOVF	r0x1014,W
	MOVWF	r0x1017
	MOVWF	STK06
	MOVF	r0x1018,W
	MOVWF	STK05
	MOVF	r0x1019,W
	MOVWF	STK04
	MOVLW	0x00
	MOVWF	STK03
	MOVF	r0x100C,W
	MOVWF	STK02
	MOVLW	0x00
	MOVWF	STK01
	MOVLW	0x00
	MOVWF	STK00
	MOVLW	0x00
	PAGESEL	__mullong
	CALL	__mullong
	PAGESEL	$
	BANKSEL	r0x1015
	MOVWF	r0x1015
	MOVWF	r0x1012
	MOVF	STK00,W
	MOVWF	r0x1014
	MOVWF	r0x1011
	MOVF	STK01,W
	MOVWF	r0x1010
	MOVF	STK02,W
	MOVWF	r0x100C
;[ICODE] fsmul.c:56: 	iTemp85 [k112 lr87:88 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x1053 r0x1054 r0x1055 r0x1056 ] = iTemp84 [k111 lr86:87 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x104F r0x1050 r0x1051 r0x1052 ] >> 0x8 {literal-unsigned-char}
;;112	MOVF	r0x1010,W
;;114	MOVF	r0x1011,W
;;110	MOVF	r0x1012,W
	CLRF	r0x1016
;[ICODE] fsmul.c:56: 	iTemp55 [k75 lr64:139 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fsmul_result_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp55 [k75 lr64:139 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fsmul_result_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] + iTemp85 [k112 lr87:88 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x1053 r0x1054 r0x1055 r0x1056 ]
;;111	MOVF	r0x1013,W
	MOVF	r0x1010,W
	MOVWF	r0x1013
	ADDWF	r0x100B,F
;;113	MOVF	r0x1014,W
;;130	MOVF	r0x1011,W
	BTFSC	STATUS,0
	INCFSZ	r0x1014,W
	ADDWF	r0x100A,F
	MOVF	r0x1015,W
	BTFSC	STATUS,0
	INCFSZ	r0x1015,W
	ADDWF	r0x1009,F
	MOVF	r0x1016,W
	BTFSC	STATUS,0
	INCFSZ	r0x1016,W
	ADDWF	r0x1008,F
;[ICODE] fsmul.c:58: 	iTemp87 [k114 lr90:91 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x104F r0x1050 r0x1051 r0x1052 ] = iTemp55 [k75 lr64:139 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fsmul_result_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] & 0x80000000 {literal-unsigned-long-int}
;	.line	58; "fsmul.c"	if (0 != (result & SIGNBIT))
	CLRF	r0x100C
;;106	CLRF	r0x1010
;;108	CLRF	r0x1011
	MOVLW	0x80
	ANDWF	r0x1008,W
	MOVWF	r0x1012
;[ICODE] fsmul.c:58: 	iTemp88 [k115 lr91:92 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = 0x0 {literal-unsigned-long-int} == iTemp87 [k114 lr90:91 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x104F r0x1050 r0x1051 r0x1052 ]
;	.line	61; "fsmul.c"	result += 0x80;
	MOVF	r0x1012,W
	BTFSC	STATUS,2
	GOTO	_00109_DS_
	MOVLW	0x80
	ADDWF	r0x100B,F
	BTFSC	STATUS,0
	INCF	r0x100A,F
	BTFSC	STATUS,2
	INCF	r0x1009,F
	BTFSC	STATUS,2
	INCF	r0x1008,F
;[ICODE] fsmul.c:62: 	iTemp55 [k75 lr64:139 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fsmul_result_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp55 [k75 lr64:139 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fsmul_result_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] >> 0x8 {literal-unsigned-char}
;	.line	62; "fsmul.c"	result >>= 8;
	MOVF	r0x100A,W
	MOVWF	r0x100B
	MOVF	r0x1009,W
	MOVWF	r0x100A
	MOVF	r0x1008,W
	MOVWF	r0x1009
	CLRF	r0x1008
;[ICODE] fsmul.c:62: 	 goto _ifend_1($6)
	GOTO	_00110_DS_
;[ICODE] fsmul.c:62:  _iffalse_1($5) :
;[ICODE] fsmul.c:67: 	iTemp55 [k75 lr64:139 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fsmul_result_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp55 [k75 lr64:139 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fsmul_result_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] + 0x40 {literal-unsigned-long-int}
_00109_DS_
;	.line	67; "fsmul.c"	result += 0x40;
	MOVLW	0x40
	BANKSEL	r0x100B
	ADDWF	r0x100B,F
	BTFSC	STATUS,0
	INCF	r0x100A,F
	BTFSC	STATUS,2
	INCF	r0x1009,F
	BTFSC	STATUS,2
	INCF	r0x1008,F
;[ICODE] fsmul.c:68: 	iTemp55 [k75 lr64:139 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fsmul_result_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp55 [k75 lr64:139 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fsmul_result_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] >> 0x7 {literal-unsigned-char}
;	.line	68; "fsmul.c"	result >>= 7;
	RLF	r0x100B,W
	RLF	r0x100A,W
	MOVWF	r0x100B
	RLF	r0x1009,W
	MOVWF	r0x100A
	RLF	r0x1008,W
	MOVWF	r0x1009
	CLRF	r0x1008
	RLF	r0x1008,F
;[ICODE] fsmul.c:69: 	iTemp25 [k38 lr34:136 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ ___fsmul_exp_1_1}[r0x104D r0x104E ] = iTemp25 [k38 lr34:136 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ ___fsmul_exp_1_1}[r0x104D r0x104E ] - 0x1 {literal-unsigned-char}
;	.line	69; "fsmul.c"	exp--;
	MOVLW	0xff
	ADDWF	r0x100E,F
	BTFSS	STATUS,0
	DECF	r0x100D,F
;[ICODE] fsmul.c:69:  _ifend_1($6) :
;[ICODE] fsmul.c:72: 	iTemp55 [k75 lr64:139 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fsmul_result_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp55 [k75 lr64:139 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fsmul_result_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] & 0xff7fffff {literal-unsigned-long-int}
_00110_DS_
;	.line	72; "fsmul.c"	result &= ~HIDDEN;
	BANKSEL	r0x1009
	BCF	r0x1009,7
;[ICODE] fsmul.c:75: 	iTemp96 [k123 lr108:109 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp25 [k38 lr34:136 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ ___fsmul_exp_1_1}[r0x104D r0x104E ] < 0x100 {literal-int}
;signed compare: left < lit(0x100=256), size=2, mask=ffff
;	.line	75; "fsmul.c"	if (exp >= 0x100)
	MOVF	r0x100D,W
	ADDLW	0x80
	ADDLW	0x7f
	BTFSS	STATUS,2
	GOTO	_00130_DS_
	MOVLW	0x00
	SUBWF	r0x100E,W
_00130_DS_
	BTFSS	STATUS,0
	GOTO	_00115_DS_
;genSkipc:3225: created from rifx:0x7fff7823fe80
;[ICODE] fsmul.c:75: 	if iTemp96 [k123 lr108:109 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} != 0 goto _iffalse_3($11)
;[ICODE] fsmul.c:76: 	iTemp98 [k126 lr110:119 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[___fsmul_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
;[ICODE] fsmul.c:76: 	if iTemp12 [k22 lr27:130 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ ___fsmul_sign_1_1}[r0x104C ] == 0 goto iTempLbl0($15)
;	.line	76; "fsmul.c"	fl1.l = (sign ? SIGNBIT : 0) | 0x7F800000;
	BANKSEL	r0x100F
	MOVF	r0x100F,W
	BTFSC	STATUS,2
	GOTO	_00119_DS_
;[ICODE] fsmul.c:76: 	iTemp99 [k127 lr113:118 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x104F r0x1050 r0x1051 r0x1052 ] := 0x80000000 {literal-unsigned-long-int}
	CLRF	r0x100C
	CLRF	r0x1010
	CLRF	r0x1011
	MOVLW	0x80
	MOVWF	r0x1012
;[ICODE] fsmul.c:76: 	 goto iTempLbl1($16)
	GOTO	_00120_DS_
;[ICODE] fsmul.c:76:  iTempLbl0($15) :
;[ICODE] fsmul.c:76: 	iTemp99 [k127 lr113:118 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x104F r0x1050 r0x1051 r0x1052 ] := 0x0 {literal-unsigned-long-int}
_00119_DS_
	BANKSEL	r0x100C
	CLRF	r0x100C
	CLRF	r0x1010
	CLRF	r0x1011
	CLRF	r0x1012
;[ICODE] fsmul.c:76:  iTempLbl1($16) :
;[ICODE] fsmul.c:76: 	iTemp100 [k128 lr118:119 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x104F r0x1050 r0x1051 r0x1052 ] = iTemp99 [k127 lr113:118 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x104F r0x1050 r0x1051 r0x1052 ] | 0x7f800000 {literal-unsigned-long-int}
_00120_DS_
	BANKSEL	r0x1011
	BSF	r0x1011,7
	MOVLW	0x7f
	IORWF	r0x1012,F
;[ICODE] fsmul.c:76: 	*(iTemp98 [k126 lr110:119 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]) := iTemp100 [k128 lr118:119 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x104F r0x1050 r0x1051 r0x1052 ]
;gen.c:7685: size=3/4, offset=0, AOP_TYPE(res)=8
	MOVF	r0x100C,W
	BANKSEL	___fsmul_fl1_1_1
	MOVWF	(___fsmul_fl1_1_1 + 0)
;gen.c:7685: size=2/4, offset=1, AOP_TYPE(res)=8
	BANKSEL	r0x1010
	MOVF	r0x1010,W
	BANKSEL	___fsmul_fl1_1_1
	MOVWF	(___fsmul_fl1_1_1 + 1)
;gen.c:7685: size=1/4, offset=2, AOP_TYPE(res)=8
	BANKSEL	r0x1011
	MOVF	r0x1011,W
	BANKSEL	___fsmul_fl1_1_1
	MOVWF	(___fsmul_fl1_1_1 + 2)
;gen.c:7685: size=0/4, offset=3, AOP_TYPE(res)=8
	BANKSEL	r0x1012
	MOVF	r0x1012,W
	BANKSEL	___fsmul_fl1_1_1
	MOVWF	(___fsmul_fl1_1_1 + 3)
;[ICODE] fsmul.c:76: 	 goto _ifend_3($12)
	GOTO	_00116_DS_
;[ICODE] fsmul.c:76:  _iffalse_3($11) :
;[ICODE] fsmul.c:77: 	iTemp101 [k129 lr122:123 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp25 [k38 lr34:136 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ ___fsmul_exp_1_1}[r0x104D r0x104E ] < 0x0 {literal-int}
;signed compare: left < lit(0x0=0), size=2, mask=ffff
_00115_DS_
;	.line	77; "fsmul.c"	else if (exp < 0)
	BSF	STATUS,0
	BANKSEL	r0x100D
	BTFSS	r0x100D,7
	BCF	STATUS,0
	BTFSS	STATUS,0
	GOTO	_00112_DS_
;genSkipc:3225: created from rifx:0x7fff7823fe80
;[ICODE] fsmul.c:77: 	if iTemp101 [k129 lr122:123 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_2($8)
;[ICODE] fsmul.c:78: 	iTemp102 [k130 lr124:125 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[___fsmul_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
;[ICODE] fsmul.c:78: 	*(iTemp102 [k130 lr124:125 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]) := 0x0 {literal-volatile-unsigned-long-int}
;gen.c:7685: size=3/4, offset=0, AOP_TYPE(res)=8
;	.line	78; "fsmul.c"	fl1.l = 0;
	BANKSEL	___fsmul_fl1_1_1
	CLRF	(___fsmul_fl1_1_1 + 0)
;gen.c:7685: size=2/4, offset=1, AOP_TYPE(res)=8
	CLRF	(___fsmul_fl1_1_1 + 1)
;gen.c:7685: size=1/4, offset=2, AOP_TYPE(res)=8
	CLRF	(___fsmul_fl1_1_1 + 2)
;gen.c:7685: size=0/4, offset=3, AOP_TYPE(res)=8
	CLRF	(___fsmul_fl1_1_1 + 3)
;[ICODE] fsmul.c:78: 	 goto _ifend_3($12)
	GOTO	_00116_DS_
;[ICODE] fsmul.c:78:  _iffalse_2($8) :
;[ICODE] fsmul.c:80: 	iTemp105 [k135 lr128:140 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[___fsmul_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
;[ICODE] fsmul.c:80: 	if iTemp12 [k22 lr27:130 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ ___fsmul_sign_1_1}[r0x104C ] == 0 goto iTempLbl2($17)
_00112_DS_
;	.line	80; "fsmul.c"	fl1.l = PACK (sign ? SIGNBIT : 0 , exp, result);
	MOVLW	0x00
	BANKSEL	r0x100F
	IORWF	r0x100F,W
	BTFSC	STATUS,2
	GOTO	_00121_DS_
;[ICODE] fsmul.c:80: 	iTemp106 [k136 lr131:138 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x104C r0x104F r0x1050 r0x1051 ] := 0x80000000 {literal-unsigned-long-int}
	CLRF	r0x100F
	CLRF	r0x100C
	CLRF	r0x1010
	MOVLW	0x80
	MOVWF	r0x1011
;[ICODE] fsmul.c:80: 	 goto iTempLbl3($18)
	GOTO	_00122_DS_
;[ICODE] fsmul.c:80:  iTempLbl2($17) :
;[ICODE] fsmul.c:80: 	iTemp106 [k136 lr131:138 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x104C r0x104F r0x1050 r0x1051 ] := 0x0 {literal-unsigned-long-int}
_00121_DS_
	BANKSEL	r0x100F
	CLRF	r0x100F
	CLRF	r0x100C
	CLRF	r0x1010
	CLRF	r0x1011
;[ICODE] fsmul.c:80:  iTempLbl3($18) :
;[ICODE] fsmul.c:80: 	iTemp107 [k137 lr136:137 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x1052 r0x1053 r0x1054 r0x1055 ] = (unsigned-long-int)iTemp25 [k38 lr34:136 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ ___fsmul_exp_1_1}[r0x104D r0x104E ]
_00122_DS_
	BANKSEL	r0x100E
	MOVF	r0x100E,W
	MOVWF	r0x1012
	MOVF	r0x100D,W
	MOVWF	r0x1013
	MOVLW	0x00
	BTFSC	r0x1013,7
	MOVLW	0xff
	MOVWF	r0x1015
	MOVWF	r0x1014
;[ICODE] fsmul.c:80: 	iTemp108 [k138 lr137:138 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x104D r0x104E r0x1056 r0x1057 ] = iTemp107 [k137 lr136:137 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x1052 r0x1053 r0x1054 r0x1055 ] << 0x17 {literal-unsigned-char}
	RRF	r0x1013,W
	RRF	r0x1012,W
	MOVWF	r0x1017
	CLRF	r0x1016
	RRF	r0x1016,F
	CLRF	r0x100D
	CLRF	r0x100E
;[ICODE] fsmul.c:80: 	iTemp109 [k139 lr138:139 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x104C r0x104F r0x1050 r0x1051 ] = iTemp106 [k136 lr131:138 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x104C r0x104F r0x1050 r0x1051 ] | iTemp108 [k138 lr137:138 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x104D r0x104E r0x1056 r0x1057 ]
	MOVLW	0x00
	IORWF	r0x100F,F
	MOVLW	0x00
	IORWF	r0x100C,F
	MOVF	r0x1016,W
	IORWF	r0x1010,F
	MOVF	r0x1017,W
	IORWF	r0x1011,F
;[ICODE] fsmul.c:80: 	iTemp110 [k140 lr139:140 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp109 [k139 lr138:139 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x104C r0x104F r0x1050 r0x1051 ] | iTemp55 [k75 lr64:139 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int}{ sir@ ___fsmul_result_1_1}[r0x1048 r0x1049 r0x104A r0x104B ]
	MOVF	r0x100F,W
	IORWF	r0x100B,F
	MOVF	r0x100C,W
	IORWF	r0x100A,F
	MOVF	r0x1010,W
	IORWF	r0x1009,F
	MOVF	r0x1011,W
	IORWF	r0x1008,F
;[ICODE] fsmul.c:80: 	*(iTemp105 [k135 lr128:140 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]) := iTemp110 [k140 lr139:140 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x1048 r0x1049 r0x104A r0x104B ]
;gen.c:7685: size=3/4, offset=0, AOP_TYPE(res)=8
	MOVF	r0x100B,W
	BANKSEL	___fsmul_fl1_1_1
	MOVWF	(___fsmul_fl1_1_1 + 0)
;gen.c:7685: size=2/4, offset=1, AOP_TYPE(res)=8
	BANKSEL	r0x100A
	MOVF	r0x100A,W
	BANKSEL	___fsmul_fl1_1_1
	MOVWF	(___fsmul_fl1_1_1 + 1)
;gen.c:7685: size=1/4, offset=2, AOP_TYPE(res)=8
	BANKSEL	r0x1009
	MOVF	r0x1009,W
	BANKSEL	___fsmul_fl1_1_1
	MOVWF	(___fsmul_fl1_1_1 + 2)
;gen.c:7685: size=0/4, offset=3, AOP_TYPE(res)=8
	BANKSEL	r0x1008
	MOVF	r0x1008,W
	BANKSEL	___fsmul_fl1_1_1
	MOVWF	(___fsmul_fl1_1_1 + 3)
;[ICODE] fsmul.c:80:  _ifend_3($12) :
;[ICODE] fsmul.c:81: 	iTemp111 [k141 lr142:143 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat] = &[___fsmul_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
;[ICODE] fsmul.c:81: 	iTemp113 [k144 lr143:144 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-float}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp111 [k141 lr142:143 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat]]
_00116_DS_
;	.line	81; "fsmul.c"	return (fl1.f);
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 0),W
	BANKSEL	r0x100B
	MOVWF	r0x100B
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 1),W
	BANKSEL	r0x100A
	MOVWF	r0x100A
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 2),W
	BANKSEL	r0x1009
	MOVWF	r0x1009
	BANKSEL	___fsmul_fl1_1_1
	MOVF	(___fsmul_fl1_1_1 + 3),W
	BANKSEL	r0x1008
	MOVWF	r0x1008
;[ICODE] fsmul.c:81: 	ret iTemp113 [k144 lr143:144 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-float}[r0x1048 r0x1049 r0x104A r0x104B ]
	MOVF	r0x100B,W
	MOVWF	STK02
	MOVF	r0x100A,W
	MOVWF	STK01
	MOVF	r0x1009,W
	MOVWF	STK00
	MOVF	r0x1008,W
;[ICODE] fsmul.c:81:  _return($13) :
;[ICODE] fsmul.c:81: 	eproc ___fsmul [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
_00117_DS_
	RETURN	
; exit point of ___fsmul


;	code size estimation:
;	  567+  179 =   746 instructions ( 1850 byte)

	end
