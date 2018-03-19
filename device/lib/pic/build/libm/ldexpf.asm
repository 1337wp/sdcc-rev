;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:32 2018
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"ldexpf.c"
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
	extern	_logf
	extern	_log10f
	extern	_powf
	extern	_sqrtf
	extern	_fabsf
	extern	_frexpf
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
	global	_ldexpf

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_ldexpf_0	udata
r0x1007	res	1
r0x1006	res	1
r0x1005	res	1
r0x1004	res	1
r0x1009	res	1
r0x1008	res	1
r0x100A	res	1
r0x100B	res	1
r0x100D	res	1
r0x100C	res	1
_ldexpf_fl_1_1	res	4
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
code_ldexpf	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  _ldexpf	;Function start
; 2 exit points
;has an exit
;15 compiler assigned registers:
;   r0x1004
;   STK00
;   r0x1005
;   STK01
;   r0x1006
;   STK02
;   r0x1007
;   STK03
;   r0x1008
;   STK04
;   r0x1009
;   r0x100A
;   r0x100B
;   r0x100C
;   r0x100D
;; Starting pCode block
;[ICODE] ldexpf.c:29:  _entry($2) :
;[ICODE] ldexpf.c:29: 	proc _ldexpf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float, const-int) }
_ldexpf	;Function start
; 2 exit points
;[ICODE] ldexpf.c:29: iTemp0 [k2 lr3:6 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _ldexpf_x_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = recv _ldexpf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float, const-int) }
;	.line	29; "ldexpf.c"	float ldexpf(const float x, const int pw2)
	BANKSEL	r0x1004
	MOVWF	r0x1004
	MOVF	STK00,W
	MOVWF	r0x1005
	MOVF	STK01,W
	MOVWF	r0x1006
	MOVF	STK02,W
	BANKSEL	_ldexpf_fl_1_1
	MOVWF	(_ldexpf_fl_1_1 + 0)
	BANKSEL	r0x1007
	MOVWF	r0x1007
;[ICODE] ldexpf.c:29: iTemp1 [k4 lr4:12 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-int}{ sir@ _ldexpf_pw2_1_1}[r0x104C r0x104D ] = recv _ldexpf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float, const-int) }
	MOVF	STK03,W
	MOVWF	r0x1008
	MOVF	STK04,W
	MOVWF	r0x1009
;[ICODE] ldexpf.c:34: 	iTemp2 [k7 lr5:6 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat] = &[_ldexpf_fl_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct float_long}]
;[ICODE] ldexpf.c:34: 	*(iTemp2 [k7 lr5:6 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat]) := iTemp0 [k2 lr3:6 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _ldexpf_x_1_1}[r0x1048 r0x1049 r0x104A r0x104B ]
;gen.c:7685: size=3/4, offset=0, AOP_TYPE(res)=8
;;99	MOVF	r0x1007,W
;gen.c:7685: size=2/4, offset=1, AOP_TYPE(res)=8
;	.line	34; "ldexpf.c"	fl.f = x;
	MOVF	r0x1006,W
	BANKSEL	_ldexpf_fl_1_1
	MOVWF	(_ldexpf_fl_1_1 + 1)
;gen.c:7685: size=1/4, offset=2, AOP_TYPE(res)=8
	BANKSEL	r0x1005
	MOVF	r0x1005,W
	BANKSEL	_ldexpf_fl_1_1
	MOVWF	(_ldexpf_fl_1_1 + 2)
;gen.c:7685: size=0/4, offset=3, AOP_TYPE(res)=8
	BANKSEL	r0x1004
	MOVF	r0x1004,W
	BANKSEL	_ldexpf_fl_1_1
	MOVWF	(_ldexpf_fl_1_1 + 3)
;[ICODE] ldexpf.c:36: 	iTemp5 [k12 lr7:20 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat] = &[_ldexpf_fl_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct float_long}]
;[ICODE] ldexpf.c:36: 	iTemp7 [k15 lr8:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp5 [k12 lr7:20 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat]]
;	.line	36; "ldexpf.c"	e=(fl.l >> 23) & 0x000000ff;
	MOVF	(_ldexpf_fl_1_1 + 0),W
	BANKSEL	r0x1007
	MOVWF	r0x1007
	BANKSEL	_ldexpf_fl_1_1
	MOVF	(_ldexpf_fl_1_1 + 1),W
	BANKSEL	r0x1006
	MOVWF	r0x1006
	BANKSEL	_ldexpf_fl_1_1
	MOVF	(_ldexpf_fl_1_1 + 2),W
	BANKSEL	r0x1005
	MOVWF	r0x1005
	BANKSEL	_ldexpf_fl_1_1
	MOVF	(_ldexpf_fl_1_1 + 3),W
	BANKSEL	r0x1004
	MOVWF	r0x1004
