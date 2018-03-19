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
	global __initHeap
	global __mergeHeapBlock
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
; ;ic:1:  _entry($16) :
; ;ic:2: 	proc __mergeHeapBlock [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct __00010000 near*  data-function    ( struct __00010000 near* , unsigned-char) }
S_memmisc___mergeHeapBlock	code
__mergeHeapBlock:
;	.line	58; memmisc.c	_malloc_rec _MALLOC_SPEC *_mergeHeapBlock(_malloc_rec _MALLOC_SPEC *sBlock, unsigned char bSize)
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
; ;ic:3: iTemp0 [k2 lr3:54 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00010000 near* }{ sir@ __mergeHeapBlock_sBlock_1_1}[r0x00 r0x01 ] = recv __mergeHeapBlock [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct __00010000 near*  data-function    ( struct __00010000 near* , unsigned-char) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
; ;ic:4: iTemp1 [k4 lr4:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __mergeHeapBlock_bSize_1_1}[r0x02 ] = recv __mergeHeapBlock [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct __00010000 near*  data-function    ( struct __00010000 near* , unsigned-char) }
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
; ;ic:5: 	iTemp5 [k12 lr5:6 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7} near* }[r0x03 r0x04 ] := iTemp0 [k2 lr3:54 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00010000 near* }{ sir@ __mergeHeapBlock_sBlock_1_1}[r0x00 r0x01 ]
;	.line	65; memmisc.c	bLen = sBlock->bits.count;
	MOVFF	r0x00, r0x03
	MOVFF	r0x01, r0x04
; ;ic:6: 	iTemp6 [k13 lr6:7 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7}}{ sir@ __mergeHeapBlock_bLen_1_1}[r0x03 ] = @[iTemp5 [k12 lr5:6 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7} near* }[r0x03 r0x04 ]]
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, FSR0H
	MOVF	INDF0, W
	ANDLW	0x7f
	MOVWF	r0x03
; ;ic:7: 	iTemp2 [k6 lr7:12 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __mergeHeapBlock_bLen_1_1}[r0x03 ] := iTemp6 [k13 lr6:7 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7}}{ sir@ __mergeHeapBlock_bLen_1_1}[r0x03 ]
; ;ic:8: 	iTemp8 [k16 lr8:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x04 r0x05 ] = (unsigned-int)iTemp0 [k2 lr3:54 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00010000 near* }{ sir@ __mergeHeapBlock_sBlock_1_1}[r0x00 r0x01 ]
;	.line	69; memmisc.c	temp = (_malloc_rec _MALLOC_SPEC *)((unsigned int)sBlock + bLen);	//sBlock->bits.count);
	MOVF	r0x00, W
	MOVWF	r0x04
	MOVF	r0x01, W
	MOVWF	r0x05
; ;ic:9: 	iTemp9 [k17 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x06 r0x07 ] = (int)iTemp2 [k6 lr7:12 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __mergeHeapBlock_bLen_1_1}[r0x03 ]
	MOVFF	r0x03, r0x06
	CLRF	r0x07
; ;ic:10: 	iTemp11 [k19 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x04 r0x05 ] = iTemp8 [k16 lr8:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x04 r0x05 ] + iTemp9 [k17 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x06 r0x07 ]
	MOVF	r0x06, W
	ADDWF	r0x04, F
	MOVF	r0x07, W
	ADDWFC	r0x05, F
