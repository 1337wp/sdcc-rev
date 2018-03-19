;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:58 2018
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f8620

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global _usart_open

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern _RCSTA2bits
	extern _TXSTA2bits
	extern _CCP5CONbits
	extern _CCP4CONbits
	extern _T4CONbits
	extern _PORTAbits
	extern _PORTBbits
	extern _PORTCbits
	extern _PORTDbits
	extern _PORTEbits
	extern _PORTFbits
	extern _PORTGbits
	extern _PORTHbits
	extern _PORTJbits
	extern _LATAbits
	extern _LATBbits
	extern _LATCbits
	extern _LATDbits
	extern _LATEbits
	extern _LATFbits
	extern _LATGbits
	extern _LATHbits
	extern _LATJbits
	extern _TRISAbits
	extern _TRISBbits
	extern _TRISCbits
	extern _TRISDbits
	extern _TRISEbits
	extern _TRISFbits
	extern _TRISGbits
	extern _TRISHbits
	extern _TRISJbits
	extern _MEMCONbits
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
	extern _RCSTA1bits
	extern _TXSTA1bits
	extern _RCSTAbits
	extern _TXSTAbits
	extern _PSPCONbits
	extern _T3CONbits
	extern _CMCONbits
	extern _CVRCONbits
	extern _CCP3CONbits
	extern _CCP2CONbits
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
	extern _LVDCONbits
	extern _OSCCONbits
	extern _STATUSbits
	extern _INTCON3bits
	extern _INTCON2bits
	extern _INTCONbits
	extern _STKPTRbits
	extern _USART_Status
	extern _RCSTA2
	extern _TXSTA2
	extern _TXREG2
	extern _RCREG2
	extern _SPBRG2
	extern _CCP5CON
	extern _CCPR5L
	extern _CCPR5H
	extern _CCP4CON
	extern _CCPR4L
	extern _CCPR4H
	extern _T4CON
	extern _PR4
	extern _TMR4
	extern _PORTA
	extern _PORTB
	extern _PORTC
	extern _PORTD
	extern _PORTE
	extern _PORTF
	extern _PORTG
	extern _PORTH
	extern _PORTJ
	extern _LATA
	extern _LATB
	extern _LATC
	extern _LATD
	extern _LATE
	extern _LATF
	extern _LATG
	extern _LATH
	extern _LATJ
	extern _TRISA
	extern _TRISB
	extern _TRISC
	extern _TRISD
	extern _TRISE
	extern _TRISF
	extern _TRISG
	extern _TRISH
	extern _TRISJ
	extern _MEMCON
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
	extern _RCSTA1
	extern _TXSTA1
	extern _TXREG1
	extern _RCREG1
	extern _SPBRG1
	extern _RCSTA
	extern _TXSTA
	extern _TXREG
	extern _RCREG
	extern _SPBRG
	extern _PSPCON
	extern _T3CON
	extern _TMR3L
	extern _TMR3H
	extern _CMCON
	extern _CVRCON
	extern _CCP3CON
	extern _CCPR3L
	extern _CCPR3H
	extern _CCP2CON
	extern _CCPR2L
	extern _CCPR2H
	extern _CCP1CON
	extern _CCPR1L
	extern _CCPR1H
	extern _ADCON2
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
; ;ic:9: 	iTemp3 [k10 lr9:10 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* }[remat] = &[_TXSTAbits [k9 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00010159}]
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
; ;ic:15: 	iTemp6 [k14 lr15:16 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* }[remat] = &[_TXSTAbits [k9 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00010159}]
; ;ic:16: 	iTemp7 [k16 lr16:17 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* }[remat] := iTemp6 [k14 lr15:16 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* }[remat]
; ;ic:17: 	*(iTemp7 [k16 lr16:17 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* }[remat]) := 0x1 {literal-unsigned-char}
;	.line	45; uopen.c	TXSTAbits.TX9 = 1;
	BSF	_TXSTAbits, 6
; ;ic:18: 	iTemp8 [k18 lr18:19 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* }[remat] = &[_RCSTAbits [k17 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00010157}]
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
; ;ic:24: 	iTemp11 [k22 lr24:25 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* }[remat] = &[_TXSTAbits [k9 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00010159}]
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
; ;ic:30: 	iTemp14 [k26 lr30:31 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* }[remat] = &[_RCSTAbits [k17 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00010157}]
; ;ic:31: 	iTemp15 [k28 lr31:32 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* }[remat] := iTemp14 [k26 lr30:31 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* }[remat]
; ;ic:32: 	*(iTemp15 [k28 lr31:32 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* }[remat]) := 0x1 {literal-unsigned-char}
	BSF	_RCSTAbits, 4
