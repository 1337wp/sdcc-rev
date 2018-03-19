;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:32 2018
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"frexpf.c"
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
	extern	_ldexpf
	extern	_ceilf
	extern	_floorf
	extern	_modff
	extern	_errno
	extern	__gptrput2

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
	global	_frexpf

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_frexpf_0	udata
r0x1007	res	1
r0x1006	res	1
r0x1005	res	1
r0x1004	res	1
r0x100A	res	1
r0x1009	res	1
r0x1008	res	1
r0x100B	res	1
r0x100C	res	1
_frexpf_fl_1_1	res	4
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
code_frexpf	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  _frexpf	;Function start
; 2 exit points
;has an exit
;functions called:
;   __gptrput2
;   __gptrput2
;17 compiler assigned registers:
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
;   STK05
;   r0x100A
;   r0x100B
;   r0x100C
;   r0x100D
;   r0x100E
;; Starting pCode block
;[ICODE] frexpf.c:29:  _entry($2) :
;[ICODE] frexpf.c:29: 	proc _frexpf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float, int generic* ) }
_frexpf	;Function start
; 2 exit points
;[ICODE] frexpf.c:29: iTemp0 [k2 lr3:6 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _frexpf_x_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = recv _frexpf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float, int generic* ) }
;	.line	29; "frexpf.c"	float frexpf(const float x, int *pw2)
	BANKSEL	r0x1004
	MOVWF	r0x1004
	MOVF	STK00,W
	MOVWF	r0x1005
	MOVF	STK01,W
	MOVWF	r0x1006
	MOVF	STK02,W
	BANKSEL	_frexpf_fl_1_1
	MOVWF	(_frexpf_fl_1_1 + 0)
	BANKSEL	r0x1007
	MOVWF	r0x1007
;[ICODE] frexpf.c:29: iTemp1 [k4 lr4:15 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int generic* }{ sir@ _frexpf_pw2_1_1}[r0x104C r0x104D r0x104E ] = recv _frexpf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float, int generic* ) }
	MOVF	STK03,W
	MOVWF	r0x1008
	MOVF	STK04,W
	MOVWF	r0x1009
	MOVF	STK05,W
	MOVWF	r0x100A
;[ICODE] frexpf.c:34: 	iTemp2 [k7 lr5:6 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat] = &[_frexpf_fl_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct float_long}]
;[ICODE] frexpf.c:34: 	*(iTemp2 [k7 lr5:6 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat]) := iTemp0 [k2 lr3:6 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _frexpf_x_1_1}[r0x1048 r0x1049 r0x104A r0x104B ]
;gen.c:7685: size=3/4, offset=0, AOP_TYPE(res)=8
;;99	MOVF	r0x1007,W
;gen.c:7685: size=2/4, offset=1, AOP_TYPE(res)=8
;	.line	34; "frexpf.c"	fl.f=x;
	MOVF	r0x1006,W
	BANKSEL	_frexpf_fl_1_1
	MOVWF	(_frexpf_fl_1_1 + 1)
;gen.c:7685: size=1/4, offset=2, AOP_TYPE(res)=8
	BANKSEL	r0x1005
	MOVF	r0x1005,W
	BANKSEL	_frexpf_fl_1_1
	MOVWF	(_frexpf_fl_1_1 + 2)
;gen.c:7685: size=0/4, offset=3, AOP_TYPE(res)=8
	BANKSEL	r0x1004
	MOVF	r0x1004,W
	BANKSEL	_frexpf_fl_1_1
	MOVWF	(_frexpf_fl_1_1 + 3)
;[ICODE] frexpf.c:36: 	iTemp5 [k12 lr7:21 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat] = &[_frexpf_fl_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct float_long}]
;[ICODE] frexpf.c:36: 	iTemp7 [k15 lr8:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp5 [k12 lr7:21 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat]]
;	.line	36; "frexpf.c"	i  = ( fl.l >> 23) & 0x000000ff;
	MOVF	(_frexpf_fl_1_1 + 0),W
	BANKSEL	r0x1007
	MOVWF	r0x1007
	BANKSEL	_frexpf_fl_1_1
	MOVF	(_frexpf_fl_1_1 + 1),W
	BANKSEL	r0x1006
	MOVWF	r0x1006
	BANKSEL	_frexpf_fl_1_1
	MOVF	(_frexpf_fl_1_1 + 2),W
	BANKSEL	r0x1005
	MOVWF	r0x1005
	BANKSEL	_frexpf_fl_1_1
	MOVF	(_frexpf_fl_1_1 + 3),W
	BANKSEL	r0x1004
	MOVWF	r0x1004
