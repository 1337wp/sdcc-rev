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
	global _memchrram
;--------------------------------------------------------
;	Equates to used internal registers
;--------------------------------------------------------
STATUS	equ	0xfd8
WREG	equ	0xfe8
FSR0L	equ	0xfe9
FSR0H	equ	0xfea
FSR1L	equ	0xfe1
FSR2L	equ	0xfd9
INDF0	equ	0xfef
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

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($11) :
; ;ic:2: 	proc _memchrram [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void near*  data-function    ( void near* , char, unsigned-int) }
S_memchrram__memchrram	code
_memchrram:
;	.line	30; memchrram.c	__data void *memchrram(__data void *s, char c, size_t count)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
; ;ic:3: iTemp0 [k2 lr3:21 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void near* }{ sir@ _memchrram_s_1_1}[r0x00 r0x01 ] = recv _memchrram [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void near*  data-function    ( void near* , char, unsigned-int) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
; ;ic:4: iTemp1 [k4 lr4:17 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _memchrram_c_1_1}[r0x02 ] = recv _memchrram [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void near*  data-function    ( void near* , char, unsigned-int) }
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
; ;ic:5: iTemp2 [k6 lr5:9 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _memchrram_count_1_1}[r0x03 r0x04 ] = recv _memchrram [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void near*  data-function    ( void near* , char, unsigned-int) }
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
; ;ic:6: 	if iTemp2 [k6 lr5:9 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _memchrram_count_1_1}[r0x03 r0x04 ] != 0 goto preHeaderLbl0($15)
;	.line	32; memchrram.c	if(!count)return (void *)0x00;
	MOVF	r0x03, W
	IORWF	r0x04, W
	BNZ	_00108_DS_
; ;ic:7: 	ret 0x0 {void literal-near* }
	CLRF	PRODL
	CLRF	WREG
	BRA	_00114_DS_
; ;ic:8:  preHeaderLbl0($15) :
; ;ic:9: 	iTemp12 [k17 lr9:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x03 r0x04 ] := iTemp2 [k6 lr5:9 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _memchrram_count_1_1}[r0x03 r0x04 ]
; ;ic:10:  _whilecontinue_0($4) :
; ;ic:11: 	iTemp6 [k11 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x05 ] = @[iTemp0 [k2 lr3:21 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{void near* }{ sir@ _memchrram_s_1_1}[r0x00 r0x01 ]]
_00108_DS_:
;	.line	34; memchrram.c	while((*(__data char *)s != c) && (count)) {
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	INDF0, r0x05
; ;ic:12: 	iTemp7 [k12 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp6 [k11 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x05 ] == iTemp1 [k4 lr4:17 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _memchrram_c_1_1}[r0x02 ]
	MOVF	r0x05, W
	XORWF	r0x02, W
	BZ	_00110_DS_
; ;ic:13: 	if iTemp7 [k12 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} != 0 goto _whilebreak_0($6)
; ;ic:14: 	if iTemp12 [k17 lr9:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x03 r0x04 ] == 0 goto _whilebreak_0($6)
	MOVF	r0x03, W
	IORWF	r0x04, W
	BZ	_00110_DS_
; ;ic:15: 	iTemp0 [k2 lr3:21 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void near* }{ sir@ _memchrram_s_1_1}[r0x00 r0x01 ] = iTemp0 [k2 lr3:21 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void near* }{ sir@ _memchrram_s_1_1}[r0x00 r0x01 ] + 0x2 {literal-unsigned-char}
;	.line	35; memchrram.c	s = (__data char *)s + sizeof(__data char *);
	MOVLW	0x02
	ADDWF	r0x00, F
	BTFSC	STATUS, 0
	INCF	r0x01, F
; ;ic:16: 	iTemp12 [k17 lr9:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x03 r0x04 ] = iTemp12 [k17 lr9:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x03 r0x04 ] - 0x1 {literal-unsigned-char}
;	.line	36; memchrram.c	count--;
	MOVLW	0xff
	ADDWF	r0x03, F
	BTFSS	STATUS, 0
	DECF	r0x04, F
; ;ic:17: 	 goto _whilecontinue_0($4)
	BRA	_00108_DS_
; ;ic:19:  _whilebreak_0($6) :
; ;ic:20: 	if iTemp12 [k17 lr9:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x03 r0x04 ] == 0 goto _iffalse_1($8)
_00110_DS_:
;	.line	39; memchrram.c	if(count)return s;
	MOVF	r0x03, W
	IORWF	r0x04, W
	BZ	_00112_DS_
; ;ic:21: 	ret iTemp0 [k2 lr3:21 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void near* }{ sir@ _memchrram_s_1_1}[r0x00 r0x01 ]
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
	BRA	_00114_DS_
; ;ic:22:  _iffalse_1($8) :
; ;ic:23: 	ret 0x0 {void literal-near* }
_00112_DS_:
;	.line	40; memchrram.c	else return (void *)0x00;
	CLRF	PRODL
	CLRF	WREG
; ;ic:24:  _return($10) :
; ;ic:25: 	eproc _memchrram [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void near*  data-function    ( void near* , char, unsigned-int) }
_00114_DS_:
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	



; Statistics:
; code size:	  164 (0x00a4) bytes ( 0.13%)
;           	   82 (0x0052) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    6 (0x0006) bytes


	end
