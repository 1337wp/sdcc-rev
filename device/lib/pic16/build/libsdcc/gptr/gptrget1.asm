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
	global __gptrget1

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern _POSTINC0
	extern _POSTINC1
	extern _PREINC1
	extern _INDF0
	extern _FSR0L
	extern _FSR0H
	extern _WREG
	extern _TBLPTRL
	extern _TBLPTRH
	extern _TBLPTRU
	extern _TABLAT
	extern _PRODL

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($2) :
; ;ic:2: 	proc __gptrget1 [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( ) }
S_gptrget1___gptrget1	code
__gptrget1:
; ;ic:3: inline
	btfss _WREG, 7
	bra _lab_01_
	; data pointer
	; data are already in FSR0
	movff _PRODL, _FSR0H
	movf _POSTINC0, w
	return
_lab_01_:
	; code or eeprom
	btfsc _WREG, 6
	bra _lab_02_
	; code pointer
	movff _FSR0L, _TBLPTRL
	movff _PRODL, _TBLPTRH
	movwf _TBLPTRU
	tblrd*+
	; result in WREG
	movf _TABLAT, w
	return
_lab_02_:
	; EEPROM pointer
	; unimplemented yet
_end_:
	return
	
; ;ic:4:  _return($1) :
; ;ic:5: 	eproc __gptrget1 [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( ) }


; Statistics:
; code size:	   50 (0x0032) bytes ( 0.04%)
;           	   25 (0x0019) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    0 (0x0000) bytes


	end
