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
	global _realloc

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern _heap
	extern __mergeHeapBlock
	extern _malloc
	extern _free
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
; ;ic:1:  _entry($14) :
; ;ic:2: 	proc _realloc [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near*  data-function    ( unsigned-char near* , unsigned-char) }
S_realloc__realloc	code
_realloc:
;	.line	31; realloc.c	unsigned char _MALLOC_SPEC *realloc(unsigned char _MALLOC_SPEC *mblock, unsigned char len)
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
; ;ic:3: iTemp0 [k2 lr3:52 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char near* }{ sir@ _realloc_mblock_1_1}[r0x00 r0x01 ] = recv _realloc [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near*  data-function    ( unsigned-char near* , unsigned-char) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
; ;ic:4: iTemp1 [k4 lr4:49 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _realloc_len_1_1}[r0x02 ] = recv _realloc [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near*  data-function    ( unsigned-char near* , unsigned-char) }
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
; ;ic:5: 	iTemp2 [k6 lr5:6 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp1 [k4 lr4:49 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _realloc_len_1_1}[r0x02 ] < 0x7f {literal-unsigned-char}
;	.line	37; realloc.c	if(len >= MAX_BLOCK_SIZE)
	MOVLW	0x7f
	SUBWF	r0x02, W
	BNC	_00106_DS_
; ;ic:6: 	if iTemp2 [k6 lr5:6 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} != 0 goto _iffalse_0($2)
; ;ic:7: 	ret 0x0 {unsigned-char literal-near* }
;	.line	38; realloc.c	return ((unsigned char _MALLOC_SPEC *)0);
	CLRF	PRODL
	CLRF	WREG
	BRA	_00117_DS_
; ;ic:8:  _iffalse_0($2) :
; ;ic:9: 	if iTemp0 [k2 lr3:52 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char near* }{ sir@ _realloc_mblock_1_1}[r0x00 r0x01 ] != 0 goto _iffalse_1($4)
_00106_DS_:
;	.line	41; realloc.c	if(!mblock)
	MOVF	r0x00, W
	IORWF	r0x01, W
	BNZ	_00108_DS_
; ;ic:10: 	send iTemp1 [k4 lr4:49 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _realloc_len_1_1}[r0x02 ]{argreg = 1}
; ;ic:11: 	iTemp4 [k9 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near* }[r0x03 r0x04 ] = call _malloc [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near*  function    ( unsigned-char) }
;	.line	42; realloc.c	return (malloc(len));
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	CALL	_malloc
	MOVFF	PRODL, r0x04
	INCF	FSR1L, F
; ;ic:12: 	ret iTemp4 [k9 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near* }[r0x03 r0x04 ]
	MOVFF	r0x04, PRODL
	BRA	_00117_DS_
; ;ic:13:  _iffalse_1($4) :
; ;ic:14: 	if iTemp1 [k4 lr4:49 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _realloc_len_1_1}[r0x02 ] != 0 goto _iffalse_2($6)
_00108_DS_:
;	.line	45; realloc.c	if(len == 0) {
	MOVF	r0x02, W
	BNZ	_00110_DS_
; ;ic:15: 	send iTemp0 [k2 lr3:52 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char near* }{ sir@ _realloc_mblock_1_1}[r0x00 r0x01 ]{argreg = 1}
; ;ic:16: 	iTemp5 [k11 lr16:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void} = call _free [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( unsigned-char near* ) }
;	.line	46; realloc.c	free(mblock);
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_free
	MOVLW	0x02
	ADDWF	FSR1L, F
; ;ic:17: 	ret 0x0 {unsigned-char literal-near* }
;	.line	47; realloc.c	return ((unsigned char _MALLOC_SPEC *)0);
	CLRF	PRODL
	CLRF	WREG
	BRA	_00117_DS_
; ;ic:18:  _iffalse_2($6) :
; ;ic:19: 	iTemp8 [k15 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x03 r0x04 ] = (unsigned-int)iTemp0 [k2 lr3:52 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char near* }{ sir@ _realloc_mblock_1_1}[r0x00 r0x01 ]
_00110_DS_:
;	.line	50; realloc.c	pHeap = (_malloc_rec _MALLOC_SPEC *)((unsigned int)mblock - 1);
	MOVF	r0x00, W
	MOVWF	r0x03
	MOVF	r0x01, W
	MOVWF	r0x04
; ;ic:20: 	iTemp9 [k16 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x03 r0x04 ] = iTemp8 [k15 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x03 r0x04 ] - 0x1 {literal-unsigned-int}
	MOVLW	0xff
	ADDWF	r0x03, F
	BTFSS	STATUS, 0
	DECF	r0x04, F
; ;ic:21: 	iTemp7 [k13 lr21:42 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00010000 near* }{ sir@ _realloc_pHeap_1_1}[r0x03 r0x04 ] = (struct __00010000 near* )iTemp9 [k16 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x03 r0x04 ]
; ;ic:22: 	iTemp14 [k24 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7} near* }[r0x05 r0x06 ] := iTemp7 [k13 lr21:42 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00010000 near* }{ sir@ _realloc_pHeap_1_1}[r0x03 r0x04 ]
;	.line	51; realloc.c	bLen = pHeap->bits.count;
	MOVFF	r0x03, r0x05
	MOVFF	r0x04, r0x06
; ;ic:23: 	iTemp15 [k25 lr23:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7}}{ sir@ _realloc_bLen_1_1}[r0x05 ] = @[iTemp14 [k24 lr22:23 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7} near* }[r0x05 r0x06 ]]
	MOVFF	r0x05, FSR0L
	MOVFF	r0x06, FSR0H
	MOVF	INDF0, W
	ANDLW	0x7f
