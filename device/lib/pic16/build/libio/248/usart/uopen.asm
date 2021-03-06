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
	global _usart_open

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
FSR1L	equ	0xfe1
FSR2L	equ	0xfd9
POSTDEC1	equ	0xfe5
PREINC1	equ	0xfe4
PLUSW2	equ	0xfdb


; Internal registers
.registers	udata_ovr	0x0000
r0x00	res	1
r0x01	res	1
r0x02	res	1

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($20) :
; ;ic:2: 	proc _usart_open [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( unsigned-char, unsigned-int) }
S_uopen__usart_open	code
_usart_open:
;	.line	37; uopen.c	void usart_open(unsigned char config, unsigned int spbrg) __wparam
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
; ;ic:3: iTemp0 [k2 lr3:67 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _usart_open_config_1_1}[r0x00 ] = recv _usart_open [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( unsigned-char, unsigned-int) }
	MOVWF	r0x00
; ;ic:4: iTemp1 [k4 lr4:78 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _usart_open_spbrg_1_1}[r0x01 r0x02 ] = recv _usart_open [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( unsigned-char, unsigned-int) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x01
	MOVLW	0x03
	MOVFF	PLUSW2, r0x02
; ;ic:5: 	_TXSTA [k6 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{sfr-volatile-unsigned-char} := 0x0 {literal-unsigned-char}
;	.line	39; uopen.c	TXSTA = 0;           // Reset USART registers to POR state
	CLRF	_TXSTA
; ;ic:6: 	_RCSTA [k7 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{sfr-volatile-unsigned-char} := 0x0 {literal-unsigned-char}
;	.line	40; uopen.c	RCSTA = 0;
	CLRF	_RCSTA
; ;ic:7: 	iTemp2 [k8 lr7:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char} = iTemp0 [k2 lr3:67 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _usart_open_config_1_1}[r0x00 ] & 0x1 {literal-unsigned-char}
;	.line	42; uopen.c	if(config&0x01)TXSTAbits.SYNC = 1;
	BTFSS	r0x00, 0
	BRA	_00106_DS_
; ;ic:8: 	if iTemp2 [k8 lr7:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char} == 0 goto _iffalse_0($2)
; ;ic:9: 	iTemp3 [k10 lr9:10 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* }[remat] = &[_TXSTAbits [k9 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00010351}]
; ;ic:10: 	iTemp4 [k12 lr10:11 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* }[remat] := iTemp3 [k10 lr9:10 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* }[remat]
; ;ic:11: 	*(iTemp4 [k12 lr10:11 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* }[remat]) := 0x1 {literal-unsigned-char}
	BSF	_TXSTAbits, 4
; ;ic:12:  _iffalse_0($2) :
; ;ic:13: 	iTemp5 [k13 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char} = iTemp0 [k2 lr3:67 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _usart_open_config_1_1}[r0x00 ] & 0x2 {literal-unsigned-char}
_00106_DS_:
;	.line	44; uopen.c	if(config&0x02) {
	BTFSS	r0x00, 1
	BRA	_00108_DS_
; ;ic:14: 	if iTemp5 [k13 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char} == 0 goto _iffalse_1($4)
; ;ic:15: 	iTemp6 [k14 lr15:16 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* }[remat] = &[_TXSTAbits [k9 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00010351}]
; ;ic:16: 	iTemp7 [k16 lr16:17 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* }[remat] := iTemp6 [k14 lr15:16 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* }[remat]
; ;ic:17: 	*(iTemp7 [k16 lr16:17 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* }[remat]) := 0x1 {literal-unsigned-char}
;	.line	45; uopen.c	TXSTAbits.TX9 = 1;
	BSF	_TXSTAbits, 6
; ;ic:18: 	iTemp8 [k18 lr18:19 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* }[remat] = &[_RCSTAbits [k17 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00010349}]
; ;ic:19: 	iTemp9 [k20 lr19:20 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* }[remat] := iTemp8 [k18 lr18:19 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* }[remat]
; ;ic:20: 	*(iTemp9 [k20 lr19:20 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* }[remat]) := 0x1 {literal-unsigned-char}
;	.line	46; uopen.c	RCSTAbits.RX9 = 1;
	BSF	_RCSTAbits, 6
; ;ic:21:  _iffalse_1($4) :
; ;ic:22: 	iTemp10 [k21 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char} = iTemp0 [k2 lr3:67 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _usart_open_config_1_1}[r0x00 ] & 0x4 {literal-unsigned-char}
_00108_DS_:
;	.line	49; uopen.c	if(config&0x04)TXSTAbits.CSRC = 1;
	BTFSS	r0x00, 2
	BRA	_00110_DS_
; ;ic:23: 	if iTemp10 [k21 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char} == 0 goto _iffalse_2($6)
; ;ic:24: 	iTemp11 [k22 lr24:25 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* }[remat] = &[_TXSTAbits [k9 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00010351}]
; ;ic:25: 	iTemp12 [k24 lr25:26 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* }[remat] := iTemp11 [k22 lr24:25 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* }[remat]
; ;ic:26: 	*(iTemp12 [k24 lr25:26 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* }[remat]) := 0x1 {literal-unsigned-char}
	BSF	_TXSTAbits, 7
; ;ic:27:  _iffalse_2($6) :
; ;ic:28: 	iTemp13 [k25 lr28:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char} = iTemp0 [k2 lr3:67 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _usart_open_config_1_1}[r0x00 ] & 0x8 {literal-unsigned-char}
_00110_DS_:
;	.line	51; uopen.c	if(config&0x08)RCSTAbits.CREN = 1;
	BTFSS	r0x00, 3
	BRA	_00112_DS_
; ;ic:29: 	if iTemp13 [k25 lr28:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char} == 0 goto _iffalse_3($8)
; ;ic:30: 	iTemp14 [k26 lr30:31 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* }[remat] = &[_RCSTAbits [k17 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00010349}]
; ;ic:31: 	iTemp15 [k28 lr31:32 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* }[remat] := iTemp14 [k26 lr30:31 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* }[remat]
; ;ic:32: 	*(iTemp15 [k28 lr31:32 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* }[remat]) := 0x1 {literal-unsigned-char}
	BSF	_RCSTAbits, 4
; ;ic:33: 	 goto _ifend_3($9)
	BRA	_00113_DS_
; ;ic:34:  _iffalse_3($8) :
; ;ic:35: 	iTemp16 [k29 lr35:36 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* }[remat] = &[_RCSTAbits [k17 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00010349}]
; ;ic:36: 	iTemp17 [k31 lr36:37 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* }[remat] := iTemp16 [k29 lr35:36 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* }[remat]
; ;ic:37: 	*(iTemp17 [k31 lr36:37 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* }[remat]) := 0x1 {literal-unsigned-char}
_00112_DS_:
;	.line	52; uopen.c	else RCSTAbits.SREN = 1;
	BSF	_RCSTAbits, 5
; ;ic:38:  _ifend_3($9) :
; ;ic:39: 	iTemp18 [k32 lr39:40 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char} = iTemp0 [k2 lr3:67 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _usart_open_config_1_1}[r0x00 ] & 0x10 {literal-unsigned-char}
_00113_DS_:
;	.line	54; uopen.c	if(config&0x10)TXSTAbits.BRGH = 1;
	BTFSS	r0x00, 4
	BRA	_00115_DS_
; ;ic:40: 	if iTemp18 [k32 lr39:40 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char} == 0 goto _iffalse_4($11)
; ;ic:41: 	iTemp19 [k33 lr41:42 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* }[remat] = &[_TXSTAbits [k9 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00010351}]
; ;ic:42: 	iTemp20 [k35 lr42:43 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* }[remat] := iTemp19 [k33 lr41:42 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* }[remat]
; ;ic:43: 	*(iTemp20 [k35 lr42:43 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* }[remat]) := 0x1 {literal-unsigned-char}
	BSF	_TXSTAbits, 2
; ;ic:44: 	 goto _ifend_4($12)
	BRA	_00116_DS_
; ;ic:45:  _iffalse_4($11) :
; ;ic:46: 	iTemp21 [k36 lr46:47 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* }[remat] = &[_TXSTAbits [k9 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00010351}]
; ;ic:47: 	iTemp22 [k38 lr47:48 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* }[remat] := iTemp21 [k36 lr46:47 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* }[remat]
; ;ic:48: 	*(iTemp22 [k38 lr47:48 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* }[remat]) := 0x0 {literal-unsigned-char}
_00115_DS_:
;	.line	55; uopen.c	else TXSTAbits.BRGH = 0;
	BCF	_TXSTAbits, 2
; ;ic:49:  _ifend_4($12) :
; ;ic:50: 	iTemp23 [k40 lr50:51 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* }[remat] = &[_PIR1bits [k39 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00010324}]
; ;ic:51: 	iTemp24 [k42 lr51:52 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* }[remat] := iTemp23 [k40 lr50:51 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* }[remat]
; ;ic:52: 	*(iTemp24 [k42 lr51:52 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* }[remat]) := 0x0 {literal-unsigned-char}
_00116_DS_:
;	.line	58; uopen.c	PIR1bits.TXIF = 0;
	BCF	_PIR1bits, 4
; ;ic:53: 	iTemp25 [k43 lr53:54 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char} = iTemp0 [k2 lr3:67 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _usart_open_config_1_1}[r0x00 ] & 0x40 {literal-unsigned-char}
;	.line	60; uopen.c	if(config&0x40)PIE1bits.RCIE = 1;
	BTFSS	r0x00, 6
	BRA	_00118_DS_
; ;ic:54: 	if iTemp25 [k43 lr53:54 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char} == 0 goto _iffalse_5($14)
; ;ic:55: 	iTemp26 [k45 lr55:56 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* }[remat] = &[_PIE1bits [k44 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00010322}]
; ;ic:56: 	iTemp27 [k47 lr56:57 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* }[remat] := iTemp26 [k45 lr55:56 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* }[remat]
; ;ic:57: 	*(iTemp27 [k47 lr56:57 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* }[remat]) := 0x1 {literal-unsigned-char}
	BSF	_PIE1bits, 5
; ;ic:58: 	 goto _ifend_5($15)
	BRA	_00119_DS_
; ;ic:59:  _iffalse_5($14) :
; ;ic:60: 	iTemp28 [k48 lr60:61 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* }[remat] = &[_PIE1bits [k44 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00010322}]
; ;ic:61: 	iTemp29 [k50 lr61:62 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* }[remat] := iTemp28 [k48 lr60:61 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* }[remat]
; ;ic:62: 	*(iTemp29 [k50 lr61:62 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* }[remat]) := 0x0 {literal-unsigned-char}
_00118_DS_:
;	.line	61; uopen.c	else PIE1bits.RCIE = 0;
	BCF	_PIE1bits, 5
; ;ic:63:  _ifend_5($15) :
; ;ic:64: 	iTemp30 [k51 lr64:65 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* }[remat] = &[_PIR1bits [k39 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00010324}]
; ;ic:65: 	iTemp31 [k53 lr65:66 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* }[remat] := iTemp30 [k51 lr64:65 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* }[remat]
; ;ic:66: 	*(iTemp31 [k53 lr65:66 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* }[remat]) := 0x0 {literal-unsigned-char}
_00119_DS_:
;	.line	64; uopen.c	PIR1bits.RCIF = 0;
	BCF	_PIR1bits, 5
; ;ic:67: 	iTemp32 [k54 lr67:68 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char} = iTemp0 [k2 lr3:67 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _usart_open_config_1_1}[r0x00 ] & 0x80 {literal-unsigned-char}
;	.line	66; uopen.c	if(config&0x80)PIE1bits.TXIE = 1;
	BTFSS	r0x00, 7
	BRA	_00121_DS_
; ;ic:68: 	if iTemp32 [k54 lr67:68 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char} == 0 goto _iffalse_6($17)
; ;ic:69: 	iTemp33 [k55 lr69:70 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* }[remat] = &[_PIE1bits [k44 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00010322}]
; ;ic:70: 	iTemp34 [k57 lr70:71 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* }[remat] := iTemp33 [k55 lr69:70 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* }[remat]
; ;ic:71: 	*(iTemp34 [k57 lr70:71 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* }[remat]) := 0x1 {literal-unsigned-char}
	BSF	_PIE1bits, 4
; ;ic:72: 	 goto _ifend_6($18)
	BRA	_00122_DS_
; ;ic:73:  _iffalse_6($17) :
; ;ic:74: 	iTemp35 [k58 lr74:75 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* }[remat] = &[_PIE1bits [k44 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00010322}]
; ;ic:75: 	iTemp36 [k60 lr75:76 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* }[remat] := iTemp35 [k58 lr74:75 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* }[remat]
; ;ic:76: 	*(iTemp36 [k60 lr75:76 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* }[remat]) := 0x0 {literal-unsigned-char}
_00121_DS_:
;	.line	67; uopen.c	else PIE1bits.TXIE = 0;
	BCF	_PIE1bits, 4
; ;ic:77:  _ifend_6($18) :
; ;ic:78: 	_SPBRG [k61 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{sfr-volatile-unsigned-char} = (char)iTemp1 [k4 lr4:78 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int}{ sir@ _usart_open_spbrg_1_1}[r0x01 r0x02 ]
_00122_DS_:
;	.line	69; uopen.c	SPBRG = (char)spbrg;
	MOVF	r0x01, W
	MOVWF	_SPBRG
; ;ic:79: 	iTemp39 [k64 lr79:80 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* }[remat] = &[_TXSTAbits [k9 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00010351}]
; ;ic:80: 	iTemp40 [k66 lr80:81 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* }[remat] := iTemp39 [k64 lr79:80 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* }[remat]
; ;ic:81: 	*(iTemp40 [k66 lr80:81 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* }[remat]) := 0x1 {literal-unsigned-char}
;	.line	71; uopen.c	TXSTAbits.TXEN = 1;
	BSF	_TXSTAbits, 5
; ;ic:82: 	iTemp41 [k67 lr82:83 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* }[remat] = &[_RCSTAbits [k17 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00010349}]
; ;ic:83: 	iTemp42 [k69 lr83:84 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* }[remat] := iTemp41 [k67 lr82:83 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* }[remat]
; ;ic:84: 	*(iTemp42 [k69 lr83:84 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* }[remat]) := 0x1 {literal-unsigned-char}
;	.line	72; uopen.c	RCSTAbits.SPEN = 1;
	BSF	_RCSTAbits, 7
; ;ic:85:  _return($19) :
; ;ic:86: 	eproc _usart_open [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( unsigned-char, unsigned-int) }
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	



; Statistics:
; code size:	  128 (0x0080) bytes ( 0.10%)
;           	   64 (0x0040) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    3 (0x0003) bytes


	end