; ;ic:11: 	iTemp7 [k14 lr11:52 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00010000 near* }{ sir@ __mergeHeapBlock_temp_1_1}[r0x04 r0x05 ] = (struct __00010000 near* )iTemp11 [k19 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x04 r0x05 ]
; ;ic:12: 	iTemp13 [k21 lr12:52 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __mergeHeapBlock_eLen_1_1}[r0x03 ] := iTemp2 [k6 lr7:12 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __mergeHeapBlock_bLen_1_1}[r0x03 ]
; ;ic:14:  _whilecontinue_1($3) :
; ;ic:15: 	iTemp16 [k26 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}[r0x06 ] = @[iTemp7 [k14 lr11:52 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00010000 near* }{ sir@ __mergeHeapBlock_temp_1_1}[r0x04 r0x05 ]]
_00126_DS_:
;	.line	71; memmisc.c	while((temp->datum) && (!temp->bits.alloc) && (eLen <= bSize)) {
	MOVFF	r0x04, FSR0L
	MOVFF	r0x05, FSR0H
	MOVFF	INDF0, r0x06
; ;ic:16: 	if iTemp16 [k26 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}[r0x06 ] == 0 goto _whilebreak_1($5)
	MOVF	r0x06, W
	BZ	_00128_DS_
; ;ic:17: 	iTemp19 [k31 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* }[r0x06 r0x07 ] := iTemp7 [k14 lr11:52 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00010000 near* }{ sir@ __mergeHeapBlock_temp_1_1}[r0x04 r0x05 ]
	MOVFF	r0x04, r0x06
	MOVFF	r0x05, r0x07
; ;ic:18: 	iTemp20 [k32 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1}}[r0x06 ] = @[iTemp19 [k31 lr17:18 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* }[r0x06 r0x07 ]]
	CLRF	WREG
	MOVFF	r0x06, FSR0L
	MOVFF	r0x07, FSR0H
	BTFSC	INDF0, 7
	INCF	WREG, F
	MOVWF	r0x06
; ;ic:19: 	if iTemp20 [k32 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1}}[r0x06 ] != 0 goto _whilebreak_1($5)
	MOVF	r0x06, W
	BNZ	_00128_DS_
; ;ic:20: 	iTemp21 [k33 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp13 [k21 lr12:52 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __mergeHeapBlock_eLen_1_1}[r0x03 ] > iTemp1 [k4 lr4:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __mergeHeapBlock_bSize_1_1}[r0x02 ]
	MOVF	r0x03, W
	SUBWF	r0x02, W
	BNC	_00128_DS_
; ;ic:21: 	if iTemp21 [k33 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} != 0 goto _whilebreak_1($5)
; ;ic:22: 	iTemp25 [k40 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7} near* }[r0x06 r0x07 ] := iTemp7 [k14 lr11:52 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00010000 near* }{ sir@ __mergeHeapBlock_temp_1_1}[r0x04 r0x05 ]
;	.line	72; memmisc.c	eLen += (dat=temp->bits.count);
	MOVFF	r0x04, r0x06
	MOVFF	r0x05, r0x07
; ;ic:23: 	iTemp26 [k41 lr23:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7}}{ sir@ __mergeHeapBlock_dat_1_1}[r0x06 ] = @[iTemp25 [k40 lr22:23 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7} near* }[r0x06 r0x07 ]]
	MOVFF	r0x06, FSR0L
	MOVFF	r0x07, FSR0H
	MOVF	INDF0, W
	ANDLW	0x7f
	MOVWF	r0x06
; ;ic:24: 	iTemp22 [k34 lr24:28 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}[r0x07 ] := iTemp26 [k41 lr23:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7}}{ sir@ __mergeHeapBlock_dat_1_1}[r0x06 ]
	MOVFF	r0x06, r0x07
; ;ic:25: 	iTemp28 [k43 lr25:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x06 ] := iTemp26 [k41 lr23:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7}}{ sir@ __mergeHeapBlock_dat_1_1}[r0x06 ]
; ;ic:26: 	iTemp13 [k21 lr12:52 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __mergeHeapBlock_eLen_1_1}[r0x03 ] = iTemp13 [k21 lr12:52 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __mergeHeapBlock_eLen_1_1}[r0x03 ] + iTemp28 [k43 lr25:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x06 ]
	ADDWF	r0x03, F
