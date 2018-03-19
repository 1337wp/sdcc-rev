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
	global _RXF6SIDHbits
	global _RXF6SIDLbits
	global _RXF6EIDHbits
	global _RXF6EIDLbits
	global _RXF7SIDHbits
	global _RXF7SIDLbits
	global _RXF7EIDHbits
	global _RXF7EIDLbits
	global _RXF8SIDHbits
	global _RXF8SIDLbits
	global _RXF8EIDHbits
	global _RXF8EIDLbits
	global _RXF9SIDHbits
	global _RXF9SIDLbits
	global _RXF9EIDHbits
	global _RXF9EIDLbits
	global _RXF10SIDHbits
	global _RXF10SIDLbits
	global _RXF10EIDHbits
	global _RXF10EIDLbits
	global _RXF11SIDHbits
	global _RXF11SIDLbits
	global _RXF11EIDHbits
	global _RXF11EIDLbits
	global _RXF12SIDHbits
	global _RXF12SIDLbits
	global _RXF12EIDHbits
	global _RXF12EIDLbits
	global _RXF13SIDHbits
	global _RXF13SIDLbits
	global _RXF13EIDHbits
	global _RXF13EIDLbits
	global _RXF14SIDHbits
	global _RXF14SIDLbits
	global _RXF14EIDHbits
	global _RXF14EIDLbits
	global _RXF15SIDHbits
	global _RXF15SIDLbits
	global _RXF15EIDHbits
	global _RXF15EIDLbits
	global _RXFCON0bits
	global _RXFCON1bits
	global _SDFLCbits
	global _RXFBCON0bits
	global _RXFBCON1bits
	global _RXFBCON2bits
	global _RXFBCON3bits
	global _RXFBCON4bits
	global _RXFBCON5bits
	global _RXFBCON6bits
	global _RXFBCON7bits
	global _MSEL0bits
	global _MSEL1bits
	global _MSEL2bits
	global _MSEL3bits
	global _BSEL0bits
	global _BIE0bits
	global _TXBIEbits
	global _B0CONbits
	global _B0SIDHbits
	global _B0SIDLbits
	global _B0EIDHbits
	global _B0EIDLbits
	global _B0DLCbits
	global _B0D0bits
	global _B0D1bits
	global _B0D2bits
	global _B0D3bits
	global _B0D4bits
	global _B0D5bits
	global _B0D6bits
	global _B0D7bits
	global _CANSTAT_RO9bits
	global _CANCON_RO9bits
	global _B1CONbits
	global _B1SIDHbits
	global _B1SIDLbits
	global _B1EIDHbits
	global _B1EIDLbits
	global _B1DLCbits
	global _B1D0bits
	global _B1D1bits
	global _B1D2bits
	global _B1D3bits
	global _B1D4bits
	global _B1D5bits
	global _B1D6bits
	global _B1D7bits
	global _CANSTAT_RO8bits
	global _CANCON_RO8bits
	global _B2CONbits
	global _B2SIDHbits
	global _B2SIDLbits
	global _B2EIDHbits
	global _B2EIDLbits
	global _B2DLCbits
	global _B2D0bits
	global _B2D1bits
	global _B2D2bits
	global _B2D3bits
	global _B2D4bits
	global _B2D5bits
	global _B2D6bits
	global _B2D7bits
	global _CANSTAT_RO7bits
	global _CANCON_RO7bits
	global _B3CONbits
	global _B3SIDHbits
	global _B3SIDLbits
	global _B3EIDHbits
	global _B3EIDLbits
	global _B3DLCbits
	global _B3D0bits
	global _B3D1bits
	global _B3D2bits
	global _B3D3bits
	global _B3D4bits
	global _B3D5bits
	global _B3D6bits
	global _B3D7bits
	global _CANSTAT_RO6bits
	global _CANCON_RO6bits
	global _B4CONbits
	global _B4SIDHbits
	global _B4SIDLbits
	global _B4EIDHbits
	global _B4EIDLbits
	global _B4DLCbits
	global _B4D0bits
	global _B4D1bits
	global _B4D2bits
	global _B4D3bits
	global _B4D4bits
	global _B4D5bits
	global _B4D6bits
	global _B4D7bits
	global _CANSTAT_RO5bits
	global _CANCON_RO5bits
	global _B5CONbits
	global _B5SIDHbits
	global _B5SIDLbits
	global _B5EIDHbits
	global _B5EIDLbits
	global _B5DLCbits
	global _B5D0bits
	global _B5D1bits
	global _B5D2bits
	global _B5D3bits
	global _B5D4bits
	global _B5D5bits
	global _B5D6bits
	global _B5D7bits
	global _CANSTAT_RO4bits
	global _CANCON_RO4bits
	global _RXF0SIDHbits
	global _RXF0SIDLbits
	global _RXF0EIDHbits
	global _RXF0EIDLbits
	global _RXF1SIDHbits
	global _RXF1SIDLbits
	global _RXF1EIDHbits
	global _RXF1EIDLbits
	global _RXF2SIDHbits
	global _RXF2SIDLbits
	global _RXF2EIDHbits
	global _RXF2EIDLbits
	global _RXF3SIDHbits
	global _RXF3SIDLbits
	global _RXF3EIDHbits
	global _RXF3EIDLbits
	global _RXF4SIDHbits
	global _RXF4SIDLbits
	global _RXF4EIDHbits
	global _RXF4EIDLbits
	global _RXF5SIDHbits
	global _RXF5SIDLbits
	global _RXF5EIDHbits
	global _RXF5EIDLbits
	global _RXM0SIDHbits
	global _RXM0SIDLbits
	global _RXM0EIDHbits
	global _RXM0EIDLbits
	global _RXM1SIDHbits
	global _RXM1SIDLbits
	global _RXM1EIDHbits
	global _RXM1EIDLbits
	global _TXB2CONbits
	global _TXB2SIDHbits
	global _TXB2SIDLbits
	global _TXB2EIDHbits
	global _TXB2EIDLbits
	global _TXB2DLCbits
	global _TXB2D0bits
	global _TXB2D1bits
	global _TXB2D2bits
	global _TXB2D3bits
	global _TXB2D4bits
	global _TXB2D5bits
	global _TXB2D6bits
	global _TXB2D7bits
	global _CANSTAT_RO3bits
	global _CANCON_RO3bits
	global _TXB1CONbits
	global _TXB1SIDHbits
	global _TXB1SIDLbits
	global _TXB1EIDHbits
	global _TXB1EIDLbits
	global _TXB1DLCbits
	global _TXB1D0bits
	global _TXB1D1bits
	global _TXB1D2bits
	global _TXB1D3bits
	global _TXB1D4bits
	global _TXB1D5bits
	global _TXB1D6bits
	global _TXB1D7bits
	global _CANSTAT_RO2bits
	global _CANCON_RO2bits
	global _TXB0CONbits
	global _TXB0SIDHbits
	global _TXB0SIDLbits
	global _TXB0EIDHbits
	global _TXB0EIDLbits
	global _TXB0DLCbits
	global _TXB0D0bits
	global _TXB0D1bits
	global _TXB0D2bits
	global _TXB0D3bits
	global _TXB0D4bits
	global _TXB0D5bits
	global _TXB0D6bits
	global _TXB0D7bits
	global _CANSTAT_RO1bits
	global _CANCON_RO1bits
	global _RXB1CONbits
	global _RXB1SIDHbits
	global _RXB1SIDLbits
	global _RXB1EIDHbits
	global _RXB1EIDLbits
	global _RXB1DLCbits
	global _RXB1D0bits
	global _RXB1D1bits
	global _RXB1D2bits
	global _RXB1D3bits
	global _RXB1D4bits
	global _RXB1D5bits
	global _RXB1D6bits
	global _RXB1D7bits
	global _CANSTAT_RO0bits
	global _CANCON_RO0bits
	global _RXB0CONbits
	global _RXB0SIDHbits
	global _RXB0SIDLbits
	global _RXB0EIDHbits
	global _RXB0EIDLbits
	global _RXB0DLCbits
	global _RXB0D0bits
	global _RXB0D1bits
	global _RXB0D2bits
	global _RXB0D3bits
	global _RXB0D4bits
	global _RXB0D5bits
	global _RXB0D6bits
	global _RXB0D7bits
	global _CANSTATbits
	global _CANCONbits
	global _BRGCON1bits
	global _BRGCON2bits
	global _BRGCON3bits
	global _CIOCONbits
	global _COMSTATbits
	global _RXERRCNTbits
	global _TXERRCNTbits
	global _ECANCONbits
	global _PORTAbits
	global _PORTBbits
	global _PORTCbits
	global _PORTDbits
	global _PORTEbits
	global _LATAbits
	global _LATBbits
	global _LATCbits
	global _LATDbits
	global _LATEbits
	global _DDRAbits
	global _TRISAbits
	global _DDRBbits
	global _TRISBbits
	global _DDRCbits
	global _TRISCbits
	global _DDRDbits
	global _TRISDbits
	global _DDREbits
	global _TRISEbits
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
	global _RCSTAbits
	global _TXSTAbits
	global _T3CONbits
	global _CMCONbits
	global _CVRCONbits
	global _ECCP1ASbits
	global _ECCP1DELbits
	global _BAUDCONbits
	global _ECCP1CONbits
	global _CCP1CONbits
	global _ADCON2bits
	global _ADCON1bits
	global _ADCON0bits
	global _SSPCON2bits
	global _SSPCON1bits
	global _SSPSTATbits
	global _T2CONbits
	global _T1CONbits
	global _RCONbits
	global _WDTCONbits
	global _HLVDCONbits
	global _LVDCONbits
	global _OSCCONbits
	global _T0CONbits
	global _STATUSbits
	global _INTCON3bits
	global _INTCON2bits
	global _INTCONbits
	global _STKPTRbits
	global _RXF6SIDH
	global _RXF6SIDL
	global _RXF6EIDH
	global _RXF6EIDL
	global _RXF7SIDH
	global _RXF7SIDL
	global _RXF7EIDH
	global _RXF7EIDL
	global _RXF8SIDH
	global _RXF8SIDL
	global _RXF8EIDH
	global _RXF8EIDL
	global _RXF9SIDH
	global _RXF9SIDL
	global _RXF9EIDH
	global _RXF9EIDL
	global _RXF10SIDH
	global _RXF10SIDL
	global _RXF10EIDH
	global _RXF10EIDL
	global _RXF11SIDH
	global _RXF11SIDL
	global _RXF11EIDH
	global _RXF11EIDL
	global _RXF12SIDH
	global _RXF12SIDL
	global _RXF12EIDH
	global _RXF12EIDL
	global _RXF13SIDH
	global _RXF13SIDL
	global _RXF13EIDH
	global _RXF13EIDL
	global _RXF14SIDH
	global _RXF14SIDL
	global _RXF14EIDH
	global _RXF14EIDL
	global _RXF15SIDH
	global _RXF15SIDL
	global _RXF15EIDH
	global _RXF15EIDL
	global _RXFCON0
	global _RXFCON1
	global _SDFLC
	global _RXFBCON0
	global _RXFBCON1
	global _RXFBCON2
	global _RXFBCON3
	global _RXFBCON4
	global _RXFBCON5
	global _RXFBCON6
	global _RXFBCON7
	global _MSEL0
	global _MSEL1
	global _MSEL2
	global _MSEL3
	global _BSEL0
	global _BIE0
	global _TXBIE
	global _B0CON
	global _B0SIDH
	global _B0SIDL
	global _B0EIDH
	global _B0EIDL
	global _B0DLC
	global _B0D0
	global _B0D1
	global _B0D2
	global _B0D3
	global _B0D4
	global _B0D5
	global _B0D6
	global _B0D7
	global _CANSTAT_RO9
	global _CANCON_RO9
	global _B1CON
	global _B1SIDH
	global _B1SIDL
	global _B1EIDH
	global _B1EIDL
	global _B1DLC
	global _B1D0
	global _B1D1
	global _B1D2
	global _B1D3
	global _B1D4
	global _B1D5
	global _B1D6
	global _B1D7
	global _CANSTAT_RO8
	global _CANCON_RO8
	global _B2CON
	global _B2SIDH
	global _B2SIDL
	global _B2EIDH
	global _B2EIDL
	global _B2DLC
	global _B2D0
	global _B2D1
	global _B2D2
	global _B2D3
	global _B2D4
	global _B2D5
	global _B2D6
	global _B2D7
	global _CANSTAT_RO7
	global _CANCON_RO7
	global _B3CON
	global _B3SIDH
	global _B3SIDL
	global _B3EIDH
	global _B3EIDL
	global _B3DLC
	global _B3D0
	global _B3D1
	global _B3D2
	global _B3D3
	global _B3D4
	global _B3D5
	global _B3D6
	global _B3D7
	global _CANSTAT_RO6
	global _CANCON_RO6
	global _B4CON
	global _B4SIDH
	global _B4SIDL
	global _B4EIDH
	global _B4EIDL
	global _B4DLC
	global _B4D0
	global _B4D1
	global _B4D2
	global _B4D3
	global _B4D4
	global _B4D5
	global _B4D6
	global _B4D7
	global _CANSTAT_RO5
	global _CANCON_RO5
	global _B5CON
	global _B5SIDH
	global _B5SIDL
	global _B5EIDH
	global _B5EIDL
	global _B5DLC
	global _B5D0
	global _B5D1
	global _B5D2
	global _B5D3
	global _B5D4
	global _B5D5
	global _B5D6
	global _B5D7
	global _CANSTAT_RO4
	global _CANCON_RO4
	global _RXF0SIDH
	global _RXF0SIDL
	global _RXF0EIDH
	global _RXF0EIDL
	global _RXF1SIDH
	global _RXF1SIDL
	global _RXF1EIDH
	global _RXF1EIDL
	global _RXF2SIDH
	global _RXF2SIDL
	global _RXF2EIDH
	global _RXF2EIDL
	global _RXF3SIDH
	global _RXF3SIDL
	global _RXF3EIDH
	global _RXF3EIDL
	global _RXF4SIDH
	global _RXF4SIDL
	global _RXF4EIDH
	global _RXF4EIDL
	global _RXF5SIDH
	global _RXF5SIDL
	global _RXF5EIDH
	global _RXF5EIDL
	global _RXM0SIDH
	global _RXM0SIDL
	global _RXM0EIDH
	global _RXM0EIDL
	global _RXM1SIDH
	global _RXM1SIDL
	global _RXM1EIDH
	global _RXM1EIDL
	global _TXB2CON
	global _TXB2SIDH
	global _TXB2SIDL
	global _TXB2EIDH
	global _TXB2EIDL
	global _TXB2DLC
	global _TXB2D0
	global _TXB2D1
	global _TXB2D2
	global _TXB2D3
	global _TXB2D4
	global _TXB2D5
	global _TXB2D6
	global _TXB2D7
	global _CANSTAT_RO3
	global _CANCON_RO3
	global _TXB1CON
	global _TXB1SIDH
	global _TXB1SIDL
	global _TXB1EIDH
	global _TXB1EIDL
	global _TXB1DLC
	global _TXB1D0
	global _TXB1D1
	global _TXB1D2
	global _TXB1D3
	global _TXB1D4
	global _TXB1D5
	global _TXB1D6
	global _TXB1D7
	global _CANSTAT_RO2
	global _CANCON_RO2
	global _TXB0CON
	global _TXB0SIDH
	global _TXB0SIDL
	global _TXB0EIDH
	global _TXB0EIDL
	global _TXB0DLC
	global _TXB0D0
	global _TXB0D1
	global _TXB0D2
	global _TXB0D3
	global _TXB0D4
	global _TXB0D5
	global _TXB0D6
	global _TXB0D7
	global _CANSTAT_RO1
	global _CANCON_RO1
	global _RXB1CON
	global _RXB1SIDH
	global _RXB1SIDL
	global _RXB1EIDH
	global _RXB1EIDL
	global _RXB1DLC
	global _RXB1D0
	global _RXB1D1
	global _RXB1D2
	global _RXB1D3
	global _RXB1D4
	global _RXB1D5
	global _RXB1D6
	global _RXB1D7
	global _CANSTAT_RO0
	global _CANCON_RO0
	global _RXB0CON
	global _RXB0SIDH
	global _RXB0SIDL
	global _RXB0EIDH
	global _RXB0EIDL
	global _RXB0DLC
	global _RXB0D0
	global _RXB0D1
	global _RXB0D2
	global _RXB0D3
	global _RXB0D4
	global _RXB0D5
	global _RXB0D6
	global _RXB0D7
	global _CANSTAT
	global _CANCON
	global _BRGCON1
	global _BRGCON2
	global _BRGCON3
	global _CIOCON
	global _COMSTAT
	global _RXERRCNT
	global _TXERRCNT
	global _ECANCON
	global _PORTA
	global _PORTB
	global _PORTC
	global _PORTD
	global _PORTE
	global _LATA
	global _LATB
	global _LATC
	global _LATD
	global _LATE
	global _DDRA
	global _TRISA
	global _DDRB
	global _TRISB
	global _DDRC
	global _TRISC
	global _DDRD
	global _TRISD
	global _DDRE
	global _TRISE
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
	global _EEADRH
	global _RCSTA
	global _TXSTA
	global _TXREG
	global _RCREG
	global _SPBRG
	global _SPBRGH
	global _T3CON
	global _TMR3L
	global _TMR3H
	global _CMCON
	global _CVRCON
	global _ECCP1AS
	global _ECCP1DEL
	global _BAUDCON
	global _ECCP1CON
	global _ECCPR1
	global _ECCPR1L
	global _ECCPR1H
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
	global _SSPCON2
	global _SSPCON1
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
	global _HLVDCON
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


