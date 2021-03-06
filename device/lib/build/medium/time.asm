;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Mar 14 2018) (UNIX)
; This file was generated Wed Mar 14 01:14:26 2018
;--------------------------------------------------------
	.module time
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___day
	.globl ___month
	.globl _RtcRead
	.globl _time
	.globl _asctime
	.globl _ctime
	.globl _localtime
	.globl _gmtime
	.globl _mktime
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (DATA)
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (DATA)
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_asctime_sloc0_1_0:
	.ds 2
_asctime_sloc1_1_0:
	.ds 2
_asctime_sloc2_1_0:
	.ds 2
_asctime_sloc3_1_0:
	.ds 2
_asctime_sloc4_1_0:
	.ds 2
_gmtime_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area OSEG    (OVR,DATA)
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
_time_timeptr_1_1:
	.ds 3
_time_now_1_1:
	.ds 12
_ascTimeBuffer:
	.ds 32
_asctime_timeptr_1_1:
	.ds 3
_lastTime:
	.ds 12
_gmtime_epoch_1_1:
	.ds 4
_gmtime_days_1_1:
	.ds 4
_mktime_timeptr_1_1:
	.ds 3
_mktime_year_1_1:
	.ds 2
_mktime_month_1_1:
	.ds 2
_mktime_i_1_1:
	.ds 2
