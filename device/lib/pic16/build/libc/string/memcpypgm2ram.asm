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
	global _memcpypgm2ram
;--------------------------------------------------------
;	Equates to used internal registers
;--------------------------------------------------------
STATUS	equ	0xfd8
WREG	equ	0xfe8
TBLPTRL	equ	0xff6
TBLPTRH	equ	0xff7
TBLPTRU	equ	0xff8
TABLAT	equ	0xff5
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
r0x06	res	1
r0x07	res	1
r0x08	res	1
r0x09	res	1
r0x0a	res	1

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($5) :
; ;ic:2: 	proc _memcpypgm2ram [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void near*  data-function    ( void near* , const-void code* , unsigned-int) }
S_memcpypgm2ram__memcpypgm2ram	code
_memcpypgm2ram:
;	.line	26; memcpypgm2ram.c	__data void *memcpypgm2ram (__data void *dst, __code void *src, size_t acount)
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
; ;ic:3: iTemp0 [k2 lr3:21 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void near* }{ sir@ _memcpypgm2ram_dst_1_1}[r0x00 r0x01 ] = recv _memcpypgm2ram [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void near*  data-function    ( void near* , const-void code* , unsigned-int) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
; ;ic:4: iTemp1 [k4 lr4:7 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-void code* }{ sir@ _memcpypgm2ram_src_1_1}[r0x02 r0x03 r0x04 ] = recv _memcpypgm2ram [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void near*  data-function    ( void near* , const-void code* , unsigned-int) }
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
; ;ic:5: iTemp2 [k6 lr5:9 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _memcpypgm2ram_acount_1_1}[r0x05 r0x06 ] = recv _memcpypgm2ram [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void near*  data-function    ( void near* , const-void code* , unsigned-int) }
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
	MOVLW	0x08
	MOVFF	PLUSW2, r0x06
; ;ic:7: 	iTemp12 [k19 lr7:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char code* }{ sir@ _memcpypgm2ram_s_1_1}[r0x02 r0x03 r0x04 ] := iTemp1 [k4 lr4:7 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-void code* }{ sir@ _memcpypgm2ram_src_1_1}[r0x02 r0x03 r0x04 ]
; ;ic:8: 	iTemp10 [k17 lr8:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* }{ sir@ _memcpypgm2ram_d_1_1}[r0x07 r0x08 ] := iTemp0 [k2 lr3:21 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void near* }{ sir@ _memcpypgm2ram_dst_1_1}[r0x00 r0x01 ]
;	.line	34; memcpypgm2ram.c	while (acount--) {
	MOVFF	r0x00, r0x07
	MOVFF	r0x01, r0x08
; ;ic:9: 	iTemp8 [k15 lr9:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x05 r0x06 ] := iTemp2 [k6 lr5:9 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _memcpypgm2ram_acount_1_1}[r0x05 r0x06 ]
; ;ic:10:  _whilecontinue_0($1) :
; ;ic:11: 	iTemp7 [k14 lr11:13 so:0]{ ia0 a2p0 re0 rm0 nos1 ru0 dp0}{unsigned-int}[r0x09 r0x0a ] := iTemp8 [k15 lr9:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x05 r0x06 ]
_00105_DS_:
	MOVFF	r0x05, r0x09
	MOVFF	r0x06, r0x0a
; ;ic:12: 	iTemp8 [k15 lr9:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x05 r0x06 ] = iTemp8 [k15 lr9:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x05 r0x06 ] - 0x1 {literal-unsigned-char}
	MOVLW	0xff
	ADDWF	r0x05, F
	BTFSS	STATUS, 0
	DECF	r0x06, F
; ;ic:13: 	if iTemp7 [k14 lr11:13 so:0]{ ia0 a2p0 re0 rm0 nos1 ru0 dp0}{unsigned-int}[r0x09 r0x0a ] == 0 goto _whilebreak_0($3)
	MOVF	r0x09, W
	IORWF	r0x0a, W
	BZ	_00107_DS_
; ;ic:14: 	iTemp13 [k20 lr14:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char}[r0x09 ] = @[iTemp12 [k19 lr7:18 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{const-char code* }{ sir@ _memcpypgm2ram_s_1_1}[r0x02 r0x03 r0x04 ]]
;	.line	35; memcpypgm2ram.c	*d++ = *s++;
	MOVFF	r0x02, TBLPTRL
	MOVFF	r0x03, TBLPTRH
	MOVFF	r0x04, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x09
; ;ic:15: 	iTemp12 [k19 lr7:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char code* }{ sir@ _memcpypgm2ram_s_1_1}[r0x02 r0x03 r0x04 ] = iTemp12 [k19 lr7:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char code* }{ sir@ _memcpypgm2ram_s_1_1}[r0x02 r0x03 r0x04 ] + 0x1 {literal-unsigned-char}
	INCF	r0x02, F
	BTFSC	STATUS, 0
	INCF	r0x03, F
	BTFSC	STATUS, 0
	INCF	r0x04, F
; ;ic:16: 	*(iTemp10 [k17 lr8:18 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char near* }{ sir@ _memcpypgm2ram_d_1_1}[r0x07 r0x08 ]) := iTemp13 [k20 lr14:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char}[r0x09 ]
	MOVFF	r0x07, FSR0L
	MOVFF	r0x08, FSR0H
	MOVFF	r0x09, INDF0
; ;ic:17: 	iTemp10 [k17 lr8:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* }{ sir@ _memcpypgm2ram_d_1_1}[r0x07 r0x08 ] = iTemp10 [k17 lr8:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* }{ sir@ _memcpypgm2ram_d_1_1}[r0x07 r0x08 ] + 0x1 {literal-unsigned-char}
	INCF	r0x07, F
	BTFSC	STATUS, 0
	INCF	r0x08, F
; ;ic:18: 	 goto _whilecontinue_0($1)
	BRA	_00105_DS_
; ;ic:20:  _whilebreak_0($3) :
; ;ic:21: 	ret iTemp0 [k2 lr3:21 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void near* }{ sir@ _memcpypgm2ram_dst_1_1}[r0x00 r0x01 ]
_00107_DS_:
;	.line	38; memcpypgm2ram.c	return(dst);
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
; ;ic:22:  _return($4) :
; ;ic:23: 	eproc _memcpypgm2ram [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void near*  data-function    ( void near* , const-void code* , unsigned-int) }
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
; code size:	  228 (0x00e4) bytes ( 0.17%)
;           	  114 (0x0072) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	   11 (0x000b) bytes


	end