; #	MOVWF	r0x05
; #;;ic:24: 	iTemp11 [k18 lr24:49 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _realloc_bLen_1_1}[r0x05 ] := iTemp15 [k25 lr23:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7}}{ sir@ _realloc_bLen_1_1}[r0x05 ]
; #;;ic:25: 	iTemp16 [k26 lr25:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp11 [k18 lr24:49 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _realloc_bLen_1_1}[r0x05 ] > iTemp1 [k4 lr4:49 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _realloc_len_1_1}[r0x02 ]
; #	MOVF	r0x05, W
;	.line	54; realloc.c	if (bLen <= len) {
	MOVWF	r0x05
	SUBWF	r0x02, W
	BNC	_00114_DS_
; ;ic:26: 	if iTemp16 [k26 lr25:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} != 0 goto _iffalse_4($10)
; ;ic:27: 	send iTemp7 [k13 lr21:42 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00010000 near* }{ sir@ _realloc_pHeap_1_1}[r0x03 r0x04 ]{argreg = 1}
; ;ic:28: 	send iTemp1 [k4 lr4:49 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _realloc_len_1_1}[r0x02 ]{argreg = 2}
; ;ic:29: 	iTemp17 [k27 lr29:48 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00010000 near* }{ sir@ _realloc_temp_1_1}[r0x06 r0x07 ] = call __mergeHeapBlock [k29 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct __00010000 near*  function    ( struct __00010000 near* , unsigned-char) }
;	.line	59; realloc.c	temp = _mergeHeapBlock(pHeap, len);
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	CALL	__mergeHeapBlock
	MOVWF	r0x06
	MOVFF	PRODL, r0x07
	MOVLW	0x03
	ADDWF	FSR1L, F
; ;ic:30: 	if iTemp17 [k27 lr29:48 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00010000 near* }{ sir@ _realloc_temp_1_1}[r0x06 r0x07 ] != 0 goto _iffalse_3($8)
;	.line	61; realloc.c	if(!temp) {
	MOVF	r0x06, W
	IORWF	r0x07, W
	BNZ	_00112_DS_
; ;ic:31: 	ret 0x0 {unsigned-char literal-near* }
;	.line	63; realloc.c	return ((unsigned char _MALLOC_SPEC *)0);
	CLRF	PRODL
	CLRF	WREG
	BRA	_00117_DS_
; ;ic:32:  _iffalse_3($8) :
; ;ic:33: 	iTemp22 [k36 lr33:34 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7} near* }[r0x08 r0x09 ] := iTemp7 [k13 lr21:42 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00010000 near* }{ sir@ _realloc_pHeap_1_1}[r0x03 r0x04 ]
_00112_DS_:
;	.line	67; realloc.c	bLen = pHeap->bits.count;
	MOVFF	r0x03, r0x08
	MOVFF	r0x04, r0x09
; ;ic:34: 	iTemp23 [k37 lr34:35 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7}}[r0x08 ] = @[iTemp22 [k36 lr33:34 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7} near* }[r0x08 r0x09 ]]
	MOVFF	r0x08, FSR0L
	MOVFF	r0x09, FSR0H
	MOVF	INDF0, W
	ANDLW	0x7f
	MOVWF	r0x08
; ;ic:35: 	iTemp11 [k18 lr24:49 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _realloc_bLen_1_1}[r0x05 ] := iTemp23 [k37 lr34:35 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7}}[r0x08 ]
	MOVFF	r0x08, r0x05
; ;ic:36:  _iffalse_4($10) :
; ;ic:37: 	iTemp1 [k4 lr4:49 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _realloc_len_1_1}[r0x02 ] = iTemp1 [k4 lr4:49 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _realloc_len_1_1}[r0x02 ] + 0x1 {literal-unsigned-char}
_00114_DS_:
;	.line	70; realloc.c	len++; /* increase to also count the header */
	INCF	r0x02, F
