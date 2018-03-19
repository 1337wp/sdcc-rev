;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:30 2018
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"pic16c770.c"
	list	p=16c770
	radix dec
	include "p16c770.inc"
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
	global	_INTCON_bits
	global	_LVDCON_bits
	global	_OPTION_REG_bits
	global	_PCON_bits
	global	_PIE1_bits
	global	_PIE2_bits
	global	_PIR1_bits
	global	_PIR2_bits
	global	_PMCON1_bits
	global	_PORTA_bits
	global	_PORTB_bits
	global	_REFCON_bits
	global	_SSPCON_bits
	global	_SSPCON2_bits
	global	_SSPSTAT_bits
	global	_STATUS_bits
	global	_T1CON_bits
	global	_T2CON_bits
	global	_TRISA_bits
	global	_TRISB_bits
	global	_INDF
	global	_TMR0
	global	_PCL
	global	_STATUS
	global	_FSR
	global	_PORTA
	global	_PORTB
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
	global	_ADRESH
	global	_ADCON0
	global	_OPTION_REG
	global	_TRISA
	global	_TRISB
	global	_PIE1
	global	_PIE2
	global	_PCON
	global	_SSPCON2
	global	_PR2
	global	_SSPADD
	global	_SSPSTAT
	global	_WPUB
	global	_IOCB
	global	_P1DEL
	global	_REFCON
	global	_LVDCON
	global	_ANSEL
	global	_ADRESL
	global	_ADCON1
	global	_PMDATL
	global	_PMADRL
	global	_PMDATH
	global	_PMADRH
	global	_PMCON1

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
UD_abs_pic16c770_0	udata_ovr	0x0000
_INDF
	res	1
UD_abs_pic16c770_1	udata_ovr	0x0001
_TMR0
	res	1
UD_abs_pic16c770_2	udata_ovr	0x0002
_PCL
	res	1
UD_abs_pic16c770_3	udata_ovr	0x0003
_STATUS_bits
_STATUS
	res	1
UD_abs_pic16c770_4	udata_ovr	0x0004
_FSR
	res	1
UD_abs_pic16c770_5	udata_ovr	0x0005
_PORTA_bits
_PORTA
	res	1
UD_abs_pic16c770_6	udata_ovr	0x0006
_PORTB_bits
_PORTB
	res	1
UD_abs_pic16c770_a	udata_ovr	0x000a
_PCLATH
	res	1
UD_abs_pic16c770_b	udata_ovr	0x000b
_INTCON_bits
_INTCON
	res	1
UD_abs_pic16c770_c	udata_ovr	0x000c
_PIR1_bits
_PIR1
	res	1
UD_abs_pic16c770_d	udata_ovr	0x000d
_PIR2_bits
_PIR2
	res	1
UD_abs_pic16c770_e	udata_ovr	0x000e
_TMR1L
	res	1
UD_abs_pic16c770_f	udata_ovr	0x000f
_TMR1H
	res	1
UD_abs_pic16c770_10	udata_ovr	0x0010
_T1CON_bits
_T1CON
	res	1
UD_abs_pic16c770_11	udata_ovr	0x0011
_TMR2
	res	1
UD_abs_pic16c770_12	udata_ovr	0x0012
_T2CON_bits
_T2CON
	res	1
UD_abs_pic16c770_13	udata_ovr	0x0013
_SSPBUF
	res	1
UD_abs_pic16c770_14	udata_ovr	0x0014
_SSPCON_bits
_SSPCON
	res	1
UD_abs_pic16c770_15	udata_ovr	0x0015
_CCPR1L
	res	1
UD_abs_pic16c770_16	udata_ovr	0x0016
_CCPR1H
	res	1
UD_abs_pic16c770_17	udata_ovr	0x0017
_CCP1CON_bits
_CCP1CON
	res	1
UD_abs_pic16c770_1e	udata_ovr	0x001e
_ADRESH
	res	1
UD_abs_pic16c770_1f	udata_ovr	0x001f
_ADCON0_bits
_ADCON0
	res	1
UD_abs_pic16c770_81	udata_ovr	0x0081
_OPTION_REG_bits
_OPTION_REG
	res	1
UD_abs_pic16c770_85	udata_ovr	0x0085
_TRISA_bits
_TRISA
	res	1
UD_abs_pic16c770_86	udata_ovr	0x0086
_TRISB_bits
_TRISB
	res	1
UD_abs_pic16c770_8c	udata_ovr	0x008c
_PIE1_bits
_PIE1
	res	1
UD_abs_pic16c770_8d	udata_ovr	0x008d
_PIE2_bits
_PIE2
	res	1
UD_abs_pic16c770_8e	udata_ovr	0x008e
_PCON_bits
_PCON
	res	1
UD_abs_pic16c770_91	udata_ovr	0x0091
_SSPCON2_bits
_SSPCON2
	res	1
UD_abs_pic16c770_92	udata_ovr	0x0092
_PR2
	res	1
UD_abs_pic16c770_93	udata_ovr	0x0093
_SSPADD
	res	1
UD_abs_pic16c770_94	udata_ovr	0x0094
_SSPSTAT_bits
_SSPSTAT
	res	1
UD_abs_pic16c770_95	udata_ovr	0x0095
_WPUB
	res	1
UD_abs_pic16c770_96	udata_ovr	0x0096
_IOCB
	res	1
UD_abs_pic16c770_97	udata_ovr	0x0097
_P1DEL
	res	1
UD_abs_pic16c770_9b	udata_ovr	0x009b
_REFCON_bits
_REFCON
	res	1
UD_abs_pic16c770_9c	udata_ovr	0x009c
_LVDCON_bits
_LVDCON
	res	1
UD_abs_pic16c770_9d	udata_ovr	0x009d
_ANSEL
	res	1
UD_abs_pic16c770_9e	udata_ovr	0x009e
_ADRESL
	res	1
UD_abs_pic16c770_9f	udata_ovr	0x009f
_ADCON1_bits
_ADCON1
	res	1
UD_abs_pic16c770_10c	udata_ovr	0x010c
_PMDATL
	res	1
UD_abs_pic16c770_10d	udata_ovr	0x010d
_PMADRL
	res	1
UD_abs_pic16c770_10e	udata_ovr	0x010e
_PMDATH
	res	1
UD_abs_pic16c770_10f	udata_ovr	0x010f
_PMADRH
	res	1
UD_abs_pic16c770_18c	udata_ovr	0x018c
_PMCON1_bits
_PMCON1
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
code_pic16c770	code

;	code size estimation:
;	    0+    0 =     0 instructions (    0 byte)

	end
