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
	global _memcmp

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern __gptrget1
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
; ;ic:2: 	proc _memcmp [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( void generic* , void generic* , unsigned-int) }
S_memcmp__memcmp	code
_memcmp:
;	.line	26; memcmp.c	int memcmp (void * buf1, void * buf2, size_t count) 
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
; ;ic:3: iTemp0 [k2 lr3:22 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* }{ sir@ _memcmp_buf1_1_1}[r0x00 r0x01 r0x02 ] = recv _memcmp [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( void generic* , void generic* , unsigned-int) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
; ;ic:4: iTemp1 [k4 lr4:24 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* }{ sir@ _memcmp_buf2_1_1}[r0x03 r0x04 r0x05 ] = recv _memcmp [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( void generic* , void generic* , unsigned-int) }
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
; ;ic:5: iTemp2 [k6 lr5:9 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _memcmp_count_1_1}[r0x06 r0x07 ] = recv _memcmp [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( void generic* , void generic* , unsigned-int) }
	MOVLW	0x08
	MOVFF	PLUSW2, r0x06
	MOVLW	0x09
	MOVFF	PLUSW2, r0x07
; ;ic:6: 	if iTemp2 [k6 lr5:9 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _memcmp_count_1_1}[r0x06 r0x07 ] != 0 goto preHeaderLbl0($12)
;	.line	28; memcmp.c	if(!count)return(0);
	MOVF	r0x06, W
	IORWF	r0x07, W
	BNZ	_00108_DS_
; ;ic:7: 	ret 0x0 {literal-int}
	CLRF	PRODL
	CLRF	WREG
	BRA	_00111_DS_
; ;ic:8:  preHeaderLbl0($12) :
; ;ic:9: 	iTemp3 [k8 lr9:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x06 r0x07 ] := iTemp2 [k6 lr5:9 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _memcmp_count_1_1}[r0x06 r0x07 ]
; ;ic:10:  _whilecontinue_0($4) :
; ;ic:11: 	iTemp3 [k8 lr9:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x06 r0x07 ] = iTemp3 [k8 lr9:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x06 r0x07 ] - 0x1 {literal-unsigned-char}
_00108_DS_:
;	.line	30; memcmp.c	while (--count && *((char *)buf1) == *((char *)buf2) ) {
	MOVLW	0xff
	ADDWF	r0x06, F
	BTFSS	STATUS, 0
	DECF	r0x07, F
; ;ic:12: 	if iTemp3 [k8 lr9:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x06 r0x07 ] == 0 goto _whilebreak_0($6)
	MOVF	r0x06, W
	IORWF	r0x07, W
	BZ	_00110_DS_
; ;ic:13: 	iTemp5 [k10 lr13:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x08 ] = @[iTemp0 [k2 lr3:22 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* }{ sir@ _memcmp_buf1_1_1}[r0x00 r0x01 r0x02 ]]
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget1
	MOVWF	r0x08
; ;ic:14: 	iTemp7 [k12 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x09 ] = @[iTemp1 [k4 lr4:24 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* }{ sir@ _memcmp_buf2_1_1}[r0x03 r0x04 r0x05 ]]
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrget1
; #	MOVWF	r0x09
; #;;ic:15: 	iTemp8 [k13 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp5 [k10 lr13:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x08 ] == iTemp7 [k12 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x09 ]
; #	MOVF	r0x08, W
; #	XORWF	r0x09, W
	XORWF	r0x08, W
	BNZ	_00110_DS_
; ;ic:16: 	if iTemp8 [k13 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _whilebreak_0($6)
; ;ic:17: 	iTemp0 [k2 lr3:22 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* }{ sir@ _memcmp_buf1_1_1}[r0x00 r0x01 r0x02 ] = iTemp0 [k2 lr3:22 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* }{ sir@ _memcmp_buf1_1_1}[r0x00 r0x01 r0x02 ] + 0x1 {literal-unsigned-char}
;	.line	31; memcmp.c	buf1 = (char *)buf1 + 1;
	INCF	r0x00, F
	BTFSC	STATUS, 0
	INCF	r0x01, F
	BTFSC	STATUS, 0
	INCF	r0x02, F
; ;ic:18: 	iTemp1 [k4 lr4:24 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* }{ sir@ _memcmp_buf2_1_1}[r0x03 r0x04 r0x05 ] = iTemp1 [k4 lr4:24 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* }{ sir@ _memcmp_buf2_1_1}[r0x03 r0x04 r0x05 ] + 0x1 {literal-unsigned-char}
;	.line	32; memcmp.c	buf2 = (char *)buf2 + 1;
	INCF	r0x03, F
	BTFSC	STATUS, 0
	INCF	r0x04, F
	BTFSC	STATUS, 0
	INCF	r0x05, F
; ;ic:19: 	 goto _whilecontinue_0($4)
	BRA	_00108_DS_
; ;ic:21:  _whilebreak_0($6) :
; ;ic:22: 	iTemp16 [k21 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x00 ] = @[iTemp0 [k2 lr3:22 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* }{ sir@ _memcmp_buf1_1_1}[r0x00 r0x01 r0x02 ]]
_00110_DS_:
;	.line	35; memcmp.c	return( *((unsigned char *)buf1) - *((unsigned char *)buf2) );
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget1
	MOVWF	r0x00
; ;ic:23: 	iTemp17 [k22 lr23:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x00 r0x01 ] = (int)iTemp16 [k21 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x00 ]
	CLRF	r0x01
; ;ic:24: 	iTemp19 [k24 lr24:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x03 ] = @[iTemp1 [k4 lr4:24 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* }{ sir@ _memcmp_buf2_1_1}[r0x03 r0x04 r0x05 ]]
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrget1
; ;ic:25: 	iTemp20 [k25 lr25:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x03 r0x02 ] = (int)iTemp19 [k24 lr24:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x03 ]
	CLRF	r0x02
; ;ic:26: 	iTemp21 [k26 lr26:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x00 r0x01 ] = iTemp17 [k22 lr23:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x00 r0x01 ] - iTemp20 [k25 lr25:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x03 r0x02 ]
	SUBWF	r0x00, F
	MOVF	r0x02, W
	SUBWFB	r0x01, F
; ;ic:27: 	ret iTemp21 [k26 lr26:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x00 r0x01 ]
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
; ;ic:28:  _return($7) :
; ;ic:29: 	eproc _memcmp [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( void generic* , void generic* , unsigned-int) }
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
; code size:	  262 (0x0106) bytes ( 0.20%)
;           	  131 (0x0083) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    9 (0x0009) bytes


	end
