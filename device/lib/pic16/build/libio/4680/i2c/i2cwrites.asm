;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:53 2018
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f4680

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global _i2c_writestr

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern __gptrget1
	extern _RXF6SIDHbits
	extern _RXF6SIDLbits
	extern _RXF6EIDHbits
	extern _RXF6EIDLbits
	extern _RXF7SIDHbits
	extern _RXF7SIDLbits
	extern _RXF7EIDHbits
	extern _RXF7EIDLbits
	extern _RXF8SIDHbits
	extern _RXF8SIDLbits
	extern _RXF8EIDHbits
	extern _RXF8EIDLbits
	extern _RXF9SIDHbits
	extern _RXF9SIDLbits
	extern _RXF9EIDHbits
	extern _RXF9EIDLbits
	extern _RXF10SIDHbits
	extern _RXF10SIDLbits
	extern _RXF10EIDHbits
	extern _RXF10EIDLbits
	extern _RXF11SIDHbits
	extern _RXF11SIDLbits
	extern _RXF11EIDHbits
	extern _RXF11EIDLbits
	extern _RXF12SIDHbits
	extern _RXF12SIDLbits
	extern _RXF12EIDHbits
	extern _RXF12EIDLbits
	extern _RXF13SIDHbits
	extern _RXF13SIDLbits
	extern _RXF13EIDHbits
	extern _RXF13EIDLbits
	extern _RXF14SIDHbits
	extern _RXF14SIDLbits
	extern _RXF14EIDHbits
	extern _RXF14EIDLbits
	extern _RXF15SIDHbits
	extern _RXF15SIDLbits
	extern _RXF15EIDHbits
	extern _RXF15EIDLbits
	extern _RXFCON0bits
	extern _RXFCON1bits
	extern _SDFLCbits
	extern _RXFBCON0bits
	extern _RXFBCON1bits
	extern _RXFBCON2bits
	extern _RXFBCON3bits
	extern _RXFBCON4bits
	extern _RXFBCON5bits
	extern _RXFBCON6bits
	extern _RXFBCON7bits
	extern _MSEL0bits
	extern _MSEL1bits
	extern _MSEL2bits
	extern _MSEL3bits
	extern _BSEL0bits
	extern _BIE0bits
	extern _TXBIEbits
	extern _B0CONbits
	extern _B0SIDHbits
	extern _B0SIDLbits
	extern _B0EIDHbits
	extern _B0EIDLbits
	extern _B0DLCbits
	extern _B0D0bits
	extern _B0D1bits
	extern _B0D2bits
	extern _B0D3bits
	extern _B0D4bits
	extern _B0D5bits
	extern _B0D6bits
	extern _B0D7bits
	extern _CANSTAT_RO9bits
	extern _CANCON_RO9bits
	extern _B1CONbits
	extern _B1SIDHbits
	extern _B1SIDLbits
	extern _B1EIDHbits
	extern _B1EIDLbits
	extern _B1DLCbits
	extern _B1D0bits
	extern _B1D1bits
	extern _B1D2bits
	extern _B1D3bits
	extern _B1D4bits
	extern _B1D5bits
	extern _B1D6bits
	extern _B1D7bits
	extern _CANSTAT_RO8bits
	extern _CANCON_RO8bits
	extern _B2CONbits
	extern _B2SIDHbits
	extern _B2SIDLbits
	extern _B2EIDHbits
	extern _B2EIDLbits
	extern _B2DLCbits
	extern _B2D0bits
	extern _B2D1bits
	extern _B2D2bits
	extern _B2D3bits
	extern _B2D4bits
	extern _B2D5bits
	extern _B2D6bits
	extern _B2D7bits
	extern _CANSTAT_RO7bits
	extern _CANCON_RO7bits
	extern _B3CONbits
	extern _B3SIDHbits
	extern _B3SIDLbits
	extern _B3EIDHbits
	extern _B3EIDLbits
	extern _B3DLCbits
	extern _B3D0bits
	extern _B3D1bits
	extern _B3D2bits
	extern _B3D3bits
	extern _B3D4bits
	extern _B3D5bits
	extern _B3D6bits
	extern _B3D7bits
	extern _CANSTAT_RO6bits
	extern _CANCON_RO6bits
	extern _B4CONbits
	extern _B4SIDHbits
	extern _B4SIDLbits
	extern _B4EIDHbits
	extern _B4EIDLbits
	extern _B4DLCbits
	extern _B4D0bits
	extern _B4D1bits
	extern _B4D2bits
	extern _B4D3bits
	extern _B4D4bits
	extern _B4D5bits
	extern _B4D6bits
	extern _B4D7bits
	extern _CANSTAT_RO5bits
	extern _CANCON_RO5bits
	extern _B5CONbits
	extern _B5SIDHbits
	extern _B5SIDLbits
	extern _B5EIDHbits
	extern _B5EIDLbits
	extern _B5DLCbits
	extern _B5D0bits
	extern _B5D1bits
	extern _B5D2bits
	extern _B5D3bits
	extern _B5D4bits
	extern _B5D5bits
	extern _B5D6bits
	extern _B5D7bits
	extern _CANSTAT_RO4bits
	extern _CANCON_RO4bits
	extern _RXF0SIDHbits
	extern _RXF0SIDLbits
	extern _RXF0EIDHbits
	extern _RXF0EIDLbits
	extern _RXF1SIDHbits
	extern _RXF1SIDLbits
	extern _RXF1EIDHbits
	extern _RXF1EIDLbits
	extern _RXF2SIDHbits
	extern _RXF2SIDLbits
	extern _RXF2EIDHbits
	extern _RXF2EIDLbits
	extern _RXF3SIDHbits
	extern _RXF3SIDLbits
	extern _RXF3EIDHbits
	extern _RXF3EIDLbits
	extern _RXF4SIDHbits
	extern _RXF4SIDLbits
	extern _RXF4EIDHbits
	extern _RXF4EIDLbits
	extern _RXF5SIDHbits
	extern _RXF5SIDLbits
	extern _RXF5EIDHbits
	extern _RXF5EIDLbits
	extern _RXM0SIDHbits
	extern _RXM0SIDLbits
	extern _RXM0EIDHbits
	extern _RXM0EIDLbits
	extern _RXM1SIDHbits
	extern _RXM1SIDLbits
	extern _RXM1EIDHbits
	extern _RXM1EIDLbits
	extern _TXB2CONbits
	extern _TXB2SIDHbits
	extern _TXB2SIDLbits
	extern _TXB2EIDHbits
	extern _TXB2EIDLbits
	extern _TXB2DLCbits
	extern _TXB2D0bits
	extern _TXB2D1bits
	extern _TXB2D2bits
	extern _TXB2D3bits
	extern _TXB2D4bits
	extern _TXB2D5bits
	extern _TXB2D6bits
	extern _TXB2D7bits
	extern _CANSTAT_RO3bits
	extern _CANCON_RO3bits
	extern _TXB1CONbits
	extern _TXB1SIDHbits
	extern _TXB1SIDLbits
	extern _TXB1EIDHbits
	extern _TXB1EIDLbits
	extern _TXB1DLCbits
	extern _TXB1D0bits
	extern _TXB1D1bits
	extern _TXB1D2bits
	extern _TXB1D3bits
	extern _TXB1D4bits
	extern _TXB1D5bits
	extern _TXB1D6bits
	extern _TXB1D7bits
	extern _CANSTAT_RO2bits
	extern _CANCON_RO2bits
	extern _TXB0CONbits
	extern _TXB0SIDHbits
	extern _TXB0SIDLbits
	extern _TXB0EIDHbits
	extern _TXB0EIDLbits
	extern _TXB0DLCbits
	extern _TXB0D0bits
	extern _TXB0D1bits
	extern _TXB0D2bits
	extern _TXB0D3bits
	extern _TXB0D4bits
	extern _TXB0D5bits
	extern _TXB0D6bits
	extern _TXB0D7bits
	extern _CANSTAT_RO1bits
	extern _CANCON_RO1bits
	extern _RXB1CONbits
	extern _RXB1SIDHbits
	extern _RXB1SIDLbits
	extern _RXB1EIDHbits
	extern _RXB1EIDLbits
	extern _RXB1DLCbits
	extern _RXB1D0bits
	extern _RXB1D1bits
	extern _RXB1D2bits
	extern _RXB1D3bits
	extern _RXB1D4bits
	extern _RXB1D5bits
	extern _RXB1D6bits
	extern _RXB1D7bits
	extern _CANSTAT_RO0bits
	extern _CANCON_RO0bits
	extern _RXB0CONbits
	extern _RXB0SIDHbits
	extern _RXB0SIDLbits
	extern _RXB0EIDHbits
	extern _RXB0EIDLbits
	extern _RXB0DLCbits
	extern _RXB0D0bits
	extern _RXB0D1bits
	extern _RXB0D2bits
	extern _RXB0D3bits
	extern _RXB0D4bits
	extern _RXB0D5bits
	extern _RXB0D6bits
	extern _RXB0D7bits
	extern _CANSTATbits
	extern _CANCONbits
	extern _BRGCON1bits
	extern _BRGCON2bits
	extern _BRGCON3bits
	extern _CIOCONbits
	extern _COMSTATbits
	extern _RXERRCNTbits
	extern _TXERRCNTbits
	extern _ECANCONbits
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
	extern _RCSTAbits
	extern _TXSTAbits
	extern _T3CONbits
	extern _CMCONbits
	extern _CVRCONbits
	extern _ECCP1ASbits
	extern _ECCP1DELbits
	extern _BAUDCONbits
	extern _ECCP1CONbits
	extern _CCP1CONbits
	extern _ADCON2bits
	extern _ADCON1bits
	extern _ADCON0bits
	extern _SSPCON2bits
	extern _SSPCON1bits
	extern _SSPSTATbits
	extern _T2CONbits
	extern _T1CONbits
	extern _RCONbits
	extern _WDTCONbits
	extern _HLVDCONbits
	extern _LVDCONbits
	extern _OSCCONbits
	extern _T0CONbits
	extern _STATUSbits
	extern _INTCON3bits
	extern _INTCON2bits
	extern _INTCONbits
	extern _STKPTRbits
	extern _RXF6SIDH
	extern _RXF6SIDL
	extern _RXF6EIDH
	extern _RXF6EIDL
	extern _RXF7SIDH
	extern _RXF7SIDL
	extern _RXF7EIDH
	extern _RXF7EIDL
	extern _RXF8SIDH
	extern _RXF8SIDL
	extern _RXF8EIDH
	extern _RXF8EIDL
	extern _RXF9SIDH
	extern _RXF9SIDL
	extern _RXF9EIDH
	extern _RXF9EIDL
	extern _RXF10SIDH
	extern _RXF10SIDL
	extern _RXF10EIDH
	extern _RXF10EIDL
	extern _RXF11SIDH
	extern _RXF11SIDL
	extern _RXF11EIDH
	extern _RXF11EIDL
	extern _RXF12SIDH
	extern _RXF12SIDL
	extern _RXF12EIDH
	extern _RXF12EIDL
	extern _RXF13SIDH
	extern _RXF13SIDL
	extern _RXF13EIDH
	extern _RXF13EIDL
	extern _RXF14SIDH
	extern _RXF14SIDL
	extern _RXF14EIDH
	extern _RXF14EIDL
	extern _RXF15SIDH
	extern _RXF15SIDL
	extern _RXF15EIDH
	extern _RXF15EIDL
	extern _RXFCON0
	extern _RXFCON1
	extern _SDFLC
	extern _RXFBCON0
	extern _RXFBCON1
	extern _RXFBCON2
	extern _RXFBCON3
	extern _RXFBCON4
	extern _RXFBCON5
	extern _RXFBCON6
	extern _RXFBCON7
	extern _MSEL0
	extern _MSEL1
	extern _MSEL2
	extern _MSEL3
	extern _BSEL0
	extern _BIE0
	extern _TXBIE
	extern _B0CON
	extern _B0SIDH
	extern _B0SIDL
	extern _B0EIDH
	extern _B0EIDL
	extern _B0DLC
	extern _B0D0
	extern _B0D1
	extern _B0D2
	extern _B0D3
	extern _B0D4
	extern _B0D5
	extern _B0D6
	extern _B0D7
	extern _CANSTAT_RO9
	extern _CANCON_RO9
	extern _B1CON
	extern _B1SIDH
	extern _B1SIDL
	extern _B1EIDH
	extern _B1EIDL
	extern _B1DLC
	extern _B1D0
	extern _B1D1
	extern _B1D2
	extern _B1D3
	extern _B1D4
	extern _B1D5
	extern _B1D6
	extern _B1D7
	extern _CANSTAT_RO8
	extern _CANCON_RO8
	extern _B2CON
	extern _B2SIDH
	extern _B2SIDL
	extern _B2EIDH
	extern _B2EIDL
	extern _B2DLC
	extern _B2D0
	extern _B2D1
	extern _B2D2
	extern _B2D3
	extern _B2D4
	extern _B2D5
	extern _B2D6
	extern _B2D7
	extern _CANSTAT_RO7
	extern _CANCON_RO7
	extern _B3CON
	extern _B3SIDH
	extern _B3SIDL
	extern _B3EIDH
	extern _B3EIDL
	extern _B3DLC
	extern _B3D0
	extern _B3D1
	extern _B3D2
	extern _B3D3
	extern _B3D4
	extern _B3D5
	extern _B3D6
	extern _B3D7
	extern _CANSTAT_RO6
	extern _CANCON_RO6
	extern _B4CON
	extern _B4SIDH
	extern _B4SIDL
	extern _B4EIDH
	extern _B4EIDL
	extern _B4DLC
	extern _B4D0
	extern _B4D1
	extern _B4D2
	extern _B4D3
	extern _B4D4
	extern _B4D5
	extern _B4D6
	extern _B4D7
	extern _CANSTAT_RO5
	extern _CANCON_RO5
	extern _B5CON
	extern _B5SIDH
	extern _B5SIDL
	extern _B5EIDH
	extern _B5EIDL
	extern _B5DLC
	extern _B5D0
	extern _B5D1
	extern _B5D2
	extern _B5D3
	extern _B5D4
	extern _B5D5
	extern _B5D6
	extern _B5D7
	extern _CANSTAT_RO4
	extern _CANCON_RO4
	extern _RXF0SIDH
	extern _RXF0SIDL
	extern _RXF0EIDH
	extern _RXF0EIDL
	extern _RXF1SIDH
	extern _RXF1SIDL
	extern _RXF1EIDH
	extern _RXF1EIDL
	extern _RXF2SIDH
	extern _RXF2SIDL
	extern _RXF2EIDH
	extern _RXF2EIDL
	extern _RXF3SIDH
	extern _RXF3SIDL
	extern _RXF3EIDH
	extern _RXF3EIDL
	extern _RXF4SIDH
	extern _RXF4SIDL
	extern _RXF4EIDH
	extern _RXF4EIDL
	extern _RXF5SIDH
	extern _RXF5SIDL
	extern _RXF5EIDH
	extern _RXF5EIDL
	extern _RXM0SIDH
	extern _RXM0SIDL
	extern _RXM0EIDH
	extern _RXM0EIDL
	extern _RXM1SIDH
	extern _RXM1SIDL
	extern _RXM1EIDH
	extern _RXM1EIDL
	extern _TXB2CON
	extern _TXB2SIDH
	extern _TXB2SIDL
	extern _TXB2EIDH
	extern _TXB2EIDL
	extern _TXB2DLC
	extern _TXB2D0
	extern _TXB2D1
	extern _TXB2D2
	extern _TXB2D3
	extern _TXB2D4
	extern _TXB2D5
	extern _TXB2D6
	extern _TXB2D7
	extern _CANSTAT_RO3
	extern _CANCON_RO3
	extern _TXB1CON
	extern _TXB1SIDH
	extern _TXB1SIDL
	extern _TXB1EIDH
	extern _TXB1EIDL
	extern _TXB1DLC
	extern _TXB1D0
	extern _TXB1D1
	extern _TXB1D2
	extern _TXB1D3
	extern _TXB1D4
	extern _TXB1D5
	extern _TXB1D6
	extern _TXB1D7
	extern _CANSTAT_RO2
	extern _CANCON_RO2
	extern _TXB0CON
	extern _TXB0SIDH
	extern _TXB0SIDL
	extern _TXB0EIDH
	extern _TXB0EIDL
	extern _TXB0DLC
	extern _TXB0D0
	extern _TXB0D1
	extern _TXB0D2
	extern _TXB0D3
	extern _TXB0D4
	extern _TXB0D5
	extern _TXB0D6
	extern _TXB0D7
	extern _CANSTAT_RO1
	extern _CANCON_RO1
	extern _RXB1CON
	extern _RXB1SIDH
	extern _RXB1SIDL
	extern _RXB1EIDH
	extern _RXB1EIDL
	extern _RXB1DLC
	extern _RXB1D0
	extern _RXB1D1
	extern _RXB1D2
	extern _RXB1D3
	extern _RXB1D4
	extern _RXB1D5
	extern _RXB1D6
	extern _RXB1D7
	extern _CANSTAT_RO0
	extern _CANCON_RO0
	extern _RXB0CON
	extern _RXB0SIDH
	extern _RXB0SIDL
	extern _RXB0EIDH
	extern _RXB0EIDL
	extern _RXB0DLC
	extern _RXB0D0
	extern _RXB0D1
	extern _RXB0D2
	extern _RXB0D3
	extern _RXB0D4
	extern _RXB0D5
	extern _RXB0D6
	extern _RXB0D7
	extern _CANSTAT
	extern _CANCON
	extern _BRGCON1
	extern _BRGCON2
	extern _BRGCON3
	extern _CIOCON
	extern _COMSTAT
	extern _RXERRCNT
	extern _TXERRCNT
	extern _ECANCON
	extern _PORTA
	extern _PORTB
	extern _PORTC
	extern _PORTD
	extern _PORTE
	extern _LATA
	extern _LATB
	extern _LATC
	extern _LATD
	extern _LATE
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
	extern _EEADRH
	extern _RCSTA
	extern _TXSTA
	extern _TXREG
	extern _RCREG
	extern _SPBRG
	extern _SPBRGH
	extern _T3CON
	extern _TMR3L
	extern _TMR3H
	extern _CMCON
	extern _CVRCON
	extern _ECCP1AS
	extern _ECCP1DEL
	extern _BAUDCON
	extern _ECCP1CON
	extern _ECCPR1
	extern _ECCPR1L
	extern _ECCPR1H
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
	extern _SSPCON2
	extern _SSPCON1
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
	extern _HLVDCON
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
	extern _i2c_writechar
