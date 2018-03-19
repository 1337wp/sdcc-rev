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
	global _atan2f

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern _errno
	extern _atanf
	extern _fabsf
	extern ___fslt
	extern ___fsdiv
	extern ___fsadd
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
r0x0c	res	1
r0x0d	res	1
r0x0e	res	1
r0x0f	res	1

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($10) :
; ;ic:2: 	proc _atan2f [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float, const-float) }
S_atan2f__atan2f	code
_atan2f:
;	.line	28; atan2f.c	float atan2f(const float x, const float y)
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
	MOVFF	r0x0c, POSTDEC1
	MOVFF	r0x0d, POSTDEC1
	MOVFF	r0x0e, POSTDEC1
	MOVFF	r0x0f, POSTDEC1
; ;ic:3: iTemp0 [k2 lr3:49 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _atan2f_x_1_1}[r0x00 r0x01 r0x02 r0x03 ] = recv _atan2f [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float, const-float) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
; ;ic:4: iTemp1 [k4 lr4:43 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _atan2f_y_1_1}[r0x04 r0x05 r0x06 r0x07 ] = recv _atan2f [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float, const-float) }
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
	MOVLW	0x08
	MOVFF	PLUSW2, r0x06
	MOVLW	0x09
	MOVFF	PLUSW2, r0x07
; ;ic:5: 	if iTemp0 [k2 lr3:49 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _atan2f_x_1_1}[r0x00 r0x01 r0x02 r0x03 ] != 0 goto _iffalse_0($2)
;	.line	32; atan2f.c	if ((x==0.0) && (y==0.0))
	MOVF	r0x00, W
	IORWF	r0x01, W
	IORWF	r0x02, W
	IORWF	r0x03, W
	BNZ	_00106_DS_
; ;ic:6: 	if iTemp1 [k4 lr4:43 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _atan2f_y_1_1}[r0x04 r0x05 r0x06 r0x07 ] != 0 goto _iffalse_0($2)
	MOVF	r0x04, W
	IORWF	r0x05, W
	IORWF	r0x06, W
	IORWF	r0x07, W
	BNZ	_00106_DS_
; ;ic:7: 	_errno [k6 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{int} := 0x21 {literal-int}
;	.line	34; atan2f.c	errno=EDOM;
	MOVLW	0x21
	BANKSEL	_errno
	MOVWF	_errno, B
; removed redundant BANKSEL
	CLRF	(_errno + 1), B
; ;ic:8: 	ret 0 {literal-float}
;	.line	35; atan2f.c	return 0.0;
	CLRF	FSR0L
	CLRF	PRODH
	CLRF	PRODL
	CLRF	WREG
	BRA	_00113_DS_
; ;ic:9:  _iffalse_0($2) :
; ;ic:10: 	send iTemp1 [k4 lr4:43 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _atan2f_y_1_1}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 1}
; ;ic:11: 	iTemp3 [k9 lr11:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x08 r0x09 r0x0a r0x0b ] = call _fabsf [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float) }
_00106_DS_:
;	.line	38; atan2f.c	if(fabsf(y)>=fabsf(x))
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	CALL	_fabsf
	MOVWF	r0x08
	MOVFF	PRODL, r0x09
	MOVFF	PRODH, r0x0a
	MOVFF	FSR0L, r0x0b
	MOVLW	0x04
	ADDWF	FSR1L, F
; ;ic:12: 	send iTemp0 [k2 lr3:49 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _atan2f_x_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 1}
; ;ic:13: 	iTemp4 [k10 lr13:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0c r0x0d r0x0e r0x0f ] = call _fabsf [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float) }
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_fabsf
	MOVWF	r0x0c
	MOVFF	PRODL, r0x0d
	MOVFF	PRODH, r0x0e
	MOVFF	FSR0L, r0x0f
	MOVLW	0x04
	ADDWF	FSR1L, F