ustat_pic18f4585_00	udata	0X0D60

_RXF6SIDH	res	0
_RXF6SIDHbits	res	1

_RXF6SIDL	res	0
_RXF6SIDLbits	res	1

_RXF6EIDH	res	0
_RXF6EIDHbits	res	1

_RXF6EIDL	res	0
_RXF6EIDLbits	res	1

_RXF7SIDH	res	0
_RXF7SIDHbits	res	1

_RXF7SIDL	res	0
_RXF7SIDLbits	res	1

_RXF7EIDH	res	0
_RXF7EIDHbits	res	1

_RXF7EIDL	res	0
_RXF7EIDLbits	res	1

_RXF8SIDH	res	0
_RXF8SIDHbits	res	1

_RXF8SIDL	res	0
_RXF8SIDLbits	res	1

_RXF8EIDH	res	0
_RXF8EIDHbits	res	1

_RXF8EIDL	res	0
_RXF8EIDLbits	res	1


ustat_pic18f4585_01	udata	0X0D70

_RXF9SIDH	res	0
_RXF9SIDHbits	res	1

_RXF9SIDL	res	0
_RXF9SIDLbits	res	1

_RXF9EIDH	res	0
_RXF9EIDHbits	res	1

_RXF9EIDL	res	0
_RXF9EIDLbits	res	1