;--------------------------------------------------------
;	Equates to used internal registers
;--------------------------------------------------------
STATUS	equ	0xfd8
WREG	equ	0xfe8
FSR0L	equ	0xfe9
FSR1L	equ	0xfe1
FSR2L	equ	0xfd9
POSTDEC1	equ	0xfe5
PREINC1	equ	0xfe4
PLUSW2	equ	0xfdb
PRODL	equ	0xff3


; Internal registers
.registers	udata_ovr	0x0000
r0x00	res	1
r0x01	res	1
r0x02	res	1
r0x03	res	1
r0x04	res	1
r0x05	res	1

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($21) :
; ;ic:2: 	proc _i2c_writestr [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( unsigned-char generic* ) }
S_i2cwrites__i2c_writestr	code
_i2c_writestr:
;	.line	6; i2cwrites.c	char i2c_writestr(unsigned char *ptr)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
; ;ic:3: iTemp0 [k2 lr3:5 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* }{ sir@ _i2c_writestr_ptr_1_1}[r0x00 r0x01 r0x02 ] = recv _i2c_writestr [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( unsigned-char generic* ) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
; ;ic:5: 	iTemp35 [k53 lr5:56 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x00 r0x01 r0x02 ] := iTemp0 [k2 lr3:5 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* }{ sir@ _i2c_writestr_ptr_1_1}[r0x00 r0x01 r0x02 ]
; ;ic:6:  _whilecontinue_0($17) :
; ;ic:7: 	iTemp2 [k5 lr7:35 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x03 ] = @[iTemp35 [k53 lr5:56 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x00 r0x01 r0x02 ]]
_00121_DS_:
;	.line	8; i2cwrites.c	while( *ptr ) {
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget1
	MOVWF	r0x03
; ;ic:8: 	if iTemp2 [k5 lr7:35 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x03 ] == 0 goto _whilebreak_0($19)
	MOVF	r0x03, W
	BZ	_00123_DS_
; ;ic:9: 	iTemp3 [k7 lr9:10 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* }[remat] = &[_SSPCON1bits [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00011309}]
; ;ic:10: 	iTemp4 [k9 lr10:11 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* }[remat] := iTemp3 [k7 lr9:10 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* }[remat]
; ;ic:11: 	iTemp5 [k10 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1}}[bad ] = @[iTemp4 [k9 lr10:11 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* }[remat]]
;	.line	9; i2cwrites.c	if( SSPCON1bits.SSPM3 ) {
	BTFSS	_SSPCON1bits, 3
	BRA	_00119_DS_
; ;ic:12: 	if iTemp5 [k10 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1}}[bad ] == 0 goto _iffalse_3($15)
; ;ic:13: 	send iTemp2 [k5 lr7:35 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x03 ]{argreg = 1}
; ;ic:14: 	iTemp8 [k14 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x04 ] = call _i2c_writechar [k11 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( unsigned-char) }
;	.line	10; i2cwrites.c	if(i2c_writechar( *ptr )) {
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	CALL	_i2c_writechar
	MOVWF	r0x04
	INCF	FSR1L, F
; ;ic:15: 	if iTemp8 [k14 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x04 ] == 0 goto _whilecontinue_1($3)
	MOVF	r0x04, W
	BZ	_00107_DS_
; ;ic:16: 	ret 0xfffffffd {literal-char}
;	.line	11; i2cwrites.c	return (-3);
	MOVLW	0xfd
	BRA	_00124_DS_
; ;ic:18:  _whilecontinue_1($3) :
; ;ic:19: 	iTemp9 [k16 lr19:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x04 ] = _SSPCON2 [k15 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{sfr-volatile-unsigned-char} & 0x1f {literal-unsigned-char}
_00107_DS_:
;	.line	13; i2cwrites.c	I2C_IDLE();
	MOVLW	0x1f
	ANDWF	_SSPCON2, W
	MOVWF	r0x04
; ;ic:20: 	iTemp10 [k18 lr20:21 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* }[remat] = &[_SSPSTATbits [k17 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00011311}]
; ;ic:21: 	iTemp11 [k20 lr21:22 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* }[remat] := iTemp10 [k18 lr20:21 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* }[remat]
; ;ic:22: 	iTemp12 [k21 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1}}[r0x05 ] = @[iTemp11 [k20 lr21:22 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* }[remat]]
	CLRF	r0x05
	BTFSC	_SSPSTATbits, 2
	INCF	r0x05, F
; ;ic:23: 	iTemp14 [k23 lr23:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x05 ] := iTemp12 [k21 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1}}[r0x05 ]
; ;ic:24: 	iTemp15 [k24 lr24:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x04 ] = iTemp9 [k16 lr19:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x04 ] | iTemp14 [k23 lr23:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x05 ]
	MOVF	r0x05, W
	IORWF	r0x04, F
; ;ic:25: 	if iTemp15 [k24 lr24:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char}[r0x04 ] != 0 goto _whilecontinue_1($3)
	MOVF	r0x04, W
	BNZ	_00107_DS_
; ;ic:26: 	iTemp16 [k26 lr26:27 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* }[remat] = &[_SSPCON2bits [k25 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00011307}]
; ;ic:27: 	iTemp17 [k28 lr27:28 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* }[remat] := iTemp16 [k26 lr26:27 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* }[remat]
; ;ic:28: 	iTemp18 [k29 lr28:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1}}[bad ] = @[iTemp17 [k28 lr27:28 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* }[remat]]
;	.line	14; i2cwrites.c	if( SSPCON2bits.ACKSTAT ) {
	BTFSS	_SSPCON2bits, 6
	BRA	_00120_DS_
; ;ic:29: 	if iTemp18 [k29 lr28:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1}}[bad ] == 0 goto _ifend_3($16)
; ;ic:30: 	ret 0xfffffffe {literal-char}
;	.line	15; i2cwrites.c	return (-2);
	MOVLW	0xfe
	BRA	_00124_DS_
