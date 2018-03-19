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
	global _DFLTCONbits
	global _CAP3CONbits
	global _CAP2CONbits
	global _CAP1CONbits
	global _OVDCONSbits
	global _OVDCONDbits
	global _FLTCONFIGbits
	global _DTCONbits
	global _PWMCON1bits
	global _PWMCON0bits
	global _PTCON1bits
	global _PTCON0bits
	global _PORTAbits
	global _PORTBbits
	global _PORTCbits
	global _PORTEbits
	global _LATAbits
	global _LATBbits
	global _LATCbits
	global _DDRAbits
	global _TRISAbits
	global _DDRBbits
	global _TRISBbits
	global _DDRCbits
	global _TRISCbits
	global _ADCHSbits
	global _ADCON3bits
	global _OSCTUNEbits
	global _PIE1bits
	global _PIR1bits
	global _IPR1bits
	global _PIE2bits
	global _PIR2bits
	global _IPR2bits
	global _PIE3bits
	global _PIR3bits
	global _IPR3bits
	global _EECON1bits
	global _BAUDCONbits
	global _BAUDCTLbits
	global _RCSTAbits
	global _TXSTAbits
	global _QEICONbits
	global _T5CONbits
	global _ANSEL0bits
	global _CCP2CONbits
	global _CCP1CONbits
	global _ADCON2bits
	global _ADCON1bits
	global _ADCON0bits
	global _SSPCONbits
	global _SSPSTATbits
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
	global _DFLTCON
	global _CAP3CON
	global _CAP2CON
	global _CAP1CON
	global _CAP3BUFL
	global _MAXCNTL
	global _CAP3BUFH
	global _MAXCNTH
	global _CAP2BUFL
	global _POSCNTL
	global _CAP2BUFH
	global _POSCNTH
	global _CAP1BUFL
	global _VELRL
	global _CAP1BUFH
	global _VELRH
	global _OVDCONS
	global _OVDCOND
	global _FLTCONFIG
	global _DTCON
	global _PWMCON1
	global _PWMCON0
	global _SEVTCMPH
	global _SEVTCMPL
	global _PDC3H
	global _PDC3L
	global _PDC2H
	global _PDC2L
	global _PDC1H
	global _PDC1L
	global _PDC0H
	global _PDC0L
	global _PTPERH
	global _PTPERL
	global _PTMRH
	global _PTMRL
	global _PTCON1
	global _PTCON0
	global _PORTA
	global _PORTB
	global _PORTC
	global _PORTE
	global _TMR5L
	global _TMR5H
	global _LATA
	global _LATB
	global _LATC
	global _PR5L
	global _PR5H
	global _DDRA
	global _TRISA
	global _DDRB
	global _TRISB
	global _DDRC
	global _TRISC
	global _ADCHS
	global _ADCON3
	global _OSCTUNE
	global _PIE1
	global _PIR1
	global _IPR1
	global _PIE2
	global _PIR2
	global _IPR2
	global _PIE3
	global _PIR3
	global _IPR3
	global _EECON1
	global _EECON2
	global _EEDATA
	global _EEADR
	global _BAUDCON
	global _BAUDCTL
	global _RCSTA
	global _TXSTA
	global _TXREG
	global _RCREG
	global _SPBRG
	global _SPBRGH
	global _QEICON
	global _T5CON
	global _ANSEL0
	global _CCP2CON
	global _CCPR2
	global _CCPR2L
	global _CCPR2H
	global _CCP1CON
	global _CCPR1
	global _CCPR1L
	global _CCPR1H
	global _ADCON2
	global _ADCON1
	global _ADCON0
	global _ADRES
	global _ADRESL
	global _ADRESH
	global _SSPCON
	global _SSPSTAT
	global _SSPADD
	global _SSPBUF
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
	global _PROD
	global _PRODL
	global _PRODH
	global _TABLAT
	global _TBLPTR
	global _TBLPTRL
	global _TBLPTRH
	global _TBLPTRU
	global _PC
	global _PCL
	global _PCLATH
	global _PCLATU
	global _STKPTR
	global _TOS
	global _TOSL
	global _TOSH
	global _TOSU


ustat_pic18f2431_00	udata	0X0F60

_DFLTCON	res	0
_DFLTCONbits	res	1

_CAP3CON	res	0
_CAP3CONbits	res	1

_CAP2CON	res	0
_CAP2CONbits	res	1

_CAP1CON	res	0
_CAP1CONbits	res	1

_CAP3BUFL	res	0
_MAXCNTL	res	1

_CAP3BUFH	res	0
_MAXCNTH	res	1

_CAP2BUFL	res	0
_POSCNTL	res	1

_CAP2BUFH	res	0
_POSCNTH	res	1

