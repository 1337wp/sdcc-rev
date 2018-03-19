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
	global _putchar

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern _stdin
	extern _stdout
;--------------------------------------------------------
;	Equates to used internal registers
;--------------------------------------------------------
FSR1L	equ	0xfe1
FSR2L	equ	0xfd9
POSTDEC1	equ	0xfe5
PREINC1	equ	0xfe4

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($2) :
; ;ic:2: 	proc _putchar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( unsigned-char) }
S_putchar__putchar	code
_putchar:
;	.line	32; putchar.c	PUTCHAR(c)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
; ;ic:3: inline
	return
	
; ;ic:4:  _return($1) :
; ;ic:5: 	eproc _putchar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( unsigned-char) }
	MOVFF	PREINC1, FSR2L
	RETURN	



; Statistics:
; code size:	   18 (0x0012) bytes ( 0.01%)
;           	    9 (0x0009) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    0 (0x0000) bytes


	end
