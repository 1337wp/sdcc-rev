;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:56 2018
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f6680

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global _i2c_readstr

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern _RXF0SIDLbits
	extern _RXF1SIDLbits
	extern _RXF2EIDLbits
	extern _RXF3SIDLbits
	extern _RXF4SIDLbits
	extern _RXF5SIDLbits
	extern _RXM0SIDLbits
	extern _RXM1SIDLbits
	extern _TXB2CONbits
	extern _TXB2SIDLbits
	extern _TXB2DLCbits
	extern _TXB1CONbits
	extern _TXB1SIDLbits
	extern _TXB1DLCbits
	extern _TXB0CONbits
	extern _TXB0DLCbits
	extern _RXB1CONbits
	extern _RXB1SIDLbits
	extern _RXB1DLCbits
	extern _RXB0CONbits
	extern _RXB0SIDLbits
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
	extern _RCSTAbits
	extern _TXSTAbits
	extern _PSPCONbits
	extern _T3CONbits
	extern _CMCONbits
	extern _CVRCONbits
	extern _ECCPASbits
	extern _ECCP1DELbits
	extern _ECCP1CONbits
	extern _CCP2CONbits
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
	extern _CANSTATRO3
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
	extern _CANSTATRO2
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
	extern _CANSTATRO1
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
	extern _CANSTATRO0
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
	extern _ECCPAS
	extern _ECCP1DEL
	extern _ECCP1CON
	extern _CCP2CON
	extern _ECCPR1L
	extern _CCPR2L
	extern _ECCPR1H
	extern _CCPR2H
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
	extern _i2c_readchar
;--------------------------------------------------------
;	Equates to used internal registers
;--------------------------------------------------------
STATUS	equ	0xfd8
WREG	equ	0xfe8
FSR0L	equ	0xfe9
FSR0H	equ	0xfea
FSR1L	equ	0xfe1
FSR2L	equ	0xfd9
INDF0	equ	0xfef
POSTDEC1	equ	0xfe5
PREINC1	equ	0xfe4
PLUSW2	equ	0xfdb


; Internal registers
.registers	udata_ovr	0x0000
r0x00	res	1
r0x01	res	1
r0x02	res	1
r0x03	res	1
r0x04	res	1

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($15) :
; ;ic:2: 	proc _i2c_readstr [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( unsigned-char near* , unsigned-char) }
S_i2creads__i2c_readstr	code
_i2c_readstr:
;	.line	7; i2creads.c	char i2c_readstr(_I2CPARAM_SPEC unsigned char *ptr, unsigned char len)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
; ;ic:3: iTemp0 [k2 lr3:7 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char near* }{ sir@ _i2c_readstr_ptr_1_1}[r0x00 r0x01 ] = recv _i2c_readstr [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( unsigned-char near* , unsigned-char) }
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
; ;ic:4: iTemp1 [k4 lr4:8 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _i2c_readstr_len_1_1}[r0x02 ] = recv _i2c_readstr [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( unsigned-char near* , unsigned-char) }
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
; ;ic:5: 	iTemp2 [k6 lr5:46 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _i2c_readstr_count_1_1}[r0x03 ] := 0x0 {literal-unsigned-char}
;	.line	9; i2creads.c	unsigned char count=0;
	CLRF	r0x03
; ;ic:7: 	iTemp6 [k11 lr7:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near* }[r0x00 r0x01 ] := iTemp0 [k2 lr3:7 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char near* }{ sir@ _i2c_readstr_ptr_1_1}[r0x00 r0x01 ]
; ;ic:8: 	iTemp4 [k9 lr8:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x02 ] := iTemp1 [k4 lr4:8 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _i2c_readstr_len_1_1}[r0x02 ]
; ;ic:9:  _whilecontinue_0($11) :
; ;ic:10: 	iTemp3 [k8 lr10:12 so:0]{ ia0 a2p0 re0 rm0 nos1 ru0 dp0}{unsigned-char}[r0x04 ] := iTemp4 [k9 lr8:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x02 ]
_00115_DS_:
;	.line	11; i2creads.c	while( len-- ) {
	MOVFF	r0x02, r0x04
; ;ic:11: 	iTemp4 [k9 lr8:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x02 ] = iTemp4 [k9 lr8:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x02 ] - 0x1 {literal-unsigned-char}
	DECF	r0x02, F
; ;ic:12: 	if iTemp3 [k8 lr10:12 so:0]{ ia0 a2p0 re0 rm0 nos1 ru0 dp0}{unsigned-char}[r0x04 ] == 0 goto _whilebreak_0($13)
	MOVF	r0x04, W
	BZ	_00117_DS_
; ;ic:13: 	iTemp7 [k13 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x04 ] = call _i2c_readchar [k12 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char function    ( ) }
;	.line	12; i2creads.c	*ptr++ = i2c_readchar();
	CALL	_i2c_readchar
	MOVWF	r0x04
; ;ic:14: 	*(iTemp6 [k11 lr7:44 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near* }[r0x00 r0x01 ]) := iTemp7 [k13 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x04 ]
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	r0x04, INDF0
; ;ic:15: 	iTemp6 [k11 lr7:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near* }[r0x00 r0x01 ] = iTemp6 [k11 lr7:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near* }[r0x00 r0x01 ] + 0x1 {literal-unsigned-char}
	INCF	r0x00, F
	BTFSC	STATUS, 0
	INCF	r0x01, F
; ;ic:17: 	iTemp15 [k25 lr17:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x04 ] := iTemp2 [k6 lr5:46 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _i2c_readstr_count_1_1}[r0x03 ]
;	.line	14; i2creads.c	while(SSPCON2bits.RCEN) {
	MOVFF	r0x03, r0x04
; ;ic:18:  _whilecontinue_1($8) :
; ;ic:19: 	iTemp8 [k15 lr19:20 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* }[remat] = &[_SSPCON2bits [k14 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00010271}]
; ;ic:20: 	iTemp9 [k17 lr20:21 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* }[remat] := iTemp8 [k15 lr19:20 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* }[remat]
; ;ic:21: 	iTemp10 [k18 lr21:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1}}[bad ] = @[iTemp9 [k17 lr20:21 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* }[remat]]
_00112_DS_:
	BTFSS	_SSPCON2bits, 3
	BRA	_00115_DS_
; ;ic:22: 	if iTemp10 [k18 lr21:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1}}[bad ] == 0 goto _whilecontinue_0($11)
; ;ic:23: 	iTemp11 [k20 lr23:24 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* }[remat] = &[_PIR2bits [k19 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00010213}]
; ;ic:24: 	iTemp12 [k22 lr24:25 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* }[remat] := iTemp11 [k20 lr23:24 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* }[remat]
; ;ic:25: 	iTemp13 [k23 lr25:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1}}[bad ] = @[iTemp12 [k22 lr24:25 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* }[remat]]
;	.line	15; i2creads.c	if(PIR2bits.BCLIF)return (-1);
	BTFSS	_PIR2bits, 3
	BRA	_00106_DS_