; ;ic:38: 	iTemp26 [k40 lr38:39 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp11 [k18 lr24:49 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _realloc_bLen_1_1}[r0x05 ] > iTemp1 [k4 lr4:49 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _realloc_len_1_1}[r0x02 ]
;	.line	72; realloc.c	if(bLen > len) {
	MOVF	r0x05, W
	SUBWF	r0x02, W
	BC	_00116_DS_
; ;ic:39: 	if iTemp26 [k40 lr38:39 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_5($12)
; ;ic:40: 	iTemp29 [k45 lr40:41 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7} near* }[r0x08 r0x09 ] := iTemp7 [k13 lr21:42 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00010000 near* }{ sir@ _realloc_pHeap_1_1}[r0x03 r0x04 ]
;	.line	74; realloc.c	pHeap->bits.count = len;
	MOVFF	r0x03, r0x08
	MOVFF	r0x04, r0x09
; ;ic:41: 	*(iTemp29 [k45 lr40:41 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7} near* }[r0x08 r0x09 ]) := iTemp1 [k4 lr4:49 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _realloc_len_1_1}[r0x02 ]
	MOVF	r0x02, W
	ANDLW	0x7f
	MOVWF	PRODH
	MOVFF	r0x08, FSR0L
	MOVFF	r0x09, FSR0H
	MOVF	INDF0, W
	ANDLW	0x80
	IORWF	PRODH, W
	MOVWF	INDF0
; ;ic:42: 	iTemp30 [k46 lr42:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x03 r0x04 ] = (unsigned-int)iTemp7 [k13 lr21:42 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00010000 near* }{ sir@ _realloc_pHeap_1_1}[r0x03 r0x04 ]
; ;ic:43: 	iTemp31 [k47 lr43:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x08 r0x09 ] = (int)iTemp1 [k4 lr4:49 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _realloc_len_1_1}[r0x02 ]
;	.line	75; realloc.c	temp = (_malloc_rec _MALLOC_SPEC *)((unsigned int)pHeap + len);
	MOVFF	r0x02, r0x08
	CLRF	r0x09
; ;ic:44: 	iTemp33 [k49 lr44:45 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x03 r0x04 ] = iTemp30 [k46 lr42:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x03 r0x04 ] + iTemp31 [k47 lr43:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x08 r0x09 ]
	MOVF	r0x08, W
	ADDWF	r0x03, F
	MOVF	r0x09, W
	ADDWFC	r0x04, F
; ;ic:45: 	iTemp17 [k27 lr29:48 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00010000 near* }{ sir@ _realloc_temp_1_1}[r0x06 r0x07 ] = (struct __00010000 near* )iTemp33 [k49 lr44:45 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x03 r0x04 ]
	MOVF	r0x03, W
	MOVWF	r0x06
	MOVF	r0x04, W
	MOVWF	r0x07
; ;ic:46: 	iTemp37 [k55 lr46:47 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* }[r0x03 r0x04 ] := iTemp17 [k27 lr29:48 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00010000 near* }{ sir@ _realloc_temp_1_1}[r0x06 r0x07 ]
;	.line	76; realloc.c	temp->bits.alloc = 0;
	MOVFF	r0x06, r0x03
	MOVFF	r0x07, r0x04
; ;ic:47: 	*(iTemp37 [k55 lr46:47 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* }[r0x03 r0x04 ]) := 0x0 {literal-unsigned-char}
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, FSR0H
	BCF	INDF0, 7
; ;ic:48: 	iTemp40 [k60 lr48:50 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7} near* }[r0x06 r0x07 ] := iTemp17 [k27 lr29:48 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00010000 near* }{ sir@ _realloc_temp_1_1}[r0x06 r0x07 ]
; ;ic:49: 	iTemp41 [k61 lr49:50 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x02 ] = iTemp11 [k18 lr24:49 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _realloc_bLen_1_1}[r0x05 ] - iTemp1 [k4 lr4:49 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _realloc_len_1_1}[r0x02 ]
;	.line	77; realloc.c	temp->bits.count = bLen - len;
	MOVF	r0x02, W
	SUBWF	r0x05, W
; #	MOVWF	r0x02
; #;;ic:50: 	*(iTemp40 [k60 lr48:50 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7} near* }[r0x06 r0x07 ]) := iTemp41 [k61 lr49:50 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x02 ]
; #	MOVF	r0x02, W
	ANDLW	0x7f
	MOVWF	PRODH
	MOVFF	r0x06, FSR0L
	MOVFF	r0x07, FSR0H
	MOVF	INDF0, W
	ANDLW	0x80
	IORWF	PRODH, W
	MOVWF	INDF0
; ;ic:51:  _iffalse_5($12) :
; ;ic:52: 	ret iTemp0 [k2 lr3:52 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char near* }{ sir@ _realloc_mblock_1_1}[r0x00 r0x01 ]
_00116_DS_:
;	.line	80; realloc.c	return (mblock);
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
; ;ic:53:  _return($13) :
; ;ic:54: 	eproc _realloc [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near*  data-function    ( unsigned-char near* , unsigned-char) }
_00117_DS_:
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
; code size:	  390 (0x0186) bytes ( 0.30%)
;           	  195 (0x00c3) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	   10 (0x000a) bytes


	end