_RXF10SIDH	res	0
_RXF10SIDHbits	res	1

_RXF10SIDL	res	0
_RXF10SIDLbits	res	1

_RXF10EIDH	res	0
_RXF10EIDHbits	res	1

_RXF10EIDL	res	0
_RXF10EIDLbits	res	1

_RXF11SIDH	res	0
_RXF11SIDHbits	res	1

_RXF11SIDL	res	0
_RXF11SIDLbits	res	1

_RXF11EIDH	res	0
_RXF11EIDHbits	res	1

_RXF11EIDL	res	0
_RXF11EIDLbits	res	1


ustat_pic18f4585_02	udata	0X0D80

_RXF12SIDH	res	0
_RXF12SIDHbits	res	1

_RXF12SIDL	res	0
_RXF12SIDLbits	res	1

_RXF12EIDH	res	0
_RXF12EIDHbits	res	1

_RXF12EIDL	res	0
_RXF12EIDLbits	res	1

_RXF13SIDH	res	0
_RXF13SIDHbits	res	1

_RXF13SIDL	res	0
_RXF13SIDLbits	res	1

_RXF13EIDH	res	0
_RXF13EIDHbits	res	1

_RXF13EIDL	res	0
_RXF13EIDLbits	res	1

_RXF14SIDH	res	0
_RXF14SIDHbits	res	1

