;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:33 2018
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f452

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global _memmove

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern __gptrget1
	extern __gptrput1
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
r0x10	res	1
r0x11	res	1
r0x12	res	1
r0x13	res	1
r0x14	res	1

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($12) :
; ;ic:2: 	proc _memmove [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void generic*  function    ( void generic* , void generic* , unsigned-int) }
S_memmove__memmove	code
_memmove:
;	.line	28; memmove.c	void *memmove (void *dst, void *src, size_t acount) 
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
	MOVFF	r0x10, POSTDEC1
	MOVFF	r0x11, POSTDEC1
	MOVFF	r0x12, POSTDEC1
	MOVFF	r0x13, POSTDEC1
	MOVFF	r0x14, POSTDEC1
; ;ic:3: iTemp0 [k2 lr3:35 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* }{ sir@ _memmove_dst_1_1}[r0x00 r0x01 r0x02 ] = recv _memmove [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void generic*  function    ( void generic* , void generic* , unsigned-int) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
; ;ic:4: iTemp1 [k4 lr4:34 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* }{ sir@ _memmove_src_1_1}[r0x03 r0x04 r0x05 ] = recv _memmove [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void generic*  function    ( void generic* , void generic* , unsigned-int) }
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
; ;ic:5: iTemp2 [k6 lr5:36 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _memmove_acount_1_1}[r0x06 r0x07 ] = recv _memmove [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void generic*  function    ( void generic* , void generic* , unsigned-int) }
	MOVLW	0x08
	MOVFF	PLUSW2, r0x06
	MOVLW	0x09
	MOVFF	PLUSW2, r0x07
; ;ic:6: 	iTemp3 [k8 lr6:50 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* }{ sir@ _memmove_ret_1_1}[r0x08 r0x09 r0x0a ] := iTemp0 [k2 lr3:35 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* }{ sir@ _memmove_dst_1_1}[r0x00 r0x01 r0x02 ]
;	.line	30; memmove.c	void *ret = dst;
	MOVFF	r0x00, r0x08
	MOVFF	r0x01, r0x09
	MOVFF	r0x02, r0x0a
; ;ic:7: 	iTemp4 [k10 lr7:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x0b r0x0c ] = (int)iTemp1 [k4 lr4:34 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* }{ sir@ _memmove_src_1_1}[r0x03 r0x04 r0x05 ]
;	.line	34; memmove.c	if(((int)src < (int)dst) && ((((int)src)+acount) > (int)dst)) {
	MOVF	r0x03, W
	MOVWF	r0x0b
	MOVF	r0x04, W
	MOVWF	r0x0c
; ;ic:8: 	iTemp5 [k11 lr8:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x0d r0x0e ] = (int)iTemp0 [k2 lr3:35 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* }{ sir@ _memmove_dst_1_1}[r0x00 r0x01 r0x02 ]
	MOVF	r0x00, W
	MOVWF	r0x0d
	MOVF	r0x01, W
	MOVWF	r0x0e
; ;ic:9: 	iTemp6 [k12 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp4 [k10 lr7:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x0b r0x0c ] < iTemp5 [k11 lr8:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x0d r0x0e ]
	MOVF	r0x0c, W
	ADDLW	0x80
	MOVWF	PRODL
	MOVF	r0x0e, W
	ADDLW	0x80
	SUBWF	PRODL, W
	BNZ	_00125_DS_
	MOVF	r0x0d, W
	SUBWF	r0x0b, W
_00125_DS_:
	BTFSC	STATUS, 0
	BRA	_00108_DS_
; ;ic:10: 	if iTemp6 [k12 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto preHeaderLbl1($18)
; ;ic:11: 	iTemp9 [k15 lr11:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x0b r0x0c ] = iTemp4 [k10 lr7:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x0b r0x0c ] + iTemp2 [k6 lr5:36 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _memmove_acount_1_1}[r0x06 r0x07 ]
	MOVF	r0x06, W
	ADDWF	r0x0b, F
	MOVF	r0x07, W
	ADDWFC	r0x0c, F
; ;ic:12: 	iTemp11 [k17 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x0d r0x0e ] := iTemp5 [k11 lr8:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x0d r0x0e ]
; ;ic:13: 	iTemp12 [k18 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp9 [k15 lr11:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x0b r0x0c ] > iTemp11 [k17 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x0d r0x0e ]
	MOVF	r0x0c, W
	SUBWF	r0x0e, W
	BNZ	_00126_DS_
	MOVF	r0x0b, W
	SUBWF	r0x0d, W
_00126_DS_:
	BTFSC	STATUS, 0
	BRA	_00108_DS_
; ;ic:14: 	if iTemp12 [k18 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto preHeaderLbl1($18)
; ;ic:15: 	iTemp15 [k22 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x0b r0x0c r0x0d ] = iTemp0 [k2 lr3:35 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* }{ sir@ _memmove_dst_1_1}[r0x00 r0x01 r0x02 ] + iTemp2 [k6 lr5:36 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _memmove_acount_1_1}[r0x06 r0x07 ]
;	.line	38; memmove.c	d = ((char *)dst)+acount-1;
	MOVF	r0x06, W
	ADDWF	r0x00, W
	MOVWF	r0x0b
	MOVF	r0x07, W
	ADDWFC	r0x01, W
	MOVWF	r0x0c
	CLRF	WREG
	ADDWFC	r0x02, W
	MOVWF	r0x0d
; ;ic:16: 	iTemp13 [k19 lr16:21 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _memmove_d_1_1}[r0x0b r0x0c r0x0d ] = iTemp15 [k22 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x0b r0x0c r0x0d ] - 0x1 {literal-unsigned-char}
	MOVLW	0xff
	ADDWF	r0x0b, F
	ADDWFC	r0x0c, F
	ADDWFC	r0x0d, F
; ;ic:17: 	iTemp19 [k27 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x0e r0x0f r0x10 ] = iTemp1 [k4 lr4:34 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* }{ sir@ _memmove_src_1_1}[r0x03 r0x04 r0x05 ] + iTemp2 [k6 lr5:36 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _memmove_acount_1_1}[r0x06 r0x07 ]
;	.line	39; memmove.c	s = ((char *)src)+acount-1;
	MOVF	r0x06, W
	ADDWF	r0x03, W
	MOVWF	r0x0e
	MOVF	r0x07, W
	ADDWFC	r0x04, W
	MOVWF	r0x0f
	CLRF	WREG
	ADDWFC	r0x05, W
	MOVWF	r0x10
; ;ic:18: 	iTemp17 [k24 lr18:20 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _memmove_s_1_1}[r0x0e r0x0f r0x10 ] = iTemp19 [k27 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x0e r0x0f r0x10 ] - 0x1 {literal-unsigned-char}
	MOVLW	0xff
	ADDWF	r0x0e, F
	ADDWFC	r0x0f, F
	ADDWFC	r0x10, F
; ;ic:20: 	iTemp26 [k34 lr20:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x0e r0x0f r0x10 ] := iTemp17 [k24 lr18:20 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _memmove_s_1_1}[r0x0e r0x0f r0x10 ]
; ;ic:21: 	iTemp24 [k32 lr21:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x0b r0x0c r0x0d ] := iTemp13 [k19 lr16:21 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _memmove_d_1_1}[r0x0b r0x0c r0x0d ]
; ;ic:22: 	iTemp22 [k30 lr22:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x11 r0x12 ] := iTemp2 [k6 lr5:36 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _memmove_acount_1_1}[r0x06 r0x07 ]
;	.line	40; memmove.c	while (acount--) {
	MOVFF	r0x06, r0x11
	MOVFF	r0x07, r0x12
; ;ic:23:  _whilecontinue_0($1) :
; ;ic:24: 	iTemp21 [k29 lr24:26 so:0]{ ia0 a2p0 re0 rm0 nos1 ru0 dp0}{unsigned-int}[r0x13 r0x14 ] := iTemp22 [k30 lr22:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x11 r0x12 ]
_00105_DS_:
	MOVFF	r0x11, r0x13
	MOVFF	r0x12, r0x14
; ;ic:25: 	iTemp22 [k30 lr22:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x11 r0x12 ] = iTemp22 [k30 lr22:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x11 r0x12 ] - 0x1 {literal-unsigned-char}
	MOVLW	0xff
	ADDWF	r0x11, F
	BTFSS	STATUS, 0
	DECF	r0x12, F
; ;ic:26: 	if iTemp21 [k29 lr24:26 so:0]{ ia0 a2p0 re0 rm0 nos1 ru0 dp0}{unsigned-int}[r0x13 r0x14 ] == 0 goto _ifend_0($9)
	MOVF	r0x13, W
	IORWF	r0x14, W
	BTFSC	STATUS, 2
	BRA	_00113_DS_
; ;ic:27: 	iTemp27 [k35 lr27:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x13 ] = @[iTemp26 [k34 lr20:31 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x0e r0x0f r0x10 ]]
;	.line	41; memmove.c	*d-- = *s--;
	MOVFF	r0x0e, FSR0L
	MOVFF	r0x0f, PRODL
	MOVF	r0x10, W
	CALL	__gptrget1
	MOVWF	r0x13
; ;ic:28: 	iTemp26 [k34 lr20:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x0e r0x0f r0x10 ] = iTemp26 [k34 lr20:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x0e r0x0f r0x10 ] - 0x1 {literal-unsigned-char}
	MOVLW	0xff
	ADDWF	r0x0e, F
	ADDWFC	r0x0f, F
	ADDWFC	r0x10, F
; ;ic:29: 	*(iTemp24 [k32 lr21:31 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x0b r0x0c r0x0d ]) := iTemp27 [k35 lr27:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x13 ]
	MOVFF	r0x13, POSTDEC1
	MOVFF	r0x0b, FSR0L
	MOVFF	r0x0c, PRODL
	MOVF	r0x0d, W
	CALL	__gptrput1
; ;ic:30: 	iTemp24 [k32 lr21:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x0b r0x0c r0x0d ] = iTemp24 [k32 lr21:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x0b r0x0c r0x0d ] - 0x1 {literal-unsigned-char}
	MOVLW	0xff
	ADDWF	r0x0b, F
	ADDWFC	r0x0c, F
	ADDWFC	r0x0d, F
; ;ic:31: 	 goto _whilecontinue_0($1)
	BRA	_00105_DS_
; ;ic:33:  preHeaderLbl1($18) :
; ;ic:34: 	iTemp35 [k43 lr34:45 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _memmove_s_1_1}[r0x03 r0x04 r0x05 ] := iTemp1 [k4 lr4:34 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* }{ sir@ _memmove_src_1_1}[r0x03 r0x04 r0x05 ]
; ;ic:35: 	iTemp33 [k41 lr35:45 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _memmove_d_1_1}[r0x00 r0x01 r0x02 ] := iTemp0 [k2 lr3:35 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* }{ sir@ _memmove_dst_1_1}[r0x00 r0x01 r0x02 ]
; ;ic:36: 	iTemp31 [k39 lr36:45 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x06 r0x07 ] := iTemp2 [k6 lr5:36 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _memmove_acount_1_1}[r0x06 r0x07 ]
; ;ic:37:  _whilecontinue_1($4) :
; ;ic:38: 	iTemp30 [k38 lr38:40 so:0]{ ia0 a2p0 re0 rm0 nos1 ru0 dp0}{unsigned-int}[r0x0b r0x0c ] := iTemp31 [k39 lr36:45 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x06 r0x07 ]
_00108_DS_:
;	.line	49; memmove.c	while (acount--) {
	MOVFF	r0x06, r0x0b
	MOVFF	r0x07, r0x0c
; ;ic:39: 	iTemp31 [k39 lr36:45 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x06 r0x07 ] = iTemp31 [k39 lr36:45 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x06 r0x07 ] - 0x1 {literal-unsigned-char}
	MOVLW	0xff
	ADDWF	r0x06, F
	BTFSS	STATUS, 0
	DECF	r0x07, F
; ;ic:40: 	if iTemp30 [k38 lr38:40 so:0]{ ia0 a2p0 re0 rm0 nos1 ru0 dp0}{unsigned-int}[r0x0b r0x0c ] == 0 goto _ifend_0($9)
	MOVF	r0x0b, W
	IORWF	r0x0c, W
	BZ	_00113_DS_
; ;ic:41: 	iTemp36 [k44 lr41:43 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0b ] = @[iTemp35 [k43 lr34:45 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _memmove_s_1_1}[r0x03 r0x04 r0x05 ]]
;	.line	50; memmove.c	*d++ = *s++;
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrget1
	MOVWF	r0x0b
; ;ic:42: 	iTemp35 [k43 lr34:45 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _memmove_s_1_1}[r0x03 r0x04 r0x05 ] = iTemp35 [k43 lr34:45 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _memmove_s_1_1}[r0x03 r0x04 r0x05 ] + 0x1 {literal-unsigned-char}
	INCF	r0x03, F
	BTFSC	STATUS, 0
	INCF	r0x04, F
	BTFSC	STATUS, 0
	INCF	r0x05, F
; ;ic:43: 	*(iTemp33 [k41 lr35:45 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _memmove_d_1_1}[r0x00 r0x01 r0x02 ]) := iTemp36 [k44 lr41:43 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0b ]
	MOVFF	r0x0b, POSTDEC1
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrput1
; ;ic:44: 	iTemp33 [k41 lr35:45 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _memmove_d_1_1}[r0x00 r0x01 r0x02 ] = iTemp33 [k41 lr35:45 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _memmove_d_1_1}[r0x00 r0x01 r0x02 ] + 0x1 {literal-unsigned-char}
	INCF	r0x00, F
	BTFSC	STATUS, 0
	INCF	r0x01, F
	BTFSC	STATUS, 0
	INCF	r0x02, F
; ;ic:45: 	 goto _whilecontinue_1($4)
	BRA	_00108_DS_
; ;ic:49:  _ifend_0($9) :
; ;ic:50: 	ret iTemp3 [k8 lr6:50 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* }{ sir@ _memmove_ret_1_1}[r0x08 r0x09 r0x0a ]
_00113_DS_:
;	.line	54; memmove.c	return(ret);
	MOVFF	r0x0a, PRODH
	MOVFF	r0x09, PRODL
	MOVF	r0x08, W
; ;ic:51:  _return($11) :
; ;ic:52: 	eproc _memmove [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void generic*  function    ( void generic* , void generic* , unsigned-int) }
	MOVFF	PREINC1, r0x14
	MOVFF	PREINC1, r0x13
	MOVFF	PREINC1, r0x12
	MOVFF	PREINC1, r0x11
	MOVFF	PREINC1, r0x10
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
; code size:	  526 (0x020e) bytes ( 0.40%)
;           	  263 (0x0107) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	   21 (0x0015) bytes


	end