;[ICODE] ldexpf.c:36: 	iTemp8 [k16 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}[r0x104E r0x104F r0x1050 r0x1051 ] = iTemp7 [k15 lr8:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] >> 0x17 {literal-unsigned-char}
	RLF	r0x1005,W
	RLF	r0x1004,W
	MOVWF	r0x100A
	CLRF	r0x100B
	BTFSC	STATUS,0
	DECF	r0x100B,F
	MOVLW	0x00
	BTFSC	r0x100B,7
	MOVLW	0xff
	MOVWF	r0x100C
	MOVWF	r0x100D
;[ICODE] ldexpf.c:36: 	iTemp4 [k10 lr10:15 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ _ldexpf_e_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp8 [k16 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}[r0x104E r0x104F r0x1050 r0x1051 ] & 0xff {literal-volatile-long-int}
	MOVF	r0x100A,W
	MOVWF	r0x1007
	CLRF	r0x1006
	CLRF	r0x1005
	CLRF	r0x1004
;[ICODE] ldexpf.c:37: 	iTemp10 [k18 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int}[r0x104E r0x104F r0x1050 r0x1051 ] = (long-int)iTemp1 [k4 lr4:12 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-int}{ sir@ _ldexpf_pw2_1_1}[r0x104C r0x104D ]
;	.line	37; "ldexpf.c"	e+=pw2;
	MOVF	r0x1009,W
	MOVWF	r0x100A
	MOVF	r0x1008,W
	MOVWF	r0x100B
	MOVLW	0x00
	BTFSC	r0x100B,7
	MOVLW	0xff
	MOVWF	r0x100C
	MOVWF	r0x100D
;[ICODE] ldexpf.c:37: 	iTemp4 [k10 lr10:15 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ _ldexpf_e_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp4 [k10 lr10:15 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ _ldexpf_e_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] + iTemp10 [k18 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int}[r0x104E r0x104F r0x1050 r0x1051 ]
	MOVF	r0x100A,W
	ADDWF	r0x1007,F
	MOVF	r0x100B,W
	BTFSC	STATUS,0
	INCFSZ	r0x100B,W
	ADDWF	r0x1006,F
	MOVF	r0x100D,W
	BTFSC	STATUS,0
	INCFSZ	r0x100D,W
	ADDWF	r0x1005,F
	MOVF	r0x100C,W
	BTFSC	STATUS,0
	INCFSZ	r0x100C,W
	ADDWF	r0x1004,F
;[ICODE] ldexpf.c:38: 	iTemp14 [k23 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp4 [k10 lr10:15 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ _ldexpf_e_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] & 0xff {literal-long-int}
;	.line	38; "ldexpf.c"	fl.l= ((e & 0xff) << 23) | (fl.l & 0x807fffff);
	CLRF	r0x1006
	CLRF	r0x1005
	CLRF	r0x1004
;[ICODE] ldexpf.c:38: 	iTemp15 [k24 lr16:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int}[r0x104C r0x104D r0x104E r0x104F ] = iTemp14 [k23 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int}[r0x1048 r0x1049 r0x104A r0x104B ] << 0x17 {literal-unsigned-char}
	RRF	r0x1006,W
	RRF	r0x1007,W
	MOVWF	r0x100B
	CLRF	r0x100A
	RRF	r0x100A,F
	CLRF	r0x1008
	CLRF	r0x1009
;[ICODE] ldexpf.c:38: 	iTemp18 [k28 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp5 [k12 lr7:20 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat]]
	BANKSEL	_ldexpf_fl_1_1
	MOVF	(_ldexpf_fl_1_1 + 0),W
	BANKSEL	r0x1007
	MOVWF	r0x1007
	BANKSEL	_ldexpf_fl_1_1
	MOVF	(_ldexpf_fl_1_1 + 1),W
	BANKSEL	r0x1006
	MOVWF	r0x1006
	BANKSEL	_ldexpf_fl_1_1
	MOVF	(_ldexpf_fl_1_1 + 2),W
	BANKSEL	r0x1005
	MOVWF	r0x1005
	BANKSEL	_ldexpf_fl_1_1
	MOVF	(_ldexpf_fl_1_1 + 3),W
	BANKSEL	r0x1004
	MOVWF	r0x1004
;[ICODE] ldexpf.c:38: 	iTemp20 [k30 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp18 [k28 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] & 0x807fffff {literal-unsigned-long-int}
	BCF	r0x1005,7
	MOVLW	0x80
	ANDWF	r0x1004,F
;[ICODE] ldexpf.c:38: 	iTemp22 [k32 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x104C r0x104D r0x104E r0x104F ] = iTemp15 [k24 lr16:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int}[r0x104C r0x104D r0x104E r0x104F ] | iTemp20 [k30 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x1048 r0x1049 r0x104A r0x104B ]
	MOVF	r0x1007,W
	IORWF	r0x1009,F
	MOVF	r0x1006,W
	IORWF	r0x1008,F
	MOVF	r0x1005,W
	IORWF	r0x100A,F
	MOVF	r0x1004,W
	IORWF	r0x100B,F
;[ICODE] ldexpf.c:38: 	*(iTemp5 [k12 lr7:20 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat]) := iTemp22 [k32 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x104C r0x104D r0x104E r0x104F ]
;gen.c:7685: size=3/4, offset=0, AOP_TYPE(res)=8
	MOVF	r0x1009,W
	BANKSEL	_ldexpf_fl_1_1
	MOVWF	(_ldexpf_fl_1_1 + 0)
;gen.c:7685: size=2/4, offset=1, AOP_TYPE(res)=8
	BANKSEL	r0x1008
	MOVF	r0x1008,W
	BANKSEL	_ldexpf_fl_1_1
	MOVWF	(_ldexpf_fl_1_1 + 1)
;gen.c:7685: size=1/4, offset=2, AOP_TYPE(res)=8
	BANKSEL	r0x100A
	MOVF	r0x100A,W
	BANKSEL	_ldexpf_fl_1_1
	MOVWF	(_ldexpf_fl_1_1 + 2)
;gen.c:7685: size=0/4, offset=3, AOP_TYPE(res)=8
	BANKSEL	r0x100B
	MOVF	r0x100B,W
	BANKSEL	_ldexpf_fl_1_1
	MOVWF	(_ldexpf_fl_1_1 + 3)
;[ICODE] ldexpf.c:40: 	iTemp24 [k34 lr21:22 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat] = &[_ldexpf_fl_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct float_long}]
;[ICODE] ldexpf.c:40: 	iTemp26 [k37 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-float}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp24 [k34 lr21:22 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat]]
;	.line	40; "ldexpf.c"	return(fl.f);
	MOVF	(_ldexpf_fl_1_1 + 0),W
	BANKSEL	r0x1007
	MOVWF	r0x1007
	BANKSEL	_ldexpf_fl_1_1
	MOVF	(_ldexpf_fl_1_1 + 1),W
	BANKSEL	r0x1006
	MOVWF	r0x1006
	BANKSEL	_ldexpf_fl_1_1
	MOVF	(_ldexpf_fl_1_1 + 2),W
	BANKSEL	r0x1005
	MOVWF	r0x1005
	BANKSEL	_ldexpf_fl_1_1
	MOVF	(_ldexpf_fl_1_1 + 3),W
	BANKSEL	r0x1004
	MOVWF	r0x1004
;[ICODE] ldexpf.c:40: 	ret iTemp26 [k37 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-float}[r0x1048 r0x1049 r0x104A r0x104B ]
	MOVF	r0x1007,W
	MOVWF	STK02
	MOVF	r0x1006,W
	MOVWF	STK01
	MOVF	r0x1005,W
	MOVWF	STK00
	MOVF	r0x1004,W
;[ICODE] ldexpf.c:40:  _return($1) :
;[ICODE] ldexpf.c:40: 	eproc _ldexpf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float, const-int) }
	RETURN	
; exit point of _ldexpf


;	code size estimation:
;	  118+   37 =   155 instructions (  384 byte)

	end
