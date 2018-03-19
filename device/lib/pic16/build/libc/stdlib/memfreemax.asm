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
	global _memfreemax

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern _heap
;--------------------------------------------------------
;	Equates to used internal registers
;--------------------------------------------------------
STATUS	equ	0xfd8
WREG	equ	0xfe8
FSR0L	equ	0xfe9
FSR0H	equ	0xfea
INDF0	equ	0xfef
POSTDEC1	equ	0xfe5
PREINC1	equ	0xfe4
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

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($8) :
; ;ic:2: 	proc _memfreemax [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function    ( ) }
S_memfreemax__memfreemax	code
_memfreemax:
;	.line	31; memfreemax.c	unsigned int memfreemax(void)
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
	MOVFF	r0x06, POSTDEC1
; ;ic:3: 	iTemp0 [k2 lr3:25 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _memfreemax_maxSize_1_1}[r0x00 ] := 0x1 {literal-unsigned-char}
;	.line	34; memfreemax.c	unsigned char maxSize = 1;
	MOVLW	0x01
	MOVWF	r0x00
; ;ic:4: 	iTemp1 [k4 lr4:22 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00010000 near* }{ sir@ _memfreemax_pHeap_1_1}[r0x01 r0x02 ] = &[_heap [k6 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near* }]
;	.line	37; memfreemax.c	pHeap = (_malloc_rec _MALLOC_SPEC *)&heap;
	MOVLW	LOW(_heap)
	MOVWF	r0x01
	MOVLW	HIGH(_heap)
	MOVWF	r0x02
; ;ic:6:  _whilecontinue_0($4) :
; ;ic:7: 	iTemp7 [k15 lr7:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7} near* }[r0x03 r0x04 ] := iTemp1 [k4 lr4:22 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00010000 near* }{ sir@ _memfreemax_pHeap_1_1}[r0x01 r0x02 ]
_00108_DS_:
;	.line	39; memfreemax.c	while ((bLen = pHeap->bits.count)) {
	MOVFF	r0x01, r0x03
	MOVFF	r0x02, r0x04
; ;ic:8: 	iTemp8 [k16 lr8:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7}}[r0x03 ] = @[iTemp7 [k15 lr7:8 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7} near* }[r0x03 r0x04 ]]
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, FSR0H
	MOVF	INDF0, W
	ANDLW	0x7f
	MOVWF	r0x03
; ;ic:9: 	iTemp4 [k9 lr9:19 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _memfreemax_bLen_1_1}[r0x04 ] := iTemp8 [k16 lr8:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7}}[r0x03 ]
	MOVFF	r0x03, r0x04
; ;ic:10: 	if iTemp8 [k16 lr8:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7}}[r0x03 ] == 0 goto _whilebreak_0($6)
	MOVF	r0x03, W
	BZ	_00110_DS_
; ;ic:11: 	iTemp11 [k21 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* }[r0x03 r0x05 ] := iTemp1 [k4 lr4:22 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00010000 near* }{ sir@ _memfreemax_pHeap_1_1}[r0x01 r0x02 ]
;	.line	40; memfreemax.c	if(!pHeap->bits.alloc && (bLen > maxSize))
	MOVFF	r0x01, r0x03
	MOVFF	r0x02, r0x05
; ;ic:12: 	iTemp12 [k22 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1}}[r0x03 ] = @[iTemp11 [k21 lr11:12 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* }[r0x03 r0x05 ]]
	CLRF	WREG
	MOVFF	r0x03, FSR0L
	MOVFF	r0x05, FSR0H
	BTFSC	INDF0, 7
	INCF	WREG, F
	MOVWF	r0x03
; ;ic:13: 	if iTemp12 [k22 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1}}[r0x03 ] != 0 goto _iffalse_0($2)
	MOVF	r0x03, W
	BNZ	_00106_DS_
