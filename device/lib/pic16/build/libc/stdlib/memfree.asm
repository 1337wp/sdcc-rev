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
	global _memfree

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
r0x07	res	1

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($7) :
; ;ic:2: 	proc _memfree [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function    ( ) }
S_memfree__memfree	code
_memfree:
;	.line	31; memfree.c	unsigned int memfree(void)
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
	MOVFF	r0x06, POSTDEC1
	MOVFF	r0x07, POSTDEC1
; ;ic:3: 	iTemp0 [k2 lr3:24 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _memfree_hsize_1_1}[r0x00 r0x01 ] := 0x0 {literal-unsigned-int}
;	.line	34; memfree.c	unsigned int hsize=0;
	CLRF	r0x00
	CLRF	r0x01
; ;ic:4: 	iTemp1 [k4 lr4:22 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00010000 near* }{ sir@ _memfree_pHeap_1_1}[r0x02 r0x03 ] = &[_heap [k6 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near* }]
;	.line	37; memfree.c	pHeap = (_malloc_rec _MALLOC_SPEC *)&heap;
	MOVLW	LOW(_heap)
	MOVWF	r0x02
	MOVLW	HIGH(_heap)
	MOVWF	r0x03
; ;ic:6:  _whilecontinue_0($3) :
; ;ic:7: 	iTemp7 [k15 lr7:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7} near* }[r0x04 r0x05 ] := iTemp1 [k4 lr4:22 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00010000 near* }{ sir@ _memfree_pHeap_1_1}[r0x02 r0x03 ]
_00107_DS_:
;	.line	39; memfree.c	while ((bLen = pHeap->bits.count)) {
	MOVFF	r0x02, r0x04
	MOVFF	r0x03, r0x05
; ;ic:8: 	iTemp8 [k16 lr8:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7}}{ sir@ _memfree_bLen_1_1}[r0x04 ] = @[iTemp7 [k15 lr7:8 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7} near* }[r0x04 r0x05 ]]
	MOVFF	r0x04, FSR0L
	MOVFF	r0x05, FSR0H
	MOVF	INDF0, W
	ANDLW	0x7f
	MOVWF	r0x04
; ;ic:9: 	iTemp4 [k9 lr9:19 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}[r0x05 ] := iTemp8 [k16 lr8:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7}}{ sir@ _memfree_bLen_1_1}[r0x04 ]
	MOVFF	r0x04, r0x05
; ;ic:10: 	if iTemp8 [k16 lr8:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7}}{ sir@ _memfree_bLen_1_1}[r0x04 ] == 0 goto _whilebreak_0($5)
	MOVF	r0x04, W
	BZ	_00109_DS_
; ;ic:11: 	iTemp11 [k21 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* }[r0x04 r0x06 ] := iTemp1 [k4 lr4:22 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00010000 near* }{ sir@ _memfree_pHeap_1_1}[r0x02 r0x03 ]
;	.line	40; memfree.c	if(!pHeap->bits.alloc)
	MOVFF	r0x02, r0x04
	MOVFF	r0x03, r0x06
; ;ic:12: 	iTemp12 [k22 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1}}[r0x04 ] = @[iTemp11 [k21 lr11:12 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* }[r0x04 r0x06 ]]
	CLRF	WREG
	MOVFF	r0x04, FSR0L
	MOVFF	r0x06, FSR0H
	BTFSC	INDF0, 7
	INCF	WREG, F
	MOVWF	r0x04
; ;ic:13: 	if iTemp12 [k22 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1}}[r0x04 ] != 0 goto _iffalse_0($2)
	MOVF	r0x04, W
	BNZ	_00106_DS_
; ;ic:14: 	iTemp13 [k23 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x04 r0x06 ] = (int)iTemp4 [k9 lr9:19 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}[r0x05 ]
;	.line	41; memfree.c	hsize += bLen - 1;
	MOVFF	r0x05, r0x04
	CLRF	r0x06
; ;ic:15: 	iTemp14 [k24 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x04 r0x06 ] = iTemp13 [k23 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x04 r0x06 ] - 0x1 {literal-int}
	MOVLW	0xff
	ADDWF	r0x04, F
	BTFSS	STATUS, 0
	DECF	r0x06, F
; ;ic:16: 	iTemp0 [k2 lr3:24 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _memfree_hsize_1_1}[r0x00 r0x01 ] = iTemp0 [k2 lr3:24 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _memfree_hsize_1_1}[r0x00 r0x01 ] + iTemp14 [k24 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x04 r0x06 ]
	MOVF	r0x04, W
	ADDWF	r0x00, F
	MOVF	r0x06, W
	ADDWFC	r0x01, F
; ;ic:17:  _iffalse_0($2) :
; ;ic:18: 	iTemp17 [k27 lr18:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x04 r0x06 ] = (unsigned-int)iTemp1 [k4 lr4:22 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00010000 near* }{ sir@ _memfree_pHeap_1_1}[r0x02 r0x03 ]
_00106_DS_:
;	.line	43; memfree.c	pHeap = (_malloc_rec _MALLOC_SPEC *)((unsigned int)pHeap + bLen);
	MOVF	r0x02, W
	MOVWF	r0x04
	MOVF	r0x03, W
	MOVWF	r0x06
; ;ic:19: 	iTemp18 [k28 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x05 r0x07 ] = (int)iTemp4 [k9 lr9:19 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}[r0x05 ]
	CLRF	r0x07
; ;ic:20: 	iTemp20 [k30 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x04 r0x06 ] = iTemp17 [k27 lr18:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x04 r0x06 ] + iTemp18 [k28 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x05 r0x07 ]
	MOVF	r0x05, W
	ADDWF	r0x04, F
	MOVF	r0x07, W
	ADDWFC	r0x06, F
; ;ic:21: 	iTemp1 [k4 lr4:22 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00010000 near* }{ sir@ _memfree_pHeap_1_1}[r0x02 r0x03 ] = (struct __00010000 near* )iTemp20 [k30 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x04 r0x06 ]
	MOVF	r0x04, W
	MOVWF	r0x02
	MOVF	r0x06, W
	MOVWF	r0x03
; ;ic:22: 	 goto _whilecontinue_0($3)
	BRA	_00107_DS_
; ;ic:23:  _whilebreak_0($5) :
; ;ic:24: 	ret iTemp0 [k2 lr3:24 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _memfree_hsize_1_1}[r0x00 r0x01 ]
_00109_DS_:
;	.line	46; memfree.c	return (hsize);
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
; ;ic:25:  _return($6) :
; ;ic:26: 	eproc _memfree [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function    ( ) }
	MOVFF	PREINC1, r0x07
	MOVFF	PREINC1, r0x06
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	RETURN	



; Statistics:
; code size:	  192 (0x00c0) bytes ( 0.15%)
;           	   96 (0x0060) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    8 (0x0008) bytes


	end
