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
	global __entry
	global __startup

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern _stack
	extern _stack_end
	extern _TBLPTRU
	extern _main

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; ; Starting pCode block
; ;ic:1:  _entry($2) :
; ;ic:2: 	proc __entry [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( ) }
S_crt0___entry	code	0X000000
__entry:
; ;ic:3: inline
	goto __startup 
; ;ic:4:  _return($1) :
; ;ic:5: 	eproc __entry [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( ) }
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($3) :
; ;ic:2: 	proc __startup [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( ) }
S_crt0___startup	code
__startup:
; ;ic:3: inline
	lfsr 1, _stack_end
	lfsr 2, _stack_end
	clrf _TBLPTRU, 0
	bsf 0xa6, 7, 0
	bcf 0xa6, 6, 0
	
; ;ic:4: 	iTemp0 [k3 lr4:4 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void} = call _main [k2 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( ) }
;	.line	70; crt0.c	main();
	CALL	_main
; ;ic:6:  loop($1) :
; ;ic:7: 	 goto loop($1)
_00109_DS_:
;	.line	74; crt0.c	goto loop;
	BRA	_00109_DS_
; ;ic:8:  _return($2) :
; ;ic:9: 	eproc __startup [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( ) }


; Statistics:
; code size:	   20 (0x0014) bytes ( 0.02%)
;           	   10 (0x000a) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    0 (0x0000) bytes


	end
