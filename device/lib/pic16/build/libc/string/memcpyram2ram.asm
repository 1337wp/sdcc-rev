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
	global _memcpyram2ram
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
r0x06	res	1
r0x07	res	1
r0x08	res	1
r0x09	res	1

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($5) :
; ;ic:2: 	proc _memcpyram2ram [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void near*  data-function    ( void near* , void near* , unsigned-int) }
S_memcpyram2ram__memcpyram2ram	code
_memcpyram2ram:
;	.line	26; memcpyram2ram.c	__data void *memcpyram2ram (__data void *dst, __data void *src, size_t acount)
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
; ;ic:3: iTemp0 [k2 lr3:21 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void near* }{ sir@ _memcpyram2ram_dst_1_1}[r0x00 r0x01 ] = recv _memcpyram2ram [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void near*  data-function    ( void near* , void near* , unsigned-int) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
; ;ic:4: iTemp1 [k4 lr4:7 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void near* }{ sir@ _memcpyram2ram_src_1_1}[r0x02 r0x03 ] = recv _memcpyram2ram [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void near*  data-function    ( void near* , void near* , unsigned-int) }
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
; ;ic:5: iTemp2 [k6 lr5:9 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _memcpyram2ram_acount_1_1}[r0x04 r0x05 ] = recv _memcpyram2ram [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void near*  data-function    ( void near* , void near* , unsigned-int) }
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
; ;ic:7: 	iTemp12 [k19 lr7:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* }{ sir@ _memcpyram2ram_s_1_1}[r0x02 r0x03 ] := iTemp1 [k4 lr4:7 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void near* }{ sir@ _memcpyram2ram_src_1_1}[r0x02 r0x03 ]
; ;ic:8: 	iTemp10 [k17 lr8:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* }{ sir@ _memcpyram2ram_d_1_1}[r0x06 r0x07 ] := iTemp0 [k2 lr3:21 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void near* }{ sir@ _memcpyram2ram_dst_1_1}[r0x00 r0x01 ]
;	.line	34; memcpyram2ram.c	while (acount--) {
	MOVFF	r0x00, r0x06
	MOVFF	r0x01, r0x07
; ;ic:9: 	iTemp8 [k15 lr9:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x04 r0x05 ] := iTemp2 [k6 lr5:9 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _memcpyram2ram_acount_1_1}[r0x04 r0x05 ]
; ;ic:10:  _whilecontinue_0($1) :
; ;ic:11: 	iTemp7 [k14 lr11:13 so:0]{ ia0 a2p0 re0 rm0 nos1 ru0 dp0}{unsigned-int}[r0x08 r0x09 ] := iTemp8 [k15 lr9:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x04 r0x05 ]
_00105_DS_:
	MOVFF	r0x04, r0x08
	MOVFF	r0x05, r0x09
; ;ic:12: 	iTemp8 [k15 lr9:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x04 r0x05 ] = iTemp8 [k15 lr9:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x04 r0x05 ] - 0x1 {literal-unsigned-char}
	MOVLW	0xff
	ADDWF	r0x04, F
	BTFSS	STATUS, 0
	DECF	r0x05, F
; ;ic:13: 	if iTemp7 [k14 lr11:13 so:0]{ ia0 a2p0 re0 rm0 nos1 ru0 dp0}{unsigned-int}[r0x08 r0x09 ] == 0 goto _whilebreak_0($3)
	MOVF	r0x08, W
	IORWF	r0x09, W
	BZ	_00107_DS_
; ;ic:14: 	iTemp13 [k20 lr14:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x08 ] = @[iTemp12 [k19 lr7:18 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char near* }{ sir@ _memcpyram2ram_s_1_1}[r0x02 r0x03 ]]
;	.line	35; memcpyram2ram.c	*d++ = *s++;
	MOVFF	r0x02, FSR0L
	MOVFF	r0x03, FSR0H
	MOVFF	INDF0, r0x08
; ;ic:15: 	iTemp12 [k19 lr7:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* }{ sir@ _memcpyram2ram_s_1_1}[r0x02 r0x03 ] = iTemp12 [k19 lr7:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* }{ sir@ _memcpyram2ram_s_1_1}[r0x02 r0x03 ] + 0x1 {literal-unsigned-char}
	INCF	r0x02, F
	BTFSC	STATUS, 0
	INCF	r0x03, F
; ;ic:16: 	*(iTemp10 [k17 lr8:18 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char near* }{ sir@ _memcpyram2ram_d_1_1}[r0x06 r0x07 ]) := iTemp13 [k20 lr14:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x08 ]
	MOVFF	r0x06, FSR0L
	MOVFF	r0x07, FSR0H
	MOVFF	r0x08, INDF0
; ;ic:17: 	iTemp10 [k17 lr8:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* }{ sir@ _memcpyram2ram_d_1_1}[r0x06 r0x07 ] = iTemp10 [k17 lr8:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* }{ sir@ _memcpyram2ram_d_1_1}[r0x06 r0x07 ] + 0x1 {literal-unsigned-char}
	INCF	r0x06, F
	BTFSC	STATUS, 0
	INCF	r0x07, F
; ;ic:18: 	 goto _whilecontinue_0($1)
	BRA	_00105_DS_
; ;ic:20:  _whilebreak_0($3) :
; ;ic:21: 	ret iTemp0 [k2 lr3:21 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void near* }{ sir@ _memcpyram2ram_dst_1_1}[r0x00 r0x01 ]
_00107_DS_:
;	.line	38; memcpyram2ram.c	return(dst);
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
; ;ic:22:  _return($4) :
; ;ic:23: 	eproc _memcpyram2ram [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void near*  data-function    ( void near* , void near* , unsigned-int) }
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
; code size:	  204 (0x00cc) bytes ( 0.16%)
;           	  102 (0x0066) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	   10 (0x000a) bytes


	end
