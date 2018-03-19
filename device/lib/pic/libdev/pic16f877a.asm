;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:31 2018
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"pic16f877a.c"
	list	p=16f877a
	radix dec
	include "p16f877a.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------

	extern PSAVE
	extern SSAVE
	extern WSAVE
	extern STK12
	extern STK11
	extern STK10
	extern STK09
	extern STK08
	extern STK07
	extern STK06
	extern STK05
	extern STK04
	extern STK03
	extern STK02
	extern STK01
	extern STK00
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	global	_ADCON0_bits
	global	_ADCON1_bits
	global	_CCP1CON_bits
	global	_CCP2CON_bits
	global	_CMCON_bits
	global	_CVRCON_bits
	global	_EECON1_bits
	global	_INTCON_bits
	global	_OPTION_REG_bits
	global	_PCON_bits
	global	_PIE1_bits
	global	_PIE2_bits
	global	_PIR1_bits
	global	_PIR2_bits
	global	_PORTA_bits
	global	_PORTB_bits
	global	_PORTC_bits
	global	_PORTD_bits
	global	_PORTE_bits
	global	_RCSTA_bits
	global	_SSPCON_bits
	global	_SSPCON2_bits
	global	_SSPSTAT_bits
	global	_STATUS_bits
	global	_T1CON_bits
	global	_T2CON_bits
	global	_TRISA_bits
	global	_TRISB_bits
	global	_TRISC_bits
	global	_TRISD_bits
	global	_TRISE_bits
	global	_TXSTA_bits
	global	_INDF
	global	_TMR0
	global	_PCL
	global	_STATUS
	global	_FSR
	global	_PORTA
	global	_PORTB
	global	_PORTC
	global	_PORTD
	global	_PORTE
	global	_PCLATH
	global	_INTCON
	global	_PIR1
	global	_PIR2
	global	_TMR1L
	global	_TMR1H
	global	_T1CON
	global	_TMR2
	global	_T2CON
	global	_SSPBUF
	global	_SSPCON
	global	_CCPR1L
	global	_CCPR1H
	global	_CCP1CON
	global	_RCSTA
	global	_TXREG
	global	_RCREG
	global	_CCPR2L
	global	_CCPR2H
	global	_CCP2CON
	global	_ADRESH
	global	_ADCON0
	global	_OPTION_REG
	global	_TRISA
	global	_TRISB
	global	_TRISC
	global	_TRISD
	global	_TRISE
	global	_PIE1
	global	_PIE2
	global	_PCON
	global	_SSPCON2
	global	_PR2
	global	_SSPADD
	global	_SSPSTAT
	global	_TXSTA
	global	_SPBRG
	global	_CMCON
	global	_CVRCON
	global	_ADRESL
	global	_ADCON1
	global	_EEDATA
	global	_EEADR
	global	_EEDATH
	global	_EEADRH
	global	_EECON1
	global	_EECON2

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
UD_abs_pic16f877a_0	udata_ovr	0x0000
_INDF
	res	1
UD_abs_pic16f877a_1	udata_ovr	0x0001
_TMR0
	res	1
UD_abs_pic16f877a_2	udata_ovr	0x0002
_PCL
	res	1
UD_abs_pic16f877a_3	udata_ovr	0x0003
_STATUS_bits
_STATUS
	res	1
UD_abs_pic16f877a_4	udata_ovr	0x0004
_FSR
	res	1
UD_abs_pic16f877a_5	udata_ovr	0x0005
_PORTA_bits
_PORTA
	res	1
UD_abs_pic16f877a_6	udata_ovr	0x0006
_PORTB_bits
_PORTB
	res	1
UD_abs_pic16f877a_7	udata_ovr	0x0007
_PORTC_bits
_PORTC
	res	1
UD_abs_pic16f877a_8	udata_ovr	0x0008
_PORTD_bits
_PORTD
	res	1
UD_abs_pic16f877a_9	udata_ovr	0x0009
_PORTE_bits
_PORTE
	res	1
UD_abs_pic16f877a_a	udata_ovr	0x000a
_PCLATH
	res	1
UD_abs_pic16f877a_b	udata_ovr	0x000b
_INTCON_bits
_INTCON
	res	1
UD_abs_pic16f877a_c	udata_ovr	0x000c
_PIR1_bits
_PIR1
	res	1
UD_abs_pic16f877a_d	udata_ovr	0x000d
_PIR2_bits
_PIR2
	res	1
UD_abs_pic16f877a_e	udata_ovr	0x000e
_TMR1L
	res	1
UD_abs_pic16f877a_f	udata_ovr	0x000f
_TMR1H
	res	1
UD_abs_pic16f877a_10	udata_ovr	0x0010
_T1CON_bits
_T1CON
	res	1
