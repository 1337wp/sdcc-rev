;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:35 2018
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f248

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global _usart_getc

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
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
	extern _CANSTATRO4bits
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
	extern _CANSTATRO3bits
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
	extern _CANSTATRO2bits
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
	extern _CANSTATRO1bits
	extern _RXB0CONbits
	extern _RXB0SIDHbits
	extern _RXB0SIDLbits
	extern _RXB0EIDHbits
	extern _RXB0EIDLbits
	extern _RXB0DLCbits
	extern _CANSTATbits
	extern _CANCONbits
	extern _BRGCON1bits
	extern _BRGCON2bits
	extern _BRGCON3bits
	extern _CIOCONbits
	extern _COMSTATbits
	extern _RXERRCNTbits
	extern _TXERRCNTbits
	extern _PORTAbits
	extern _PORTBbits
	extern _PORTCbits
	extern _LATAbits
	extern _LATBbits
	extern _LATCbits
	extern _TRISAbits
	extern _TRISBbits
	extern _TRISCbits
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
	extern _CCP1CONbits
	extern _ADCON1bits
	extern _ADCON0bits
	extern _SSPCON2bits
	extern _SSPCON1bits
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
	extern _USART_Status
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
	extern _CANSTATRO4
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
	extern _CANSTATRO3
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
	extern _CANSTATRO2
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
	extern _CANSTATRO1
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
	extern _PORTA
	extern _PORTB
	extern _PORTC
	extern _LATA
	extern _LATB
	extern _LATC
	extern _TRISA
	extern _TRISB
	extern _TRISC
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
	extern _RCSTA
	extern _TXSTA
	extern _TXREG
	extern _RCREG
	extern _SPBRG
	extern _T3CON
	extern _TMR3L
	extern _TMR3H
	extern _CCP1CON
	extern _CCPR1L
	extern _CCPR1H
	extern _ADCON1
	extern _ADCON0
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
	extern _PRODL
	extern _PRODH
	extern _TABLAT
	extern _TBLPTRL
	extern _TBLPTRH
	extern _TBLPTRU
	extern _PCL
	extern _PCLATH
	extern _PCLATU
	extern _STKPTR
	extern _TOSL
	extern _TOSH
	extern _TOSU
;--------------------------------------------------------
;	Equates to used internal registers
;--------------------------------------------------------
WREG	equ	0xfe8
POSTDEC1	equ	0xfe5
PREINC1	equ	0xfe4

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($10) :
; ;ic:2: 	proc _usart_getc [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char function    ( ) }
S_ugetc__usart_getc	code
_usart_getc:
; ;ic:3: 	iTemp0 [k3 lr3:31 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-char near* }[remat] = &[_USART_Status [k2 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct USART}]
; ;ic:4: 	iTemp4 [k9 lr4:5 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}{ sir@ _USART_Status} = @[iTemp0 [k3 lr3:31 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-char near* }[remat]]
; ;ic:5: 	iTemp5 [k10 lr5:6 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x00 ] = iTemp4 [k9 lr4:5 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char}{ sir@ _USART_Status} & 0xf0 {literal-unsigned-char}
;	.line	38; ugetc.c	USART_Status.val &= 0xf0;
	MOVLW	0xf0
	BANKSEL	_USART_Status
	ANDWF	_USART_Status, W, B
; #	MOVWF	r0x00
; #;;ic:6: 	*(iTemp0 [k3 lr3:31 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-char near* }[remat]) := iTemp5 [k10 lr5:6 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x00 ]
; #	MOVF	r0x00, W
	MOVWF	_USART_Status, B