; ;ic:31:  _iffalse_3($15) :
; ;ic:32: 	iTemp19 [k31 lr32:33 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* }[remat] = &[_PIR1bits [k30 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00011137}]
; ;ic:33: 	iTemp20 [k33 lr33:34 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* }[remat] := iTemp19 [k31 lr32:33 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* }[remat]
; ;ic:34: 	*(iTemp20 [k33 lr33:34 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* }[remat]) := 0x0 {literal-unsigned-char}
_00119_DS_:
;	.line	18; i2cwrites.c	PIR1bits.SSPIF = 0;
	BCF	_PIR1bits, 3
; ;ic:35: 	_SSPBUF [k34 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{sfr-volatile-unsigned-char} := iTemp2 [k5 lr7:35 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x03 ]
;	.line	19; i2cwrites.c	SSPBUF = *ptr;
	MOVFF	r0x03, _SSPBUF
; ;ic:36: 	iTemp23 [k37 lr36:37 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* }[remat] = &[_SSPCON1bits [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00011309}]
; ;ic:37: 	iTemp24 [k39 lr37:38 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* }[remat] := iTemp23 [k37 lr36:37 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* }[remat]
; ;ic:38: 	*(iTemp24 [k39 lr37:38 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* }[remat]) := 0x1 {literal-unsigned-char}
;	.line	20; i2cwrites.c	SSPCON1bits.CKP = 1;
	BSF	_SSPCON1bits, 4
; ;ic:40:  _whilecontinue_2($8) :
; ;ic:41: 	iTemp25 [k40 lr41:42 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* }[remat] = &[_PIR1bits [k30 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00011137}]
; ;ic:42: 	iTemp26 [k42 lr42:43 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* }[remat] := iTemp25 [k40 lr41:42 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* }[remat]
; ;ic:43: 	iTemp27 [k43 lr43:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1}}[bad ] = @[iTemp26 [k42 lr42:43 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* }[remat]]
_00112_DS_:
;	.line	21; i2cwrites.c	while( !PIR1bits.SSPIF );
	BTFSS	_PIR1bits, 3
	BRA	_00112_DS_
