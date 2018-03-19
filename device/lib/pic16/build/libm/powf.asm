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
	global _powf

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern _errno
	extern _expf
	extern _logf
	extern ___fseq
	extern ___fsgt
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

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($8) :
; ;ic:2: 	proc _powf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float, const-float) }
S_powf__powf	code
_powf:
;	.line	29; powf.c	float powf(const float x, const float y)
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
; ;ic:3: iTemp0 [k2 lr3:20 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _powf_x_1_1}[r0x00 r0x01 r0x02 r0x03 ] = recv _powf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float, const-float) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
; ;ic:4: iTemp1 [k4 lr4:23 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _powf_y_1_1}[r0x04 r0x05 r0x06 r0x07 ] = recv _powf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float, const-float) }
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
	MOVLW	0x08
	MOVFF	PLUSW2, r0x06
	MOVLW	0x09
	MOVFF	PLUSW2, r0x07
; ;ic:5: 	if iTemp1 [k4 lr4:23 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _powf_y_1_1}[r0x04 r0x05 r0x06 r0x07 ] != 0 goto _iffalse_0($2)
;	.line	31; powf.c	if(y == 0.0) return 1.0;
	MOVF	r0x04, W
	IORWF	r0x05, W
	IORWF	r0x06, W
	IORWF	r0x07, W
	BNZ	_00106_DS_
; ;ic:6: 	ret 1 {literal-float}
	MOVLW	0x3f
	MOVWF	FSR0L
	MOVLW	0x80
	MOVWF	PRODH
	CLRF	PRODL
	CLRF	WREG
	BRA	_00111_DS_
; ;ic:7:  _iffalse_0($2) :
; ;ic:8: 	send iTemp1 [k4 lr4:23 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _powf_y_1_1}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 1}
; ;ic:9: 	send 1 {literal-float}{argreg = 2}
; ;ic:10: 	iTemp2 [k6 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x08 ] = call ___fseq [k13 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
_00106_DS_:
;	.line	32; powf.c	if(y==1.0) return x;
	MOVLW	0x3f
	MOVWF	POSTDEC1
	MOVLW	0x80
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	CALL	___fseq
	MOVWF	r0x08
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:11: 	if iTemp2 [k6 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x08 ] == 0 goto _iffalse_1($4)
	MOVF	r0x08, W
	BZ	_00108_DS_
; ;ic:12: 	ret iTemp0 [k2 lr3:20 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _powf_x_1_1}[r0x00 r0x01 r0x02 r0x03 ]
	MOVFF	r0x03, FSR0L
	MOVFF	r0x02, PRODH
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
	BRA	_00111_DS_
; ;ic:13:  _iffalse_1($4) :
; ;ic:14: 	send iTemp0 [k2 lr3:20 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _powf_x_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 1}
; ;ic:15: 	send 0 {literal-float}{argreg = 2}
; ;ic:16: 	iTemp3 [k7 lr16:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x08 ] = call ___fsgt [k14 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
_00108_DS_:
;	.line	33; powf.c	if(x <= 0.0) return 0.0;
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	___fsgt
	MOVWF	r0x08
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:17: 	if iTemp3 [k7 lr16:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x08 ] != 0 goto _iffalse_2($6)
	MOVF	r0x08, W
	BNZ	_00110_DS_
; ;ic:18: 	ret 0 {literal-float}
	CLRF	FSR0L
	CLRF	PRODH
	CLRF	PRODL
	CLRF	WREG
	BRA	_00111_DS_
; ;ic:19:  _iffalse_2($6) :
; ;ic:20: 	send iTemp0 [k2 lr3:20 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _powf_x_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 1}
; ;ic:21: 	iTemp4 [k10 lr21:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x00 r0x01 r0x02 r0x03 ] = call _logf [k9 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float) }
_00110_DS_:
;	.line	34; powf.c	return expf(logf(x) * y);
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_logf
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVLW	0x04
	ADDWF	FSR1L, F
; ;ic:22: 	send iTemp4 [k10 lr21:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 1}
; ;ic:23: 	send iTemp1 [k4 lr4:23 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _powf_y_1_1}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 2}
; ;ic:24: 	iTemp5 [k11 lr24:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x00 r0x01 r0x02 r0x03 ] = call ___fsmul [k15 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:25: 	send iTemp5 [k11 lr24:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 1}
; ;ic:26: 	iTemp6 [k12 lr26:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x00 r0x01 r0x02 r0x03 ] = call _expf [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float) }
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_expf
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVLW	0x04
	ADDWF	FSR1L, F
; ;ic:27: 	ret iTemp6 [k12 lr26:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x00 r0x01 r0x02 r0x03 ]
	MOVFF	r0x03, FSR0L
	MOVFF	r0x02, PRODH
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
; ;ic:28:  _return($7) :
; ;ic:29: 	eproc _powf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float, const-float) }
_00111_DS_:
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
; code size:	  408 (0x0198) bytes ( 0.31%)
;           	  204 (0x00cc) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    9 (0x0009) bytes


	end
