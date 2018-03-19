;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:29 2018
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"_modslong.c"
	list	p=16f877
	radix dec
	include "p16f877.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	__modulong

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
	global	__modslong

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL__modslong_0	udata
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
r0x100D	res	1
r0x100E	res	1
r0x100F	res	1
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
code__modslong	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  __modslong	;Function start
; 2 exit points
;has an exit
;functions called:
;   __modulong
;   __modulong
;   __modulong
;   __modulong
;   __modulong
;   __modulong
;   __modulong
;   __modulong
;23 compiler assigned registers:
;   r0x1000
;   STK00
;   r0x1001
;   STK01
;   r0x1002
;   STK02
;   r0x1003
;   STK03
;   r0x1004
;   STK04
;   r0x1005
;   STK05
;   r0x1006
;   STK06
;   r0x1007
;   r0x1008
;   r0x1009
;   r0x100A
;   r0x100B
;   r0x100C
;   r0x100D
;   r0x100E
;   r0x100F
;; Starting pCode block
;[ICODE] _modslong.c:31:  _entry($11) :
;[ICODE] _modslong.c:31: 	proc __modslong [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int function    ( long-int, long-int) }
__modslong	;Function start
; 2 exit points
;[ICODE] _modslong.c:31: iTemp0 [k2 lr3:31 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ __modslong_a_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] = recv __modslong [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int function    ( long-int, long-int) }
;	.line	31; "_modslong.c"	_modslong (long a, long b)
	BANKSEL	r0x1000
	MOVWF	r0x1000
	MOVF	STK00,W
	MOVWF	r0x1001
	MOVF	STK01,W
	MOVWF	r0x1002
	MOVF	STK02,W
	MOVWF	r0x1003
;[ICODE] _modslong.c:31: iTemp1 [k4 lr4:31 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ __modslong_b_1_1}[r0x104C r0x104D r0x104E r0x104F ] = recv __modslong [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int function    ( long-int, long-int) }
	MOVF	STK03,W
	MOVWF	r0x1004
	MOVF	STK04,W
	MOVWF	r0x1005
	MOVF	STK05,W
	MOVWF	r0x1006
	MOVF	STK06,W
	MOVWF	r0x1007
