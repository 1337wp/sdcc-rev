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
	global _CANSTATRO4bits
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
	global _CANSTATRO3bits
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
	global _CANSTATRO2bits
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
	global _CANSTATRO1bits
	global _RXB0CONbits
	global _RXB0SIDHbits
	global _RXB0SIDLbits
	global _RXB0EIDHbits
	global _RXB0EIDLbits
	global _RXB0DLCbits
	global _CANSTATbits
	global _CANCONbits
	global _BRGCON1bits
	global _BRGCON2bits
	global _BRGCON3bits
	global _CIOCONbits
	global _COMSTATbits
	global _RXERRCNTbits
	global _TXERRCNTbits
	global _PORTAbits
	global _PORTBbits
	global _PORTCbits
	global _LATAbits
	global _LATBbits
	global _LATCbits
	global _TRISAbits
	global _TRISBbits
	global _TRISCbits
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
	global _CCP1CONbits
	global _ADCON1bits
	global _ADCON0bits
	global _SSPCON2bits
	global _SSPCON1bits
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
	global _CANSTATRO4
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
	global _CANSTATRO3
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
	global _CANSTATRO2
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
	global _CANSTATRO1
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
	global _PORTA
	global _PORTB
	global _PORTC
	global _LATA
	global _LATB
	global _LATC
	global _TRISA
	global _TRISB
	global _TRISC
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
	global _RCSTA
	global _TXSTA
	global _TXREG
	global _RCREG
	global _SPBRG
	global _T3CON
	global _TMR3L
	global _TMR3H
	global _CCP1CON
	global _CCPR1L
	global _CCPR1H
	global _ADCON1
	global _ADCON0
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


ustat_pic18f258_00	udata	0X0F00

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

_CANSTATRO4	res	0
_CANSTATRO4bits	res	1


ustat_pic18f258_01	udata	0X0F30

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

_CANSTATRO3	res	0
_CANSTATRO3bits	res	1


ustat_pic18f258_02	udata	0X0F40

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

_CANSTATRO2	res	0
_CANSTATRO2bits	res	1


ustat_pic18f258_03	udata	0X0F50

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

_CANSTATRO1	res	0
_CANSTATRO1bits	res	1


ustat_pic18f258_04	udata	0X0F60

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
_RXB0D0	res	1
_RXB0D1	res	1
_RXB0D2	res	1
_RXB0D3	res	1
_RXB0D4	res	1
_RXB0D5	res	1
_RXB0D6	res	1
_RXB0D7	res	1

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


ustat_pic18f258_05	udata	0X0F80

_PORTA	res	0
_PORTAbits	res	1

_PORTB	res	0
_PORTBbits	res	1

_PORTC	res	0
_PORTCbits	res	1


ustat_pic18f258_06	udata	0X0F89

_LATA	res	0
_LATAbits	res	1

_LATB	res	0
_LATBbits	res	1

_LATC	res	0
_LATCbits	res	1


ustat_pic18f258_07	udata	0X0F92

_TRISA	res	0
_TRISAbits	res	1

_TRISB	res	0
_TRISBbits	res	1

_TRISC	res	0
_TRISCbits	res	1


ustat_pic18f258_08	udata	0X0F9D

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


ustat_pic18f258_09	udata	0X0FAB

_RCSTA	res	0
_RCSTAbits	res	1

_TXSTA	res	0
_TXSTAbits	res	1
_TXREG	res	1
_RCREG	res	1
_SPBRG	res	1


ustat_pic18f258_10	udata	0X0FB1

_T3CON	res	0
_T3CONbits	res	1
_TMR3L	res	1
_TMR3H	res	1


ustat_pic18f258_11	udata	0X0FBD

_CCP1CON	res	0
_CCP1CONbits	res	1
_CCPR1L	res	1
_CCPR1H	res	1


ustat_pic18f258_12	udata	0X0FC1

_ADCON1	res	0
_ADCON1bits	res	1

_ADCON0	res	0
_ADCON0bits	res	1
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

_LVDCON	res	0
_LVDCONbits	res	1

_OSCCON	res	0
_OSCCONbits	res	1


ustat_pic18f258_13	udata	0X0FD5

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
; udata size:	  210 (0x00d2) bytes (16.41%)
; access size:	    0 (0x0000) bytes


	end
