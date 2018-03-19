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
	global _strcat

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

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($8) :
; ;ic:2: 	proc _strcat [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic*  function    ( char generic* , char generic* ) }
S_strcat__strcat	code
_strcat:
;	.line	26; strcat.c	char *strcat(char *dst, char *src)
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
; ;ic:3: iTemp0 [k2 lr3:23 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strcat_dst_1_1}[r0x00 r0x01 r0x02 ] = recv _strcat [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic*  function    ( char generic* , char generic* ) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
; ;ic:4: iTemp1 [k4 lr4:14 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strcat_src_1_1}[r0x03 r0x04 r0x05 ] = recv _strcat [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic*  function    ( char generic* , char generic* ) }
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
; ;ic:6: 	iTemp6 [k11 lr6:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strcat_cp_1_1}[r0x06 r0x07 r0x08 ] := iTemp0 [k2 lr3:23 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strcat_dst_1_1}[r0x00 r0x01 r0x02 ]
;	.line	30; strcat.c	while( *cp )cp++;                   /* find end of dst */
	MOVFF	r0x00, r0x06
	MOVFF	r0x01, r0x07
	MOVFF	r0x02, r0x08
; ;ic:7:  _whilecontinue_0($1) :
; ;ic:8: 	iTemp4 [k9 lr8:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x09 ] = @[iTemp6 [k11 lr6:15 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strcat_cp_1_1}[r0x06 r0x07 r0x08 ]]
_00105_DS_:
	MOVFF	r0x06, FSR0L
	MOVFF	r0x07, PRODL
	MOVF	r0x08, W
	CALL	__gptrget1
	MOVWF	r0x09
; ;ic:9: 	if iTemp4 [k9 lr8:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x09 ] == 0 goto preHeaderLbl1($11)
	MOVF	r0x09, W
	BZ	_00108_DS_
; ;ic:10: 	iTemp6 [k11 lr6:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strcat_cp_1_1}[r0x06 r0x07 r0x08 ] = iTemp6 [k11 lr6:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strcat_cp_1_1}[r0x06 r0x07 r0x08 ] + 0x1 {literal-unsigned-char}
	INCF	r0x06, F
	BTFSC	STATUS, 0
	INCF	r0x07, F
	BTFSC	STATUS, 0
	INCF	r0x08, F
; ;ic:11: 	 goto _whilecontinue_0($1)
	BRA	_00105_DS_
; ;ic:13:  preHeaderLbl1($11) :
; ;ic:14: 	iTemp10 [k15 lr14:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x03 r0x04 r0x05 ] := iTemp1 [k4 lr4:14 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strcat_src_1_1}[r0x03 r0x04 r0x05 ]
; ;ic:15: 	iTemp8 [k13 lr15:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strcat_cp_1_1}[r0x06 r0x07 r0x08 ] := iTemp6 [k11 lr6:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strcat_cp_1_1}[r0x06 r0x07 r0x08 ]
; ;ic:16:  _whilecontinue_1($4) :
; ;ic:17: 	iTemp11 [k16 lr17:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x09 ] = @[iTemp10 [k15 lr14:21 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x03 r0x04 r0x05 ]]
_00108_DS_:
;	.line	32; strcat.c	while( *cp++ = *src++ ) ;       /* Copy src to end of dst */
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrget1
	MOVWF	r0x09
; ;ic:18: 	iTemp10 [k15 lr14:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x03 r0x04 r0x05 ] = iTemp10 [k15 lr14:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }[r0x03 r0x04 r0x05 ] + 0x1 {literal-unsigned-char}
	INCF	r0x03, F
	BTFSC	STATUS, 0
	INCF	r0x04, F
	BTFSC	STATUS, 0
	INCF	r0x05, F
; ;ic:19: 	*(iTemp8 [k13 lr15:21 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strcat_cp_1_1}[r0x06 r0x07 r0x08 ]) := iTemp11 [k16 lr17:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x09 ]
	MOVFF	r0x09, POSTDEC1
	MOVFF	r0x06, FSR0L
	MOVFF	r0x07, PRODL
	MOVF	r0x08, W
	CALL	__gptrput1
; ;ic:20: 	iTemp8 [k13 lr15:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strcat_cp_1_1}[r0x06 r0x07 r0x08 ] = iTemp8 [k13 lr15:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strcat_cp_1_1}[r0x06 r0x07 r0x08 ] + 0x1 {literal-unsigned-char}
	INCF	r0x06, F
	BTFSC	STATUS, 0
	INCF	r0x07, F
	BTFSC	STATUS, 0
	INCF	r0x08, F
; ;ic:21: 	if iTemp11 [k16 lr17:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x09 ] != 0 goto _whilecontinue_1($4)
	MOVF	r0x09, W
	BNZ	_00108_DS_
; ;ic:23: 	ret iTemp0 [k2 lr3:23 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _strcat_dst_1_1}[r0x00 r0x01 r0x02 ]
;	.line	34; strcat.c	return( dst );                  /* return dst */
	MOVFF	r0x02, PRODH
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
; ;ic:24:  _return($7) :
; ;ic:25: 	eproc _strcat [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic*  function    ( char generic* , char generic* ) }
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
; code size:	  242 (0x00f2) bytes ( 0.18%)
;           	  121 (0x0079) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	   10 (0x000a) bytes


	end