; ;ic:14: 	iTemp13 [k23 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp4 [k9 lr9:19 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _memfreemax_bLen_1_1}[r0x04 ] > iTemp0 [k2 lr3:25 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _memfreemax_maxSize_1_1}[r0x00 ]
	MOVF	r0x04, W
; #	SUBWF	r0x00, W
; #	BTFSC	STATUS, 0
; #	GOTO	_00106_DS_
; #;;ic:15: 	if iTemp13 [k23 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_0($2)
; #;;ic:16: 	iTemp0 [k2 lr3:25 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _memfreemax_maxSize_1_1}[r0x00 ] := iTemp4 [k9 lr9:19 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _memfreemax_bLen_1_1}[r0x04 ]
; #	MOVFF	r0x04, r0x00
; #;;ic:17:  _iffalse_0($2) :
; #;;ic:18: 	iTemp14 [k24 lr18:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x03 r0x05 ] = (unsigned-int)iTemp1 [k4 lr4:22 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00010000 near* }{ sir@ _memfreemax_pHeap_1_1}[r0x01 r0x02 ]
; #	MOVF	r0x01, W
;	.line	41; memfreemax.c	maxSize = bLen;
	SUBWF	r0x00, W
;	.line	43; memfreemax.c	pHeap = (_malloc_rec _MALLOC_SPEC *)((unsigned int)pHeap + bLen);
	BTFSS	STATUS, 0
	MOVFF	r0x04, r0x00
_00106_DS_:
	MOVF	r0x01, W
	MOVWF	r0x03
	MOVF	r0x02, W
	MOVWF	r0x05
; ;ic:19: 	iTemp15 [k25 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x04 r0x06 ] = (int)iTemp4 [k9 lr9:19 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _memfreemax_bLen_1_1}[r0x04 ]
	CLRF	r0x06
; ;ic:20: 	iTemp17 [k27 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x03 r0x05 ] = iTemp14 [k24 lr18:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x03 r0x05 ] + iTemp15 [k25 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x04 r0x06 ]
	MOVF	r0x04, W
	ADDWF	r0x03, F
	MOVF	r0x06, W
	ADDWFC	r0x05, F
; ;ic:21: 	iTemp1 [k4 lr4:22 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00010000 near* }{ sir@ _memfreemax_pHeap_1_1}[r0x01 r0x02 ] = (struct __00010000 near* )iTemp17 [k27 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x03 r0x05 ]
	MOVF	r0x03, W
	MOVWF	r0x01
	MOVF	r0x05, W
	MOVWF	r0x02
; ;ic:22: 	 goto _whilecontinue_0($4)
	BRA	_00108_DS_
; ;ic:23:  _whilebreak_0($6) :
; ;ic:24: 	iTemp0 [k2 lr3:25 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _memfreemax_maxSize_1_1}[r0x00 ] = iTemp0 [k2 lr3:25 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _memfreemax_maxSize_1_1}[r0x00 ] - 0x1 {literal-unsigned-char}
_00110_DS_:
;	.line	47; memfreemax.c	--maxSize;
	DECF	r0x00, F
; ;ic:25: 	iTemp20 [k30 lr25:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x00 r0x01 ] = (unsigned-int)iTemp0 [k2 lr3:25 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _memfreemax_maxSize_1_1}[r0x00 ]
; ;ic:26: 	ret iTemp20 [k30 lr25:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x00 r0x01 ]
; =DF= MOVFF: replaced by CRLF/SETF
;	.line	49; memfreemax.c	return (maxSize);
	CLRF	PRODL
	MOVF	r0x00, W
; ;ic:27:  _return($7) :
; ;ic:28: 	eproc _memfreemax [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function    ( ) }
	MOVFF	PREINC1, r0x06
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	RETURN	



; Statistics:
; code size:	  172 (0x00ac) bytes ( 0.13%)
;           	   86 (0x0056) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    7 (0x0007) bytes


	end