; ;ic:14: 	send iTemp3 [k9 lr11:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x08 r0x09 r0x0a r0x0b ]{argreg = 1}
; ;ic:15: 	send iTemp4 [k10 lr13:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0c r0x0d r0x0e r0x0f ]{argreg = 2}
; ;ic:16: 	iTemp5 [k11 lr16:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x08 ] = call ___fslt [k28 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	CALL	___fslt
	MOVWF	r0x08
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:17: 	if iTemp5 [k11 lr16:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x08 ] != 0 goto _iffalse_2($7)
	MOVF	r0x08, W
	BTFSS	STATUS, 2
	BRA	_00111_DS_
; ;ic:18: 	send iTemp0 [k2 lr3:49 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _atan2f_x_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 1}
; ;ic:19: 	send iTemp1 [k4 lr4:43 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _atan2f_y_1_1}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 2}
; ;ic:20: 	iTemp7 [k15 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x08 r0x09 r0x0a r0x0b ] = call ___fsdiv [k29 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
;	.line	40; atan2f.c	r=atanf(x/y);
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
	CALL	___fsdiv
	MOVWF	r0x08
	MOVFF	PRODL, r0x09
	MOVFF	PRODH, r0x0a
	MOVFF	FSR0L, r0x0b
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:21: 	send iTemp7 [k15 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x08 r0x09 r0x0a r0x0b ]{argreg = 1}
; ;ic:22: 	iTemp6 [k12 lr22:61 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atan2f_r_1_1}[r0x08 r0x09 r0x0a r0x0b ] = call _atanf [k14 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float) }
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	CALL	_atanf
	MOVWF	r0x08
	MOVFF	PRODL, r0x09
	MOVFF	PRODH, r0x0a
	MOVFF	FSR0L, r0x0b
	MOVLW	0x04
	ADDWF	FSR1L, F