;[ICODE] frexpf.c:36: 	iTemp8 [k16 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}[r0x104F r0x1050 r0x1051 r0x1052 ] = iTemp7 [k15 lr8:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] >> 0x17 {literal-unsigned-char}
	RLF	r0x1005,W
	RLF	r0x1004,W
	MOVWF	r0x100B
	CLRF	r0x100C
	BTFSC	STATUS,0
	DECF	r0x100C,F
	MOVLW	0x00
	BTFSC	r0x100C,7
	MOVLW	0xff
;;1	MOVWF	r0x100D
;;1	MOVWF	r0x100E
;[ICODE] frexpf.c:36: 	iTemp4 [k10 lr10:14 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ _frexpf_i_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp8 [k16 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}[r0x104F r0x1050 r0x1051 r0x1052 ] & 0xff {literal-volatile-long-int}
	MOVF	r0x100B,W
	MOVWF	r0x1007
	CLRF	r0x1006
	CLRF	r0x1005
	CLRF	r0x1004
;[ICODE] frexpf.c:37: 	iTemp4 [k10 lr10:14 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ _frexpf_i_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp4 [k10 lr10:14 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ _frexpf_i_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] - 0x7e {literal-long-int}
;	.line	37; "frexpf.c"	i -= 0x7e;
	MOVLW	0x82
	ADDWF	r0x1007,F
	MOVLW	0xff
	BTFSS	STATUS,0
	ADDWF	r0x1006,F
	MOVLW	0xff
	BTFSS	STATUS,0
	ADDWF	r0x1005,F
	MOVLW	0xff
	BTFSS	STATUS,0
	ADDWF	r0x1004,F
;[ICODE] frexpf.c:38: 	iTemp12 [k20 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x104F r0x1050 ] = (int)iTemp4 [k10 lr10:14 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ _frexpf_i_1_1}[r0x1048 r0x1049 r0x104A r0x104B ]
;;101	MOVF	r0x1007,W
;	.line	38; "frexpf.c"	*pw2 = i;
	MOVF	r0x1006,W
	MOVWF	r0x100C
	MOVWF	STK02
;;100	MOVF	r0x100B,W
	MOVF	r0x1007,W
	MOVWF	r0x100B
	MOVWF	STK03
	MOVF	r0x100A,W
	MOVWF	STK01
	MOVF	r0x1009,W
	MOVWF	STK00
	MOVF	r0x1008,W
	PAGESEL	__gptrput2
	CALL	__gptrput2
	PAGESEL	$
;[ICODE] frexpf.c:39: 	iTemp17 [k27 lr16:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp5 [k12 lr7:21 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat]]
;	.line	39; "frexpf.c"	fl.l &= 0x807fffff; /* strip all exponent bits */
	BANKSEL	_frexpf_fl_1_1
	MOVF	(_frexpf_fl_1_1 + 0),W
	BANKSEL	r0x1007
	MOVWF	r0x1007
	BANKSEL	_frexpf_fl_1_1
	MOVF	(_frexpf_fl_1_1 + 1),W
	BANKSEL	r0x1006
	MOVWF	r0x1006
	BANKSEL	_frexpf_fl_1_1
	MOVF	(_frexpf_fl_1_1 + 2),W
	BANKSEL	r0x1005
	MOVWF	r0x1005
	BANKSEL	_frexpf_fl_1_1
	MOVF	(_frexpf_fl_1_1 + 3),W
	BANKSEL	r0x1004
	MOVWF	r0x1004
;[ICODE] frexpf.c:39: 	iTemp19 [k29 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp17 [k27 lr16:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] & 0x807fffff {literal-unsigned-long-int}
	BCF	r0x1005,7
	MOVLW	0x80
	ANDWF	r0x1004,F
;[ICODE] frexpf.c:39: 	*(iTemp5 [k12 lr7:21 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat]) := iTemp19 [k29 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x1048 r0x1049 r0x104A r0x104B ]
;gen.c:7685: size=3/4, offset=0, AOP_TYPE(res)=8
	MOVF	r0x1007,W
	BANKSEL	_frexpf_fl_1_1
	MOVWF	(_frexpf_fl_1_1 + 0)
;gen.c:7685: size=2/4, offset=1, AOP_TYPE(res)=8
	BANKSEL	r0x1006
	MOVF	r0x1006,W
	BANKSEL	_frexpf_fl_1_1
	MOVWF	(_frexpf_fl_1_1 + 1)
;gen.c:7685: size=1/4, offset=2, AOP_TYPE(res)=8
	BANKSEL	r0x1005
	MOVF	r0x1005,W
	BANKSEL	_frexpf_fl_1_1
	MOVWF	(_frexpf_fl_1_1 + 2)
;gen.c:7685: size=0/4, offset=3, AOP_TYPE(res)=8
	BANKSEL	r0x1004
	MOVF	r0x1004,W
	BANKSEL	_frexpf_fl_1_1
	MOVWF	(_frexpf_fl_1_1 + 3)
;[ICODE] frexpf.c:40: 	iTemp25 [k37 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp5 [k12 lr7:21 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat]]
;	.line	40; "frexpf.c"	fl.l |= 0x3f000000; /* mantissa between 0.5 and 1 */
	MOVF	(_frexpf_fl_1_1 + 0),W
	BANKSEL	r0x1007
	MOVWF	r0x1007
	BANKSEL	_frexpf_fl_1_1
	MOVF	(_frexpf_fl_1_1 + 1),W
	BANKSEL	r0x1006
	MOVWF	r0x1006
	BANKSEL	_frexpf_fl_1_1
	MOVF	(_frexpf_fl_1_1 + 2),W
	BANKSEL	r0x1005
	MOVWF	r0x1005
	BANKSEL	_frexpf_fl_1_1
	MOVF	(_frexpf_fl_1_1 + 3),W
	BANKSEL	r0x1004
	MOVWF	r0x1004
;[ICODE] frexpf.c:40: 	iTemp26 [k38 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int}[r0x1048 r0x1049 r0x104A r0x104B ] = iTemp25 [k37 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] | 0x3f000000 {literal-long-int}
	MOVLW	0x3f
	IORWF	r0x1004,F
;[ICODE] frexpf.c:40: 	*(iTemp5 [k12 lr7:21 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-long-int near* }[remat]) := iTemp26 [k38 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int}[r0x1048 r0x1049 r0x104A r0x104B ]
;gen.c:7685: size=3/4, offset=0, AOP_TYPE(res)=8
	MOVF	r0x1007,W
	BANKSEL	_frexpf_fl_1_1
	MOVWF	(_frexpf_fl_1_1 + 0)
;gen.c:7685: size=2/4, offset=1, AOP_TYPE(res)=8
	BANKSEL	r0x1006
	MOVF	r0x1006,W
	BANKSEL	_frexpf_fl_1_1
	MOVWF	(_frexpf_fl_1_1 + 1)
;gen.c:7685: size=1/4, offset=2, AOP_TYPE(res)=8
	BANKSEL	r0x1005
	MOVF	r0x1005,W
	BANKSEL	_frexpf_fl_1_1
	MOVWF	(_frexpf_fl_1_1 + 2)
;gen.c:7685: size=0/4, offset=3, AOP_TYPE(res)=8
	BANKSEL	r0x1004
	MOVF	r0x1004,W
	BANKSEL	_frexpf_fl_1_1
	MOVWF	(_frexpf_fl_1_1 + 3)
;[ICODE] frexpf.c:41: 	iTemp27 [k39 lr22:23 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat] = &[_frexpf_fl_1_1 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct float_long}]
;[ICODE] frexpf.c:41: 	iTemp29 [k42 lr23:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-float}[r0x1048 r0x1049 r0x104A r0x104B ] = @[iTemp27 [k39 lr22:23 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* }[remat]]
;	.line	41; "frexpf.c"	return(fl.f);
	MOVF	(_frexpf_fl_1_1 + 0),W
	BANKSEL	r0x1007
	MOVWF	r0x1007
	BANKSEL	_frexpf_fl_1_1
	MOVF	(_frexpf_fl_1_1 + 1),W
	BANKSEL	r0x1006
	MOVWF	r0x1006
	BANKSEL	_frexpf_fl_1_1
	MOVF	(_frexpf_fl_1_1 + 2),W
	BANKSEL	r0x1005
	MOVWF	r0x1005
	BANKSEL	_frexpf_fl_1_1
	MOVF	(_frexpf_fl_1_1 + 3),W
	BANKSEL	r0x1004
	MOVWF	r0x1004
;[ICODE] frexpf.c:41: 	ret iTemp29 [k42 lr23:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-float}[r0x1048 r0x1049 r0x104A r0x104B ]
	MOVF	r0x1007,W
	MOVWF	STK02
	MOVF	r0x1006,W
	MOVWF	STK01
	MOVF	r0x1005,W
	MOVWF	STK00
	MOVF	r0x1004,W
;[ICODE] frexpf.c:41:  _return($1) :
;[ICODE] frexpf.c:41: 	eproc _frexpf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float, int generic* ) }
	RETURN	
; exit point of _frexpf


;	code size estimation:
;	  118+   53 =   171 instructions (  448 byte)

	end