; ;ic:27: 	iTemp31 [k46 lr27:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x06 r0x08 ] = (unsigned-int)iTemp7 [k14 lr11:52 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00010000 near* }{ sir@ __mergeHeapBlock_temp_1_1}[r0x04 r0x05 ]
;	.line	73; memmisc.c	temp = (_malloc_rec _MALLOC_SPEC *)((unsigned int)temp + dat);
	MOVF	r0x04, W
	MOVWF	r0x06
	MOVF	r0x05, W
	MOVWF	r0x08
; ;ic:28: 	iTemp32 [k47 lr28:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x07 r0x09 ] = (int)iTemp22 [k34 lr24:28 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}[r0x07 ]
	CLRF	r0x09
; ;ic:29: 	iTemp34 [k49 lr29:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x06 r0x08 ] = iTemp31 [k46 lr27:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x06 r0x08 ] + iTemp32 [k47 lr28:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x07 r0x09 ]
	MOVF	r0x07, W
	ADDWF	r0x06, F
	MOVF	r0x09, W
	ADDWFC	r0x08, F
; ;ic:30: 	iTemp7 [k14 lr11:52 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00010000 near* }{ sir@ __mergeHeapBlock_temp_1_1}[r0x04 r0x05 ] = (struct __00010000 near* )iTemp34 [k49 lr29:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x06 r0x08 ]
	MOVF	r0x06, W
	MOVWF	r0x04
	MOVF	r0x08, W
	MOVWF	r0x05
; ;ic:31: 	 goto _whilecontinue_1($3)
	BRA	_00126_DS_
