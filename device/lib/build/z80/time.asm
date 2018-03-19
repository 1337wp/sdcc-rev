;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module time
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _RtcRead
	.globl ___day
	.globl ___month
	.globl _time
	.globl _asctime
	.globl _ctime
	.globl _localtime
	.globl _gmtime
	.globl _mktime
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
;  ram data
;--------------------------------------------------------
	.area _DATA
_monthDays:
	.ds 12
___month::
	.ds 24
___day::
	.ds 14
_ascTimeBuffer:
	.ds 32
_lastTime:
	.ds 12
;--------------------------------------------------------
; overlayable items in  ram 
;--------------------------------------------------------
	.area _OVERLAY
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;time.c:59: static _CODE char monthDays[]={31,28,31,30,31,30,31,31,30,31,30,31};
;	genArrayInit
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#_monthDays
	call	__initrleblock
	.db	12
	.db	0x1F, 0x1C, 0x1F, 0x1E, 0x1F, 0x1E, 0x1F, 0x1F
	.db	0x1E, 0x1F, 0x1E, 0x1F
	.db	0
;time.c:61: _CODE char * _CODE __month[]={"Jan","Feb","Mar","Apr","May","Jun",
;	genAssign (pointer)
;	isBitvar = 0
	ld	hl,#___month
	ld	(hl),#<__str_1
	inc	hl
	ld	(hl),#>__str_1
;	genPlus
;	genPlusIncr
	ld	bc,#___month + 2
;	genAssign (pointer)
;	isBitvar = 0
	ld	l,c
	ld	h,b
	ld	(hl),#<__str_2
	inc	hl
	ld	(hl),#>__str_2
;	genPlus
;	genPlusIncr
	ld	bc,#___month + 4
;	genAssign (pointer)
;	isBitvar = 0
	ld	l,c
	ld	h,b
	ld	(hl),#<__str_3
	inc	hl
	ld	(hl),#>__str_3
;	genPlus
;	genPlusIncr
	ld	bc,#___month + 6
;	genAssign (pointer)
;	isBitvar = 0
	ld	l,c
	ld	h,b
	ld	(hl),#<__str_4
	inc	hl
	ld	(hl),#>__str_4
;	genPlus
;	genPlusIncr
	ld	bc,#___month + 8
;	genAssign (pointer)
;	isBitvar = 0
	ld	l,c
	ld	h,b
	ld	(hl),#<__str_5
	inc	hl
	ld	(hl),#>__str_5
;	genPlus
;	genPlusIncr
	ld	bc,#___month + 10
;	genAssign (pointer)
;	isBitvar = 0
	ld	l,c
	ld	h,b
	ld	(hl),#<__str_6
	inc	hl
	ld	(hl),#>__str_6
;	genPlus
;	genPlusIncr
	ld	bc,#___month + 12
;	genAssign (pointer)
;	isBitvar = 0
	ld	l,c
	ld	h,b
	ld	(hl),#<__str_7
	inc	hl
	ld	(hl),#>__str_7
;	genPlus
;	genPlusIncr
	ld	bc,#___month + 14
;	genAssign (pointer)
;	isBitvar = 0
	ld	l,c
	ld	h,b
	ld	(hl),#<__str_8
	inc	hl
	ld	(hl),#>__str_8
;	genPlus
;	genPlusIncr
	ld	bc,#___month + 16
;	genAssign (pointer)
;	isBitvar = 0
	ld	l,c
	ld	h,b
	ld	(hl),#<__str_9
	inc	hl
	ld	(hl),#>__str_9
;	genPlus
;	genPlusIncr
	ld	bc,#___month + 18
;	genAssign (pointer)
;	isBitvar = 0
	ld	l,c
	ld	h,b
	ld	(hl),#<__str_10
	inc	hl
	ld	(hl),#>__str_10
;	genPlus
;	genPlusIncr
	ld	bc,#___month + 20
;	genAssign (pointer)
;	isBitvar = 0
	ld	l,c
	ld	h,b
	ld	(hl),#<__str_11
	inc	hl
	ld	(hl),#>__str_11
;	genPlus
;	genPlusIncr
	ld	bc,#___month + 22
;	genAssign (pointer)
;	isBitvar = 0
	ld	l,c
	ld	h,b
	ld	(hl),#<__str_12
	inc	hl
	ld	(hl),#>__str_12
;time.c:64: _CODE char * _CODE __day[]={"Sun","Mon","Tue","Wed","Thu","Fri","Sat"};
;	genAssign (pointer)
;	isBitvar = 0
	ld	hl,#___day
	ld	(hl),#<__str_13
	inc	hl
	ld	(hl),#>__str_13
;	genPlus
;	genPlusIncr
	ld	bc,#___day + 2
;	genAssign (pointer)
;	isBitvar = 0
	ld	l,c
	ld	h,b
	ld	(hl),#<__str_14
	inc	hl
	ld	(hl),#>__str_14
;	genPlus
;	genPlusIncr
	ld	bc,#___day + 4
;	genAssign (pointer)
;	isBitvar = 0
	ld	l,c
	ld	h,b
	ld	(hl),#<__str_15
	inc	hl
	ld	(hl),#>__str_15
;	genPlus
;	genPlusIncr
	ld	bc,#___day + 6
;	genAssign (pointer)
;	isBitvar = 0
	ld	l,c
	ld	h,b
	ld	(hl),#<__str_16
	inc	hl
	ld	(hl),#>__str_16
;	genPlus
;	genPlusIncr
	ld	bc,#___day + 8
;	genAssign (pointer)
;	isBitvar = 0
	ld	l,c
	ld	h,b
	ld	(hl),#<__str_17
	inc	hl
	ld	(hl),#>__str_17
;	genPlus
;	genPlusIncr
	ld	bc,#___day + 10
;	genAssign (pointer)
;	isBitvar = 0
	ld	l,c
	ld	h,b
	ld	(hl),#<__str_18
	inc	hl
	ld	(hl),#>__str_18
;	genPlus
;	genPlusIncr
	ld	bc,#___day + 12
;	genAssign (pointer)
;	isBitvar = 0
	ld	l,c
	ld	h,b
	ld	(hl),#<__str_19
	inc	hl
	ld	(hl),#>__str_19
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;time.c:38: unsigned char RtcRead(struct tm *timeptr) {
;	genLabel
;	genFunction
;	---------------------------------
; Function RtcRead
; ---------------------------------
_RtcRead_start::
_RtcRead:
	push	ix
	ld	ix,#0
	add	ix,sp
;time.c:41: return 0;
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 1
	ld	l,#0x00
;	genLabel
;	genEndFunction
	pop	ix
	ret
_RtcRead_end::
;time.c:46: time_t time(time_t *timeptr) {
;	genLabel
;	genFunction
;	---------------------------------
; Function time
; ---------------------------------
_time_start::
_time:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-16
	add	hl,sp
	ld	sp,hl
;time.c:48: time_t t=-1;
;	genAssign
;	AOP_STK for _time_t_1_1
	ld	-16(ix),#0xFF
	ld	-15(ix),#0xFF
	ld	-14(ix),#0xFF
	ld	-13(ix),#0xFF
;time.c:50: if (RtcRead(&now)) {
;	genAddrOf
	ld	hl,#0x0004
	add	hl,sp
	ld	c,l
	ld	b,h
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	push	bc
;	genCall
	call	_RtcRead
	ld	c,l
	pop	af
;	genIfx
	xor	a,a
	or	a,c
	jr	Z,00102$
;time.c:51: t=mktime(&now);
;	genAddrOf
	ld	hl,#0x0004
	add	hl,sp
	ld	c,l
	ld	b,h
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	push	bc
;	genCall
	call	_mktime
	ld	b,h
	ld	c,l
	pop	af
;	genAssign
;	AOP_STK for _time_t_1_1
	ld	-16(ix),c
	ld	-15(ix),b
	ld	-14(ix),e
	ld	-13(ix),d
;	genLabel
00102$:
;time.c:53: if (timeptr) {
;	genIfx
;	AOP_STK for 
	ld	a,4(ix)
	or	a,5(ix)
	jr	Z,00104$
;time.c:54: *timeptr=t;
;	genAssign
;	AOP_STK for 
	ld	c,4(ix)
	ld	b,5(ix)
	push	bc
	pop	iy
;	genAssign (pointer)
;	AOP_STK for _time_t_1_1
;	isBitvar = 0
	ld	a,-16(ix)
	ld	0(iy),a
	ld	a,-15(ix)
	ld	1(iy),a
	ld	a,-14(ix)
	ld	2(iy),a
	ld	a,-13(ix)
	ld	3(iy),a
;	genLabel
00104$:
;time.c:56: return t;
;	genRet
;	AOP_STK for _time_t_1_1
; Dump of IC_LEFT: type AOP_STK size 4
;	 aop_stk -16
	ld	l,-16(ix)
	ld	h,-15(ix)
	ld	e,-14(ix)
	ld	d,-13(ix)
;	genLabel
;	genEndFunction
	ld	sp,ix
	pop	ix
	ret
_time_end::
;time.c:69: static void CheckTime(struct tm *timeptr) {
;	genLabel
;	genFunction
;	---------------------------------
; Function CheckTime
; ---------------------------------
_CheckTime:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-2
	add	hl,sp
	ld	sp,hl
;time.c:80: if (timeptr->tm_sec>59) timeptr->tm_sec=59;
;	genAssign
;	AOP_STK for 
	ld	c,4(ix)
	ld	b,5(ix)
;	genPointerGet
	ld	a,(bc)
	ld	e,a
;	genCmpGt
;	genAssign (pointer)
;	isBitvar = 0
	ld	a,#0x3B
	cp	a,e
	jr	NC,00102$
	ld	(bc),a
;	genLabel
00102$:
;time.c:81: if (timeptr->tm_min>59) timeptr->tm_min=59;
;	genPlus
;	AOP_STK for _CheckTime__1_0
;	genPlusIncr
	ld	a,c
	add	a,#0x01
	ld	-2(ix),a
	ld	a,b
	adc	a,#0x00
	ld	-1(ix),a
;	genPointerGet
;	AOP_STK for _CheckTime__1_0
	ld	l,-2(ix)
	ld	h,-1(ix)
	ld	e,(hl)
;	genCmpGt
	ld	a,#0x3B
	sub	a,e
	jr	NC,00104$
;	genAssign (pointer)
;	AOP_STK for _CheckTime__1_0
;	isBitvar = 0
	ld	l,-2(ix)
	ld	h,-1(ix)
	ld	(hl),#0x3B
;	genLabel
00104$:
;time.c:82: if (timeptr->tm_hour>23) timeptr->tm_hour=23;
;	genPlus
;	AOP_STK for _CheckTime__1_0
;	genPlusIncr
	ld	a,c
	add	a,#0x02
	ld	-2(ix),a
	ld	a,b
	adc	a,#0x00
	ld	-1(ix),a
;	genPointerGet
;	AOP_STK for _CheckTime__1_0
	ld	l,-2(ix)
	ld	h,-1(ix)
	ld	e,(hl)
;	genCmpGt
	ld	a,#0x17
	sub	a,e
	jr	NC,00106$
;	genAssign (pointer)
;	AOP_STK for _CheckTime__1_0
;	isBitvar = 0
	ld	l,-2(ix)
	ld	h,-1(ix)
	ld	(hl),#0x17
;	genLabel
00106$:
;time.c:83: if (timeptr->tm_wday>6) timeptr->tm_wday=6;
;	genPlus
;	AOP_STK for _CheckTime__1_0
;	genPlusIncr
	ld	a,c
	add	a,#0x07
	ld	-2(ix),a
	ld	a,b
	adc	a,#0x00
	ld	-1(ix),a
;	genPointerGet
;	AOP_STK for _CheckTime__1_0
	ld	l,-2(ix)
	ld	h,-1(ix)
	ld	e,(hl)
;	genCmpGt
	ld	a,#0x06
	sub	a,e
	jr	NC,00108$
;	genAssign (pointer)
;	AOP_STK for _CheckTime__1_0
;	isBitvar = 0
	ld	l,-2(ix)
	ld	h,-1(ix)
	ld	(hl),#0x06
;	genLabel
00108$:
;time.c:84: if (timeptr->tm_mday<1) timeptr->tm_mday=1;
;	genPlus
;	genPlusIncr
	ld	a,c
	add	a,#0x03
	ld	e,a
	ld	a,b
	adc	a,#0x00
	ld	d,a
;	genPointerGet
;	AOP_STK for _CheckTime__1_0
	ld	a,(de)
	ld	-2(ix),a
;	genCmpLt
;	AOP_STK for _CheckTime__1_0
	ld	a,-2(ix)
	sub	a,#0x01
	jr	NC,00112$
;	genAssign (pointer)
;	isBitvar = 0
	ld	a,#0x01
	ld	(de),a
;	genGoto
	jr	00113$
;	genLabel
00112$:
;time.c:85: else if (timeptr->tm_mday>31) timeptr->tm_mday=31;
;	genCmpGt
;	AOP_STK for _CheckTime__1_0
;	genAssign (pointer)
;	isBitvar = 0
	ld	a,#0x1F
	cp	a,-2(ix)
	jr	NC,00113$
	ld	(de),a
;	genLabel
00113$:
;time.c:86: if (timeptr->tm_mon>11) timeptr->tm_mon=11;
;	genPlus
;	AOP_STK for _CheckTime__1_0
;	genPlusIncr
	ld	a,c
	add	a,#0x04
	ld	-2(ix),a
	ld	a,b
	adc	a,#0x00
	ld	-1(ix),a
;	genPointerGet
;	AOP_STK for _CheckTime__1_0
	ld	l,-2(ix)
	ld	h,-1(ix)
	ld	e,(hl)
;	genCmpGt
	ld	a,#0x0B
	sub	a,e
	jr	NC,00115$
;	genAssign (pointer)
;	AOP_STK for _CheckTime__1_0
;	isBitvar = 0
	ld	l,-2(ix)
	ld	h,-1(ix)
	ld	(hl),#0x0B
;	genLabel
00115$:
;time.c:87: if (timeptr->tm_year<0) timeptr->tm_year=0;
;	genPlus
;	genPlusIncr
	inc	bc
	inc	bc
	inc	bc
	inc	bc
	inc	bc
;	genPointerGet
	ld	l,c
	ld	h,b
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genCmpLt
	ld	a,d
	bit	7,a
	jr	Z,00118$
;	genAssign (pointer)
;	isBitvar = 0
	ld	l,c
	ld	h,b
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;	genLabel
00118$:
;	genEndFunction
	ld	sp,ix
	pop	ix
	ret
;time.c:91: char *asctime(struct tm *timeptr) {
;	genLabel
;	genFunction
;	---------------------------------
; Function asctime
; ---------------------------------
_asctime_start::
_asctime:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-10
	add	hl,sp
	ld	sp,hl
;time.c:92: CheckTime(timeptr);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	ld	l,4(ix)
	ld	h,5(ix)
	push	hl
;	genCall
	call	_CheckTime
	pop	af
;time.c:96: timeptr->tm_year+1900);
;	genAssign
;	AOP_STK for 
	ld	c,4(ix)
	ld	b,5(ix)
;	genPlus
;	genPlusIncr
	ld	a,c
	add	a,#0x05
	ld	e,a
	ld	a,b
	adc	a,#0x00
	ld	d,a
;	genPointerGet
	ld	l,e
	ld	h,d
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genPlus
;	AOP_STK for _asctime__1_0
;	genPlusIncr
	ld	a,e
	add	a,#0x6C
	ld	-2(ix),a
	ld	a,d
	adc	a,#0x07
	ld	-1(ix),a
;time.c:95: timeptr->tm_hour, timeptr->tm_min, timeptr->tm_sec, 
;	genPointerGet
	ld	a,(bc)
	ld	e,a
;	genCast
;	AOP_STK for _asctime__1_0
	ld	-4(ix),e
	ld	-3(ix),#0x00
;	genPlus
;	genPlusIncr
	ld	e,c
	ld	d,b
	inc	de
;	genPointerGet
	ld	a,(de)
	ld	e,a
;	genCast
;	AOP_STK for _asctime__1_0
	ld	-6(ix),e
	ld	-5(ix),#0x00
;	genPlus
;	genPlusIncr
	ld	e,c
	ld	d,b
	inc	de
	inc	de
;	genPointerGet
	ld	a,(de)
	ld	e,a
;	genCast
;	AOP_STK for _asctime__1_0
	ld	-8(ix),e
	ld	-7(ix),#0x00
;time.c:94: __day[timeptr->tm_wday], __month[timeptr->tm_mon], timeptr->tm_mday,
;	genPlus
;	genPlusIncr
	ld	a,c
	add	a,#0x03
	ld	e,a
	ld	a,b
	adc	a,#0x00
	ld	d,a
;	genPointerGet
	ld	a,(de)
	ld	e,a
;	genCast
;	AOP_STK for _asctime__1_0
	ld	-10(ix),e
	ld	-9(ix),#0x00
;	genPlus
;	genPlusIncr
	ld	a,c
	add	a,#0x04
	ld	e,a
	ld	a,b
	adc	a,#0x00
	ld	d,a
;	genPointerGet
	ld	a,(de)
	ld	e,a
;	genLeftShift
	sla	e
;	genPlus
	ld	a,#<___month
	add	a,e
	ld	e,a
	ld	a,#>___month
	adc	a,#0x00
	ld	d,a
;	genPointerGet
	ld	l,e
	ld	h,d
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genPlus
;	genPlusIncr
	ld	a,c
	add	a,#0x07
	ld	c,a
	ld	a,b
	adc	a,#0x00
	ld	b,a
;	genPointerGet
	ld	a,(bc)
	ld	c,a
;	genLeftShift
	sla	c
;	genPlus
	ld	a,#<___day
	add	a,c
	ld	c,a
	ld	a,#>___day
	adc	a,#0x00
	ld	b,a
;	genPointerGet
	ld	l,c
	ld	h,b
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;time.c:93: sprintf (ascTimeBuffer, "%s %s %2d %02d:%02d:%02d %04d\n",
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _asctime__1_0
	ld	l,-2(ix)
	ld	h,-1(ix)
	push	hl
;	genIpush
;	AOP_STK for _asctime__1_0
	ld	l,-4(ix)
	ld	h,-3(ix)
	push	hl
;	genIpush
;	AOP_STK for _asctime__1_0
	ld	l,-6(ix)
	ld	h,-5(ix)
	push	hl
;	genIpush
;	AOP_STK for _asctime__1_0
	ld	l,-8(ix)
	ld	h,-7(ix)
	push	hl
;	genIpush
;	AOP_STK for _asctime__1_0
	ld	l,-10(ix)
	ld	h,-9(ix)
	push	hl
;	genIpush
	push	de
;	genIpush
	push	bc
;	genIpush
	ld	hl,#__str_0
	push	hl
;	genIpush
	ld	hl,#_ascTimeBuffer
	push	hl
;	genCall
	call	_sprintf
	ld	iy,#0x0012
	add	iy,sp
	ld	sp,iy
;time.c:97: return ascTimeBuffer;
;	genRet
; Dump of IC_LEFT: type AOP_IMMD size 2
	ld	hl,#_ascTimeBuffer
;	genLabel
;	genEndFunction
	ld	sp,ix
	pop	ix
	ret
_asctime_end::
__str_0:
	.ascii "%s %s %2d %02d:%02d:%02d %04d"
	.db 0x0A
	.db 0x00
;time.c:100: char *ctime(time_t *timep) {
;	genLabel
;	genFunction
;	---------------------------------
; Function ctime
; ---------------------------------
_ctime_start::
_ctime:
	push	ix
	ld	ix,#0
	add	ix,sp
;time.c:101: return asctime(localtime(timep));
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	ld	l,4(ix)
	ld	h,5(ix)
	push	hl
;	genCall
	call	_localtime
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	genCall
	ex	(sp),hl
	call	_asctime
	pop	af
;	genRet
; Dump of IC_LEFT: type AOP_STR size 2
;	genLabel
;	genEndFunction
	pop	ix
	ret
_ctime_end::
;time.c:117: struct tm *localtime(time_t *timep) {
;	genLabel
;	genFunction
;	---------------------------------
; Function localtime
; ---------------------------------
_localtime_start::
_localtime:
	push	ix
	ld	ix,#0
	add	ix,sp
;time.c:118: return gmtime(timep);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	ld	l,4(ix)
	ld	h,5(ix)
	push	hl
;	genCall
	call	_gmtime
	pop	af
;	genRet
; Dump of IC_LEFT: type AOP_STR size 2
;	genLabel
;	genEndFunction
	pop	ix
	ret
_localtime_end::
;time.c:121: struct tm *gmtime(time_t *timep) {
;	genLabel
;	genFunction
;	---------------------------------
; Function gmtime
; ---------------------------------
_gmtime_start::
_gmtime:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-13
	add	hl,sp
	ld	sp,hl
;time.c:122: unsigned long epoch=*timep;
;	genAssign
;	AOP_STK for 
	ld	c,4(ix)
	ld	b,5(ix)
	push	bc
	pop	iy
;	genPointerGet
	ld	c,0(iy)
	ld	b,1(iy)
	ld	e,2(iy)
	ld	d,3(iy)
;	genAssign
;	AOP_STK for _gmtime_epoch_1_1
	ld	-4(ix),c
	ld	-3(ix),b
	ld	-2(ix),e
	ld	-1(ix),d
;time.c:127: lastTime.tm_sec=epoch%60;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x003C
	push	hl
;	genIpush
;	AOP_STK for _gmtime_epoch_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	push	hl
	ld	l,-4(ix)
	ld	h,-3(ix)
	push	hl
;	genCall
	call	__modulong_rrx_s
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	pop	af
	pop	af
;	genCast
	ld	a,c
;	genAssign (pointer)
;	isBitvar = 0
	ld	hl,#_lastTime
	ld	(hl),a
;time.c:128: epoch/=60; // now it is minutes
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x003C
	push	hl
;	genIpush
;	AOP_STK for _gmtime_epoch_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	push	hl
	ld	l,-4(ix)
	ld	h,-3(ix)
	push	hl
;	genCall
	call	__divulong_rrx_s
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	pop	af
	pop	af
;	genAssign
;	AOP_STK for _gmtime_epoch_1_1
	ld	-4(ix),c
	ld	-3(ix),b
	ld	-2(ix),e
	ld	-1(ix),d
;time.c:129: lastTime.tm_min=epoch%60;
;	genPlus
;	AOP_STK for _gmtime__1_0
;	genPlusIncr
	ld	hl,#_lastTime + 1
	ld	-13(ix),l
	ld	-12(ix),h
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x003C
	push	hl
;	genIpush
;	AOP_STK for _gmtime_epoch_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	push	hl
	ld	l,-4(ix)
	ld	h,-3(ix)
	push	hl
;	genCall
	call	__modulong_rrx_s
	ld	b,d
	ld	c,e
	ld	d,h
	ld	e,l
	pop	af
	pop	af
	pop	af
	pop	af
;	genCast
	ld	a,e
;	genAssign (pointer)
;	AOP_STK for _gmtime__1_0
;	isBitvar = 0
	ld	l,-13(ix)
	ld	h,-12(ix)
	ld	(hl),a
;time.c:130: epoch/=60; // now it is hours
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x003C
	push	hl
;	genIpush
;	AOP_STK for _gmtime_epoch_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	push	hl
	ld	l,-4(ix)
	ld	h,-3(ix)
	push	hl
;	genCall
	call	__divulong_rrx_s
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	pop	af
	pop	af
;	genAssign
;	AOP_STK for _gmtime_epoch_1_1
	ld	-4(ix),c
	ld	-3(ix),b
	ld	-2(ix),e
	ld	-1(ix),d
;time.c:131: lastTime.tm_hour=epoch%24;
;	genPlus
;	AOP_STK for _gmtime__1_0
;	genPlusIncr
	ld	hl,#_lastTime + 2
	ld	-13(ix),l
	ld	-12(ix),h
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x0018
	push	hl
;	genIpush
;	AOP_STK for _gmtime_epoch_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	push	hl
	ld	l,-4(ix)
	ld	h,-3(ix)
	push	hl
;	genCall
	call	__modulong_rrx_s
	ld	b,d
	ld	c,e
	ld	d,h
	ld	e,l
	pop	af
	pop	af
	pop	af
	pop	af
;	genCast
	ld	a,e
;	genAssign (pointer)
;	AOP_STK for _gmtime__1_0
;	isBitvar = 0
	ld	l,-13(ix)
	ld	h,-12(ix)
	ld	(hl),a
;time.c:132: epoch/=24; // now it is days
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x0018
	push	hl
;	genIpush
;	AOP_STK for _gmtime_epoch_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	push	hl
	ld	l,-4(ix)
	ld	h,-3(ix)
	push	hl
;	genCall
	call	__divulong_rrx_s
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	pop	af
	pop	af
;	genAssign
;	AOP_STK for _gmtime_epoch_1_1
	ld	-4(ix),c
	ld	-3(ix),b
	ld	-2(ix),e
	ld	-1(ix),d
;time.c:133: lastTime.tm_wday=(epoch+4)%7;
;	genPlus
;	AOP_STK for _gmtime__1_0
;	genPlusIncr
	ld	hl,#_lastTime + 7
	ld	-13(ix),l
	ld	-12(ix),h
;	genPlus
;	AOP_STK for _gmtime_epoch_1_1
;	genPlusIncr
	ld	a,-4(ix)
	add	a,#0x04
	ld	e,a
	ld	a,-3(ix)
	adc	a,#0x00
	ld	d,a
	ld	a,-2(ix)
	adc	a,#0x00
	ld	c,a
	ld	a,-1(ix)
	adc	a,#0x00
	ld	b,a
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x0007
	push	hl
;	genIpush
	ld	l,c
	ld	h,b
	push	hl
	ld	l,e
	ld	h,d
	push	hl
;	genCall
	call	__modulong_rrx_s
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	pop	af
	pop	af
;	genCast
	ld	a,c
;	genAssign (pointer)
;	AOP_STK for _gmtime__1_0
;	isBitvar = 0
	ld	l,-13(ix)
	ld	h,-12(ix)
	ld	(hl),a
;time.c:136: days=0;
;	genAssign
;	AOP_STK for _gmtime_days_1_1
	xor	a,a
	ld	-11(ix),a
	ld	-10(ix),a
	ld	-9(ix),a
	ld	-8(ix),a
;time.c:137: while((days += (LEAP_YEAR(year) ? 366 : 365)) <= epoch) {
;	genAssign
;	AOP_STK for _gmtime_year_1_1
	ld	-6(ix),#0xB2
	ld	-5(ix),#0x07
;	genLabel
00101$:
;	genAnd
;	AOP_STK for _gmtime_year_1_1
	ld	a,-6(ix)
	and	a,#0x03
	ld	e,a
	ld	d,#0x00
;	genNot
	ld	a,e
	or	a,d
	sub	a,#0x01
	ld	a,#0x00
	rla
;	genIfx
	ld	e,a
	or	a,a
	jr	Z,00119$
;	genAssign
	ld	de,#0x016E
;	genGoto
	jr	00120$
;	genLabel
00119$:
;	genAssign
	ld	de,#0x016D
;	genLabel
00120$:
;	genCast
	ld	a,d
	rla	
	sbc	a,a
	ld	c,a
	ld	b,a
;	genPlus
;	AOP_STK for _gmtime_days_1_1
	ld	a,-11(ix)
	add	a,e
	ld	e,a
	ld	a,-10(ix)
	adc	a,d
	ld	d,a
	ld	a,-9(ix)
	adc	a,c
	ld	c,a
	ld	a,-8(ix)
	adc	a,b
	ld	b,a
;	genAssign
;	AOP_STK for _gmtime_days_1_1
	ld	-11(ix),e
	ld	-10(ix),d
	ld	-9(ix),c
	ld	-8(ix),b
;	genCmpGt
;	AOP_STK for _gmtime_epoch_1_1
	ld	a,-4(ix)
	sub	a,e
	ld	a,-3(ix)
	sbc	a,d
	ld	a,-2(ix)
	sbc	a,c
	ld	a,-1(ix)
	sbc	a,b
	jr	C,00103$
;time.c:138: year++;
;	genPlus
;	AOP_STK for _gmtime_year_1_1
;	genPlusIncr
	inc	-6(ix)
	jr	NZ,00134$
	inc	-5(ix)
00134$:
;	genGoto
	jp	00101$
;	genLabel
00103$:
;time.c:140: lastTime.tm_year=year-1900;
;	genPlus
;	genPlusIncr
	ld	bc,#_lastTime + 5
;	genMinus
;	AOP_STK for _gmtime_year_1_1
	ld	a,-6(ix)
	add	a,#0x94
	ld	e,a
	ld	a,-5(ix)
	adc	a,#0xF8
	ld	d,a
;	genAssign (pointer)
;	isBitvar = 0
	ld	l,c
	ld	h,b
	ld	(hl),e
	inc	hl
	ld	(hl),d
;time.c:142: days -= LEAP_YEAR(year) ? 366 : 365;
;	genAnd
;	AOP_STK for _gmtime_year_1_1
;	AOP_STK for _gmtime__1_0
	ld	a,-6(ix)
	and	a,#0x03
	ld	-13(ix),a
	ld	-12(ix),#0x00
;	genNot
;	AOP_STK for _gmtime__1_0
	ld	a,-13(ix)
	or	a,-12(ix)
	sub	a,#0x01
	ld	a,#0x00
	rla
;	genIfx
	ld	e,a
	or	a,a
	jr	Z,00121$
;	genAssign
	ld	de,#0x016E
;	genGoto
	jr	00122$
;	genLabel
00121$:
;	genAssign
	ld	de,#0x016D
;	genLabel
00122$:
;	genCast
	ld	a,d
	rla	
	sbc	a,a
	ld	c,a
	ld	b,a
;	genMinus
;	AOP_STK for _gmtime_days_1_1
	ld	a,-11(ix)
	sub	a,e
	ld	-11(ix),a
	ld	a,-10(ix)
	sbc	a,d
	ld	-10(ix),a
	ld	a,-9(ix)
	sbc	a,c
	ld	-9(ix),a
	ld	a,-8(ix)
	sbc	a,b
	ld	-8(ix),a
;time.c:143: epoch -= days; // now it is days in this year, starting at 0
;	genMinus
;	AOP_STK for _gmtime_epoch_1_1
;	AOP_STK for _gmtime_days_1_1
	ld	a,-4(ix)
	sub	a,-11(ix)
	ld	-4(ix),a
	ld	a,-3(ix)
	sbc	a,-10(ix)
	ld	-3(ix),a
	ld	a,-2(ix)
	sbc	a,-9(ix)
	ld	-2(ix),a
	ld	a,-1(ix)
	sbc	a,-8(ix)
	ld	-1(ix),a
;time.c:144: lastTime.tm_yday=epoch;
;	genPlus
;	genPlusIncr
	ld	bc,#_lastTime + 8
;	genCast
;	AOP_STK for _gmtime_epoch_1_1
	ld	e,-4(ix)
	ld	d,-3(ix)
;	genAssign (pointer)
;	isBitvar = 0
	ld	l,c
	ld	h,b
	ld	(hl),e
	inc	hl
	ld	(hl),d
;time.c:149: for (month=0; month<12; month++) {
;	genAssign
;	AOP_STK for _gmtime_month_1_1
	ld	-7(ix),#0x00
;	genLabel
00113$:
;	genCmpLt
;	AOP_STK for _gmtime_month_1_1
	ld	a,-7(ix)
	sub	a,#0x0C
	jp	NC,00116$
;time.c:150: if (month==1) { // februari
;	genCmpEq
;	AOP_STK for _gmtime_month_1_1
; genCmpEq: left 1, right 1, result 0
	ld	a,-7(ix)
	sub	a,#0x01
	jr	Z,00136$
	jr	00108$
00136$:
;time.c:151: if (LEAP_YEAR(year)) {
;	genIfx
;	AOP_STK for _gmtime__1_0
	ld	a,-13(ix)
	or	a,-12(ix)
	jr	NZ,00105$
;time.c:152: monthLength=29;
;	genAssign
	ld	b,#0x1D
;	genGoto
	jr	00109$
;	genLabel
00105$:
;time.c:154: monthLength=28;
;	genAssign
	ld	b,#0x1C
;	genGoto
	jr	00109$
;	genLabel
00108$:
;time.c:157: monthLength = monthDays[month];
;	genPlus
;	AOP_STK for _gmtime_month_1_1
	ld	a,#<_monthDays
	add	a,-7(ix)
	ld	e,a
	ld	a,#>_monthDays
	adc	a,#0x00
	ld	d,a
;	genPointerGet
	ld	a,(de)
	ld	e,a
;	genAssign
	ld	b,e
;	genLabel
00109$:
;time.c:160: if (epoch>=monthLength) {
;	genCast
	ld	de,#0x0000
	ld	c,#0x00
;	genCmpLt
;	AOP_STK for _gmtime_epoch_1_1
	ld	a,-4(ix)
	sub	a,b
	ld	a,-3(ix)
	sbc	a,e
	ld	a,-2(ix)
	sbc	a,d
	ld	a,-1(ix)
	sbc	a,c
	jr	C,00116$
;time.c:161: epoch-=monthLength;
;	genMinus
;	AOP_STK for _gmtime_epoch_1_1
	ld	a,-4(ix)
	sub	a,b
	ld	-4(ix),a
	ld	a,-3(ix)
	sbc	a,e
	ld	-3(ix),a
	ld	a,-2(ix)
	sbc	a,d
	ld	-2(ix),a
	ld	a,-1(ix)
	sbc	a,c
	ld	-1(ix),a
;time.c:149: for (month=0; month<12; month++) {
;	genPlus
;	AOP_STK for _gmtime_month_1_1
;	genPlusIncr
	inc	-7(ix)
;	genGoto
	jp	00113$
;	genLabel
00116$:
;time.c:166: lastTime.tm_mon=month;
;	genPlus
;	genPlusIncr
;	genAssign (pointer)
;	AOP_STK for _gmtime_month_1_1
;	isBitvar = 0
;time.c:167: lastTime.tm_mday=epoch+1;
;	genPlus
;	genPlusIncr
	ld	a,-7(ix)
	ld	(#_lastTime + 4),a
	ld	bc,#_lastTime + 3
;	genCast
;	AOP_STK for _gmtime_epoch_1_1
	ld	e,-4(ix)
;	genPlus
;	genPlusIncr
	ld	a,e
	add	a,#0x01
;	genAssign (pointer)
;	isBitvar = 0
	ld	(bc),a
;time.c:169: lastTime.tm_isdst=0;
;	genPlus
;	genPlusIncr
	ld	bc,#_lastTime + 10
;	genAssign (pointer)
;	isBitvar = 0
	ld	a,#0x00
	ld	(bc),a
;time.c:171: return &lastTime;
;	genRet
; Dump of IC_LEFT: type AOP_IMMD size 2
	ld	hl,#_lastTime
;	genLabel
;	genEndFunction
	ld	sp,ix
	pop	ix
	ret
_gmtime_end::
;time.c:175: time_t mktime(struct tm *timeptr) {
;	genLabel
;	genFunction
;	---------------------------------
; Function mktime
; ---------------------------------
_mktime_start::
_mktime:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-14
	add	hl,sp
	ld	sp,hl
;time.c:176: int year=timeptr->tm_year+1900, month=timeptr->tm_mon, i;
;	genAssign
;	AOP_STK for 
	ld	c,4(ix)
	ld	b,5(ix)
;	genPlus
;	genPlusIncr
	ld	a,c
	add	a,#0x05
	ld	e,a
	ld	a,b
	adc	a,#0x00
	ld	d,a
;	genPointerGet
	ld	l,e
	ld	h,d
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;	genPlus
;	AOP_STK for _mktime_year_1_1
;	genPlusIncr
	ld	a,e
	add	a,#0x6C
	ld	-2(ix),a
	ld	a,d
	adc	a,#0x07
	ld	-1(ix),a
;	genPlus
;	genPlusIncr
	ld	a,c
	add	a,#0x04
	ld	e,a
	ld	a,b
	adc	a,#0x00
	ld	d,a
;	genPointerGet
	ld	a,(de)
	ld	e,a
;	genCast
;	AOP_STK for _mktime_month_1_1
	ld	-4(ix),e
	ld	-3(ix),#0x00
;time.c:179: CheckTime(timeptr);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	push	bc
;	genCall
	call	_CheckTime
	pop	af
;time.c:182: seconds= (year-1970)*(60*60*24L*365);
;	genMinus
;	AOP_STK for _mktime_year_1_1
	ld	a,-2(ix)
	add	a,#0x4E
	ld	c,a
	ld	a,-1(ix)
	adc	a,#0xF8
;	genCast
	ld	b,a
	rla	
	sbc	a,a
	ld	e,a
	ld	d,a
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	l,e
	ld	h,d
	push	hl
	ld	l,c
	ld	h,b
	push	hl
;	genIpush
	ld	hl,#0x01E1
	push	hl
	ld	hl,#0x1E13380
	push	hl
;	genCall
	call	__mullong_rrx_s
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	pop	af
	pop	af
;	genAssign
;	AOP_STK for _mktime_seconds_1_1
	ld	-10(ix),c
	ld	-9(ix),b
	ld	-8(ix),e
	ld	-7(ix),d
;time.c:185: for (i=1970; i<year; i++) {
;	genAssign
;	AOP_STK for _mktime_seconds_1_1
;	AOP_STK for _mktime__1_0
	ld	a,-10(ix)
	ld	-14(ix),a
	ld	a,-9(ix)
	ld	-13(ix),a
	ld	a,-8(ix)
	ld	-12(ix),a
	ld	a,-7(ix)
	ld	-11(ix),a
;	genAssign
	ld	bc,#0x07B2
;	genLabel
00107$:
;	genCmpLt
;	AOP_STK for _mktime_year_1_1
	ld	a,c
	sub	a,-2(ix)
	ld	a,b
	sbc	a,-1(ix)
	jp	P,00124$
;time.c:186: if (LEAP_YEAR(i)) {
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
	ld	hl,#0x0004
	push	hl
;	genIpush
	push	bc
;	genCall
	call	__modsint_rrx_s
	ld	d,h
	ld	e,l
	pop	af
	pop	af
	pop	bc
;	genIfx
	ld	a,e
	or	a,d
	jr	NZ,00109$
;time.c:187: seconds+= 60*60*24L;
;	genPlus
;	AOP_STK for _mktime__1_0
;	genPlusIncr
	ld	a,-14(ix)
	add	a,#0x80
	ld	-14(ix),a
	ld	a,-13(ix)
	adc	a,#0x51
	ld	-13(ix),a
	ld	a,-12(ix)
	adc	a,#0x01
	ld	-12(ix),a
	ld	a,-11(ix)
	adc	a,#0x00
	ld	-11(ix),a
;	genLabel
00109$:
;time.c:185: for (i=1970; i<year; i++) {
;	genPlus
;	genPlusIncr
	inc	bc
;	genGoto
	jr	00107$
;	genLabel
00124$:
;	genAssign
;	AOP_STK for _mktime__1_0
;	AOP_STK for _mktime_seconds_1_1
	ld	a,-14(ix)
	ld	-10(ix),a
	ld	a,-13(ix)
	ld	-9(ix),a
	ld	a,-12(ix)
	ld	-8(ix),a
	ld	a,-11(ix)
	ld	-7(ix),a
;time.c:192: for (i=0; i<month; i++) {
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x0004
	push	hl
;	genIpush
;	AOP_STK for _mktime_year_1_1
	ld	l,-2(ix)
	ld	h,-1(ix)
	push	hl
;	genCall
	call	__modsint_rrx_s
;	AOP_STK for _mktime__1_0
	ld	-13(ix),h
	ld	-14(ix),l
	pop	af
	pop	af
;	genAssign
;	AOP_STK for _mktime_i_1_1
	ld	-6(ix),#0x00
	ld	-5(ix),#0x00
;	genLabel
00111$:
;	genCmpLt
;	AOP_STK for _mktime_i_1_1
;	AOP_STK for _mktime_month_1_1
	ld	a,-6(ix)
	sub	a,-4(ix)
	ld	a,-5(ix)
	sbc	a,-3(ix)
	jp	P,00114$
;time.c:193: if (i==1 && LEAP_YEAR(year)) { 
;	genCmpEq
;	AOP_STK for _mktime_i_1_1
; genCmpEq: left 2, right 2, result 0
	ld	a,-6(ix)
	sub	a,#0x01
	jr	NZ,00126$
	or	a,-5(ix)
	jr	Z,00127$
00126$:
	jr	00104$
00127$:
;	genIfx
;	AOP_STK for _mktime__1_0
	ld	a,-14(ix)
	or	a,-13(ix)
	jr	NZ,00104$
;time.c:194: seconds+= 60*60*24L*29;
;	genPlus
;	AOP_STK for _mktime_seconds_1_1
;	genPlusIncr
	ld	a,-10(ix)
	add	a,#0x80
	ld	-10(ix),a
	ld	a,-9(ix)
	adc	a,#0x3B
	ld	-9(ix),a
	ld	a,-8(ix)
	adc	a,#0x26
	ld	-8(ix),a
	ld	a,-7(ix)
	adc	a,#0x00
	ld	-7(ix),a
;	genGoto
	jp	00113$
;	genLabel
00104$:
;time.c:196: seconds+= 60*60*24L*monthDays[i];
;	genPlus
;	AOP_STK for _mktime_i_1_1
	ld	a,#<_monthDays
	add	a,-6(ix)
	ld	e,a
	ld	a,#>_monthDays
	adc	a,-5(ix)
	ld	d,a
;	genPointerGet
	ld	a,(de)
;	genCast
	ld	e,a
	rla	
	sbc	a,a
	ld	d,a
	ld	c,a
	ld	b,a
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	l,c
	ld	h,b
	push	hl
	ld	l,e
	ld	h,d
	push	hl
;	genIpush
	ld	hl,#0x0001
	push	hl
	ld	hl,#0x15180
	push	hl
;	genCall
	call	__mullong_rrx_s
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	pop	af
	pop	af
;	genPlus
;	AOP_STK for _mktime_seconds_1_1
	ld	a,-10(ix)
	add	a,c
	ld	-10(ix),a
	ld	a,-9(ix)
	adc	a,b
	ld	-9(ix),a
	ld	a,-8(ix)
	adc	a,e
	ld	-8(ix),a
	ld	a,-7(ix)
	adc	a,d
	ld	-7(ix),a
;	genLabel
00113$:
;time.c:192: for (i=0; i<month; i++) {
;	genPlus
;	AOP_STK for _mktime_i_1_1
;	genPlusIncr
	inc	-6(ix)
	jr	NZ,00128$
	inc	-5(ix)
00128$:
;	genGoto
	jp	00111$
;	genLabel
00114$:
;time.c:200: seconds+= (timeptr->tm_mday-1)*60*60*24L;
;	genAssign
;	AOP_STK for 
;	AOP_STK for _mktime__1_0
	ld	a,4(ix)
	ld	-14(ix),a
	ld	a,5(ix)
	ld	-13(ix),a
;	genPlus
;	AOP_STK for _mktime__1_0
;	genPlusIncr
	ld	a,-14(ix)
	add	a,#0x03
	ld	e,a
	ld	a,-13(ix)
	adc	a,#0x00
	ld	d,a
;	genPointerGet
	ld	a,(de)
	ld	e,a
;	genCast
	ld	d,#0x00
;	genMinus
	dec	de
;	genCast
	ld	a,d
	rla	
	sbc	a,a
	ld	c,a
	ld	b,a
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	l,c
	ld	h,b
	push	hl
	ld	l,e
	ld	h,d
	push	hl
;	genIpush
	ld	hl,#0x0001
	push	hl
	ld	hl,#0x15180
	push	hl
;	genCall
	call	__mullong_rrx_s
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	pop	af
	pop	af
;	genPlus
;	AOP_STK for _mktime_seconds_1_1
	ld	a,-10(ix)
	add	a,c
	ld	-10(ix),a
	ld	a,-9(ix)
	adc	a,b
	ld	-9(ix),a
	ld	a,-8(ix)
	adc	a,e
	ld	-8(ix),a
	ld	a,-7(ix)
	adc	a,d
	ld	-7(ix),a
;time.c:201: seconds+= timeptr->tm_hour*60*60L;
;	genPlus
;	AOP_STK for _mktime__1_0
;	genPlusIncr
	ld	c,-14(ix)
	ld	b,-13(ix)
	inc	bc
	inc	bc
;	genPointerGet
	ld	a,(bc)
	ld	c,a
;	genCast
	ld	b,#0x00
	ld	de,#0x0000
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	l,e
	ld	h,d
	push	hl
	ld	l,c
	ld	h,b
	push	hl
;	genIpush
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x0E10
	push	hl
;	genCall
	call	__mullong_rrx_s
	ld	b,h
	ld	c,l
	pop	af
	pop	af
	pop	af
	pop	af
;	genPlus
;	AOP_STK for _mktime_seconds_1_1
	ld	a,-10(ix)
	add	a,c
	ld	-10(ix),a
	ld	a,-9(ix)
	adc	a,b
	ld	-9(ix),a
	ld	a,-8(ix)
	adc	a,e
	ld	-8(ix),a
	ld	a,-7(ix)
	adc	a,d
	ld	-7(ix),a
;time.c:202: seconds+= timeptr->tm_min*60;
;	genPlus
;	AOP_STK for _mktime__1_0
;	genPlusIncr
	ld	c,-14(ix)
	ld	b,-13(ix)
	inc	bc
;	genPointerGet
	ld	a,(bc)
	ld	c,a
;	genMult
	ld	e,c
	ld	d,#0x00
	ld	l,e
	ld	h,d
	add	hl,hl
	add	hl,de
	add	hl,hl
	add	hl,de
	add	hl,hl
	add	hl,de
	add	hl,hl
	add	hl,hl
	ld	c,l
	ld	b,h
;	genCast
	ld	a,b
	rla	
	sbc	a,a
	ld	e,a
	ld	d,a
;	genPlus
;	AOP_STK for _mktime_seconds_1_1
	ld	a,-10(ix)
	add	a,c
	ld	-10(ix),a
	ld	a,-9(ix)
	adc	a,b
	ld	-9(ix),a
	ld	a,-8(ix)
	adc	a,e
	ld	-8(ix),a
	ld	a,-7(ix)
	adc	a,d
	ld	-7(ix),a
;time.c:203: seconds+= timeptr->tm_sec;
;	genPointerGet
;	AOP_STK for _mktime__1_0
	ld	l,-14(ix)
	ld	h,-13(ix)
	ld	c,(hl)
;	genCast
	ld	b,#0x00
;	genCast
	ld	a,b
	rla	
	sbc	a,a
	ld	e,a
	ld	d,a
;	genPlus
;	AOP_STK for _mktime_seconds_1_1
	ld	a,-10(ix)
	add	a,c
	ld	-10(ix),a
	ld	a,-9(ix)
	adc	a,b
	ld	-9(ix),a
	ld	a,-8(ix)
	adc	a,e
	ld	-8(ix),a
	ld	a,-7(ix)
	adc	a,d
	ld	-7(ix),a
;time.c:204: return seconds;
;	genRet
;	AOP_STK for _mktime_seconds_1_1
; Dump of IC_LEFT: type AOP_STK size 4
;	 aop_stk -10
	ld	l,-10(ix)
	ld	h,-9(ix)
	ld	e,-8(ix)
	ld	d,-7(ix)
;	genLabel
;	genEndFunction
	ld	sp,ix
	pop	ix
	ret
_mktime_end::
	.area _CODE
__str_1:
	.ascii "Jan"
	.db 0x00
__str_2:
	.ascii "Feb"
	.db 0x00
__str_3:
	.ascii "Mar"
	.db 0x00
__str_4:
	.ascii "Apr"
	.db 0x00
__str_5:
	.ascii "May"
	.db 0x00
__str_6:
	.ascii "Jun"
	.db 0x00
__str_7:
	.ascii "Jul"
	.db 0x00
__str_8:
	.ascii "Aug"
	.db 0x00
__str_9:
	.ascii "Sep"
	.db 0x00
__str_10:
	.ascii "Oct"
	.db 0x00
__str_11:
	.ascii "Nov"
	.db 0x00
__str_12:
	.ascii "Dec"
	.db 0x00
__str_13:
	.ascii "Sun"
	.db 0x00
__str_14:
	.ascii "Mon"
	.db 0x00
__str_15:
	.ascii "Tue"
	.db 0x00
__str_16:
	.ascii "Wed"
	.db 0x00
__str_17:
	.ascii "Thu"
	.db 0x00
__str_18:
	.ascii "Fri"
	.db 0x00
__str_19:
	.ascii "Sat"
	.db 0x00
	.area _CABS
