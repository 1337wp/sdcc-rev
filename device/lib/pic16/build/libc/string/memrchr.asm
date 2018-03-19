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
	global _memrchr

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern __gptrget1
	extern __mulint
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

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($11) :
; ;ic:2: 	proc _memrchr [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void generic*  function    ( void generic* , char, unsigned-int) }
S_memrchr__memrchr	code
_memrchr:
;	.line	30; memrchr.c	void *memrchr(void *s, char c, size_t count)
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
; ;ic:3: iTemp0 [k2 lr3:26 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* }{ sir@ _memrchr_s_1_1}[r0x00 r0x01 r0x02 ] = recv _memrchr [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void generic*  function    ( void generic* , char, unsigned-int) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
; ;ic:4: iTemp1 [k4 lr4:22 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _memrchr_c_1_1}[r0x03 ] = recv _memrchr [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void generic*  function    ( void generic* , char, unsigned-int) }
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
; ;ic:5: iTemp2 [k6 lr5:14 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _memrchr_count_1_1}[r0x04 r0x05 ] = recv _memrchr [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void generic*  function    ( void generic* , char, unsigned-int) }
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
; ;ic:6: 	if iTemp2 [k6 lr5:14 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _memrchr_count_1_1}[r0x04 r0x05 ] != 0 goto _iffalse_0($2)
;	.line	32; memrchr.c	if(!count)return (void *)0x00;
	MOVF	r0x04, W
	IORWF	r0x05, W
	BNZ	_00106_DS_
; ;ic:7: 	ret 0x0 {void literal-generic* }
	CLRF	PRODH
	CLRF	PRODL
	CLRF	WREG
	BRA	_00114_DS_
; ;ic:8:  _iffalse_0($2) :
; ;ic:9: 	send 0x3 {literal-unsigned-int}{argreg = 1}
; ;ic:10: 	send iTemp2 [k6 lr5:14 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _memrchr_count_1_1}[r0x04 r0x05 ]{argreg = 2}
; ;ic:11: 	iTemp5 [k10 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x06 r0x07 ] = call __mulint [k22 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( int, int) }
_00106_DS_:
;	.line	34; memrchr.c	s = (char *)s + sizeof(char *) * count;
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x03
	MOVWF	POSTDEC1
	CALL	__mulint
	MOVWF	r0x06
	MOVFF	PRODL, r0x07
	MOVLW	0x04
	ADDWF	FSR1L, F
; ;ic:12: 	iTemp0 [k2 lr3:26 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* }{ sir@ _memrchr_s_1_1}[r0x00 r0x01 r0x02 ] = iTemp0 [k2 lr3:26 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* }{ sir@ _memrchr_s_1_1}[r0x00 r0x01 r0x02 ] + iTemp5 [k10 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x06 r0x07 ]
	MOVF	r0x06, W
	ADDWF	r0x00, F
	MOVF	r0x07, W
	ADDWFC	r0x01, F
	CLRF	WREG
	ADDWFC	r0x02, F
; ;ic:14: 	iTemp15 [k20 lr14:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x04 r0x05 ] := iTemp2 [k6 lr5:14 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _memrchr_count_1_1}[r0x04 r0x05 ]
; ;ic:15:  _whilecontinue_0($4) :
; ;ic:16: 	iTemp9 [k14 lr16:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x06 ] = @[iTemp0 [k2 lr3:26 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* }{ sir@ _memrchr_s_1_1}[r0x00 r0x01 r0x02 ]]
_00108_DS_:
;	.line	36; memrchr.c	while((*(char *)s != c) && (count)) {
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget1
; #	MOVWF	r0x06
; #;;ic:17: 	iTemp10 [k15 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp9 [k14 lr16:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x06 ] == iTemp1 [k4 lr4:22 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _memrchr_c_1_1}[r0x03 ]
; #	MOVF	r0x06, W
	XORWF	r0x03, W
	BZ	_00110_DS_
; ;ic:18: 	if iTemp10 [k15 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} != 0 goto _whilebreak_0($6)
; ;ic:19: 	if iTemp15 [k20 lr14:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x04 r0x05 ] == 0 goto _whilebreak_0($6)
	MOVF	r0x04, W
	IORWF	r0x05, W
	BZ	_00110_DS_
; ;ic:20: 	iTemp0 [k2 lr3:26 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* }{ sir@ _memrchr_s_1_1}[r0x00 r0x01 r0x02 ] = iTemp0 [k2 lr3:26 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* }{ sir@ _memrchr_s_1_1}[r0x00 r0x01 r0x02 ] - 0x3 {literal-unsigned-char}
;	.line	37; memrchr.c	s = (char *)s - sizeof(char *);
	MOVLW	0xfd
	ADDWF	r0x00, F
	MOVLW	0xff
	ADDWFC	r0x01, F
	ADDWFC	r0x02, F
; ;ic:21: 	iTemp15 [k20 lr14:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x04 r0x05 ] = iTemp15 [k20 lr14:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x04 r0x05 ] - 0x1 {literal-unsigned-char}
;	.line	38; memrchr.c	count--;
	ADDWF	r0x04, F
	BTFSS	STATUS, 0
	DECF	r0x05, F
; ;ic:22: 	 goto _whilecontinue_0($4)
	BRA	_00108_DS_
; ;ic:24:  _whilebreak_0($6) :
; ;ic:25: 	if iTemp15 [k20 lr14:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x04 r0x05 ] == 0 goto _iffalse_1($8)
_00110_DS_:
;	.line	41; memrchr.c	if(count)return s;
	MOVF	r0x04, W
	IORWF	r0x05, W
	BZ	_00112_DS_
; ;ic:26: 	ret iTemp0 [k2 lr3:26 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* }{ sir@ _memrchr_s_1_1}[r0x00 r0x01 r0x02 ]
	MOVFF	r0x02, PRODH
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
	BRA	_00114_DS_
; ;ic:27:  _iffalse_1($8) :
; ;ic:28: 	ret 0x0 {void literal-generic* }
_00112_DS_:
;	.line	42; memrchr.c	else return (void *)0x00;
	CLRF	PRODH
	CLRF	PRODL
	CLRF	WREG
; ;ic:29:  _return($10) :
; ;ic:30: 	eproc _memrchr [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void generic*  function    ( void generic* , char, unsigned-int) }
_00114_DS_:
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
; code size:	  234 (0x00ea) bytes ( 0.18%)
;           	  117 (0x0075) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    8 (0x0008) bytes


	end
