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
	global ___stream_usart_putchar

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern _WREG
	extern _TXREG
	extern _TXSTA

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($2) :
; ;ic:2: 	proc ___stream_usart_putchar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( unsigned-char) }
S_strmusart____stream_usart_putchar	code
___stream_usart_putchar:
; ;ic:3: inline
@1:
	BTFSS _TXSTA, 1
	BRA @1
	MOVWF _TXREG
	RETURN
	
; ;ic:4:  _return($1) :
; ;ic:5: 	eproc ___stream_usart_putchar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( unsigned-char) }


; Statistics:
; code size:	   12 (0x000c) bytes ( 0.01%)
;           	    6 (0x0006) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    0 (0x0000) bytes


	end