; ;ic:33: 	 goto _ifend_3($9)
	BRA	_00113_DS_
; ;ic:34:  _iffalse_3($8) :
; ;ic:35: 	iTemp16 [k29 lr35:36 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* }[remat] = &[_RCSTAbits [k17 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00010157}]
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
; ;ic:41: 	iTemp19 [k33 lr41:42 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* }[remat] = &[_TXSTAbits [k9 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00010159}]
; ;ic:42: 	iTemp20 [k35 lr42:43 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* }[remat] := iTemp19 [k33 lr41:42 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* }[remat]
; ;ic:43: 	*(iTemp20 [k35 lr42:43 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* }[remat]) := 0x1 {literal-unsigned-char}
	BSF	_TXSTAbits, 2
; ;ic:44: 	 goto _ifend_4($12)
	BRA	_00116_DS_
; ;ic:45:  _iffalse_4($11) :
; ;ic:46: 	iTemp21 [k36 lr46:47 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* }[remat] = &[_TXSTAbits [k9 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00010159}]
; ;ic:47: 	iTemp22 [k38 lr47:48 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* }[remat] := iTemp21 [k36 lr46:47 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* }[remat]
; ;ic:48: 	*(iTemp22 [k38 lr47:48 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* }[remat]) := 0x0 {literal-unsigned-char}
_00115_DS_:
;	.line	55; uopen.c	else TXSTAbits.BRGH = 0;
	BCF	_TXSTAbits, 2
; ;ic:49:  _ifend_4($12) :
; ;ic:50: 	iTemp23 [k40 lr50:51 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* }[remat] = &[_PIR1bits [k39 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00010126}]
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
; ;ic:55: 	iTemp26 [k45 lr55:56 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* }[remat] = &[_PIE1bits [k44 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00010124}]
; ;ic:56: 	iTemp27 [k47 lr56:57 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* }[remat] := iTemp26 [k45 lr55:56 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* }[remat]
; ;ic:57: 	*(iTemp27 [k47 lr56:57 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* }[remat]) := 0x1 {literal-unsigned-char}
	BSF	_PIE1bits, 5
; ;ic:58: 	 goto _ifend_5($15)
	BRA	_00119_DS_
; ;ic:59:  _iffalse_5($14) :
; ;ic:60: 	iTemp28 [k48 lr60:61 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* }[remat] = &[_PIE1bits [k44 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00010124}]
; ;ic:61: 	iTemp29 [k50 lr61:62 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* }[remat] := iTemp28 [k48 lr60:61 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* }[remat]
; ;ic:62: 	*(iTemp29 [k50 lr61:62 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* }[remat]) := 0x0 {literal-unsigned-char}
_00118_DS_:
;	.line	61; uopen.c	else PIE1bits.RCIE = 0;
	BCF	_PIE1bits, 5
; ;ic:63:  _ifend_5($15) :
; ;ic:64: 	iTemp30 [k51 lr64:65 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* }[remat] = &[_PIR1bits [k39 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00010126}]
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
; ;ic:69: 	iTemp33 [k55 lr69:70 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* }[remat] = &[_PIE1bits [k44 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00010124}]
; ;ic:70: 	iTemp34 [k57 lr70:71 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* }[remat] := iTemp33 [k55 lr69:70 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* }[remat]
; ;ic:71: 	*(iTemp34 [k57 lr70:71 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* }[remat]) := 0x1 {literal-unsigned-char}
	BSF	_PIE1bits, 4
; ;ic:72: 	 goto _ifend_6($18)
	BRA	_00122_DS_
; ;ic:73:  _iffalse_6($17) :
; ;ic:74: 	iTemp35 [k58 lr74:75 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* }[remat] = &[_PIE1bits [k44 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00010124}]
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
; ;ic:79: 	iTemp39 [k64 lr79:80 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* }[remat] = &[_TXSTAbits [k9 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00010159}]
; ;ic:80: 	iTemp40 [k66 lr80:81 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* }[remat] := iTemp39 [k64 lr79:80 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* }[remat]
; ;ic:81: 	*(iTemp40 [k66 lr80:81 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* }[remat]) := 0x1 {literal-unsigned-char}
;	.line	71; uopen.c	TXSTAbits.TXEN = 1;
	BSF	_TXSTAbits, 5
; ;ic:82: 	iTemp41 [k67 lr82:83 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* }[remat] = &[_RCSTAbits [k17 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00010157}]
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