;[ICODE] _modslong.c:33: 	iTemp2 [k6 lr5:6 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp0 [k2 lr3:31 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ __modslong_a_1_1}[r0x1048 r0x1049 r0x104A r0x104B ] < 0x0 {literal-long-int}
;signed compare: left < lit(0x0=0), size=4, mask=ffffffff
;	.line	33; "_modslong.c"	if (a < 0) {
	BSF	STATUS,0
	BTFSS	r0x1000,7
	BCF	STATUS,0
	BTFSS	STATUS,0
	GOTO	_00112_DS_
;genSkipc:3225: created from rifx:0x7fff78ebbc80
;[ICODE] _modslong.c:33: 	if iTemp2 [k6 lr5:6 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_2($8)
;[ICODE] _modslong.c:34: 	iTemp3 [k7 lr7:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp1 [k4 lr4:31 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ __modslong_b_1_1}[r0x104C r0x104D r0x104E r0x104F ] < 0x0 {literal-long-int}
;signed compare: left < lit(0x0=0), size=4, mask=ffffffff
;	.line	34; "_modslong.c"	if (b < 0)
	BSF	STATUS,0
	BTFSS	r0x1004,7
	BCF	STATUS,0
	BTFSS	STATUS,0
	GOTO	_00106_DS_
;genSkipc:3225: created from rifx:0x7fff78ebbc80
;[ICODE] _modslong.c:34: 	if iTemp3 [k7 lr7:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_0($2)
;[ICODE] _modslong.c:35: 	iTemp4 [k9 lr9:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int}[r0x1050 r0x1051 r0x1052 r0x1053 ] = - iTemp0 [k2 lr3:31 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ __modslong_a_1_1}[r0x1048 r0x1049 r0x104A r0x104B ]
;	.line	35; "_modslong.c"	return _modulong ((unsigned long)-a, (unsigned long)-b);
	COMF	r0x1003,W
	MOVWF	r0x1008
	COMF	r0x1002,W
	MOVWF	r0x1009
	COMF	r0x1001,W
	MOVWF	r0x100A
	COMF	r0x1000,W
	MOVWF	r0x100B
	INCF	r0x1008,F
	BTFSC	STATUS,2
	INCF	r0x1009,F
	BTFSC	STATUS,2
	INCF	r0x100A,F
	BTFSC	STATUS,2
	INCF	r0x100B,F
;[ICODE] _modslong.c:35: 	iTemp6 [k11 lr10:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int}[r0x1054 r0x1055 r0x1056 r0x1057 ] = - iTemp1 [k4 lr4:31 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ __modslong_b_1_1}[r0x104C r0x104D r0x104E r0x104F ]
	COMF	r0x1007,W
	MOVWF	r0x100C
	COMF	r0x1006,W
	MOVWF	r0x100D
	COMF	r0x1005,W
	MOVWF	r0x100E
	COMF	r0x1004,W
	MOVWF	r0x100F
	INCF	r0x100C,F
	BTFSC	STATUS,2
	INCF	r0x100D,F
	BTFSC	STATUS,2
	INCF	r0x100E,F
	BTFSC	STATUS,2
	INCF	r0x100F,F
;[ICODE] _modslong.c:35: 	send iTemp4 [k9 lr9:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int}[r0x1050 r0x1051 r0x1052 r0x1053 ]{argreg = 1}
;[ICODE] _modslong.c:35: 	send iTemp6 [k11 lr10:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int}[r0x1054 r0x1055 r0x1056 r0x1057 ]{argreg = 1}
;[ICODE] _modslong.c:35: 	iTemp8 [k13 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x1050 r0x1051 r0x1052 r0x1053 ] = call __modulong [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int function    ( unsigned-long-int, unsigned-long-int) }
	MOVF	r0x100C,W
	MOVWF	STK06
	MOVF	r0x100D,W
	MOVWF	STK05
	MOVF	r0x100E,W
	MOVWF	STK04
	MOVF	r0x100F,W
	MOVWF	STK03
	MOVF	r0x1008,W
	MOVWF	STK02
	MOVF	r0x1009,W
	MOVWF	STK01
	MOVF	r0x100A,W
	MOVWF	STK00
	MOVF	r0x100B,W
	PAGESEL	__modulong
	CALL	__modulong
	PAGESEL	$
	BANKSEL	r0x100B
	MOVWF	r0x100B
	MOVF	STK00,W
	MOVWF	r0x100A
	MOVF	STK01,W
	MOVWF	r0x1009
	MOVF	STK02,W
	MOVWF	r0x1008
	MOVWF	STK02
	MOVF	r0x1009,W
	MOVWF	STK01
	MOVF	r0x100A,W
	MOVWF	STK00
	MOVF	r0x100B,W
	GOTO	_00114_DS_
;[ICODE] _modslong.c:35:  _iffalse_0($2) :
;[ICODE] _modslong.c:37: 	iTemp10 [k15 lr16:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int}[r0x1050 r0x1051 r0x1052 r0x1053 ] = - iTemp0 [k2 lr3:31 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ __modslong_a_1_1}[r0x1048 r0x1049 r0x104A r0x104B ]
_00106_DS_
;	.line	37; "_modslong.c"	return _modulong ((unsigned long)-a, (unsigned long)b);
	BANKSEL	r0x1003
	COMF	r0x1003,W
	MOVWF	r0x1008
	COMF	r0x1002,W
	MOVWF	r0x1009
	COMF	r0x1001,W
	MOVWF	r0x100A
	COMF	r0x1000,W
	MOVWF	r0x100B
	INCF	r0x1008,F
	BTFSC	STATUS,2
	INCF	r0x1009,F
	BTFSC	STATUS,2
	INCF	r0x100A,F
	BTFSC	STATUS,2
	INCF	r0x100B,F
;[ICODE] _modslong.c:37: 	send iTemp10 [k15 lr16:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int}[r0x1050 r0x1051 r0x1052 r0x1053 ]{argreg = 1}
;[ICODE] _modslong.c:37: 	send iTemp1 [k4 lr4:31 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ __modslong_b_1_1}[r0x104C r0x104D r0x104E r0x104F ]{argreg = 1}
;[ICODE] _modslong.c:37: 	iTemp13 [k18 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x1050 r0x1051 r0x1052 r0x1053 ] = call __modulong [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int function    ( unsigned-long-int, unsigned-long-int) }
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
	PAGESEL	__modulong
	CALL	__modulong
	PAGESEL	$
	BANKSEL	r0x100B
	MOVWF	r0x100B
	MOVF	STK00,W
	MOVWF	r0x100A
	MOVF	STK01,W
	MOVWF	r0x1009
	MOVF	STK02,W
	MOVWF	r0x1008
	MOVWF	STK02
	MOVF	r0x1009,W
	MOVWF	STK01
	MOVF	r0x100A,W
	MOVWF	STK00
	MOVF	r0x100B,W
	GOTO	_00114_DS_
;[ICODE] _modslong.c:37:  _iffalse_2($8) :
;[ICODE] _modslong.c:39: 	iTemp15 [k20 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp1 [k4 lr4:31 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ __modslong_b_1_1}[r0x104C r0x104D r0x104E r0x104F ] < 0x0 {literal-long-int}
;signed compare: left < lit(0x0=0), size=4, mask=ffffffff
_00112_DS_
;	.line	39; "_modslong.c"	if (b < 0)
	BSF	STATUS,0
	BANKSEL	r0x1004
	BTFSS	r0x1004,7
	BCF	STATUS,0
	BTFSS	STATUS,0
	GOTO	_00109_DS_
;genSkipc:3225: created from rifx:0x7fff78ebbc80
;[ICODE] _modslong.c:39: 	if iTemp15 [k20 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_1($5)
;[ICODE] _modslong.c:40: 	iTemp17 [k22 lr24:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int}[r0x1050 r0x1051 r0x1052 r0x1053 ] = - iTemp1 [k4 lr4:31 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ __modslong_b_1_1}[r0x104C r0x104D r0x104E r0x104F ]
;	.line	40; "_modslong.c"	return _modulong ((unsigned long)a, (unsigned long)-b);
	COMF	r0x1007,W
	MOVWF	r0x1008
	COMF	r0x1006,W
	MOVWF	r0x1009
	COMF	r0x1005,W
	MOVWF	r0x100A
	COMF	r0x1004,W
	MOVWF	r0x100B
	INCF	r0x1008,F
	BTFSC	STATUS,2
	INCF	r0x1009,F
	BTFSC	STATUS,2
	INCF	r0x100A,F
	BTFSC	STATUS,2
	INCF	r0x100B,F
;[ICODE] _modslong.c:40: 	send iTemp0 [k2 lr3:31 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ __modslong_a_1_1}[r0x1048 r0x1049 r0x104A r0x104B ]{argreg = 1}
;[ICODE] _modslong.c:40: 	send iTemp17 [k22 lr24:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int}[r0x1050 r0x1051 r0x1052 r0x1053 ]{argreg = 1}
;[ICODE] _modslong.c:40: 	iTemp19 [k24 lr27:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x1050 r0x1051 r0x1052 r0x1053 ] = call __modulong [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int function    ( unsigned-long-int, unsigned-long-int) }
	MOVF	r0x1008,W
	MOVWF	STK06
	MOVF	r0x1009,W
	MOVWF	STK05
	MOVF	r0x100A,W
	MOVWF	STK04
	MOVF	r0x100B,W
	MOVWF	STK03
	MOVF	r0x1003,W
	MOVWF	STK02
	MOVF	r0x1002,W
	MOVWF	STK01
	MOVF	r0x1001,W
	MOVWF	STK00
	MOVF	r0x1000,W
	PAGESEL	__modulong
	CALL	__modulong
	PAGESEL	$
	BANKSEL	r0x100B
	MOVWF	r0x100B
	MOVF	STK00,W
	MOVWF	r0x100A
	MOVF	STK01,W
	MOVWF	r0x1009
	MOVF	STK02,W
	MOVWF	r0x1008
	MOVWF	STK02
	MOVF	r0x1009,W
	MOVWF	STK01
	MOVF	r0x100A,W
	MOVWF	STK00
	MOVF	r0x100B,W
	GOTO	_00114_DS_
;[ICODE] _modslong.c:40:  _iffalse_1($5) :
;[ICODE] _modslong.c:42: 	send iTemp0 [k2 lr3:31 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ __modslong_a_1_1}[r0x1048 r0x1049 r0x104A r0x104B ]{argreg = 1}
;[ICODE] _modslong.c:42: 	send iTemp1 [k4 lr4:31 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int}{ sir@ __modslong_b_1_1}[r0x104C r0x104D r0x104E r0x104F ]{argreg = 1}
;[ICODE] _modslong.c:42: 	iTemp23 [k28 lr32:33 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x1048 r0x1049 r0x104A r0x104B ] = call __modulong [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int function    ( unsigned-long-int, unsigned-long-int) }
_00109_DS_
;	.line	42; "_modslong.c"	return _modulong ((unsigned long)a, (unsigned long)b);
	BANKSEL	r0x1007
	MOVF	r0x1007,W
	MOVWF	STK06
	MOVF	r0x1006,W
	MOVWF	STK05
	MOVF	r0x1005,W
	MOVWF	STK04
	MOVF	r0x1004,W
	MOVWF	STK03
	MOVF	r0x1003,W
	MOVWF	STK02
	MOVF	r0x1002,W
	MOVWF	STK01
	MOVF	r0x1001,W
	MOVWF	STK00
	MOVF	r0x1000,W
	PAGESEL	__modulong
	CALL	__modulong
	PAGESEL	$
	BANKSEL	r0x1000
	MOVWF	r0x1000
	MOVF	STK00,W
	MOVWF	r0x1001
	MOVF	STK01,W
	MOVWF	r0x1002
	MOVF	STK02,W
	MOVWF	r0x1003
	MOVWF	STK02
	MOVF	r0x1002,W
	MOVWF	STK01
	MOVF	r0x1001,W
	MOVWF	STK00
	MOVF	r0x1000,W
;[ICODE] _modslong.c:42:  _return($10) :
;[ICODE] _modslong.c:42: 	eproc __modslong [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int function    ( long-int, long-int) }
_00114_DS_
	RETURN	
; exit point of __modslong


;	code size estimation:
;	  210+   16 =   226 instructions (  484 byte)

	end
