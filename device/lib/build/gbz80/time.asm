;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:15:01 2018
;--------------------------------------------------------
	.module time
	.optsdcc -mgbz80
	
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
	ld	de,#___month
	ld	a,#<__str_1
	ld	(de),a
	inc	de
	ld	a,#>__str_1
	ld	(de),a
;	genPlus
;	genPlusIncr
	ld	bc,#___month + 2
;	genAssign (pointer)
;	isBitvar = 0
	ld	e,c
	ld	d,b
	ld	a,#<__str_2
	ld	(de),a
	inc	de
	ld	a,#>__str_2
	ld	(de),a
;	genPlus
;	genPlusIncr
	ld	bc,#___month + 4
;	genAssign (pointer)
;	isBitvar = 0
	ld	e,c
	ld	d,b
	ld	a,#<__str_3
	ld	(de),a
	inc	de
	ld	a,#>__str_3
	ld	(de),a
;	genPlus
;	genPlusIncr
	ld	bc,#___month + 6
;	genAssign (pointer)
;	isBitvar = 0
	ld	e,c
	ld	d,b
	ld	a,#<__str_4
	ld	(de),a
	inc	de
	ld	a,#>__str_4
	ld	(de),a
;	genPlus
;	genPlusIncr
	ld	bc,#___month + 8
;	genAssign (pointer)
;	isBitvar = 0
	ld	e,c
	ld	d,b
	ld	a,#<__str_5
	ld	(de),a
	inc	de
	ld	a,#>__str_5
	ld	(de),a
;	genPlus
;	genPlusIncr
	ld	bc,#___month + 10
;	genAssign (pointer)
;	isBitvar = 0
	ld	e,c
	ld	d,b
	ld	a,#<__str_6
	ld	(de),a
	inc	de
	ld	a,#>__str_6
	ld	(de),a
;	genPlus
;	genPlusIncr
	ld	bc,#___month + 12
;	genAssign (pointer)
;	isBitvar = 0
	ld	e,c
	ld	d,b
	ld	a,#<__str_7
	ld	(de),a
	inc	de
	ld	a,#>__str_7
	ld	(de),a
;	genPlus
;	genPlusIncr
	ld	bc,#___month + 14
;	genAssign (pointer)
;	isBitvar = 0
	ld	e,c
	ld	d,b
	ld	a,#<__str_8
	ld	(de),a
	inc	de
	ld	a,#>__str_8
	ld	(de),a
;	genPlus
;	genPlusIncr
	ld	bc,#___month + 16
;	genAssign (pointer)
;	isBitvar = 0
	ld	e,c
	ld	d,b
	ld	a,#<__str_9
	ld	(de),a
	inc	de
	ld	a,#>__str_9
	ld	(de),a
;	genPlus
;	genPlusIncr
	ld	bc,#___month + 18
;	genAssign (pointer)
;	isBitvar = 0
	ld	e,c
	ld	d,b
	ld	a,#<__str_10
	ld	(de),a
	inc	de
	ld	a,#>__str_10
	ld	(de),a
;	genPlus
;	genPlusIncr
	ld	bc,#___month + 20
;	genAssign (pointer)
;	isBitvar = 0
	ld	e,c
	ld	d,b
	ld	a,#<__str_11
	ld	(de),a
	inc	de
	ld	a,#>__str_11
	ld	(de),a
;	genPlus
;	genPlusIncr
	ld	bc,#___month + 22
;	genAssign (pointer)
;	isBitvar = 0
	ld	e,c
	ld	d,b
	ld	a,#<__str_12
	ld	(de),a
	inc	de
	ld	a,#>__str_12
	ld	(de),a
;time.c:64: _CODE char * _CODE __day[]={"Sun","Mon","Tue","Wed","Thu","Fri","Sat"};
;	genAssign (pointer)
;	isBitvar = 0
	ld	de,#___day
	ld	a,#<__str_13
	ld	(de),a
	inc	de
	ld	a,#>__str_13
	ld	(de),a
;	genPlus
;	genPlusIncr
	ld	bc,#___day + 2
;	genAssign (pointer)
;	isBitvar = 0
	ld	e,c
	ld	d,b
	ld	a,#<__str_14
	ld	(de),a
	inc	de
	ld	a,#>__str_14
	ld	(de),a
;	genPlus
;	genPlusIncr
	ld	bc,#___day + 4
;	genAssign (pointer)
;	isBitvar = 0
	ld	e,c
	ld	d,b
	ld	a,#<__str_15
	ld	(de),a
	inc	de
	ld	a,#>__str_15
	ld	(de),a
;	genPlus
;	genPlusIncr
	ld	bc,#___day + 6
;	genAssign (pointer)
;	isBitvar = 0
	ld	e,c
	ld	d,b
	ld	a,#<__str_16
	ld	(de),a
	inc	de
	ld	a,#>__str_16
	ld	(de),a
;	genPlus
;	genPlusIncr
	ld	bc,#___day + 8
;	genAssign (pointer)
;	isBitvar = 0
	ld	e,c
	ld	d,b
	ld	a,#<__str_17
	ld	(de),a
	inc	de
	ld	a,#>__str_17
	ld	(de),a
;	genPlus
;	genPlusIncr
	ld	bc,#___day + 10
;	genAssign (pointer)
;	isBitvar = 0
	ld	e,c
	ld	d,b
	ld	a,#<__str_18
	ld	(de),a
	inc	de
	ld	a,#>__str_18
	ld	(de),a
;	genPlus
;	genPlusIncr
	ld	bc,#___day + 12
;	genAssign (pointer)
;	isBitvar = 0
	ld	e,c
	ld	d,b
	ld	a,#<__str_19
	ld	(de),a
	inc	de
	ld	a,#>__str_19
	ld	(de),a
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
	
;time.c:41: return 0;
;	genRet
; Dump of IC_LEFT: type AOP_LIT size 1
	ld	e,#0x00
;	genLabel
00101$:
;	genEndFunction
	
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
	lda	sp,-20(sp)
;time.c:48: time_t t=-1;
;	genAssign
;	AOP_STK for _time_t_1_1
	lda	hl,4(sp)
	ld	(hl),#0xFF
	inc	hl
	ld	(hl),#0xFF
	inc	hl
	ld	(hl),#0xFF
	inc	hl
	ld	(hl),#0xFF
