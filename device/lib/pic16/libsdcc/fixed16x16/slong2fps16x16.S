
;
; slong2fps16x16.S - convert signed long to fixed16x16
;
; written by Vangelis Rokas, 2004 <vrokas AT otenet.gr>
;
;
; $Id: slong2fps16x16.S 3838 2005-08-10 10:53:34Z tecodev $
;

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global ___slong2fps16x16

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
PLUSW1	equ	0xfe3
PRODL	equ	0xff3
PRODH	equ	0xff4


S_slong2fps16x16____slong2fps16x16	code
___slong2fps16x16:

	movlw	0x02
	movff	PLUSW1, FSR0L
	movlw	0x01
	movff	PLUSW1, PRODH

	btfss	FSR0L, 7
	bra	@1

	comf	PRODH, f
	comf	FSR0L, f

	infsnz	PRODH, f
	incf	FSR0L, f

	bsf	FSR0L, 7

@1:
	return

	end