_RXF14SIDL	res	0
_RXF14SIDLbits	res	1

_RXF14EIDH	res	0
_RXF14EIDHbits	res	1

_RXF14EIDL	res	0
_RXF14EIDLbits	res	1


ustat_pic18f4585_03	udata	0X0D90

_RXF15SIDH	res	0
_RXF15SIDHbits	res	1

_RXF15SIDL	res	0
_RXF15SIDLbits	res	1

_RXF15EIDH	res	0
_RXF15EIDHbits	res	1

_RXF15EIDL	res	0
_RXF15EIDLbits	res	1


ustat_pic18f4585_04	udata	0X0DD4

_RXFCON0	res	0
_RXFCON0bits	res	1

_RXFCON1	res	0
_RXFCON1bits	res	1


ustat_pic18f4585_05	udata	0X0DD8

_SDFLC	res	0
_SDFLCbits	res	1


ustat_pic18f4585_06	udata	0X0DE0

_RXFBCON0	res	0
_RXFBCON0bits	res	1

_RXFBCON1	res	0
_RXFBCON1bits	res	1

_RXFBCON2	res	0
_RXFBCON2bits	res	1

_RXFBCON3	res	0
_RXFBCON3bits	res	1

_RXFBCON4	res	0
_RXFBCON4bits	res	1

