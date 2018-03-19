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
	global _memchrpgm
;--------------------------------------------------------
;	Equates to used internal registers
;--------------------------------------------------------
STATUS	equ	0xfd8
WREG	equ	0xfe8
TBLPTRL	equ	0xff6
TBLPTRH	equ	0xff7
TBLPTRU	equ	0xff8
TABLAT	equ	0xff5
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

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($11) :
; ;ic:2: 	proc _memchrpgm [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void code*  code-function    ( const-void code* , char, unsigned-int) }
S_memchrpgm__memchrpgm	code
_memchrpgm:
;	.line	30; memchrpgm.c	__code void *memchrpgm(__code void *s, char c, size_t count)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
	MOVFF	r0x06, POSTDEC1
; ;ic:3: iTemp0 [k2 lr3:21 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-void code* }{ sir@ _memchrpgm_s_1_1}[r0x00 r0x01 r0x02 ] = recv _memchrpgm [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void code*  code-function    ( const-void code* , char, unsigned-int) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
; ;ic:4: iTemp1 [k4 lr4:17 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _memchrpgm_c_1_1}[r0x03 ] = recv _memchrpgm [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void code*  code-function    ( const-void code* , char, unsigned-int) }
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
; ;ic:5: iTemp2 [k6 lr5:9 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _memchrpgm_count_1_1}[r0x04 r0x05 ] = recv _memchrpgm [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void code*  code-function    ( const-void code* , char, unsigned-int) }
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
; ;ic:6: 	if iTemp2 [k6 lr5:9 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _memchrpgm_count_1_1}[r0x04 r0x05 ] != 0 goto preHeaderLbl0($15)
;	.line	32; memchrpgm.c	if(!count)return (void *)0x00;
	MOVF	r0x04, W
	IORWF	r0x05, W
	BNZ	_00108_DS_
; ;ic:7: 	ret 0x0 {void literal-generic* }
	CLRF	PRODH
	CLRF	PRODL
	CLRF	WREG
	BRA	_00114_DS_
; ;ic:8:  preHeaderLbl0($15) :
; ;ic:9: 	iTemp12 [k17 lr9:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x04 r0x05 ] := iTemp2 [k6 lr5:9 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _memchrpgm_count_1_1}[r0x04 r0x05 ]
; ;ic:10:  _whilecontinue_0($4) :
; ;ic:11: 	iTemp6 [k11 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char}[r0x06 ] = @[iTemp0 [k2 lr3:21 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{const-void code* }{ sir@ _memchrpgm_s_1_1}[r0x00 r0x01 r0x02 ]]
_00108_DS_:
;	.line	34; memchrpgm.c	while((*(__code char *)s != c) && (count)) {
	MOVFF	r0x00, TBLPTRL
	MOVFF	r0x01, TBLPTRH
	MOVFF	r0x02, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x06
; ;ic:12: 	iTemp7 [k12 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp6 [k11 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char}[r0x06 ] == iTemp1 [k4 lr4:17 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _memchrpgm_c_1_1}[r0x03 ]
	MOVF	r0x06, W
	XORWF	r0x03, W
	BZ	_00110_DS_
; ;ic:13: 	if iTemp7 [k12 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} != 0 goto _whilebreak_0($6)
; ;ic:14: 	if iTemp12 [k17 lr9:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x04 r0x05 ] == 0 goto _whilebreak_0($6)
	MOVF	r0x04, W
	IORWF	r0x05, W
	BZ	_00110_DS_
; ;ic:15: 	iTemp0 [k2 lr3:21 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-void code* }{ sir@ _memchrpgm_s_1_1}[r0x00 r0x01 r0x02 ] = iTemp0 [k2 lr3:21 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-void code* }{ sir@ _memchrpgm_s_1_1}[r0x00 r0x01 r0x02 ] + 0x3 {literal-unsigned-char}
;	.line	35; memchrpgm.c	s = (__code char *)s + sizeof(__code char *);
	MOVLW	0x03
	ADDWF	r0x00, F
	MOVLW	0x00
	ADDWFC	r0x01, F
	ADDWFC	r0x02, F
; ;ic:16: 	iTemp12 [k17 lr9:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x04 r0x05 ] = iTemp12 [k17 lr9:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x04 r0x05 ] - 0x1 {literal-unsigned-char}
;	.line	36; memchrpgm.c	count--;
	MOVLW	0xff
	ADDWF	r0x04, F
	BTFSS	STATUS, 0
	DECF	r0x05, F
; ;ic:17: 	 goto _whilecontinue_0($4)
	BRA	_00108_DS_
; ;ic:19:  _whilebreak_0($6) :
; ;ic:20: 	if iTemp12 [k17 lr9:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x04 r0x05 ] == 0 goto _iffalse_1($8)
_00110_DS_:
;	.line	39; memchrpgm.c	if(count)return s;
	MOVF	r0x04, W
	IORWF	r0x05, W
	BZ	_00112_DS_
; ;ic:21: 	ret iTemp0 [k2 lr3:21 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-void code* }{ sir@ _memchrpgm_s_1_1}[r0x00 r0x01 r0x02 ]
	MOVFF	r0x02, PRODH
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
	BRA	_00114_DS_
; ;ic:22:  _iffalse_1($8) :
; ;ic:23: 	ret 0x0 {void literal-generic* }
_00112_DS_:
;	.line	40; memchrpgm.c	else return (void *)0x00;
	CLRF	PRODH
	CLRF	PRODL
	CLRF	WREG
; ;ic:24:  _return($10) :
; ;ic:25: 	eproc _memchrpgm [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void code*  code-function    ( const-void code* , char, unsigned-int) }
_00114_DS_:
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
; code size:	  194 (0x00c2) bytes ( 0.15%)
;           	   97 (0x0061) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    7 (0x0007) bytes


	end
