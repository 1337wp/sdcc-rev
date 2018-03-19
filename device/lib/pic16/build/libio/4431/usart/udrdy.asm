;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:48 2018
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f4431

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global _usart_drdy

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern _DFLTCONbits
	extern _CAP3CONbits
	extern _CAP2CONbits
	extern _CAP1CONbits
	extern _OVDCONSbits
	extern _OVDCONDbits
	extern _FLTCONFIGbits
	extern _DTCONbits
	extern _PWMCON1bits
	extern _PWMCON0bits
	extern _PTCON1bits
	extern _PTCON0bits
	extern _PORTAbits
	extern _PORTBbits
	extern _PORTCbits
	extern _PORTDbits
	extern _PORTEbits
	extern _LATAbits
	extern _LATBbits
	extern _LATCbits
	extern _LATDbits
	extern _LATEbits
	extern _DDRAbits
	extern _TRISAbits
	extern _DDRBbits
	extern _TRISBbits
	extern _DDRCbits
	extern _TRISCbits
	extern _DDRDbits
	extern _TRISDbits
	extern _DDREbits
	extern _TRISEbits
	extern _ADCHSbits
	extern _ADCON3bits
	extern _OSCTUNEbits
	extern _PIE1bits
	extern _PIR1bits
	extern _IPR1bits
	extern _PIE2bits
	extern _PIR2bits
	extern _IPR2bits
	extern _PIE3bits
	extern _PIR3bits
	extern _IPR3bits
	extern _EECON1bits
	extern _BAUDCONbits
	extern _BAUDCTLbits
	extern _RCSTAbits
	extern _TXSTAbits
	extern _QEICONbits
	extern _T5CONbits
	extern _ANSEL0bits
	extern _ANSEL1bits
	extern _CCP2CONbits
	extern _CCP1CONbits
	extern _ADCON2bits
	extern _ADCON1bits
	extern _ADCON0bits
	extern _SSPCONbits
	extern _SSPSTATbits
	extern _T2CONbits
	extern _T1CONbits
	extern _RCONbits
	extern _WDTCONbits
	extern _LVDCONbits
	extern _OSCCONbits
	extern _T0CONbits
	extern _STATUSbits
	extern _INTCON3bits
	extern _INTCON2bits
	extern _INTCONbits
	extern _STKPTRbits
	extern _DFLTCON
	extern _CAP3CON
	extern _CAP2CON
	extern _CAP1CON
	extern _CAP3BUFL
	extern _MAXCNTL
	extern _CAP3BUFH
	extern _MAXCNTH
	extern _CAP2BUFL
	extern _POSCNTL
	extern _CAP2BUFH
	extern _POSCNTH
	extern _CAP1BUFL
	extern _VELRL
	extern _CAP1BUFH
	extern _VELRH
	extern _OVDCONS
	extern _OVDCOND
	extern _FLTCONFIG
	extern _DTCON
	extern _PWMCON1
	extern _PWMCON0
	extern _SEVTCMPH
	extern _SEVTCMPL
	extern _PDC3H
	extern _PDC3L
	extern _PDC2H
	extern _PDC2L
	extern _PDC1H
	extern _PDC1L
	extern _PDC0H
	extern _PDC0L
	extern _PTPERH
	extern _PTPERL
	extern _PTMRH
	extern _PTMRL
	extern _PTCON1
	extern _PTCON0
	extern _PORTA
	extern _PORTB
	extern _PORTC
	extern _PORTD
	extern _PORTE
	extern _TMR5L
	extern _TMR5H
	extern _LATA
	extern _LATB
	extern _LATC
	extern _LATD
	extern _LATE
	extern _PR5L
	extern _PR5H
	extern _DDRA
	extern _TRISA
	extern _DDRB
	extern _TRISB
	extern _DDRC
	extern _TRISC
	extern _DDRD
	extern _TRISD
	extern _DDRE
	extern _TRISE
	extern _ADCHS
	extern _ADCON3
	extern _OSCTUNE
	extern _PIE1
	extern _PIR1
	extern _IPR1
	extern _PIE2
	extern _PIR2
	extern _IPR2
	extern _PIE3
	extern _PIR3
	extern _IPR3
	extern _EECON1
	extern _EECON2
	extern _EEDATA
	extern _EEADR
	extern _BAUDCON
	extern _BAUDCTL
	extern _RCSTA
	extern _TXSTA
	extern _TXREG
	extern _RCREG
	extern _SPBRG
	extern _SPBRGH
	extern _QEICON
	extern _T5CON
	extern _ANSEL0
	extern _ANSEL1
	extern _CCP2CON
	extern _CCPR2
	extern _CCPR2L
	extern _CCPR2H
	extern _CCP1CON
	extern _CCPR1
	extern _CCPR1L
	extern _CCPR1H
	extern _ADCON2
	extern _ADCON1
	extern _ADCON0
	extern _ADRES
	extern _ADRESL
	extern _ADRESH
	extern _SSPCON
	extern _SSPSTAT
	extern _SSPADD
	extern _SSPBUF
	extern _T2CON
	extern _PR2
	extern _TMR2
	extern _T1CON
	extern _TMR1L
	extern _TMR1H
	extern _RCON
	extern _WDTCON
	extern _LVDCON
	extern _OSCCON
	extern _T0CON
	extern _TMR0L
	extern _TMR0H
	extern _STATUS
	extern _FSR2L
	extern _FSR2H
	extern _PLUSW2
	extern _PREINC2
	extern _POSTDEC2
	extern _POSTINC2
	extern _INDF2
	extern _BSR
	extern _FSR1L
	extern _FSR1H
	extern _PLUSW1
	extern _PREINC1
	extern _POSTDEC1
	extern _POSTINC1
	extern _INDF1
	extern _WREG
	extern _FSR0L
	extern _FSR0H
	extern _PLUSW0
	extern _PREINC0
	extern _POSTDEC0
	extern _POSTINC0
	extern _INDF0
	extern _INTCON3
	extern _INTCON2
	extern _INTCON
	extern _PROD
	extern _PRODL
	extern _PRODH
	extern _TABLAT
	extern _TBLPTR
	extern _TBLPTRL
	extern _TBLPTRH
	extern _TBLPTRU
	extern _PC
	extern _PCL
	extern _PCLATH
	extern _PCLATU
	extern _STKPTR
	extern _TOS
	extern _TOSL
	extern _TOSH
	extern _TOSU

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($2) :
; ;ic:2: 	proc _usart_drdy [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char function    ( ) }
S_udrdy__usart_drdy	code
_usart_drdy:
; ;ic:3: inline
	movlw 0x00
	btfsc _PIR1bits, 5
	addlw 0x01
	return
	
; ;ic:4:  _return($1) :
; ;ic:5: 	eproc _usart_drdy [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char function    ( ) }


; Statistics:
; code size:	   10 (0x000a) bytes ( 0.01%)
;           	    5 (0x0005) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    0 (0x0000) bytes


	end
