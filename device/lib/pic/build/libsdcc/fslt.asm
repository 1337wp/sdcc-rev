;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:30 2018
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"fslt.c"
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
	global	___fslt

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_fslt_0	udata
r0x100B	res	1
r0x100A	res	1
r0x1009	res	1
r0x1008	res	1
r0x100F	res	1
r0x100E	res	1
r0x100D	res	1
r0x100C	res	1
r0x1010	res	1
___fslt_fl1_1_1	res	4
___fslt_fl2_1_1	res	4
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
code_fslt	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  ___fslt	;Function start
; 2 exit points
;has an exit
;16 compiler assigned registers:
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
;; Starting pCode block
;[ICODE] fslt.c:32:  _entry($9) :
;[ICODE] fslt.c:32: 	proc ___fslt [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
___fslt	;Function start
; 2 exit points
;[ICODE] fslt.c:32: iTemp0 [k2 lr3:6 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ ___fslt_a1_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = recv ___fslt [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
;	.line	32; "fslt.c"	char __fslt (float a1, float a2) _FS_REENTRANT
	BANKSEL	r0x1008
	MOVWF	r0x1008
	MOVF	STK00,W
	MOVWF	r0x1009
	MOVF	STK01,W
	MOVWF	r0x100A
	MOVF	STK02,W
	BANKSEL	___fslt_fl1_1_1
	MOVWF	(___fslt_fl1_1_1 + 0)
	BANKSEL	r0x100B
	MOVWF	r0x100B
;[ICODE] fslt.c:32: iTemp1 [k4 lr4:8 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ ___fslt_a2_1_1}[r0x104C r0x104D r0x104E r0x104F ] = recv ___fslt [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
	MOVF	STK03,W
	MOVWF	r0x100C
	MOVF	STK04,W
	MOVWF	r0x100D
	MOVF	STK05,W
	MOVWF	r0x100E
	MOVF	STK06,W
	BANKSEL	___fslt_fl2_1_1
	MOVWF	(___fslt_fl2_1_1 + 0)
	BANKSEL	r0x100F
	MOVWF	r0x100F
;[ICODE] fslt.c:36: 	iTemp2 [k7 lr5:6 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat] = &[___fslt_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
;[ICODE] fslt.c:36: 	*(iTemp2 [k7 lr5:6 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat]) := iTemp0 [k2 lr3:6 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ ___fslt_a1_1_1}[r0x1048 r0x1049 r0x104A r0x104B ]
;gen.c:7685: size=3/4, offset=0, AOP_TYPE(res)=8
;;99	MOVF	r0x100B,W
;gen.c:7685: size=2/4, offset=1, AOP_TYPE(res)=8
;	.line	36; "fslt.c"	fl1.f = a1;
	MOVF	r0x100A,W
	BANKSEL	___fslt_fl1_1_1
	MOVWF	(___fslt_fl1_1_1 + 1)
;gen.c:7685: size=1/4, offset=2, AOP_TYPE(res)=8
	BANKSEL	r0x1009
	MOVF	r0x1009,W
	BANKSEL	___fslt_fl1_1_1
	MOVWF	(___fslt_fl1_1_1 + 2)
;gen.c:7685: size=0/4, offset=3, AOP_TYPE(res)=8
	BANKSEL	r0x1008
	MOVF	r0x1008,W
	BANKSEL	___fslt_fl1_1_1
	MOVWF	(___fslt_fl1_1_1 + 3)
;[ICODE] fslt.c:37: 	iTemp4 [k11 lr7:8 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat] = &[___fslt_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
;[ICODE] fslt.c:37: 	*(iTemp4 [k11 lr7:8 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat]) := iTemp1 [k4 lr4:8 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ ___fslt_a2_1_1}[r0x104C r0x104D r0x104E r0x104F ]
;gen.c:7685: size=3/4, offset=0, AOP_TYPE(res)=8
;;100	MOVF	r0x100F,W
;gen.c:7685: size=2/4, offset=1, AOP_TYPE(res)=8
;	.line	37; "fslt.c"	fl2.f = a2;
	BANKSEL	r0x100E
	MOVF	r0x100E,W
	BANKSEL	___fslt_fl2_1_1
	MOVWF	(___fslt_fl2_1_1 + 1)
;gen.c:7685: size=1/4, offset=2, AOP_TYPE(res)=8
	BANKSEL	r0x100D
	MOVF	r0x100D,W
	BANKSEL	___fslt_fl2_1_1
	MOVWF	(___fslt_fl2_1_1 + 2)
;gen.c:7685: size=0/4, offset=3, AOP_TYPE(res)=8
	BANKSEL	r0x100C
	MOVF	r0x100C,W
	BANKSEL	___fslt_fl2_1_1
	MOVWF	(___fslt_fl2_1_1 + 3)
;[ICODE] fslt.c:39: 	iTemp6 [k14 lr9:10 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat] = &[___fslt_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
;[ICODE] fslt.c:39: 	iTemp8 [k17 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp6 [k14 lr9:10 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat]]
;	.line	39; "fslt.c"	if (fl1.l<0 && fl2.l<0) {
	BANKSEL	___fslt_fl1_1_1
	MOVF	(___fslt_fl1_1_1 + 0),W
	BANKSEL	r0x100B
	MOVWF	r0x100B
	BANKSEL	___fslt_fl1_1_1
	MOVF	(___fslt_fl1_1_1 + 1),W
	BANKSEL	r0x100A
	MOVWF	r0x100A
	BANKSEL	___fslt_fl1_1_1
	MOVF	(___fslt_fl1_1_1 + 2),W
	BANKSEL	r0x1009
	MOVWF	r0x1009
	BANKSEL	___fslt_fl1_1_1
	MOVF	(___fslt_fl1_1_1 + 3),W
	BANKSEL	r0x1008
	MOVWF	r0x1008
;[ICODE] fslt.c:39: 	iTemp9 [k18 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp8 [k17 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] < 0x0 {literal-volatile-long-int}
;signed compare: left < lit(0x0=0), size=4, mask=ffffffff
	BSF	STATUS,0
	BTFSS	r0x1008,7
	BCF	STATUS,0
	BTFSS	STATUS,0
	GOTO	_00108_DS_
;genSkipc:3225: created from rifx:0x7ffc6f80a3e0
;[ICODE] fslt.c:39: 	if iTemp9 [k18 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_1($4)
;[ICODE] fslt.c:39: 	iTemp10 [k19 lr13:14 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat] = &[___fslt_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
;[ICODE] fslt.c:39: 	iTemp12 [k22 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp10 [k19 lr13:14 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat]]
	BANKSEL	___fslt_fl2_1_1
	MOVF	(___fslt_fl2_1_1 + 0),W
	BANKSEL	r0x100B
	MOVWF	r0x100B
	BANKSEL	___fslt_fl2_1_1
	MOVF	(___fslt_fl2_1_1 + 1),W
	BANKSEL	r0x100A
	MOVWF	r0x100A
	BANKSEL	___fslt_fl2_1_1
	MOVF	(___fslt_fl2_1_1 + 2),W
	BANKSEL	r0x1009
	MOVWF	r0x1009
	BANKSEL	___fslt_fl2_1_1
	MOVF	(___fslt_fl2_1_1 + 3),W
	BANKSEL	r0x1008
	MOVWF	r0x1008
;[ICODE] fslt.c:39: 	iTemp13 [k23 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp12 [k22 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] < 0x0 {literal-volatile-long-int}
;signed compare: left < lit(0x0=0), size=4, mask=ffffffff
	BSF	STATUS,0
	BTFSS	r0x1008,7
	BCF	STATUS,0
	BTFSS	STATUS,0
	GOTO	_00108_DS_
;genSkipc:3225: created from rifx:0x7ffc6f80a3e0
;[ICODE] fslt.c:39: 	if iTemp13 [k23 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_1($4)
;[ICODE] fslt.c:40: 	iTemp14 [k24 lr17:18 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat] = &[___fslt_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
;[ICODE] fslt.c:40: 	iTemp16 [k27 lr18:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp14 [k24 lr17:18 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat]]
;	.line	40; "fslt.c"	if (fl2.l < fl1.l)
	BANKSEL	___fslt_fl2_1_1
	MOVF	(___fslt_fl2_1_1 + 0),W
	BANKSEL	r0x100B
	MOVWF	r0x100B
	BANKSEL	___fslt_fl2_1_1
	MOVF	(___fslt_fl2_1_1 + 1),W
	BANKSEL	r0x100A
	MOVWF	r0x100A
	BANKSEL	___fslt_fl2_1_1
	MOVF	(___fslt_fl2_1_1 + 2),W
	BANKSEL	r0x1009
	MOVWF	r0x1009
	BANKSEL	___fslt_fl2_1_1
	MOVF	(___fslt_fl2_1_1 + 3),W
	BANKSEL	r0x1008
	MOVWF	r0x1008
;[ICODE] fslt.c:40: 	iTemp17 [k28 lr19:20 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat] = &[___fslt_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
;[ICODE] fslt.c:40: 	iTemp19 [k31 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}[r0x104C r0x104D r0x104E r0x104F ] = @[iTemp17 [k28 lr19:20 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat]]
	BANKSEL	___fslt_fl1_1_1
	MOVF	(___fslt_fl1_1_1 + 0),W
	BANKSEL	r0x100F
	MOVWF	r0x100F
	BANKSEL	___fslt_fl1_1_1
	MOVF	(___fslt_fl1_1_1 + 1),W
	BANKSEL	r0x100E
	MOVWF	r0x100E
	BANKSEL	___fslt_fl1_1_1
	MOVF	(___fslt_fl1_1_1 + 2),W
	BANKSEL	r0x100D
	MOVWF	r0x100D
	BANKSEL	___fslt_fl1_1_1
	MOVF	(___fslt_fl1_1_1 + 3),W
	BANKSEL	r0x100C
	MOVWF	r0x100C
;[ICODE] fslt.c:40: 	iTemp20 [k32 lr21:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp16 [k27 lr18:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] < iTemp19 [k31 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}[r0x104C r0x104D r0x104E r0x104F ]
	MOVF	r0x1008,W
	ADDLW	0x80
	MOVWF	r0x1010
	MOVF	r0x100C,W
	ADDLW	0x80
	SUBWF	r0x1010,W
	BTFSS	STATUS,2
	GOTO	_00118_DS_
	MOVF	r0x100D,W
	SUBWF	r0x1009,W
	BTFSS	STATUS,2
	GOTO	_00118_DS_
	MOVF	r0x100E,W
	SUBWF	r0x100A,W
	BTFSS	STATUS,2
	GOTO	_00118_DS_
	MOVF	r0x100F,W
	SUBWF	r0x100B,W
_00118_DS_
	BTFSC	STATUS,0
	GOTO	_00106_DS_
;genSkipc:3225: created from rifx:0x7ffc6f80a3e0
;[ICODE] fslt.c:40: 	if iTemp20 [k32 lr21:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_0($2)
;[ICODE] fslt.c:41: 	ret 0x1 {literal-char}
;	.line	41; "fslt.c"	return (1);
	MOVLW	0x01
	GOTO	_00112_DS_
;[ICODE] fslt.c:41:  _iffalse_0($2) :
;[ICODE] fslt.c:42: 	ret 0x0 {literal-char}
_00106_DS_
;	.line	42; "fslt.c"	return (0);
	MOVLW	0x00
	GOTO	_00112_DS_
;[ICODE] fslt.c:42:  _iffalse_1($4) :
;[ICODE] fslt.c:45: 	iTemp21 [k33 lr27:28 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat] = &[___fslt_fl1_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
;[ICODE] fslt.c:45: 	iTemp23 [k36 lr28:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp21 [k33 lr27:28 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat]]
_00108_DS_
;	.line	45; "fslt.c"	if (fl1.l < fl2.l)
	BANKSEL	___fslt_fl1_1_1
	MOVF	(___fslt_fl1_1_1 + 0),W
	BANKSEL	r0x100B
	MOVWF	r0x100B
	BANKSEL	___fslt_fl1_1_1
	MOVF	(___fslt_fl1_1_1 + 1),W
	BANKSEL	r0x100A
	MOVWF	r0x100A
	BANKSEL	___fslt_fl1_1_1
	MOVF	(___fslt_fl1_1_1 + 2),W
	BANKSEL	r0x1009
	MOVWF	r0x1009
	BANKSEL	___fslt_fl1_1_1
	MOVF	(___fslt_fl1_1_1 + 3),W
	BANKSEL	r0x1008
	MOVWF	r0x1008
;[ICODE] fslt.c:45: 	iTemp24 [k37 lr29:30 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat] = &[___fslt_fl2_1_1 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct float_long}]
;[ICODE] fslt.c:45: 	iTemp26 [k40 lr30:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}[r0x104C r0x104D r0x104E r0x104F ] = @[iTemp24 [k37 lr29:30 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat]]
	BANKSEL	___fslt_fl2_1_1
	MOVF	(___fslt_fl2_1_1 + 0),W
	BANKSEL	r0x100F
	MOVWF	r0x100F
	BANKSEL	___fslt_fl2_1_1
	MOVF	(___fslt_fl2_1_1 + 1),W
	BANKSEL	r0x100E
	MOVWF	r0x100E
	BANKSEL	___fslt_fl2_1_1
	MOVF	(___fslt_fl2_1_1 + 2),W
	BANKSEL	r0x100D
	MOVWF	r0x100D
	BANKSEL	___fslt_fl2_1_1
	MOVF	(___fslt_fl2_1_1 + 3),W
	BANKSEL	r0x100C
	MOVWF	r0x100C
;[ICODE] fslt.c:45: 	iTemp27 [k41 lr31:32 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp23 [k36 lr28:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] < iTemp26 [k40 lr30:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}[r0x104C r0x104D r0x104E r0x104F ]
	MOVF	r0x1008,W
	ADDLW	0x80
	MOVWF	r0x1010
	MOVF	r0x100C,W
	ADDLW	0x80
	SUBWF	r0x1010,W
	BTFSS	STATUS,2
	GOTO	_00119_DS_
	MOVF	r0x100D,W
	SUBWF	r0x1009,W
	BTFSS	STATUS,2
	GOTO	_00119_DS_
	MOVF	r0x100E,W
	SUBWF	r0x100A,W
	BTFSS	STATUS,2
	GOTO	_00119_DS_
	MOVF	r0x100F,W
	SUBWF	r0x100B,W
_00119_DS_
	BTFSC	STATUS,0
	GOTO	_00111_DS_
;genSkipc:3225: created from rifx:0x7ffc6f80a3e0
;[ICODE] fslt.c:45: 	if iTemp27 [k41 lr31:32 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_2($7)
;[ICODE] fslt.c:46: 	ret 0x1 {literal-char}
;	.line	46; "fslt.c"	return (1);
	MOVLW	0x01
	GOTO	_00112_DS_
;[ICODE] fslt.c:46:  _iffalse_2($7) :
;[ICODE] fslt.c:47: 	ret 0x0 {literal-char}
_00111_DS_
;	.line	47; "fslt.c"	return (0);
	MOVLW	0x00
;[ICODE] fslt.c:47:  _return($8) :
;[ICODE] fslt.c:47: 	eproc ___fslt [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
_00112_DS_
	RETURN	
; exit point of ___fslt


;	code size estimation:
;	  135+   64 =   199 instructions (  526 byte)

	end
