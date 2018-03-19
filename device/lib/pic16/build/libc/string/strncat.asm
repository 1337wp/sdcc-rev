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
	global _strncat

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

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($10) :
; ;ic:2: 	proc _strncat [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic*  function    ( char generic* , char generic* , unsigned-int) }
S_strncat__strncat	code
_strncat:
;	.line	26; strncat.c	char *strncat(char *front, char * back, size_t count) 
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
; ;ic:3: iTemp0 [k2 lr3:31 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strncat_front_1_1}[r0x00 r0x01 r0x02 ] = recv _strncat [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic*  function    ( char generic* , char generic* , unsigned-int) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
; ;ic:4: iTemp1 [k4 lr4:16 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strncat_back_1_1}[r0x03 r0x04 r0x05 ] = recv _strncat [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic*  function    ( char generic* , char generic* , unsigned-int) }
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
; ;ic:5: iTemp2 [k6 lr5:18 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _strncat_count_1_1}[r0x06 r0x07 ] = recv _strncat [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic*  function    ( char generic* , char generic* , unsigned-int) }
	MOVLW	0x08
	MOVFF	PLUSW2, r0x06
	MOVLW	0x09
	MOVFF	PLUSW2, r0x07
; ;ic:6: 	iTemp3 [k8 lr6:32 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strncat_start_1_1}[r0x08 r0x09 r0x0a ] := iTemp0 [k2 lr3:31 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strncat_front_1_1}[r0x00 r0x01 r0x02 ]
;	.line	28; strncat.c	char *start = front;
	MOVFF	r0x00, r0x08
	MOVFF	r0x01, r0x09
	MOVFF	r0x02, r0x0a
; ;ic:8: 	iTemp5 [k11 lr8:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x0b r0x0c r0x0d ] := iTemp0 [k2 lr3:31 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strncat_front_1_1}[r0x00 r0x01 r0x02 ]
;	.line	30; strncat.c	while (*front++);
	MOVFF	r0x00, r0x0b
	MOVFF	r0x01, r0x0c
	MOVFF	r0x02, r0x0d
; ;ic:9:  _whilecontinue_0($1) :
; ;ic:10: 	iTemp6 [k12 lr10:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0e ] = @[iTemp5 [k11 lr8:14 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x0b r0x0c r0x0d ]]
_00105_DS_:
	MOVFF	r0x0b, FSR0L
	MOVFF	r0x0c, PRODL
	MOVF	r0x0d, W
	CALL	__gptrget1
	MOVWF	r0x0e
; ;ic:11: 	iTemp5 [k11 lr8:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x0b r0x0c r0x0d ] = iTemp5 [k11 lr8:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x0b r0x0c r0x0d ] + 0x1 {literal-unsigned-char}
	INCF	r0x0b, F
	BTFSC	STATUS, 0
	INCF	r0x0c, F
	BTFSC	STATUS, 0
	INCF	r0x0d, F
; ;ic:12: 	if iTemp6 [k12 lr10:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0e ] != 0 goto _whilecontinue_0($1)
	MOVF	r0x0e, W
	BNZ	_00105_DS_
; ;ic:14: 	iTemp0 [k2 lr3:31 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strncat_front_1_1}[r0x00 r0x01 r0x02 ] = iTemp5 [k11 lr8:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x0b r0x0c r0x0d ] - 0x1 {literal-unsigned-char}
;	.line	32; strncat.c	front--;
	MOVF	r0x0b, W
	ADDLW	0xff
	MOVWF	r0x00
	MOVLW	0xff
	ADDWFC	r0x0c, W
	MOVWF	r0x01
	MOVLW	0xff
	ADDWFC	r0x0d, W
	MOVWF	r0x02
; ;ic:16: 	iTemp14 [k20 lr16:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x03 r0x04 r0x05 ] := iTemp1 [k4 lr4:16 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strncat_back_1_1}[r0x03 r0x04 r0x05 ]
; ;ic:17: 	iTemp12 [k18 lr17:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x0b r0x0c r0x0d ] := iTemp0 [k2 lr3:31 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strncat_front_1_1}[r0x00 r0x01 r0x02 ]
;	.line	33; strncat.c	while (count--)
	MOVFF	r0x00, r0x0b
	MOVFF	r0x01, r0x0c
	MOVFF	r0x02, r0x0d
; ;ic:18: 	iTemp10 [k16 lr18:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x06 r0x07 ] := iTemp2 [k6 lr5:18 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _strncat_count_1_1}[r0x06 r0x07 ]
; ;ic:19:  _whilecontinue_1($6) :
; ;ic:20: 	iTemp9 [k15 lr20:22 so:0]{ ia0 a2p0 re0 rm0 nos1 ru0 dp0}{unsigned-int}[r0x0e r0x0f ] := iTemp10 [k16 lr18:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x06 r0x07 ]
_00110_DS_:
	MOVFF	r0x06, r0x0e
	MOVFF	r0x07, r0x0f
; ;ic:21: 	iTemp10 [k16 lr18:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x06 r0x07 ] = iTemp10 [k16 lr18:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x06 r0x07 ] - 0x1 {literal-unsigned-char}
	MOVLW	0xff
	ADDWF	r0x06, F
	BTFSS	STATUS, 0
	DECF	r0x07, F
; ;ic:22: 	if iTemp9 [k15 lr20:22 so:0]{ ia0 a2p0 re0 rm0 nos1 ru0 dp0}{unsigned-int}[r0x0e r0x0f ] == 0 goto _whilebreak_1($8)
	MOVF	r0x0e, W
	IORWF	r0x0f, W
	BZ	_00112_DS_
; ;ic:23: 	iTemp15 [k21 lr23:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0e ] = @[iTemp14 [k20 lr16:28 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x03 r0x04 r0x05 ]]
;	.line	34; strncat.c	if (!(*front++ = *back++))return(start);
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrget1
	MOVWF	r0x0e
; ;ic:24: 	iTemp14 [k20 lr16:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x03 r0x04 r0x05 ] = iTemp14 [k20 lr16:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x03 r0x04 r0x05 ] + 0x1 {literal-unsigned-char}
	INCF	r0x03, F
	BTFSC	STATUS, 0
	INCF	r0x04, F
	BTFSC	STATUS, 0
	INCF	r0x05, F
; ;ic:25: 	*(iTemp12 [k18 lr17:28 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x0b r0x0c r0x0d ]) := iTemp15 [k21 lr23:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0e ]
	MOVFF	r0x0e, POSTDEC1
	MOVFF	r0x0b, FSR0L
	MOVFF	r0x0c, PRODL
	MOVF	r0x0d, W
	CALL	__gptrput1
; ;ic:26: 	iTemp12 [k18 lr17:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x0b r0x0c r0x0d ] = iTemp12 [k18 lr17:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x0b r0x0c r0x0d ] + 0x1 {literal-unsigned-char}
	INCF	r0x0b, F
	BTFSC	STATUS, 0
	INCF	r0x0c, F
	BTFSC	STATUS, 0
	INCF	r0x0d, F
; ;ic:27: 	iTemp0 [k2 lr3:31 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strncat_front_1_1}[r0x00 r0x01 r0x02 ] := iTemp12 [k18 lr17:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x0b r0x0c r0x0d ]
	MOVFF	r0x0b, r0x00
	MOVFF	r0x0c, r0x01
	MOVFF	r0x0d, r0x02
; ;ic:28: 	if iTemp15 [k21 lr23:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0e ] != 0 goto _whilecontinue_1($6)
	MOVF	r0x0e, W
	BNZ	_00110_DS_
; ;ic:29: 	ret iTemp3 [k8 lr6:32 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strncat_start_1_1}[r0x08 r0x09 r0x0a ]
	MOVFF	r0x0a, PRODH
	MOVFF	r0x09, PRODL
	MOVF	r0x08, W
	BRA	_00113_DS_
; ;ic:30:  _whilebreak_1($8) :
; ;ic:31: 	*(iTemp0 [k2 lr3:31 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strncat_front_1_1}[r0x00 r0x01 r0x02 ]) := 0x0 {literal-char}
_00112_DS_:
;	.line	36; strncat.c	*front = '\0';
	CLRF	POSTDEC1
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrput1
; ;ic:32: 	ret iTemp3 [k8 lr6:32 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strncat_start_1_1}[r0x08 r0x09 r0x0a ]
;	.line	38; strncat.c	return(start);
	MOVFF	r0x0a, PRODH
	MOVFF	r0x09, PRODL
	MOVF	r0x08, W
; ;ic:33:  _return($9) :
; ;ic:34: 	eproc _strncat [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic*  function    ( char generic* , char generic* , unsigned-int) }
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
; code size:	  404 (0x0194) bytes ( 0.31%)
;           	  202 (0x00ca) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	   16 (0x0010) bytes


	end