; ;ic:44: 	if iTemp27 [k43 lr43:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1}}[bad ] == 0 goto _whilecontinue_2($8)
; ;ic:45: 	iTemp28 [k44 lr45:46 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* }[remat] = &[_SSPSTATbits [k17 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00011311}]
; ;ic:46: 	iTemp29 [k46 lr46:47 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* }[remat] := iTemp28 [k44 lr45:46 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* }[remat]
; ;ic:47: 	iTemp30 [k47 lr47:48 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1}}[bad ] = @[iTemp29 [k46 lr46:47 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* }[remat]]
;	.line	23; i2cwrites.c	if((!SSPSTATbits.R_W) && ( !SSPSTATbits.BF )) {
	BTFSC	_SSPSTATbits, 2
	BRA	_00120_DS_
; ;ic:48: 	if iTemp30 [k47 lr47:48 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1}}[bad ] != 0 goto _ifend_3($16)
; ;ic:49: 	iTemp31 [k48 lr49:50 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1} near* }[remat] = &[_SSPSTATbits [k17 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00011311}]
; ;ic:50: 	iTemp32 [k50 lr50:51 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1} near* }[remat] := iTemp31 [k48 lr49:50 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1} near* }[remat]
; ;ic:51: 	iTemp33 [k51 lr51:52 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1}}[bad ] = @[iTemp32 [k50 lr50:51 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1} near* }[remat]]
	BTFSC	_SSPSTATbits, 0
	BRA	_00120_DS_
