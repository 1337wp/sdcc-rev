; -------------------------------------------------------------------------
;  _gptrget2.S - read two bytes pointed to by a generic pointer
;
; 	Written By	Raphael Neider <rneider AT web.de> (2005)
;
;  This library is free software; you can redistribute it and/or
;  modify it under the terms of the GNU Library General Public
;  License as published by the Free Software Foundation; either
;  version 2 of the License, or (at your option) any later version.
;
;  This library is distributed in the hope that it will be useful,
;  but WITHOUT ANY WARRANTY; without even the implied warranty of
;  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;  Library General Public License for more details.
;
;  You should have received a copy of the GNU Library General Public
;  License along with this library; if not, write to the 
;  Free Software Foundation, Inc., 59 Temple Place - Suite 330, 
;  Boston, MA  02111-1307  USA.
;
;  In other words, you are welcome to use, share and improve this program.
;  You are forbidden to forbid anyone else to use, share and improve
;  what you give them.   Help stamp out software-hoarding!
;
;  $Id: _gptrget2.S 4148 2006-05-01 20:47:12Z tecodev $
;  ------------------------------------------------------------------------

; calling conventions:
;   3 byte generic pointer is passed in via (WREG STK00 STK01).
;   The result is returned in (WREG (STK00 (STK01 (STK02)))).
;
;   unsigned char _gptrget  (void *gptr);
;   unsigned char _gptrget1 (void *gptr);
;   unsigned int  _gptrget2 (void *gptr);
;   void *        _gptrget3 (void *gptr);
;   unsigned long _gptrget4 (void *gptr);
;
;   void _gptrput  (void *ptr, unsigned char val);
;   void _gptrput1 (void *ptr, unsigned char val);
;   void _gptrput2 (void *ptr, unsigned int  val);
;   void _gptrput3 (void *ptr, unsigned int  val);
;   void _gptrput4 (void *ptr, unsigned long val);

include macros.inc
include p16f_common.inc

	global	__gptrget2
	extern	__codeptrget1
	
	CODE

__gptrget2:
	select_routine __dataptrget2, __codeptrget2
	; invalid tag -- return 0x0000
	clrf	STK00
	retlw	0x00

__dataptrget2:
	setup_fsr
	movf	_INDF, W
	movwf	STK00		; low byte in STK00
	inc_fsr
	movf	_INDF, W	; high byte in WREG
	return

__codeptrget2:
	pagesel	__codeptrget1	; might reside in different page
	call	__codeptrget1
	movwf	STK02		; temporarily store LSB
	incfsz	STK01,F	; increment low address byte
	decf	STK00,F	; undo increment of high address byte if low byte did not overflow
	incf	STK00,F	; increment high address byte
	pagesel	__codeptrget1	; might reside in different page
	call	__codeptrget1
	movwf	STK03		; temporarily store MSB
	movf	STK02, W
	movwf	STK00		; LSB in STK00
	movf	STK03, W	; MSB in WREG
	return
	
	END
