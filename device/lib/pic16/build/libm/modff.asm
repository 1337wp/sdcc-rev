;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:59 2018
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f452

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global _modff

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern __gptrput4
	extern ___fs2sint
	extern ___sint2fs
	extern ___fssub
;--------------------------------------------------------
;	Equates to used internal registers
;--------------------------------------------------------
WREG	equ	0xfe8
TBLPTRL	equ	0xff6
TBLPTRH	equ	0xff7
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

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($2) :
; ;ic:2: 	proc _modff [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float generic* ) }
S_modff__modff	code
_modff:
;	.line	27; modff.c	float modff(float x, float * y)
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
; ;ic:3: iTemp0 [k2 lr3:11 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _modff_x_1_1}[r0x00 r0x01 r0x02 r0x03 ] = recv _modff [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float generic* ) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
; ;ic:4: iTemp1 [k4 lr4:9 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float generic* }{ sir@ _modff_y_1_1}[r0x04 r0x05 r0x06 ] = recv _modff [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float generic* ) }
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
	MOVLW	0x08
	MOVFF	PLUSW2, r0x06
; ;ic:5: 	send iTemp0 [k2 lr3:11 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _modff_x_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 1}
; ;ic:6: 	iTemp3 [k7 lr6:7 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x07 r0x08 ] = call ___fs2sint [k12 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function    ( float) }
;	.line	29; modff.c	*y=((int)x);
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	___fs2sint
	MOVWF	r0x07
	MOVFF	PRODL, r0x08
	MOVLW	0x04
	ADDWF	FSR1L, F
; ;ic:7: 	send iTemp3 [k7 lr6:7 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int}[r0x07 r0x08 ]{argreg = 1}
; ;ic:8: 	iTemp4 [k8 lr8:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x07 r0x08 r0x09 r0x0a ] = call ___sint2fs [k13 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( int) }
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	CALL	___sint2fs
	MOVWF	r0x07
	MOVFF	PRODL, r0x08
	MOVFF	PRODH, r0x09
	MOVFF	FSR0L, r0x0a
	MOVLW	0x02
	ADDWF	FSR1L, F
; ;ic:9: 	*(iTemp1 [k4 lr4:9 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{float generic* }{ sir@ _modff_y_1_1}[r0x04 r0x05 r0x06 ]) := iTemp4 [k8 lr8:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x07 r0x08 r0x09 r0x0a ]
	MOVFF	r0x07, POSTDEC1
	MOVFF	r0x08, PRODH
	MOVFF	r0x09, TBLPTRL
	MOVFF	r0x0a, TBLPTRH
	MOVFF	r0x04, FSR0L
	MOVFF	r0x05, PRODL
	MOVF	r0x06, W
	CALL	__gptrput4
; ;ic:10: 	send iTemp0 [k2 lr3:11 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float}{ sir@ _modff_x_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 1}
; ;ic:11: 	send iTemp4 [k8 lr8:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x07 r0x08 r0x09 r0x0a ]{argreg = 2}
; ;ic:12: 	iTemp7 [k11 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x00 r0x01 r0x02 r0x03 ] = call ___fssub [k14 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float) }
;	.line	30; modff.c	return (x-*y);
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	___fssub
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:13: 	ret iTemp7 [k11 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float}[r0x00 r0x01 r0x02 r0x03 ]
	MOVFF	r0x03, FSR0L
	MOVFF	r0x02, PRODH
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
; ;ic:14:  _return($1) :
; ;ic:15: 	eproc _modff [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function    ( float, float generic* ) }
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
; code size:	  302 (0x012e) bytes ( 0.23%)
;           	  151 (0x0097) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	   11 (0x000b) bytes


	end