; ;ic:23: 	send iTemp1 [k4 lr4:43 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _atan2f_y_1_1}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 1}
; ;ic:24: 	send 0 {literal-float}{argreg = 2}
; ;ic:25: 	iTemp9 [k17 lr25:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0c ] = call ___fslt [k28 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
;	.line	41; atan2f.c	if(y<0.0) r+=(x>=0?PI:-PI);
	CLRF	POSTDEC1
	CLRF	POSTDEC1
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
	CALL	___fslt
	MOVWF	r0x0c
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:26: 	if iTemp9 [k17 lr25:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0c ] == 0 goto _ifend_2($8)
	MOVF	r0x0c, W
	BTFSC	STATUS, 2
	BRA	_00112_DS_
; ;ic:27: 	send iTemp0 [k2 lr3:49 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _atan2f_x_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 1}
; ;ic:28: 	send 0 {literal-float}{argreg = 2}
; ;ic:29: 	iTemp10 [k18 lr29:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0c ] = call ___fslt [k28 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
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
	CALL	___fslt
	MOVWF	r0x0c
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:30: 	iTemp11 [k19 lr30:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x0c ] = not iTemp10 [k18 lr29:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0c ]
	MOVF	r0x0c, W
	BSF	STATUS, 0
	TSTFSZ	WREG
	BCF	STATUS, 0
	CLRF	r0x0c
	RLCF	r0x0c, F
; ;ic:31: 	if iTemp11 [k19 lr30:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x0c ] == 0 goto iTempLbl0($11)
	MOVF	r0x0c, W
	BZ	_00115_DS_
; ;ic:32: 	iTemp12 [k20 lr32:38 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0c r0x0d r0x0e r0x0f ] := 3.14159 {literal-float}
	MOVLW	0xdb
	MOVWF	r0x0c
	MOVLW	0x0f
	MOVWF	r0x0d
	MOVLW	0x49
	MOVWF	r0x0e
	MOVLW	0x40
	MOVWF	r0x0f
; ;ic:33: 	 goto iTempLbl1($12)
	BRA	_00116_DS_
; ;ic:34:  iTempLbl0($11) :
; ;ic:35: 	iTemp12 [k20 lr32:38 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0c r0x0d r0x0e r0x0f ] := -3.14159 {literal-float}
_00115_DS_:
	MOVLW	0xdb
	MOVWF	r0x0c
	MOVLW	0x0f
	MOVWF	r0x0d
	MOVLW	0x49
	MOVWF	r0x0e
	MOVLW	0xc0
	MOVWF	r0x0f
; ;ic:36:  iTempLbl1($12) :
; ;ic:37: 	send iTemp6 [k12 lr22:61 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atan2f_r_1_1}[r0x08 r0x09 r0x0a r0x0b ]{argreg = 1}
; ;ic:38: 	send iTemp12 [k20 lr32:38 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x0c r0x0d r0x0e r0x0f ]{argreg = 2}
; ;ic:39: 	iTemp6 [k12 lr22:61 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atan2f_r_1_1}[r0x08 r0x09 r0x0a r0x0b ] = call ___fsadd [k30 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
_00116_DS_:
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	CALL	___fsadd
	MOVWF	r0x08
	MOVFF	PRODL, r0x09
	MOVFF	PRODH, r0x0a
	MOVFF	FSR0L, r0x0b
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:40: 	 goto _ifend_2($8)
	BRA	_00112_DS_
; ;ic:41:  _iffalse_2($7) :
; ;ic:42: 	send iTemp1 [k4 lr4:43 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _atan2f_y_1_1}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 1}
; ;ic:43: 	send iTemp0 [k2 lr3:49 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _atan2f_x_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 2}
; ;ic:44: 	iTemp14 [k22 lr44:45 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x04 r0x05 r0x06 r0x07 ] = call ___fsdiv [k29 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
_00111_DS_:
;	.line	45; atan2f.c	r=-atanf(y/x);
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	CALL	___fsdiv
	MOVWF	r0x04
	MOVFF	PRODL, r0x05
	MOVFF	PRODH, r0x06
	MOVFF	FSR0L, r0x07
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:45: 	send iTemp14 [k22 lr44:45 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x04 r0x05 r0x06 r0x07 ]{argreg = 1}
; ;ic:46: 	iTemp15 [k23 lr46:47 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x04 r0x05 r0x06 r0x07 ] = call _atanf [k14 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float) }
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	CALL	_atanf
	MOVWF	r0x04
	MOVFF	PRODL, r0x05
	MOVFF	PRODH, r0x06
	MOVFF	FSR0L, r0x07
	MOVLW	0x04
	ADDWF	FSR1L, F
; ;ic:47: 	iTemp6 [k12 lr22:61 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atan2f_r_1_1}[r0x08 r0x09 r0x0a r0x0b ] = - iTemp15 [k23 lr46:47 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x04 r0x05 r0x06 r0x07 ]
	MOVFF	r0x04, r0x08
	MOVFF	r0x05, r0x09
	MOVFF	r0x06, r0x0a
	MOVFF	r0x07, r0x0b
	BTG	r0x0b, 7
; ;ic:48: 	send iTemp0 [k2 lr3:49 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-float}{ sir@ _atan2f_x_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 1}
; ;ic:49: 	send 0 {literal-float}{argreg = 2}
; ;ic:50: 	iTemp17 [k25 lr50:51 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x00 ] = call ___fslt [k28 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( float, float) }
;	.line	46; atan2f.c	r+=(x<0.0?-HALF_PI:HALF_PI);
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
	CALL	___fslt
	MOVWF	r0x00
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:51: 	if iTemp17 [k25 lr50:51 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x00 ] == 0 goto iTempLbl2($13)
	MOVF	r0x00, W
	BZ	_00117_DS_
; ;ic:52: 	iTemp18 [k26 lr52:58 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x00 r0x01 r0x02 r0x03 ] := -1.5708 {literal-float}
	MOVLW	0xdb
	MOVWF	r0x00
	MOVLW	0x0f
	MOVWF	r0x01
	MOVLW	0xc9
	MOVWF	r0x02
	MOVLW	0xbf
	MOVWF	r0x03
; ;ic:53: 	 goto iTempLbl3($14)
	BRA	_00118_DS_
; ;ic:54:  iTempLbl2($13) :
; ;ic:55: 	iTemp18 [k26 lr52:58 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x00 r0x01 r0x02 r0x03 ] := 1.5708 {literal-float}
_00117_DS_:
	MOVLW	0xdb
	MOVWF	r0x00
	MOVLW	0x0f
	MOVWF	r0x01
	MOVLW	0xc9
	MOVWF	r0x02
	MOVLW	0x3f
	MOVWF	r0x03
; ;ic:56:  iTempLbl3($14) :
; ;ic:57: 	send iTemp6 [k12 lr22:61 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atan2f_r_1_1}[r0x08 r0x09 r0x0a r0x0b ]{argreg = 1}
; ;ic:58: 	send iTemp18 [k26 lr52:58 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 2}
; ;ic:59: 	iTemp6 [k12 lr22:61 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atan2f_r_1_1}[r0x08 r0x09 r0x0a r0x0b ] = call ___fsadd [k30 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
_00118_DS_:
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	CALL	___fsadd
	MOVWF	r0x08
	MOVFF	PRODL, r0x09
	MOVFF	PRODH, r0x0a
	MOVFF	FSR0L, r0x0b
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:60:  _ifend_2($8) :
; ;ic:61: 	ret iTemp6 [k12 lr22:61 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _atan2f_r_1_1}[r0x08 r0x09 r0x0a r0x0b ]
_00112_DS_:
;	.line	48; atan2f.c	return r;
	MOVFF	r0x0b, FSR0L
	MOVFF	r0x0a, PRODH
	MOVFF	r0x09, PRODL
	MOVF	r0x08, W
; ;ic:62:  _return($9) :
; ;ic:63: 	eproc _atan2f [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( const-float, const-float) }
_00113_DS_:
	MOVFF	PREINC1, r0x0f
	MOVFF	PREINC1, r0x0e
	MOVFF	PREINC1, r0x0d
	MOVFF	PREINC1, r0x0c
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
; code size:	  874 (0x036a) bytes ( 0.67%)
;           	  437 (0x01b5) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	   16 (0x0010) bytes


	end
