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
	global _malloc

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern _heap
	extern __mergeHeapBlock
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
r0x0a	res	1

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($19) :
; ;ic:2: 	proc _malloc [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near*  data-function    ( unsigned-char) }
S_malloc__malloc	code
_malloc:
;	.line	33; malloc.c	unsigned char _MALLOC_SPEC *malloc(unsigned char len)
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
; ;ic:3: iTemp0 [k2 lr3:48 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _malloc_len_1_1}[r0x00 ] = recv _malloc [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near*  data-function    ( unsigned-char) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
; ;ic:4: 	iTemp1 [k4 lr4:5 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp0 [k2 lr3:48 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _malloc_len_1_1}[r0x00 ] < 0x7f {literal-unsigned-char}
;	.line	42; malloc.c	if(len >= MAX_BLOCK_SIZE)
	MOVLW	0x7f
	SUBWF	r0x00, W
	BTFSC	STATUS, 0
	BRA	_00121_DS_
; ;ic:5: 	if iTemp1 [k4 lr4:5 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto do_end($17)
; ;ic:6: 	iTemp2 [k5 lr6:48 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00010000 near* }{ sir@ _malloc_pHeap_1_1}[r0x01 r0x02 ] = &[_heap [k7 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near* }]
;	.line	45; malloc.c	pHeap = (_malloc_rec _MALLOC_SPEC *)&heap;
	MOVLW	LOW(_heap)
	MOVWF	r0x01
	MOVLW	HIGH(_heap)
	MOVWF	r0x02
; ;ic:8:  _whilebody_0($15) :
; ;ic:9: 	iTemp8 [k16 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7} near* }[r0x03 r0x04 ] := iTemp2 [k5 lr6:48 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00010000 near* }{ sir@ _malloc_pHeap_1_1}[r0x01 r0x02 ]
_00119_DS_:
;	.line	48; malloc.c	bLen = pHeap->bits.count;
	MOVFF	r0x01, r0x03
	MOVFF	r0x02, r0x04
; ;ic:10: 	iTemp9 [k17 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7}}{ sir@ _malloc_bLen_1_1}[r0x03 ] = @[iTemp8 [k16 lr9:10 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7} near* }[r0x03 r0x04 ]]
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, FSR0H
	MOVF	INDF0, W
	ANDLW	0x7f
	MOVWF	r0x03
; ;ic:11: 	iTemp5 [k10 lr11:45 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _malloc_bLen_1_1}[r0x03 ] := iTemp9 [k17 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7}}{ sir@ _malloc_bLen_1_1}[r0x03 ]
; ;ic:12: 	iTemp12 [k21 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}[r0x04 ] = @[iTemp2 [k5 lr6:48 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00010000 near* }{ sir@ _malloc_pHeap_1_1}[r0x01 r0x02 ]]
;	.line	51; malloc.c	if(pHeap->datum == 0) {
	MOVFF	r0x01, FSR0L
	MOVFF	r0x02, FSR0H
	MOVFF	INDF0, r0x04
; ;ic:13: 	if iTemp12 [k21 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}[r0x04 ] == 0 goto do_end($17)
	MOVF	r0x04, W
	BTFSC	STATUS, 2
	BRA	_00121_DS_
; ;ic:14: 	iTemp15 [k26 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* }[r0x04 r0x05 ] := iTemp2 [k5 lr6:48 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00010000 near* }{ sir@ _malloc_pHeap_1_1}[r0x01 r0x02 ]
;	.line	68; malloc.c	if(pHeap->bits.alloc)
	MOVFF	r0x01, r0x04
	MOVFF	r0x02, r0x05
; ;ic:15: 	iTemp16 [k27 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1}}[r0x04 ] = @[iTemp15 [k26 lr14:15 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* }[r0x04 r0x05 ]]
	CLRF	WREG
	MOVFF	r0x04, FSR0L
	MOVFF	r0x05, FSR0H
	BTFSC	INDF0, 7
	INCF	WREG, F
	MOVWF	r0x04
; ;ic:16: 	if iTemp16 [k27 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1}}[r0x04 ] != 0 goto do_continue($13)
	MOVF	r0x04, W
	BTFSS	STATUS, 2
	BRA	_00117_DS_