; ;ic:26: 	if iTemp13 [k23 lr25:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1}}[bad ] == 0 goto _iffalse_0($2)
; ;ic:27: 	ret 0xffffffff {literal-char}
	SETF	WREG
	BRA	_00118_DS_
; ;ic:28:  _iffalse_0($2) :
; ;ic:29: 	iTemp15 [k25 lr17:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x04 ] = iTemp15 [k25 lr17:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x04 ] + 0x1 {literal-unsigned-char}
_00106_DS_:
;	.line	16; i2creads.c	count++;
	INCF	r0x04, F
; ;ic:30: 	iTemp2 [k6 lr5:46 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _i2c_readstr_count_1_1}[r0x03 ] := iTemp15 [k25 lr17:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x04 ]
	MOVFF	r0x04, r0x03
; ;ic:31: 	if iTemp4 [k9 lr8:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char}[r0x02 ] == 0 goto _whilecontinue_1($8)
;	.line	18; i2creads.c	if(len) {
	MOVF	r0x02, W
	BZ	_00112_DS_
; ;ic:32: 	iTemp16 [k26 lr32:33 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* }[remat] = &[_SSPCON2bits [k14 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00010271}]
; ;ic:33: 	iTemp17 [k28 lr33:34 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* }[remat] := iTemp16 [k26 lr32:33 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* }[remat]
; ;ic:34: 	*(iTemp17 [k28 lr33:34 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* }[remat]) := 0x0 {literal-unsigned-char}
;	.line	19; i2creads.c	I2C_ACK();
	BCF	_SSPCON2bits, 5
; ;ic:35: 	iTemp18 [k29 lr35:36 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* }[remat] = &[_SSPCON2bits [k14 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00010271}]
; ;ic:36: 	iTemp19 [k31 lr36:37 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* }[remat] := iTemp18 [k29 lr35:36 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* }[remat]
; ;ic:37: 	*(iTemp19 [k31 lr36:37 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* }[remat]) := 0x1 {literal-unsigned-char}
	BSF	_SSPCON2bits, 4
; ;ic:39:  _whilecontinue_2($3) :
; ;ic:40: 	iTemp20 [k32 lr40:41 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* }[remat] = &[_SSPCON2bits [k14 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00010271}]
; ;ic:41: 	iTemp21 [k34 lr41:42 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* }[remat] := iTemp20 [k32 lr40:41 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* }[remat]
; ;ic:42: 	iTemp22 [k35 lr42:43 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1}}[bad ] = @[iTemp21 [k34 lr41:42 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* }[remat]]
_00107_DS_:
;	.line	20; i2creads.c	while(SSPCON2bits.ACKEN);
	BTFSC	_SSPCON2bits, 4
	BRA	_00107_DS_
; ;ic:43: 	if iTemp22 [k35 lr42:43 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1}}[bad ] != 0 goto _whilecontinue_2($3)
; ;ic:44: 	 goto _whilecontinue_1($8)
	BRA	_00112_DS_
; ;ic:45:  _whilebreak_0($13) :
; ;ic:46: 	ret iTemp2 [k6 lr5:46 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char}{ sir@ _i2c_readstr_count_1_1}[r0x03 ]
_00117_DS_:
;	.line	25; i2creads.c	return count;
	MOVF	r0x03, W
; ;ic:47:  _return($14) :
; ;ic:48: 	eproc _i2c_readstr [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function    ( unsigned-char near* , unsigned-char) }
_00118_DS_:
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	



; Statistics:
; code size:	  146 (0x0092) bytes ( 0.11%)
;           	   73 (0x0049) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    5 (0x0005) bytes


	end