_RXFBCON5	res	0
_RXFBCON5bits	res	1

_RXFBCON6	res	0
_RXFBCON6bits	res	1

_RXFBCON7	res	0
_RXFBCON7bits	res	1


ustat_pic18f4585_07	udata	0X0DF0

_MSEL0	res	0
_MSEL0bits	res	1

_MSEL1	res	0
_MSEL1bits	res	1

_MSEL2	res	0
_MSEL2bits	res	1

_MSEL3	res	0
_MSEL3bits	res	1


ustat_pic18f4585_08	udata	0X0DF8

_BSEL0	res	0
_BSEL0bits	res	1


ustat_pic18f4585_09	udata	0X0DFA

_BIE0	res	0
_BIE0bits	res	1


ustat_pic18f4585_10	udata	0X0DFC

_TXBIE	res	0
_TXBIEbits	res	1


ustat_pic18f4585_11	udata	0X0E20

_B0CON	res	0
_B0CONbits	res	1

_B0SIDH	res	0
_B0SIDHbits	res	1

_B0SIDL	res	0
_B0SIDLbits	res	1

_B0EIDH	res	0
_B0EIDHbits	res	1

_B0EIDL	res	0
_B0EIDLbits	res	1

_B0DLC	res	0
_B0DLCbits	res	1

_B0D0	res	0
_B0D0bits	res	1

_B0D1	res	0
_B0D1bits	res	1

_B0D2	res	0
_B0D2bits	res	1

_B0D3	res	0
_B0D3bits	res	1

_B0D4	res	0
_B0D4bits	res	1

_B0D5	res	0
_B0D5bits	res	1

_B0D6	res	0
_B0D6bits	res	1

_B0D7	res	0
_B0D7bits	res	1

_CANSTAT_RO9	res	0
_CANSTAT_RO9bits	res	1

_CANCON_RO9	res	0
_CANCON_RO9bits	res	1

_B1CON	res	0
_B1CONbits	res	1

_B1SIDH	res	0
_B1SIDHbits	res	1

_B1SIDL	res	0
_B1SIDLbits	res	1

_B1EIDH	res	0
_B1EIDHbits	res	1

_B1EIDL	res	0
_B1EIDLbits	res	1

_B1DLC	res	0
_B1DLCbits	res	1

_B1D0	res	0
_B1D0bits	res	1

_B1D1	res	0
_B1D1bits	res	1

_B1D2	res	0
_B1D2bits	res	1

_B1D3	res	0
_B1D3bits	res	1

_B1D4	res	0
_B1D4bits	res	1

_B1D5	res	0
_B1D5bits	res	1

_B1D6	res	0
_B1D6bits	res	1