; ;ic:17: 	iTemp17 [k28 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp5 [k10 lr11:45 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _malloc_bLen_1_1}[r0x03 ] > iTemp0 [k2 lr3:48 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _malloc_len_1_1}[r0x00 ]
;	.line	75; malloc.c	if(bLen <= len) {
	MOVF	r0x03, W
	SUBWF	r0x00, W
	BNC	_00114_DS_
; ;ic:18: 	if iTemp17 [k28 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} != 0 goto _iffalse_4($10)
; ;ic:19: 	send iTemp2 [k5 lr6:48 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00010000 near* }{ sir@ _malloc_pHeap_1_1}[r0x01 r0x02 ]{argreg = 1}
; ;ic:20: 	send iTemp0 [k2 lr3:48 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _malloc_len_1_1}[r0x00 ]{argreg = 2}
; ;ic:21: 	iTemp18 [k29 lr21:37 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00010000 near* }{ sir@ _malloc_temp_1_1}[r0x04 r0x05 ] = call __mergeHeapBlock [k31 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct __00010000 near*  function    ( struct __00010000 near* , unsigned-char) }
;	.line	85; malloc.c	temp = _mergeHeapBlock(pHeap, len);
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	CALL	__mergeHeapBlock
	MOVWF	r0x04
	MOVFF	PRODL, r0x05
	MOVLW	0x03
	ADDWF	FSR1L, F
; ;ic:22: 	if iTemp18 [k29 lr21:37 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00010000 near* }{ sir@ _malloc_temp_1_1}[r0x04 r0x05 ] == 0 goto do_continue($13)
;	.line	87; malloc.c	if(!temp)
	MOVF	r0x04, W
	IORWF	r0x05, W
	BTFSC	STATUS, 2
	BRA	_00117_DS_
; ;ic:23: 	iTemp22 [k37 lr23:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7} near* }[r0x06 r0x07 ] := iTemp2 [k5 lr6:48 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00010000 near* }{ sir@ _malloc_pHeap_1_1}[r0x01 r0x02 ]
;	.line	92; malloc.c	bLen = pHeap->bits.count;
	MOVFF	r0x01, r0x06
	MOVFF	r0x02, r0x07
; ;ic:24: 	iTemp23 [k38 lr24:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7}}[r0x06 ] = @[iTemp22 [k37 lr23:24 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7} near* }[r0x06 r0x07 ]]
	MOVFF	r0x06, FSR0L
	MOVFF	r0x07, FSR0H
	MOVF	INDF0, W
	ANDLW	0x7f
	MOVWF	r0x06
; ;ic:25: 	iTemp5 [k10 lr11:45 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _malloc_bLen_1_1}[r0x03 ] := iTemp23 [k38 lr24:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7}}[r0x06 ]
	MOVFF	r0x06, r0x03
; ;ic:26:  _iffalse_4($10) :
; ;ic:27: 	iTemp24 [k39 lr27:36 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _malloc_eLen_1_1}[r0x06 ] = iTemp0 [k2 lr3:48 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _malloc_len_1_1}[r0x00 ] + 0x1 {literal-unsigned-char}
_00114_DS_:
;	.line	98; malloc.c	eLen = (len+1);
	INCF	r0x00, W
	MOVWF	r0x06
; ;ic:28: 	iTemp28 [k45 lr28:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x07 ] = iTemp24 [k39 lr27:36 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _malloc_eLen_1_1}[r0x06 ] | 0x80 {literal-unsigned-char}
;	.line	99; malloc.c	pHeap->datum = 0x80 | eLen;
	MOVLW	0x80
	IORWF	r0x06, W
	MOVWF	r0x07
; ;ic:29: 	*(iTemp2 [k5 lr6:48 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00010000 near* }{ sir@ _malloc_pHeap_1_1}[r0x01 r0x02 ]) := iTemp28 [k45 lr28:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x07 ]
	MOVFF	r0x01, FSR0L
	MOVFF	r0x02, FSR0H
	MOVFF	r0x07, INDF0