; ;ic:52: 	if iTemp33 [k51 lr51:52 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1}}[bad ] != 0 goto _ifend_3($16)
; ;ic:53: 	ret 0xfffffffe {literal-char}
;	.line	24; i2cwrites.c	return (-2);
	MOVLW	0xfe
	BRA	_00124_DS_
; ;ic:54:  _ifend_3($16) :
; ;ic:55: 	iTemp35 [k53 lr5:56 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x00 r0x01 r0x02 ] = iTemp35 [k53 lr5:56 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* }[r0x00 r0x01 r0x02 ] + 0x1 {literal-unsigned-char}
_00120_DS_:
;	.line	28; i2cwrites.c	ptr++;
	INCF	r0x00, F
	BTFSC	STATUS, 0
	INCF	r0x01, F
	BTFSC	STATUS, 0
	INCF	r0x02, F
; ;ic:56: 	 goto _whilecontinue_0($17)
	BRA	_00121_DS_
; ;ic:57:  _whilebreak_0($19) :
; ;ic:58: 	ret 0x0 {literal-char}
_00123_DS_:
;	.line	31; i2cwrites.c	return 0;
	CLRF	WREG
; ;ic:59:  _return($20) :
; ;ic:60: 	eproc _i2c_writestr [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( unsigned-char generic* ) }
_00124_DS_:
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	



; Statistics:
; code size:	  190 (0x00be) bytes ( 0.14%)
;           	   95 (0x005f) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    6 (0x0006) bytes


	end
