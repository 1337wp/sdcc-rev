;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:59 2018
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f452

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global ___fps16x162sfloat

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern ___ulong2fs
	extern ___fsdiv
	extern ___fsadd
	extern ___fsmul
;--------------------------------------------------------
;	Equates to used internal registers
;--------------------------------------------------------
STATUS	equ	0xfd8
WREG	equ	0xfe8
FSR0L	equ	0xfe9
FSR1L	equ	0xfe1
FSR2L	equ	0xfd9
POSTDEC1	equ	0xfe5
PREINC1	equ	0xfe4
PLUSW2	equ	0xfdb
PRODL	equ	0xff3
PRODH	equ	0xff4


; Internal registers
.registers	udata_ovr	0x0000
r0x00	res	1
r0x01	res	1
r0x02	res	1
r0x03	res	1
r0x04	res	1
r0x05	res	1
r0x06	res	1
r0x07	res	1
r0x08	res	1
r0x09	res	1
r0x0a	res	1
r0x0b	res	1

udata_fps16x162sfloat_0	udata
___fps16x162sfloat_u_1_1	res	4

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($7) :
; ;ic:2: 	proc ___fps16x162sfloat [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( fixed16x16) }
S_fps16x162sfloat____fps16x162sfloat	code
___fps16x162sfloat:
;	.line	2; fps16x162sfloat.c	float __fps16x162sfloat(__fixed16x16 fixd)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
	MOVFF	r0x06, POSTDEC1
	MOVFF	r0x07, POSTDEC1
	MOVFF	r0x08, POSTDEC1
	MOVFF	r0x09, POSTDEC1
	MOVFF	r0x0a, POSTDEC1
	MOVFF	r0x0b, POSTDEC1
