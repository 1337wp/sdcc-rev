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
	global _calloc

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern _heap
	extern _malloc
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

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($9) :
; ;ic:2: 	proc _calloc [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near*  data-function    ( unsigned-char) }
S_calloc__calloc	code
_calloc:
;	.line	31; calloc.c	unsigned char _MALLOC_SPEC *calloc(unsigned char len)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
; ;ic:3: iTemp0 [k2 lr3:13 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _calloc_len_1_1}[r0x00 ] = recv _calloc [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near*  data-function    ( unsigned-char) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
; ;ic:4: 	iTemp1 [k4 lr4:5 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp0 [k2 lr3:13 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _calloc_len_1_1}[r0x00 ] < 0x7f {literal-unsigned-char}
;	.line	35; calloc.c	if (len >= MAX_BLOCK_SIZE) return ((unsigned char _MALLOC_SPEC *)0);
	MOVLW	0x7f
	SUBWF	r0x00, W
	BNC	_00106_DS_
; ;ic:5: 	if iTemp1 [k4 lr4:5 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} != 0 goto _iffalse_0($2)
; ;ic:6: 	ret 0x0 {unsigned-char literal-near* }
	CLRF	PRODL
	CLRF	WREG
	BRA	_00112_DS_
; ;ic:7:  _iffalse_0($2) :
; ;ic:8: 	send iTemp0 [k2 lr3:13 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _calloc_len_1_1}[r0x00 ]{argreg = 1}
; ;ic:9: 	iTemp3 [k6 lr9:14 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char near* }{ sir@ _calloc_ch_1_1}[r0x01 r0x02 ] = call _malloc [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near*  function    ( unsigned-char) }
_00106_DS_:
;	.line	36; calloc.c	ch = malloc( len );
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_malloc
	MOVWF	r0x01
	MOVFF	PRODL, r0x02
	INCF	FSR1L, F
; ;ic:10: 	iTemp5 [k10 lr10:23 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char near* }{ sir@ _calloc_result_1_1}[r0x03 r0x04 ] := iTemp3 [k6 lr9:14 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char near* }{ sir@ _calloc_ch_1_1}[r0x01 r0x02 ]
;	.line	37; calloc.c	result = ch;
	MOVFF	r0x01, r0x03
	MOVFF	r0x02, r0x04
; ;ic:11: 	if iTemp3 [k6 lr9:14 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char near* }{ sir@ _calloc_ch_1_1}[r0x01 r0x02 ] == 0 goto _iffalse_1($7)
;	.line	39; calloc.c	if (result != 0) {
	IORWF	r0x02, W
	BZ	_00111_DS_
; ;ic:13: 	iTemp6 [k12 lr13:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x00 ] := iTemp0 [k2 lr3:13 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _calloc_len_1_1}[r0x00 ]
; ;ic:14: 	iTemp9 [k15 lr14:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near* }[r0x01 r0x02 ] := iTemp3 [k6 lr9:14 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char near* }{ sir@ _calloc_ch_1_1}[r0x01 r0x02 ]
; ;ic:15:  _whilecontinue_0($3) :
; ;ic:16: 	if iTemp6 [k12 lr13:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x00 ] == 0 goto _iffalse_1($7)
_00107_DS_:
;	.line	40; calloc.c	while (len) {
	MOVF	r0x00, W
	BZ	_00111_DS_
; ;ic:17: 	iTemp6 [k12 lr13:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x00 ] = iTemp6 [k12 lr13:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x00 ] - 0x1 {literal-unsigned-char}
;	.line	41; calloc.c	--len;
	DECF	r0x00, F
; ;ic:18: 	*(iTemp9 [k15 lr14:20 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near* }[r0x01 r0x02 ]) := 0x0 {literal-unsigned-char}
;	.line	42; calloc.c	*ch = 0;
	MOVFF	r0x01, FSR0L
	MOVFF	r0x02, FSR0H
	CLRF	INDF0
; ;ic:19: 	iTemp9 [k15 lr14:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near* }[r0x01 r0x02 ] = iTemp9 [k15 lr14:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near* }[r0x01 r0x02 ] + 0x1 {literal-unsigned-char}
;	.line	43; calloc.c	ch++;
	INCF	r0x01, F
	BTFSC	STATUS, 0
	INCF	r0x02, F
; ;ic:20: 	 goto _whilecontinue_0($3)
	BRA	_00107_DS_
; ;ic:22:  _iffalse_1($7) :
; ;ic:23: 	ret iTemp5 [k10 lr10:23 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char near* }{ sir@ _calloc_result_1_1}[r0x03 r0x04 ]
_00111_DS_:
;	.line	47; calloc.c	return (result);
	MOVFF	r0x04, PRODL
	MOVF	r0x03, W
; ;ic:24:  _return($8) :
; ;ic:25: 	eproc _calloc [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near*  data-function    ( unsigned-char) }
_00112_DS_:
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	



; Statistics:
; code size:	  130 (0x0082) bytes ( 0.10%)
;           	   65 (0x0041) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    5 (0x0005) bytes


	end
