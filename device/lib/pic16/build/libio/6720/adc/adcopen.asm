;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:57 2018
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f6720

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global _adc_open

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
	extern _LATAbits
	extern _LATBbits
	extern _LATCbits
	extern _LATDbits
	extern _LATEbits
	extern _LATFbits
	extern _LATGbits
	extern _TRISAbits
	extern _TRISBbits
	extern _TRISCbits
	extern _TRISDbits
	extern _TRISEbits
	extern _TRISFbits
	extern _TRISGbits
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
	extern _LATA
	extern _LATB
	extern _LATC
	extern _LATD
	extern _LATE
	extern _LATF
	extern _LATG
	extern _TRISA
	extern _TRISB
	extern _TRISC
	extern _TRISD
	extern _TRISE
	extern _TRISF
	extern _TRISG
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
WREG	equ	0xfe8
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
r0x03	res	1

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($4) :
; ;ic:2: 	proc _adc_open [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( unsigned-char, unsigned-char, unsigned-char, unsigned-char) }
S_adcopen__adc_open	code
_adc_open:
;	.line	42; adcopen.c	void adc_open(unsigned char channel, unsigned char fosc, unsigned char pcfg, unsigned char config)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
; ;ic:3: iTemp0 [k2 lr3:9 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _adc_open_channel_1_1}[r0x00 ] = recv _adc_open [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( unsigned-char, unsigned-char, unsigned-char, unsigned-char) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
; ;ic:4: iTemp1 [k4 lr4:15 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _adc_open_fosc_1_1}[r0x01 ] = recv _adc_open [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( unsigned-char, unsigned-char, unsigned-char, unsigned-char) }
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
; ;ic:5: iTemp2 [k6 lr5:18 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _adc_open_pcfg_1_1}[r0x02 ] = recv _adc_open [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( unsigned-char, unsigned-char, unsigned-char, unsigned-char) }
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
; ;ic:6: iTemp3 [k8 lr6:22 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _adc_open_config_1_1}[r0x03 ] = recv _adc_open [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( unsigned-char, unsigned-char, unsigned-char, unsigned-char) }
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
; ;ic:7: 	_ADCON0 [k10 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{sfr-volatile-unsigned-char} := 0x0 {literal-unsigned-char}
;	.line	44; adcopen.c	ADCON0 = 0;
	CLRF	_ADCON0
; ;ic:8: 	_ADCON1 [k11 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{sfr-volatile-unsigned-char} := 0x0 {literal-unsigned-char}
;	.line	45; adcopen.c	ADCON1 = 0;
	CLRF	_ADCON1
; ;ic:9: 	iTemp4 [k12 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x00 ] = iTemp0 [k2 lr3:9 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _adc_open_channel_1_1}[r0x00 ] & 0x7 {literal-unsigned-char}
;	.line	48; adcopen.c	ADCON0 |= (channel & 0x07) << 3;
	MOVLW	0x07
	ANDWF	r0x00, F
; ;ic:10: 	iTemp5 [k13 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x04 ] = iTemp4 [k12 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x00 ] << 0x3 {literal-unsigned-char}
	SWAPF	r0x00, W
	RRNCF	WREG, W
	ANDLW	0xf8
; #	MOVWF	r0x04
; #;;ic:11: 	_ADCON0 [k10 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{sfr-volatile-unsigned-char} = _ADCON0 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{sfr-volatile-unsigned-char} | iTemp5 [k13 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x04 ]
; #	MOVF	r0x04, W
	IORWF	_ADCON0, F
; ;ic:12: 	iTemp7 [k15 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x00 ] = iTemp1 [k4 lr4:15 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _adc_open_fosc_1_1}[r0x01 ] & 0x3 {literal-unsigned-char}
;	.line	51; adcopen.c	ADCON0 |= (fosc & 0x03) << 6;
	MOVLW	0x03
	ANDWF	r0x01, W
	MOVWF	r0x00
; ;ic:13: 	iTemp8 [k16 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x04 ] = iTemp7 [k15 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x00 ] << 0x6 {literal-unsigned-char}
	RRNCF	r0x00, W
	RRNCF	WREG, W
	ANDLW	0xc0
; #	MOVWF	r0x04
; #;;ic:14: 	_ADCON0 [k10 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{sfr-volatile-unsigned-char} = _ADCON0 [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{sfr-volatile-unsigned-char} | iTemp8 [k16 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x04 ]
; #	MOVF	r0x04, W
	IORWF	_ADCON0, F
; ;ic:15: 	iTemp10 [k18 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x01 ] = iTemp1 [k4 lr4:15 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _adc_open_fosc_1_1}[r0x01 ] & 0x4 {literal-unsigned-char}
;	.line	52; adcopen.c	ADCON1 |= (fosc & 0x04) << 4;
	MOVLW	0x04
	ANDWF	r0x01, F
; ;ic:16: 	iTemp11 [k19 lr16:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x00 ] = iTemp10 [k18 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x01 ] << 0x4 {literal-unsigned-char}
	SWAPF	r0x01, W
	ANDLW	0xf0
; #	MOVWF	r0x00
; #;;ic:17: 	_ADCON1 [k11 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{sfr-volatile-unsigned-char} = _ADCON1 [k11 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{sfr-volatile-unsigned-char} | iTemp11 [k19 lr16:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x00 ]
; #	MOVF	r0x00, W
	IORWF	_ADCON1, F
; ;ic:18: 	iTemp13 [k21 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x02 ] = iTemp2 [k6 lr5:18 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _adc_open_pcfg_1_1}[r0x02 ] & 0xf {literal-unsigned-char}
;	.line	55; adcopen.c	ADCON1 |= pcfg & 0x0f;
	MOVLW	0x0f
	ANDWF	r0x02, F
; ;ic:19: 	_ADCON1 [k11 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{sfr-volatile-unsigned-char} = _ADCON1 [k11 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{sfr-volatile-unsigned-char} | iTemp13 [k21 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x02 ]
	MOVF	r0x02, W
	IORWF	_ADCON1, F
; ;ic:20: 	iTemp15 [k23 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x00 ] = iTemp3 [k8 lr6:22 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _adc_open_config_1_1}[r0x03 ] & 0x80 {literal-unsigned-char}
;	.line	57; adcopen.c	ADCON1 |= (config & ADC_FRM_RJUST);
	MOVLW	0x80
	ANDWF	r0x03, W
; #	MOVWF	r0x00
; #;;ic:21: 	_ADCON1 [k11 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{sfr-volatile-unsigned-char} = _ADCON1 [k11 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{sfr-volatile-unsigned-char} | iTemp15 [k23 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x00 ]
; #	MOVF	r0x00, W
	IORWF	_ADCON1, F
; ;ic:22: 	iTemp17 [k25 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char} = iTemp3 [k8 lr6:22 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _adc_open_config_1_1}[r0x03 ] & 0x1 {literal-unsigned-char}
;	.line	59; adcopen.c	if(config & ADC_INT_ON) {
	BTFSS	r0x03, 0
	BRA	_00106_DS_
; ;ic:23: 	if iTemp17 [k25 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char} == 0 goto _iffalse_0($2)
; ;ic:24: 	iTemp18 [k27 lr24:25 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* }[remat] = &[_PIR1bits [k26 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00010109}]
; ;ic:25: 	iTemp19 [k29 lr25:26 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* }[remat] := iTemp18 [k27 lr24:25 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* }[remat]
; ;ic:26: 	*(iTemp19 [k29 lr25:26 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* }[remat]) := 0x0 {literal-unsigned-char}
;	.line	60; adcopen.c	PIR1bits.ADIF = 0;
	BCF	_PIR1bits, 6
; ;ic:27: 	iTemp20 [k31 lr27:28 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* }[remat] = &[_PIE1bits [k30 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00010107}]
; ;ic:28: 	iTemp21 [k33 lr28:29 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* }[remat] := iTemp20 [k31 lr27:28 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* }[remat]
; ;ic:29: 	*(iTemp21 [k33 lr28:29 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* }[remat]) := 0x1 {literal-unsigned-char}
;	.line	61; adcopen.c	PIE1bits.ADIE = 1;
	BSF	_PIE1bits, 6
; ;ic:30: 	iTemp22 [k35 lr30:31 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* }[remat] = &[_INTCONbits [k34 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00010243}]
; ;ic:31: 	iTemp23 [k37 lr31:32 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* }[remat] := iTemp22 [k35 lr30:31 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* }[remat]
; ;ic:32: 	*(iTemp23 [k37 lr31:32 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* }[remat]) := 0x1 {literal-unsigned-char}
;	.line	62; adcopen.c	INTCONbits.PEIE = 1;
	BSF	_INTCONbits, 6
; ;ic:33:  _iffalse_0($2) :
; ;ic:34: 	iTemp24 [k39 lr34:35 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1} near* }[remat] = &[_ADCON0bits [k38 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00010179}]
; ;ic:35: 	iTemp25 [k41 lr35:36 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1} near* }[remat] := iTemp24 [k39 lr34:35 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1} near* }[remat]
; ;ic:36: 	*(iTemp25 [k41 lr35:36 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1} near* }[remat]) := 0x1 {literal-unsigned-char}
_00106_DS_:
;	.line	66; adcopen.c	ADCON0bits.ADON = 1;
	BSF	_ADCON0bits, 0
; ;ic:37:  _return($3) :
; ;ic:38: 	eproc _adc_open [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function    ( unsigned-char, unsigned-char, unsigned-char, unsigned-char) }
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	



; Statistics:
; code size:	  136 (0x0088) bytes ( 0.10%)
;           	   68 (0x0044) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    4 (0x0004) bytes


	end