; ;ic:32:  _whilebreak_1($5) :
; ;ic:33: 	iTemp36 [k51 lr33:34 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp13 [k21 lr12:52 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __mergeHeapBlock_eLen_1_1}[r0x03 ] > iTemp1 [k4 lr4:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __mergeHeapBlock_bSize_1_1}[r0x02 ]
_00128_DS_:
;	.line	76; memmisc.c	if(eLen > bSize) {
	MOVF	r0x03, W
	SUBWF	r0x02, W
	BC	_00136_DS_
; ;ic:34: 	if iTemp36 [k51 lr33:34 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_3($13)
; ;ic:35: 	iTemp7 [k14 lr11:52 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00010000 near* }{ sir@ __mergeHeapBlock_temp_1_1}[r0x04 r0x05 ] := iTemp0 [k2 lr3:54 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00010000 near* }{ sir@ __mergeHeapBlock_sBlock_1_1}[r0x00 r0x01 ]
;	.line	80; memmisc.c	temp = sBlock;
	MOVFF	r0x00, r0x04
	MOVFF	r0x01, r0x05
; ;ic:37:  _whilecontinue_2($9) :
; ;ic:38: 	if iTemp13 [k21 lr12:52 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __mergeHeapBlock_eLen_1_1}[r0x03 ] == 0 goto _whilebreak_2($11)
_00132_DS_:
;	.line	81; memmisc.c	while(eLen > 0) {
	MOVF	r0x03, W
	BZ	_00134_DS_
; ;ic:39: 	iTemp37 [k52 lr39:40 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp13 [k21 lr12:52 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __mergeHeapBlock_eLen_1_1}[r0x03 ] > 0x7f {literal-unsigned-char}
;	.line	82; memmisc.c	if(eLen > MAX_BLOCK_SIZE)i = MAX_BLOCK_SIZE;
	MOVLW	0x80
	SUBWF	r0x03, W
	BNC	_00130_DS_
; ;ic:40: 	if iTemp37 [k52 lr39:40 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_2($7)
; ;ic:41: 	iTemp38 [k53 lr41:51 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __mergeHeapBlock_i_2_3}[r0x02 ] := 0x7f {literal-unsigned-char}
	MOVLW	0x7f
	MOVWF	r0x02
; ;ic:42: 	 goto _ifend_2($8)
	BRA	_00131_DS_
; ;ic:43:  _iffalse_2($7) :
; ;ic:44: 	iTemp38 [k53 lr41:51 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __mergeHeapBlock_i_2_3}[r0x02 ] := iTemp13 [k21 lr12:52 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __mergeHeapBlock_eLen_1_1}[r0x03 ]
_00130_DS_:
;	.line	83; memmisc.c	else i = eLen;
	MOVFF	r0x03, r0x02
; ;ic:45:  _ifend_2($8) :
; ;ic:46: 	*(iTemp7 [k14 lr11:52 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00010000 near* }{ sir@ __mergeHeapBlock_temp_1_1}[r0x04 r0x05 ]) := iTemp38 [k53 lr41:51 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __mergeHeapBlock_i_2_3}[r0x02 ]
_00131_DS_:
;	.line	84; memmisc.c	temp->datum = i;
	MOVFF	r0x04, FSR0L
	MOVFF	r0x05, FSR0H
	MOVFF	r0x02, INDF0
; ;ic:47: 	iTemp41 [k58 lr47:49 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x06 r0x07 ] = (unsigned-int)iTemp7 [k14 lr11:52 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00010000 near* }{ sir@ __mergeHeapBlock_temp_1_1}[r0x04 r0x05 ]
;	.line	85; memmisc.c	temp = (_malloc_rec _MALLOC_SPEC *)((unsigned int)temp + i);
	MOVF	r0x04, W
	MOVWF	r0x06
	MOVF	r0x05, W
	MOVWF	r0x07
; ;ic:48: 	iTemp42 [k59 lr48:49 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x08 r0x09 ] = (int)iTemp38 [k53 lr41:51 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __mergeHeapBlock_i_2_3}[r0x02 ]
	MOVFF	r0x02, r0x08
	CLRF	r0x09
; ;ic:49: 	iTemp44 [k61 lr49:50 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x06 r0x07 ] = iTemp41 [k58 lr47:49 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x06 r0x07 ] + iTemp42 [k59 lr48:49 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x08 r0x09 ]
	MOVF	r0x08, W
	ADDWF	r0x06, F
	MOVF	r0x09, W
	ADDWFC	r0x07, F
; ;ic:50: 	iTemp7 [k14 lr11:52 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00010000 near* }{ sir@ __mergeHeapBlock_temp_1_1}[r0x04 r0x05 ] = (struct __00010000 near* )iTemp44 [k61 lr49:50 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x06 r0x07 ]
	MOVF	r0x06, W
	MOVWF	r0x04
	MOVF	r0x07, W
	MOVWF	r0x05
; ;ic:51: 	iTemp13 [k21 lr12:52 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __mergeHeapBlock_eLen_1_1}[r0x03 ] = iTemp13 [k21 lr12:52 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __mergeHeapBlock_eLen_1_1}[r0x03 ] - iTemp38 [k53 lr41:51 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ __mergeHeapBlock_i_2_3}[r0x02 ]
;	.line	86; memmisc.c	eLen -= i;
	MOVF	r0x02, W
	SUBWF	r0x03, F
; ;ic:52: 	 goto _whilecontinue_2($9)
	BRA	_00132_DS_
; ;ic:53:  _whilebreak_2($11) :
; ;ic:54: 	ret iTemp0 [k2 lr3:54 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00010000 near* }{ sir@ __mergeHeapBlock_sBlock_1_1}[r0x00 r0x01 ]
_00134_DS_:
;	.line	90; memmisc.c	return (sBlock);
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
	BRA	_00138_DS_
; ;ic:55:  _iffalse_3($13) :
; ;ic:56: 	ret 0x0 {struct __00010000 literal-near* }
_00136_DS_:
;	.line	94; memmisc.c	return ((_malloc_rec _MALLOC_SPEC *)0);
	CLRF	PRODL
	CLRF	WREG
; ;ic:57:  _return($15) :
; ;ic:58: 	eproc __mergeHeapBlock [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct __00010000 near*  data-function    ( struct __00010000 near* , unsigned-char) }
_00138_DS_:
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

; ; Starting pCode block
; ;ic:1:  _entry($9) :
; ;ic:2: 	proc __initHeap [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( unsigned-char near* , unsigned-int) }
S_memmisc___initHeap	code
__initHeap:
;	.line	29; memmisc.c	void _initHeap(unsigned char _MALLOC_SPEC *dheap, unsigned int heapsize)
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
; ;ic:3: iTemp3 [k8 lr3:27 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00010000 near* }{ sir@ __initHeap_pHeap_1_1}[r0x00 r0x01 ] = recv __initHeap [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( unsigned-char near* , unsigned-int) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
; ;ic:4: iTemp1 [k4 lr4:25 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __initHeap_heapsize_1_1}[r0x02 r0x03 ] = recv __initHeap [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( unsigned-char near* , unsigned-int) }
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
; ;ic:5: 	iTemp2 [k6 lr5:25 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __initHeap_hsize_1_1}[r0x04 r0x05 ] := 0x0 {literal-unsigned-int}
;	.line	32; memmisc.c	unsigned int hsize=0;
	CLRF	r0x04
	CLRF	r0x05
; ;ic:6: 	if iTemp1 [k4 lr4:25 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __initHeap_heapsize_1_1}[r0x02 r0x03 ] != 0 goto _iffalse_0($2)
;	.line	36; memmisc.c	if (heapsize == 0) return;
	MOVF	r0x02, W
; #	IORWF	r0x03, W
; #	BTFSS	STATUS, 2
; #	GOTO	_00106_DS_
; #;;ic:7: 	ret
; #	GOTO	_00112_DS_
; #;;ic:8:  _iffalse_0($2) :
; #;;ic:9: 	iTemp1 [k4 lr4:25 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __initHeap_heapsize_1_1}[r0x02 r0x03 ] = iTemp1 [k4 lr4:25 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __initHeap_heapsize_1_1}[r0x02 r0x03 ] - 0x1 {literal-unsigned-char}
; #	MOVLW	0xff
;	.line	38; memmisc.c	heapsize--;
	IORWF	r0x03, W
	BZ	_00112_DS_
	MOVLW	0xff
	ADDWF	r0x02, F
	BTFSS	STATUS, 0
	DECF	r0x03, F
; ;ic:11:  _whilecontinue_0($5) :
; ;ic:12: 	iTemp7 [k13 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp2 [k6 lr5:25 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __initHeap_hsize_1_1}[r0x04 r0x05 ] < iTemp1 [k4 lr4:25 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __initHeap_heapsize_1_1}[r0x02 r0x03 ]
_00109_DS_:
;	.line	40; memmisc.c	while (hsize < heapsize) {
	MOVF	r0x03, W
	SUBWF	r0x05, W
	BNZ	_00118_DS_
	MOVF	r0x02, W
	SUBWF	r0x04, W
_00118_DS_:
	BC	_00111_DS_
; ;ic:13: 	if iTemp7 [k13 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _whilebreak_0($7)
; ;ic:14: 	iTemp8 [k14 lr14:24 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ __initHeap_bsize_1_1}[r0x06 r0x07 ] = iTemp1 [k4 lr4:25 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __initHeap_heapsize_1_1}[r0x02 r0x03 ] - iTemp2 [k6 lr5:25 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __initHeap_hsize_1_1}[r0x04 r0x05 ]
;	.line	42; memmisc.c	bsize = (heapsize - hsize); /* thus: bsize > 0 */
	MOVF	r0x04, W
	SUBWF	r0x02, W
	MOVWF	r0x06
	MOVF	r0x05, W
	SUBWFB	r0x03, W
; #	MOVWF	r0x07
; #;;ic:15: 	iTemp11 [k18 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp8 [k14 lr14:24 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ __initHeap_bsize_1_1}[r0x06 r0x07 ] > 0x7f {literal-int}
; #	MOVF	r0x07, W
;	.line	43; memmisc.c	if(bsize > MAX_BLOCK_SIZE) bsize = MAX_BLOCK_SIZE;
	MOVWF	r0x07
	ADDLW	0x80
	ADDLW	0x80
	BNZ	_00119_DS_
	MOVLW	0x80
	SUBWF	r0x06, W
_00119_DS_:
	BNC	_00108_DS_
; ;ic:16: 	if iTemp11 [k18 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_1($4)
; ;ic:17: 	iTemp8 [k14 lr14:24 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ __initHeap_bsize_1_1}[r0x06 r0x07 ] := 0x7f {literal-int}
	MOVLW	0x7f
	MOVWF	r0x06
	CLRF	r0x07
; ;ic:18:  _iffalse_1($4) :
; ;ic:19: 	iTemp14 [k22 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}[r0x08 ] = (volatile-unsigned-char)iTemp8 [k14 lr14:24 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ __initHeap_bsize_1_1}[r0x06 r0x07 ]
_00108_DS_:
;	.line	46; memmisc.c	pHeap->datum = bsize;
	MOVF	r0x06, W
	MOVWF	r0x08
; ;ic:20: 	*(iTemp3 [k8 lr3:27 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00010000 near* }{ sir@ __initHeap_pHeap_1_1}[r0x00 r0x01 ]) := iTemp14 [k22 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}[r0x08 ]
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	r0x08, INDF0
; ;ic:21: 	iTemp15 [k23 lr21:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x08 r0x09 ] = (unsigned-int)iTemp3 [k8 lr3:27 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00010000 near* }{ sir@ __initHeap_pHeap_1_1}[r0x00 r0x01 ]
;	.line	47; memmisc.c	pHeap = (_malloc_rec _MALLOC_SPEC *)((unsigned int)pHeap + bsize);
	MOVF	r0x00, W
	MOVWF	r0x08
	MOVF	r0x01, W
	MOVWF	r0x09
; ;ic:22: 	iTemp17 [k25 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x08 r0x09 ] = iTemp15 [k23 lr21:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x08 r0x09 ] + iTemp8 [k14 lr14:24 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ __initHeap_bsize_1_1}[r0x06 r0x07 ]
	MOVF	r0x06, W
	ADDWF	r0x08, F
	MOVF	r0x07, W
	ADDWFC	r0x09, F
; ;ic:23: 	iTemp3 [k8 lr3:27 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00010000 near* }{ sir@ __initHeap_pHeap_1_1}[r0x00 r0x01 ] = (struct __00010000 near* )iTemp17 [k25 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x08 r0x09 ]
	MOVF	r0x08, W
	MOVWF	r0x00
	MOVF	r0x09, W
	MOVWF	r0x01
; ;ic:24: 	iTemp2 [k6 lr5:25 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __initHeap_hsize_1_1}[r0x04 r0x05 ] = iTemp2 [k6 lr5:25 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ __initHeap_hsize_1_1}[r0x04 r0x05 ] + iTemp8 [k14 lr14:24 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int}{ sir@ __initHeap_bsize_1_1}[r0x06 r0x07 ]
;	.line	49; memmisc.c	hsize += bsize;
	MOVF	r0x06, W
	ADDWF	r0x04, F
	MOVF	r0x07, W
	ADDWFC	r0x05, F
; ;ic:25: 	 goto _whilecontinue_0($5)
	BRA	_00109_DS_
; ;ic:26:  _whilebreak_0($7) :
; ;ic:27: 	*(iTemp3 [k8 lr3:27 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00010000 near* }{ sir@ __initHeap_pHeap_1_1}[r0x00 r0x01 ]) := 0x0 {literal-unsigned-char}
_00111_DS_:
;	.line	53; memmisc.c	pHeap->datum = 0;
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVLW	0x00
	CLRF	INDF0
; ;ic:28:  _return($8) :
; ;ic:29: 	eproc __initHeap [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( unsigned-char near* , unsigned-int) }
_00112_DS_:
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
; code size:	  596 (0x0254) bytes ( 0.45%)
;           	  298 (0x012a) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	   10 (0x000a) bytes


	end