_CAP1BUFL	res	0
_VELRL	res	1

_CAP1BUFH	res	0
_VELRH	res	1

_OVDCONS	res	0
_OVDCONSbits	res	1

_OVDCOND	res	0
_OVDCONDbits	res	1

_FLTCONFIG	res	0
_FLTCONFIGbits	res	1

_DTCON	res	0
_DTCONbits	res	1

_PWMCON1	res	0
_PWMCON1bits	res	1

_PWMCON0	res	0
_PWMCON0bits	res	1
_SEVTCMPH	res	1
_SEVTCMPL	res	1
_PDC3H	res	1
_PDC3L	res	1
_PDC2H	res	1
_PDC2L	res	1
_PDC1H	res	1
_PDC1L	res	1
_PDC0H	res	1
_PDC0L	res	1
_PTPERH	res	1
_PTPERL	res	1
_PTMRH	res	1
_PTMRL	res	1

_PTCON1	res	0
_PTCON1bits	res	1

_PTCON0	res	0
_PTCON0bits	res	1

_PORTA	res	0
_PORTAbits	res	1

_PORTB	res	0
_PORTBbits	res	1

_PORTC	res	0
_PORTCbits	res	1


ustat_pic18f2431_01	udata	0X0F84

_PORTE	res	0
_PORTEbits	res	1


ustat_pic18f2431_02	udata	0X0F87
_TMR5L	res	1
_TMR5H	res	1

_LATA	res	0
_LATAbits	res	1

_LATB	res	0
_LATBbits	res	1

_LATC	res	0
_LATCbits	res	1


ustat_pic18f2431_03	udata	0X0F90
_PR5L	res	1
_PR5H	res	1

_DDRA	res	0

_DDRAbits	res	0

_TRISA	res	0
_TRISAbits	res	1

_DDRB	res	0

_DDRBbits	res	0

_TRISB	res	0
_TRISBbits	res	1

_DDRC	res	0

_DDRCbits	res	0

_TRISC	res	0
_TRISCbits	res	1


ustat_pic18f2431_04	udata	0X0F99

_ADCHS	res	0
_ADCHSbits	res	1

_ADCON3	res	0
_ADCON3bits	res	1

_OSCTUNE	res	0
_OSCTUNEbits	res	1


ustat_pic18f2431_05	udata	0X0F9D

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

_PIE3	res	0
_PIE3bits	res	1

_PIR3	res	0
_PIR3bits	res	1

_IPR3	res	0
_IPR3bits	res	1

_EECON1	res	0
_EECON1bits	res	1
_EECON2	res	1
_EEDATA	res	1
_EEADR	res	1

_BAUDCON	res	0

_BAUDCONbits	res	0

_BAUDCTL	res	0
_BAUDCTLbits	res	1

_RCSTA	res	0
_RCSTAbits	res	1

_TXSTA	res	0
_TXSTAbits	res	1
_TXREG	res	1
_RCREG	res	1
_SPBRG	res	1
_SPBRGH	res	1


ustat_pic18f2431_06	udata	0X0FB6

_QEICON	res	0
_QEICONbits	res	1

_T5CON	res	0
_T5CONbits	res	1

_ANSEL0	res	0
_ANSEL0bits	res	1


ustat_pic18f2431_07	udata	0X0FBA

_CCP2CON	res	0
_CCP2CONbits	res	1

_CCPR2	res	0
_CCPR2L	res	1
_CCPR2H	res	1

_CCP1CON	res	0
_CCP1CONbits	res	1

_CCPR1	res	0
_CCPR1L	res	1
_CCPR1H	res	1

_ADCON2	res	0
_ADCON2bits	res	1

_ADCON1	res	0
_ADCON1bits	res	1

_ADCON0	res	0
_ADCON0bits	res	1

_ADRES	res	0
_ADRESL	res	1
_ADRESH	res	1


ustat_pic18f2431_08	udata	0X0FC6

_SSPCON	res	0
_SSPCONbits	res	1

_SSPSTAT	res	0
_SSPSTATbits	res	1
_SSPADD	res	1
_SSPBUF	res	1

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


ustat_pic18f2431_09	udata	0X0FD5

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

_PROD	res	0
_PRODL	res	1
_PRODH	res	1
_TABLAT	res	1

_TBLPTR	res	0
_TBLPTRL	res	1
_TBLPTRH	res	1
_TBLPTRU	res	1

_PC	res	0
_PCL	res	1
_PCLATH	res	1
_PCLATU	res	1

_STKPTR	res	0
_STKPTRbits	res	1

_TOS	res	0
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
; udata size:	  140 (0x008c) bytes (10.94%)
; access size:	    0 (0x0000) bytes


	end