UD_abs_pic16f877a_11	udata_ovr	0x0011
_TMR2
	res	1
UD_abs_pic16f877a_12	udata_ovr	0x0012
_T2CON_bits
_T2CON
	res	1
UD_abs_pic16f877a_13	udata_ovr	0x0013
_SSPBUF
	res	1
UD_abs_pic16f877a_14	udata_ovr	0x0014
_SSPCON_bits
_SSPCON
	res	1
UD_abs_pic16f877a_15	udata_ovr	0x0015
_CCPR1L
	res	1
UD_abs_pic16f877a_16	udata_ovr	0x0016
_CCPR1H
	res	1
UD_abs_pic16f877a_17	udata_ovr	0x0017
_CCP1CON_bits
_CCP1CON
	res	1
UD_abs_pic16f877a_18	udata_ovr	0x0018
_RCSTA_bits
_RCSTA
	res	1
UD_abs_pic16f877a_19	udata_ovr	0x0019
_TXREG
	res	1
UD_abs_pic16f877a_1a	udata_ovr	0x001a
_RCREG
	res	1
UD_abs_pic16f877a_1b	udata_ovr	0x001b
_CCPR2L
	res	1
UD_abs_pic16f877a_1c	udata_ovr	0x001c
_CCPR2H
	res	1
UD_abs_pic16f877a_1d	udata_ovr	0x001d
_CCP2CON_bits
_CCP2CON
	res	1
UD_abs_pic16f877a_1e	udata_ovr	0x001e
_ADRESH
	res	1
UD_abs_pic16f877a_1f	udata_ovr	0x001f
_ADCON0_bits
_ADCON0
	res	1
UD_abs_pic16f877a_81	udata_ovr	0x0081
_OPTION_REG_bits
_OPTION_REG
	res	1
UD_abs_pic16f877a_85	udata_ovr	0x0085
_TRISA_bits
_TRISA
	res	1
UD_abs_pic16f877a_86	udata_ovr	0x0086
_TRISB_bits
_TRISB
	res	1
UD_abs_pic16f877a_87	udata_ovr	0x0087
_TRISC_bits
_TRISC
	res	1
UD_abs_pic16f877a_88	udata_ovr	0x0088
_TRISD_bits
_TRISD
	res	1
UD_abs_pic16f877a_89	udata_ovr	0x0089
_TRISE_bits
_TRISE
	res	1
UD_abs_pic16f877a_8c	udata_ovr	0x008c
_PIE1_bits
_PIE1
	res	1
UD_abs_pic16f877a_8d	udata_ovr	0x008d
_PIE2_bits
_PIE2
	res	1
UD_abs_pic16f877a_8e	udata_ovr	0x008e
_PCON_bits
_PCON
	res	1
UD_abs_pic16f877a_91	udata_ovr	0x0091
_SSPCON2_bits
_SSPCON2
	res	1
UD_abs_pic16f877a_92	udata_ovr	0x0092
_PR2
	res	1
UD_abs_pic16f877a_93	udata_ovr	0x0093
_SSPADD
	res	1
UD_abs_pic16f877a_94	udata_ovr	0x0094
_SSPSTAT_bits
_SSPSTAT
	res	1
UD_abs_pic16f877a_98	udata_ovr	0x0098
_TXSTA_bits
_TXSTA
	res	1
UD_abs_pic16f877a_99	udata_ovr	0x0099
_SPBRG
	res	1
UD_abs_pic16f877a_9c	udata_ovr	0x009c
_CMCON_bits
_CMCON
	res	1
UD_abs_pic16f877a_9d	udata_ovr	0x009d
_CVRCON_bits
_CVRCON
	res	1
UD_abs_pic16f877a_9e	udata_ovr	0x009e
_ADRESL
	res	1
UD_abs_pic16f877a_9f	udata_ovr	0x009f
_ADCON1_bits
_ADCON1
	res	1
UD_abs_pic16f877a_10c	udata_ovr	0x010c
_EEDATA
	res	1
UD_abs_pic16f877a_10d	udata_ovr	0x010d
_EEADR
	res	1
UD_abs_pic16f877a_10e	udata_ovr	0x010e
_EEDATH
	res	1
UD_abs_pic16f877a_10f	udata_ovr	0x010f
_EEADRH
	res	1
UD_abs_pic16f877a_18c	udata_ovr	0x018c
_EECON1_bits
_EECON1
	res	1
UD_abs_pic16f877a_18d	udata_ovr	0x018d
_EECON2
	res	1
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
;--------------------------------------------------------
; code
;--------------------------------------------------------
code_pic16f877a	code

;	code size estimation:
;	    0+    0 =     0 instructions (    0 byte)

	end
