;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:32 2018
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f452

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global ___stream_gpsim_putchar

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern _WREG

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($2) :
; ;ic:2: 	proc ___stream_gpsim_putchar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( unsigned-char) }
S_strmgpsim____stream_gpsim_putchar	code
___stream_gpsim_putchar:
; ;ic:3: inline
	MOVFF _WREG, 0xf7f
	RETURN
	
; ;ic:4:  _return($1) :
; ;ic:5: 	eproc ___stream_gpsim_putchar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( unsigned-char) }


; Statistics:
; code size:	    6 (0x0006) bytes ( 0.00%)
;           	    3 (0x0003) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    0 (0x0000) bytes


	end
