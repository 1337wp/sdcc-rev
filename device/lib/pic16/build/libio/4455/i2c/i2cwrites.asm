;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:48 2018
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f4455

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global _i2c_writestr

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern __gptrget1
	extern _SPPDATAbits
	extern _SPPCFGbits
	extern _SPPEPSbits
	extern _SPPCONbits
	extern _UFRMLbits
	extern _UFRMHbits
	extern _UIRbits
	extern _UIEbits
	extern _UEIRbits
	extern _UEIEbits
	extern _USTATbits
	extern _UCONbits
	extern _UADDRbits
	extern _UCFGbits
	extern _UEP0bits
	extern _UEP1bits
	extern _UEP2bits
	extern _UEP3bits
	extern _UEP4bits
	extern _UEP5bits
	extern _UEP6bits
	extern _UEP7bits
	extern _UEP8bits
	extern _UEP9bits
	extern _UEP10bits
	extern _UEP11bits
	extern _UEP12bits
	extern _UEP13bits
	extern _UEP14bits
	extern _UEP15bits
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
	extern _TRISAbits
	extern _TRISBbits
	extern _TRISCbits
	extern _TRISDbits
	extern _TRISEbits
	extern _OSCTUNEbits
	extern _PIE1bits
	extern _PIR1bits
	extern _IPR1bits
	extern _PIE2bits
	extern _PIR2bits
	extern _IPR2bits
	extern _EECON1bits
	extern _RCSTAbits
	extern _TXSTAbits
	extern _T3CONbits
	extern _CMCONbits
	extern _CVRCONbits
	extern _ECCP1ASbits
	extern _ECCP1DELbits
	extern _BAUDCONbits
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
	extern _HLVDCONbits
	extern _OSCCONbits
	extern _T0CONbits
	extern _STATUSbits
	extern _FSR2Hbits
	extern _BSRbits
	extern _FSR1Hbits
	extern _FSR0Hbits
	extern _INTCON3bits
	extern _INTCON2bits
	extern _INTCONbits
	extern _TBLPTRUbits
	extern _PCLATHbits
	extern _PCLATUbits
	extern _STKPTRbits
	extern _TOSUbits
	extern _SPPDATA
	extern _SPPCFG
	extern _SPPEPS
	extern _SPPCON
	extern _UFRML
	extern _UFRMH
	extern _UIR
	extern _UIE
	extern _UEIR
	extern _UEIE
	extern _USTAT
	extern _UCON
	extern _UADDR
	extern _UCFG
	extern _UEP0
	extern _UEP1
	extern _UEP2
	extern _UEP3
	extern _UEP4
	extern _UEP5
	extern _UEP6
	extern _UEP7
	extern _UEP8
	extern _UEP9
	extern _UEP10
	extern _UEP11
	extern _UEP12
	extern _UEP13
	extern _UEP14
	extern _UEP15
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
	extern _TRISA
	extern _TRISB
	extern _TRISC
	extern _TRISD
	extern _TRISE
	extern _OSCTUNE
	extern _PIE1
	extern _PIR1
	extern _IPR1
	extern _PIE2
	extern _PIR2
	extern _IPR2
	extern _EECON1
	extern _EECON2
	extern _EEDATA
	extern _EEADR
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
	extern _HLVDCON
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
; ;ic:9: 	iTemp3 [k7 lr9:10 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* }[remat] = &[_SSPCON1bits [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00010285}]
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
; ;ic:20: 	iTemp10 [k18 lr20:21 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* }[remat] = &[_SSPSTATbits [k17 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00010287}]
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
; ;ic:26: 	iTemp16 [k26 lr26:27 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* }[remat] = &[_SSPCON2bits [k25 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00010283}]
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
; ;ic:32: 	iTemp19 [k31 lr32:33 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* }[remat] = &[_PIR1bits [k30 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00010236}]
; ;ic:33: 	iTemp20 [k33 lr33:34 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* }[remat] := iTemp19 [k31 lr32:33 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* }[remat]
; ;ic:34: 	*(iTemp20 [k33 lr33:34 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* }[remat]) := 0x0 {literal-unsigned-char}
_00119_DS_:
;	.line	18; i2cwrites.c	PIR1bits.SSPIF = 0;
	BCF	_PIR1bits, 3
; ;ic:35: 	_SSPBUF [k34 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{sfr-volatile-unsigned-char} := iTemp2 [k5 lr7:35 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x03 ]
;	.line	19; i2cwrites.c	SSPBUF = *ptr;
	MOVFF	r0x03, _SSPBUF
; ;ic:36: 	iTemp23 [k37 lr36:37 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* }[remat] = &[_SSPCON1bits [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00010285}]
; ;ic:37: 	iTemp24 [k39 lr37:38 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* }[remat] := iTemp23 [k37 lr36:37 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* }[remat]
; ;ic:38: 	*(iTemp24 [k39 lr37:38 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* }[remat]) := 0x1 {literal-unsigned-char}
;	.line	20; i2cwrites.c	SSPCON1bits.CKP = 1;
	BSF	_SSPCON1bits, 4
; ;ic:40:  _whilecontinue_2($8) :
; ;ic:41: 	iTemp25 [k40 lr41:42 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* }[remat] = &[_PIR1bits [k30 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00010236}]
; ;ic:42: 	iTemp26 [k42 lr42:43 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* }[remat] := iTemp25 [k40 lr41:42 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* }[remat]
; ;ic:43: 	iTemp27 [k43 lr43:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1}}[bad ] = @[iTemp26 [k42 lr42:43 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* }[remat]]
_00112_DS_:
;	.line	21; i2cwrites.c	while( !PIR1bits.SSPIF );
	BTFSS	_PIR1bits, 3
	BRA	_00112_DS_
; ;ic:44: 	if iTemp27 [k43 lr43:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1}}[bad ] == 0 goto _whilecontinue_2($8)
; ;ic:45: 	iTemp28 [k44 lr45:46 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* }[remat] = &[_SSPSTATbits [k17 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00010287}]
; ;ic:46: 	iTemp29 [k46 lr46:47 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* }[remat] := iTemp28 [k44 lr45:46 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* }[remat]
; ;ic:47: 	iTemp30 [k47 lr47:48 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1}}[bad ] = @[iTemp29 [k46 lr46:47 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* }[remat]]
;	.line	23; i2cwrites.c	if((!SSPSTATbits.R_W) && ( !SSPSTATbits.BF )) {
	BTFSC	_SSPSTATbits, 2
	BRA	_00120_DS_
; ;ic:48: 	if iTemp30 [k47 lr47:48 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1}}[bad ] != 0 goto _ifend_3($16)
; ;ic:49: 	iTemp31 [k48 lr49:50 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1} near* }[remat] = &[_SSPSTATbits [k17 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00010287}]
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