_B1D7	res	0
_B1D7bits	res	1

_CANSTAT_RO8	res	0
_CANSTAT_RO8bits	res	1

_CANCON_RO8	res	0
_CANCON_RO8bits	res	1

_B2CON	res	0
_B2CONbits	res	1

_B2SIDH	res	0
_B2SIDHbits	res	1

_B2SIDL	res	0
_B2SIDLbits	res	1

_B2EIDH	res	0
_B2EIDHbits	res	1

_B2EIDL	res	0
_B2EIDLbits	res	1

_B2DLC	res	0
_B2DLCbits	res	1

_B2D0	res	0
_B2D0bits	res	1

_B2D1	res	0
_B2D1bits	res	1

_B2D2	res	0
_B2D2bits	res	1

_B2D3	res	0
_B2D3bits	res	1

_B2D4	res	0
_B2D4bits	res	1

_B2D5	res	0
_B2D5bits	res	1

_B2D6	res	0
_B2D6bits	res	1

_B2D7	res	0
_B2D7bits	res	1

_CANSTAT_RO7	res	0
_CANSTAT_RO7bits	res	1

_CANCON_RO7	res	0
_CANCON_RO7bits	res	1

_B3CON	res	0
_B3CONbits	res	1

_B3SIDH	res	0
_B3SIDHbits	res	1

_B3SIDL	res	0
_B3SIDLbits	res	1

_B3EIDH	res	0
_B3EIDHbits	res	1

_B3EIDL	res	0
_B3EIDLbits	res	1

_B3DLC	res	0
_B3DLCbits	res	1

_B3D0	res	0
_B3D0bits	res	1

_B3D1	res	0
_B3D1bits	res	1

_B3D2	res	0
_B3D2bits	res	1

_B3D3	res	0
_B3D3bits	res	1

_B3D4	res	0
_B3D4bits	res	1

_B3D5	res	0
_B3D5bits	res	1

_B3D6	res	0
_B3D6bits	res	1

_B3D7	res	0
_B3D7bits	res	1

_CANSTAT_RO6	res	0
_CANSTAT_RO6bits	res	1

_CANCON_RO6	res	0
_CANCON_RO6bits	res	1

_B4CON	res	0
_B4CONbits	res	1

_B4SIDH	res	0
_B4SIDHbits	res	1

_B4SIDL	res	0
_B4SIDLbits	res	1

_B4EIDH	res	0
_B4EIDHbits	res	1

_B4EIDL	res	0
_B4EIDLbits	res	1

_B4DLC	res	0
_B4DLCbits	res	1

_B4D0	res	0
_B4D0bits	res	1

_B4D1	res	0
_B4D1bits	res	1

_B4D2	res	0
_B4D2bits	res	1

_B4D3	res	0
_B4D3bits	res	1

_B4D4	res	0
_B4D4bits	res	1

_B4D5	res	0
_B4D5bits	res	1

_B4D6	res	0
_B4D6bits	res	1

_B4D7	res	0
_B4D7bits	res	1

_CANSTAT_RO5	res	0
_CANSTAT_RO5bits	res	1

_CANCON_RO5	res	0
_CANCON_RO5bits	res	1

_B5CON	res	0
_B5CONbits	res	1

_B5SIDH	res	0
_B5SIDHbits	res	1

_B5SIDL	res	0
_B5SIDLbits	res	1

_B5EIDH	res	0
_B5EIDHbits	res	1

_B5EIDL	res	0
_B5EIDLbits	res	1

_B5DLC	res	0
_B5DLCbits	res	1

_B5D0	res	0
_B5D0bits	res	1

_B5D1	res	0
_B5D1bits	res	1

_B5D2	res	0
_B5D2bits	res	1

_B5D3	res	0
_B5D3bits	res	1

_B5D4	res	0
_B5D4bits	res	1

_B5D5	res	0
_B5D5bits	res	1

_B5D6	res	0
_B5D6bits	res	1

_B5D7	res	0
_B5D7bits	res	1

_CANSTAT_RO4	res	0
_CANSTAT_RO4bits	res	1

_CANCON_RO4	res	0
_CANCON_RO4bits	res	1


ustat_pic18f4585_12	udata	0X0F00

_RXF0SIDH	res	0
_RXF0SIDHbits	res	1

_RXF0SIDL	res	0
_RXF0SIDLbits	res	1

_RXF0EIDH	res	0
_RXF0EIDHbits	res	1

_RXF0EIDL	res	0
_RXF0EIDLbits	res	1

_RXF1SIDH	res	0
_RXF1SIDHbits	res	1

_RXF1SIDL	res	0
_RXF1SIDLbits	res	1

_RXF1EIDH	res	0
_RXF1EIDHbits	res	1

_RXF1EIDL	res	0
_RXF1EIDLbits	res	1

_RXF2SIDH	res	0
_RXF2SIDHbits	res	1

_RXF2SIDL	res	0
_RXF2SIDLbits	res	1