_mktime_seconds_1_1:
	.ds 4
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'RtcRead'
;------------------------------------------------------------
;------------------------------------------------------------
;	time.c:38: unsigned char RtcRead(struct tm *timeptr) {
;	-----------------------------------------
;	 function RtcRead
;	-----------------------------------------
_RtcRead:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	time.c:41: return 0;
	mov	dpl,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'time'
;------------------------------------------------------------
;------------------------------------------------------------
;	time.c:46: time_t time(time_t *timeptr) {
;	-----------------------------------------
;	 function time
;	-----------------------------------------
_time:
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	r0,#_time_timeptr_1_1
	movx	@r0,a
	inc	r0
	mov	a,r3
	movx	@r0,a
	inc	r0
	mov	a,r2
	movx	@r0,a
;	time.c:48: time_t t=-1;
	mov	r5,#0xFF
	mov	r6,#0xFF
	mov	r7,#0xFF
	mov	r2,#0xFF
;	time.c:50: if (RtcRead(&now)) {
	mov	dptr,#_time_now_1_1
	mov	b,#0x60
	push	ar2
	push	ar5
	push	ar6
	push	ar7
	lcall	_RtcRead
	mov	a,dpl
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar2
	jz	00102$
;	time.c:51: t=mktime(&now);
	mov	dptr,#_time_now_1_1
	mov	b,#0x60
	lcall	_mktime
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	r2,a
00102$:
;	time.c:53: if (timeptr) {
	mov	r0,#_time_timeptr_1_1
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	orl	b,a
	inc	r0
	movx	a,@r0
	orl	a,b
	jz	00104$
;	time.c:54: *timeptr=t;
	mov	r0,#_time_timeptr_1_1
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
00104$:
;	time.c:56: return t;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'CheckTime'
;------------------------------------------------------------
;------------------------------------------------------------
;	time.c:69: static void CheckTime(struct tm *timeptr) {
;	-----------------------------------------
;	 function CheckTime
;	-----------------------------------------
_CheckTime:
;	time.c:80: if (timeptr->tm_sec>59) timeptr->tm_sec=59;
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	lcall	__gptrget
	mov  r5,a
	add	a,#0xff - 0x3B
	jnc	00102$
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x3B
	lcall	__gptrput
00102$:
;	time.c:81: if (timeptr->tm_min>59) timeptr->tm_min=59;
	mov	a,#0x01
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov  r0,a
	add	a,#0xff - 0x3B
	jnc	00104$
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x3B
	lcall	__gptrput
00104$:
;	time.c:82: if (timeptr->tm_hour>23) timeptr->tm_hour=23;
	mov	a,#0x02
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov  r0,a
	add	a,#0xff - 0x17
	jnc	00106$
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x17
	lcall	__gptrput
00106$:
;	time.c:83: if (timeptr->tm_wday>6) timeptr->tm_wday=6;
	mov	a,#0x07
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov  r0,a
	add	a,#0xff - 0x06
	jnc	00108$
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x06
	lcall	__gptrput
00108$:
;	time.c:84: if (timeptr->tm_mday<1) timeptr->tm_mday=1;
	mov	a,#0x03
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	cjne	r0,#0x01,00132$
00132$:
	jnc	00112$
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x01
	lcall	__gptrput
	sjmp	00113$
00112$:
;	time.c:85: else if (timeptr->tm_mday>31) timeptr->tm_mday=31;
	mov	a,r0
	add	a,#0xff - 0x1F
	jnc	00113$
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x1F
	lcall	__gptrput
00113$:
;	time.c:86: if (timeptr->tm_mon>11) timeptr->tm_mon=11;
	mov	a,#0x04
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov  r0,a
	add	a,#0xff - 0x0B
	jnc	00115$
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x0B
	lcall	__gptrput
00115$:
;	time.c:87: if (timeptr->tm_year<0) timeptr->tm_year=0;
	mov	a,#0x05
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	jnb	acc.7,00118$
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
	inc	dptr
	clr	a
	ljmp	__gptrput
00118$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'asctime'
;------------------------------------------------------------
;sloc0                     Allocated with name '_asctime_sloc0_1_0'
;sloc1                     Allocated with name '_asctime_sloc1_1_0'
;sloc2                     Allocated with name '_asctime_sloc2_1_0'
;sloc3                     Allocated with name '_asctime_sloc3_1_0'
;sloc4                     Allocated with name '_asctime_sloc4_1_0'
;------------------------------------------------------------
;	time.c:91: char *asctime(struct tm *timeptr) {
;	-----------------------------------------
;	 function asctime
;	-----------------------------------------
_asctime:
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	r0,#_asctime_timeptr_1_1
	movx	@r0,a
	inc	r0
	mov	a,r3
	movx	@r0,a
	inc	r0
	mov	a,r2
	movx	@r0,a
;	time.c:92: CheckTime(timeptr);
	mov	r0,#_asctime_timeptr_1_1
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	lcall	_CheckTime
;	time.c:96: timeptr->tm_year+1900);
	mov	r0,#_asctime_timeptr_1_1
	movx	a,@r0
	add	a,#0x05
	mov	r5,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,#0x6C
	add	a,r5
	mov	_asctime_sloc4_1_0,a
	mov	a,#0x07
	addc	a,r6
	mov	(_asctime_sloc4_1_0 + 1),a
;	time.c:95: timeptr->tm_hour, timeptr->tm_min, timeptr->tm_sec, 
	mov	r0,#_asctime_timeptr_1_1
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	lcall	__gptrget
	mov	r7,a
	mov	_asctime_sloc0_1_0,r7
	mov	(_asctime_sloc0_1_0 + 1),#0x00
	mov	r0,#_asctime_timeptr_1_1
	movx	a,@r0
	add	a,#0x01
	mov	r3,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	r4,a
	inc	r0
	movx	a,@r0
	mov	r2,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	lcall	__gptrget
	mov	r3,a
	mov	_asctime_sloc1_1_0,r3
	mov	(_asctime_sloc1_1_0 + 1),#0x00
	mov	r0,#_asctime_timeptr_1_1
	movx	a,@r0
	add	a,#0x02
	mov	r4,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	r7,a
	inc	r0
	movx	a,@r0
	mov	r2,a
	mov	dpl,r4
	mov	dph,r7
	mov	b,r2
	lcall	__gptrget
	mov	r4,a
	mov	_asctime_sloc2_1_0,r4
	mov	(_asctime_sloc2_1_0 + 1),#0x00
;	time.c:94: __day[timeptr->tm_wday], __month[timeptr->tm_mon], timeptr->tm_mday,
	mov	r0,#_asctime_timeptr_1_1
	movx	a,@r0
	add	a,#0x03
	mov	r3,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	r7,a
	inc	r0
	movx	a,@r0
	mov	r2,a
	mov	dpl,r3
	mov	dph,r7
	mov	b,r2
	lcall	__gptrget
	mov	r3,a
	mov	_asctime_sloc3_1_0,r3
	mov	(_asctime_sloc3_1_0 + 1),#0x00
	mov	r0,#_asctime_timeptr_1_1
	movx	a,@r0
	add	a,#0x04
	mov	r4,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	r7,a
	inc	r0
	movx	a,@r0
	mov	r2,a
	mov	dpl,r4
	mov	dph,r7
	mov	b,r2
	lcall	__gptrget
	add	a,acc
	mov	r2,a
	mov	dptr,#___month
	movc	a,@a+dptr
	xch	a,r2
	inc	dptr
	movc	a,@a+dptr
	mov	r3,a
	mov	r4,#0x80
	mov	r0,#_asctime_timeptr_1_1
	movx	a,@r0
	add	a,#0x07
	mov	r7,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	r5,a
	inc	r0
	movx	a,@r0
	mov	r6,a
	mov	dpl,r7
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	add	a,acc
	mov	r5,a
	mov	dptr,#___day
	movc	a,@a+dptr
	xch	a,r5
	inc	dptr
	movc	a,@a+dptr
	mov	r6,a
	mov	r7,#0x80
;	time.c:93: sprintf (ascTimeBuffer, "%s %s %2d %02d:%02d:%02d %04d\n",
	push	_asctime_sloc4_1_0
	push	(_asctime_sloc4_1_0 + 1)
	push	_asctime_sloc0_1_0
	push	(_asctime_sloc0_1_0 + 1)
	push	_asctime_sloc1_1_0
	push	(_asctime_sloc1_1_0 + 1)
	push	_asctime_sloc2_1_0
	push	(_asctime_sloc2_1_0 + 1)
	push	_asctime_sloc3_1_0
	push	(_asctime_sloc3_1_0 + 1)
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,#__str_0
	push	acc
	mov	a,#(__str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#_ascTimeBuffer
	push	acc
	mov	a,#(_ascTimeBuffer >> 8)
	push	acc
	mov	a,#0x60
	push	acc
	lcall	_sprintf
	mov	a,sp
	add	a,#0xea
	mov	sp,a
;	time.c:97: return ascTimeBuffer;
	mov	dptr,#_ascTimeBuffer
	mov	b,#0x60
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ctime'
;------------------------------------------------------------
;------------------------------------------------------------
;	time.c:100: char *ctime(time_t *timep) {
;	-----------------------------------------
;	 function ctime
;	-----------------------------------------
_ctime:
;	time.c:101: return asctime(localtime(timep));
	lcall	_localtime
	ljmp	_asctime
;------------------------------------------------------------
;Allocation info for local variables in function 'localtime'
;------------------------------------------------------------
;------------------------------------------------------------
;	time.c:117: struct tm *localtime(time_t *timep) {
;	-----------------------------------------
;	 function localtime
;	-----------------------------------------
_localtime:
;	time.c:118: return gmtime(timep);
	ljmp	_gmtime
;------------------------------------------------------------
;Allocation info for local variables in function 'gmtime'
;------------------------------------------------------------
;sloc0                     Allocated with name '_gmtime_sloc0_1_0'
;------------------------------------------------------------
;	time.c:121: struct tm *gmtime(time_t *timep) {
;	-----------------------------------------
;	 function gmtime
;	-----------------------------------------
_gmtime:
;	time.c:122: unsigned long epoch=*timep;
	mov	r0,#_gmtime_epoch_1_1
	lcall	__gptrget
	movx	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	movx	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	movx	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	movx	@r0,a
;	time.c:127: lastTime.tm_sec=epoch%60;
	mov	r0,#__modulong_PARM_2
	mov	a,#0x3C
	movx	@r0,a
	clr	a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	mov	r0,#_gmtime_epoch_1_1
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	lcall	__modulong
	mov	r6,dpl
	mov	r0,#_lastTime
	mov	a,r6
	movx	@r0,a
;	time.c:128: epoch/=60; // now it is minutes
	mov	r0,#__divulong_PARM_2
	mov	a,#0x3C
	movx	@r0,a
	clr	a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	mov	r0,#_gmtime_epoch_1_1
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	lcall	__divulong
	mov	r0,#_gmtime_epoch_1_1
	push	acc
	mov	a,dpl
	movx	@r0,a
	inc	r0
	mov	a,dph
	movx	@r0,a
	inc	r0
	mov	a,b
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
;	time.c:129: lastTime.tm_min=epoch%60;
	mov	r0,#__modulong_PARM_2
	mov	a,#0x3C
	movx	@r0,a
	clr	a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	mov	r0,#_gmtime_epoch_1_1
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	lcall	__modulong
	mov	r2,dpl
	mov	r0,#(_lastTime + 0x0001)
	mov	a,r2
	movx	@r0,a
;	time.c:130: epoch/=60; // now it is hours
	mov	r0,#__divulong_PARM_2
	mov	a,#0x3C
	movx	@r0,a
	clr	a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	mov	r0,#_gmtime_epoch_1_1
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	lcall	__divulong
	mov	r0,#_gmtime_epoch_1_1
	push	acc
	mov	a,dpl
	movx	@r0,a
	inc	r0
	mov	a,dph
	movx	@r0,a
	inc	r0
	mov	a,b
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
;	time.c:131: lastTime.tm_hour=epoch%24;
	mov	r0,#__modulong_PARM_2
	mov	a,#0x18
	movx	@r0,a
	clr	a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	mov	r0,#_gmtime_epoch_1_1
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	lcall	__modulong
	mov	r2,dpl
	mov	r0,#(_lastTime + 0x0002)
	mov	a,r2
	movx	@r0,a
;	time.c:132: epoch/=24; // now it is days
	mov	r0,#__divulong_PARM_2
	mov	a,#0x18
	movx	@r0,a
	clr	a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	mov	r0,#_gmtime_epoch_1_1
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	lcall	__divulong
	mov	r0,#_gmtime_epoch_1_1
	push	acc
	mov	a,dpl
	movx	@r0,a
	inc	r0
	mov	a,dph
	movx	@r0,a
	inc	r0
	mov	a,b
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
;	time.c:133: lastTime.tm_wday=(epoch+4)%7;
	mov	r0,#_gmtime_epoch_1_1
	movx	a,@r0
	add	a,#0x04
	mov	r2,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	r3,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	r4,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	r5,a
	mov	r0,#__modulong_PARM_2
	mov	a,#0x07
	movx	@r0,a
	clr	a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__modulong
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	r0,#(_lastTime + 0x0007)
	mov	a,r2
	movx	@r0,a
;	time.c:136: days=0;
	mov	r0,#_gmtime_days_1_1
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
;	time.c:137: while((days += (LEAP_YEAR(year) ? 366 : 365)) <= epoch) {
	mov	r6,#0xB2
	mov	r7,#0x07
00101$:
	mov	a,#0x03
	anl	a,r6
	mov	r2,a
	mov	r3,#0x00
	orl	a,r3
	cjne	a,#0x01,00134$
00134$:
	clr	a
	rlc	a
	mov	r2,a
	jz	00119$
	mov	r2,#0x6E
	mov	r3,#0x01
	sjmp	00120$
00119$:
	mov	r2,#0x6D
	mov	r3,#0x01
00120$:
	mov	a,r3
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	r5,a
	mov	r0,#_gmtime_days_1_1
	movx	a,@r0
	add	a,r2
	mov	r2,a
	inc	r0
	movx	a,@r0
	addc	a,r3
	mov	r3,a
	inc	r0
	movx	a,@r0
	addc	a,r4
	mov	r4,a
	inc	r0
	movx	a,@r0
	addc	a,r5
	mov	r5,a
	mov	r0,#_gmtime_days_1_1
	mov	a,r2
	movx	@r0,a
	inc	r0
	mov	a,r3
	movx	@r0,a
	inc	r0
	mov	a,r4
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
	mov	r0,#_gmtime_epoch_1_1
	clr	c
	movx	a,@r0
	subb	a,r2
	inc	r0
	movx	a,@r0
	subb	a,r3
	inc	r0
	movx	a,@r0
	subb	a,r4
	inc	r0
	movx	a,@r0
	subb	a,r5
	jc	00103$
;	time.c:138: year++;
	inc	r6
	cjne	r6,#0x00,00101$
	inc	r7
	sjmp	00101$
00103$:
;	time.c:140: lastTime.tm_year=year-1900;
	mov	a,r6
	add	a,#0x94
	mov	r2,a
	mov	a,r7
	addc	a,#0xf8
	mov	r3,a
	mov	r0,#(_lastTime + 0x0005)
	mov	a,r2
	movx	@r0,a
	inc	r0
	mov	a,r3
	movx	@r0,a
;	time.c:142: days -= LEAP_YEAR(year) ? 366 : 365;
	mov	a,#0x03
	anl	a,r6
	mov	r2,a
	mov	r3,#0x00
	orl	a,r3
	cjne	a,#0x01,00138$
00138$:
	clr	a
	rlc	a
	mov	r4,a
	jz	00121$
	mov	r4,#0x6E
	mov	r5,#0x01
	sjmp	00122$
00121$:
	mov	r4,#0x6D
	mov	r5,#0x01
00122$:
	mov	a,r5
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	r7,a
	mov	r0,#_gmtime_days_1_1
	movx	a,@r0
	clr	c
	subb	a,r4
	movx	@r0,a
	inc	r0
	movx	a,@r0
	subb	a,r5
	movx	@r0,a
	inc	r0
	movx	a,@r0
	subb	a,r6
	movx	@r0,a
	inc	r0
	movx	a,@r0
	subb	a,r7
	movx	@r0,a
;	time.c:143: epoch -= days; // now it is days in this year, starting at 0
	mov	r0,#_gmtime_epoch_1_1
	mov	r1,#_gmtime_days_1_1
	movx	a,@r1
	mov	b,a
	clr	c
	movx	a,@r0
	subb	a,b
	movx	@r0,a
	inc	r1
	movx	a,@r1
	mov	b,a
	inc	r0
	movx	a,@r0
	subb	a,b
	movx	@r0,a
	inc	r1
	movx	a,@r1
	mov	b,a
	inc	r0
	movx	a,@r0
	subb	a,b
	movx	@r0,a
	inc	r1
	movx	a,@r1
	mov	b,a
	inc	r0
	movx	a,@r0
	subb	a,b
	movx	@r0,a
;	time.c:144: lastTime.tm_yday=epoch;
	mov	r0,#_gmtime_epoch_1_1
	movx	a,@r0
	mov	r4,a
	inc	r0
	movx	a,@r0
	mov	r5,a
	mov	r0,#(_lastTime + 0x0008)
	mov	a,r4
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
;	time.c:149: for (month=0; month<12; month++) {
	mov	r4,#0x00
00113$:
	cjne	r4,#0x0C,00140$
00140$:
	jnc	00116$
;	time.c:150: if (month==1) { // februari
	cjne	r4,#0x01,00108$
;	time.c:151: if (LEAP_YEAR(year)) {
	mov	a,r2
	orl	a,r3
	jnz	00105$
;	time.c:152: monthLength=29;
	mov	r5,#0x1D
	sjmp	00109$
00105$:
;	time.c:154: monthLength=28;
	mov	r5,#0x1C
	sjmp	00109$
00108$:
;	time.c:157: monthLength = monthDays[month];
	mov	a,r4
	mov	dptr,#_monthDays
	movc	a,@a+dptr
	mov	r5,a
00109$:
;	time.c:160: if (epoch>=monthLength) {
	mov	_gmtime_sloc0_1_0,r5
	mov	(_gmtime_sloc0_1_0 + 1),#0x00
	mov	(_gmtime_sloc0_1_0 + 2),#0x00
	mov	(_gmtime_sloc0_1_0 + 3),#0x00
	mov	r0,#_gmtime_epoch_1_1
	clr	c
	movx	a,@r0
	subb	a,_gmtime_sloc0_1_0
	inc	r0
	movx	a,@r0
	subb	a,(_gmtime_sloc0_1_0 + 1)
	inc	r0
	movx	a,@r0
	subb	a,(_gmtime_sloc0_1_0 + 2)
	inc	r0
	movx	a,@r0
	subb	a,(_gmtime_sloc0_1_0 + 3)
	jc	00116$
;	time.c:161: epoch-=monthLength;
	mov	r0,#_gmtime_epoch_1_1
	movx	a,@r0
	clr	c
	subb	a,_gmtime_sloc0_1_0
	movx	@r0,a
	inc	r0
	movx	a,@r0
	subb	a,(_gmtime_sloc0_1_0 + 1)
	movx	@r0,a
	inc	r0
	movx	a,@r0
	subb	a,(_gmtime_sloc0_1_0 + 2)
	movx	@r0,a
	inc	r0
	movx	a,@r0
	subb	a,(_gmtime_sloc0_1_0 + 3)
	movx	@r0,a
;	time.c:149: for (month=0; month<12; month++) {
	inc	r4
	sjmp	00113$
00116$:
;	time.c:166: lastTime.tm_mon=month;
	mov	r0,#(_lastTime + 0x0004)
	mov	a,r4
	movx	@r0,a
;	time.c:167: lastTime.tm_mday=epoch+1;
	mov	r0,#_gmtime_epoch_1_1
	movx	a,@r0
	mov	r2,a
	inc	r2
	mov	r0,#(_lastTime + 0x0003)
	mov	a,r2
	movx	@r0,a
;	time.c:169: lastTime.tm_isdst=0;
	mov	r0,#(_lastTime + 0x000a)
	clr	a
	movx	@r0,a
;	time.c:171: return &lastTime;
	mov	dptr,#_lastTime
	mov	b,#0x60
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'mktime'
;------------------------------------------------------------
;------------------------------------------------------------
;	time.c:175: time_t mktime(struct tm *timeptr) {
;	-----------------------------------------
;	 function mktime
;	-----------------------------------------
_mktime:
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	r0,#_mktime_timeptr_1_1
	movx	@r0,a
	inc	r0
	mov	a,r3
	movx	@r0,a
	inc	r0
	mov	a,r2
	movx	@r0,a
;	time.c:176: int year=timeptr->tm_year+1900, month=timeptr->tm_mon, i;
	mov	r0,#_mktime_timeptr_1_1
	movx	a,@r0
	add	a,#0x05
	mov	r5,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	r0,#_mktime_year_1_1
	mov	a,#0x6C
	add	a,r5
	movx	@r0,a
	mov	a,#0x07
	addc	a,r6
	inc	r0
	movx	@r0,a
	mov	r0,#_mktime_timeptr_1_1
	movx	a,@r0
	add	a,#0x04
	mov	r7,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	r5,a
	inc	r0
	movx	a,@r0
	mov	r6,a
	mov	dpl,r7
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r0,#_mktime_month_1_1
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
;	time.c:179: CheckTime(timeptr);
	mov	r0,#_mktime_timeptr_1_1
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	lcall	_CheckTime
;	time.c:182: seconds= (year-1970)*(60*60*24L*365);
	mov	r0,#_mktime_year_1_1
	movx	a,@r0
	add	a,#0x4e
	mov	r6,a
	inc	r0
	movx	a,@r0
	addc	a,#0xf8
	mov	r5,a
	mov	r0,#__mullong_PARM_2
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
	mov	a,r5
	rlc	a
	subb	a,acc
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	mov	dptr,#0x3380
	mov	b,#0xE1
	mov	a,#0x01
	lcall	__mullong
	mov	r0,#_mktime_seconds_1_1
	push	acc
	mov	a,dpl
	movx	@r0,a
	inc	r0
	mov	a,dph
	movx	@r0,a
	inc	r0
	mov	a,b
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
;	time.c:185: for (i=1970; i<year; i++) {
	mov	r0,#_mktime_seconds_1_1
	movx	a,@r0
	mov	r3,a
	inc	r0
	movx	a,@r0
	mov	r4,a
	inc	r0
	movx	a,@r0
	mov	r2,a
	inc	r0
	movx	a,@r0
	mov	r5,a
	mov	r6,#0xB2
	mov	r7,#0x07
00107$:
	mov	r0,#_mktime_year_1_1
	clr	c
	movx	a,@r0
	mov	b,a
	mov	a,r6
	subb	a,b
	inc	r0
	movx	a,@r0
	mov	b,a
	mov	a,r7
	xrl	a,#0x80
	xrl	b,#0x80
	subb	a,b
	jnc	00124$
;	time.c:186: if (LEAP_YEAR(i)) {
	mov	r0,#__modsint_PARM_2
	mov	a,#0x04
	movx	@r0,a
	clr	a
	inc	r0
	movx	@r0,a
	mov	dpl,r6
	mov	dph,r7
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	__modsint
	mov	a,dpl
	mov	b,dph
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	orl	a,b
	jnz	00109$
;	time.c:187: seconds+= 60*60*24L;
	mov	a,#0x80
	add	a,r3
	mov	r3,a
	mov	a,#0x51
	addc	a,r4
	mov	r4,a
	mov	a,#0x01
	addc	a,r2
	mov	r2,a
	clr	a
	addc	a,r5
	mov	r5,a
00109$:
;	time.c:185: for (i=1970; i<year; i++) {
	inc	r6
	cjne	r6,#0x00,00107$
	inc	r7
	sjmp	00107$
00124$:
	mov	r0,#_mktime_seconds_1_1
	mov	a,r3
	movx	@r0,a
	inc	r0
	mov	a,r4
	movx	@r0,a
	inc	r0
	mov	a,r2
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
;	time.c:192: for (i=0; i<month; i++) {
	mov	r0,#__modsint_PARM_2
	mov	a,#0x04
	movx	@r0,a
	clr	a
	inc	r0
	movx	@r0,a
	mov	r0,#_mktime_year_1_1
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	lcall	__modsint
	mov	r2,dpl
	mov	r3,dph
	mov	r0,#_mktime_i_1_1
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
00111$:
	mov	r0,#_mktime_i_1_1
	mov	r1,#_mktime_month_1_1
	clr	c
	movx	a,@r1
	mov	b,a
	movx	a,@r0
	subb	a,b
	inc	r1
	movx	a,@r1
	mov	b,a
	inc	r0
	movx	a,@r0
	xrl	a,#0x80
	xrl	b,#0x80
	subb	a,b
	jc	00128$
	ljmp	00114$
00128$:
;	time.c:193: if (i==1 && LEAP_YEAR(year)) { 
	mov	r0,#_mktime_i_1_1
	movx	a,@r0
	cjne	a,#0x01,00129$
	inc	r0
	movx	a,@r0
	cjne	a,#0x00,00129$
	sjmp	00130$
00129$:
	sjmp	00104$
00130$:
	mov	a,r2
	orl	a,r3
	jnz	00104$
;	time.c:194: seconds+= 60*60*24L*29;
	mov	r0,#_mktime_seconds_1_1
	movx	a,@r0
	add	a,#0x80
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,#0x3B
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,#0x26
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	movx	@r0,a
	sjmp	00113$
00104$:
;	time.c:196: seconds+= 60*60*24L*monthDays[i];
	mov	r0,#_mktime_i_1_1
	movx	a,@r0
	add	a,#_monthDays
	mov	dpl,a
	inc	r0
	movx	a,@r0
	addc	a,#(_monthDays >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	r0,#__mullong_PARM_2
	movx	@r0,a
	mov	a,r6
	rlc	a
	subb	a,acc
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	mov	dptr,#0x5180
	mov	b,#0x01
	clr	a
	push	ar2
	push	ar3
	lcall	__mullong
	mov	r6,dpl
	mov	r7,dph
	mov	r4,b
	mov	r5,a
	pop	ar3
	pop	ar2
	mov	r0,#_mktime_seconds_1_1
	movx	a,@r0
	add	a,r6
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,r7
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,r4
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,r5
	movx	@r0,a
00113$:
;	time.c:192: for (i=0; i<month; i++) {
	mov	r0,#_mktime_i_1_1
	movx	a,@r0
	add	a,#0x01
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	movx	@r0,a
	ljmp	00111$
00114$:
;	time.c:200: seconds+= (timeptr->tm_mday-1)*60*60*24L;
	mov	r0,#_mktime_timeptr_1_1
	movx	a,@r0
	add	a,#0x03
	mov	r2,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	r3,a
	inc	r0
	movx	a,@r0
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	r3,#0x00
	dec	r2
	cjne	r2,#0xff,00132$
	dec	r3
00132$:
	mov	r0,#__mullong_PARM_2
	mov	a,r2
	movx	@r0,a
	inc	r0
	mov	a,r3
	movx	@r0,a
	mov	a,r3
	rlc	a
	subb	a,acc
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	mov	dptr,#0x5180
	mov	b,#0x01
	clr	a
	lcall	__mullong
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	r0,#_mktime_seconds_1_1
	movx	a,@r0
	add	a,r2
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,r3
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,r4
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,r5
	movx	@r0,a
;	time.c:201: seconds+= timeptr->tm_hour*60*60L;
	mov	r0,#_mktime_timeptr_1_1
	movx	a,@r0
	add	a,#0x02
	mov	r2,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	r3,a
	inc	r0
	movx	a,@r0
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r0,#__mullong_PARM_2
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	mov	dptr,#0x0E10
	clr	a
	mov	b,a
	lcall	__mullong
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	r0,#_mktime_seconds_1_1
	movx	a,@r0
	add	a,r2
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,r3
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,r4
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,r5
	movx	@r0,a
;	time.c:202: seconds+= timeptr->tm_min*60;
	mov	r0,#_mktime_timeptr_1_1
	movx	a,@r0
	add	a,#0x01
	mov	r2,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	r3,a
	inc	r0
	movx	a,@r0
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	b,#0x3C
	mul	ab
	mov	r2,a
	mov	a,b
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	r5,a
	mov	r0,#_mktime_seconds_1_1
	movx	a,@r0
	add	a,r2
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,r3
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,r4
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,r5
	movx	@r0,a
;	time.c:203: seconds+= timeptr->tm_sec;
	mov	r0,#_mktime_timeptr_1_1
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	lcall	__gptrget
	mov	r2,a
	clr	a
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	r5,a
	mov	r0,#_mktime_seconds_1_1
	movx	a,@r0
	add	a,r2
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,r3
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,r4
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,r5
	movx	@r0,a
;	time.c:204: return seconds;
	mov	r0,#_mktime_seconds_1_1
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_monthDays:
	.db #0x1F
	.db #0x1C
	.db #0x1F
	.db #0x1E
	.db #0x1F
	.db #0x1E
	.db #0x1F
	.db #0x1F
	.db #0x1E
	.db #0x1F
	.db #0x1E
	.db #0x1F
___month:
	.byte _str_1,(_str_1 >> 8)
	.byte _str_2,(_str_2 >> 8)
	.byte _str_3,(_str_3 >> 8)
	.byte _str_4,(_str_4 >> 8)
	.byte _str_5,(_str_5 >> 8)
	.byte _str_6,(_str_6 >> 8)
	.byte _str_7,(_str_7 >> 8)
	.byte _str_8,(_str_8 >> 8)
	.byte _str_9,(_str_9 >> 8)
	.byte _str_10,(_str_10 >> 8)
	.byte _str_11,(_str_11 >> 8)
	.byte _str_12,(_str_12 >> 8)
___day:
	.byte _str_13,(_str_13 >> 8)
	.byte _str_14,(_str_14 >> 8)
	.byte _str_15,(_str_15 >> 8)
	.byte _str_16,(_str_16 >> 8)
	.byte _str_17,(_str_17 >> 8)
	.byte _str_18,(_str_18 >> 8)
	.byte _str_19,(_str_19 >> 8)
__str_0:
	.ascii "%s %s %2d %02d:%02d:%02d %04d"
	.db 0x0A
	.db 0x00
_str_1:
	.ascii "Jan"
	.db 0x00
_str_2:
	.ascii "Feb"
	.db 0x00
_str_3:
	.ascii "Mar"
	.db 0x00
_str_4:
	.ascii "Apr"
	.db 0x00
_str_5:
	.ascii "May"
	.db 0x00
_str_6:
	.ascii "Jun"
	.db 0x00
_str_7:
	.ascii "Jul"
	.db 0x00
_str_8:
	.ascii "Aug"
	.db 0x00
_str_9:
	.ascii "Sep"
	.db 0x00
_str_10:
	.ascii "Oct"
	.db 0x00
_str_11:
	.ascii "Nov"
	.db 0x00
_str_12:
	.ascii "Dec"
	.db 0x00
_str_13:
	.ascii "Sun"
	.db 0x00
_str_14:
	.ascii "Mon"
	.db 0x00
_str_15:
	.ascii "Tue"
	.db 0x00
_str_16:
	.ascii "Wed"
	.db 0x00
_str_17:
	.ascii "Thu"
	.db 0x00
_str_18:
	.ascii "Fri"
	.db 0x00
_str_19:
	.ascii "Sat"
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