; ;ic:3: iTemp0 [k2 lr3:6 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{fixed16x16}{ sir@ ___fps16x162sfloat_fixd_1_1}[r0x00 r0x01 r0x02 r0x03 ] = recv ___fps16x162sfloat [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( fixed16x16) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
; ;ic:4: 	iTemp2 [k6 lr4:36 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ ___fps16x162sfloat_exp_1_1}[r0x04 r0x05 r0x06 r0x07 ] := 2 {literal-float}
;	.line	8; fps16x162sfloat.c	float tmp=0, exp=2;
	CLRF	r0x04
	CLRF	r0x05
	CLRF	r0x06
	MOVLW	0x40
	MOVWF	r0x07
; ;ic:5: 	iTemp3 [k9 lr5:6 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-fixed16x16 near* }[remat] = &[___fps16x162sfloat_u_1_1 [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct __00020000}]
; ;ic:6: 	*(iTemp3 [k9 lr5:6 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-fixed16x16 near* }[remat]) := iTemp0 [k2 lr3:6 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{fixed16x16}{ sir@ ___fps16x162sfloat_fixd_1_1}[r0x00 r0x01 r0x02 r0x03 ]
;	.line	10; fps16x162sfloat.c	u.fix = fixd;
	MOVF	r0x00, W
	BANKSEL	___fps16x162sfloat_u_1_1
	MOVWF	___fps16x162sfloat_u_1_1, B
	MOVF	r0x01, W
; removed redundant BANKSEL
	MOVWF	(___fps16x162sfloat_u_1_1 + 1), B
	MOVF	r0x02, W
; removed redundant BANKSEL
	MOVWF	(___fps16x162sfloat_u_1_1 + 2), B
	MOVF	r0x03, W
; removed redundant BANKSEL
	MOVWF	(___fps16x162sfloat_u_1_1 + 3), B
; ;ic:7: 	iTemp5 [k12 lr7:36 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat] = &[___fps16x162sfloat_u_1_1 [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct __00020000}]
; ;ic:8: 	iTemp7 [k15 lr8:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ ___fps16x162sfloat_u_1_1} = @[iTemp5 [k12 lr7:36 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]]
; ;ic:9: 	iTemp8 [k16 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] = iTemp7 [k15 lr8:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ ___fps16x162sfloat_u_1_1} & 0xffff0000 {literal-unsigned-long-int}
; removed redundant BANKSEL
;	.line	11; fps16x162sfloat.c	tmp = (u.value & 0xffff0000) >> 16;
	MOVF	(___fps16x162sfloat_u_1_1 + 2), W, B
	MOVWF	r0x02
; removed redundant BANKSEL
	MOVF	(___fps16x162sfloat_u_1_1 + 3), W, B
	MOVWF	r0x03
; ;ic:10: 	iTemp9 [k17 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] = iTemp8 [k16 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ] >> 0x10 {literal-unsigned-char}
	MOVF	r0x02, W
	MOVWF	r0x00
	MOVF	r0x03, W
; ;ic:11: 	send iTemp9 [k17 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 1}
; ;ic:12: 	iTemp1 [k4 lr12:38 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ ___fps16x162sfloat_tmp_1_1}[r0x00 r0x01 r0x02 r0x03 ] = call ___ulong2fs [k47 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( unsigned-long-int) }
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	___ulong2fs
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVLW	0x04
	ADDWF	FSR1L, F
; ;ic:14:  _whilecontinue_0($3) :
; ;ic:15: 	iTemp13 [k22 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ ___fps16x162sfloat_u_1_1} = @[iTemp5 [k12 lr7:36 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]]
; ;ic:16: 	if iTemp13 [k22 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ ___fps16x162sfloat_u_1_1} == 0 goto _whilebreak_0($5)
_00107_DS_:
	BANKSEL	___fps16x162sfloat_u_1_1
;	.line	13; fps16x162sfloat.c	while(u.value) {
	MOVF	___fps16x162sfloat_u_1_1, W, B
; removed redundant BANKSEL
	IORWF	(___fps16x162sfloat_u_1_1 + 1), W, B
; removed redundant BANKSEL
	IORWF	(___fps16x162sfloat_u_1_1 + 2), W, B
; removed redundant BANKSEL
	IORWF	(___fps16x162sfloat_u_1_1 + 3), W, B
	BTFSC	STATUS, 2
	BRA	_00109_DS_
; ;ic:17: 	iTemp18 [k29 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ ___fps16x162sfloat_u_1_1} = @[iTemp5 [k12 lr7:36 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]]
; ;ic:18: 	iTemp19 [k30 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{data-volatile-unsigned-long-int}[r0x08 r0x09 r0x0a r0x0b ] = iTemp18 [k29 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ ___fps16x162sfloat_u_1_1} & 0xffff {literal-volatile-unsigned-long-int}
; removed redundant BANKSEL
;	.line	14; fps16x162sfloat.c	u.value &= 0xffff;
	MOVF	___fps16x162sfloat_u_1_1, W, B
	MOVWF	r0x08
; removed redundant BANKSEL
	MOVF	(___fps16x162sfloat_u_1_1 + 1), W, B
	MOVWF	r0x09
; ;ic:19: 	*(iTemp5 [k12 lr7:36 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]) := iTemp19 [k30 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{data-volatile-unsigned-long-int}[r0x08 r0x09 r0x0a r0x0b ]
	MOVF	r0x08, W
; removed redundant BANKSEL
	MOVWF	___fps16x162sfloat_u_1_1, B
	MOVF	r0x09, W
; removed redundant BANKSEL
	MOVWF	(___fps16x162sfloat_u_1_1 + 1), B
; removed redundant BANKSEL
	CLRF	(___fps16x162sfloat_u_1_1 + 2), B
; removed redundant BANKSEL
	CLRF	(___fps16x162sfloat_u_1_1 + 3), B
; ;ic:20: 	iTemp22 [k34 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ ___fps16x162sfloat_u_1_1} = @[iTemp5 [k12 lr7:36 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]]
; ;ic:21: 	iTemp23 [k35 lr21:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{data-volatile-unsigned-long-int} = iTemp22 [k34 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ ___fps16x162sfloat_u_1_1} & 0x8000 {literal-volatile-unsigned-long-int}
; removed redundant BANKSEL
;	.line	15; fps16x162sfloat.c	if(u.value & 0x8000)tmp += 1/exp;
	BTFSS	(___fps16x162sfloat_u_1_1 + 1), 7
	BRA	_00106_DS_
; ;ic:22: 	if iTemp23 [k35 lr21:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{data-volatile-unsigned-long-int} == 0 goto _iffalse_0($2)
; ;ic:23: 	send 1 {literal-float}{argreg = 1}
; ;ic:24: 	send iTemp2 [k6 lr4:36 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ ___fps16x162sfloat_exp_1_1}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 2}
; ;ic:25: 	iTemp24 [k36 lr25:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x08 r0x09 r0x0a r0x0b ] = call ___fsdiv [k48 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVLW	0x3f
	MOVWF	POSTDEC1
	MOVLW	0x80
	MOVWF	POSTDEC1
	MOVLW	0x00
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CALL	___fsdiv
	MOVWF	r0x08
	MOVFF	PRODL, r0x09
	MOVFF	PRODH, r0x0a
	MOVFF	FSR0L, r0x0b
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:26: 	send iTemp1 [k4 lr12:38 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ ___fps16x162sfloat_tmp_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 1}
; ;ic:27: 	send iTemp24 [k36 lr25:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x08 r0x09 r0x0a r0x0b ]{argreg = 2}
; ;ic:28: 	iTemp1 [k4 lr12:38 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ ___fps16x162sfloat_tmp_1_1}[r0x00 r0x01 r0x02 r0x03 ] = call ___fsadd [k49 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	___fsadd
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:29:  _iffalse_0($2) :
; ;ic:30: 	send 2 {literal-float}{argreg = 1}
; ;ic:31: 	send iTemp2 [k6 lr4:36 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ ___fps16x162sfloat_exp_1_1}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 2}
; ;ic:32: 	iTemp2 [k6 lr4:36 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ ___fps16x162sfloat_exp_1_1}[r0x04 r0x05 r0x06 r0x07 ] = call ___fsmul [k50 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
_00106_DS_:
;	.line	16; fps16x162sfloat.c	exp *= 2;
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVLW	0x40
	MOVWF	POSTDEC1
	MOVLW	0x00
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x04
	MOVFF	PRODL, r0x05
	MOVFF	PRODH, r0x06
	MOVFF	FSR0L, r0x07
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:33: 	iTemp31 [k45 lr33:34 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ ___fps16x162sfloat_u_1_1} = @[iTemp5 [k12 lr7:36 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]]
; ;ic:34: 	iTemp32 [k46 lr34:35 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x08 r0x09 r0x0a r0x0b ] = iTemp31 [k45 lr33:34 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}{ sir@ ___fps16x162sfloat_u_1_1} << 0x1 {literal-unsigned-char}
	BANKSEL	___fps16x162sfloat_u_1_1
;	.line	17; fps16x162sfloat.c	u.value <<= 1;
	MOVF	___fps16x162sfloat_u_1_1, W, B
	ADDWF	___fps16x162sfloat_u_1_1, W, B
	MOVWF	r0x08
; removed redundant BANKSEL
	RLCF	(___fps16x162sfloat_u_1_1 + 1), W, B
	MOVWF	r0x09
; removed redundant BANKSEL
	RLCF	(___fps16x162sfloat_u_1_1 + 2), W, B
	MOVWF	r0x0a
; removed redundant BANKSEL
	RLCF	(___fps16x162sfloat_u_1_1 + 3), W, B
	MOVWF	r0x0b
; ;ic:35: 	*(iTemp5 [k12 lr7:36 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* }[remat]) := iTemp32 [k46 lr34:35 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int}[r0x08 r0x09 r0x0a r0x0b ]
	MOVF	r0x08, W
; removed redundant BANKSEL
	MOVWF	___fps16x162sfloat_u_1_1, B
	MOVF	r0x09, W
; removed redundant BANKSEL
	MOVWF	(___fps16x162sfloat_u_1_1 + 1), B
	MOVF	r0x0a, W
; removed redundant BANKSEL
	MOVWF	(___fps16x162sfloat_u_1_1 + 2), B
	MOVF	r0x0b, W
; removed redundant BANKSEL
	MOVWF	(___fps16x162sfloat_u_1_1 + 3), B
; ;ic:36: 	 goto _whilecontinue_0($3)
	BRA	_00107_DS_
; ;ic:37:  _whilebreak_0($5) :
; ;ic:38: 	ret iTemp1 [k4 lr12:38 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ ___fps16x162sfloat_tmp_1_1}[r0x00 r0x01 r0x02 r0x03 ]
_00109_DS_:
;	.line	20; fps16x162sfloat.c	return (tmp);
	MOVFF	r0x03, FSR0L
	MOVFF	r0x02, PRODH
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
; ;ic:39:  _return($6) :
; ;ic:40: 	eproc ___fps16x162sfloat [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( fixed16x16) }
	MOVFF	PREINC1, r0x0b
	MOVFF	PREINC1, r0x0a
	MOVFF	PREINC1, r0x09
	MOVFF	PREINC1, r0x08
	MOVFF	PREINC1, r0x07
	MOVFF	PREINC1, r0x06
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	



; Statistics:
; code size:	  454 (0x01c6) bytes ( 0.35%)
;           	  227 (0x00e3) words
; udata size:	    4 (0x0004) bytes ( 0.31%)
; access size:	   12 (0x000c) bytes


	end