_RXF2EIDH	res	0
_RXF2EIDHbits	res	1

_RXF2EIDL	res	0
_RXF2EIDLbits	res	1

_RXF3SIDH	res	0
_RXF3SIDHbits	res	1

_RXF3SIDL	res	0
_RXF3SIDLbits	res	1

_RXF3EIDH	res	0
_RXF3EIDHbits	res	1

_RXF3EIDL	res	0
_RXF3EIDLbits	res	1

_RXF4SIDH	res	0
_RXF4SIDHbits	res	1

_RXF4SIDL	res	0
_RXF4SIDLbits	res	1

_RXF4EIDH	res	0
_RXF4EIDHbits	res	1

_RXF4EIDL	res	0
_RXF4EIDLbits	res	1

_RXF5SIDH	res	0
_RXF5SIDHbits	res	1

_RXF5SIDL	res	0
_RXF5SIDLbits	res	1

_RXF5EIDH	res	0
_RXF5EIDHbits	res	1

_RXF5EIDL	res	0
_RXF5EIDLbits	res	1

_RXM0SIDH	res	0
_RXM0SIDHbits	res	1

_RXM0SIDL	res	0
_RXM0SIDLbits	res	1

_RXM0EIDH	res	0
_RXM0EIDHbits	res	1

_RXM0EIDL	res	0
_RXM0EIDLbits	res	1

_RXM1SIDH	res	0
_RXM1SIDHbits	res	1

_RXM1SIDL	res	0
_RXM1SIDLbits	res	1

_RXM1EIDH	res	0
_RXM1EIDHbits	res	1

_RXM1EIDL	res	0
_RXM1EIDLbits	res	1

_TXB2CON	res	0
_TXB2CONbits	res	1

_TXB2SIDH	res	0
_TXB2SIDHbits	res	1

_TXB2SIDL	res	0
_TXB2SIDLbits	res	1

_TXB2EIDH	res	0
_TXB2EIDHbits	res	1

_TXB2EIDL	res	0
_TXB2EIDLbits	res	1

_TXB2DLC	res	0
_TXB2DLCbits	res	1

_TXB2D0	res	0
_TXB2D0bits	res	1

_TXB2D1	res	0
_TXB2D1bits	res	1

_TXB2D2	res	0
_TXB2D2bits	res	1

_TXB2D3	res	0
_TXB2D3bits	res	1

_TXB2D4	res	0
_TXB2D4bits	res	1

_TXB2D5	res	0
_TXB2D5bits	res	1

_TXB2D6	res	0
_TXB2D6bits	res	1

_TXB2D7	res	0
_TXB2D7bits	res	1

_CANSTAT_RO3	res	0
_CANSTAT_RO3bits	res	1

_CANCON_RO3	res	0
_CANCON_RO3bits	res	1

_TXB1CON	res	0
_TXB1CONbits	res	1

_TXB1SIDH	res	0
_TXB1SIDHbits	res	1

_TXB1SIDL	res	0
_TXB1SIDLbits	res	1

_TXB1EIDH	res	0
_TXB1EIDHbits	res	1

_TXB1EIDL	res	0
_TXB1EIDLbits	res	1

_TXB1DLC	res	0
_TXB1DLCbits	res	1

_TXB1D0	res	0
_TXB1D0bits	res	1

_TXB1D1	res	0
_TXB1D1bits	res	1

_TXB1D2	res	0
_TXB1D2bits	res	1

_TXB1D3	res	0
_TXB1D3bits	res	1

_TXB1D4	res	0
_TXB1D4bits	res	1

_TXB1D5	res	0
_TXB1D5bits	res	1

_TXB1D6	res	0
_TXB1D6bits	res	1

_TXB1D7	res	0
_TXB1D7bits	res	1

_CANSTAT_RO2	res	0
_CANSTAT_RO2bits	res	1

_CANCON_RO2	res	0
_CANCON_RO2bits	res	1

_TXB0CON	res	0
_TXB0CONbits	res	1

_TXB0SIDH	res	0
_TXB0SIDHbits	res	1

_TXB0SIDL	res	0
_TXB0SIDLbits	res	1

_TXB0EIDH	res	0
_TXB0EIDHbits	res	1

_TXB0EIDL	res	0
_TXB0EIDLbits	res	1

_TXB0DLC	res	0
_TXB0DLCbits	res	1

_TXB0D0	res	0
_TXB0D0bits	res	1

_TXB0D1	res	0
_TXB0D1bits	res	1

_TXB0D2	res	0
_TXB0D2bits	res	1

_TXB0D3	res	0
_TXB0D3bits	res	1

_TXB0D4	res	0
_TXB0D4bits	res	1

_TXB0D5	res	0
_TXB0D5bits	res	1

_TXB0D6	res	0
_TXB0D6bits	res	1

_TXB0D7	res	0
_TXB0D7bits	res	1

_CANSTAT_RO1	res	0
_CANSTAT_RO1bits	res	1

