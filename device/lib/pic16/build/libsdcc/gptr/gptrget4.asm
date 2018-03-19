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
	global __gptrget4

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern _POSTINC0
	extern _INDF0
	extern _FSR0L
	extern _FSR0H
	extern _WREG
	extern _TBLPTRL
	extern _TBLPTRH
	extern _TBLPTRU
	extern _TABLAT
	extern _PRODL
	extern _PRODH

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($2) :
; ;ic:2: 	proc __gptrget4 [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( ) }
S_gptrget4___gptrget4	code
__gptrget4:
; ;ic:3: inline
	btfss _WREG, 7
	bra _lab_01_
	movff _PRODL, _FSR0H
	movf _POSTINC0, w
	movff _POSTINC0, _PRODL
	movff _POSTINC0, _PRODH
	movff _POSTINC0, _FSR0L
	return
_lab_01_:
	btfsc _WREG, 6
	bra _lab_02_
	; code pointer
	movff _FSR0L, _TBLPTRL
	movff _PRODL, _TBLPTRH
	movwf _TBLPTRU
	TBLRD*+
	movf _TABLAT, w
	TBLRD*+
	movff _TABLAT, _PRODL
	TBLRD*+
	movff _TABLAT, _PRODH
	TBLRD*+
	movff _TABLAT, _FSR0L
	return
_lab_02_:
	return
	
; ;ic:4:  _return($1) :
; ;ic:5: 	eproc __gptrget4 [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( ) }


; Statistics:
; code size:	   54 (0x0036) bytes ( 0.04%)
;           	   27 (0x001b) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    0 (0x0000) bytes


	end
