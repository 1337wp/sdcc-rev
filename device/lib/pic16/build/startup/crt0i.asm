;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:00 2018
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f452

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global ___uflags
	global __entry
	global __startup
	global __do_cinit

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern _stack
	extern _stack_end
	extern _TBLPTRU
	extern _TBLPTRH
	extern _TBLPTRL
	extern _FSR0L
	extern _FSR0H
	extern _TABLAT
	extern _POSTINC0
	extern _main
	extern _cinit


	idata
___uflags	db	0x00

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; ; Starting pCode block
; ;ic:1:  _entry($2) :
; ;ic:2: 	proc __entry [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( ) }
S_crt0i___entry	code	0X000000
__entry:
; ;ic:3: inline
	goto __startup 
; ;ic:4:  _return($1) :
; ;ic:5: 	eproc __entry [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( ) }
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($2) :
; ;ic:2: 	proc __do_cinit [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( ) }
S_crt0i___do_cinit	code
__do_cinit:
; ;ic:3: inline
	; TBLPTR = &cinit
	movlw low(_cinit)
	movwf _TBLPTRL
	movlw high(_cinit)
	movwf _TBLPTRH
	movlw upper(_cinit)
	movwf _TBLPTRU
	; 0x05 = cinit.num_init
	; movlb 0x07
	tblrd*+
	movf _TABLAT, w
	movwf 0x05
	tblrd*+
	movf _TABLAT, w
	movwf 0x05 +1
	; while (0x05) {
test:
	bnz cont1 ;;done1
	tstfsz 0x05, 1
	bra cont1
done1:
	goto done
cont1:
	; Count down so we only have to look up the data in _cinit once.
	; At this point we know that TBLPTR points to the top of the current
	; entry in _cinit, so we can just start reading the from, to, and
	; size values.
	; read the source address low
	tblrd*+
	movf _TABLAT, w
	movwf 0x00
	; source address high
	tblrd*+
	movf _TABLAT, w
	movwf 0x00 + 1
	; source address upper
	tblrd*+
	movf _TABLAT, w
	movwf 0x00 + 2
	; skip a byte since it is stored as a 32bit int
	tblrd*+
	; read the destination address directly into FSR0
	; destination address low
	tblrd*+
	movf _TABLAT, w
	movwf _FSR0L
	; destination address high
	tblrd*+
	movf _TABLAT, w
	movwf _FSR0H
	; skip two bytes since it is stored as a 32bit int
	tblrd*+
	tblrd*+
	; read the size of data to transfer destination address
	tblrd*+
	movf _TABLAT, w
	movwf 0x03
	tblrd*+
	movf _TABLAT, w
	movwf 0x03 +1
	; skip two bytes since it is stored as a 32bit int
	tblrd*+
	tblrd*+
	; 0x00 = 0x07 ->from;
	; FSR0 = 0x07 ->to;
	; 0x03 = (unsigned short) 0x07 ->size;
	; the table pointer now points to the next entry. Save it
	; off since we will be using the table pointer to do the copying
	; for the entry
	; 0x07 = TBLPTR
	movff _TBLPTRL, 0x07
	movff _TBLPTRH, 0x07 + 1
	movff _TBLPTRU, 0x07 + 2
	; now assign the source address to the table pointer
	; TBLPTR = 0x00
	movff 0x00, _TBLPTRL
	movff 0x00 + 1, _TBLPTRH
	movff 0x00 + 2, _TBLPTRU
	; do the copy loop
	; determine if we have any more bytes to copy
	; movlb 0x03
	movf 0x03, w
copy_loop:
	bnz copy_one_byte ; copy_one_byte
	movf 0x03 + 1, w
	bz done_copying
copy_one_byte:
	tblrd*+
	movf _TABLAT, w
	movwf _POSTINC0
	movff _TABLAT, 0xf7e
	; decrement byte counter
	decf 0x03, f
	bc copy_loop ; copy_loop
	decf 0x03 + 1, f
	bra copy_one_byte
done_copying:
	; restore the table pointer for the next entry
	; TBLPTR = 0x07
	movff 0x07, _TBLPTRL
	movff 0x07 + 1, _TBLPTRH
	movff 0x07 + 2, _TBLPTRU
	decf 0x05, f
	bc do_next
	decf 0x05 + 1, f
do_next:
	; next entry...
	; _do_cinit_curr_entry--;
	goto test;
	; emit done label
done:
	return
	
; ;ic:4:  _return($1) :
; ;ic:5: 	eproc __do_cinit [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( ) }
; ; Starting pCode block
; ;ic:1:  _entry($3) :
; ;ic:2: 	proc __startup [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( ) }
S_crt0i___startup	code
__startup:
; ;ic:3: inline
	lfsr 1, _stack_end
	lfsr 2, _stack_end
	clrf _TBLPTRU, 0
	bsf 0xa6, 7, 0
	bcf 0xa6, 6, 0
	
; ;ic:4: 	iTemp0 [k3 lr4:4 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void} = call __do_cinit [k2 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( ) }
;	.line	84; crt0i.c	_do_cinit();
	CALL	__do_cinit
; ;ic:5: 	iTemp1 [k5 lr5:5 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void} = call _main [k4 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( ) }
;	.line	87; crt0i.c	main();
	CALL	_main
; ;ic:7:  loop($1) :
; ;ic:8: 	 goto loop($1)
_00109_DS_:
;	.line	91; crt0i.c	goto loop;
	BRA	_00109_DS_
; ;ic:9:  _return($2) :
; ;ic:10: 	eproc __startup [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( ) }


; Statistics:
; code size:	  250 (0x00fa) bytes ( 0.19%)
;           	  125 (0x007d) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    0 (0x0000) bytes


	end