_CANCON_RO1	res	0
_CANCON_RO1bits	res	1

_RXB1CON	res	0
_RXB1CONbits	res	1

_RXB1SIDH	res	0
_RXB1SIDHbits	res	1

_RXB1SIDL	res	0
_RXB1SIDLbits	res	1

_RXB1EIDH	res	0
_RXB1EIDHbits	res	1

_RXB1EIDL	res	0
_RXB1EIDLbits	res	1

_RXB1DLC	res	0
_RXB1DLCbits	res	1

_RXB1D0	res	0
_RXB1D0bits	res	1

_RXB1D1	res	0
_RXB1D1bits	res	1

_RXB1D2	res	0
_RXB1D2bits	res	1

_RXB1D3	res	0
_RXB1D3bits	res	1

_RXB1D4	res	0
_RXB1D4bits	res	1

_RXB1D5	res	0
_RXB1D5bits	res	1

_RXB1D6	res	0
_RXB1D6bits	res	1

_RXB1D7	res	0
_RXB1D7bits	res	1

_CANSTAT_RO0	res	0
_CANSTAT_RO0bits	res	1

_CANCON_RO0	res	0
_CANCON_RO0bits	res	1

_RXB0CON	res	0
_RXB0CONbits	res	1

_RXB0SIDH	res	0
_RXB0SIDHbits	res	1

_RXB0SIDL	res	0
_RXB0SIDLbits	res	1

_RXB0EIDH	res	0
_RXB0EIDHbits	res	1

_RXB0EIDL	res	0
_RXB0EIDLbits	res	1

_RXB0DLC	res	0
_RXB0DLCbits	res	1

_RXB0D0	res	0
_RXB0D0bits	res	1

_RXB0D1	res	0
_RXB0D1bits	res	1

_RXB0D2	res	0
_RXB0D2bits	res	1

_RXB0D3	res	0
_RXB0D3bits	res	1

_RXB0D4	res	0
_RXB0D4bits	res	1

_RXB0D5	res	0
_RXB0D5bits	res	1

_RXB0D6	res	0
_RXB0D6bits	res	1

_RXB0D7	res	0
_RXB0D7bits	res	1

_CANSTAT	res	0
_CANSTATbits	res	1

_CANCON	res	0
_CANCONbits	res	1

_BRGCON1	res	0
_BRGCON1bits	res	1

_BRGCON2	res	0
_BRGCON2bits	res	1

_BRGCON3	res	0
_BRGCON3bits	res	1

_CIOCON	res	0
_CIOCONbits	res	1

_COMSTAT	res	0
_COMSTATbits	res	1

_RXERRCNT	res	0
_RXERRCNTbits	res	1

_TXERRCNT	res	0
_TXERRCNTbits	res	1

_ECANCON	res	0
_ECANCONbits	res	1


ustat_pic18f4585_13	udata	0X0F80

_PORTA	res	0
_PORTAbits	res	1

_PORTB	res	0
_PORTBbits	res	1

_PORTC	res	0
_PORTCbits	res	1

_PORTD	res	0
_PORTDbits	res	1

_PORTE	res	0
_PORTEbits	res	1


ustat_pic18f4585_14	udata	0X0F89

_LATA	res	0
_LATAbits	res	1

_LATB	res	0
_LATBbits	res	1

_LATC	res	0
_LATCbits	res	1

_LATD	res	0
_LATDbits	res	1

_LATE	res	0
_LATEbits	res	1


ustat_pic18f4585_15	udata	0X0F92

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

_DDRD	res	0

_DDRDbits	res	0

_TRISD	res	0
_TRISDbits	res	1

_DDRE	res	0

_DDREbits	res	0

_TRISE	res	0
_TRISEbits	res	1


ustat_pic18f4585_16	udata	0X0F9B

_OSCTUNE	res	0
_OSCTUNEbits	res	1


ustat_pic18f4585_17	udata	0X0F9D

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
_EEADRH	res	1

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

_CMCON	res	0
_CMCONbits	res	1

_CVRCON	res	0
_CVRCONbits	res	1

_ECCP1AS	res	0
_ECCP1ASbits	res	1

_ECCP1DEL	res	0
_ECCP1DELbits	res	1

_BAUDCON	res	0
_BAUDCONbits	res	1


ustat_pic18f4585_18	udata	0X0FBA

_ECCP1CON	res	0
_ECCP1CONbits	res	1

_ECCPR1	res	0
_ECCPR1L	res	1
_ECCPR1H	res	1

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

_SSPCON2	res	0
_SSPCON2bits	res	1

_SSPCON1	res	0
_SSPCON1bits	res	1

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

_HLVDCON	res	0

_HLVDCONbits	res	0

_LVDCON	res	0
_LVDCONbits	res	1

_OSCCON	res	0
_OSCCONbits	res	1


ustat_pic18f4585_19	udata	0X0FD5

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
; udata size:	  387 (0x0183) bytes (30.23%)
; access size:	    0 (0x0000) bytes


	end