; ;ic:7: 	iTemp6 [k12 lr7:8 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* }[remat] = &[_RCSTAbits [k11 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00010349}]
; ;ic:8: 	iTemp7 [k14 lr8:9 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* }[remat] := iTemp6 [k12 lr7:8 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* }[remat]
; ;ic:9: 	iTemp8 [k15 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1}}[bad ] = @[iTemp7 [k14 lr8:9 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* }[remat]]
;	.line	40; ugetc.c	if(RCSTAbits.RX9) {
	BTFSS	_RCSTAbits, 6
	BRA	_00108_DS_
; ;ic:10: 	if iTemp8 [k15 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1}}[bad ] == 0 goto _iffalse_1($4)
; ;ic:11: 	iTemp10 [k18 lr11:12 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {0,1} near* }[remat] := iTemp0 [k3 lr3:31 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-char near* }[remat]
; ;ic:12: 	*(iTemp10 [k18 lr11:12 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {0,1} near* }[remat]) := 0x0 {literal-unsigned-char}
; #	BCF	_USART_Status, 0, B
; #;;ic:13: 	iTemp11 [k19 lr13:14 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1} near* }[remat] = &[_RCSTAbits [k11 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00010349}]
; #;;ic:14: 	iTemp12 [k21 lr14:15 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1} near* }[remat] := iTemp11 [k19 lr13:14 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1} near* }[remat]
; #;;ic:15: 	iTemp13 [k22 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1}}[bad ] = @[iTemp12 [k21 lr14:15 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1} near* }[remat]]
; #	BTFSS	_RCSTAbits, 0
; #	GOTO	_00108_DS_
; #;;ic:16: 	if iTemp13 [k22 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1}}[bad ] == 0 goto _iffalse_1($4)
; #;;ic:17: 	iTemp15 [k25 lr17:18 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {0,1} near* }[remat] := iTemp0 [k3 lr3:31 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-char near* }[remat]
; #;;ic:18: 	*(iTemp15 [k25 lr17:18 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {0,1} near* }[remat]) := 0x1 {literal-unsigned-char}
; #	BSF	_USART_Status, 0, B
; #;;ic:19:  _iffalse_1($4) :
; #;;ic:20: 	iTemp16 [k26 lr20:21 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* }[remat] = &[_RCSTAbits [k11 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00010349}]
; #;;ic:21: 	iTemp17 [k28 lr21:22 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* }[remat] := iTemp16 [k26 lr20:21 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* }[remat]
; #;;ic:22: 	iTemp18 [k29 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1}}[bad ] = @[iTemp17 [k28 lr21:22 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* }[remat]]
; #	BTFSS	_RCSTAbits, 2
; removed redundant BANKSEL
;	.line	41; ugetc.c	USART_Status.RX_NINE = 0;
	BCF	_USART_Status, 0, B
;	.line	42; ugetc.c	if(RCSTAbits.RX9D)
	BTFSS	_RCSTAbits, 0
	BRA	_10105_DS_
; removed redundant BANKSEL
;	.line	43; ugetc.c	USART_Status.RX_NINE = 1;
	BSF	_USART_Status, 0, B
_10105_DS_:
_00108_DS_:
;	.line	46; ugetc.c	if(RCSTAbits.FERR)
	BTFSS	_RCSTAbits, 2
	BRA	_00110_DS_
; ;ic:23: 	if iTemp18 [k29 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1}}[bad ] == 0 goto _iffalse_2($6)
; ;ic:24: 	iTemp20 [k32 lr24:25 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {2,1} near* }[remat] := iTemp0 [k3 lr3:31 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-char near* }[remat]
; ;ic:25: 	*(iTemp20 [k32 lr24:25 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {2,1} near* }[remat]) := 0x1 {literal-unsigned-char}
	BANKSEL	_USART_Status
;	.line	47; ugetc.c	USART_Status.FRAME_ERROR = 1;
	BSF	_USART_Status, 2, B
; ;ic:26:  _iffalse_2($6) :
; ;ic:27: 	iTemp21 [k33 lr27:28 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {1,1} near* }[remat] = &[_RCSTAbits [k11 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00010349}]
; ;ic:28: 	iTemp22 [k35 lr28:29 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {1,1} near* }[remat] := iTemp21 [k33 lr27:28 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {1,1} near* }[remat]
; ;ic:29: 	iTemp23 [k36 lr29:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {1,1}}[bad ] = @[iTemp22 [k35 lr28:29 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {1,1} near* }[remat]]
_00110_DS_:
;	.line	49; ugetc.c	if(RCSTAbits.OERR)
	BTFSS	_RCSTAbits, 1
	BRA	_00112_DS_
; ;ic:30: 	if iTemp23 [k36 lr29:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {1,1}}[bad ] == 0 goto _iffalse_3($8)
; ;ic:31: 	iTemp25 [k39 lr31:32 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {3,1} near* }[remat] := iTemp0 [k3 lr3:31 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-char near* }[remat]
; ;ic:32: 	*(iTemp25 [k39 lr31:32 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {3,1} near* }[remat]) := 0x1 {literal-unsigned-char}
	BANKSEL	_USART_Status
;	.line	50; ugetc.c	USART_Status.OVERRUN_ERROR = 1;
	BSF	_USART_Status, 3, B
; ;ic:33:  _iffalse_3($8) :
; ;ic:34: 	ret _RCREG [k40 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{sfr-volatile-unsigned-char}
_00112_DS_:
;	.line	52; ugetc.c	return (RCREG);
	MOVF	_RCREG, W
; ;ic:35:  _return($9) :
; ;ic:36: 	eproc _usart_getc [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char function    ( ) }
	RETURN	



; Statistics:
; code size:	   40 (0x0028) bytes ( 0.03%)
;           	   20 (0x0014) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    0 (0x0000) bytes


	end
