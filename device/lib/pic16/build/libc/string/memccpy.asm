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
	global _memccpy

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern __gptrget1
	extern __gptrput1
;--------------------------------------------------------
;	Equates to used internal registers
;--------------------------------------------------------
STATUS	equ	0xfd8
WREG	equ	0xfe8
FSR0L	equ	0xfe9
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
r0x07	res	1
r0x08	res	1
r0x09	res	1
r0x0a	res	1
r0x0b	res	1
r0x0c	res	1
r0x0d	res	1

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($7) :
; ;ic:2: 	proc _memccpy [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void generic*  function    ( void generic* , void generic* , char, unsigned-int) }
S_memccpy__memccpy	code
_memccpy:
;	.line	29; memccpy.c	void *memccpy (void *dst, void *src, char c, size_t acount) 
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
	MOVFF	r0x0b, POSTDEC1
	MOVFF	r0x0c, POSTDEC1
	MOVFF	r0x0d, POSTDEC1
; ;ic:3: iTemp0 [k2 lr3:10 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* }{ sir@ _memccpy_dst_1_1}[r0x00 r0x01 r0x02 ] = recv _memccpy [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void generic*  function    ( void generic* , void generic* , char, unsigned-int) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
; ;ic:4: iTemp1 [k4 lr4:9 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* }{ sir@ _memccpy_src_1_1}[r0x03 r0x04 r0x05 ] = recv _memccpy [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void generic*  function    ( void generic* , void generic* , char, unsigned-int) }
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
; ;ic:5: iTemp2 [k6 lr5:27 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _memccpy_c_1_1}[r0x06 ] = recv _memccpy [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void generic*  function    ( void generic* , void generic* , char, unsigned-int) }
	MOVLW	0x08
	MOVFF	PLUSW2, r0x06
; ;ic:6: iTemp3 [k8 lr6:11 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _memccpy_acount_1_1}[r0x07 r0x08 ] = recv _memccpy [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void generic*  function    ( void generic* , void generic* , char, unsigned-int) }
	MOVLW	0x09
	MOVFF	PLUSW2, r0x07
	MOVLW	0x0a
	MOVFF	PLUSW2, r0x08
; ;ic:7: 	iTemp7 [k15 lr7:27 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }[r0x09 r0x0a r0x0b ] := iTemp1 [k4 lr4:9 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* }{ sir@ _memccpy_src_1_1}[r0x03 r0x04 r0x05 ]
;	.line	33; memccpy.c	char *s = src;
	MOVFF	r0x03, r0x09
	MOVFF	r0x04, r0x0a
	MOVFF	r0x05, r0x0b
; ;ic:9: 	iTemp19 [k28 lr9:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _memccpy_s_1_1}[r0x03 r0x04 r0x05 ] := iTemp1 [k4 lr4:9 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* }{ sir@ _memccpy_src_1_1}[r0x03 r0x04 r0x05 ]
; ;ic:10: 	iTemp17 [k26 lr10:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _memccpy_d_1_1}[r0x00 r0x01 r0x02 ] := iTemp0 [k2 lr3:10 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* }{ sir@ _memccpy_dst_1_1}[r0x00 r0x01 r0x02 ]
; ;ic:11: 	iTemp10 [k19 lr11:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x07 r0x08 ] := iTemp3 [k8 lr6:11 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _memccpy_acount_1_1}[r0x07 r0x08 ]
; ;ic:12:  _whilecontinue_0($3) :
; ;ic:13: 	iTemp9 [k18 lr13:15 so:0]{ ia0 a2p0 re0 rm0 nos1 ru0 dp0}{unsigned-int}[r0x0c r0x0d ] := iTemp10 [k19 lr11:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x07 r0x08 ]
_00107_DS_:
;	.line	38; memccpy.c	while (acount--) {
	MOVFF	r0x07, r0x0c
	MOVFF	r0x08, r0x0d
; ;ic:14: 	iTemp10 [k19 lr11:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x07 r0x08 ] = iTemp10 [k19 lr11:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int}[r0x07 r0x08 ] - 0x1 {literal-unsigned-char}
	MOVLW	0xff
	ADDWF	r0x07, F
	BTFSS	STATUS, 0
	DECF	r0x08, F
; ;ic:15: 	if iTemp9 [k18 lr13:15 so:0]{ ia0 a2p0 re0 rm0 nos1 ru0 dp0}{unsigned-int}[r0x0c r0x0d ] == 0 goto _whilebreak_0($5)
	MOVF	r0x0c, W
	IORWF	r0x0d, W
	BZ	_00109_DS_
; ;ic:16: 	iTemp12 [k21 lr16:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0c ] = @[iTemp19 [k28 lr9:27 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _memccpy_s_1_1}[r0x03 r0x04 r0x05 ]]
;	.line	39; memccpy.c	if( *s == c)
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrget1
; #	MOVWF	r0x0c
; #;;ic:17: 	iTemp13 [k22 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} = iTemp12 [k21 lr16:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0c ] == iTemp2 [k6 lr5:27 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char}{ sir@ _memccpy_c_1_1}[r0x06 ]
; #	MOVF	r0x0c, W
	MOVWF	r0x0c
	XORWF	r0x06, W
	BNZ	_00106_DS_
; ;ic:18: 	if iTemp13 [k22 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char} == 0 goto _iffalse_0($2)
; ;ic:19: 	iTemp7 [k15 lr7:27 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }[r0x09 r0x0a r0x0b ] = iTemp7 [k15 lr7:27 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }[r0x09 r0x0a r0x0b ] + 0x1 {literal-unsigned-char}
;	.line	40; memccpy.c	return (++s);
	INCF	r0x09, F
	BTFSC	STATUS, 0
	INCF	r0x0a, F
	BTFSC	STATUS, 0
	INCF	r0x0b, F
; ;ic:20: 	ret iTemp7 [k15 lr7:27 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }[r0x09 r0x0a r0x0b ]
	MOVFF	r0x0b, PRODH
	MOVFF	r0x0a, PRODL
	MOVF	r0x09, W
	BRA	_00110_DS_
; ;ic:21:  _iffalse_0($2) :
; ;ic:22: 	iTemp20 [k29 lr22:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0c ] := iTemp12 [k21 lr16:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0c ]
; ;ic:23: 	iTemp19 [k28 lr9:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _memccpy_s_1_1}[r0x03 r0x04 r0x05 ] = iTemp19 [k28 lr9:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _memccpy_s_1_1}[r0x03 r0x04 r0x05 ] + 0x1 {literal-unsigned-char}
_00106_DS_:
;	.line	42; memccpy.c	*d++ = *s++;
	INCF	r0x03, F
	BTFSC	STATUS, 0
	INCF	r0x04, F
	BTFSC	STATUS, 0
	INCF	r0x05, F
; ;ic:24: 	iTemp7 [k15 lr7:27 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* }[r0x09 r0x0a r0x0b ] := iTemp19 [k28 lr9:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _memccpy_s_1_1}[r0x03 r0x04 r0x05 ]
	MOVFF	r0x03, r0x09
	MOVFF	r0x04, r0x0a
	MOVFF	r0x05, r0x0b
; ;ic:25: 	*(iTemp17 [k26 lr10:27 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _memccpy_d_1_1}[r0x00 r0x01 r0x02 ]) := iTemp20 [k29 lr22:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x0c ]
	MOVFF	r0x0c, POSTDEC1
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrput1
; ;ic:26: 	iTemp17 [k26 lr10:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _memccpy_d_1_1}[r0x00 r0x01 r0x02 ] = iTemp17 [k26 lr10:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* }{ sir@ _memccpy_d_1_1}[r0x00 r0x01 r0x02 ] + 0x1 {literal-unsigned-char}
	INCF	r0x00, F
	BTFSC	STATUS, 0
	INCF	r0x01, F
	BTFSC	STATUS, 0
	INCF	r0x02, F
; ;ic:27: 	 goto _whilecontinue_0($3)
	BRA	_00107_DS_
; ;ic:28:  _whilebreak_0($5) :
; ;ic:29: 	ret 0x0 {void literal-generic* }
_00109_DS_:
;	.line	45; memccpy.c	return((void *)0x00);
	CLRF	PRODH
	CLRF	PRODL
	CLRF	WREG
; ;ic:30:  _return($6) :
; ;ic:31: 	eproc _memccpy [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void generic*  function    ( void generic* , void generic* , char, unsigned-int) }
_00110_DS_:
	MOVFF	PREINC1, r0x0d
	MOVFF	PREINC1, r0x0c
	MOVFF	PREINC1, r0x0b
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
; code size:	  314 (0x013a) bytes ( 0.24%)
;           	  157 (0x009d) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	   14 (0x000e) bytes


	end