;time.c:50: if (RtcRead(&now)) {
;	genAddrOf
	lda	hl,8(sp)
	ld	c,l
	ld	b,h
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	push	bc
;	genCall
	call	_RtcRead
	ld	c,e
	lda	sp,2(sp)
;	genIfx
	xor	a,a
	or	a,c
	jp	Z,00102$
;time.c:51: t=mktime(&now);
;	genAddrOf
	lda	hl,8(sp)
	ld	c,l
	ld	b,h
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	push	bc
;	genCall
	call	_mktime
;	AOP_STK for _time__1_0
	push	hl
	lda	hl,4(sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	lda	sp,2(sp)
;	genAssign
;	AOP_STK for _time__1_0
;	AOP_STK for _time_t_1_1
	lda	hl,0(sp)
	ld	d,h
	ld	e,l
	lda	hl,4(sp)
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
;	genLabel
00102$:
;time.c:53: if (timeptr) {
;	genIfx
;	AOP_STK for 
	lda	hl,22(sp)
	ld	a,(hl+)
	or	a,(hl)
	jp	Z,00104$
;time.c:54: *timeptr=t;
;	genAssign
;	AOP_STK for 
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genAssign (pointer)
;	AOP_STK for _time_t_1_1
;	isBitvar = 0
	ld	e,c
	ld	d,b
	lda	hl,4(sp)
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
;	genLabel
00104$:
;time.c:56: return t;
;	genRet
;	AOP_STK for _time_t_1_1
; Dump of IC_LEFT: type AOP_STK size 4
;	 aop_stk -16
	lda	hl,4(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
;	genLabel
00105$:
;	genEndFunction
	lda	sp,20(sp)
	ret
_time_end::
;time.c:69: static void CheckTime(struct tm *timeptr) {
;	genLabel
;	genFunction
;	---------------------------------
; Function CheckTime
; ---------------------------------
_CheckTime:
	lda	sp,-4(sp)
;time.c:80: if (timeptr->tm_sec>59) timeptr->tm_sec=59;
;	genAssign
;	AOP_STK for 
;	AOP_STK for _CheckTime__1_0
	lda	hl,6(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,2(sp)
	ld	(hl+),a
	ld	(hl),e
;	genPointerGet
;	AOP_STK for _CheckTime__1_0
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	c,a
;	genCmpGt
	ld	a,#0x3B
	sub	a,c
	jp	NC,00102$
;	genAssign (pointer)
;	AOP_STK for _CheckTime__1_0
;	isBitvar = 0
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,#0x3B
	ld	(de),a
;	genLabel
00102$:
;time.c:81: if (timeptr->tm_min>59) timeptr->tm_min=59;
;	genPlus
;	AOP_STK for _CheckTime__1_0
;	AOP_STK for _CheckTime__1_0
;	genPlusIncr
	lda	hl,2(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0001
	add	hl,de
	ld	a,l
	ld	d,h
	lda	hl,0(sp)
;	genPointerGet
;	AOP_STK for _CheckTime__1_0
	ld	(hl+),a
	ld	(hl),d
	ld	e,a
	ld	a,(de)
	ld	c,a
;	genCmpGt
	ld	a,#0x3B
	sub	a,c
	jp	NC,00104$
;	genAssign (pointer)
;	AOP_STK for _CheckTime__1_0
;	isBitvar = 0
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,#0x3B
	ld	(de),a
;	genLabel
00104$:
;time.c:82: if (timeptr->tm_hour>23) timeptr->tm_hour=23;
;	genPlus
;	AOP_STK for _CheckTime__1_0
;	AOP_STK for _CheckTime__1_0
;	genPlusIncr
	lda	hl,2(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0002
	add	hl,de
	ld	a,l
	ld	d,h
	lda	hl,0(sp)
;	genPointerGet
;	AOP_STK for _CheckTime__1_0
	ld	(hl+),a
	ld	(hl),d
	ld	e,a
	ld	a,(de)
	ld	c,a
;	genCmpGt
	ld	a,#0x17
	sub	a,c
	jp	NC,00106$
;	genAssign (pointer)
;	AOP_STK for _CheckTime__1_0
;	isBitvar = 0
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,#0x17
	ld	(de),a
;	genLabel
00106$:
;time.c:83: if (timeptr->tm_wday>6) timeptr->tm_wday=6;
;	genPlus
;	AOP_STK for _CheckTime__1_0
;	AOP_STK for _CheckTime__1_0
;	genPlusIncr
	lda	hl,2(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0007
	add	hl,de
	ld	a,l
	ld	d,h
	lda	hl,0(sp)
;	genPointerGet
;	AOP_STK for _CheckTime__1_0
	ld	(hl+),a
	ld	(hl),d
	ld	e,a
	ld	a,(de)
	ld	c,a
;	genCmpGt
	ld	a,#0x06
	sub	a,c
	jp	NC,00108$
;	genAssign (pointer)
;	AOP_STK for _CheckTime__1_0
;	isBitvar = 0
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,#0x06
	ld	(de),a
;	genLabel
00108$:
;time.c:84: if (timeptr->tm_mday<1) timeptr->tm_mday=1;
;	genPlus
;	AOP_STK for _CheckTime__1_0
;	genPlusIncr
	lda	hl,2(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0003
	add	hl,de
	ld	c,l
	ld	b,h
;	genPointerGet
;	AOP_STK for _CheckTime__1_0
	ld	a,(bc)
	lda	hl,0(sp)
;	genCmpLt
;	AOP_STK for _CheckTime__1_0
	ld	(hl),a
	sub	a,#0x01
	jp	NC,00112$
;	genAssign (pointer)
;	isBitvar = 0
	ld	a,#0x01
	ld	(bc),a
;	genGoto
	jp	00113$
;	genLabel
00112$:
;time.c:85: else if (timeptr->tm_mday>31) timeptr->tm_mday=31;
;	genCmpGt
;	AOP_STK for _CheckTime__1_0
	ld	a,#0x1F
	lda	hl,0(sp)
	sub	a,(hl)
	jp	NC,00113$
;	genAssign (pointer)
;	isBitvar = 0
	ld	a,#0x1F
	ld	(bc),a
;	genLabel
00113$:
;time.c:86: if (timeptr->tm_mon>11) timeptr->tm_mon=11;
;	genPlus
;	AOP_STK for _CheckTime__1_0
;	AOP_STK for _CheckTime__1_0
;	genPlusIncr
	lda	hl,2(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0004
	add	hl,de
	ld	a,l
	ld	d,h
	lda	hl,0(sp)
;	genPointerGet
;	AOP_STK for _CheckTime__1_0
	ld	(hl+),a
	ld	(hl),d
	ld	e,a
	ld	a,(de)
	ld	c,a
;	genCmpGt
	ld	a,#0x0B
	sub	a,c
	jp	NC,00115$
;	genAssign (pointer)
;	AOP_STK for _CheckTime__1_0
;	isBitvar = 0
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,#0x0B
	ld	(de),a
;	genLabel
00115$:
;time.c:87: if (timeptr->tm_year<0) timeptr->tm_year=0;
;	genPlus
;	AOP_STK for _CheckTime__1_0
;	AOP_STK for _CheckTime__1_0
;	genPlusIncr
	lda	hl,2(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0005
	add	hl,de
	ld	a,l
	ld	d,h
	lda	hl,0(sp)
;	genPointerGet
;	AOP_STK for _CheckTime__1_0
	ld	(hl+),a
	ld	(hl),d
	ld	e,a
	ld	a,(de)
	ld	c,a
	inc	de
	ld	a,(de)
;	genCmpLt
	ld	b,a
	bit	7,a
	jp	Z,00118$
;	genAssign (pointer)
;	AOP_STK for _CheckTime__1_0
;	isBitvar = 0
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,#0x00
	ld	(de),a
	inc	de
	ld	a,#0x00
	ld	(de),a
;	genLabel
00118$:
;	genEndFunction
	lda	sp,4(sp)
	ret
;time.c:91: char *asctime(struct tm *timeptr) {
;	genLabel
;	genFunction
;	---------------------------------
; Function asctime
; ---------------------------------
_asctime_start::
_asctime:
	lda	sp,-14(sp)
;time.c:92: CheckTime(timeptr);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	lda	hl,16(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	_CheckTime
	lda	sp,2(sp)
;time.c:96: timeptr->tm_year+1900);
;	genAssign
;	AOP_STK for 
;	AOP_STK for _asctime__1_0
	lda	hl,16(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,12(sp)
	ld	(hl+),a
	ld	(hl),e
;	genPlus
;	AOP_STK for _asctime__1_0
;	genPlusIncr
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0005
	add	hl,de
	ld	c,l
	ld	b,h
;	genPointerGet
	ld	e,c
	ld	d,b
	ld	a,(de)
	ld	c,a
	inc	de
	ld	a,(de)
	ld	b,a
;	genPlus
;	AOP_STK for _asctime__1_0
;	genPlusIncr
	ld	hl,#0x076C
	add	hl,bc
	ld	a,l
	ld	d,h
	lda	hl,10(sp)
	ld	(hl+),a
	ld	(hl),d
;time.c:95: timeptr->tm_hour, timeptr->tm_min, timeptr->tm_sec, 
;	genPointerGet
;	AOP_STK for _asctime__1_0
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	c,a
;	genCast
;	AOP_STK for _asctime__1_0
	lda	hl,8(sp)
	ld	(hl),c
	inc	hl
	ld	(hl),#0x00
;	genPlus
;	AOP_STK for _asctime__1_0
;	genPlusIncr
	lda	hl,12(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
;	genPointerGet
	ld	a,(bc)
	ld	c,a
;	genCast
;	AOP_STK for _asctime__1_0
	lda	hl,6(sp)
	ld	(hl),c
	inc	hl
	ld	(hl),#0x00
;	genPlus
;	AOP_STK for _asctime__1_0
;	genPlusIncr
	lda	hl,12(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	inc	bc
;	genPointerGet
	ld	a,(bc)
	ld	c,a
;	genCast
;	AOP_STK for _asctime__1_0
	lda	hl,4(sp)
	ld	(hl),c
	inc	hl
	ld	(hl),#0x00
;time.c:94: __day[timeptr->tm_wday], __month[timeptr->tm_mon], timeptr->tm_mday,
;	genPlus
;	AOP_STK for _asctime__1_0
;	genPlusIncr
	lda	hl,12(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0003
	add	hl,de
	ld	c,l
	ld	b,h
;	genPointerGet
	ld	a,(bc)
	ld	c,a
;	genCast
;	AOP_STK for _asctime__1_0
	lda	hl,2(sp)
	ld	(hl),c
	inc	hl
	ld	(hl),#0x00
;	genPlus
;	AOP_STK for _asctime__1_0
;	genPlusIncr
	lda	hl,12(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0004
	add	hl,de
	ld	c,l
	ld	b,h
;	genPointerGet
	ld	a,(bc)
	ld	c,a
;	genLeftShift
	sla	c
;	genPlus
	ld	a,#<___month
	add	a,c
	ld	c,a
	ld	a,#>___month
	adc	a,#0x00
	ld	b,a
;	genPointerGet
;	AOP_STK for _asctime__1_0
	ld	e,c
	ld	d,b
	ld	a,(de)
	lda	hl,0(sp)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
;	genPlus
;	AOP_STK for _asctime__1_0
;	genPlusIncr
	lda	hl,12(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0007
	add	hl,de
	ld	c,l
	ld	b,h
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
	ld	e,c
	ld	d,b
	ld	a,(de)
	ld	c,a
	inc	de
	ld	a,(de)
	ld	b,a
;time.c:93: sprintf (ascTimeBuffer, "%s %s %2d %02d:%02d:%02d %04d\n",
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _asctime__1_0
	lda	hl,10(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for _asctime__1_0
	lda	hl,10(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for _asctime__1_0
	lda	hl,10(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for _asctime__1_0
	lda	hl,10(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for _asctime__1_0
	lda	hl,10(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
;	AOP_STK for _asctime__1_0
	lda	hl,10(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
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
	lda	sp,18(sp)
;time.c:97: return ascTimeBuffer;
;	genRet
; Dump of IC_LEFT: type AOP_IMMD size 2
	ld	de,#_ascTimeBuffer
;	genLabel
00101$:
;	genEndFunction
	lda	sp,14(sp)
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
	
;time.c:101: return asctime(localtime(timep));
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	lda	hl,2(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	_localtime
	ld	b,d
	ld	c,e
	lda	sp,2(sp)
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	push	bc
;	genCall
	call	_asctime
	lda	sp,2(sp)
;	genRet
; Dump of IC_LEFT: type AOP_STR size 2
;	genLabel
00101$:
;	genEndFunction
	
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
	
;time.c:118: return gmtime(timep);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for 
	lda	hl,2(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	_gmtime
	lda	sp,2(sp)
;	genRet
; Dump of IC_LEFT: type AOP_STR size 2
;	genLabel
00101$:
;	genEndFunction
	
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
	lda	sp,-19(sp)
;time.c:122: unsigned long epoch=*timep;
;	genAssign
;	AOP_STK for 
	lda	hl,21(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genPointerGet
;	AOP_STK for _gmtime_epoch_1_1
	ld	e,c
	ld	d,b
	ld	a,(de)
	lda	hl,15(sp)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
;	genAssign
;	AOP_STK for _gmtime_epoch_1_1
;	(registers are the same)
;time.c:127: lastTime.tm_sec=epoch%60;
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x003C
	push	hl
;	genIpush
;	AOP_STK for _gmtime_epoch_1_1
	lda	hl,21(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,21(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__modulong_rrx_s
;	AOP_STK for _gmtime__1_0
	push	hl
	lda	hl,14(sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	lda	sp,8(sp)
;	genCast
;	AOP_STK for _gmtime__1_0
	lda	hl,4(sp)
	ld	a,(hl)
;	genAssign (pointer)
;	isBitvar = 0
	ld	de,#_lastTime
	ld	(de),a
;time.c:128: epoch/=60; // now it is minutes
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x003C
	push	hl
;	genIpush
;	AOP_STK for _gmtime_epoch_1_1
	lda	hl,21(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,21(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__divulong_rrx_s
;	AOP_STK for _gmtime__1_0
	push	hl
	lda	hl,14(sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	lda	sp,8(sp)
;	genAssign
;	AOP_STK for _gmtime__1_0
;	AOP_STK for _gmtime_epoch_1_1
	lda	hl,4(sp)
	ld	d,h
	ld	e,l
	lda	hl,15(sp)
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
;time.c:129: lastTime.tm_min=epoch%60;
;	genPlus
;	genPlusIncr
	ld	bc,#_lastTime + 1
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x003C
	push	hl
;	genIpush
;	AOP_STK for _gmtime_epoch_1_1
	lda	hl,23(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,23(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__modulong_rrx_s
;	AOP_STK for _gmtime__1_0
	push	hl
	lda	hl,12(sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	lda	sp,8(sp)
	pop	bc
;	genCast
;	AOP_STK for _gmtime__1_0
	lda	hl,0(sp)
	ld	a,(hl)
;	genAssign (pointer)
;	isBitvar = 0
	ld	(bc),a
;time.c:130: epoch/=60; // now it is hours
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x003C
	push	hl
;	genIpush
;	AOP_STK for _gmtime_epoch_1_1
	lda	hl,21(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,21(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__divulong_rrx_s
;	AOP_STK for _gmtime__1_0
	push	hl
	lda	hl,10(sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	lda	sp,8(sp)
;	genAssign
;	AOP_STK for _gmtime__1_0
;	AOP_STK for _gmtime_epoch_1_1
	lda	hl,0(sp)
	ld	d,h
	ld	e,l
	lda	hl,15(sp)
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
;time.c:131: lastTime.tm_hour=epoch%24;
;	genPlus
;	genPlusIncr
	ld	bc,#_lastTime + 2
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x0018
	push	hl
;	genIpush
;	AOP_STK for _gmtime_epoch_1_1
	lda	hl,23(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,23(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__modulong_rrx_s
;	AOP_STK for _gmtime__1_0
	push	hl
	lda	hl,16(sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	lda	sp,8(sp)
	pop	bc
;	genCast
;	AOP_STK for _gmtime__1_0
	lda	hl,4(sp)
	ld	a,(hl)
;	genAssign (pointer)
;	isBitvar = 0
	ld	(bc),a
;time.c:132: epoch/=24; // now it is days
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x0018
	push	hl
;	genIpush
;	AOP_STK for _gmtime_epoch_1_1
	lda	hl,21(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,21(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__divulong_rrx_s
;	AOP_STK for _gmtime__1_0
	push	hl
	lda	hl,10(sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	lda	sp,8(sp)
;	genAssign
;	AOP_STK for _gmtime__1_0
;	AOP_STK for _gmtime_epoch_1_1
	lda	hl,0(sp)
	ld	d,h
	ld	e,l
	lda	hl,15(sp)
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
;time.c:133: lastTime.tm_wday=(epoch+4)%7;
;	genPlus
;	genPlusIncr
	ld	bc,#_lastTime + 7
;	genPlus
;	AOP_STK for _gmtime_epoch_1_1
;	AOP_STK for _gmtime__1_0
;	genPlusIncr
	lda	hl,15(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	add	a,#0x04
	ld	e,a
	ld	a,d
	adc	a,#0x00
	push	af
	lda	hl,7(sp)
	ld	(hl-),a
	ld	(hl),e
	lda	hl,19(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	pop	af
	ld	a,e
	adc	a,#0x00
	ld	e,a
	ld	a,d
	adc	a,#0x00
	lda	hl,7(sp)
	ld	(hl-),a
	ld	(hl),e
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 1 deSending: 0
	push	bc
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x0007
	push	hl
;	genIpush
;	AOP_STK for _gmtime__1_0
	lda	hl,12(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,12(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__modulong_rrx_s
;	AOP_STK for _gmtime__1_0
	push	hl
	lda	hl,16(sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	lda	sp,8(sp)
	pop	bc
;	genCast
;	AOP_STK for _gmtime__1_0
	lda	hl,4(sp)
	ld	a,(hl)
;	genAssign (pointer)
;	isBitvar = 0
	ld	(bc),a
;time.c:136: days=0;
;	genAssign
;	AOP_STK for _gmtime_days_1_1
	xor	a,a
	lda	hl,8(sp)
	ld	(hl+),a
	ld	(hl+),a
	ld	(hl+),a
;time.c:137: while((days += (LEAP_YEAR(year) ? 366 : 365)) <= epoch) {
;	genAssign
;	AOP_STK for _gmtime_year_1_1
	ld	(hl+),a
	inc	hl
	ld	(hl),#0xB2
	inc	hl
	ld	(hl),#0x07
;	genLabel
00101$:
;	genAnd
;	AOP_STK for _gmtime_year_1_1
	lda	hl,13(sp)
	ld	a,(hl)
	and	a,#0x03
	ld	c,a
	ld	b,#0x00
;	genNot
	ld	a,c
	or	a,b
	sub	a,#0x01
	ld	a,#0x00
	rla
;	genIfx
	ld	c,a
	or	a,a
	jp	Z,00119$
;	genAssign
	ld	bc,#0x016E
;	genGoto
	jp	00120$
;	genLabel
00119$:
;	genAssign
	ld	bc,#0x016D
;	genLabel
00120$:
;	genCast
;	AOP_STK for _gmtime__1_0
	lda	hl,0(sp)
	ld	(hl),c
	inc	hl
	ld	(hl),b
	ld	a,b
	rla	
	sbc	a,a
	inc	hl
	ld	(hl+),a
	ld	(hl),a
;	genPlus
;	AOP_STK for _gmtime_days_1_1
;	AOP_STK for _gmtime__1_0
	lda	hl,8(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	lda	hl,0(sp)
	add	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a,(hl)
	push	af
	ld	(hl-),a
	ld	(hl),e
	lda	hl,12(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	lda	hl,4(sp)
	pop	af
	ld	a,e
	adc	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a,(hl)
	ld	(hl-),a
	ld	(hl),e
;	genAssign
;	AOP_STK for _gmtime__1_0
;	AOP_STK for _gmtime_days_1_1
	dec	hl
	dec	hl
	ld	d,h
	ld	e,l
	lda	hl,8(sp)
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
;	genCmpGt
;	AOP_STK for _gmtime__1_0
;	AOP_STK for _gmtime_epoch_1_1
	lda	hl,15(sp)
	ld	d,h
	ld	e,l
	lda	hl,0(sp)
	ld	a,(de)
	sub	a,(hl)
	inc	hl
	inc	de
	ld	a,(de)
	sbc	a,(hl)
	inc	hl
	inc	de
	ld	a,(de)
	sbc	a,(hl)
	inc	hl
	inc	de
	ld	a,(de)
	sbc	a,(hl)
	jp	C,00103$
;time.c:138: year++;
;	genPlus
;	AOP_STK for _gmtime_year_1_1
;	genPlusIncr
	lda	hl,13(sp)
	inc	(hl)
	jr	NZ,00134$
	inc	hl
	inc	(hl)
00134$:
;	genGoto
	jp	00101$
;	genLabel
00103$:
;time.c:140: lastTime.tm_year=year-1900;
;	genPlus
;	AOP_STK for _gmtime__1_0
;	genPlusIncr
	ld	de,#_lastTime
	ld	hl,#0x0005
	add	hl,de
	ld	a,l
	ld	d,h
	lda	hl,0(sp)
	ld	(hl+),a
	ld	(hl),d
;	genMinus
;	AOP_STK for _gmtime_year_1_1
	lda	hl,13(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x076C
	ld	a,e
	sub	a,l
	ld	e,a
	ld	a,d
	sbc	a,h
	ld	b,a
	ld	c,e
;	genAssign (pointer)
;	AOP_STK for _gmtime__1_0
;	isBitvar = 0
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,c
	ld	(de),a
	inc	de
	ld	a,b
	ld	(de),a
;time.c:142: days -= LEAP_YEAR(year) ? 366 : 365;
;	genAnd
;	AOP_STK for _gmtime_year_1_1
;	AOP_STK for _gmtime__1_0
	lda	hl,13(sp)
	ld	a,(hl)
	and	a,#0x03
	lda	hl,0(sp)
	ld	(hl+),a
	ld	(hl),#0x00
;	genNot
;	AOP_STK for _gmtime__1_0
	dec	hl
	ld	a,(hl+)
	or	a,(hl)
	sub	a,#0x01
	ld	a,#0x00
	rla
;	genIfx
	ld	c,a
	or	a,a
	jp	Z,00121$
;	genAssign
	ld	bc,#0x016E
;	genGoto
	jp	00122$
;	genLabel
00121$:
;	genAssign
	ld	bc,#0x016D
;	genLabel
00122$:
;	genCast
;	AOP_STK for _gmtime__1_0
	lda	hl,4(sp)
	ld	(hl),c
	inc	hl
	ld	(hl),b
	ld	a,b
	rla	
	sbc	a,a
	inc	hl
	ld	(hl+),a
;	genMinus
;	AOP_STK for _gmtime_days_1_1
;	AOP_STK for _gmtime__1_0
	ld	(hl+),a
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	lda	hl,4(sp)
	sub	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a,(hl)
	push	af
	lda	hl,11(sp)
	ld	(hl-),a
	ld	(hl),e
	inc	hl
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	lda	hl,8(sp)
	pop	af
	ld	a,e
	sbc	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a,(hl)
	lda	hl,11(sp)
	ld	(hl-),a
	ld	(hl),e
;time.c:143: epoch -= days; // now it is days in this year, starting at 0
;	genMinus
;	AOP_STK for _gmtime_epoch_1_1
;	AOP_STK for _gmtime_days_1_1
	lda	hl,15(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	lda	hl,8(sp)
	sub	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a,(hl)
	push	af
	lda	hl,18(sp)
	ld	(hl-),a
	ld	(hl),e
	inc	hl
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	lda	hl,12(sp)
	pop	af
	ld	a,e
	sbc	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a,(hl)
	lda	hl,18(sp)
	ld	(hl-),a
	ld	(hl),e
;time.c:144: lastTime.tm_yday=epoch;
;	genPlus
;	AOP_STK for _gmtime__1_0
;	genPlusIncr
	ld	de,#_lastTime
	ld	hl,#0x0008
	add	hl,de
	ld	a,l
	ld	d,h
	lda	hl,4(sp)
	ld	(hl+),a
	ld	(hl),d
;	genCast
;	AOP_STK for _gmtime_epoch_1_1
	lda	hl,15(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;	genAssign (pointer)
;	AOP_STK for _gmtime__1_0
;	isBitvar = 0
	lda	hl,4(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,c
	ld	(de),a
	inc	de
	ld	a,b
	ld	(de),a
;time.c:149: for (month=0; month<12; month++) {
;	genAssign
;	AOP_STK for _gmtime_month_1_1
	lda	hl,12(sp)
	ld	(hl),#0x00
;	genLabel
00113$:
;	genCmpLt
;	AOP_STK for _gmtime_month_1_1
	lda	hl,12(sp)
	ld	a,(hl)
	sub	a,#0x0C
	jp	NC,00116$
;time.c:150: if (month==1) { // februari
;	genCmpEq
;	AOP_STK for _gmtime_month_1_1
; genCmpEq: left 1, right 1, result 0
	ld	a,(hl)
	sub	a,#0x01
	jp	NZ,00135$
	jr	00136$
00135$:
	jp	00108$
00136$:
;time.c:151: if (LEAP_YEAR(year)) {
;	genIfx
;	AOP_STK for _gmtime__1_0
	lda	hl,0(sp)
	ld	a,(hl+)
	or	a,(hl)
	jp	NZ,00105$
;time.c:152: monthLength=29;
;	genAssign
	ld	b,#0x1D
;	genGoto
	jp	00109$
;	genLabel
00105$:
;time.c:154: monthLength=28;
;	genAssign
	ld	b,#0x1C
;	genGoto
	jp	00109$
;	genLabel
00108$:
;time.c:157: monthLength = monthDays[month];
;	genPlus
;	AOP_STK for _gmtime_month_1_1
	ld	de,#_monthDays
	lda	hl,12(sp)
	ld	l,(hl)
	ld	h,#0x00
	add	hl,de
	ld	c,l
	ld	b,h
;	genPointerGet
	ld	a,(bc)
	ld	c,a
;	genAssign
	ld	b,c
;	genLabel
00109$:
;time.c:160: if (epoch>=monthLength) {
;	genCast
;	AOP_STK for _gmtime__1_0
	lda	hl,4(sp)
	ld	(hl),b
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;	genCmpLt
;	AOP_STK for _gmtime_epoch_1_1
;	AOP_STK for _gmtime__1_0
	lda	hl,15(sp)
	ld	d,h
	ld	e,l
	lda	hl,4(sp)
	ld	a,(de)
	sub	a,(hl)
	inc	hl
	inc	de
	ld	a,(de)
	sbc	a,(hl)
	inc	hl
	inc	de
	ld	a,(de)
	sbc	a,(hl)
	inc	hl
	inc	de
	ld	a,(de)
	sbc	a,(hl)
	jp	C,00116$
;time.c:161: epoch-=monthLength;
;	genMinus
;	AOP_STK for _gmtime_epoch_1_1
;	AOP_STK for _gmtime__1_0
	lda	hl,15(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	lda	hl,4(sp)
	sub	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a,(hl)
	push	af
	lda	hl,18(sp)
	ld	(hl-),a
	ld	(hl),e
	inc	hl
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	lda	hl,8(sp)
	pop	af
	ld	a,e
	sbc	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a,(hl)
	lda	hl,18(sp)
	ld	(hl-),a
	ld	(hl),e
;time.c:149: for (month=0; month<12; month++) {
;	genPlus
;	AOP_STK for _gmtime_month_1_1
;	genPlusIncr
	lda	hl,12(sp)
	inc	(hl)
;	genGoto
	jp	00113$
;	genLabel
00116$:
;time.c:166: lastTime.tm_mon=month;
;	genPlus
;	genPlusIncr
	ld	bc,#_lastTime + 4
;	genAssign (pointer)
;	AOP_STK for _gmtime_month_1_1
;	isBitvar = 0
	lda	hl,12(sp)
	ld	a,(hl)
	ld	(bc),a
;time.c:167: lastTime.tm_mday=epoch+1;
;	genPlus
;	AOP_STK for _gmtime__1_0
;	genPlusIncr
	ld	de,#_lastTime
	ld	hl,#0x0003
	add	hl,de
	ld	a,l
	ld	d,h
	lda	hl,0(sp)
	ld	(hl+),a
	ld	(hl),d
;	genCast
;	AOP_STK for _gmtime_epoch_1_1
	lda	hl,15(sp)
	ld	c,(hl)
;	genPlus
;	genPlusIncr
	ld	a,c
	add	a,#0x01
;	genAssign (pointer)
;	AOP_STK for _gmtime__1_0
;	isBitvar = 0
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	(de),a
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
	ld	de,#_lastTime
;	genLabel
00117$:
;	genEndFunction
	lda	sp,19(sp)
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
	lda	sp,-20(sp)
;time.c:176: int year=timeptr->tm_year+1900, month=timeptr->tm_mon, i;
;	genAssign
;	AOP_STK for 
;	AOP_STK for _mktime__1_0
	lda	hl,22(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,8(sp)
	ld	(hl+),a
	ld	(hl),e
;	genPlus
;	AOP_STK for _mktime__1_0
;	genPlusIncr
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0005
	add	hl,de
	ld	c,l
	ld	b,h
;	genPointerGet
	ld	e,c
	ld	d,b
	ld	a,(de)
	ld	c,a
	inc	de
	ld	a,(de)
	ld	b,a
;	genPlus
;	AOP_STK for _mktime_year_1_1
;	genPlusIncr
	ld	hl,#0x076C
	add	hl,bc
	ld	a,l
	ld	d,h
	lda	hl,18(sp)
	ld	(hl+),a
	ld	(hl),d
;	genPlus
;	AOP_STK for _mktime__1_0
;	genPlusIncr
	lda	hl,8(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0004
	add	hl,de
	ld	c,l
	ld	b,h
;	genPointerGet
	ld	a,(bc)
	ld	c,a
;	genCast
;	AOP_STK for _mktime_month_1_1
	lda	hl,16(sp)
	ld	(hl),c
	inc	hl
	ld	(hl),#0x00
;time.c:179: CheckTime(timeptr);
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _mktime__1_0
	lda	hl,8(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	_CheckTime
	lda	sp,2(sp)
;time.c:182: seconds= (year-1970)*(60*60*24L*365);
;	genMinus
;	AOP_STK for _mktime_year_1_1
	lda	hl,18(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x07B2
	ld	a,e
	sub	a,l
	ld	e,a
	ld	a,d
	sbc	a,h
	ld	b,a
	ld	c,e
;	genCast
;	AOP_STK for _mktime__1_0
	lda	hl,4(sp)
	ld	(hl),c
	inc	hl
	ld	(hl),b
	ld	a,b
	rla	
	sbc	a,a
	inc	hl
	ld	(hl+),a
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _mktime__1_0
	ld	(hl-),a
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,6(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
	ld	hl,#0x01E1
	push	hl
	ld	hl,#0x1E13380
	push	hl
;	genCall
	call	__mullong_rrx_s
;	AOP_STK for _mktime_seconds_1_1
	push	hl
	lda	hl,20(sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	lda	sp,8(sp)
;	genAssign
;	AOP_STK for _mktime_seconds_1_1
;	(registers are the same)
;time.c:185: for (i=1970; i<year; i++) {
;	genAssign
;	AOP_STK for _mktime_seconds_1_1
;	AOP_STK for _mktime__1_0
	lda	hl,10(sp)
	ld	d,h
	ld	e,l
	lda	hl,4(sp)
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
;	genAssign
;	AOP_STK for _mktime_i_1_1
	lda	hl,14(sp)
	ld	(hl),#0xB2
	inc	hl
	ld	(hl),#0x07
;	genLabel
00107$:
;	genCmpLt
;	AOP_STK for _mktime_i_1_1
;	AOP_STK for _mktime_year_1_1
	lda	hl,14(sp)
	ld	d,h
	ld	e,l
	lda	hl,18(sp)
	ld	a,(de)
	sub	a,(hl)
	inc	hl
	inc	de
	ld	a,(de)
	sbc	a,(hl)
	rlca
	jp	NC,00124$
;time.c:186: if (LEAP_YEAR(i)) {
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x0004
	push	hl
;	genIpush
;	AOP_STK for _mktime_i_1_1
	lda	hl,16(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__modsint_rrx_s
	ld	b,d
	ld	c,e
	lda	sp,4(sp)
;	genIfx
	ld	a,c
	or	a,b
	jp	NZ,00109$
;time.c:187: seconds+= 60*60*24L;
;	genPlus
;	AOP_STK for _mktime__1_0
;	genPlusIncr
	lda	hl,4(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	add	a,#0x80
	ld	e,a
	ld	a,d
	adc	a,#0x51
	push	af
	ld	(hl-),a
	ld	(hl),e
	inc	hl
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	pop	af
	ld	a,e
	adc	a,#0x01
	ld	e,a
	ld	a,d
	adc	a,#0x00
	ld	(hl-),a
	ld	(hl),e
;	genLabel
00109$:
;time.c:185: for (i=1970; i<year; i++) {
;	genPlus
;	AOP_STK for _mktime_i_1_1
;	genPlusIncr
	lda	hl,14(sp)
	inc	(hl)
	jr	NZ,00126$
	inc	hl
	inc	(hl)
00126$:
;	genGoto
	jp	00107$
;	genLabel
00124$:
;	genAssign
;	AOP_STK for _mktime__1_0
;	AOP_STK for _mktime_seconds_1_1
	lda	hl,4(sp)
	ld	d,h
	ld	e,l
	lda	hl,10(sp)
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
;time.c:192: for (i=0; i<month; i++) {
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
	ld	hl,#0x0004
	push	hl
;	genIpush
;	AOP_STK for _mktime_year_1_1
	lda	hl,20(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genCall
	call	__modsint_rrx_s
;	AOP_STK for _mktime__1_0
	lda	hl,9(sp)
	ld	(hl),d
	dec	hl
	ld	(hl),e
	lda	sp,4(sp)
;	genAssign
;	AOP_STK for _mktime_i_1_1
	lda	hl,14(sp)
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;	genLabel
00111$:
;	genCmpLt
;	AOP_STK for _mktime_i_1_1
;	AOP_STK for _mktime_month_1_1
	lda	hl,14(sp)
	ld	d,h
	ld	e,l
	inc	hl
	inc	hl
	ld	a,(de)
	sub	a,(hl)
	inc	hl
	inc	de
	ld	a,(de)
	sbc	a,(hl)
	rlca
	jp	NC,00114$
;time.c:193: if (i==1 && LEAP_YEAR(year)) { 
;	genCmpEq
;	AOP_STK for _mktime_i_1_1
; genCmpEq: left 2, right 2, result 0
	lda	hl,14(sp)
	ld	a,(hl)
	sub	a,#0x01
	jp	NZ,00127$
	inc	hl
	ld	a,(hl)
	or	a,a
	jp	NZ,00127$
	jr	00128$
00127$:
	jp	00104$
00128$:
;	genIfx
;	AOP_STK for _mktime__1_0
	lda	hl,4(sp)
	ld	a,(hl+)
	or	a,(hl)
	jp	NZ,00104$
;time.c:194: seconds+= 60*60*24L*29;
;	genPlus
;	AOP_STK for _mktime_seconds_1_1
;	genPlusIncr
	lda	hl,10(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	add	a,#0x80
	ld	e,a
	ld	a,d
	adc	a,#0x3B
	push	af
	ld	(hl-),a
	ld	(hl),e
	inc	hl
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	pop	af
	ld	a,e
	adc	a,#0x26
	ld	e,a
	ld	a,d
	adc	a,#0x00
	ld	(hl-),a
	ld	(hl),e
;	genGoto
	jp	00113$
;	genLabel
00104$:
;time.c:196: seconds+= 60*60*24L*monthDays[i];
;	genPlus
;	AOP_STK for _mktime_i_1_1
	ld	de,#_monthDays
	lda	hl,14(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	add	hl,de
	ld	c,l
	ld	b,h
;	genPointerGet
	ld	a,(bc)
	ld	c,a
;	genCast
;	AOP_STK for _mktime__1_0
	lda	hl,0(sp)
	ld	(hl),c
	ld	a,c
	rla	
	sbc	a,a
	inc	hl
	ld	(hl+),a
	ld	(hl+),a
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _mktime__1_0
	ld	(hl-),a
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,2(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
	ld	hl,#0x0001
	push	hl
	ld	hl,#0x15180
	push	hl
;	genCall
	call	__mullong_rrx_s
;	AOP_STK for _mktime__1_0
	push	hl
	lda	hl,10(sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	lda	sp,8(sp)
;	genPlus
;	AOP_STK for _mktime_seconds_1_1
;	AOP_STK for _mktime__1_0
	lda	hl,10(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	lda	hl,0(sp)
	add	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a,(hl)
	push	af
	lda	hl,13(sp)
	ld	(hl-),a
	ld	(hl),e
	inc	hl
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	lda	hl,4(sp)
	pop	af
	ld	a,e
	adc	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a,(hl)
	lda	hl,13(sp)
	ld	(hl-),a
	ld	(hl),e
;	genLabel
00113$:
;time.c:192: for (i=0; i<month; i++) {
;	genPlus
;	AOP_STK for _mktime_i_1_1
;	genPlusIncr
	lda	hl,14(sp)
	inc	(hl)
	jr	NZ,00129$
	inc	hl
	inc	(hl)
00129$:
;	genGoto
	jp	00111$
;	genLabel
00114$:
;time.c:200: seconds+= (timeptr->tm_mday-1)*60*60*24L;
;	genAssign
;	AOP_STK for 
;	AOP_STK for _mktime__1_0
	lda	hl,22(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,0(sp)
	ld	(hl+),a
	ld	(hl),e
;	genPlus
;	AOP_STK for _mktime__1_0
;	genPlusIncr
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0003
	add	hl,de
	ld	c,l
	ld	b,h
;	genPointerGet
	ld	a,(bc)
	ld	c,a
;	genCast
	ld	b,#0x00
;	genMinus
	dec	bc
;	genCast
;	AOP_STK for _mktime__1_0
	lda	hl,4(sp)
	ld	(hl),c
	inc	hl
	ld	(hl),b
	ld	a,b
	rla	
	sbc	a,a
	inc	hl
	ld	(hl+),a
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _mktime__1_0
	ld	(hl-),a
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,6(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
	ld	hl,#0x0001
	push	hl
	ld	hl,#0x15180
	push	hl
;	genCall
	call	__mullong_rrx_s
;	AOP_STK for _mktime__1_0
	push	hl
	lda	hl,14(sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	lda	sp,8(sp)
;	genPlus
;	AOP_STK for _mktime_seconds_1_1
;	AOP_STK for _mktime__1_0
	lda	hl,10(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	lda	hl,4(sp)
	add	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a,(hl)
	push	af
	lda	hl,13(sp)
	ld	(hl-),a
	ld	(hl),e
	inc	hl
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	lda	hl,8(sp)
	pop	af
	ld	a,e
	adc	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a,(hl)
	lda	hl,13(sp)
	ld	(hl-),a
	ld	(hl),e
;time.c:201: seconds+= timeptr->tm_hour*60*60L;
;	genPlus
;	AOP_STK for _mktime__1_0
;	genPlusIncr
	lda	hl,0(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	inc	bc
;	genPointerGet
	ld	a,(bc)
	ld	c,a
;	genCast
;	AOP_STK for _mktime__1_0
	lda	hl,4(sp)
	ld	(hl),c
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;	genIpush
; _saveRegsForCall: sendSetSize: 0 deInUse: 0 bcInUse: 0 deSending: 0
;	AOP_STK for _mktime__1_0
	dec	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	lda	hl,6(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;	genIpush
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x0E10
	push	hl
;	genCall
	call	__mullong_rrx_s
;	AOP_STK for _mktime__1_0
	push	hl
	lda	hl,14(sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	lda	sp,8(sp)
;	genPlus
;	AOP_STK for _mktime_seconds_1_1
;	AOP_STK for _mktime__1_0
	lda	hl,10(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	lda	hl,4(sp)
	add	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a,(hl)
	push	af
	lda	hl,13(sp)
	ld	(hl-),a
	ld	(hl),e
	inc	hl
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	lda	hl,8(sp)
	pop	af
	ld	a,e
	adc	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a,(hl)
	lda	hl,13(sp)
	ld	(hl-),a
	ld	(hl),e
;time.c:202: seconds+= timeptr->tm_min*60;
;	genPlus
;	AOP_STK for _mktime__1_0
;	genPlusIncr
	lda	hl,0(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
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
;	AOP_STK for _mktime__1_0
	lda	hl,4(sp)
	ld	(hl),c
	inc	hl
	ld	(hl),b
	ld	a,b
	rla	
	sbc	a,a
	inc	hl
	ld	(hl+),a
	ld	(hl),a
;	genPlus
;	AOP_STK for _mktime_seconds_1_1
;	AOP_STK for _mktime__1_0
	lda	hl,10(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	lda	hl,4(sp)
	add	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a,(hl)
	push	af
	lda	hl,13(sp)
	ld	(hl-),a
	ld	(hl),e
	inc	hl
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	lda	hl,8(sp)
	pop	af
	ld	a,e
	adc	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a,(hl)
	lda	hl,13(sp)
	ld	(hl-),a
	ld	(hl),e
;time.c:203: seconds+= timeptr->tm_sec;
;	genPointerGet
;	AOP_STK for _mktime__1_0
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	c,a
;	genCast
	ld	b,#0x00
;	genCast
;	AOP_STK for _mktime__1_0
	dec	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
	ld	a,b
	rla	
	sbc	a,a
	inc	hl
	ld	(hl+),a
	ld	(hl),a
;	genPlus
;	AOP_STK for _mktime_seconds_1_1
;	AOP_STK for _mktime__1_0
	lda	hl,10(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	lda	hl,0(sp)
	add	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a,(hl)
	push	af
	lda	hl,13(sp)
	ld	(hl-),a
	ld	(hl),e
	inc	hl
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	lda	hl,4(sp)
	pop	af
	ld	a,e
	adc	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a,(hl)
	lda	hl,13(sp)
	ld	(hl-),a
	ld	(hl),e
;time.c:204: return seconds;
;	genRet
;	AOP_STK for _mktime_seconds_1_1
; Dump of IC_LEFT: type AOP_STK size 4
;	 aop_stk -10
	dec	hl
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
;	genLabel
00115$:
;	genEndFunction
	lda	sp,20(sp)
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