; ;ic:30: 	iTemp29 [k46 lr30:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp5 [k10 lr11:45 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _malloc_bLen_1_1}[r0x03 ] > iTemp24 [k39 lr27:36 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _malloc_eLen_1_1}[r0x06 ]
;	.line	101; malloc.c	if(bLen > eLen) {
	MOVF	r0x03, W
	SUBWF	r0x06, W
	BC	_00116_DS_
; ;ic:31: 	if iTemp29 [k46 lr30:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_5($12)
; ;ic:32: 	iTemp30 [k47 lr32:34 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x07 r0x08 ] = (unsigned-int)iTemp2 [k5 lr6:48 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00010000 near* }{ sir@ _malloc_pHeap_1_1}[r0x01 r0x02 ]
;	.line	104; malloc.c	temp = (_malloc_rec _MALLOC_SPEC *)((unsigned int)pHeap + eLen);
	MOVF	r0x01, W
	MOVWF	r0x07
	MOVF	r0x02, W
	MOVWF	r0x08
; ;ic:33: 	iTemp31 [k48 lr33:34 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x09 r0x0a ] = (int)iTemp24 [k39 lr27:36 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _malloc_eLen_1_1}[r0x06 ]
	MOVFF	r0x06, r0x09
	CLRF	r0x0a
; ;ic:34: 	iTemp33 [k50 lr34:35 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x07 r0x08 ] = iTemp30 [k47 lr32:34 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x07 r0x08 ] + iTemp31 [k48 lr33:34 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x09 r0x0a ]
	MOVF	r0x09, W
	ADDWF	r0x07, F
	MOVF	r0x0a, W
	ADDWFC	r0x08, F
; ;ic:35: 	iTemp18 [k29 lr21:37 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00010000 near* }{ sir@ _malloc_temp_1_1}[r0x04 r0x05 ] = (struct __00010000 near* )iTemp33 [k50 lr34:35 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x07 r0x08 ]
	MOVF	r0x07, W
	MOVWF	r0x04
	MOVF	r0x08, W
	MOVWF	r0x05
; ;ic:36: 	iTemp37 [k55 lr36:37 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x06 ] = iTemp5 [k10 lr11:45 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _malloc_bLen_1_1}[r0x03 ] - iTemp24 [k39 lr27:36 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _malloc_eLen_1_1}[r0x06 ]
;	.line	105; malloc.c	temp->datum = (bLen - eLen);
	MOVF	r0x06, W
	SUBWF	r0x03, W
	MOVWF	r0x06
; ;ic:37: 	*(iTemp18 [k29 lr21:37 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00010000 near* }{ sir@ _malloc_temp_1_1}[r0x04 r0x05 ]) := iTemp37 [k55 lr36:37 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x06 ]
	MOVFF	r0x04, FSR0L
	MOVFF	r0x05, FSR0H
	MOVFF	r0x06, INDF0
; ;ic:38:  _iffalse_5($12) :
; ;ic:39: 	iTemp38 [k56 lr39:40 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x04 r0x05 ] = (unsigned-int)iTemp2 [k5 lr6:48 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00010000 near* }{ sir@ _malloc_pHeap_1_1}[r0x01 r0x02 ]
_00116_DS_:
;	.line	108; malloc.c	return ((unsigned char _MALLOC_SPEC *)((unsigned int)pHeap + 1));
	MOVF	r0x01, W
	MOVWF	r0x04
	MOVF	r0x02, W
	MOVWF	r0x05
; ;ic:40: 	iTemp39 [k57 lr40:41 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x04 r0x05 ] = iTemp38 [k56 lr39:40 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x04 r0x05 ] + 0x1 {literal-unsigned-int}
	INCF	r0x04, F
	BTFSC	STATUS, 0
	INCF	r0x05, F
; ;ic:41: 	iTemp40 [k58 lr41:42 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near* }[r0x04 r0x05 ] = (unsigned-char near* )iTemp39 [k57 lr40:41 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x04 r0x05 ]
; ;ic:42: 	ret iTemp40 [k58 lr41:42 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near* }[r0x04 r0x05 ]
	MOVFF	r0x05, PRODL
	MOVF	r0x04, W
	BRA	_00122_DS_
; ;ic:43:  do_continue($13) :
; ;ic:44: 	iTemp41 [k59 lr44:46 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x04 r0x05 ] = (unsigned-int)iTemp2 [k5 lr6:48 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00010000 near* }{ sir@ _malloc_pHeap_1_1}[r0x01 r0x02 ]
_00117_DS_:
;	.line	111; malloc.c	pHeap = (_malloc_rec _MALLOC_SPEC *)((unsigned int)pHeap + bLen);
	MOVF	r0x01, W
	MOVWF	r0x04
	MOVF	r0x02, W
	MOVWF	r0x05
; ;ic:45: 	iTemp42 [k60 lr45:46 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x03 r0x06 ] = (int)iTemp5 [k10 lr11:45 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _malloc_bLen_1_1}[r0x03 ]
	CLRF	r0x06
; ;ic:46: 	iTemp44 [k62 lr46:47 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x04 r0x05 ] = iTemp41 [k59 lr44:46 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x04 r0x05 ] + iTemp42 [k60 lr45:46 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x03 r0x06 ]
	MOVF	r0x03, W
	ADDWF	r0x04, F
	MOVF	r0x06, W
	ADDWFC	r0x05, F
; ;ic:47: 	iTemp2 [k5 lr6:48 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00010000 near* }{ sir@ _malloc_pHeap_1_1}[r0x01 r0x02 ] = (struct __00010000 near* )iTemp44 [k62 lr46:47 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x04 r0x05 ]
	MOVF	r0x04, W
	MOVWF	r0x01
	MOVF	r0x05, W
	MOVWF	r0x02
; ;ic:48: 	 goto _whilebody_0($15)
	BRA	_00119_DS_
; ;ic:49:  do_end($17) :
; ;ic:50: 	ret 0x0 {unsigned-char literal-near* }
_00121_DS_:
;	.line	115; malloc.c	return ((unsigned char _MALLOC_SPEC *)0);
	CLRF	PRODL
	CLRF	WREG
; ;ic:51:  _return($18) :
; ;ic:52: 	eproc _malloc [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near*  data-function    ( unsigned-char) }
_00122_DS_:
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
; code size:	  390 (0x0186) bytes ( 0.30%)
;           	  195 (0x00c3) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	   11 (0x000b) bytes


	end
