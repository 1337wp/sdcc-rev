

;
; stack.S - automatically allocate stack for PIC16 targets
;           with out the need for using the #pragma stack
;           directive
;
; written by Vangelis Rokas, 2006 <vrokas AT users.sourceforge.net>
;
;
; $Id: stack.S 4776 2007-04-29 13:15:51Z borutr $
;

; object will only be used if and only if #pragma stack is not
; defined in one of the projet's sources

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global _stack
	global _stack_end


; allocate space for stack
stack_section	udata	0x0200
_stack		res	0xff
_stack_end	res	1

	end
