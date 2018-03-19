;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:34 2018
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f452

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global _PORTAbits
	global _PORTBbits
	global _LATAbits
	global _LATBbits
	global _TRISAbits
	global _TRISBbits
	global _PIE1bits
	global _PIR1bits
	global _IPR1bits
	global _PIE2bits
	global _PIR2bits
	global _IPR2bits
	global _EECON1bits
	global _RCSTAbits
	global _TXSTAbits
	global _T3CONbits
	global _ECCPASbits
	global _CCP1CONbits
	global _ADCON2bits
	global _ADCON1bits
	global _ADCON0bits
	global _T2CONbits
	global _T1CONbits
	global _RCONbits
	global _WDTCONbits
	global _LVDCONbits
	global _OSCCONbits
	global _T0CONbits
	global _STATUSbits
	global _INTCON3bits
	global _INTCON2bits
	global _INTCONbits
	global _STKPTRbits
	global _PORTA
	global _PORTB
	global _LATA
	global _LATB
	global _TRISA
	global _TRISB
	global _PIE1
	global _PIR1
	global _IPR1
	global _PIE2
	global _PIR2
	global _IPR2
	global _EECON1
	global _EECON2
	global _EEDATA
	global _EEADR
	global _BAUDCTL
	global _RCSTA
	global _TXSTA
	global _TXREG
	global _RCREG
	global _SPBRG
	global _SPBRGH
	global _T3CON
	global _TMR3L
	global _TMR3H
	global _ECCPAS
	global _CCP1CON
	global _CCPR1L
	global _CCPR1H
	global _ADCON2
	global _ADCON1
	global _ADCON0
	global _ADRESL
	global _ADRESH
	global _T2CON
	global _PR2
	global _TMR2
	global _T1CON
	global _TMR1L
	global _TMR1H
	global _RCON
	global _WDTCON
	global _LVDCON
	global _OSCCON
	global _T0CON
	global _TMR0L
	global _TMR0H
	global _STATUS
	global _FSR2L
	global _FSR2H
	global _PLUSW2
	global _PREINC2
	global _POSTDEC2
	global _POSTINC2
	global _INDF2
	global _BSR
	global _FSR1L
	global _FSR1H
	global _PLUSW1
	global _PREINC1
	global _POSTDEC1
	global _POSTINC1
	global _INDF1
	global _WREG
	global _FSR0L
	global _FSR0H
	global _PLUSW0
	global _PREINC0
	global _POSTDEC0
	global _POSTINC0
	global _INDF0
	global _INTCON3
	global _INTCON2
	global _INTCON
	global _PRODL
	global _PRODH
	global _TABLAT
	global _TBLPTRL
	global _TBLPTRH
	global _TBLPTRU
	global _PCL
	global _PCLATH
	global _PCLATU
	global _STKPTR
	global _TOSL
	global _TOSH
	global _TOSU


ustat_pic18f1320_00	udata	0X0F80

_PORTA	res	0
_PORTAbits	res	1

_PORTB	res	0
_PORTBbits	res	1


ustat_pic18f1320_01	udata	0X0F89

_LATA	res	0
_LATAbits	res	1

_LATB	res	0
_LATBbits	res	1


ustat_pic18f1320_02	udata	0X0F92

_TRISA	res	0
_TRISAbits	res	1

_TRISB	res	0
_TRISBbits	res	1


ustat_pic18f1320_03	udata	0X0F9D

_PIE1	res	0
_PIE1bits	res	1

_PIR1	res	0
_PIR1bits	res	1

_IPR1	res	0
_IPR1bits	res	1

_PIE2	res	0
_PIE2bits	res	1

_PIR2	res	0
_PIR2bits	res	1

_IPR2	res	0
_IPR2bits	res	1


ustat_pic18f1320_04	udata	0X0FA6

_EECON1	res	0
_EECON1bits	res	1
_EECON2	res	1
_EEDATA	res	1
_EEADR	res	1
_BAUDCTL	res	1

_RCSTA	res	0
_RCSTAbits	res	1

_TXSTA	res	0
_TXSTAbits	res	1
_TXREG	res	1
_RCREG	res	1
_SPBRG	res	1
_SPBRGH	res	1

_T3CON	res	0
_T3CONbits	res	1
_TMR3L	res	1
_TMR3H	res	1


ustat_pic18f1320_05	udata	0X0FB6

_ECCPAS	res	0
_ECCPASbits	res	1


ustat_pic18f1320_06	udata	0X0FBD

_CCP1CON	res	0
_CCP1CONbits	res	1
_CCPR1L	res	1
_CCPR1H	res	1

_ADCON2	res	0
_ADCON2bits	res	1

_ADCON1	res	0
_ADCON1bits	res	1

_ADCON0	res	0
_ADCON0bits	res	1
_ADRESL	res	1
_ADRESH	res	1


ustat_pic18f1320_07	udata	0X0FCA

_T2CON	res	0
_T2CONbits	res	1
_PR2	res	1
_TMR2	res	1

_T1CON	res	0
_T1CONbits	res	1
_TMR1L	res	1
_TMR1H	res	1

_RCON	res	0
_RCONbits	res	1

_WDTCON	res	0
_WDTCONbits	res	1

_LVDCON	res	0
_LVDCONbits	res	1

_OSCCON	res	0
_OSCCONbits	res	1


ustat_pic18f1320_08	udata	0X0FD5

_T0CON	res	0
_T0CONbits	res	1
_TMR0L	res	1
_TMR0H	res	1

_STATUS	res	0
_STATUSbits	res	1
_FSR2L	res	1
_FSR2H	res	1
_PLUSW2	res	1
_PREINC2	res	1
_POSTDEC2	res	1
_POSTINC2	res	1
_INDF2	res	1
_BSR	res	1
_FSR1L	res	1
_FSR1H	res	1
_PLUSW1	res	1
_PREINC1	res	1
_POSTDEC1	res	1
_POSTINC1	res	1
_INDF1	res	1
_WREG	res	1
_FSR0L	res	1
_FSR0H	res	1
_PLUSW0	res	1
_PREINC0	res	1
_POSTDEC0	res	1
_POSTINC0	res	1
_INDF0	res	1

_INTCON3	res	0
_INTCON3bits	res	1

_INTCON2	res	0
_INTCON2bits	res	1

_INTCON	res	0
_INTCONbits	res	1
_PRODL	res	1
_PRODH	res	1
_TABLAT	res	1
_TBLPTRL	res	1
_TBLPTRH	res	1
_TBLPTRU	res	1
_PCL	res	1
_PCLATH	res	1
_PCLATU	res	1

_STKPTR	res	0
_STKPTRbits	res	1
_TOSL	res	1
_TOSH	res	1
_TOSU	res	1

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!


; Statistics:
; code size:	   -1 (0xffffffffffffffff) bytes (14073748835532800.00%)
;           	9223372036854775807 (0x7fffffffffffffff) words
; udata size:	   88 (0x0058) bytes ( 6.88%)
; access size:	    0 (0x0000) bytes


	end
