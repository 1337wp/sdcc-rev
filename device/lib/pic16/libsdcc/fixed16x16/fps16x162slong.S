
;
; fps16x162slong.S - convert fixed16x16 to signed char
;
; written by Vangelis Rokas, 2004 <vrokas AT otenet.gr>
;
;
; $Id: fps16x162slong.S 3838 2005-08-10 10:53:34Z tecodev $
;

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global ___fps16x162slong

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
PLUSW1	equ	0xfe3
PRODL	equ	0xff3
PRODH	equ	0xff4


; Internal registers
.registers	udata_ovr	0x0000
r0x00	res	1
r0x01	res	1
r0x02	res	1
r0x03	res	1


S_fps16x162slong____fps16x162slong	code
___fps16x162slong:

	movlw	0x04
	movff	PLUSW1, PRODL

	movlw	0x03
	movf	PLUSW1, w

	clrf	PRODH
	clrf	FSR0L

	btfss	PRODL, 7
	bra	@1

	bcf	PRODL, 7
	comf	WREG, f
	comf	PRODL, f
	comf	PRODH, f
	comf	FSR0L, f
	
	incfsz	WREG, f
	bra	@1
	incfsz	PRODL, f
	bra	@1
	incfsz	PRODH, f
	bra	@1
	incf	FSR0L, f

@1:
	return

	end
