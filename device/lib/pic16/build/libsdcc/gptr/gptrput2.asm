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
	global __gptrput2

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern _POSTINC0
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
	extern _PRODH

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($2) :
; ;ic:2: 	proc __gptrput2 [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( ) }
S_gptrput2___gptrput2	code
__gptrput2:
; ;ic:3: inline
	btfss _WREG, 7
	bra _lab_01_
	movff _PRODL, _FSR0H
	movff _PREINC1, _POSTINC0
	movff _PRODH, _POSTINC0
	return
_lab_01_:
	btfss _WREG, 6
	return
_lab_02_:
	return
	
; ;ic:4:  _return($1) :
; ;ic:5: 	eproc __gptrput2 [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( ) }


; Statistics:
; code size:	   24 (0x0018) bytes ( 0.02%)
;           	   12 (0x000c) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    0 (0x0000) bytes


	end
